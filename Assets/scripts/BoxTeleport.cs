using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoxTeleport : MonoBehaviour
{

	[SerializeField]
	float raycastDist;

	[SerializeField]
	float angle;

	private GameObject prevHit;
	private InitialWaypointControl prevWaypoint;

	private GameObject currentHit;

	private void Update()
	{
		if (Input.GetKey(KeyCode.A))
		{
			transform.Rotate(0, angle * Time.deltaTime, 0, Space.World);
		}

		if (Input.GetKey(KeyCode.D))
		{
			transform.Rotate(0, -angle * Time.deltaTime, 0, Space.World);
		}

		Debug.DrawRay(transform.position, transform.TransformDirection(Vector3.forward) * raycastDist);

		Ray ray;
		RaycastHit hit;

		float raycastAngle = angle;

		ray = new Ray(transform.position, transform.TransformDirection(Vector3.forward) * raycastDist);

		if (Physics.Raycast(ray, out hit, raycastDist))
		{
			currentHit = hit.transform.gameObject;
			if (hit.transform.tag == "Waypoint")
			{
				if (currentHit != prevHit)
				{
					InitialWaypointControl waypoint;
					waypoint = currentHit.gameObject.GetComponent<InitialWaypointControl>();

					if (prevHit != currentHit)
					{
						waypoint.ChangeColor(waypoint.lookedAt);
					}
					if (Input.GetKeyDown(KeyCode.W))
					{
						transform.position = hit.point;
					}
				}
				prevWaypoint = currentHit.GetComponent<InitialWaypointControl>();
			}

			// Don't Hit a waypoint with raycast
			else
			{
				if (prevWaypoint != null)
				{
					prevWaypoint.ChangeColor(prevWaypoint.notLookedAt);
				}
				prevWaypoint = null;
			}
			prevHit = currentHit;
		}
		else
		{
			currentHit = null;
			prevHit = null;
		}
	}
}
