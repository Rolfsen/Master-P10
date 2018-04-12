using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Torso : MonoBehaviour {
    public GameObject mainCamera;
    Transform transformer;
    [SerializeField]
    private GameObject rightHand, leftHand;
    private Vector3 noY;
	// Use this for initialization
	void Start () {
        //parentTransform = GetComponentsInParent(typeof(Transform), true);
        //transformer = gameObject.GetComponentInParent(typeof(Transform)) as Transform;

        transformer = mainCamera.GetComponent<Transform>();

       // transform.position = new Vector3(transformer.position.x, transformer.position.y-1, transformer.position.z);

    }

    // Update is called once per frame
    void Update () {

        transform.position = new Vector3(transformer.position.x, transformer.position.y-1.74f, transformer.position.z);
        // Update the torso to face "forward" relative to hand positions
        noY = Vector3.Cross(rightHand.transform.position - gameObject.transform.position, leftHand.transform.position - gameObject.transform.position).normalized;
        noY.y = 0f;
        gameObject.transform.forward = noY; 
        //Component[] parentTransform = GetComponentsInParent(typeof(Transform), true);
        //transform.rotation = new Quaternion(transform.rotation.x,transformer.rotation.y, transformer.rotation.z, transform.rotation.w);
        //transform.position = new Vector3(transformer.position.x+1, transformer.position.y, transformer.position.z);

    }
}
