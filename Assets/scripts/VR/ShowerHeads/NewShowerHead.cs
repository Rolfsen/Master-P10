using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewShowerHead : MonoBehaviour {
    private Transform transformer;
    [SerializeField]
    private Quaternion rotationDelta;
    private Rigidbody rigidBody;
    bool pluggedIn = false;
    bool isItOnSpot = false;
    [SerializeField]
    int count = 0;
    bool isHeld = false;
    Collider colin;
    // Use this for initialization
    void Start () {
        transformer = gameObject.GetComponent<Transform>();
        rigidBody = gameObject.GetComponent<Rigidbody>();
    }
	
	// Update is called once per frame
	void Update () {

        if(isHeld == true)
        {
            rigidBody.isKinematic = true;
            transformer.position = colin.gameObject.transform.position;
        }

        if(isItOnSpot == true)
        { 
            IsTheShowerHeadScrewedOn();
        }
    }
    

    void IsTheShowerHeadScrewedOn()
    {
        Debug.Log("its on baby");
        rotationDelta = transformer.rotation;
      
        if (rotationDelta.y > 0.8 || rotationDelta.y < -0.8)
        {
            count++;
            if(count>50)
            { 
                pluggedIn = true;
                rigidBody.isKinematic = true;
            }
        }
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" && isItOnSpot == false||
            col.gameObject.name == "Controller (right)" && isItOnSpot == false)
        {
            colin = col;
            isHeld = true;
            
            //rigidBody.useGravity = true;
            Debug.Log("Shine new thingy");//highlight
        }

        if(col.gameObject.name == "shower_socket")
        {
            isHeld = false;
            isItOnSpot = true;
            rigidBody.isKinematic = false;
            
        }
    }


}
