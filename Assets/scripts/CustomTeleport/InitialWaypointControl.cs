using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InitialWaypointControl : MonoBehaviour {

	[HideInInspector]
	public Renderer rend;

	[HideInInspector]
	public bool isLookedAt;

	public Color lookedAt;
	public Color notLookedAt;
	public Color inactive;


	private void Start()
	{
		isLookedAt = false;
	}

	private void Update()
	{

	}

	public void ChangeColor (Color newColor)
	{
		GetComponentInParent<Renderer>().material.color = newColor;
	}	
}
