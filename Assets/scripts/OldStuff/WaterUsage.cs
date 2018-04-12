using System.Collections;
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

	[SerializeField]List<string> tmp;

	private void Awake()
	{
		EventBus.AddListener<MinigameEvents.UpdateWaterUsage>(UpdateWaterUsage);
	}

	private void Start()
	{
		

		foreach (var item in WaterUsingTasks)
		{
			tmp.Add(item.taskName);
		}

		EventBus.TriggerEvent(this,new GameStateEvent.StartUpSetTaskVars(tmp));
	}

	private void UpdateWaterUsage (object sender, MinigameEvents.UpdateWaterUsage e)
	{
		WaterUsingTasks[GameManager.currentID].waterUsage.Add(e.waterUsed);
		WaterUsingTasks[GameManager.currentID].waterUsage.Sort();

		totalWaterSpend = 0;

		foreach (var task in WaterUsingTasks)
		{
			if (task.waterUsage.Count != 0)
			{
				totalWaterSpend += task.waterUsage[0];
			}
		}
		EventBus.TriggerEvent(this,new GameStateEvent.WaterUsageUpdated(WaterUsingTasks[GameManager.currentID].waterUsage[0], totalWaterSpend,GameManager.currentID,WaterUsingTasks[GameManager.currentID].taskName,WaterUsingTasks.Count));
	}
}
