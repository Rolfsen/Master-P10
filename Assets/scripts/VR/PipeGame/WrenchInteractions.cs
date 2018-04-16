using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WrenchInteractions : MonoBehaviour
{
    Collider colin;
    Transform transformer;
    bool isHeld=false;
    bool isPlayedSound = false;
    // Use this for initialization
    void Start()
    {
        transformer = gameObject.GetComponent<Transform>();
    }

    // Update is called once per frame
    void Update()
    {
        if(isHeld == true)
        {
            transformer.position = colin.gameObject.transform.position;
            transformer.rotation = colin.gameObject.transform.rotation;
            if(isPlayedSound == false)
            {
                EventBus.TriggerEvent(this, new GameStateEvent.AfterPickUpWrench());
                EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Now fix the pipes boiiiiiiii"));
                isPlayedSound = true;
            }
        }
    }

    private void OnTriggerEnter(Collider col)
    {

        
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {

            colin = col;
            
            isHeld = true;
            GetComponent<Collider>().enabled = false;
           
        }
    }

}

/*
 Collider colin;
    ObjectInteraction OI;
    

    void Start () {
        OI = gameObject.GetComponent<ObjectInteraction>();
        transformer = gameObject.GetComponent<Transform>();
        rigidBody = gameObject.GetComponent<Rigidbody>();
    }
	
	// Update is called once per frame
	void Update () {

        if(isHeld == true)
        {
            rigidBody.isKinematic = true;
            transformer.position = colin.gameObject.transform.position;
     */
