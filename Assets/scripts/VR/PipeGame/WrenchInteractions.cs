using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WrenchInteractions : MonoBehaviour
{
    Collider colin;
    Transform transformer;
    bool isHeld=false;
    bool isPlayedSound = false;
    Vector3 rotEu;
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
            
            //transform.rotation = Quaternion.Euler(rot);
            //transformer.position = colin.gameObject.transform.position;
            // transformer.rotation = colin.gameObject.transform.rotation;
            transformer.position = new Vector3(colin.gameObject.transform.position.x, colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);

            
            transformer.rotation = Quaternion.Euler(new Vector3(colin.gameObject.transform.rotation.eulerAngles.x, colin.gameObject.transform.rotation.eulerAngles.y , colin.gameObject.transform.rotation.eulerAngles.z));
            if (isPlayedSound == false)
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
            col.GetComponent<Collider>().enabled = false;
           
        }
    }
    private void OnTriggerStay(Collider col)
    {
        
    }

    private void OnTriggerExit(Collider col)
    {
        col.GetComponent<Collider>().enabled = false;
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
