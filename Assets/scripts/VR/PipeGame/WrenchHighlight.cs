using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WrenchHighlight : MonoBehaviour {
    private bool isHeld;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerEnter(Collider col)
    {
        if (MiniGameManager.isPipeGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                Debug.Log("Shine new thingy");//highlight
                                              //gameObject.transform.parent.position = new Vector3(0f, 0f, 0f);
                                              //rigidBody.useGravity = true;

            }
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (MiniGameManager.isPipeGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                Debug.Log("Stop shining");//highlight
                                          //gameObject.transform.parent.position = new Vector3(0f, 0f, 0f);
            }
        }
    }
}
