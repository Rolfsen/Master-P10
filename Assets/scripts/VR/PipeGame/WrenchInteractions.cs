using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WrenchInteractions : MonoBehaviour
{

    static public bool resetWrench = false;
    [SerializeField]
    Transform leftHandGrip;

    [SerializeField]
    Transform rightHandGrip;

    Vector3 offsetVector;

    bool isHold;

    [SerializeField]
    Transform leftHand;

    [SerializeField]
    Transform rightHand;

    Transform usingTrans;

    Vector3 offset;

    GameObject holdingHand;
    Collider colin;
    Transform transformer;
    bool isInRange = false;
    bool isPlayedSound = false;
    Vector3 rotEu;

    SimpleInteractions simpleInteractions;
    [SerializeField]
    bool isOnRightSpot = false;
    // Use this for initialization
    [SerializeField]
    float rightSpotX
        , rightSpotY
        , rightSpotZ;
    bool isHeld = false;
    [SerializeField]
    private AudioClip musicClip;
    [SerializeField]
    private AudioSource musicSource;
    private bool isItPressed;
    private Vector3 startPos;
    private Quaternion startRotation;
    void Start()
    {
        startPos = transform.position;
        startRotation = transform.rotation;
        musicSource.clip = musicClip;
        transformer = gameObject.GetComponent<Transform>();
    }
    void Update()
    {

        //WrenchIsHeld();
        if (resetWrench)
        {
            transform.SetParent(null);
            transformer.position = startPos;
            transformer.rotation = startRotation;
            isOnRightSpot = false;
            isInRange = false;
            isItPressed = false;
            isHeld = false;
            resetWrench = false;
        }
    }

    

    void WrenchIsHeld()
    {
        if (MiniGameManager.isPipeGameRunning)
        {
            if (isInRange == true)
            {
                if (colin.gameObject.name == "Controller (left)" && isItPressed == true)

                {
                    //transformer.position = new Vector3(colin.gameObject.transform.position.x, colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);
                    //transformer.rotation = Quaternion.Euler(new Vector3(colin.gameObject.transform.rotation.eulerAngles.x, colin.gameObject.transform.rotation.eulerAngles.y, colin.gameObject.transform.rotation.eulerAngles.z));
                    //transform.localEulerAngles = new Vector3(0, 0, -90f);
                    
                    if (simpleInteractions.isPressed)
                    {
                        musicSource.Play();
                    }
                    isHeld = true;
                }
               
                if (isPlayedSound == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.AfterPickUpWrench());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(true,"Great, now you can use the wrench to tighten the bolts which should fix your leakage."));
                    isPlayedSound = true;
                }
                if (isHeld == true && simpleInteractions.isPressed == false && isOnRightSpot == true)
                {

                    transformer.position = startPos;
                    transformer.rotation = startRotation;
                    isOnRightSpot = false;
                    isInRange = false;
                    isItPressed = false;
                    isHeld = false;
                }
            }
        }
    }
    private void OnTriggerEnter(Collider col)
    {
        if (MiniGameManager.isPipeGameRunning)
        {
            if (col.gameObject.tag == "WrenchPlace")
            {
                transform.SetParent(null);
                transform.position = startPos;
                transform.rotation = startRotation;
                isInRange = false;
                isItPressed = false;
                isHeld = false;
                isHoldingWrench = false;
            }
        }
    }
    private void OnTriggerStay(Collider col)
    {
        if (MiniGameManager.isPipeGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {

                simpleInteractions = col.GetComponent<SimpleInteractions>();
                if (simpleInteractions.isPressed)
                { 

                    if (col.GetComponent<TestingGrippingHand>().isLeftHand)
                    {
                        offsetVector = leftHandGrip.position;
                        usingTrans = leftHand;

                    }
                    else
                    {
                        offsetVector = rightHandGrip.position;
                        usingTrans = rightHand;
                    }
                    offset = (usingTrans.position - col.transform.position) + (offsetVector - transform.position);
                    transform.position = col.transform.position - offset;
                    //simpleInteractions.isHoldingSomething = true;
                    holdingHand = col.gameObject;
                    transform.SetParent(holdingHand.transform);
                    transform.localEulerAngles = new Vector3(0, 180f, 0f);
                    col.GetComponent<TestingGrippingHand>().HoldObject();
                    isHoldingWrench = true;
                }
            }
        }
    }
    public bool isHoldingWrench;
    private void OnTriggerExit(Collider col)
    {
        if (col.gameObject.tag == "WrenchPlace")
        {
        }//col.GetComponent<Collider>().enabled = false;
        if(col.gameObject.CompareTag("Player"))
        {
            transform.SetParent(null);
            isHoldingWrench = false;
        }
    }
}

