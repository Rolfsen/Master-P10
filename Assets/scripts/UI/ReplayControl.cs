using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ReplayControl : MonoBehaviour
{

	[SerializeField]
	bool replayButton;

	[SerializeField]
	GameObject parent;

	[SerializeField]
	MinigameData minigameData;

	int nextMinigame;



	private void OnTriggerEnter(Collider other)
	{
		if (other.tag == "Player")
		{
			if (replayButton)
			{
				// Replay Current Minigame
				EventBus.TriggerEvent(this, new MinigameEvents.ReplyCurrentMinigameSelectedEvent());
				EventBus.TriggerEvent(this, new MinigameEvents.ChangeActiveMinigameEvent(GameManager.currentID));
			}
			else
			{
				// Go To next minigame
				EventBus.TriggerEvent(this, new MinigameEvents.ChangeActiveMinigameEvent(minigameData.IdOfNextMinigame));
			}
			parent.SetActive(false);

		}
	}

}
