using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartMinigameScirpt : MonoBehaviour {

	bool canStartMinigame;
	[SerializeField]int id;

	private void Awake()
	{
		canStartMinigame = false;
		EventBus.AddListener<GamePlayEvent.PlayerEnteredActiveMinigameArea>(EnterMinigameArea);
		EventBus.AddListener<GamePlayEvent.PlayerLeftActiveMinigameArea>(LeftMinigameArea);
	}


	private void Update()
	{
		if (canStartMinigame && Input.GetKeyDown(KeyCode.K) && !GameState.isMinigameRunning)
		{
			EventBus.TriggerEvent(this, new GamePlayEvent.StartMinigame(id));
			EventBus.TriggerEvent(this, new GamePlayEvent.MinigameManager(-1));
			GameState.isMinigameRunning = true;
		}
	}


	private void EnterMinigameArea(object sender, GamePlayEvent.PlayerEnteredActiveMinigameArea e)
	{
		canStartMinigame = true;
	}

	private void LeftMinigameArea(object sender, GamePlayEvent.PlayerLeftActiveMinigameArea e)
	{
		canStartMinigame = false;
	}
}
