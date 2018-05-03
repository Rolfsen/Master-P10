using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VacuumHandler : MonoBehaviour
{
    Collider colin;
    Rigidbody rigidBody;
    SimpleInteractions simpleInteractions;
    [SerializeField]
    private int count;
    [SerializeField]
    bool isOnRightSpot = false;
    bool isInRange = false;
    bool isPlayedSound = false;
    private bool isItPressed;
    public bool isHeld = false;
    Vector3 startPos;
    Quaternion startRot;
    public bool isControllerPressed = false;
    void Start()
    {
        startPos = transform.position;
        startRot = transform.rotation;
    }

    void Update()
    {
        IsHeld();
        //IsControllerPressed();
        if (CleaningManager.isHouseClean)
        {
            transform.position = startPos;
            transform.rotation = startRot;
        }
    }

    void IsControllerPressed()
    {
        //isControllerPressed = simpleInteractions.isPressed;
    }
    private void IsHeld()
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (isInRange == true)
            {
                if (isItPressed == true)
                {
                    // soapHandlerCollider = soapHandler.GetComponent<Collider>();
                    // soapHandlerCollider.enabled = false;
                    transform.position = new Vector3(colin.gameObject.transform.position.x, 1.190f, colin.gameObject.transform.position.z);
                    transform.rotation = Quaternion.Euler(new Vector3(transform.rotation.eulerAngles.x, colin.gameObject.transform.rotation.eulerAngles.y - 50f, transform.rotation.eulerAngles.z));
                    isHeld = true;
                    if (isPlayedSound == false)
                    {
                        EventBus.TriggerEvent(this, new GameStateEvent.VacuumIsBeingHeld());
                        isPlayedSound = true;
                    }

                }
                /*
                if (simpleInteractions.isPressed == false)
                {
                    transform.position = new Vector3(colin.gameObject.transform.position.x, 1.193f, colin.gameObject.transform.position.z);
                    transform.rotation = Quaternion.Euler(new Vector3(transform.rotation.eulerAngles.x, colin.gameObject.transform.rotation.eulerAngles.y-50f, transform.rotation.eulerAngles.z));

                    if (isPlayedSound == false)
                    {
                        EventBus.TriggerEvent(this, new GameStateEvent.VacuumIsBeingHeld());
                        EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Dont drop the vacuum"));
                        isPlayedSound = true;
                    }*/
                //transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y+transform.rotation.y, transform.rotation.z, transform.rotation.w);
            }

            if (isHeld == true && simpleInteractions.isPressed == false && isOnRightSpot == true)
            {

                transform.position = new Vector3(0.363f, 1.00f, 2.056f);
                transform.rotation = new Quaternion(0f, 0f, 0f, 0f);
                isItPressed = false;
                isInRange = false;
                isHeld = false;
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

            else if (col.gameObject.tag == "VacuumRightSpot")
            {
                isOnRightSpot = true;
            }
        }
    }

    private void OnTriggerStay(Collider col)
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {

                colin = col;
                isInRange = true;
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                isControllerPressed = simpleInteractions.isPressed;
                if (simpleInteractions.isPressed == true)
                {
                    Debug.Log("i am working actually");
                    isItPressed = true;
                }

            }
            else if (col.gameObject.tag == "VacuumRightSpot")
            {
                isOnRightSpot = true;
            }
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                isInRange = false;
                isItPressed = false;
                isHeld = false;
                EventBus.TriggerEvent(this, new GameStateEvent.VacuumIsNotHeld());
            }

            else if (col.gameObject.tag == "VacuumRightSpot")
            {
                isOnRightSpot = false;
            }
        }

    }
}
/*
    private void OnTriggerEnter(Collider col)
{
    if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
    {
        Debug.Log("i entered");
        if (col.gameObject.GetComponent<SimpleInteractions>().isPressed == true)
        { 
            //col.gameObject.transform.SetParent(transform, true);
            transform.position = new Vector3(col.gameObject.transform.position.x, 1.193f, col.gameObject.transform.position.z);
        }
    }
}
private void OnTriggerStay(Collider col)
{
    Debug.Log("i am inside");
    if (col.gameObject.GetComponent<SimpleInteractions>().isPressed == true)
    {
        //col.gameObject.transform.SetParent(transform, true);
        transform.position = new Vector3(col.gameObject.transform.position.x, 1.193f, col.gameObject.transform.position.z);
    }
}

private void OnTriggerExit(Collider col)
{
    transform.position = new Vector3(transform.position.x, transform.position.y, transform.position.z);
}
*/
