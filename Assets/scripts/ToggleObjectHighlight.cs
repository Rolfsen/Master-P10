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

	[SerializeField]
	int baseMaterialIndex; 

	Renderer rend;
	float startVal;
	Material mat;

	private void Start()
	{
		rend = GetComponent<Renderer>();
		mat = new Material(rend.materials[baseMaterialIndex]);
		mat.shader = Shader.Find(shaderName);
		rend.materials[baseMaterialIndex] = mat;
		startVal = rend.material.GetFloat(floatName);
	}

	private void Update()
	{
		float adjustFloat = Mathf.PingPong(Time.time / slowVal, pingVal - minVal) + minVal;
		rend.material.SetFloat(floatName, adjustFloat);

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