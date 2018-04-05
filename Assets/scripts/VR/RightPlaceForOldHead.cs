using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RightPlaceForOldHead : MonoBehaviour {
    Rigidbody rigidBody;

    // Use this for initialization
    void Start () {
        rigidBody = GetComponent<Rigidbody>();

    }
    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.name == "shower_head")//the old one
        {
            Debug.Log("the old one is on the right spot");
            rigidBody.isKinematic = false;
            rigidBody.constraints = RigidbodyConstraints.None;
            rigidBody.useGravity = true;
            rigidBody.mass = 1;
            //maybe destroy it?
            //EventBus.TriggerEvent(this, new GameStateEvent.OldShowerHeadInPlaceEvent());
            //EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You placed the head on the right spot."));
        }
        
    }
    // Update is called once per frame
    void Update () {
		
	}
}
