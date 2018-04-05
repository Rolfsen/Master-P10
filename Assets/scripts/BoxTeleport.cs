using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoxTeleport : MonoBehaviour
{

	[SerializeField]
	float raycastDist;

	[SerializeField]
	float angle;

	private void Update()
	{
		if (Input.GetKey(KeyCode.A))
		{
			transform.Rotate(0, angle * Time.deltaTime, 0, Space.World);
		}

		Debug.DrawRay(transform.position, transform.TransformDirection(Vector3.forward)*raycastDist);

		if (Input.GetKeyDown(KeyCode.S))
		{
			Ray ray;
			RaycastHit hit;

			float raycastAngle = angle;

			ray = new Ray(transform.position, transform.TransformDirection(Vector3.forward) * raycastDist);

			if (Physics.Raycast(ray, out hit, raycastDist))
			{
				transform.position = hit.point;
				
			}
		}
	}
}
