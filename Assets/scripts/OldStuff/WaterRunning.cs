using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class WaterRunning : MonoBehaviour {

	[SerializeField]
	float waterPerUsedSecond;

	[SerializeField]
	int taskID;

	[SerializeField]
	Text text;

	float waterUsed;

	bool isWaterRunning;

	private void Awake()
	{
		EventBus.AddListener<GamePlayEvent.ToggleWaterRunningEvent>(ToggleWater);
				
	}

	private void Update()
	{
		if (isWaterRunning)
		{
			waterUsed += waterPerUsedSecond * Time.deltaTime;
			text.text = (int)waterUsed + "L";
		}
	}

	private void ToggleWater (object sender, GamePlayEvent.ToggleWaterRunningEvent e)
	{
		if (e.id == taskID)
		{
			if (!isWaterRunning)
			{
				isWaterRunning = true;
			}
			else
			{
				isWaterRunning = false;
			}
		}
	}
}
