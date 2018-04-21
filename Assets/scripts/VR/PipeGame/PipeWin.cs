using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PipeWin : MonoBehaviour {
   [SerializeField]
    GameObject pipeObject1, pipeObject2, pipeObject3, pipeObject4;
    // Use this for initialization
    PipeInteraction2 pipe1,pipe3;
    PipeInteractions pipe2, pipe4;
    public int count;
    
    void Start () {
        if (MiniGameManager.isPipeGameRunning)
        {
            pipe1 = pipeObject1.GetComponent<PipeInteraction2>();
            pipe2 = pipeObject2.GetComponent<PipeInteractions>();
            pipe3 = pipeObject3.GetComponent<PipeInteraction2>();
            pipe4 = pipeObject4.GetComponent<PipeInteractions>();
        }
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
        if (pipe2.isFixed == true )
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
        
    }
}
