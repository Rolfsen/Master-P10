using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShowerInteractions : MonoBehaviour {

    public string showMeCol;
    public ObjectInteraction OI;
    [SerializeField]
    private Quaternion rotationDelta;
    private Transform transformer;
    private Vector3 vecy;
    public int count = 0;
    public float hi = 0;
    public Vector3 takeTheTranfsormIfItDoesntWork;
    [SerializeField]
    private Rigidbody rigidBody;
    Collider sphery;
    bool unPluged = false;
    void Start() {

        rigidBody = GetComponent<Rigidbody>();
        OI = gameObject.GetComponent<ObjectInteraction>();
        transformer = gameObject.GetComponent<Transform>();
        
    }

    // Update is called once per frame
    void Update() {
        
        showerUnPlug();
       // ClosestItemInteract();
        //HighlightShower();
    }

    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("Shine");//highlighting
    }
   

    void OnCollisionEnter(Collision col)
    {
        
    }
    
    void showerUnPlug()
    {
        rotationDelta = transformer.rotation;


        if (rotationDelta.y > 0.8 || rotationDelta.y < -0.8)
        {
            //Debug.Log("tuka ne sum vlqzal");
            if(unPluged == false)
            { 
                count++;
            }

            if (count > 50)
            {
                Debug.Log("Angle is too high");
                unPluged = true;
                //rigidBody.isKinematic = true;
                rigidBody.constraints = RigidbodyConstraints.None;
                rigidBody.useGravity = true;
                rigidBody.mass = 1;
                count = 0;
                GetComponent<SphereCollider>().enabled = false;

                //unfreeze them now
            }
        }
    }

    /*
    public List<ObjectInteraction> objectsHoveringOverList = new List<ObjectInteraction>();

    private ObjectInteraction closestItem;
    private ObjectInteraction interactingItem;
    private SteamVR_Controller.Device controller { get { return SteamVR_Controller.Input((int)trackedObj.index); } }

    private SteamVR_TrackedObject trackedObj; //getting the index from the tracked obj
    private ObjectInteraction closestItem;
    private ObjectInteraction interactingItem;
    private float minDistance;

    private void ClosestItemInteract()
    {
        if (controller == null)
        {
            Debug.Log("Controller Not Found");
            return;
        }
        
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
    */
    /*
    public Transform player;
    public Transform player2; //for later
    public float distance = 50;
    private bool playerCloseEnough = false;

    void HighlightShower()
    {

    
        if (Vector3.Distance(transformer.position, player.position) < distance || Vector3.Distance(transformer.position, player2.position) < distance)
        {
            playerCloseEnough = true;
        }
        else
        {
            playerCloseEnough = false;
        }
    
}
*/
}
