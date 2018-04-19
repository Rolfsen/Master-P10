using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SinkHandler : MonoBehaviour {
    public GameObject sinkParticle;
    Quaternion rotationDelta;
    [SerializeField]
    private int count;
    private bool isWaterRunning = false;
    private bool ControllerInRange = false;
    private bool isTriggerPressed = false;
    private Collider colin = new Collider();
    private bool hasItBeenOn = false;
    private Rigidbody rigidBody;
    SimpleInteractions simpleInteractions;

    private Transform simpleInteractionsTransform;
    // Use this for initialization
    void Start () {
        rigidBody = GetComponent<Rigidbody>();
        colin = new Collider();
    }
	
	// Update is called once per frame
	void Update () {
        IsWaterOn();
        IsWaterOff();
    }

    void IsWaterOn()
    {


        if (hasItBeenOn == false && isItHoldingSomething == false)
        {
            
            rigidBody.isKinematic = false;
            if (transform.rotation.x > 0.8 || transform.rotation.x < -0.8)
            {
                count++;
                if (count > 50)
                {
                    if (isWaterRunning == false)
                    {
                        EventBus.TriggerEvent(this, new GameStateEvent.NewShowerHeadScrewedOnEvent());
                        EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Good job. You saved like the whales."));
                    }


                    rigidBody.isKinematic = true;
                    transform.rotation = new Quaternion(0f, transform.rotation.y, transform.rotation.z, transform.rotation.w);
                    hasItBeenOn = true;
                    sinkParticle.SetActive(true);
                    count = 0;
                    isWaterRunning = true;
                    //Debug.Log("its on baby");
                }
            }
        }
    }

    void IsWaterOff()
    {
        if (isWaterRunning == true && isItHoldingSomething==false)
        {
            rigidBody.isKinematic = false;

            if (transform.rotation.x > 0.8 || transform.rotation.x < -0.8)
            {
                count++;
                if (count > 50)
                {
                    if (isWaterRunning == true)
                    {
                        EventBus.TriggerEvent(this, new GameStateEvent.WaterInShowerRunning());//Water is off
                        EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Good job. You saved like the whales."));
                    }
                    rigidBody.isKinematic = true;
                    transform.rotation = new Quaternion(0f, transform.rotation.y, transform.rotation.z, transform.rotation.w);//Or destroy the one we have and make a new one, works everytime
                    sinkParticle.SetActive(false);
                    count = 0;
                    isWaterRunning = false;
                    hasItBeenOn = false;
                }
            }
        }
    }
    bool isItHoldingSomething = false;
    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            if(col.gameObject.tag == "IsHolding")
            {
                isItHoldingSomething = true;

            }
            colin = col;
            ControllerInRange = true;
        }
    }

    private void OnTriggerStay(Collider col)
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
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            if (col.gameObject.tag == "IsHolding")
            {
                isItHoldingSomething = false;

            }
            colin = col;
            ControllerInRange = false;
            simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
            //base.transform.rotation = new Quaternion(base.transform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);
            //isTriggerPressed = false; //MAYBE NOT!!!!!!!!!!!!!!!!!!!!!!!!!!
            col.gameObject.GetComponent<Interactions>().enabled = true;
            Debug.Log("Stop shining");//highlight
            //gameObject.transform.parent.position = new Vector3(0f, 0f, 0f);
        }
    }

}
