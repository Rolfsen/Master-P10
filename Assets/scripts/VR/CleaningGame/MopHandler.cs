using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MopHandler : MonoBehaviour
{

    Collider colin;
    Rigidbody rigidBody;
    SimpleInteractions simpleInteractions;
    [SerializeField]
    private int count;
    [SerializeField]
    //bool isOnRightSpot = false;
    bool isInRange = false;
    bool isPlayedSound = false;
    bool isOnRightSpot = true;
    public bool isControllerPressed = false;
    Vector3 startPos;
    Quaternion startRot;
    public bool isHeld = false;
    float yAxisMovement;
    private bool isCurrentlyCollidingWithHand;
    [SerializeField]
    GameObject mopPlace;
    bool isItPressed = false;
    // Use this for initialization
    void Start()
    {
        startPos = transform.position;
        startRot = transform.rotation;
    }

    // Update is called once per frame
    void Update()
    {
        IsHeld();
        if(CleaningManager.isHouseClean)
        {
            transform.position = startPos;
            transform.rotation = startRot;
        }



    }


    private void IsHeld()
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (isInRange)
            {
                if (isItPressed)
                {
                    // yAxisMovement = Mathf.Clamp(colin.transform.position.y, 1.036f, 2f);
                    yAxisMovement = Mathf.Clamp(colin.transform.position.y, 1.2f, 2f);
                    transform.position = new Vector3(colin.gameObject.transform.position.x, yAxisMovement, colin.gameObject.transform.position.z);
                    transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);
                    EventBus.TriggerEvent(this, new GameStateEvent.MopIsBeingHeld());
                    isHeld = true;
                }
                /*
                if (simpleInteractions.isPressed == true)
                {
                    yAxisMovement = Mathf.Clamp(colin.transform.position.y, 0f, 2f);
                    EventBus.TriggerEvent(this, new GameStateEvent.MopIsBeingHeld());
                    transform.position = new Vector3(colin.gameObject.transform.position.x, yAxisMovement, colin.gameObject.transform.position.z);
                    transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);

                    isHeld = true;

                }
                */




            }
        }
    }

    Coroutine leftCounter;
    bool isCurrentlyCounting;

    IEnumerator CheckIfPlayerLeft()
    {
        isCurrentlyCounting = true;
        yield return new WaitForSeconds(0.2f);
        if (!isCurrentlyCollidingWithHand)
        {
            isItPressed = false;

            isInRange = false;
            isHeld = false;
            transform.position = new Vector3(transform.position.x, 1.2f, transform.position.z);
            EventBus.TriggerEvent(this, new GameStateEvent.MopIsNotBeingHeld());
        }
        isCurrentlyCounting = false;
    }

    private void OnTriggerEnter(Collider col)
    {

        if (MiniGameManager.isCleaningGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                isCurrentlyCollidingWithHand = true;

                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                isControllerPressed = simpleInteractions.isPressed;
                colin = col;
                isInRange = true;
                

            }
            if(col.gameObject.tag=="MopPlace")
            {
                if(!isOnRightSpot)
                { 
                    transform.position = startPos;
                    transform.rotation = startRot;
                    isInRange = false;
                    isHeld = false;
                }
            }
        }
    }

    private void OnTriggerStay(Collider col)
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                isControllerPressed = simpleInteractions.isPressed;
                colin = col;
                isInRange = true;
                if (simpleInteractions.isPressed == true)
                {
                    isItPressed = true;
                }

            }
            else if (col.gameObject.tag == "Bucket")
            {
                
                transform.position = new Vector3(colin.gameObject.transform.position.x, colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);
                transform.rotation = new Quaternion(transform.rotation.x, colin.gameObject.transform.rotation.y, transform.rotation.z, transform.rotation.w);
            }
        }
    }

    private void OnTriggerExit(Collider col)
    {

        if (MiniGameManager.isCleaningGameRunning)
        {

            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                isCurrentlyCollidingWithHand = false;
                if (!isCurrentlyCounting)
                {
                    leftCounter = StartCoroutine(CheckIfPlayerLeft());
                }
            }

            if (col.gameObject.tag == "MopPlace")
            {
                isOnRightSpot = false;
                
            }
            }
    }

    
}
