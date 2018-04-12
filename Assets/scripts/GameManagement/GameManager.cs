using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {

	public static int currentID;
	public static bool isPlaying;

	private void Awake()
	{
		EventBus.AddListener<MinigameEvents.ChangeActiveMinigameEvent>(UpdateGameStatus);
		EventBus.AddListener<MinigameEvents.StartMinigameEvent>(StartMinigame);
	}

	private void Start()
	{
		currentID = -1;
		isPlaying = false;
	}

	private void Update()
	{
		// Debug
		print(currentID);
		print(isPlaying);
	}

	void UpdateGameStatus (object sender, MinigameEvents.ChangeActiveMinigameEvent e)
	{
		currentID = e.newID;
		isPlaying = false;

		// Debug Narration Event: Delete For Final Test
		EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Debug Narration Event: New Active Minigame with ID " + e.newID));
	}

	void StartMinigame (object sender, MinigameEvents.StartMinigameEvent e)
	{
		print("Started Minigame");
		isPlaying = true;
		// Debug Narration Event: Delete For Final Test
		EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Debug Narration Event: Minigame Initiated with ID: " + currentID ));
	}
}
