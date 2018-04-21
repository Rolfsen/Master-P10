using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VacuumCleaning : MonoBehaviour {
    [SerializeField]
    int count = 0;
    Collider colin;
    [SerializeField]
    bool correctSurface = false;
    [SerializeField]
    bool wrongSurface = false;
    [SerializeField]
    GameObject dustObject, vacuumHandle;
    VacuumHandler vacuumHandler;
    [SerializeField]
    int howLongToClean = 200;
    int howLongToCleanDirt = 200;
    [SerializeField]
    bool isCleaningNowSound = false;
    bool isWrongSurfaceSound = false;
    bool isItOn = false;

    // Use this for initialization
    void Start()
    {
        vacuumHandler = vacuumHandle.GetComponent<VacuumHandler>();
    }

    // Update is called once per frame
    void Update()
    {
        IsOnRightSurface();
        IsNotOnRightSurface();
        //IsVacuumOn();
        //Debug.Log(count);

    }
    void IsVacuumOn()
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (vacuumHandler.isControllerPressed == true)
            {
                //Sound of being on;

                Debug.Log("starting music");
                //EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("m"));

                isItOn = true;
            }
            else if (isItOn == true && vacuumHandler.isControllerPressed == false)
            {
                isItOn = false;
                //EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("oomm"));
            }
        }
    }
    void IsOnRightSurface()
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (correctSurface == true && vacuumHandler.isControllerPressed == true)
            {

                if (isCleaningNowSound == false)
                {
                    
                    EventBus.TriggerEvent(this, new GameStateEvent.VacuumCleaningASpot());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You are cleaning a spot"));
                    isCleaningNowSound = true;

                }
                //SOUND OF CLEARING THE SPOT
                count++;
                if (count > howLongToClean)
                {
                    //SOUND OF SPOT CLEAR
                    EventBus.TriggerEvent(this, new GameStateEvent.VacuumSpotIsClear());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("It's clean now"));
                    colin.gameObject.SetActive(false);
                    correctSurface = false;
                    isCleaningNowSound = false;
                    count = 0;
                }
            }
        }
        
    }
    void IsNotOnRightSurface()
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (wrongSurface == true && vacuumHandler.isControllerPressed == true)
            {
                if (isWrongSurfaceSound == true)
                {
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Thats the wrong surface"));
                    isWrongSurfaceSound = false;
                }
                //SOUND OF CLEARING THE WRONG SURFACE
                count++;
                if (count > howLongToCleanDirt)
                {

                    EventBus.TriggerEvent(this, new GameStateEvent.VacuumSpotIsClear());

                    count = 0;
                    Instantiate(dustObject, new Vector3(transform.position.x + Random.Range(-0.5f, 0.5f), 0.142f, transform.position.z + Random.Range(-1.0f, 1.0f)),
                        new Quaternion(transform.rotation.x, transform.rotation.y, transform.rotation.z, transform.rotation.w));

                    // Instantiate(dustObject, new Vector3(transform.position.x + Random.Range(-2.0f, 2.0f), transform.position.y, transform.position.z + Random.Range(-2.0f, 2.0f)), Quaternion.identity);
                    //Instantiate(dustObject, new Vector3(transform.position.x + Random.Range(-2.0f, 2.0f), transform.position.y, transform.position.z + Random.Range(-2.0f, 2.0f)), Quaternion.identity);
                    wrongSurface = false;


                }
            }
        }
    }
    private void OnTriggerStay(Collider col)
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (col.gameObject.tag == "Dust")
            {
                correctSurface = true;
                //Debug.Log("i am touching something");
                colin = col;
            }

            else if (col.gameObject.tag == "Liquid")
            {
                wrongSurface = true;
                colin = col;
            }
            else
            {
                correctSurface = false;
            }
        }
    }
   
    private void OnTriggerEnter(Collider col)
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (col.gameObject.tag == "Dust")
            {
                correctSurface = true;
                colin = col;

            }

            else if (col.gameObject.tag == "Liquid")
            {
                wrongSurface = true;
                colin = col;
                isWrongSurfaceSound = true;
            }
            else
            {
                correctSurface = false;
                wrongSurface = false;
                colin = null;
            }
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (MiniGameManager.isCleaningGameRunning)
        {


            if (col.gameObject.tag == "Dust" || col.gameObject.tag == "Liquid")
            {
                colin = null;
                correctSurface = false;
                wrongSurface = false;
                isWrongSurfaceSound = false;
            }
        }
    }
}
