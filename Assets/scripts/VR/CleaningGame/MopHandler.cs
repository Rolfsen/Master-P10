﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MopHandler : MonoBehaviour
{

    Collider colin;
    Rigidbody rigidBody;
    SimpleInteractions simpleInteractions;
    [SerializeField]
    private int count;
    [SerializeField]
    //bool isOnRightSpot = false;
    bool isInRange = false;
    bool isPlayedSound = false;
    // bool isHeld = false;
    bool isOnRightSpot = false;
    public bool isControllerPressed = false;
    Vector3 startPos;
    Quaternion startRot;
    public bool isHeld = false;
    // Use this for initialization
    void Start()
    {
        startPos = transform.position;
        startRot = transform.rotation;
    }

    // Update is called once per frame
    void Update()
    {
        IsHeld();
        if(CleaningManager.isHouseClean)
        {
            transform.position = startPos;
            transform.rotation = startRot;
        }



    }


    private void IsHeld()
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (isInRange == true)
            {
                if (isPlayedSound == false)
                {

                    isPlayedSound = true;
                }

                if (simpleInteractions.isPressed == true)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.MopIsBeingHeld());
                    transform.position = new Vector3(colin.gameObject.transform.position.x, 0.156f, colin.gameObject.transform.position.z);
                    transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);

                    isHeld = true;

                }

                else if (simpleInteractions.isPressed == false && isOnRightSpot == false)
                {
                    transform.position = new Vector3(colin.gameObject.transform.position.x, 0.2f, colin.gameObject.transform.position.z);
                    transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);
                    EventBus.TriggerEvent(this, new GameStateEvent.MopIsBeingHeld());
                    isHeld = false;
                }

            }
        }
    }

    private void OnTriggerEnter(Collider col)
    {

        if (MiniGameManager.isCleaningGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                isControllerPressed = simpleInteractions.isPressed;
                colin = col;
                //deltaRotation = colin.gameObject.transform.rotation;
                isInRange = true;
                //GetComponent<Collider>().enabled = true;

            }
        }
    }

    private void OnTriggerStay(Collider col)
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                isControllerPressed = simpleInteractions.isPressed;
                colin = col;
                isInRange = true;
                

            }
            else if (col.gameObject.tag == "Bucket")
            {

                isOnRightSpot = true;
                transform.position = new Vector3(colin.gameObject.transform.position.x, 0.4f, colin.gameObject.transform.position.z);
                transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);
            }
        }
    }

    private void OnTriggerExit(Collider col)
    {

        if (MiniGameManager.isCleaningGameRunning)
        {
            if (col.gameObject.tag == "Bucket")
            {
                isOnRightSpot = false;
            }
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                isInRange = false;
                isHeld = false;
                transform.position = new Vector3(transform.position.x, 0.156f, transform.position.z);
                transform.rotation = new Quaternion(transform.rotation.x, transform.rotation.y, transform.rotation.z, transform.rotation.w);
                EventBus.TriggerEvent(this, new GameStateEvent.MopIsNotBeingHeld());

            }
        }
    }
}
