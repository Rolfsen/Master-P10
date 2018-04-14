using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RightHand : MonoBehaviour {

    private SteamVR_Controller.Device controller { get { return SteamVR_Controller.Input((int)trackedObj.index); } }

    private SteamVR_TrackedObject trackedObj; //getting the index from the tracked obj
    //private Valve.VR.EVRButtonId gripButton = Valve.VR.EVRButtonId.k_EButton_Grip;
    private Valve.VR.EVRButtonId triggerButton = Valve.VR.EVRButtonId.k_EButton_SteamVR_Trigger;
    public bool isPressed = false;
    public GameObject closeHandRight, openHandRight;
    void Start()
    {
        trackedObj = GetComponent<SteamVR_TrackedObject>();
    }
    void IsPressed()
    {
        if (controller.GetPressDown(triggerButton))
        {
            isPressed = true;
            openHandRight.SetActive(false);
            closeHandRight.SetActive(true);
            //Debug.Log("TRIGER IS TRUE");
        }
        else if (controller.GetPressUp(triggerButton))
        {
            isPressed = false;

            openHandRight.SetActive(true);
            closeHandRight.SetActive(false);
            // Debug.Log("TRIGER IS FALSE");
        }

    }
    void Update()
    {
        IsPressed();
    }
}
