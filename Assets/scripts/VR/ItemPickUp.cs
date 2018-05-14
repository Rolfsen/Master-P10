using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemPickUp : MonoBehaviour
{

	SimpleInteractions interaction;

	public bool isItemCarried { get; private set; }

	Vector3 startPosition;
	Quaternion startRotation;

	bool isMinigameActive;

	[SerializeField]
	int minigameIndex;

	[SerializeField]
	GameObject returnPosition;

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

	public virtual void AdjustLocaleTransform()
	{

	}

	public virtual void ResetItem()
	{
		isItemCarried = false;
		if (interaction != null)
		{
			interaction.isHoldingSomething = false;
			interaction = null;
		}

		transform.position = startPosition;
		transform.rotation = startRotation;
	}

	public virtual void OnTriggerStay(Collider other)
	{
		if (isMinigameActive)
		{
			if (other.CompareTag("Player") && !isItemCarried)
			{
				var tmpInteraction = GetComponent<SimpleInteractions>();
				if (tmpInteraction.isPressed && tmpInteraction.isHoldingSomething)
				{
					interaction = tmpInteraction;
					isItemCarried = true;



					transform.SetParent(other.transform);
					AdjustLocaleTransform();
				}
			}
			else if (other.gameObject == returnPosition && isItemCarried && interaction != null)
			{
				if (interaction.isPressed)
				{
					ResetItem();
				}
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
