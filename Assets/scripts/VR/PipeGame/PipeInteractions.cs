using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PipeInteractions : MonoBehaviour {
    public GameObject pipeParticle;
    Transform transformer;
    Quaternion rotationDelta;
    [SerializeField]
    private int count;
    Rigidbody rigidBody;

    private bool isFixed = false;
    // Use this for initialization
    void Start () {
        transformer = GetComponent<Transform>();
        rigidBody = GetComponent<Rigidbody>();

    }
	
	// Update is called once per frame
	void Update () {
        IsDoneWithRotating();
    }

    void IsDoneWithRotating()
    {
        rotationDelta = transformer.rotation;

        if (rotationDelta.x > 0.8 || rotationDelta.x < -0.8)
        {
            count++;
            if(count>50)
            {
                if (isFixed == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.APipeIsFixed());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Now fix the rest"));
                }
                rigidBody.isKinematic = true;
                Debug.Log("succesfull rotation");
                isFixed = true;
                pipeParticle.SetActive(false);
            }

        }
    }
}
