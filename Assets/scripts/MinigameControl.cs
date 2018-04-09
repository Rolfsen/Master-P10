using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinigameControl : MonoBehaviour
{


	[SerializeField]
	int minigameID;

	[SerializeField]
	string minigameName;

	bool active;

	private void Awake()
	{
		EventBus.AddListener<GamePlayEvent.MinigameManager>(ManageMinigameActiveStatus);
	}

	private void ManageMinigameActiveStatus(object sender, GamePlayEvent.MinigameManager e)
	{
		if (!GameState.isMinigameRunning)
		{
			if (e.id == minigameID)
			{
				active = true;
			}
			else
			{
				active = false;
			}
		}
		else
		{
			active = false;
			Debug.LogWarning("Minigame Is Currently Running - GameState.IsMinigameRunning");
		}
	}

	private void OnTriggerEnter(Collider other)
	{
		if (active && other.CompareTag("Player") && !GameState.isMinigameRunning)
		{
			EventBus.TriggerEvent(this, new GamePlayEvent.PlayerEnteredActiveMinigameArea());
			EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You are entering the area for starting the " + minigameName + " game"));

		}
	}

	private void OnTriggerExit(Collider other)
	{
		if (active && other.CompareTag("Player") && !GameState.isMinigameRunning)
		{
			EventBus.TriggerEvent(this, new GamePlayEvent.PlayerLeftActiveMinigameArea());
			EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("You are leaving the area for starting the " + minigameName + " game"));
		}
	}
}
