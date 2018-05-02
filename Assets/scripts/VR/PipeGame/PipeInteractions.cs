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

    public bool isFixed;
    [SerializeField]
    private GameObject pipeGameManagerObject;
    private PipeWin pipeWin;
    // Use this for initialization
    void Start () {
        isFixed = false;
        transformer = GetComponent<Transform>();
        rigidBody = GetComponent<Rigidbody>();
        pipeWin = pipeGameManagerObject.GetComponent<PipeWin>();

        rigidBody.isKinematic = true;

    }

    // Update is called once per frame
    void Update () {
        IsDoneWithRotating();
    }

    void IsDoneWithRotating()
    {
        //SOUND OF DRIPPING WATER 
       
        if (MiniGameManager.isPipeGameRunning)
        {
           
            rotationDelta = transformer.rotation;

            if (rotationDelta.x > 0.8 || rotationDelta.x < -0.8)
            {
                count++;
                if (count > 50)
                {
                    if (isFixed == false && pipeWin.isGameWon==false)
                    {
                        EventBus.TriggerEvent(this, new GameStateEvent.APipeIsFixed());
                    }

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
