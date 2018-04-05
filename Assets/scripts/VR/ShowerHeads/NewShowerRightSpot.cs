﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewShowerRightSpot : MonoBehaviour {

    private Rigidbody rigidBody;
    private Transform transformer;
    private Vector3 pos;
    [SerializeField]
    private GameObject newHead;
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
    bool isOnPlace = false;
    void OnTriggerEnter(Collider col)
    {
        if(col.gameObject.name == "NewShowerHead")
        {
            Debug.Log("hello");
            rigidBody = col.gameObject.GetComponent<Rigidbody>();
            transformer = col.gameObject.GetComponent<Transform>();
            newHead = col.gameObject;
            newHead.transform.position = new Vector3(-0.62f, 2.1f, -0.07f);
            newHead.transform.rotation = new Quaternion(0f, 0f, 0f, 0f);
           // rigidBody.sleepThreshold = 1;//dunno
            rigidBody.isKinematic = true;
            rigidBody.constraints = RigidbodyConstraints.FreezePositionZ | RigidbodyConstraints.FreezePositionX 
                | RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationZ | RigidbodyConstraints.FreezePositionY;
            rigidBody.useGravity = false;
            isOnPlace = true;
            if (isOnPlace)
            {
                rigidBody.isKinematic = false;
            }

            EventBus.TriggerEvent(this, new GameStateEvent.NewShowerHeadScrewedOnEvent());
            EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You screwed the shit on!"));

          
            col.GetComponent<SphereCollider>().enabled = false;
            // rigidBody.isKinematic = false;
            //rigidBody.constraints = RigidbodyConstraints.FreezePositionZ;
        }
    }
}