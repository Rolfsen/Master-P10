using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Interactions : MonoBehaviour {

    //if we wanna work with a controller we will get the newest object index
    //corresponds to the Enums in the controller script
    private SteamVR_Controller.Device controller { get { return SteamVR_Controller.Input((int)trackedObj.index); } }

    private SteamVR_TrackedObject trackedObj; //getting the index from the tracked obj

    private Valve.VR.EVRButtonId gripButton = Valve.VR.EVRButtonId.k_EButton_Grip;

    private Valve.VR.EVRButtonId triggerButton = Valve.VR.EVRButtonId.k_EButton_SteamVR_Trigger;

    //private GameObject pickUp;

    public HashSet<ObjectInteraction> objectsHoveringOver = new HashSet<ObjectInteraction>();//maybe use a better way than HashSet
    public List<ObjectInteraction> objectsHoveringOverList = new List<ObjectInteraction>();
    public bool isPressed = false;
    private ObjectInteraction closestItem;
    private ObjectInteraction interactingItem;
    private float minDistance;
    void Start()
    {
        trackedObj = GetComponent<SteamVR_TrackedObject>();

    }
    void SceneChange()
    {
        if (controller.GetPressDown(gripButton))
        {
            SceneManager.LoadScene("Testi", LoadSceneMode.Additive);

        }
    }

    void IsPressed()
    {
        if (controller.GetPressDown(triggerButton))
        {
            isPressed = true;
            //Debug.Log("TRIGER IS TRUE");
        }
        else if(controller.GetPressUp(triggerButton))
        {
            isPressed = false;

            //Debug.Log("TRIGER IS FALSE");
        }
        
        
    }
    void Update()
    {
        SceneChange();

        IsPressed();
        ClosestItemInteract();

    }

    private void ClosestItemInteract()
    {
        if (controller == null)
        {
            Debug.Log("Controller Not Found");
            return;
        }
        if (controller.GetPressDown(triggerButton))
        {
            minDistance = float.MaxValue;

            float distance;
            foreach (ObjectInteraction item in objectsHoveringOverList)
            {
                distance = (item.transform.position - transform.position).sqrMagnitude;
                if (distance < minDistance)
                {
                    minDistance = distance;
                    closestItem = item;
                }
            }

            interactingItem = closestItem;
            closestItem = null;//if we get this off, we have unlimited touch, until new item

            if (interactingItem != null) //testing if it interacts with another object
            {
                if (interactingItem.isInteracting())
                {
                    interactingItem.EndInteraction(this);
                }
                interactingItem.BeginInteraction(this);
            }
        }

        if (controller.GetPressUp(triggerButton) && interactingItem != null)
        {
            interactingItem.EndInteraction(this);
        }
    }
    private void OnTriggerEnter(Collider collider)
    {
        ObjectInteraction collidedItem = collider.GetComponent<ObjectInteraction>();
        if (collidedItem)
        {
            objectsHoveringOverList.Add(collidedItem); 
        }
        
        //pickUp = collider.gameObject;
    }

    private void OnTriggerExit(Collider collider)
    {
        ObjectInteraction collidedItem = collider.GetComponent<ObjectInteraction>();
        if (collidedItem)
        {
            objectsHoveringOverList.Remove(collidedItem);
        }
    }
}


/*
             if (controller.GetPressDown(gripButton))
             {
                 Debug.Log("Grip Button was just pressed");
             }

             if (controller.GetPressDown(triggerButton) && pickUp != null)
             {
                 pickUp.transform.parent = transform;
                 pickUp.GetComponent<Rigidbody>().isKinematic = true;

             }

             if (controller.GetPressUp(triggerButton) && pickUp != null)
             {
                 pickUp.transform.parent = null;

                 pickUp.GetComponent<Rigidbody>().isKinematic = false;
             }
             */
