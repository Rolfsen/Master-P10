using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {

	public static int currentID;
	public static bool isPlaying;

    [SerializeField]
    int firstMinigame;

	private void Awake()
	{
		EventBus.AddListener<MinigameEvents.ChangeActiveMinigameEvent>(UpdateGameStatus);
		EventBus.AddListener<MinigameEvents.StartMinigameEvent>(StartMinigame);
	}

	private void Start()
	{
		currentID = -1;
		isPlaying = false;
		StartCoroutine(StartFirstMinigame());
	}


	void UpdateGameStatus (object sender, MinigameEvents.ChangeActiveMinigameEvent e)
	{
		currentID = e.newID;
		isPlaying = false;

	}

	void StartMinigame (object sender, MinigameEvents.StartMinigameEvent e)
	{
		isPlaying = true;
	}

	IEnumerator StartFirstMinigame ()
	{
		yield return new WaitForSeconds(1);
		EventBus.TriggerEvent(this, new MinigameEvents.ChangeActiveMinigameEvent(firstMinigame));
	}
}
