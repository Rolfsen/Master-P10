using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RightPlaceForOldHead : MonoBehaviour {
  

    private void OnTriggerEnter(Collider col)
    {
        if (MiniGameManager.isHeadShowerGameRunning)
        {
            if (col.gameObject.tag == "OldShowerHead")//the old one
            {
                Debug.Log("the old one is on the right spot");
                col.gameObject.transform.position = new Vector3(-3.6176f, 0.707f, 5.0939f);//change here for position of the obj
                col.gameObject.transform.rotation = new Quaternion(0f, 0f, 0f, 0f);
                EventBus.TriggerEvent(this, new GameStateEvent.OldShowerHeadInPlacedInBoxEvent());
                EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Neat, now you just have to pick up the new shower head and screw it in clockwise."));

            }
        }
    }
}
