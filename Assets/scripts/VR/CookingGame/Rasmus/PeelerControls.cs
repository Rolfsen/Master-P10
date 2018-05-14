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

	bool isReadyToReturnToPeelerPlace;

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

	}

	private void ResetToStartPosition()
	{
		transform.position = startPos;
		transform.rotation = startRot;
	}
	void WaitForPlayerToPutDownPeeleder(object sender, GameStateEvent.AllPotatoesComplete e)
	{

		isWaitingForTurningWater = true;

		isReadyToReturnToPeelerPlace = false;
		followController = null;
		isCurrentlyBeingCarried = false;
		ResetToStartPosition();
		if (controller != null)
		{
			controller.isHoldingSomething = false;
		}
	}

	private void OnTriggerStay(Collider other)
	{
		if (CookingGameManager.isPlayingCookingGame)
		{
			if (other.CompareTag("Player"))
			{
				var tmpInteraction = other.GetComponent<SimpleInteractions>();
				if (tmpInteraction.isPressed && !tmpInteraction.isHoldingSomething && !isCurrentlyBeingCarried)
				{
					controller = tmpInteraction;
					controller.isHoldingSomething = true;
					isCurrentlyBeingCarried = true;
					followController = other.transform;

				}
			}
		}
	}

	private void OnTriggerEnter(Collider other)
	{
		if (CookingGameManager.isPlayingCookingGame)
		{
			if (other.CompareTag("PeelerPlace") && isCurrentlyBeingCarried && isReadyToReturnToPeelerPlace)
			{
				isReadyToReturnToPeelerPlace = false;
				followController = null;
				controller.isHoldingSomething = false;
				isCurrentlyBeingCarried = false;

				transform.position = startPos;
				transform.rotation = startRot;

			}
			else if (other.CompareTag("Potato") && isCurrentlyBeingCarried)
			{
				if (!other.GetComponent<PotatoControls>().isPotatoPeeled && other.GetComponent<PotatoControls>().isCurrentlyCarried)
				{
					controller.SingleVibrationPulse(500);
					potatoParticleSystem.Play();
				}
			}

		}
	}

	private void OnTriggerExit(Collider other)
	{
		if (other.CompareTag("PeelerPlaceExit"))
		{
			isReadyToReturnToPeelerPlace = true;
		}
	}
}

