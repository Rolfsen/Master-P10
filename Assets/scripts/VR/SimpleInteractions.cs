﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleInteractions : MonoBehaviour
{
    private SteamVR_Controller.Device controller { get { return SteamVR_Controller.Input((int)trackedObj.index); } }

    private SteamVR_TrackedObject trackedObj; //getting the index from the tracked obj
    [SerializeField]
    private GameObject leftHandObj, rightHandObj;
    private LeftHand leftHand;
    [SerializeField]
    private RightHand rightHand;
    private Valve.VR.EVRButtonId triggerButton = Valve.VR.EVRButtonId.k_EButton_SteamVR_Trigger;
    public bool isPressed = false;
    public bool isHoldingSomething = false;
    public bool isHoldingTool;
    SphereCollider[] myColliders;
    [SerializeField]
    AudioClip audioClip;
    [SerializeField]
    AudioSource musicSource;
    bool isHoldingWrench;
    void Start()
    {
        musicSource.clip = audioClip;
        trackedObj = GetComponent<SteamVR_TrackedObject>();
        myColliders = gameObject.GetComponents<SphereCollider>();
        leftHand = leftHandObj.GetComponent<LeftHand>();
        rightHand = rightHandObj.GetComponent<RightHand>();
        isHoldingTool = false;
        isHoldingWrench = false;

        StartCoroutine(Vibrate(60500, 30 ,0.05f));
    }

    void IsPressed()
    {
        if (controller.GetPressDown(triggerButton))
        {
            isPressed = true;
        }
        else if (controller.GetPressUp(triggerButton))
        {
            isPressed = false;
        }
    }

    void IsItHolding()
    {
        if(isHoldingTool)
        {
            gameObject.GetComponent<Interactions>().enabled = false;
        }
        else
        {
            gameObject.GetComponent<Interactions>().enabled = true;
        }
    }
    void Update()
    {
        IsPressed();
        IsItHolding();


    }


    float time;

    [SerializeField]
    AnimationCurve curve;
    IEnumerator Vibrate (ushort vibstrenght, float viblenght, float timeBetweenPulses)
    {
        bool wait = true;
        time = 0;

        while (wait)
        {
            controller.TriggerHapticPulse(vibstrenght);

            time += Time.deltaTime;
            if (time > viblenght)
            {
                wait = false;
            }
            float waitTime = timeBetweenPulses + curve.Evaluate(time);
            yield return new WaitForSeconds(waitTime);
        }
    }


    private void OnTriggerEnter(Collider col)
    {

        if (col.gameObject.tag == "Wrench")
        {
            myColliders[1].enabled = true;
            myColliders[0].enabled = false;
        }

   
        
    }
    private void OnTriggerStay(Collider col)
    {
        if(col.gameObject.tag=="Bolt")
        {
            if(isPressed == true && isHoldingWrench && !musicSource.isPlaying)
            {
                musicSource.Play();
               // IsItVibrating(500);
            }
            //MAKE SOUND FOR WHEN SCREWING THE BOLTS ON
        }


        if (col.gameObject.tag == "Wrench")
        {
            isHoldingWrench = true;
            if (gameObject.GetComponent<RightHand>() == true)
            {
                rightHand.closeHandRight.SetActive(true);
                rightHand.openHandRight.SetActive(false);
                rightHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingWrench());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                leftHand.closeHandLeft.SetActive(true);
                leftHand.openHandLeft.SetActive(false);
                leftHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingWrench());

            }
        }
        else if (col.gameObject.tag == "Peeler")
        {
            isHoldingTool = true;
            if (gameObject.GetComponent<RightHand>() == true)
            {
                rightHand.closeHandRight.SetActive(true);
                rightHand.openHandRight.SetActive(false);
                rightHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingPeeler());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                leftHand.closeHandLeft.SetActive(true);
                leftHand.openHandLeft.SetActive(false);
                leftHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingPeeler());

            }
        }
        else if (col.gameObject.tag == "OldShowerHead" && col.gameObject.GetComponent<ShowerInteractions>().unPluged==true)
        {
            
            if (gameObject.GetComponent<RightHand>() == true)
            {
                rightHand.closeHandRight.SetActive(true);
                rightHand.openHandRight.SetActive(false);
                rightHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingOldShowerHead());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                leftHand.closeHandLeft.SetActive(true);
                leftHand.openHandLeft.SetActive(false);
                leftHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingOldShowerHead());

            }
        }

        else if (col.gameObject.tag == "NewShowerHead" && col.gameObject.GetComponent<NewShowerHead>().pluggedIn == false)
        {
            
            if (gameObject.GetComponent<RightHand>() == true)
            {
                rightHand.closeHandRight.SetActive(true);
                rightHand.openHandRight.SetActive(false);
                rightHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingNewShowerHead());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                leftHand.closeHandLeft.SetActive(true);
                leftHand.openHandLeft.SetActive(false);
                leftHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingNewShowerHead());

            }
        }
        else if (col.gameObject.tag == "Mop")
        {
            isHoldingTool = true;
            if (gameObject.GetComponent<RightHand>()==true)
            {
                rightHand.closeHandRight.SetActive(true);
                rightHand.openHandRight.SetActive(false);
                rightHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingMop());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                leftHand.closeHandLeft.SetActive(true);
                leftHand.openHandLeft.SetActive(false);
                leftHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingMop());

            }
        }
        else if (col.gameObject.tag == "Vacuum")
        {
            isHoldingTool = true;
            if (gameObject.GetComponent<RightHand>() == true)
            {
                rightHand.closeHandRight.SetActive(true);
                rightHand.openHandRight.SetActive(false);
                rightHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingVacuum());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                leftHand.closeHandLeft.SetActive(true);
                leftHand.openHandLeft.SetActive(false);
                leftHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingVacuum());

            }
        }
        else if (col.gameObject.tag == "Soap")
        {
            isHoldingTool = true;
            if (gameObject.GetComponent<RightHand>() == true)
            {
                rightHand.closeHandRight.SetActive(true);
                rightHand.openHandRight.SetActive(false);
                rightHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingSoap());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                leftHand.closeHandLeft.SetActive(true);
                leftHand.openHandLeft.SetActive(false);
                leftHand.enabled = false;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsHoldingSoap());

            }
        }
        
    }
    private void OnTriggerExit(Collider col)
    {
        ObjectInteraction collidedItem = col.GetComponent<ObjectInteraction>();
        if (collidedItem)
        {
            //objectsHoveringOverList.Remove(collidedItem);
        }
        
        if (col.gameObject.tag == "Wrench")
        {
            isHoldingWrench = false;
            myColliders[0].enabled = true;
            myColliders[1].enabled = false;
            if (gameObject.GetComponent<RightHand>() == true)
            {
                rightHand.closeHandRight.SetActive(false);
                rightHand.openHandRight.SetActive(true);
                rightHand.enabled = true;

                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingWrench());
            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                leftHand.closeHandLeft.SetActive(false);
                leftHand.openHandLeft.SetActive(true);
                leftHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingWrench());

            }


        }

        else if (col.gameObject.tag == "Mop")
        {
        
            if (gameObject.GetComponent<RightHand>() == true)
            {
                isHoldingTool = false;
                rightHand.closeHandRight.SetActive(false);
                rightHand.openHandRight.SetActive(true);
                rightHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingMop());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                isHoldingTool = false;
                leftHand.closeHandLeft.SetActive(false);
                leftHand.openHandLeft.SetActive(true);
                leftHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingMop());

            }
        }
        else if (col.gameObject.tag == "Peeler")
        {

            if (gameObject.GetComponent<RightHand>() == true)
            {
                isHoldingTool = false;
                rightHand.closeHandRight.SetActive(false);
                rightHand.openHandRight.SetActive(true);
                rightHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingPeeler());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                isHoldingTool = false;
                leftHand.closeHandLeft.SetActive(false);
                leftHand.openHandLeft.SetActive(true);
                leftHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingPeeler());

            }
        }

        else if (col.gameObject.tag == "Potato")
        {
            isHoldingTool = false;
            if (gameObject.GetComponent<RightHand>() == true)
            {
                isHoldingTool = false;
                rightHand.closeHandRight.SetActive(false);
                rightHand.openHandRight.SetActive(true);
                rightHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingPotato());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                isHoldingTool = false;
                leftHand.closeHandLeft.SetActive(false);
                leftHand.openHandLeft.SetActive(true);
                leftHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingPotato());

            }
        }

        else if (col.gameObject.tag == "OldShowerHead")
        {
            if (gameObject.GetComponent<RightHand>() == true)
            {
                rightHand.closeHandRight.SetActive(false);
                rightHand.openHandRight.SetActive(true);
                rightHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingOldShowerHead());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                leftHand.closeHandLeft.SetActive(false);
                leftHand.openHandLeft.SetActive(true);
                leftHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingOldShowerHead());

            }
        }
        else if (col.gameObject.tag == "NewShowerHead")
        {
            if (gameObject.GetComponent<RightHand>() == true)
            {
                rightHand.closeHandRight.SetActive(false);
                rightHand.openHandRight.SetActive(true);
                rightHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingNewShowerHead());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                leftHand.closeHandLeft.SetActive(false);
                leftHand.openHandLeft.SetActive(true);
                leftHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingNewShowerHead());

            }
        }
        else if (col.gameObject.tag == "Vacuum")
        {
            isHoldingTool = false;
            if (gameObject.GetComponent<RightHand>() == true)
            {
                rightHand.closeHandRight.SetActive(false);
                rightHand.openHandRight.SetActive(true);
                rightHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingVacuum());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                leftHand.closeHandLeft.SetActive(false);
                leftHand.openHandLeft.SetActive(true);
                leftHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingVacuum());

            }
        }
        else if (col.gameObject.tag == "Soap")
        {
            isHoldingTool = false;
            if (gameObject.GetComponent<RightHand>() == true)
            {
                rightHand.closeHandRight.SetActive(false);
                rightHand.openHandRight.SetActive(true);
                rightHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingSoap());

            }
            if (gameObject.GetComponent<LeftHand>() == true)
            {
                leftHand.closeHandLeft.SetActive(false);
                leftHand.openHandLeft.SetActive(true);
                leftHand.enabled = true;
                EventBus.TriggerEvent(this, new GameStateEvent.ControllerIsNotHoldingSoap());

            }
        }
    }
}



