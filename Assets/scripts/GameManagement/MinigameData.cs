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
	bool waterUsingTask;

	bool active;

	bool replayed;

	[SerializeField]
	private Text waterUsedText;

	private void Awake()
	{
		EventBus.AddListener<MinigameEvents.ChangeActiveMinigameEvent>(ToggleActive);
		replayed = false;
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

	private void OnTriggerEnter(Collider other)
	{
		if (other.CompareTag("Player") && active && !GameManager.isPlaying)
		{
			EventBus.TriggerEvent(this, new MinigameEvents.StartMinigameEvent());
		}
	}
}
