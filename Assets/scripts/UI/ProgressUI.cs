using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class ProgressUI : MonoBehaviour
{

	[SerializeField] Text[] text;

	private void Awake()
	{
		text = GetComponentsInChildren<Text>();

		EventBus.AddListener<GameStateEvent.WaterUsageUpdated>(UpdateText);
		EventBus.AddListener<GameStateEvent.StartUpSetTaskVars>(SetStartUpText);
	}


	private void UpdateText(object sender, GameStateEvent.WaterUsageUpdated e)
	{
		text[e.taskNumber].text = e.taskName + " " + e.bestWaterUsageForTask;
		text[e.numberOfTasks].text = "Total Water Usage: " + e.totalWaterUsed.ToString();	
	}

	private void SetStartUpText (object sender, GameStateEvent.StartUpSetTaskVars e)
	{
		for (int i = 0; i < e.taskNames.Count; i++)
		{
			text[i].text = e.taskNames[i];
		}
	}
}
