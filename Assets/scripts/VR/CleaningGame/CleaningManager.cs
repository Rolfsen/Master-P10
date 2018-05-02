using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CleaningManager : MonoBehaviour {

   static public bool isHouseClean;

    [SerializeField]
    VacuumHandler vaccum;

    [SerializeField]
    MopHandler mob;

    bool triggerOnce;

    private void Awake()
    {
        EventBus.AddListener<GameStateEvent.CleaningSpotClear>(SpotCleared);
        EventBus.AddListener<MinigameEvents.ReplyCurrentMinigameSelectedEvent>(resetVars);
        isHouseClean = false;
        triggerOnce = false;
        

    }

    private void Update()
    {
        if (isHouseClean && MiniGameManager.isCleaningGameRunning)
        {
            if (!vaccum.isHeld && !mob.isHeld && !triggerOnce)
            {
                EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Neat, that was the last remaining dirt, and the cleaning utensils have been put back into their place."));
                EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
                triggerOnce = true;
            }
        }
    }

    private void resetVars(object sender, MinigameEvents.ReplyCurrentMinigameSelectedEvent e)
    {
        isHouseClean = false;
        triggerOnce = false;
    }


    private void SpotCleared (object sender, GameStateEvent.CleaningSpotClear e)
    {
        if (GameObject.FindGameObjectsWithTag("Liquid").Length == 0 && GameObject.FindGameObjectsWithTag("Dust").Length == 0)
        {
            isHouseClean = true;
        }
    }
}
