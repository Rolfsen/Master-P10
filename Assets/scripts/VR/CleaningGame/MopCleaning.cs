using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MopCleaning : MonoBehaviour {
    [SerializeField]
    int count = 0;
    Collider colin;
    bool correctSurface = false;
    int mopCleanMeter=0; 
    
    [SerializeField]
    GameObject rodObject;
    bool isMopDirty = false;
    MopHandler mopHandler;
    // Use this for initialization
    void Start () {
        mopHandler = rodObject.GetComponent<MopHandler>();
    }
	
	// Update is called once per frame
	void Update () {
        IsOnRightSurface();
        
        IsMopDirty();
        
    }

    bool isItOn = false;
    void IsMopOn()
    {
        if (mopHandler.isControllerPressed == true)
        {
            //Sound of being on;

            Debug.Log("starting music");
            //EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("m"));

            isItOn = true;
        }
        else if (isItOn == true && mopHandler.isControllerPressed == false)
        {
            isItOn = false;
            Debug.Log("it stopping");
            //EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("oomm"));
        }

    }
    bool isCleaningNowSound = false;
    bool isMopDirtySound = false;
    bool isMopCleanNowSound = false;

    void IsOnRightSurface()
    {
        if (isMopDirty == false)
        {
            if (correctSurface == true && mopHandler.isControllerPressed == true)
            {
                if (isCleaningNowSound == false)
                {

                    EventBus.TriggerEvent(this, new GameStateEvent.MopIsCleaning());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You are cleaning a spot"));
                    isCleaningNowSound = true;
                }
                count++;
              
                if (count > 200)
                {
                    mopCleanMeter++;
                    Debug.Log(mopCleanMeter);
                    colin.gameObject.SetActive(false);
                    correctSurface = false;
                    EventBus.TriggerEvent(this, new GameStateEvent.MopSpotClear());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("The spot is clear"));
                    isCleaningNowSound = false;
                    count = 0;
                }
            }
        }
    }
    
    void IsMopDirty()
    {
        if(mopCleanMeter>4)
        {
            
            if (isMopDirtySound == false)
            {
                EventBus.TriggerEvent(this, new GameStateEvent.MopIsDirty());

                EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("The mop is dirty now"));
                isMopDirtySound = true;
            }
            isMopDirty = true;
        }
    }
    private void OnTriggerStay(Collider col)
    {
        if(col.gameObject.tag == "Dust" && mopCleanMeter <= 5 || col.gameObject.tag == "Liquid" && mopCleanMeter <= 5)
        {
            correctSurface = true;
           // Debug.Log("i am touching something");
            colin = col;
        }
    }
    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "Dust" && mopCleanMeter <= 5 || col.gameObject.tag == "Liquid" && mopCleanMeter <= 5)
        {
            correctSurface = true;
            colin = col;
        }
       else if(col.gameObject.tag == "Bucket")
        {
            EventBus.TriggerEvent(this, new GameStateEvent.MopIsCleanNow());

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
    
    private void OnTriggerExit(Collider col)
    {
        correctSurface = false;
        if(col.gameObject.tag == "Dust" || col.gameObject.tag == "Liquid")
        { 
            colin = null;

        }
        
    }
}
