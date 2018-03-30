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
	}


	private void UpdateText(object sender, GameStateEvent.WaterUsageUpdated e)
	{
		text[e.taskNumber].text = e.taskName + " " + e.bestWaterUsageForTask;
		text[e.numberOfTasks].text = "Total Water Usage: " + e.totalWaterUsed.ToString();	
	}
}
