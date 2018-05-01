using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MopCleaning : MonoBehaviour
{
    [SerializeField]
    int count = 0;
    Collider colin;
    bool correctSurface = false;
    int mopCleanMeter = 0;
    bool isCleaningNowSound = false;
    bool isMopDirtySound = false;
    bool isMopCleanNowSound = false;
    [SerializeField]
    GameObject rodObject;
    bool isMopDirty = false;
    MopHandler mopHandler;
    [SerializeField]
    AudioSource musicSource;
    [SerializeField]
    AudioClip musicClip;
    [SerializeField]
    int mopCleanCount;
    [SerializeField]
    int howLongToClean=100;
    bool isMusicStarted;
   
    // Use this for initialization
    void Start()
    {
        mopHandler = rodObject.GetComponent<MopHandler>();
        musicSource.clip = musicClip;
        isMusicStarted = false;
    }

    // Update is called once per frame
    void Update()
    {
        IsOnRightSurface();

        IsMopDirty();

    }

    bool isItOn = false;


    void IsOnRightSurface()
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (isMopDirty == false)
            {
                if (correctSurface == true && mopHandler.isControllerPressed == true)
                {
                    if (!isMusicStarted)
                    {
                        musicSource.Play();
                        isMusicStarted = true;
                    }
                    if (isCleaningNowSound == false)
                    {
                        //Sound of being on
                        EventBus.TriggerEvent(this, new GameStateEvent.MopIsCleaning());
                        //EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You are cleaning a spot"));
                        isCleaningNowSound = true;
                    }
                    count++;

                    if (count > howLongToClean)
                    {
                        //SOUND OF BEING COMPLETE
                        mopCleanMeter++;
                        Debug.Log(mopCleanMeter);
                        colin.gameObject.SetActive(false);
                        correctSurface = false;
                        EventBus.TriggerEvent(this, new GameStateEvent.CleaningSpotClear());
                        EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("The spot is clear"));
                        isCleaningNowSound = false;
                        count = 0;

                        musicSource.Stop();
                        isMusicStarted = false;
                    }
                }
                else if (correctSurface && !mopHandler.isControllerPressed)
                {
                    musicSource.Stop();

                    isMusicStarted = false;
                }
            }
        }
    }

    void IsMopDirty()
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (mopCleanMeter > mopCleanCount)
            {

                if (isMopDirtySound == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.MopIsDirty());
                    //SOUND OF MOP BEING DIRTY
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("The mop is dirty now"));
                    isMopDirtySound = true;
                }
                isMopDirty = true;
            }
        }
    }
    private void OnTriggerStay(Collider col)
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (col.gameObject.tag == "Dust" && mopCleanMeter <= mopCleanCount || col.gameObject.tag == "Liquid" && mopCleanMeter <= mopCleanCount)
            {
                howLongToClean = 100;
                correctSurface = true;
                colin = col;
            }
           else if(col.gameObject.tag == "HardLiquid" && mopCleanMeter <= mopCleanCount)
            {
                howLongToClean = 200;
                correctSurface = true;
                colin = col;

            }
        }
    }
    private void OnTriggerEnter(Collider col)
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            
            if (col.gameObject.tag == "Bucket" && isMopDirty )
            {
                EventBus.TriggerEvent(this, new GameStateEvent.MopIsCleanNow());
                //SOUND OF HAVING A CLEAN MOP
                EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("The mop is clean now"));
                isMopDirty = false;
                isMopDirtySound = false;
                mopCleanMeter = 0;
                //PUT THE WATER HERE
                EventBus.TriggerEvent(this, new MinigameEvents.SingleExecuteWaterUsageEvent(4)); //SMT SMT
                                                                                                 //EventBus.TriggerEvent(this, new MinigameEvents.ToggleWaterEvent()); when water is turned on

                Debug.Log("ur mop is clean now");
            }
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            correctSurface = false;
            if (col.gameObject.tag == "Dust" || col.gameObject.tag == "Liquid")
            {
                colin = null;
                musicSource.Stop();
                isMusicStarted = false;//maybe
            }
        }
    }

    void IsMopOn()
    {
        if (MiniGameManager.isCleaningGameRunning)
        {
            if (mopHandler.isControllerPressed == true)
            {


                Debug.Log("starting music");
                //EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("m"));

                isItOn = true;
            }
            else if (isItOn == true && mopHandler.isControllerPressed == false)
            {
                //Sound of being on cleaned
                isItOn = false;
                Debug.Log("it stopping");
                //EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("oomm"));
            }
        }
    }

}

