using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MopHandler : MonoBehaviour {

    Collider colin;
    Rigidbody rigidBody;
    SimpleInteractions simpleInteractions;
    [SerializeField]
    private int count;
    [SerializeField]
    //bool isOnRightSpot = false;
    bool isInRange = false;
    bool isPlayedSound = false;
    // bool isHeld = false;
    bool isOnRightSpot = false;
    public bool isControllerPressed = false;
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        IsHeld();
    }


    private void IsHeld()
    {
        if (isInRange == true)
        {
            if (simpleInteractions.isPressed == true)
            {
                
                //transform.position = new Vector3(colin.gameObject.transform.position.x, 
                //  colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);
                //transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);
                // transform.rotation = new Quaternion(colin.gameObject.transform.rotation.x, 
                //   colin.gameObject.transform.rotation.y, colin.gameObject.transform.rotation.z, colin.gameObject.transform.rotation.w);
                transform.position = new Vector3(colin.gameObject.transform.position.x, 0.3f, colin.gameObject.transform.position.z);
                transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);
                if (isPlayedSound == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Dont drop the mop now"));
                    isPlayedSound = true;
                }
                //isHeld = true;

            }
            
            if (simpleInteractions.isPressed == false)
            {
                transform.position = new Vector3(colin.gameObject.transform.position.x, 0.2f, colin.gameObject.transform.position.z);
                transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);
            }
            
            if (simpleInteractions.isPressed == false && isOnRightSpot == true) //PLACED ON THE RIGHT SPOT THAT IS CALLED BUCKET
            {

                transform.position = new Vector3(-2.779388f, 0.1f, 2.182f);
                transform.rotation = new Quaternion(0f, 0f, 0f, 0f);
                
                isInRange = false;
            }
        }
    }

    private void OnTriggerEnter(Collider col)
    {


        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
            isControllerPressed = simpleInteractions.isPressed;
            colin = col;
            //deltaRotation = colin.gameObject.transform.rotation;
            isInRange = true;
            //GetComponent<Collider>().enabled = true;

        }
    }

    private void OnTriggerStay(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            isControllerPressed = simpleInteractions.isPressed;
            colin = col;
            isInRange = true;
            simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();

        }
        if(col.gameObject.tag == "Bucket")
        {
            isOnRightSpot = true;
        }
    }

    private void OnTriggerExit(Collider col)
    {
        
        isInRange = false;
        if (col.gameObject.tag == "Bucket")
        {
            isOnRightSpot = false;
        }
    }
}
