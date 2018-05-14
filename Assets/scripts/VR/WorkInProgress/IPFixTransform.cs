using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IPFixTransform : ItemPickUp {

	[SerializeField]
	Vector3 eulerRotation;

	public override void AdjustLocaleTransform(Transform hand)
	{
		base.AdjustLocaleTransform(hand);
		transform.position = hand.transform.position;
		transform.localEulerAngles = eulerRotation;
	}
}