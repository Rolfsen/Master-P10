using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUpPot : MonoBehaviour
{

	[SerializeField]
	bool isBeingCarried;

	[SerializeField]
	Vector3 offset;

	[SerializeField]
	string putThePotBackText;

	[SerializeField]
	string pickThePotUpText;

	[SerializeField]
	string PourTheWaterOnPlantText;

	float startY;
	bool playingAnim;
	bool haveFlowerBeenWatered;

	Quaternion startRot;
	Transform hand;
	Animator anim;

	private void Awake()
	{
		EventBus.AddListener<MinigameEvents.StartMinigameEvent> (MinigameStarted);
	}

	private void Start()
	{
		startRot = transform.rotation;
		startY = transform.position.y;
		anim = GetComponent<Animator>();

		playingAnim = true;
	}

	void MinigameStarted (object sender, MinigameEvents.StartMinigameEvent e)
	{
		if (MiniGameManager.isFlowerWateringGameRunning)
		{
			EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(pickThePotUpText));
		}
	}

	private void Update()
	{
		if (isBeingCarried && !playingAnim && MiniGameManager.isFlowerWateringGameRunning)
		{
			transform.position = hand.position + offset;
			transform.rotation = hand.rotation;
		}
		else if (playingAnim)
		{
			if (anim.GetCurrentAnimatorStateInfo(0).IsName("Empty"))
			{
				playingAnim = false;
				EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(putThePotBackText)); 
			}
			else if (anim.GetCurrentAnimatorStateInfo(0).IsName("StayStill"))
			{
				SpawnParticles();
			}
		}
	}

	private void OnTriggerEnter(Collider other)
	{
		if (MiniGameManager.isFlowerWateringGameRunning)
		{
			switch (other.tag)
			{
				case ("Player"):
					{
						PlayerCol(other);
						break;
					}
				case ("Table"):
					{
						TableCol(other);
						break;
					}
				case ("Flower"):
					{
						FlowerCol(other);
						break;
					}
			}
		}
	}

	void PlayerCol(Collider player)
	{
		if (!isBeingCarried)
		{
			isBeingCarried = true;
			hand = player.transform;
		}
	}

	void TableCol(Collider Table)
	{
		if (isBeingCarried)
		{
			isBeingCarried = false;
			transform.position = new Vector3(Table.transform.position.x, startY, Table.transform.position.z);
			transform.rotation = startRot;
			hand = null;
			if (haveFlowerBeenWatered)
			{
				EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
			}
		}
	}

	void FlowerCol(Collider flower)
	{
		playingAnim = true;
		haveFlowerBeenWatered = true;
		anim.SetBool("AnimStart",true);
	}

	void SpawnParticles ()
	{
		// If we want particles let it happen here
		Debug.LogError("WHY Y NO SPAWN PARTICLES");
	}

}
