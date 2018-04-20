using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToggleObjectHighlight : MonoBehaviour {

	[SerializeField]
	string shaderName;

	[SerializeField, Tooltip("Float Name")]
	string floatName;

	[SerializeField]
	float pingVal;

	[SerializeField]
	float slowVal;

	[SerializeField]
	float minVal;



	Renderer rend;
	float startVal;

	private void Start()
	{
		rend = GetComponent<Renderer>();
		rend.material.shader = Shader.Find(shaderName);
		startVal = rend.material.GetFloat(floatName);
		
	}

	private void OnTriggerStay(Collider other)
	{
		if (other.CompareTag("Player"))
		{
			float adjustFloat = Mathf.PingPong(Time.time / slowVal, pingVal - minVal) + minVal;
			rend.material.SetFloat(floatName, adjustFloat);
		}
	}
	private void OnTriggerExit(Collider other)
	{
		if (other.CompareTag("Player"))
		{
			rend.material.SetFloat(floatName, startVal);
		}

	}
}