using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemPickUp : MonoBehaviour
{

	[SerializeField]
	int minigameIndex;

	//This can replaced with tag strings if desired
	[SerializeField]
	GameObject returnPosition;

	[SerializeField]
	GameObject leaveStartPosition;

 	public bool isItemCarried { get; private set; }

	SimpleInteractions interaction;

	Vector3 startPosition;
	Quaternion startRotation;

	bool isMinigameActive;
	bool leftOuterTrigger; // Prevent the player to return item at pickup




	// Initiation Classes
	public virtual void Awake()
	{
		EventBus.AddListener<MinigameEvents.StartMinigameEvent>(MinigameStarted);
	}

	public virtual void Start()
	{
		startPosition = transform.position;
		startRotation = transform.rotation;
	}

	// Virtual Classes
	public virtual void ItemBehavior()
	{

	}

	public virtual void AdjustLocaleTransform(Transform hand)
	{

	}

	public virtual void ResetItem()
	{
		isItemCarried = false;
		leftOuterTrigger = false;
		if (interaction != null)
		{
			interaction.isHoldingSomething = false;
			interaction = null;
		}
		transform.SetParent(null);

		transform.position = startPosition;
		transform.rotation = startRotation;
	}

	public virtual void OnItemPickup(SimpleInteractions hand, Collider collider)
	{
		interaction = hand;
		isItemCarried = true;
		interaction.isHoldingSomething = true;

		transform.SetParent(collider.transform);
		AdjustLocaleTransform(collider.transform);
	}

	public virtual void OnTriggerStay(Collider other)
	{
		if (isMinigameActive)
		{
			if (other.CompareTag("Player") && !isItemCarried)
			{
				var tmpInteraction = other.GetComponent<SimpleInteractions>();
				if (tmpInteraction.isPressed && tmpInteraction.isHoldingSomething)
				{
					OnItemPickup(tmpInteraction,other);
				}
			}
			else if (other.gameObject == returnPosition && isItemCarried && leftOuterTrigger)
			{
				ResetItem();
			}
		}
	}

	public virtual void OnTriggerExit(Collider other)
	{
		if (isMinigameActive)
		{
			if (other.gameObject == leaveStartPosition)
			{
				leftOuterTrigger = true;
			}
		}
	}

	// Private Classes
	void MinigameStarted(object sender, MinigameEvents.StartMinigameEvent e)
	{
		if (minigameIndex == GameManager.currentID)
		{
			isMinigameActive = true;
		}
		else
		{
			isMinigameActive = false;
		}
	}
}
