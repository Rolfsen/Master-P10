using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WrenchInteractions : MonoBehaviour
{
    Collider colin;
    Transform transformer;
    Rigidbody rigidBody;
    Quaternion deltaRotation;
    bool isHeld=false;
    // Use this for initialization
    void Start()
    {
        transformer = gameObject.GetComponent<Transform>();
        rigidBody = gameObject.GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if(isHeld == true)
        {
            transformer.position = colin.gameObject.transform.position;
            transformer.rotation = colin.gameObject.transform.rotation;
        }
    }

    private void OnTriggerEnter(Collider col)
    {

        
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            colin = col;
            deltaRotation = colin.gameObject.transform.rotation;
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
