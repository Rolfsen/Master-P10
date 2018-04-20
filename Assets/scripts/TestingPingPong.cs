using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestingPingPong : MonoBehaviour {

	bool active;

	[SerializeField]
	float pingVal;

	[SerializeField]
	float slowVal;

	[SerializeField]
	float minVal;

	private void Start()
	{
		active = false;
	}

	private void Update()
	{
		if (Input.GetKeyDown(KeyCode.Alpha6))
		{
			active = true;
		}
		if (Input.GetKeyDown(KeyCode.Alpha7))
		{
			active = false;
		}

		if (active)
		{
			Debug.Log(Mathf.PingPong( Time.time/ slowVal,pingVal-minVal)+minVal);
		}
	}
}
