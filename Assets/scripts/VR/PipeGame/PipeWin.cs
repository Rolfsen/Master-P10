using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PipeWin : MonoBehaviour {
   [SerializeField]
    GameObject pipeObject1, pipeObject2, pipeObject3, pipeObject4;
    // Use this for initialization
    PipeInteractions pipe1,pipe3;
    PipeInteraction2 pipe2, pipe4;
    public int count;
    
    void Start () {
        
            pipe1 = pipeObject1.GetComponent<PipeInteractions>();
            pipe2 = pipeObject2.GetComponent<PipeInteraction2>();
            pipe3 = pipeObject3.GetComponent<PipeInteractions>();
            pipe4 = pipeObject4.GetComponent<PipeInteraction2>();
        
    }
	
	// Update is called once per frame
	void Update () {
        if (MiniGameManager.isPipeGameRunning)
        {
            WinConditionPipeGame();
        }
    }

    void WinConditionPipeGame()
    {
        if (pipe1.isFixed == true)
        {
            count++;
            pipe1 = null;
        }
        else if (pipe2.isFixed == true )
        {
            count++;
            pipe2 = null;
        }
        else if (pipe3.isFixed == true )
        {
            count++;
            pipe3 = null;
        }
        else if (pipe4.isFixed == true)
        {
            count++;
            pipe4 = null;
        }

        if(count == 4)
        {
            EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
        }
        
    }
}
