using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestingGrippingScript : MonoBehaviour
{

	[SerializeField]
	Transform leftHandGrip;

	[SerializeField]
	Transform rightHandGrip;

	Vector3 offsetVector;

	bool isHold;

	[SerializeField]
	Transform leftHand;

	[SerializeField]
	Transform rightHand;

	Transform usingTrans;

	Vector3 offset;

	GameObject holdingHand;

	private void OnTriggerEnter(Collider other)
	{
		if (!isHold && other.CompareTag("Player"))
		{
			if (other.GetComponent<TestingGrippingHand>().isLeftHand)
			{
				offsetVector = leftHandGrip.position;
				usingTrans = leftHand;
			}
			else
			{
				offsetVector = rightHandGrip.position;
				usingTrans = rightHand;
			}

			offset = (usingTrans.position - other.transform.position) + (offsetVector - transform.position);

			transform.position = other.transform.position - offset;

			isHold = true;
			holdingHand = other.gameObject;
			transform.SetParent(holdingHand.transform);
			other.GetComponent<TestingGrippingHand>().HoldObject();
		}

		else if (isHold && other.CompareTag("Flavor"))
		{

		}
	}
}
