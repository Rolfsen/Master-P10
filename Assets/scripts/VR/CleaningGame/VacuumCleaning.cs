using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VacuumCleaning : MonoBehaviour
{
    [SerializeField]
    int count = 0;
    Collider colin;
    [SerializeField]
    bool correctSurface = false;
    [SerializeField]
    bool wrongSurface = false;
    [SerializeField]
    GameObject liquidObject, vacuumHandle;
    VacuumHandler vacuumHandler;
    [SerializeField]
    int howLongToClean = 100;
    int howLongToCleanDirt = 200;
    [SerializeField]
    bool isCleaningNowSound = false;
    bool isWrongSurfaceSound = false;
    bool isMusicOn = false;
    [SerializeField]
    AudioSource musicSource;
    [SerializeField]
    AudioClip musicClip;
    bool dirtPlaceNow = false;
    bool isMusicStarted;
    // Use this for initialization
    void Start()
    {
        musicSource.clip = musicClip;
        isMusicStarted = false;
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

                isMusicOn = true;
            }
            else if (isMusicOn == true && vacuumHandler.isControllerPressed == false)
            {
                isMusicOn = false;
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
                if(!isMusicStarted)
                {
                    musicSource.Play();
                    isMusicStarted = true;
                }
                if (isCleaningNowSound == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.VacuumCleaningASpot());
                    isCleaningNowSound = true;
                }
                //SOUND OF CLEARING THE SPOT
                count++;
                if (count > howLongToClean)
                {
                    //SOUND OF SPOT CLEAR
                    colin.gameObject.SetActive(false);
                    EventBus.TriggerEvent(this, new GameStateEvent.CleaningSpotClear());
                    correctSurface = false;
                    isCleaningNowSound = false;
                    count = 0;
                    musicSource.Stop();
                    isMusicStarted = false;
                }
            }
            else if (correctSurface && !vacuumHandler.isControllerPressed)
            {
                musicSource.Stop();

                isMusicStarted = false;
            }
        }

    }
    void IsNotOnRightSurface()
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (wrongSurface == true && vacuumHandler.isControllerPressed == true)
            {
                if (!isMusicStarted)
                {
                    musicSource.Play();
                    isMusicStarted = true;
                }
                //SOUND OF CLEARING THE WRONG SURFACE
                count++;
                if (count > howLongToClean)
                {
                    Debug.Log("its harder now");
                    EventBus.TriggerEvent(this, new GameStateEvent.CleaningSpotClear());
                    dirtPlaceNow = true;
                    count = 0;
                    wrongSurface = false;
                    musicSource.Stop();

                }
            }
        }
    }

    [SerializeField]
    Material hardLiquid;

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
                if(dirtPlaceNow)
                {
                    col.GetComponent<Renderer>().material = hardLiquid;
                    col.gameObject.tag = "HardLiquid";
                    dirtPlaceNow = false;
                }
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
                if (dirtPlaceNow)
                {
                    col.GetComponent<Renderer>().material = hardLiquid;
                    col.gameObject.tag = "HardLiquid";
                    dirtPlaceNow = false;
                }
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


            if (col.gameObject.tag == "Dust" || col.gameObject.tag == "Liquid" || col.gameObject.tag == "HardLiquid")
            {
                colin = null;
                correctSurface = false;
                wrongSurface = false;
                isWrongSurfaceSound = false;
                musicSource.Stop();

                isMusicStarted = false;//maybe
            }
        }
    }
}
