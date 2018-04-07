using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PipeInteraction2 : MonoBehaviour {

    public GameObject pipeParticle;
    Transform transformer;
    Quaternion rotationDelta;
    [SerializeField]
    private int count;
    private bool isFixed = false;
    // Use this for initialization
    void Start()
    {
        transformer = GetComponent<Transform>();
    }

    // Update is called once per frame
    void Update()
    {
        IsDoneWithRotating();
    }

    void IsDoneWithRotating()
    {
        rotationDelta = transformer.rotation;

        if (rotationDelta.y > 0.8 || rotationDelta.y < -0.8)
        {
            count++;
            if (count > 50)
            {
                if (isFixed == false)
                { 
                    EventBus.TriggerEvent(this, new GameStateEvent.APipeIsFixed());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Now fix the rest"));
                }
                Debug.Log("succesfull rotation");
                isFixed = true;
                pipeParticle.SetActive(false);
            }

        }
    }
}


