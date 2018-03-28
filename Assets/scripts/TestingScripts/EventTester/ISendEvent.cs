using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ISendEvent : MonoBehaviour {

	public Color newCol;
	public Vector3 newVec;
	public string newString;

	public float waterUse;
	public int task;
	public string taskName;

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

		if(Input.GetKeyDown(KeyCode.W))
		{
			EventBus.TriggerEvent(this, new GamePlayEvent.TaskComplete(task,waterUse, taskName));
		}
	}
}