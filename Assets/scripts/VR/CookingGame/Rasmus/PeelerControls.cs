using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PeelerControls : MonoBehaviour
{

	public bool isCurrentlyBeingCarried;

	bool tmpCheck;

	SimpleInteractions controller;
	Transform followController;

	private void Update()
	{
		if (followController != null)
		{
			// You can replace this with something VR Friendly 
			transform.position = followController.position;
			transform.rotation = followController.rotation;
		}
	}

	private void OnTriggerStay(Collider other)
	{
		if (other.CompareTag("Player"))
		{
			if (other.GetComponent<SimpleInteractions>().isPressed)
			{
				controller = other.GetComponent<SimpleInteractions>();
				if (!controller.isHoldingSomething && !isCurrentlyBeingCarried)
				{
					controller.isHoldingSomething = true;
					isCurrentlyBeingCarried = true;
					followController = other.transform;
					tmpCheck = true; // Don't know if this is needed, but i but it here to prevent auto put the peeler back, at pickup
				}
			}
		}
	}

	private void OnTriggerEnter(Collider other)
	{
		if (other.CompareTag("PeelerIdlePosition") && isCurrentlyBeingCarried)
		{
			followController = null;
			controller.isHoldingSomething = false;
			isCurrentlyBeingCarried = false;
		}
	}
}

