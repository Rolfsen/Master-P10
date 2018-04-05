using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewShowerHead : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnTriggerEnter(Collider col)
    {
        if(col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            Debug.Log("Shine new thingy");//highlight
        }
    }


}
