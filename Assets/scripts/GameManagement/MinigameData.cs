﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class MinigameData : MonoBehaviour
{

	[SerializeField]
	string gameName;

	[SerializeField]
	string afterGameText;

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

	public int IdOfNextMinigame;

	[SerializeField]
	string introductionToNextMinigame;

	[SerializeField]
	string startMinigameText;


	[SerializeField]
	private Text waterUsedText;

	[SerializeField]
	GameObject RestartMinigame;

	bool active;

	bool replayed;

	bool isWaterRunning;

	float bestWaterUsage;

	bool complete;
	private void Awake()
	{
		EventBus.AddListener<MinigameEvents.ChangeActiveMinigameEvent>(ToggleActive);
		EventBus.AddListener<MinigameEvents.ToggleWaterEvent>(ToggleWaterUsage);
		EventBus.AddListener<MinigameEvents.EndMinigamEvent>(OnMinigameEnd);
		EventBus.AddListener<MinigameEvents.SingleExecuteWaterUsageEvent>(SingleTimeWaterEvent);
		EventBus.AddListener<MinigameEvents.ReplyCurrentMinigameSelectedEvent>(ReplayGame);
		replayed = false;
		bestWaterUsage = -1;
		waterUsedText.text = 0.0f + "L";
	}


	private void Update()
	{
		if (isWaterRunning)
		{
			waterUsed += waterUsedPerSecond * Time.deltaTime;
			waterUsedText.text = (int)waterUsed + "L";
		}
	}

	void ToggleActive(object sender, MinigameEvents.ChangeActiveMinigameEvent e)
	{
		if (e.newID == id)
		{
			EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(startMinigameText));
			waterUsedText.text = (int)waterUsed + "L";
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
				if (bestWaterUsage == -1 || bestWaterUsage > waterUsed)
				{
					bestWaterUsage = waterUsed;
				}
				EventBus.TriggerEvent(this, new MinigameEvents.UpdateWaterUsage(bestWaterUsage, gameName));
			}

			EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(afterGameText));

			if (replayable && !replayed)
			{
				// Can Replay Game
				EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Do you wanna retry this minigame?"));
				EventBus.TriggerEvent(this, new MinigameEvents.WaitForReplayCurrentGameActionEvent(RestartMinigame));
			}
			else
			{
				EventBus.TriggerEvent(this, new MinigameEvents.PrepareForNextMinigameEvent(IdOfNextMinigame,introductionToNextMinigame));
			}
		}
	}


	private void ToggleWaterUsage(object sender, MinigameEvents.ToggleWaterEvent e)
	{
		if (id == GameManager.currentID && !complete && waterUsingTask && GameManager.isPlaying)
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
		else if(!waterUsingTask && GameManager.currentID == id)
		{
			EventBus.TriggerEvent(this,new NarrativeEvent.TextToSpeechNarratorEvent("Debug Narration Event: Trying to turn water on for a task that dont use water"));
		}
	}

	private void SingleTimeWaterEvent(object sender, MinigameEvents.SingleExecuteWaterUsageEvent e)
	{
		if (id == GameManager.currentID && !complete && waterUsingTask && GameManager.isPlaying)
		{
			waterUsed += e.waterAmount;
			waterUsedText.text = (int)waterUsed + "L";
		}
	}

	private void ReplayGame (object sender, MinigameEvents.ReplyCurrentMinigameSelectedEvent e)
	{
		waterUsed = 0f;
		complete = false;
		replayed = true;
	}

	private void OnTriggerEnter(Collider other)
	{
		if (other.CompareTag("Player") && active && !GameManager.isPlaying && !complete)
		{
			EventBus.TriggerEvent(this, new MinigameEvents.StartMinigameEvent());
		}
		else
		{
			Debug.Log(active + " " + complete);
		}
	}
}
