using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LeftHand : MonoBehaviour {
    public GameObject closeHandLeft, openHandLeft;
    private SteamVR_Controller.Device controller { get { return SteamVR_Controller.Input((int)trackedObj.index); } }
    private SteamVR_TrackedObject trackedObj; //getting the index from the tracked obj
    private Valve.VR.EVRButtonId gripButton = Valve.VR.EVRButtonId.k_EButton_Grip;
    private Valve.VR.EVRButtonId triggerButton = Valve.VR.EVRButtonId.k_EButton_SteamVR_Trigger;
    public bool isPressed = false;
    
    void Start()
    {
        trackedObj = GetComponent<SteamVR_TrackedObject>();
    }
    void IsPressed()
    {
        if (controller.GetPressDown(triggerButton))
        {
            isPressed = true;
            openHandLeft.SetActive(false);
            closeHandLeft.SetActive(true);
            //Debug.Log("TRIGER IS TRUE");
        }
        else if (controller.GetPressUp(triggerButton))
        {
            isPressed = false;

            openHandLeft.SetActive(true);
            closeHandLeft.SetActive(false);
            // Debug.Log("TRIGER IS FALSE");
        }


    }
    void Update()
    {
        IsPressed();
    }
}
