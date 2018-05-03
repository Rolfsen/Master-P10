using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InitialMinigameIntroduction : MonoBehaviour {

    [SerializeField, Multiline]
    List<string> introductionText;


    private void Awake()
    {
        EventBus.AddListener<MinigameEvents.StartMinigameEvent>(StartTextEvent);
    }


    private void StartTextEvent (object sender, MinigameEvents.StartMinigameEvent e)
    {
        EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(true,introductionText[GameManager.currentID]));
    }
}
