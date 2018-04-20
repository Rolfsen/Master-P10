using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleInteractions : MonoBehaviour
{
    private SteamVR_Controller.Device controller { get { return SteamVR_Controller.Input((int)trackedObj.index); } }

    private SteamVR_TrackedObject trackedObj; //getting the index from the tracked obj
    [SerializeField]
    private GameObject leftHandObj, rightHandObj;
    private LeftHand leftHand;
    [SerializeField]
    private RightHand rightHand;
    private Valve.VR.EVRButtonId triggerButton = Valve.VR.EVRButtonId.k_EButton_SteamVR_Trigger;
    public bool isPressed = false;
    public bool isHoldingSomething = false;
    SphereCollider[] myColliders;
    void Start()
    {
        trackedObj = GetComponent<SteamVR_TrackedObject>();
        myColliders = gameObject.GetComponents<SphereCollider>();
        leftHand = leftHandObj.GetComponent<LeftHand>();
        rightHand = rightHandObj.GetComponent<RightHand>();
    }
    void IsPressed()
    {
        if (controller.GetPressDown(triggerButton))
        {
            isPressed = true;
            //Debug.Log("TRIGER IS TRUE");
        }
        else if (controller.GetPressUp(triggerButton))
        {
            isPressed = false;

           // Debug.Log("TRIGER IS FALSE");
        }


    }
    void Update()
    {
        IsPressed();
        Debug.Log(myColliders[0]);
        Debug.Log(myColliders[1]);
    }

    
    private void OnTriggerEnter(Collider col)
    {
        
        if(col.gameObject.tag == "Wrench")
        {
            Debug.Log("its all right now");
            myColliders[1].enabled = true;
            myColliders[0].enabled = false;
            

        }
        
       //pickUp = collider.gameObject;
       // ObjectInteraction collidedItem = col.GetComponent<ObjectInteraction>();
       //if (collidedItem)
       // {
       //     //objectsHoveringOverList.Add(collidedItem);
       // }
    }
    private void OnTriggerStay(Collider col)
    {

        ///MAKING THE HANDS STAY IN PLACE
        if (col.gameObject.tag == "Wrench")
        {
            leftHand.closeHandLeft.SetActive(true);
            rightHand.closeHandRight.SetActive(true);
            leftHand.openHandLeft.SetActive(false);
            rightHand.openHandRight.SetActive(false);
            leftHand.enabled = false;
            rightHand.enabled = false;
        }
    }
    private void OnTriggerExit(Collider col)
    {
        ObjectInteraction collidedItem = col.GetComponent<ObjectInteraction>();
        if (collidedItem)
        {
            //objectsHoveringOverList.Remove(collidedItem);
        }

        if (col.gameObject.tag == "Wrench")
        {
            myColliders[0].enabled = true;
            myColliders[1].enabled = false;
            Debug.Log("its all right now");
            leftHand.enabled = true;
            rightHand.enabled = true;
            ///MAKING THE HANDS STAY IN PLACE
            leftHand.closeHandLeft.SetActive(false);
            rightHand.closeHandRight.SetActive(false);
            leftHand.openHandLeft.SetActive(true);
            rightHand.openHandRight.SetActive(true);

        }
    }
}