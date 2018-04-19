using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotatoControls : MonoBehaviour
{

	[SerializeField]
	int peels;
	[SerializeField]
	float waterNeededForPeeledPotato;
	[SerializeField]
	float waterNeededForUnPeeledPotato;

	[SerializeField, Multiline]
	string warningPotatoNotPeeled = "You need to peel the potato before it is ready";

	[SerializeField, Multiline]
	string warningPotatoNotClean = "You need to wash the potato with water before it is ready";

	int peeledOff;

	float waterCollidedWithPotatoUnPeeled;
	float waterCollidedWithPotatoPeeled;

	bool isCurrentlyCarried;

	bool isPotatoPeeled;
	bool isPotatoClean;

	bool isReady;


	SimpleInteractions controller;
	Transform objectToFollow;

	private void Update()
	{
		if (objectToFollow != null)
		{
			// You can replace this with something VR Friendly 
			transform.position = objectToFollow.position;
			transform.rotation = objectToFollow.rotation;
		}
	}

	private void OnTriggerStay(Collider other)
	{
		if (isReady)
		{
			// Do nothing
		}
		else if (other.CompareTag("Player") && !isCurrentlyCarried) // Change this with a tag both controllers has
		{
			if (other.GetComponent<SimpleInteractions>().isPressed)
			{
				controller = other.GetComponent<SimpleInteractions>();

				if (!controller.isHoldingSomething)
				{
					isCurrentlyCarried = true;
					controller.isHoldingSomething = true;

					objectToFollow = other.transform;
				}
			}
		}
		else if (other.CompareTag("Water")) // Change with correct tag for water
		{
			if (isCurrentlyCarried)
			{

			}
		}
	}

	private void OnTriggerEnter(Collider other)
	{
		if (isReady)
		{
			// Do Nothing
		}
		else if (other.CompareTag("Peeler") && isCurrentlyCarried && peeledOff < peels)
		{
			if (other.GetComponent<PeelerControls>().isCurrentlyBeingCarried)
			{
				peeledOff++;
				if (peeledOff == peels)
				{
					Debug.Log("The Potato is now peeled");
					isPotatoPeeled = true;
				}
			}
		}
		else if (other.CompareTag("CompletePotatoPlace"))
		{
			if (isPotatoClean && isPotatoPeeled && isCurrentlyCarried)
			{
				// Potato is correctly peeled and ready
				EventBus.TriggerEvent(this, new GameStateEvent.PotatoComplete());

				controller.isHoldingSomething = false;

				controller = null;
				objectToFollow = null;

				isReady = true;
			}
			else if (!isPotatoPeeled)
			{
				EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(warningPotatoNotPeeled));
			}
			else if (!isPotatoClean)
			{
				EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(warningPotatoNotClean));
			}
		}
	}
}
