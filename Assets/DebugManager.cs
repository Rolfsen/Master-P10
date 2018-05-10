using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DebugManager : MonoBehaviour {


    private void Awake()
    {
        EventBus.AddListener<MinigameEvents.StartMinigameEvent>(MinigameStart);
        EventBus.AddListener<MinigameEvents.EndMinigamEvent>(MinigameEnd);
    }

    void MinigameEnd (object sender, MinigameEvents.EndMinigamEvent e)
    {
        print("Minigame Ended" + GameManager.currentID + "sender" + sender.ToString());
        
    }
    void MinigameStart(object sender, MinigameEvents.StartMinigameEvent e)
    {
    }


}
