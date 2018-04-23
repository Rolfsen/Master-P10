using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiniGameManager : MonoBehaviour
{

    public static bool isPipeGameRunning = true;
    public static bool isCookingGameRunning = true;
    public static bool isHeadShowerGameRunning = true;
    public static bool isCleaningGameRunning = true;
    public static bool isShowerGameRunning = true;


    private void Awake()
    {
        EventBus.AddListener<MinigameEvents.StartMinigameEvent>(ActivateMinigame);
    }

    private void ActivateMinigame(object sender, MinigameEvents.StartMinigameEvent e)
    {
        Debug.Log("Started Minigame" + GameManager.currentID);
        switch (GameManager.currentID)
        {
            case 0:
                {
                    ResetAll();
                    isHeadShowerGameRunning = true;
                    break;
                }
            case 1:
                {
                    ResetAll();
                    isPipeGameRunning = true;
                    break;
                }
            case 2:
                {
                    ResetAll();
                    CookingGameManager.isPlayingCookingGame = true;
                    isCookingGameRunning = true;
                    break;
                }
            case 3:
                {
                    ResetAll();
                    isCleaningGameRunning = true;
                    break;
                }
            case 4:
                {
                    ResetAll();
                    isShowerGameRunning = true;
                    break;
                }
        }
    }

    private void ResetAll()
    {
        CookingGameManager.isPlayingCookingGame = false;
        isPipeGameRunning = false;
        isCookingGameRunning = false;
        isHeadShowerGameRunning = false;
        isCleaningGameRunning = false;
        isShowerGameRunning = false;

    }
}
