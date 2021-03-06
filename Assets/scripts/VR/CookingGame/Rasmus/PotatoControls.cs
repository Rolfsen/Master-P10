﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotatoControls : MonoBehaviour
{

	[SerializeField]
	Transform leftHandGrip;

	[SerializeField]
	Transform rightHandGrip;

	Vector3 offsetVector;

	bool isHold;

	[SerializeField]
	Transform leftHand;

	[SerializeField]
	Transform rightHand;

	Transform usingTrans;

	Vector3 offset;

	GameObject holdingHand;


	[SerializeField]
	List<float> dissolveValues;
	[SerializeField]
	int peels = 3;
	[SerializeField]
	float waterNeededForPeeledPotato = 1f;
	[SerializeField]
	float waterNeededForUnPeeledPotato = 2f;
	[SerializeField]
	float waterStrength = 0.5f;

	[SerializeField, Multiline]
	string warningPotatoNotPeeled = "You need to peel the potato before it is ready";

	[SerializeField, Multiline]
	string warningPotatoNotClean = "You need to wash the potato with water before it is ready";

	int peeledOff;

	float waterCollidedWithPotatoUnPeeled;
	float waterCollidedWithPotatoPeeled;

	public bool isCurrentlyCarried;

	public bool isPotatoPeeled;
	bool isPotatoClean;

	bool potatoIsDone;

	bool warningCooldown;

	bool halfClean;
	bool changedToCompletlyCleanMaterial;

	Renderer rend;

	SimpleInteractions controller;
	Transform objectToFollow;

	Vector3 startPos;
	Quaternion startRot;

	[SerializeField]
	Material potatoAllDirty;

	[SerializeField]
	Material potatoAllClean;

	[SerializeField]
	Material potatoHalfClean;

	[SerializeField]
	AudioSource musicSource;
	[SerializeField]
	AudioClip musicClip;
	[SerializeField]
	float cooldownTime = 2;
	private void Start()
	{
		potatoAllClean = new Material(potatoAllClean);
		potatoHalfClean = new Material(potatoHalfClean);
		potatoAllDirty = new Material(potatoAllDirty);

		rend = GetComponent<Renderer>();
		rend.material = potatoAllDirty;
		rend.material.shader = Shader.Find("DCC/Dissolve V2");
		startPos = transform.position;
		startRot = transform.rotation;
		musicSource.clip = musicClip;
	}

	private void WashingUnPeeledPotato()
	{
		waterCollidedWithPotatoUnPeeled += waterStrength * Time.deltaTime;
		if (waterCollidedWithPotatoUnPeeled > waterNeededForUnPeeledPotato && !halfClean)
		{
			rend.material = potatoHalfClean;
			rend.material.SetFloat("_DissolveAmount", dissolveValues[peeledOff]);
			halfClean = true;
		}
	}

	private void WashingPeeledPotato()
	{
		waterCollidedWithPotatoPeeled += waterStrength * Time.deltaTime;
		if (waterCollidedWithPotatoPeeled >= waterNeededForPeeledPotato && !changedToCompletlyCleanMaterial)
		{
			isPotatoClean = true;
			rend.material = potatoAllClean;
			rend.material.SetFloat("_DissolveAmount", dissolveValues[3]);
			EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(false, "Alright, that potato is peeled and clean, now put it back into the bowl."));
		}
	}

	private void OnTriggerStay(Collider other)
	{
		if (CookingGameManager.isPlayingCookingGame)
		{
			if (potatoIsDone)
			{
				// Do nothing
			}
			else if (other.CompareTag("Player") && !isCurrentlyCarried)
			{
				var tmpInteraction = other.GetComponent<SimpleInteractions>();
				if (tmpInteraction.isPressed && !tmpInteraction.isHoldingSomething)
				{
					controller = tmpInteraction;

					if (other.GetComponent<TestingGrippingHand>().isLeftHand)
					{
						offsetVector = leftHandGrip.position;
						usingTrans = leftHand;

					}
					else
					{
						offsetVector = rightHandGrip.position;
						usingTrans = rightHand;
					}

					offset = (usingTrans.position - other.transform.position) + (offsetVector - transform.position);

					transform.position = other.transform.position - offset;

					isCurrentlyCarried = true;
					controller.isHoldingSomething = true;
					holdingHand = other.gameObject;
					transform.SetParent(holdingHand.transform);
					transform.localEulerAngles = new Vector3(0, 0, -90f);
					other.GetComponent<TestingGrippingHand>().HoldObject();

				}
			}
			else if (other.CompareTag("Water")) // Change with correct tag for water
			{
				if (isCurrentlyCarried)
				{
					if (isPotatoPeeled && waterCollidedWithPotatoPeeled <= waterNeededForPeeledPotato)
					{
						WashingPeeledPotato();
					}
					else if (!isPotatoPeeled && waterCollidedWithPotatoUnPeeled < waterNeededForUnPeeledPotato)
					{
						WashingUnPeeledPotato();
					}
				}
			}
		}
	}

	private void ReturnToStart()
	{

		controller.isHoldingSomething = false;

		controller = null;
		objectToFollow = null;

		transform.parent = null;
		//isReady = true;

		transform.position = startPos;
		transform.rotation = startRot;
	}

	private void OnTriggerEnter(Collider other)
	{
		if (CookingGameManager.isPlayingCookingGame)
		{
			if (potatoIsDone)
			{
				// Do Nothing
			}
			else if (other.CompareTag("Peeler") && isCurrentlyCarried && peeledOff < peels)
			{
				if (other.GetComponent<PeelerControls>().isCurrentlyBeingCarried)
				{
					peeledOff++;
					musicSource.Play();

					if (peeledOff == peels)
					{
						rend.material.SetFloat("_DissolveAmount", dissolveValues[3]);
						isPotatoPeeled = true;
					}
					else
					{
						rend.material.SetFloat("_DissolveAmount", dissolveValues[peeledOff]);
					}
				}
			}
			else if (other.CompareTag("PotatoPlace"))
			{
				if (isPotatoClean && isPotatoPeeled && isCurrentlyCarried)
				{
					EventBus.TriggerEvent(this, new GameStateEvent.PotatoComplete());
					ReturnToStart();
					potatoIsDone = true;

				}
				else if (!isPotatoPeeled && !warningCooldown)
				{
					ReturnToStart();
					isCurrentlyCarried = false;
					StartCoroutine(WarningCooldown());
					EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(false, warningPotatoNotPeeled));
				}
				else if (!isPotatoClean && !warningCooldown)
				{
					ReturnToStart();
					isCurrentlyCarried = false;
					StartCoroutine(WarningCooldown());
					EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(false, warningPotatoNotClean));
				}
			}
		}
	}

	private void OnTriggerExit(Collider other)
	{
		if (CookingGameManager.isPlayingCookingGame)
		{
			if (other.CompareTag("Peeler") && isCurrentlyCarried && peeledOff < peels)
			{
				musicSource.Stop();
			}
		}
	}

	IEnumerator WarningCooldown()
	{
		warningCooldown = true;
		yield return new WaitForSeconds(cooldownTime);
		warningCooldown = false;
	}
}