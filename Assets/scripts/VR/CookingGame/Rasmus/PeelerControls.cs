using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PeelerControls : MonoBehaviour
{

    public bool isCurrentlyBeingCarried;


    SimpleInteractions controller;
    Transform followController;

    bool waitForPeeler = false;

    bool playingCookingGame;

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
    }

    void WaitForPlayerToPutDownPeeleder(object sender, GameStateEvent.AllPotatoesComplete e)
    {
        waitForPeeler = true;
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

                if (waitForPeeler)
                {
                    CookingGameManager.isPlayingCookingGame = false;
                    EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
                    Debug.Log("Game Is Done");
                }
            }
        }
    }
}

