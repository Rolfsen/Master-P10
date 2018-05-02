using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestingEvents : MonoBehaviour {


	[SerializeField]
	int minigameID;
	[SerializeField]
	List<int> waypointID;

	private void Awake()
	{
		EventBus.AddListener<GamePlayEvent.StartMinigame>(StartingMinigame);
	}

	// Update is called once per frame
	void Update () {
		
		if (Input.GetKeyDown(KeyCode.Z))
		{
			EventBus.TriggerEvent(this, new GamePlayEvent.MinigameManager(minigameID));
		}
		if (Input.GetKeyDown(KeyCode.X))
		{
			EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(waypointID));
		}
	}

	void StartingMinigame (object sender, GamePlayEvent.StartMinigame e )
	{
		//EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(false,"Minigame " + e.id + " started"));
	}
}
