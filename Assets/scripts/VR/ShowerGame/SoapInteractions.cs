﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoapInteractions : MonoBehaviour
{

    Collider colin;
    Transform transformer;
    Rigidbody rigidBody;
    Quaternion deltaRotation;
    SimpleInteractions simpleInteractions;
    [SerializeField]
    private GameObject RightHand, LeftHand;

    [SerializeField]
    GameObject waterParticleObject;
    WaterParticle waterParticle;
    [SerializeField]
    private int count;
    private bool isDoneCleaningSelf = false;
    private bool isRightConditionsForCleaning = false;
    [SerializeField]
    bool isOnRightSpot = false;
    bool isInRange = false;
    bool isPlayedSound = false;
    bool isHeld;
    private bool getWetSound = false;
    private bool isItPressed;
    [SerializeField]
    private ShowerHandler showerhandler;
    [SerializeField]
    Collider soapAreaCol;

    // Use this for initialization
    void Start()
    {
        transformer = gameObject.GetComponent<Transform>();
        rigidBody = gameObject.GetComponent<Rigidbody>();
        isItPressed = false;
        isHeld = false;
    }

    // Update is called once per frame
    void Update()
    {
        waterParticle = waterParticleObject.GetComponent<WaterParticle>();
        //SimpleInteractionsQualities();
        IsHeld();
        IsDoneCleaningSelf();
        //IsItPressed();
        IsGameDone();
    }

    private void IsHeld()
    {
        if (MiniGameManager.isShowerGameRunning)
        {
            if (isInRange == true)
            {
                if (isHeld == true && isItPressed == true && isOnRightSpot == true)
                {

                    transformer.position = new Vector3(-3.8109f, 1.2155f, 4.2846f);
                    transformer.rotation = new Quaternion(0f, 0f, 0f, 0f);
                    isItPressed = false;
                    isHeld = false;
                    isInRange = false;
                    soapAreaCol.enabled = false;

                }
                else if (isItPressed == true)
                {
                    // soapHandlerCollider = soapHandler.GetComponent<Collider>();
                    // soapHandlerCollider.enabled = false;
                    transformer.position = colin.gameObject.transform.position;
                    transformer.rotation = colin.gameObject.transform.rotation;

                    if (isPlayedSound == false)
                    {
                        EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                        EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Dont drop it now"));
                        isPlayedSound = true;
                    }
                    isHeld = true;
                    soapAreaCol.enabled = true;
                }




                /*
                else if (simpleInteractions.isPressed == false)
                {
                    transformer.position = colin.gameObject.transform.position;
                    transformer.rotation = colin.gameObject.transform.rotation;
                }

            if (isHeld == true && simpleInteractions.isPressed == false && isOnRightSpot == true && isItPressed == true)
                {

                    transformer.position = new Vector3(-3.8109f, 1.2155f, 4.2846f);
                    transformer.rotation = new Quaternion(0f, 0f, 0f, 0f);
                    isItPressed = false;
                    isHeld = false;
                    isInRange = false;
                    
                }
                */
            }
        }
    }
    bool isWety;
    private void IsDoneCleaningSelf()
    {
        if (MiniGameManager.isShowerGameRunning)
        {
            if (isRightConditionsForCleaning)
            {
                //SOUND OF HAVING URSELF CLEAN
                count++;
                if (count > 100)
                {
                    Debug.Log("i AM CLEAN NOW");
                    isDoneCleaningSelf = true;
                    waterParticle.isWet = false;
                    count = 0;

                }
            }
        }
    }
    void IsGameDone()
    {
        if (isDoneCleaningSelf && !showerhandler.isWaterRunning && waterParticle.isWet == true)//fail
        {
            EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
            Debug.Log("Game done");

        }
    }

    private void OnTriggerEnter(Collider col)
    {

        if (MiniGameManager.isShowerGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();

                col.GetComponent<Interactions>().enabled = false;
                colin = col;
                deltaRotation = colin.gameObject.transform.rotation;
                isInRange = true;
                //GetComponent<Collider>().enabled = true;
                if (simpleInteractions.isPressed == true)
                {
                    isItPressed = true;
                }
            }
            if (col.gameObject.name == "soap_holder")
            {

                isOnRightSpot = true;
            }

            if (col.gameObject.name == "torso" && waterParticle.isWet == true)
            {
                //EVENT FOR CLEANING STARTS
                Debug.Log("WE ARE STARTING CLEANING");
                isRightConditionsForCleaning = true;
                EventBus.TriggerEvent(this, new GameStateEvent.StartCleaningSelf());
                EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You are getting cleaner, good job!"));
            }
            else if (col.gameObject.name == "torso" && waterParticle.isWet == false && getWetSound == false)
            {
                Debug.Log("WE ARE not STARTING CLEANING");
                EventBus.TriggerEvent(this, new GameStateEvent.NudgePlayerToGetWet());
                EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You need to get wet"));
                getWetSound = true;
            }
        }
    }

    private void OnTriggerStay(Collider col)
    {
        if (MiniGameManager.isShowerGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                isInRange = true;
                colin = col;
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                col.GetComponent<Interactions>().enabled = false;

                if (col.gameObject.name == "soap_holder")
                {

                    isOnRightSpot = true;
                }

                if (col.gameObject.name == "torso" && waterParticle.isWet == true)
                {
                    Debug.Log("THEY ARE GOOD CONDITIONS");
                    isRightConditionsForCleaning = true;
                }
                if (simpleInteractions.isPressed == true)
                {
                    isItPressed = true;
                }
            }
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (MiniGameManager.isShowerGameRunning)
        {

            if (col.gameObject.name == "soap_holder")
            {
                isOnRightSpot = false;
                //isItPressed = false;
                //isItPressed = false;
            }

            if (col.gameObject.name == "torso")
            {
                isRightConditionsForCleaning = false;
                //EVENT FOR CLEANING STOPPED
                EventBus.TriggerEvent(this, new GameStateEvent.StopCleaningSelf());
                // EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You stopped cleaning ur self"));
            }
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                col.GetComponent<Interactions>().enabled = enabled;
                isItPressed = false;

            }

        }
    }
}

