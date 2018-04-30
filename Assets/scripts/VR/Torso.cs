using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Torso : MonoBehaviour {

    Transform transformer;
    [SerializeField]
    private GameObject rightHand, leftHand;
    private Vector3 noY;
    [SerializeField]
    float posX;
    [SerializeField]
    float posY;
    [SerializeField]
    float posZ;

    MeshRenderer renderer;

    void Start () {
        transformer = Camera.main.transform;

        renderer = GetComponent<MeshRenderer>() ;
        renderer.enabled = false;
    }

    // Update is called once per frame
    void Update () {
        if (MiniGameManager.isShowerGameRunning)
        {
            renderer.enabled = true;
        }
        else
        {
            renderer.enabled = false;
        }
        RotateBasedOnJoysticks();
        transform.position = new Vector3(transformer.position.x, transformer.position.y - 1.74f, transformer.position.z);
    }

    void RotateBasedOnJoysticks()
    {
        if (gameObject.transform.position != Vector3.zero)
        {
            
            

            //transform.position = new Vector3(transformer.position.x - posX, transformer.position.y - posY, transformer.position.z - posZ);

            noY = Vector3.Cross(rightHand.transform.position - gameObject.transform.position, leftHand.transform.position - gameObject.transform.position).normalized;
            noY.y = 0f;
            gameObject.transform.forward = noY;

        }
    }
}
