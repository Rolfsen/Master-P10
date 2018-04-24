using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectInteraction : MonoBehaviour {
    public Rigidbody rigidBody;

    private bool isInteractedWith;
    private Interactions attachedJoystick;
    [SerializeField]
    private Transform interactionPoint;
    
    private Vector3 posDelta;
    public float velocityFactor = 400f;
    public float rotationFactor = 400f;
    [SerializeField]
    private Quaternion rotationDelta;
    public float angle;
    private Vector3 axis;
    

    void Start () {
        rigidBody = GetComponent<Rigidbody>();
        interactionPoint = new GameObject().transform;
        velocityFactor /= rigidBody.mass;
        rotationFactor /= rigidBody.mass;
	}
	
	// Update is called once per frame
	void Update () {
        ObjectHelper();
    }
    /// <summary>
    /// FIX THE RANGE OF WHAT IT SNAPS TO!
    /// </summary>
    /// 
    
    public void ObjectHelper()
    {
        if (attachedJoystick && isInteractedWith)
        {

            posDelta = attachedJoystick.transform.position - interactionPoint.position;
           
            
            this.rigidBody.velocity = posDelta * velocityFactor * Time.fixedDeltaTime;//fixedDelta because of rigid body 

            

           
            rotationDelta = attachedJoystick.transform.rotation * Quaternion.Inverse(interactionPoint.rotation); //giving rotation of the joystick
            rotationDelta.ToAngleAxis(out angle, out axis); //angle and axis to rotate around

            if(angle>180)
            {
                //Debug.Log("does this ever happen");
                angle -= 360;
            }
            
                this.rigidBody.angularVelocity = (Time.fixedDeltaTime * angle * axis) * rotationFactor;
            
        }
    }

    /*
      public void ObjectHelper()
    {
        if (attachedJoystick && isInteractedWith)
        {

            posDelta = attachedJoystick.transform.position - interactionPoint.position;
            Vector3 hel = new Vector3(10f, 10f, 10f);
            if (velocityFactor * Time.fixedDeltaTime > 10f)
            {

            }
            this.rigidBody.velocity = posDelta * velocityFactor * Time.fixedDeltaTime;//fixedDelta because of rigid body 

            rotationDelta = attachedJoystick.transform.rotation * Quaternion.Inverse(interactionPoint.rotation); //giving rotation of the joystick
            rotationDelta.ToAngleAxis(out angle, out axis); //angle and axis to rotate around

            if(angle>180)
            {
                //Debug.Log("does this ever happen");
                angle -= 360;
            }

            this.rigidBody.angularVelocity = (Time.fixedDeltaTime * angle * axis) * rotationFactor;
        }
    }
         */
    public void BeginInteraction(Interactions joyStick)
    {
        attachedJoystick = joyStick;
        interactionPoint.position = joyStick.transform.position;
        interactionPoint.rotation = joyStick.transform.rotation;
        interactionPoint.SetParent(transform, true);//parent is the transform itself, not the joystick, because it bugs out

        isInteractedWith = true;
    }
    public void EndInteraction(Interactions joyStick)
    {
        if(joyStick == attachedJoystick) //make sure its not the other joystick stopping the interaction by accident
        {
            attachedJoystick = null;
            isInteractedWith = false;
        }

    }

    public bool isInteracting()
    {
        return isInteractedWith;
    }
}
