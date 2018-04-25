using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestingGrippingHand : MonoBehaviour {

	public bool isLeftHand;
	public bool isHoldingObject;

	[SerializeField]
	Mesh holding;

	[SerializeField]
	Mesh notHolding;

	MeshFilter myMesh;

	private void Start()
	{
		myMesh = GetComponent<MeshFilter>();
	}

	public void HoldObject ()
	{
		myMesh.mesh = holding;
	}

	public void StopHoldindObject()
	{
		myMesh.mesh = notHolding;
	}
}
