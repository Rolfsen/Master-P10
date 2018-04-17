using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PeelerInteractions : MonoBehaviour {

    Collider colin;
    Rigidbody rigidBody;
    SimpleInteractions simpleInteractions;
    [SerializeField]
    private int count;
    bool isInRange = false;
    bool isPlayedSound = false;
    bool isOnRightSpot = false;
    public bool isControllerPressed = false;

    void Start()
    {

    }
    

    void Update()
    {
        IsHeld();
    }


    private void IsHeld()
    {
        if (isInRange == true)
        {
            if (simpleInteractions.isPressed == true)
            {

                transform.position = new Vector3(colin.gameObject.transform.position.x, colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);
                transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);
                if (isPlayedSound == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Dont drop the mop now"));
                    isPlayedSound = true;
                }

            }

            if (simpleInteractions.isPressed == false)
            {
                transform.position = new Vector3(colin.gameObject.transform.position.x, colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);
                transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);
            }

            if (simpleInteractions.isPressed == false && isOnRightSpot == true) //PLACED ON THE RIGHT SPOT THAT IS CALLED BUCKET
            {

                transform.position = new Vector3(-2.779388f, 0.1f, 2.182f);
                transform.rotation = new Quaternion(0f, 0f, 0f, 0f);

                isInRange = false;
            }
        }
    }
    void IsItPeeled()
    {
        if(peelMeter>=3)
        {
            potatoInteractions = potatoCollider.gameObject.GetComponent<PotatoInteractions>();
            isPeeled = true;
        }
    }
    Collider potatoCollider;
    PotatoInteractions potatoInteractions;
    bool peelingStarts = false;
    bool isPeeled = false;
    int peelMeter;
    private void OnTriggerEnter(Collider col)
    {


        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
            isControllerPressed = simpleInteractions.isPressed;
            colin = col;
            isInRange = true;

        }

        if(col.gameObject.tag=="Potato" && peelMeter<=3)
        {
            potatoCollider = col;
            peelingStarts = true;
            peelMeter++;
            
        }
    }

    private void OnTriggerStay(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            isControllerPressed = simpleInteractions.isPressed;
            colin = col;
            isInRange = true;
            simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();

        }
        if (col.gameObject.tag == "PeelerPlace")
        {
            isOnRightSpot = true;
        }
    }

    private void OnTriggerExit(Collider col)
    {

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
