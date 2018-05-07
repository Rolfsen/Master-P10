using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CookingGameManager : MonoBehaviour {

    public static bool isPlayingCookingGame;
    public static bool isCookingDone;
	[SerializeField]
	int numberOfPotatoes;
    [SerializeField,Multiline]
    string allPotatoesHaveBeenPeeledText;


	int readyPotatoes;

	private void Awake()
	{
		EventBus.AddListener<GameStateEvent.PotatoComplete>(PotatoComplete);
        isCookingDone = false;
	}

	private void PotatoComplete (object sender, GameStateEvent.PotatoComplete e)
	{
		readyPotatoes++;

		if (numberOfPotatoes == readyPotatoes)
		{
           // EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(allPotatoesHaveBeenPeeledText));
			EventBus.TriggerEvent(this, new GameStateEvent.AllPotatoesComplete());
            isCookingDone = true;

        }
	}
}
