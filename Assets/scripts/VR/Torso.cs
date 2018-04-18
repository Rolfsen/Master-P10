using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Torso : MonoBehaviour {
    public GameObject mainCamera;
    Transform transformer;
    [SerializeField]
    private GameObject rightHand, leftHand;
    private Vector3 noY;
	void Start () {

        transformer = mainCamera.GetComponent<Transform>();
        

    }

    // Update is called once per frame
    void Update () {
        RotateBasedOnJoysticks();
       

    }

    void RotateBasedOnJoysticks()
    {
        if(gameObject.transform.position != Vector3.zero)
            {
                // Do the rotation here
            
        transform.position = new Vector3(transformer.position.x, transformer.position.y - 1.74f, transformer.position.z);
        noY = Vector3.Cross(rightHand.transform.position - gameObject.transform.position, leftHand.transform.position - gameObject.transform.position).normalized;
        noY.y = 0f;
        gameObject.transform.forward = noY;
            }
    }

}
