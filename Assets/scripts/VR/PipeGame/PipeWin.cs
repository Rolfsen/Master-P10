using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PipeWin : MonoBehaviour {
   
    [SerializeField]
    PipeInteractions pipe1,pipe3, pipe5;
    [SerializeField]
    PipeInteraction2 pipe2, pipe4, pipe6;
    
    public int count;
    [SerializeField]
    AudioClip musicClip;
    [SerializeField]
    AudioSource audioSource;
    void Start () {
        
            
            audioSource.clip = musicClip;
            audioSource.Play();
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
    bool pip1, pip2, pip3, pip4;
    void WinConditionPipeGame()
    {
        if (pipe1.isFixed == true)
        {
            pip1 = true;
            //pipe1.gameObject.GetComponent<PipeInteractions>().enabled = false;
        }
        if (pipe2.isFixed == true )
        {
            pip2 = true;
            //pipe2.gameObject.GetComponent<PipeInteraction2>().enabled = false;
        }
        if (pipe3.isFixed == true )
        {
            pip3 = true;
            //pipe3.gameObject.GetComponent<PipeInteractions>().enabled = false;
        }
        if (pipe4.isFixed == true)
        {
            pip4 = true;
            //pipe4.gameObject.GetComponent<PipeInteraction2>().enabled = false;
            
        }

        if (pip1 && pip2 && pip3 && pip4)
        {
            audioSource.Stop();
            Debug.Log("WIN THE GAME");
            EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
            gameObject.GetComponent<PipeWin>().enabled = false;
        }
        
    }
}
