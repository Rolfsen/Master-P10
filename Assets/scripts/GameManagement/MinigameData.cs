using System.Collections;
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

	[SerializeField]
	int IdOfNextMinigame;

	[SerializeField]
	string introductionToNextMinigame;

	[SerializeField]
	string startMinigameText;

	bool active;

	bool replayed;

	bool isWaterRunning;

	float bestWaterUsage;

	bool complete;

	[SerializeField]
	private Text waterUsedText;

	private void Awake()
	{
		EventBus.AddListener<MinigameEvents.ChangeActiveMinigameEvent>(ToggleActive);
		EventBus.AddListener<MinigameEvents.ToggleWaterEvent>(ToggleWaterUsage);
		EventBus.AddListener<MinigameEvents.EndMinigamEvent>(OnMinigameEnd);
		replayed = false;
		bestWaterUsage = -1;
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
				EventBus.TriggerEvent(this, new MinigameEvents.WaitForReplayCurrentGameActionEvent());
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

	private void OnTriggerEnter(Collider other)
	{
		if (other.CompareTag("Player") && active && !GameManager.isPlaying && !complete)
		{
			EventBus.TriggerEvent(this, new MinigameEvents.StartMinigameEvent());
		}
	}
}
