using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewShowerHead : MonoBehaviour {
    private Transform transformer;
    [SerializeField]
    private Quaternion rotationDelta;
    private Rigidbody rigidBody;
    public bool pluggedIn = false;
    bool isItOnSpot = false;
    [SerializeField]
    int count = 0;
    bool isHeld = false;
    Collider colin;
    ObjectInteraction OI;
    [SerializeField]
    AudioSource musicSource;
    [SerializeField]
    AudioClip musicClip;
    bool isMusicPlaying = false;
    void Start ()
    {
        musicSource.clip = musicClip;
        OI = gameObject.GetComponent<ObjectInteraction>();
        transformer = gameObject.GetComponent<Transform>();
        rigidBody = gameObject.GetComponent<Rigidbody>();
    }
	
	// Update is called once per frame
	void Update () {
        if (MiniGameManager.isHeadShowerGameRunning)
        {
            if (isHeld == true)
            {
                rigidBody.isKinematic = true;
                transformer.position = colin.gameObject.transform.position;
            }

            if (isItOnSpot == true)
            {
                OI.rotationFactor = 50f;
                IsTheShowerHeadScrewedOn();
            }
        }
    }
    
    //maybe needs checks if its on the right spot for the sound to work properly
    void IsTheShowerHeadScrewedOn()
    {
        if (MiniGameManager.isHeadShowerGameRunning)
        {
            rotationDelta = transformer.rotation;
            //SOUND OF ROTATING ON
            if (rotationDelta.y > 0.8 || rotationDelta.y < -0.8)
            {
                if (isMusicPlaying == false)
                { 
                    musicSource.Play();
                    isMusicPlaying = true;
                }
                count++;
                if (count > 50)
                {
                    if (pluggedIn == false)
                    {
                        EventBus.TriggerEvent(this, new GameStateEvent.NewShowerHeadScrewedOnEvent());
                        EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Good job. You saved like the whales."));
                    }
                    //SOUND OF ROTATING OFF
                    pluggedIn = true;
                    rigidBody.isKinematic = true;
                    EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
                    musicSource.Stop();
                }
            }
        }
    }

    void OnTriggerEnter(Collider col)
    {
        if (MiniGameManager.isHeadShowerGameRunning)
        {
            if (col.gameObject.name == "Controller (left)" && isItOnSpot == false ||
            col.gameObject.name == "Controller (right)" && isItOnSpot == false)
            {
                if (isHeld == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.NewShowePickedUpEvent());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Now place it on the old shower head spot."));
                }
                colin = col;
                isHeld = true;


                //rigidBody.useGravity = true;
                Debug.Log("Shine new thingy");//highlight
            }

            if (col.gameObject.name == "shower_socket")
            {
                if (isItOnSpot == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.NewShowerHeadRightPlaceEvent());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Now turn it around."));
                }

                isHeld = false;
                isItOnSpot = true;
                rigidBody.isKinematic = false;


            }
        }
    }

}
