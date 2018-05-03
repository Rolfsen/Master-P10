using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PeelerControls : MonoBehaviour
{
    [SerializeField]
    SinkHandler sinkHandler;

    public bool isCurrentlyBeingCarried;

    [SerializeField]
    ParticleSystem potatoParticleSystem;


    SimpleInteractions controller;
    Transform followController;

    bool waitForPeeler = false;

    bool playingCookingGame;

    bool isWaitingForTurningWater;
    bool endGameOnce;

    Vector3 startPos;
    Quaternion startRot;

    private void Awake()
    {
        EventBus.AddListener<GameStateEvent.AllPotatoesComplete>(WaitForPlayerToPutDownPeeleder);
    }

    private void Start()
    {
        startPos = transform.position;
        startRot = transform.rotation;
    }


    private void Update()
    {
        if (followController != null)
        {
            // You can replace this with something VR Friendly 
            transform.position = followController.position;
            transform.rotation = followController.rotation;
        }
        if (isWaitingForTurningWater && !endGameOnce && !sinkHandler.isWaterRunning)
        {
            CookingGameManager.isPlayingCookingGame = false;
            EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
            endGameOnce = true;
        }
        /*if (CookingGameManager.isCookingDone)
        {
            ResetToStartPosition();
        }*/
    }

    private void ResetToStartPosition()
    {
        transform.position = startPos;
        transform.rotation = startRot;
    }
    void WaitForPlayerToPutDownPeeleder(object sender, GameStateEvent.AllPotatoesComplete e)
    {
        if (controller == null && !sinkHandler.isWaterRunning)
        {
            CookingGameManager.isPlayingCookingGame = false;
            EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
        }
        else if (controller != null)
        {
            waitForPeeler = true;
        }
        else if (controller == null && sinkHandler.isWaterRunning)
        {
            isWaitingForTurningWater = true;
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (CookingGameManager.isPlayingCookingGame)
        {
            if (other.CompareTag("Player"))
            {
                if (other.GetComponent<SimpleInteractions>().isPressed)
                {
                    controller = other.GetComponent<SimpleInteractions>();
                    if (!controller.isHoldingSomething && !isCurrentlyBeingCarried)
                    {
                        controller.isHoldingSomething = true;
                        isCurrentlyBeingCarried = true;
                        followController = other.transform;
                    }
                }
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (CookingGameManager.isPlayingCookingGame)
        {
            if (other.CompareTag("PeelerPlace") && isCurrentlyBeingCarried)
            {
                followController = null;
                controller.isHoldingSomething = false;
                isCurrentlyBeingCarried = false;

                transform.position = startPos;
                transform.rotation = startRot;

                if (waitForPeeler && !sinkHandler.isWaterRunning)
                {
                    CookingGameManager.isPlayingCookingGame = false;
                    EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
                }
                else if (waitForPeeler && sinkHandler.isWaterRunning)
                {
                    isWaitingForTurningWater = true;
                }
            }
            else if (other.CompareTag("Potato") && isCurrentlyBeingCarried)
            {
                if (!other.GetComponent<PotatoControls>().isPotatoPeeled)
                {
                    potatoParticleSystem.Play();
                }
            }

        }
    }
}

