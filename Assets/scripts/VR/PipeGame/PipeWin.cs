using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PipeWin : MonoBehaviour {
   
    [SerializeField]
    public PipeInteractions pipe1,pipe3, pipe5;
    [SerializeField]
    public PipeInteraction2 pipe2, pipe4, pipe6;

    [SerializeField]
    List<string> pipeLeft;

    public int count;
    [SerializeField]
    AudioClip musicClip;
    [SerializeField]
    AudioSource audioSource;
    public bool isGameWon = false;
    bool pip1, pip2, pip3, pip4;

    void Start () {
        
            
            audioSource.clip = musicClip;
        if (MiniGameManager.isPipeGameRunning)
        {
            audioSource.Play();
        }
        pip1 = false;
        pip2 = false;
        pip3 = false;
        pip4 = false;
    }
	
	// Update is called once per frame
	void Update () {
        if (MiniGameManager.isPipeGameRunning)
        {
            WinConditionPipeGame();
        }
        
    }

    bool playOnce1 = false;
    bool playOnce2 = false;
    bool playOnce3 = false;
    bool playOnce4 = false;


    void UpdatePipe ()
    {
        EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(pipeLeft[count]));
        count++;
    }

    void WinConditionPipeGame()
    {
        if (pipe1.isFixed == true && !playOnce1)
        {
            pip1 = true;
            playOnce1 = true;

            UpdatePipe();

            //pipe1.gameObject.GetComponent<PipeInteractions>().enabled = false;
        }
        if (pipe2.isFixed == true && !playOnce2)
        {
            EventBus.TriggerEvent(this, new GamePlayEvent.FixedABolt());
            pip2 = true;
            playOnce2 = true;
            UpdatePipe();
            //pipe2.gameObject.GetComponent<PipeInteraction2>().enabled = false;
        }
        if (pipe3.isFixed == true && !playOnce3)
        {
            EventBus.TriggerEvent(this, new GamePlayEvent.FixedABolt());
            pip3 = true;
            playOnce3 = true;
            UpdatePipe();
            //pipe3.gameObject.GetComponent<PipeInteractions>().enabled = false;
        }
        if (pipe4.isFixed == true && !playOnce4)
        {
            EventBus.TriggerEvent(this, new GamePlayEvent.FixedABolt());
            pip4 = true;
            playOnce4 = true;
            UpdatePipe();
            //pipe4.gameObject.GetComponent<PipeInteraction2>().enabled = false;
        }

        if (pip1 && pip2 && pip3 && pip4)
        {
            isGameWon = true;
            audioSource.Stop();
            Debug.Log("WIN THE GAME");
            EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
          //  EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Good job, you fixed the leakage."));

            gameObject.GetComponent<PipeWin>().enabled = false;
        }
        
    }
}
