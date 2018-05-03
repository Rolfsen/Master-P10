using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoapInteractions : MonoBehaviour
{

    Collider colin;
    Transform transformer;
    Rigidbody rigidBody;
    Quaternion deltaRotation;
    SimpleInteractions simpleInteractions;
    [SerializeField]
    private GameObject RightHand, LeftHand;

    [SerializeField]
    GameObject waterParticleObject;
    WaterParticle waterParticle;
    [SerializeField]
    private float count;
    [SerializeField]
    private float timeToSoap = 5;
    private bool isDoneCleaningSelf = false;
    private bool isRightConditionsForCleaning = false;
    [SerializeField]
    bool isOnRightSpot = false;
    bool isInRange = false;
    bool isPlayedSound = false;
    bool isHeld;
    private bool getWetSound = false;
    private bool isItPressed;
    [SerializeField]
    private ShowerHandler showerhandler;
    [SerializeField]
    Collider soapAreaCol;
    [SerializeField]
    Transform leftHandGrip;

    [SerializeField]
    Transform rightHandGrip;

    Vector3 offsetVector;
    [SerializeField]
    Transform leftHand;
    Transform usingTrans;
    GameObject holdingHand;
    Vector3 offset;
    [SerializeField]
    Transform rightHand;
    bool canPutDown;
    bool isWety;
    bool isPickedUp;
    bool isOnPlace = true;
    bool canBeReturnedToSoapHolder;

    // Use this for initialization
    void Start()
    {
        transformer = gameObject.GetComponent<Transform>();
        rigidBody = gameObject.GetComponent<Rigidbody>();
        waterParticle = waterParticleObject.GetComponent<WaterParticle>();

        isItPressed = false;
        isHeld = false;
        canPutDown = false;
        isPickedUp = false;
    }

    // Update is called once per frame
    void Update()
    {
        IsDoneCleaningSelf();
        IsGameDone();
    }

    private void IsDoneCleaningSelf()
    {
        if (MiniGameManager.isShowerGameRunning)
        {
            if (isRightConditionsForCleaning)
            {
                //SOUND OF HAVING URSELF CLEAN
                if (!isDoneCleaningSelf)
                {
                    count += Time.deltaTime;
                    if (count > timeToSoap)
                    {
                        isDoneCleaningSelf = true;
                        waterParticle.isWet = false;
                        EventBus.TriggerEvent(this, new PlayerEvent.PlayerWasSoaped());
                    }
                }
            }
        }
    }
    bool oneWin = false;
    void IsGameDone()
    {
        if (isDoneCleaningSelf && !showerhandler.isWaterRunning && waterParticle.isWet == true)//fail
        {
            if (!oneWin)
            {
                EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
                Debug.Log("Game done");
                oneWin = true;
            }
        }
    }

    private void IsHeld()
    {
        if (MiniGameManager.isShowerGameRunning)
        {
            if (isInRange == true)
            {
                if (isHeld == true && isItPressed == true && isOnRightSpot == true && !isOnPlace)
                {
                    transform.parent = null;
                    transformer.position = new Vector3(-3.8109f, 1.2155f, 4.2846f);
                    transformer.rotation = new Quaternion(0f, 0f, 0f, 0f);
                    isItPressed = false;
                    isHeld = false;
                    isInRange = false;
                    isOnPlace = true;

                }
                else if (isItPressed == true)
                {
                    if (isPlayedSound == false)
                    {
                        EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                        //EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Dont drop it now"));
                        isPlayedSound = true;
                    }
                    isHeld = true;

                }
            }
        }
    }
    private void OnTriggerEnter(Collider col)
    {

        if (MiniGameManager.isShowerGameRunning)
        {

            if (col.gameObject.name == "soap_holder" && canPutDown)
            {
                canPutDown = false;
                isOnRightSpot = true;
            }

            if (col.gameObject.name == "torso" && waterParticle.isWet == true)
            {
                //EVENT FOR CLEANING STARTS
                Debug.Log("WE ARE STARTING CLEANING");
                isRightConditionsForCleaning = true;
                EventBus.TriggerEvent(this, new GameStateEvent.StartCleaningSelf());
            }
            else if (col.gameObject.name == "torso" && waterParticle.isWet == false && getWetSound == false)
            {
                Debug.Log("WE ARE not STARTING CLEANING");
                EventBus.TriggerEvent(this, new GameStateEvent.NudgePlayerToGetWet());
                getWetSound = true;
            }
        }
    }
    private void OnTriggerStay(Collider col)
    {
        if (MiniGameManager.isShowerGameRunning)
        {
            if (col.CompareTag("Torso") && waterParticle.isWet == true)
            {
                Debug.Log("THEY ARE GOOD CONDITIONS");
                isRightConditionsForCleaning = true;
            }

            if (col.CompareTag("Player") && !isPickedUp)
            {
                simpleInteractions = col.GetComponent<SimpleInteractions>();
                if (simpleInteractions.isPressed)
                {
                    isInRange = true;
                    colin = col;
                    isItPressed = true;
                    if (!isHeld && isOnPlace)
                    {

                        if (col.GetComponent<TestingGrippingHand>().isLeftHand)
                        {
                            offsetVector = leftHandGrip.position;
                            usingTrans = leftHand;
                            if (isPlayedSound == false)
                            {
                                EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                                isPlayedSound = true;
                            }
                        }
                        else
                        {
                            offsetVector = rightHandGrip.position;
                            usingTrans = rightHand;
                            if (isPlayedSound == false)
                            {
                                EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                                isPlayedSound = true;
                            }

                        }

                        offset = (usingTrans.position - col.transform.position) + (offsetVector - transform.position);
                        transform.position = col.transform.position - offset;
                        isHeld = true;
                        isOnPlace = false;
                        holdingHand = col.gameObject;
                        transform.SetParent(holdingHand.transform);
                        col.GetComponent<TestingGrippingHand>().HoldObject();
                        canBeReturnedToSoapHolder = false;
                        StartCoroutine(BanSoapFromBeingReturned());
                    }
                }
            }

            else if (isHeld == true && isItPressed == true && col.gameObject.name == "soap_holder" && !isOnPlace && canBeReturnedToSoapHolder)
            {
                transform.parent = null;
                transformer.position = new Vector3(-3.8109f, 1.2155f, 4.2846f);
                transformer.rotation = new Quaternion(0f, 0f, 0f, 0f);
                isItPressed = false;
                isHeld = false;
                canPutDown = false;
                isInRange = false;
                isOnPlace = true;
                transform.SetParent(null);
            }

        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (MiniGameManager.isShowerGameRunning)
        {

            if (col.gameObject.name == "soap_holder")
            {
                isOnRightSpot = false;
                isOnPlace = false;
            }
            if (col.CompareTag("LeaveSoapPlace"))
            {
                Debug.Log("Left Area");
                canPutDown = true;
            }
            if (col.gameObject.name == "torso")
            {
                isRightConditionsForCleaning = false;
                EventBus.TriggerEvent(this, new GameStateEvent.StopCleaningSelf());
                // EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You stopped cleaning ur self"));
            }
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                //col.GetComponent<Interactions>().enabled = enabled;
                isItPressed = false;
                transform.SetParent(null);
            }

        }
    }

    [SerializeField]
    float banTime;
    IEnumerator BanSoapFromBeingReturned()
    {
        yield return new WaitForSeconds(banTime);
        canBeReturnedToSoapHolder = true;
    }
}
