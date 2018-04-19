using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CookingGameManager : MonoBehaviour {

	[SerializeField]
	int numberOfPotatoes;

	int readyPotatoes;

	private void Awake()
	{
		EventBus.AddListener<GameStateEvent.PotatoComplete>(PotatoComplete);
	}

	private void PotatoComplete (object sender, GameStateEvent.PotatoComplete e)
	{
		readyPotatoes++;

		if (numberOfPotatoes == readyPotatoes)
		{
			EventBus.TriggerEvent(this, new GameStateEvent.AllPotatoesComplete());
		}
	}
}
