using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RightPlaceForOldHead : MonoBehaviour {
  

    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "OldShowerHead")//the old one
        {
            Debug.Log("the old one is on the right spot");
            // rigidBody.isKinematic = false;
            //rigidBody.constraints = RigidbodyConstraints.None;
            // rigidBody.useGravity = true;
            // rigidBody.mass = 1;
            //maybe destroy it?
            col.gameObject.transform.position = new Vector3(-3.612f, 0.924f, 5.099f);//change here for position of the obj
            col.gameObject.transform.rotation = new Quaternion(0f, 0f, 0f, 0f);
            EventBus.TriggerEvent(this, new GameStateEvent.OldShowerHeadInPlacedInBoxEvent());
            EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You placed the head on the right spot."));

        }
        
    }
}
