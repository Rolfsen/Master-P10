using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HandleInteractions : MonoBehaviour {

    public GameObject sinkParticle;
    Transform transformer;
    Quaternion rotationDelta;
    [SerializeField]
    private int count;
    private bool isFixed = false;
    private bool isWaterRunning = false;
    private bool ControllerInRange = false;
    private bool isTriggerPressed = false;
    private float speed = 20f;
    // private Interactions interactionsy;
    SimpleInteractions interactionsy;
    // Use this for initialization
    void Start()
    {
        transformer = GetComponent<Transform>();
        
    }

    // Update is called once per frame
    void Update()
    {
        RotateObject();
        //IsDoneWithRotating();
    }
    
    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            
           // colin = col;
            ControllerInRange = true;
            //Debug.Log("Stop shining");//highlight
            //gameObject.transform.parent.position = new Vector3(0f, 0f, 0f);
            col.gameObject.GetComponent<Interactions>().enabled = false;
            interactionsy = col.gameObject.GetComponent<SimpleInteractions>();

        }
    }
    private void OnTriggerStay(Collider col)
    {
            interactionsy = col.gameObject.GetComponent<SimpleInteractions>();
            if (interactionsy.isPressed)
            {
                isTriggerPressed = true;
            }

            else
            {
                isTriggerPressed = false;
            }
    }
    private void OnTriggerExit(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {

            //colin = col;
            ControllerInRange = false;
            Debug.Log("Stop shining");//highlight
            //gameObject.transform.parent.position = new Vector3(0f, 0f, 0f);
        }
    }
   
    private void RotateObject()
    {
        if (isTriggerPressed)
        {
            if(isWaterRunning==false && transformer.rotation.x >= -180f)
            {
               // Debug.Log("never been here before");
                //transformer.rotation = new Quaternion(transformer.rotation.x+1f, transformer.rotation.y, transformer.rotation.z, transformer.rotation.w);
                transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.Euler(180, 0, 0), speed * Time.deltaTime);

                if (transformer.rotation.x == -180)
                {
                    Debug.Log("water runs now");
                    
                    sinkParticle.SetActive(true);
                    isWaterRunning = true;
                }
            }
            //Debug.Log("ROTATION IS ACTIVE");
            


            if(transformer.rotation.x >= 0f && isWaterRunning == true)
            {
                Debug.Log("voda nqma ama rabotq");
                transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.Euler(0, 0, 0), speed * Time.deltaTime);

                if (transformer.rotation.x == 0)
                {

                    Debug.Log("voda nqma ama rabotq");
                    isWaterRunning = false;
                    sinkParticle.SetActive(false);
                }
            }
        }
    }

   

    void IsDoneWithRotating()
    {
        rotationDelta = transformer.rotation;

        if (rotationDelta.x > 0.8 && isWaterRunning == false && ControllerInRange == true
            || rotationDelta.x < -0.8 && isWaterRunning==false && ControllerInRange == true)
        {
            count++;
            if (count > 10)
            {
                if (isFixed == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.TheSinkIsOn());
                }
                Debug.Log("succesfull rotation");
                isFixed = true;
                isWaterRunning = true;
                sinkParticle.SetActive(true);
                count = 0;
            }

        }

        if (rotationDelta.x > 0.8 && isWaterRunning == true && ControllerInRange == true 
            || rotationDelta.x < -0.8 && isWaterRunning == true && ControllerInRange == true)
        {
            count++;
            if (count > 10)
            {
                if (isFixed == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.TheSinkIsOff());
                }
                Debug.Log("succesfull rotation");
                isFixed = true;
                isWaterRunning = false;
                sinkParticle.SetActive(false);
                count = 0;
            }

        }


    }
}

/*
 
      
    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {
            interactionsy = col.gameObject.GetComponent<Interactions>();
            colin = col;
            ControllerInRange = true;
            //Debug.Log("Stop shining");//highlight
            //gameObject.transform.parent.position = new Vector3(0f, 0f, 0f);
            col.gameObject.GetComponent<Interactions>().enabled = false;
           
            
        }
    }
    private void OnTriggerStay(Collider col)
    {
            interactionsy = col.gameObject.GetComponent<Interactions>();
            if (interactionsy.isPressed)
            {
                isTriggerPressed = true;
            }

            else
            {
                isTriggerPressed = false;
            }
    }
    
    
    private void RotateObject()
    {
        if (isTriggerPressed)
        {
            if(isWaterRunning==false && transformer.rotation.x <180f)
            { 
                 transformer.rotation = new Quaternion(transformer.rotation.x + 1f, 0f, 0f, 0f);
                Debug.Log("i am moving it, 1");
            }
            Debug.Log("ROTATION IS ACTIVE");
            if (transformer.rotation.x > 180f && isWaterRunning == false)
            {
                Debug.Log("water runs now");
                isWaterRunning = true;
                sinkParticle.SetActive(true);
            }


            if(transformer.rotation.x >= 0f && isWaterRunning == true)
            {
                Debug.Log("voda nqma ama rabotq");
                transformer.rotation = new Quaternion(transformer.rotation.x - 1f, 0f, 0f, 0f);

                if (transformer.rotation.x <= 0)
                {

                    isWaterRunning = false;
                    sinkParticle.SetActive(false);
                }
            }
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {

            colin = col;
            ControllerInRange = false;
            Debug.Log("Stop shining");//highlight
            //gameObject.transform.parent.position = new Vector3(0f, 0f, 0f);
        }
    }

    void IsDoneWithRotating()
    {
        rotationDelta = transformer.rotation;

        if (rotationDelta.x > 0.8 && isWaterRunning == false && ControllerInRange == true
            || rotationDelta.x < -0.8 && isWaterRunning==false && ControllerInRange == true)
        {
            count++;
            if (count > 10)
            {
                if (isFixed == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.TheSinkIsOn());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("the water is on"));
                }
                Debug.Log("succesfull rotation");
                isFixed = true;
                isWaterRunning = true;
                sinkParticle.SetActive(true);
                count = 0;
            }

        }

        if (rotationDelta.x > 0.8 && isWaterRunning == true && ControllerInRange == true 
            || rotationDelta.x < -0.8 && isWaterRunning == true && ControllerInRange == true)
        {
            count++;
            if (count > 10)
            {
                if (isFixed == false)
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.TheSinkIsOff());
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("the water is on"));
                }
                Debug.Log("succesfull rotation");
                isFixed = true;
                isWaterRunning = false;
                sinkParticle.SetActive(false);
                count = 0;
            }

        }


    }
     */
