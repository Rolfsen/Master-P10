using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ISendEvent : MonoBehaviour
{


	public float waterUse;
	public int task;
	public string taskName;

	public string narrativeText;


	private void Update()
	{
		if (Input.GetKeyDown(KeyCode.W))
		{
			EventBus.TriggerEvent(this, new GamePlayEvent.TaskComplete(task, waterUse));
		}
		if (Input.GetKeyDown(KeyCode.S))
		{
			EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(false,narrativeText));
		}
	}
}