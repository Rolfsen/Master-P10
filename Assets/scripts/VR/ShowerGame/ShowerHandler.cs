using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShowerHandler : MonoBehaviour {

    public GameObject sinkParticle;
   // Transform transform;
    Quaternion rotationDelta;
    [SerializeField]
    private int count;
    private bool isFixed = false;
    private bool isWaterRunning = false;
    private bool ControllerInRange = false;
    private bool isTriggerPressed = false;
    private Collider colin;
    private Transform simpleInteractionsTransform;
    private Quaternion handleRotation;
    // private Interactions interactionsy;
    SimpleInteractions simpleInteractions;
    // Use this for initialization
    void Start()
    {
       

    }

    // Update is called once per frame
    void Update()
    {
        //RotatingRigidBody();
        //RotateObject();
        //IsDoneWithRotating();
    }

    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {

            colin = col;
            ControllerInRange = true;
            //Debug.Log("Stop shining");//highlight
            //gameObject.transform.parent.position = new Vector3(0f, 0f, 0f);
            //col.gameObject.GetComponent<Interactions>().enabled = false;
            simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
            simpleInteractionsTransform = col.gameObject.GetComponent<Transform>();
            handleRotation = simpleInteractionsTransform.rotation;
        }
    }
    private void OnTriggerStay(Collider col)
    {
        simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
        simpleInteractionsTransform = col.gameObject.GetComponent<Transform>();
        handleRotation = simpleInteractionsTransform.rotation;
        //col.gameObject.GetComponent<Interactions>().enabled = false;
        if (simpleInteractions.isPressed)
        {
            isTriggerPressed = true;
        }

        else
        {
            isTriggerPressed = false;
        }
    }

    private float speed = 200f;
    private void RotatingRigidBody()
    {
        
            if (isTriggerPressed)
            {
                if (isWaterRunning == false)
                //if (isWaterRunning == false && transform.rotation.x >= -180f)
                {
                    // Debug.Log("never been here before");
                    //transformer.rotation = new Quaternion(transformer.rotation.x+1f, transformer.rotation.y, transformer.rotation.z, transformer.rotation.w);
                    //Old!  // transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.Euler(180, 0, 0), speed * Time.deltaTime);

                    //base.transform.rotation = new Quaternion(base.transform.rotation.x + simpleInteractionsTransform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);
                    base.transform.rotation = new Quaternion(simpleInteractionsTransform.rotation.x + base.transform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);

                    //transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.Euler(transform.rotation.x+simpleInteractionsTransform.rotation.x*100, 0, 0), speed * Time.deltaTime);
                    //Debug.Log(simpleInteractionsTransform.rotation.x);
                }

                /* transform.rotation = new Quaternion(transform.rotation.x + simpleInteractionsTransform.rotation.x, 
                       transform.rotation.y + simpleInteractionsTransform.rotation.y, 
                       transform.rotation.z + simpleInteractionsTransform.rotation.z, 
                       transform.rotation.w + simpleInteractionsTransform.rotation.w);

                   if (base.transform.rotation.x == -180)
                    {
                        Debug.Log("water runs now");

                        sinkParticle.SetActive(true);
                        isWaterRunning = true;
                    }

                   if (transform.rotation.x <= -180f && isWaterRunning == true)
                {
                    Debug.Log("voda nqma ama rabotq");
                    base.transform.rotation = Quaternion.RotateTowards(base.transform.rotation, Quaternion.Euler(0, 0, 0), speed * Time.deltaTime);

                    if (transform.rotation.x == 0)
                    {

                        Debug.Log("voda nqma ama rabotq");

                        sinkParticle.SetActive(false);
                        isWaterRunning = false;
                    }
                }


                 */

              

            }
        }
    private void RotateObject()
    {
        if (isTriggerPressed)
        {
            if (isWaterRunning == false)
                //if (isWaterRunning == false && transform.rotation.x >= -180f)
            {
                // Debug.Log("never been here before");
                //transformer.rotation = new Quaternion(transformer.rotation.x+1f, transformer.rotation.y, transformer.rotation.z, transformer.rotation.w);
                //Old!  // transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.Euler(180, 0, 0), speed * Time.deltaTime);

                //base.transform.rotation = new Quaternion(base.transform.rotation.x + simpleInteractionsTransform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);
                base.transform.rotation  = new Quaternion(simpleInteractionsTransform.rotation.x + base.transform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);
                
                //transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.Euler(transform.rotation.x+simpleInteractionsTransform.rotation.x*100, 0, 0), speed * Time.deltaTime);
                //Debug.Log(simpleInteractionsTransform.rotation.x);
            }

            /* transform.rotation = new Quaternion(transform.rotation.x + simpleInteractionsTransform.rotation.x, 
                   transform.rotation.y + simpleInteractionsTransform.rotation.y, 
                   transform.rotation.z + simpleInteractionsTransform.rotation.z, 
                   transform.rotation.w + simpleInteractionsTransform.rotation.w);
                   
               if (base.transform.rotation.x == -180)
                {
                    Debug.Log("water runs now");

                    sinkParticle.SetActive(true);
                    isWaterRunning = true;
                }
                
               if (transform.rotation.x <= -180f && isWaterRunning == true)
            {
                Debug.Log("voda nqma ama rabotq");
                base.transform.rotation = Quaternion.RotateTowards(base.transform.rotation, Quaternion.Euler(0, 0, 0), speed * Time.deltaTime);

                if (transform.rotation.x == 0)
                {

                    Debug.Log("voda nqma ama rabotq");
                    
                    sinkParticle.SetActive(false);
                    isWaterRunning = false;
                }
            }
             
             
             */

            else if(isTriggerPressed == false)
            {
                base.transform.rotation = new Quaternion(base.transform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);
            }

        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {

            colin = col;
            ControllerInRange = false;
          
            //base.transform.rotation = new Quaternion(base.transform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);
            isTriggerPressed = false;
            col.gameObject.GetComponent<Interactions>().enabled = true;
            Debug.Log("Stop shining");//highlight
            //gameObject.transform.parent.position = new Vector3(0f, 0f, 0f);
        }
    }
}

