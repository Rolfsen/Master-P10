using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WrenchInteractions : MonoBehaviour
{
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
    void Start()
    {
        musicSource.clip = musicClip;
        transformer = gameObject.GetComponent<Transform>();
    }
    void Update()
    {

        WrenchIsHeld();

    }
    

    void WrenchIsHeld()
    {
        if (MiniGameManager.isPipeGameRunning)
        {
            if (isInRange == true)
            {
                if (colin.gameObject.name == "Controller (left)" && isItPressed == true)

                {
                    transformer.position = new Vector3(colin.gameObject.transform.position.x, colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);
                    transformer.rotation = Quaternion.Euler(new Vector3(colin.gameObject.transform.rotation.eulerAngles.x, colin.gameObject.transform.rotation.eulerAngles.y, colin.gameObject.transform.rotation.eulerAngles.z));
                    if (simpleInteractions.isPressed)
                    {
                        musicSource.Play();
                       
                    }
                    isHeld = true;
                    

                }
                else if (colin.gameObject.name == "Controller (right)" && isItPressed == true)
                {
                    transformer.position = new Vector3(colin.gameObject.transform.position.x, colin.gameObject.transform.position.y, colin.gameObject.transform.position.z);
                    transformer.rotation = Quaternion.Euler(new Vector3(colin.gameObject.transform.rotation.eulerAngles.x, colin.gameObject.transform.rotation.eulerAngles.y, colin.gameObject.transform.rotation.eulerAngles.z));
                    if (simpleInteractions.isPressed)
                    {
                        musicSource.Play();
                        
                    }
                    isHeld = true;
                }
                if (isPlayedSound == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.AfterPickUpWrench());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Now fix the pipes boiiiiiiii"));
                    isPlayedSound = true;
                }
                if (isHeld == true && simpleInteractions.isPressed == false && isOnRightSpot == true)
                {

                    transformer.position = new Vector3(rightSpotX, rightSpotY, rightSpotZ);
                    transformer.rotation = new Quaternion(0f, 0f, 0f, 90f);
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
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                colin = col;
                isInRange = true;

            }
            else if (col.gameObject.tag == "WrenchPlace")
            {
                isOnRightSpot = true;
            }
        }
    }
    private void OnTriggerStay(Collider col)
    {
        if (MiniGameManager.isPipeGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
                if (simpleInteractions.isPressed == true)
                {
                    Debug.Log("i am working actually");
                    isItPressed = true;
                }
            }
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (col.gameObject.tag == "WrenchPlace")
        {
            //mistake prone
        }//col.GetComponent<Collider>().enabled = false;
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
