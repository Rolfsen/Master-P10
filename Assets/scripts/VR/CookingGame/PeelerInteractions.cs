using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PeelerInteractions : MonoBehaviour {

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
    Collider potatoCollider;
    PotatoInteractions potatoInteractions;
    bool peelingStarts = false;
    bool isPeeled = false;
    int peelMeter;
    [SerializeField]
    bool isHeld = false;
    void Start()
    {

    }
    

    void Update()
    {
        IsHeld();
    }


    private void IsHeld()
    {
        if (isInRange == true) // OnTriggerStay?
        {
            if (simpleInteractions.isPressed == true) // I guess the problem is here? and same place at the other code
            {

                //transform.position = new Vector3(colin.gameObject.transform.position.x, colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);
                //transform.rotation = new Quaternion(colin.gameObject.transform.rotation.y, colin.gameObject.transform.rotation.y, colin.gameObject.transform.rotation.y, colin.gameObject.transform.rotation.y);
                transform.position = colin.transform.position;
                transform.rotation = colin.transform.rotation;
                isItHoldingSomething = true;
                if (isPlayedSound == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Dont drop the mop now"));
                    isPlayedSound = true;
                }
                isHeld = true;
            }
            /*
            if (simpleInteractions.isPressed == false)
            {
                transform.position = colin.gameObject.transform.position;
                transform.rotation = colin.gameObject.transform.rotation;
            }
            */
            if (simpleInteractions.isPressed == false && isOnRightSpot == true) //PLACED ON THE RIGHT SPOT THAT IS CALLED BUCKET
            {

                transform.position = new Vector3(3.54f, 1.021f, 4.401f);
                transform.rotation = new Quaternion(0f, 0f, 0f, 0f);
                isHeld = false;
                isInRange = false;
                isItHoldingSomething = false;
                isHoldingMe = false;
            }
        }
    }
    
   
    private void OnTriggerEnter(Collider col)
    {

        
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            if (col.gameObject.tag == "IsHolding")
            {
                isItHoldingSomething = true;

            }
            else if (isItHoldingSomething==false)
            {
                col.gameObject.tag = "IsHolding";
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                isControllerPressed = simpleInteractions.isPressed;
                colin = col;
                isInRange = true;
                Debug.Log("NOW THE OBJECT IS HOLDING");
               
            }

        }

        if(col.gameObject.tag=="Potato" && peelMeter<=3)
        {
            potatoCollider = col;
            peelingStarts = true;
            peelMeter++;
            
        }
    }
    [SerializeField]
    bool isItHoldingSomething = false;
    [SerializeField]
    bool isHoldingMe = false;
    private void OnTriggerStay(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            col.gameObject.GetComponent<Interactions>().enabled=false;
            if (col.gameObject.tag == "IsHolding")
            {
                isItHoldingSomething = true;

            }
            else if (isItHoldingSomething == false && isHoldingMe == false)
            {
                isControllerPressed = simpleInteractions.isPressed;
                colin = col;
                isInRange = true;
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                isItHoldingSomething = true;
                isHoldingMe = true;
            }

        }
        if (col.gameObject.tag == "PeelerPlace")
        {
            isOnRightSpot = true;
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            if (col.gameObject.tag == "IsHolding")
            {
                isHoldingMe = false;
                col.gameObject.tag = "Untagged";
                isItHoldingSomething = false;

            }
            col.gameObject.GetComponent<Interactions>().enabled = true;
        }

        isInRange = false;

        if (col.gameObject.tag == "PeelerPlace")
        {
            isOnRightSpot = false;
        }
        if (col.gameObject.tag == "Potato")
        {
            peelingStarts = false;
           

        }

    }
}
