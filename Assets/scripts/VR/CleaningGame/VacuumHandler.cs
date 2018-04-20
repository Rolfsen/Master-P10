using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VacuumHandler : MonoBehaviour
{
    Collider colin;
    Rigidbody rigidBody;
    SimpleInteractions simpleInteractions;
    [SerializeField]
    private int count;
    [SerializeField]
    bool isOnRightSpot = false;
    bool isInRange = false;
    bool isPlayedSound = false;
   

   public bool isControllerPressed = false;
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        IsHeld();
        //IsControllerPressed();
    }

    void IsControllerPressed()
    {
        //isControllerPressed = simpleInteractions.isPressed;
    }
    private void IsHeld()
    {
        if (isInRange == true)
        {
            if (simpleInteractions.isPressed == true)
            {
                // soapHandlerCollider = soapHandler.GetComponent<Collider>();
                // soapHandlerCollider.enabled = false;
                transform.position = new Vector3(colin.gameObject.transform.position.x, 1.190f, colin.gameObject.transform.position.z);
                transform.rotation = Quaternion.Euler(new Vector3(transform.rotation.eulerAngles.x, colin.gameObject.transform.rotation.eulerAngles.y - 50f, transform.rotation.eulerAngles.z));

                if (isPlayedSound == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Dont drop the vacuum"));
                    isPlayedSound = true;
                }
                

            }
            
            if (simpleInteractions.isPressed == false)
            {
                transform.position = new Vector3(colin.gameObject.transform.position.x, 1.193f, colin.gameObject.transform.position.z);
                transform.rotation = Quaternion.Euler(new Vector3(transform.rotation.eulerAngles.x, colin.gameObject.transform.rotation.eulerAngles.y-50f, transform.rotation.eulerAngles.z));

                //transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y+transform.rotation.y, transform.rotation.z, transform.rotation.w);
            }

            if (simpleInteractions.isPressed == false && isOnRightSpot == true)
            {

                transform.position = new Vector3(0.363f, 0.435f, 2.056f);
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

        else if (col.gameObject.tag == "VacuumRightSpot")
        {
            isOnRightSpot = true;
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
        else if (col.gameObject.tag == "VacuumRightSpot")
        {
            isOnRightSpot = true;
        }
    }

    private void OnTriggerExit(Collider col)
    {
        isInRange = false;
        if (col.gameObject.tag == "VacuumRightSpot")
        {
            isOnRightSpot = false;
        }

    }
}
    /*
        private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            Debug.Log("i entered");
            if (col.gameObject.GetComponent<SimpleInteractions>().isPressed == true)
            { 
                //col.gameObject.transform.SetParent(transform, true);
                transform.position = new Vector3(col.gameObject.transform.position.x, 1.193f, col.gameObject.transform.position.z);
            }
        }
    }
    private void OnTriggerStay(Collider col)
    {
        Debug.Log("i am inside");
        if (col.gameObject.GetComponent<SimpleInteractions>().isPressed == true)
        {
            //col.gameObject.transform.SetParent(transform, true);
            transform.position = new Vector3(col.gameObject.transform.position.x, 1.193f, col.gameObject.transform.position.z);
        }
    }

    private void OnTriggerExit(Collider col)
    {
        transform.position = new Vector3(transform.position.x, transform.position.y, transform.position.z);
    }
    */
