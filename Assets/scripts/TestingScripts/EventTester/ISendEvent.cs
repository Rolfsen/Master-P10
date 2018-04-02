using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ISendEvent : MonoBehaviour
{


	public float waterUse;
	public int task;
	public string taskName;



	private void Update()
	{
		if (Input.GetKeyDown(KeyCode.W))
		{
			EventBus.TriggerEvent(this, new GamePlayEvent.TaskComplete(task, waterUse));
		}
	}
}