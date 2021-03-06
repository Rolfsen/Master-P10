﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotatoInteractions : MonoBehaviour
{

    Collider colin;
    Rigidbody rigidBody;
    SimpleInteractions simpleInteractions;
    [SerializeField]
    private int count;
    [SerializeField]
    bool isInRange = false;
    bool isPlayedSound = false;
    bool isOnRightSpot = false;
    public bool isControllerPressed = false;
    [SerializeField]
    GameObject otherPotato1, otherPotato2;
    bool isCleaned = false;
    public bool isCleanedDone = false;
    int cleanMeter = 0;
    bool peelingStarts = false;
    bool isPeeled = false;
    int peelMeter;
    [SerializeField]
    bool isItHoldingSomething = false;
    [SerializeField]
    bool isItHoldingMe = false;

    enum HandStates { hold, notHold };

    HandStates thisPotato;

    bool activeMinigame;

    private void Awake()
    {
        activeMinigame = false;
        EventBus.AddListener<MinigameEvents.StartMinigameEvent>(ToggleActive);
    }

    void Update()
    {
       // if (activeMinigame)
       // {
            IsHeld(); 
            IsPotatoClean(); // Do initial check here, no reason for calling using a function call if it ends up doing nothing but the check
            IsItPeeled();
       // }
    }

    private void ToggleActive(object sender, MinigameEvents.StartMinigameEvent e)
    {
        activeMinigame = true;
    }

    private void IsItPeeled()
    {
        if (peelMeter >= 3 && isPeeled == false) // I don't like this is in update - should be possible to only check each time you peel it
        {

            Debug.Log("potato is peeled now");
            gameObject.tag = "PeeledPotato";
            isCleanedDone = false;
            isPeeled = true;
        }
    }

    private void IsHeld()
    {
        if (isInRange == true) // So onTriggerStay?
        {
            if (isControllerPressed == true)
            {
                isControllerPressed = true;
                transform.position = new Vector3(colin.gameObject.transform.position.x, colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);
                transform.rotation = new Quaternion(transform.rotation.x, transform.rotation.y, transform.rotation.z, transform.rotation.w);
                otherPotato1.GetComponent<PotatoInteractions>().enabled = false;
                otherPotato2.GetComponent<PotatoInteractions>().enabled = false;
                if (isPlayedSound == false)
                {

                    EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                    isPlayedSound = true;
                }

            }
            /*
            if (simpleInteractions.isPressed == false)
            {
                transform.position = new Vector3(colin.gameObject.transform.position.x, colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);
                transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);
            }
            */
            if (simpleInteractions.isPressed == false && isOnRightSpot == true && isCleanedDone == true && isPeeled == true) //PLACED ON THE RIGHT SPOT THAT IS CALLED BUCKET
            {

                transform.position = new Vector3(2.333f, 1.066f, 4.722f);
                transform.rotation = new Quaternion(0f, 0f, 0f, 0f);
                otherPotato1.GetComponent<PotatoInteractions>().enabled = true;
                otherPotato2.GetComponent<PotatoInteractions>().enabled = true;
                isInRange = false;
                isControllerPressed = simpleInteractions.isPressed;//or falls
                isItHoldingSomething = false;
            }
        }
    }

    private void IsPotatoClean()
    {
        if (isCleaned == true) // isBeingWashed is better, isCleaned make it sounds like it is now clean
        {

            cleanMeter++;
            if (cleanMeter > 100)
            {
                Debug.Log("its clean now");
                isCleanedDone = true;
                cleanMeter = 0;
            }
        }
    }

    private void OnTriggerEnter(Collider col)
    {
        //col.gameObject.GetComponent<ObjectInteraction>().enabled = false;

        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            col.gameObject.GetComponent<Interactions>().enabled = false;
            if (col.gameObject.tag == "IsHolding")
            {
                isItHoldingSomething = true;

            }
            else if (isItHoldingSomething == false)
            {
                col.gameObject.GetComponent<Interactions>().enabled = false;
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                isControllerPressed = simpleInteractions.isPressed;
                colin = col;
                col.gameObject.tag = "IsHolding";
                isInRange = true;
                isItHoldingMe = true;
            }

        }

        if (col.gameObject.name == "SinkWater")
        {
            Debug.Log("i am getting washed");
            isCleaned = true;
        }

        if (col.gameObject.tag == "Peeler" && peelMeter <= 3) // col.gameObject.CompareTag("Peeler") use this
		{
            Debug.Log("its getting peeled");
            peelingStarts = true;
            peelMeter++;

        }
    }

    private void OnTriggerStay(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            if (col.gameObject.tag == "IsHolding")
            {
                isItHoldingSomething = true;

            }
            if (isItHoldingSomething == false)
            {
                isControllerPressed = simpleInteractions.isPressed;
                colin = col;
                isInRange = true;
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                isItHoldingMe = true;
            }

        }
        if (col.gameObject.name == "PotatoPlace") // You should probably not have this on stay but enter
        {
            isOnRightSpot = true;
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {

            col.gameObject.GetComponent<Interactions>().enabled = true;
            if (col.gameObject.tag == "IsHolding")
            {

                isItHoldingSomething = false;
                col.gameObject.tag = "Untagged";
            }

        }

        isInRange = false;

        if (col.gameObject.name == "PotatoPlace")
        {

            isOnRightSpot = false;
        }
    }
}



/* if (isInRange == true)
        {
            if (simpleInteractions.isPressed == true && gameObject.tag != "isHeld")
            {

                transform.position = new Vector3(colin.gameObject.transform.position.x, colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);
                transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);
                if (isPlayedSound == false)
                {
                    gameObject.tag = "isHeld";
                    EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Dont drop the potato now"));
                    isPlayedSound = true;
                }

            }

            if (simpleInteractions.isPressed == false)
            {
                transform.position = new Vector3(colin.gameObject.transform.position.x, colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);
                transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);
            }

            if (simpleInteractions.isPressed == false && isOnRightSpot == true && gameObject.tag == "isHeld") //PLACED ON THE RIGHT SPOT THAT IS CALLED BUCKET
            {
                
                transform.position = new Vector3(-2.779388f, 0.1f, 2.182f);
                transform.rotation = new Quaternion(0f, 0f, 0f, 0f);
                gameObject.tag = "Potato";
                isInRange = false;

            }
        }*/