/*
 *    Collider colin;
    Transform transformer;
    Rigidbody rigidBody;
    Quaternion deltaRotation;
    bool isInRange = false;
    bool isPlayedSound = false;
    SimpleInteractions simpleInteractions;
    
    public GameObject RightHand, LeftHand;
    [SerializeField]
    bool isOnRightSpot = false;
    [SerializeField]
    GameObject waterParticleObject;
    WaterParticle waterParticle; 
    // Use this for initialization
    void Start()
    {
        waterParticle = waterParticleObject.GetComponent<WaterParticle>();
        transformer = gameObject.GetComponent<Transform>();
        rigidBody = gameObject.GetComponent<Rigidbody>();
       
    }

    // Update is called once per frame
    void Update()
    {
        IsHeld();
        IsDoneCleaningSelf();
    }

    private void IsHeld()
    {
        if (isInRange == true && simpleInteractions.isPressed == true)
        {
            transformer.position = colin.gameObject.transform.position;
            transformer.rotation = colin.gameObject.transform.rotation;
            if (isPlayedSound == false)
            {
                EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Dont drop it now"));
                isPlayedSound = true;
            }

        }

        if (simpleInteractions.isPressed == false && isOnRightSpot ==true)
        {
            //transformer.position = transformer.position;
            // transformer.rotation = transformer.rotation;
            transformer.position = new Vector3(-3.8109f, 1.2155f, 4.2846f);
            transformer.rotation = new Quaternion(0f, 0f, 0f, 0f);
        }
    }
    private void OnTriggerEnter(Collider col)
    {


        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
            colin = col;
            deltaRotation = colin.gameObject.transform.rotation;
            isInRange = true;
            GetComponent<Collider>().enabled = false;

        }
        if(col.gameObject.name == "soap_holder")
        {
            isOnRightSpot = true;
        }

        if(col.gameObject.name == "torso" && waterParticle.isWet==true)
        {
            //EVENT FOR CLEANING STARTS
            EventBus.TriggerEvent(this, new GameStateEvent.StartCleaningSelf());
            EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You are getting cleaner, good job!"));
        }
        else if(col.gameObject.name == "torso" && waterParticle.isWet == false)
        {
            EventBus.TriggerEvent(this, new GameStateEvent.StartCleaningSelf());
            EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You need to get wet"));
        }

    }

    [SerializeField]
    private int count;
    private bool isDoneCleaningSelf = false;
    private bool isRightConditionsForCleaning = false;

    private void IsDoneCleaningSelf()
    {
        if(isRightConditionsForCleaning==true)
        {
            Debug.Log("i AM CLEANing myself");
            count++;
            if (count > 1000)
            {
                Debug.Log("i AM CLEAN NOW");
                isDoneCleaningSelf = true;
                count = 0;
            }
        }
    }
    private void OnTriggerStay(Collider col)
    {
        if (col.gameObject.name == "torso" && waterParticle.isWet == true)
        {
            isRightConditionsForCleaning = true;
        }
        simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
    }

    private void OnTriggerExit(Collider col)
    {
        if (col.gameObject.name == "soap_holder")
        {
            isOnRightSpot = false;
        }

        if (col.gameObject.name == "torso")
        {
            //EVENT FOR CLEANING STOPPED
            EventBus.TriggerEvent(this, new GameStateEvent.StopCleaningSelf());
            EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You stopped cleaning ur self"));
        }
    
    }
 */
