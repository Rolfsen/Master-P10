﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
struct WaterTask
{
	public string taskName;
	public List<float> waterUsage;
}


public class WaterUsage : MonoBehaviour {

	
	[SerializeField]float totalWaterSpend;
	[SerializeField] List<WaterTask> WaterUsingTasks;


	private void Awake()
	{
		EventBus.AddListener<GamePlayEvent.TaskComplete>(UpdateWaterUsage);
	}

	private void UpdateWaterUsage (object sender, GamePlayEvent.TaskComplete e)
	{
		WaterUsingTasks[e.taskNumber].waterUsage.Add(e.waterUsed);
		WaterUsingTasks[e.taskNumber].waterUsage.Sort();

		totalWaterSpend = 0;

		foreach (var task in WaterUsingTasks)
		{
			if (task.waterUsage.Count != 0)
			{
				totalWaterSpend += task.waterUsage[0];
			}
		}
		EventBus.TriggerEvent(this,new GameStateEvent.WaterUsageUpdated(WaterUsingTasks[e.taskNumber].waterUsage[0], totalWaterSpend,e.taskNumber,e.taskName,WaterUsingTasks.Count));
	}
}
