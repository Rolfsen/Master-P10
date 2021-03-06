﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SinkHandler : MonoBehaviour
{
    public GameObject sinkParticle;
    Quaternion rotationDelta;
    [SerializeField]
    private int count;
    public bool isWaterRunning = false;
    private bool ControllerInRange = false;
    private bool isTriggerPressed = false;
    private Collider colin = new Collider();
    private bool hasItBeenOn = false;
    private Rigidbody rigidBody;
    SimpleInteractions simpleInteractions;
    bool isItHoldingSomething = false;
    bool isItOnMusic = false;
    private Transform simpleInteractionsTransform;
    [SerializeField]
    AudioSource musicSource;
    [SerializeField]
    AudioClip musicClip;

    private float rotationX = 0f;

    [SerializeField]
    float waterOffX = -10;
    [SerializeField]
    float waterOnX = 10;

    public bool turnWaterOn = false;

    [SerializeField]
    float maxClampVal;

    [SerializeField]
    float minClampVal;

    [SerializeField]
    bool isAHandle;

    bool gameHasFinished;

    // Use this for initialization
    void Start()
    {
        rigidBody = GetComponent<Rigidbody>();
        colin = new Collider();
        musicSource.clip = musicClip;
        rigidBody.isKinematic = true;
    }

    // Update is called once per frame
    void Update()
    {
        if (MiniGameManager.isCookingGameRunning)
        {
            rigidBody.isKinematic = false;
            IsWaterOn();
            IsWaterOff();
            IsItRotatingSound();
            if(CookingGameManager.isPlayingCookingGame)
            { 
                if (isAHandle)
                {


                    rotationX = transform.eulerAngles.x;
                    if (rotationX > 180)
                    {
                        rotationX -= 360;
                    }

                    rotationX = Mathf.Clamp(rotationX, minClampVal, maxClampVal);



                    transform.localEulerAngles = new Vector3(rotationX, transform.localEulerAngles.y, transform.localEulerAngles.z);

                    if (rotationX > waterOnX && !turnWaterOn)
                    {
                        sinkParticle.SetActive(true);
                        turnWaterOn = true;
                        print("turn water on");
                        EventBus.TriggerEvent(this, new MinigameEvents.ToggleWaterEvent());
                    }
                    else if (rotationX < waterOffX && turnWaterOn)
                    {
                        EventBus.TriggerEvent(this, new MinigameEvents.ToggleWaterEvent());
                        sinkParticle.SetActive(false);
                        turnWaterOn = false;
                        print("turn water off");
                    }
                }
            }
           
        }
        /*
         if (CookingGameManager.isCookingDone)
         {
             if (!turnWaterOn && !gameHasFinished)
             {

                 //sinkParticle.SetActive(false);
                 rigidBody.isKinematic = true;
                 turnWaterOn = false;
             }
             else if(turnWaterOn && !gameHasFinished)
             {
                 EventBus.TriggerEvent(this, new MinigameEvents.ToggleWaterEvent());
                 sinkParticle.SetActive(false);
                 rigidBody.isKinematic = true;
                 turnWaterOn = false;
             }
             gameHasFinished = true;
         }
         */
    }
    void IsItRotatingSound()
    {
        if (MiniGameManager.isCookingGameRunning)
        {
            
            if (isTriggerPressed && ControllerInRange && !isItHoldingSomething)
            {
                if (!isItOnMusic)
                {
                    musicSource.Play();
                    isItOnMusic = true;
                }
            }
            else if (!isTriggerPressed)
            {
                musicSource.Stop();

                isItOnMusic = false;
            }
        }
    }
    void IsWaterOn()
    {
        if (MiniGameManager.isCookingGameRunning)
        {
            if (hasItBeenOn == false && isItHoldingSomething == false)
            {

                rigidBody.isKinematic = false;
                if (transform.rotation.x > 0.1 || transform.rotation.x < -0.1)
                {
                    count++;
                    if (count > 50)
                    {
                        if (isWaterRunning == false) 
                        {
                            //EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Good job. You saved like the whales."));
                            //EventBus.TriggerEvent(this, new MinigameEvents.ToggleWaterEvent());

                        }
                        rigidBody.isKinematic = true;
                        //transform.rotation = new Quaternion(0f, transform.rotation.y, transform.rotation.z, transform.rotation.w);
                        hasItBeenOn = true;
                        //sinkParticle.SetActive(true);
                        count = 0;
                        musicSource.Stop();
                        isWaterRunning = true;
                        isItOnMusic = false;
                        //Debug.Log("its on baby");
                    }
                }
            }
        }
    }

    void IsWaterOff()
    {
        if (MiniGameManager.isCookingGameRunning)
        {
            rigidBody.isKinematic = false;
            if (isWaterRunning == true && isItHoldingSomething == false && hasItBeenOn == true)
            {
                rigidBody.isKinematic = false;

                if (transform.rotation.x > 0.1 || transform.rotation.x < -0.1)
                {
                    count++;
                    if (count > 50)
                    {
                        if (isWaterRunning == true)
                        {
                            //EventBus.TriggerEvent(this, new GameStateEvent.WaterInShowerRunning());//Water is off
                            // EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Good job. You saved like the whales."));
                            //EventBus.TriggerEvent(this, new MinigameEvents.ToggleWaterEvent());

                        }
                        rigidBody.isKinematic = true;
                        //transform.rotation = new Quaternion(0f, transform.rotation.y, transform.rotation.z, transform.rotation.w);//Or destroy the one we have and make a new one, works everytime
                                                                                                                                  // sinkParticle.SetActive(false);
                        count = 0;
                        isWaterRunning = false;
                        hasItBeenOn = false;
                    }
                }
            }
        }
    }
    private void OnTriggerEnter(Collider col)
    {
        if (MiniGameManager.isCookingGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();

                colin = col;

                if (simpleInteractions.isHoldingTool == true)
                {

                    isItHoldingSomething = true;

                }
                else
                {
                    isItHoldingSomething = false;
                }
                ControllerInRange = true;
            }
        }
    }

    private void OnTriggerStay(Collider col)
    {
        if (MiniGameManager.isCookingGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                if (simpleInteractions.isPressed)
                {
                    isTriggerPressed = true;
                }

                else
                {
                    isTriggerPressed = false;
                }

                if (simpleInteractions.isHoldingTool == true)
                {

                    isItHoldingSomething = true;

                }
                else
                {
                    isItHoldingSomething = false;
                }
            }
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (MiniGameManager.isCookingGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                if (simpleInteractions.isHoldingTool == true)
                {
                    isItHoldingSomething = false;

                }
                colin = col;
                ControllerInRange = false;
                simpleInteractions = null;//col.gameObject.GetComponent<SimpleInteractions>();
                //base.transform.rotation = new Quaternion(base.transform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);
                //isTriggerPressed = false; //MAYBE NOT!!!!!!!!!!!!!!!!!!!!!!!!!!
                //col.gameObject.GetComponent<Interactions>().enabled = true;
                Debug.Log("Stop shining");//highlight
                                          //gameObject.transform.parent.position = new Vector3(0f, 0f, 0f);
            }
        }
    }
}
