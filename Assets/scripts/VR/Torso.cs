using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Torso : MonoBehaviour {

    Transform cameraTransform;
    [SerializeField]
    private GameObject rightHand, leftHand;
    private Vector3 noY;
    [SerializeField]
    float posX;
    [SerializeField]
    float posY;
    [SerializeField]
    float posZ;
    [SerializeField]
    Transform offset;



    MeshRenderer rend;

    void Start () {
        cameraTransform = Camera.main.transform;

        rend = GetComponent<MeshRenderer>() ;
        rend.enabled = false;

    }

    // Update is called once per frame
    void Update () {
        if (MiniGameManager.isShowerGameRunning)
        {
            rend.enabled = true;
        }
        else
        {
            rend.enabled = false;
        }
        RotateBasedOnJoysticks();
        transform.position = new Vector3(cameraTransform.position.x + posX, cameraTransform.position.y + posY, cameraTransform.position.z + posZ);

    }

    void RotateBasedOnJoysticks()
    {
        if (gameObject.transform.position != Vector3.zero)
        {
            noY = Vector3.Cross(rightHand.transform.position - offset.transform.position, leftHand.transform.position - offset.transform.position).normalized;
            noY.y = 0f;
            transform.forward = noY;

        }
    }
}
