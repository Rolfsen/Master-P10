using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoapInteractions : MonoBehaviour
{
    public static bool isShowerGameOver = false;

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

    bool isParticlePlaying;
    [SerializeField]
    float timeBetweenBubbles;
    [SerializeField]
    List<ParticleSystem> bubbleParticles;

    Vector3 startPos;
    Quaternion startRot;

    bool KOMBAW;

    // Use this for initialization
    void Start()
    {
        startPos = transform.position;
        startRot = transform.rotation;

        transformer = gameObject.GetComponent<Transform>();
        rigidBody = gameObject.GetComponent<Rigidbody>();
        waterParticle = waterParticleObject.GetComponent<WaterParticle>();

        isItPressed = false;
        isHeld = false;
        canPutDown = false;
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
        if (isDoneCleaningSelf && !showerhandler.turnWaterOn && waterParticle.isWet == true)//fail
        {
            if (!oneWin)
            {
                EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
                Debug.Log("Game done");
                oneWin = true;
                transform.SetParent(null);
                transform.position = startPos;
                transform.rotation = startRot;
                KOMBAW = true;
                isShowerGameOver = true;
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
                    transformer.position = startPos;
                    transformer.rotation = startRot;
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
    bool isInHand = false;
    bool particlesEnabled;
    private void OnTriggerStay(Collider col)
    {
        if (MiniGameManager.isShowerGameRunning)
        {
            if (col.CompareTag("Torso") && waterParticle.isWet == true)
            {
                isRightConditionsForCleaning = true;

                if (!particlesEnabled)
                {
                    foreach (var particleSystem in bubbleParticles)
                    {
                        var emitter = particleSystem.emission;
                        emitter.enabled = true;
                    }
                    particlesEnabled = true;
                }

            }

            if (col.CompareTag("Player") && !KOMBAW && !isHeld && !isInHand)
            {
                var tmpInteraction = col.GetComponent<SimpleInteractions>();
                
                    simpleInteractions = tmpInteraction;
                    isInRange = true;
                    //colin = col;
                    isItPressed = true;
                    if (!isHeld && isOnPlace && !isInHand)
                    {

                        if (col.GetComponent<TestingGrippingHand>().isLeftHand && !isInHand)
                        {
                            offsetVector = leftHandGrip.position;
                            usingTrans = leftHand;

                            if (isPlayedSound == false)
                            {
                                EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                                isPlayedSound = true;
                            }
                            isInHand = true;
                        }
                        else if(!col.GetComponent<TestingGrippingHand>().isLeftHand && !isInHand)
                        {
                            offsetVector = rightHandGrip.position;
                            usingTrans = rightHand;
                            if (isPlayedSound == false)
                            {
                                EventBus.TriggerEvent(this, new GameStateEvent.GettingTheSoap());
                                isPlayedSound = true;
                            }
                            isInHand = true;
                        }

                        offset = (usingTrans.position - col.transform.position) + (offsetVector - transform.position);
                        transform.position = col.transform.position - offset;
                        isHeld = true;
                        isOnPlace = false;
                        holdingHand = col.gameObject;
                        transform.SetParent(holdingHand.transform);
                        transform.localEulerAngles = new Vector3(0, 0, -90f);
                        col.GetComponent<TestingGrippingHand>().HoldObject();
                        canBeReturnedToSoapHolder = false;
                        StartCoroutine(BanSoapFromBeingReturned());
                    }
                
            }

            else if (isHeld == true && isItPressed == true && col.gameObject.name == "soap_holder" && !isOnPlace && canBeReturnedToSoapHolder)
            {
                transform.parent = null;
                transformer.position = startPos;
                transformer.rotation = startRot;
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

                foreach (var particleSystem in bubbleParticles)
                {
                    var emitter = particleSystem.emission;
                    emitter.enabled = false;
                }
                particlesEnabled = false;
                isRightConditionsForCleaning = false;
                EventBus.TriggerEvent(this, new GameStateEvent.StopCleaningSelf());
                // EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You stopped cleaning ur self"));
            }
            if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
            {
                //col.GetComponent<Interactions>().enabled = enabled;
                transform.parent = null;
                transformer.position = startPos;
                transformer.rotation = startRot;
                isItPressed = false;
                isHeld = false;
                canPutDown = false;
                isInRange = false;
                isOnPlace = true;

                isInHand = false;
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
