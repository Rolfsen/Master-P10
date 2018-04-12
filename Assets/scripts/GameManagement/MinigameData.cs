using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class MinigameData : MonoBehaviour
{

	[SerializeField]
	string gameName;

	[SerializeField]
	int id;

	[SerializeField]
	bool replayable;

	[SerializeField]
	float waterUsed;

	[SerializeField]
	float waterUsedPerSecond;

	[SerializeField]
	bool waterUsingTask;

	bool active;

	bool replayed;

	bool isWaterRunning;

	bool complete;

	[SerializeField]
	private Text waterUsedText;

	private void Awake()
	{
		EventBus.AddListener<MinigameEvents.ChangeActiveMinigameEvent>(ToggleActive);
		EventBus.AddListener<MinigameEvents.ToggleWaterEvent>(ToggleWaterUsage);
		EventBus.AddListener<MinigameEvents.EndMinigamEvent>(OnMinigameEnd);
		replayed = false;
	}


	private void Update()
	{
		if (isWaterRunning)
		{
			waterUsed += waterUsedPerSecond * Time.deltaTime;
		}
	}

	void ToggleActive(object sender, MinigameEvents.ChangeActiveMinigameEvent e)
	{
		if (e.newID == id)
		{
			active = true;
		}
		else
		{
			active = false;
		}
	}

	void OnMinigameEnd(object sender, MinigameEvents.EndMinigamEvent e)
	{
		if (GameManager.currentID == id)
		{
			complete = true;
			// Send Water Used
			if (waterUsingTask)
			{
				EventBus.TriggerEvent(this, new MinigameEvents.UpdateWaterUsage(waterUsed, gameName));
			}

			if (replayable && !replayed)
			{
				// Can Replay Game
			}
			else
			{
				// Cannot Replay Game
			}
		}
	}


	private void ToggleWaterUsage(object sender, MinigameEvents.ToggleWaterEvent e)
	{
		if (id == GameManager.currentID && !complete)
		{
			if (isWaterRunning)
			{
				isWaterRunning = false;
			}
			else
			{
				isWaterRunning = true;
			}
		}
	}

	private void OnTriggerEnter(Collider other)
	{
		if (other.CompareTag("Player") && active && !GameManager.isPlaying && !complete)
		{
			EventBus.TriggerEvent(this, new MinigameEvents.StartMinigameEvent());
		}
	}
}
