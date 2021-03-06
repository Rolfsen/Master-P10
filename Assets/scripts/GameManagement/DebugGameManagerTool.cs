﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DebugGameManagerTool : MonoBehaviour {


	[SerializeField]
	int id;

	[SerializeField]
	float amountOfWater;

	[SerializeField]
	List<int> waypoints;

	private void Update()
	{

		// Start Minigame
		if (Input.GetKeyDown(KeyCode.Alpha1))
		{
			EventBus.TriggerEvent(this, new MinigameEvents.ChangeActiveMinigameEvent(id));
		}

		// End Minigame
		if (Input.GetKeyDown(KeyCode.Alpha2))
		{
			EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
		}

		// Toggle Water
		if (Input.GetKeyDown(KeyCode.Alpha3))
		{
			EventBus.TriggerEvent(this, new MinigameEvents.ToggleWaterEvent());
		}
		
		if (Input.GetKeyDown(KeyCode.Alpha4))
		{
			EventBus.TriggerEvent(this, new MinigameEvents.SingleExecuteWaterUsageEvent(amountOfWater));
		}

		if (Input.GetKeyDown(KeyCode.Alpha5))
		{
			EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(waypoints));
		}
	}
}
