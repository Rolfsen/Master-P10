using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToggleObjectHighlight : MonoBehaviour {

	[SerializeField]
	string shaderName;

	[SerializeField,Tooltip("Name of shader property")]
	string propName;

	Renderer rend;
	bool turnOnHightLight;

	private void Start()
	{
		rend = GetComponent<Renderer>();
		rend.material.shader = Shader.Find(shaderName);
		turnOnHightLight = false;
		// 		
	}

	private void OnTriggerEnter(Collider other)
	{
		if (other.CompareTag("Player"))
		{
			rend.material.SetInt(propName, 1);
		}
	}
	private void OnTriggerExit(Collider other)
	{
		if (other.CompareTag("Player"))
		{
			rend.material.SetInt(propName, 0);
		}
	}
}