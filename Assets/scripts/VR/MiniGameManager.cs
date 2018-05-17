using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiniGameManager : MonoBehaviour
{

    public static bool isPipeGameRunning;
    public static bool isCookingGameRunning;
    public static bool isHeadShowerGameRunning;
    public static bool isCleaningGameRunning;
    public static bool isShowerGameRunning;
    public static bool isToiletGameRunning;
    public static bool isFlowerWateringGameRunning;
   
    [SerializeField] bool DebugMode;

    private void Awake()
    {
        if (!DebugMode)
        {
            ResetAll();
        }
        EventBus.AddListener<MinigameEvents.StartMinigameEvent>(ActivateMinigame);
        EventBus.AddListener<MinigameEvents.UpdatedCurrentID>(ActivateWaypoint);
    }

    private void ActivateWaypoint (object sender, MinigameEvents.UpdatedCurrentID e)
    {
        switch (GameManager.currentID)
        {
            case 0:
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> { 2, 3 }));
                    break;
                }
            case 1:
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> { 1, 2, 4 }));
                    break;
                }
            case 2:
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> { 0, 1, 5 }));

                    break;
                }
            case 3:
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> { 1, 5, 9 }));
                    break;
                }
            case 4:
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> { 2, 3 }));

                    break;
                }
            case 5:
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> { 1,2,5,7 }));
                    ResetAll();
                    break;
                }
            case 6:
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> { 0,8 }));
                    break;
                }
            case -1:
                {
                    EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> {3,2,1,6}));
                    break;
                }
        }

    }

    private void ActivateMinigame(object sender, MinigameEvents.StartMinigameEvent e)
    {
        switch (GameManager.currentID)
        {
            case 0:
                {
                    ResetAll();
                    isHeadShowerGameRunning = true;
                   // EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> {2,3}));
                    break;
                }
            case 1:
                {
                    ResetAll();
                    isPipeGameRunning = true;
                   // EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> {1, 2, 4 }));
                    break;
                }
            case 2:
                {
                    ResetAll();
                    CookingGameManager.isPlayingCookingGame = true;
                    isCookingGameRunning = true;
                   // EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> { 0, 1, 5 }));

                    break;
                }
            case 3:
                {
                    ResetAll();
                    isCleaningGameRunning = true;
                    //EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> { 1, 5, 6 }));

                    break;
                }
            case 4:
                {
                    ResetAll();
                    isShowerGameRunning = true;
                   // EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> { 2,3}));

                    break;
                }
            case 5:
                {
                    ResetAll();
                    isToiletGameRunning = true;
                  EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> {}));

                    break;
                }
            case 6:
                {
                    ResetAll();
                    isFlowerWateringGameRunning = true;
                    //EventBus.TriggerEvent(this, new GameStateEvent.SetWayPointStateEvent(new List<int> {0 ,1,2, 5}));

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
        isFlowerWateringGameRunning = false;

    }
}
