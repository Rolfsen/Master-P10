using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Teleportation : MonoBehaviour {
    public GameObject holder;
    public GameObject pointer;
    public Color color;
    public bool addRigidBody = false;
    public float thickness = 0.002f;
    void Start () {

        holder = new GameObject();
        holder.transform.parent = this.transform;
        holder.transform.localPosition = Vector3.zero;
        holder.transform.localRotation = Quaternion.identity;

        pointer = GameObject.CreatePrimitive(PrimitiveType.Cube);
        pointer.transform.parent = holder.transform;
        pointer.transform.localScale = new Vector3(thickness, thickness, 100f);
        pointer.transform.localPosition = new Vector3(0f, 0f, 50f);
        pointer.transform.localRotation = Quaternion.identity;
        BoxCollider collider = pointer.GetComponent<BoxCollider>();
        if (addRigidBody)
        {
            if (collider)
            {
                collider.isTrigger = true;
            }
            Rigidbody rigidBody = pointer.AddComponent<Rigidbody>();
            rigidBody.isKinematic = true;
        }
        else
        {
            if (collider)
            {
                Object.Destroy(collider);
            }
        }
        Material newMaterial = new Material(Shader.Find("Unlit/Color"));
        newMaterial.SetColor("_Color", color);
        pointer.GetComponent<MeshRenderer>().material = newMaterial;
    }
	
	// Update is called once per frame
	void Update () {

        RaycastHit hit;
        Ray directionRay = new Ray(transform.position, Vector3.forward);
        float distance = 1000f;
        Debug.DrawLine(transform.position,  transform.position + Vector3.forward * distance, Color.green);

        if (Physics.Raycast(directionRay, out hit, distance))
        {
            
            if(hit.collider.tag == "Allowed_Zone")
            {
                SteamVR_Teleporter script; //creates that script data type

                script = gameObject.GetComponent<SteamVR_Teleporter>();
                script.enabled = true;

            }
        }
	}
}
