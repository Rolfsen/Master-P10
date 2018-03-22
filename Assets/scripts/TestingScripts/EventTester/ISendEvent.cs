using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ISendEvent : MonoBehaviour {

	public Color newCol;
	public Vector3 newVec;
	public string newString;

	public int eventInt2;

	private void Update()
	{
		if (Input.GetKeyDown(KeyCode.A))
		{
			EventBus.TriggerEvent(this, new GamePlayEvent.TestEvent(newCol,newVec,newString));
		}

		if (Input.GetKeyDown(KeyCode.S))
		{
			EventBus.TriggerEvent(this, new GamePlayEvent.TestEvent2(eventInt2));
		}
	}
}