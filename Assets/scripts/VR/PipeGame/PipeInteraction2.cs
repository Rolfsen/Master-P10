using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PipeInteraction2 : MonoBehaviour {

    public GameObject pipeParticle;
    Transform transformer;
    Quaternion rotationDelta;
    [SerializeField]
    private int count;
    [HideInInspector]
    public bool isFixed;
    [SerializeField]
    private GameObject pipeGameManagerObject;
    private PipeWin pipeWin;
    Rigidbody rigidBody;

    // Use this for initialization
    void Start()
    {
        transformer = GetComponent<Transform>();
        pipeWin = pipeGameManagerObject.GetComponent<PipeWin>();
        rigidBody = GetComponent<Rigidbody>();
        isFixed = false;
    }

    // Update is called once per frame
    void Update()
    {
        IsDoneWithRotating();
    }

    void IsDoneWithRotating()
    {
       //SOUND OF DRIPPING WATER 

        if (MiniGameManager.isPipeGameRunning)
        {
            rotationDelta = transformer.rotation;

            if (rotationDelta.y > 0.8 || rotationDelta.y < -0.8)
            {
                count++;
                if (count > 50)
                {
                    if (isFixed == false && pipeWin.count <= 3)
                    {
                        EventBus.TriggerEvent(this, new GameStateEvent.APipeIsFixed());
                        EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Now fix the rest"));
                    }
                    else if (isFixed == false && pipeWin.count == 4) //FINAL WIN EVENT MAYBE CHANGE IT TO pipewin
                    {
                        EventBus.TriggerEvent(this, new GameStateEvent.APipeIsFixed());
                        EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You finished the game"));
                    }
                    Debug.Log("succesfull rotation");
                    rigidBody.isKinematic = true;
                    isFixed = true;
                    pipeParticle.SetActive(false);
                }

            }
        }
    }



    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "Wrench")
        {
            rigidBody.isKinematic = false;
        }

    }

    private void OnTriggerExit(Collider col)
    {
        if (col.gameObject.tag == "Wrench")
        {
            rigidBody.isKinematic = true;
        }

    }

}