/*
  // Update is called once per frame
    void Update()
    {
        //RotatingRigidBody();
        //RotateObject();
        //IsDoneWithRotating();
    }

    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
        {

            colin = col;
            ControllerInRange = true;
            //Debug.Log("Stop shining");//highlight
            //gameObject.transform.parent.position = new Vector3(0f, 0f, 0f);
            //col.gameObject.GetComponent<Interactions>().enabled = false;
            simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
            simpleInteractionsTransform = col.gameObject.GetComponent<Transform>();
            handleRotation = simpleInteractionsTransform.rotation;
        }
    }
    private void OnTriggerStay(Collider col)
    {
        simpleInteractions = col.gameObject.GetComponent<SimpleInteractions>();
        simpleInteractionsTransform = col.gameObject.GetComponent<Transform>();
        handleRotation = simpleInteractionsTransform.rotation;
        //col.gameObject.GetComponent<Interactions>().enabled = false;
        if (simpleInteractions.isPressed)
        {
            isTriggerPressed = true;
        }

        else
        {
            isTriggerPressed = false;
        }
    }

    private float speed = 200f;
    private void RotatingRigidBody()
    {
        
            if (isTriggerPressed)
            {
                if (isWaterRunning == false)
                //if (isWaterRunning == false && transform.rotation.x >= -180f)
                {
                    // Debug.Log("never been here before");
                    //transformer.rotation = new Quaternion(transformer.rotation.x+1f, transformer.rotation.y, transformer.rotation.z, transformer.rotation.w);
                    //Old!  // transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.Euler(180, 0, 0), speed * Time.deltaTime);

                    //base.transform.rotation = new Quaternion(base.transform.rotation.x + simpleInteractionsTransform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);
                    base.transform.rotation = new Quaternion(simpleInteractionsTransform.rotation.x + base.transform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);

                    //transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.Euler(transform.rotation.x+simpleInteractionsTransform.rotation.x*100, 0, 0), speed * Time.deltaTime);
                    //Debug.Log(simpleInteractionsTransform.rotation.x);
                }

                 transform.rotation = new Quaternion(transform.rotation.x + simpleInteractionsTransform.rotation.x, 
                       transform.rotation.y + simpleInteractionsTransform.rotation.y, 
                       transform.rotation.z + simpleInteractionsTransform.rotation.z, 
                       transform.rotation.w + simpleInteractionsTransform.rotation.w);

                   if (base.transform.rotation.x == -180)
                    {
                        Debug.Log("water runs now");

                        sinkParticle.SetActive(true);
                        isWaterRunning = true;
                    }

                   if (transform.rotation.x <= -180f && isWaterRunning == true)
                {
                    Debug.Log("voda nqma ama rabotq");
                    base.transform.rotation = Quaternion.RotateTowards(base.transform.rotation, Quaternion.Euler(0, 0, 0), speed * Time.deltaTime);

                    if (transform.rotation.x == 0)
                    {

                        Debug.Log("voda nqma ama rabotq");

                        sinkParticle.SetActive(false);
                        isWaterRunning = false;
                    }
                }


                 

              

            }
        }
    private void RotateObject()
{
    if (isTriggerPressed)
    {
        if (isWaterRunning == false)
        //if (isWaterRunning == false && transform.rotation.x >= -180f)
        {
            // Debug.Log("never been here before");
            //transformer.rotation = new Quaternion(transformer.rotation.x+1f, transformer.rotation.y, transformer.rotation.z, transformer.rotation.w);
            //Old!  // transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.Euler(180, 0, 0), speed * Time.deltaTime);

            //base.transform.rotation = new Quaternion(base.transform.rotation.x + simpleInteractionsTransform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);
            base.transform.rotation = new Quaternion(simpleInteractionsTransform.rotation.x + base.transform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);

            //transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.Euler(transform.rotation.x+simpleInteractionsTransform.rotation.x*100, 0, 0), speed * Time.deltaTime);
            //Debug.Log(simpleInteractionsTransform.rotation.x);
        }

         transform.rotation = new Quaternion(transform.rotation.x + simpleInteractionsTransform.rotation.x, 
               transform.rotation.y + simpleInteractionsTransform.rotation.y, 
               transform.rotation.z + simpleInteractionsTransform.rotation.z, 
               transform.rotation.w + simpleInteractionsTransform.rotation.w);

           if (base.transform.rotation.x == -180)
            {
                Debug.Log("water runs now");

                sinkParticle.SetActive(true);
                isWaterRunning = true;
            }

           if (transform.rotation.x <= -180f && isWaterRunning == true)
        {
            Debug.Log("voda nqma ama rabotq");
            base.transform.rotation = Quaternion.RotateTowards(base.transform.rotation, Quaternion.Euler(0, 0, 0), speed * Time.deltaTime);

            if (transform.rotation.x == 0)
            {

                Debug.Log("voda nqma ama rabotq");

                sinkParticle.SetActive(false);
                isWaterRunning = false;
            }
        }


         

        else if (isTriggerPressed == false)
        {
            base.transform.rotation = new Quaternion(base.transform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);
        }

    }
}

private void OnTriggerExit(Collider col)
{
    if (col.gameObject.name == "Controller (left)" || col.gameObject.name == "Controller (right)")
    {

        colin = col;
        ControllerInRange = false;

        //base.transform.rotation = new Quaternion(base.transform.rotation.x, base.transform.rotation.y, base.transform.rotation.z, base.transform.rotation.w);
        isTriggerPressed = false;
        col.gameObject.GetComponent<Interactions>().enabled = true;
        Debug.Log("Stop shining");//highlight
                                  //gameObject.transform.parent.position = new Vector3(0f, 0f, 0f);
    }
}
     */