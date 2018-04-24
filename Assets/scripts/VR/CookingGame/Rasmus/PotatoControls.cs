﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotatoControls : MonoBehaviour
{
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

    bool isCurrentlyCarried;

    bool isPotatoPeeled;
    bool isPotatoClean;

    bool isReady;

    Renderer rend;

    SimpleInteractions controller;
    Transform objectToFollow;

	Vector3 startPos;
	Quaternion startRot;


    private void Start()
    {
        rend = GetComponent<Renderer>();
        rend.material.shader = Shader.Find("DCC/Dissolve V2");
		startPos = transform.position;
		startRot = transform.rotation;
    }

    private void Update()
    {

        if (objectToFollow != null)
        {
            // You can replace this with something VR Friendly 
            transform.position = objectToFollow.position;
            transform.rotation = objectToFollow.rotation;
        }
    }

    private void WashingUnPeeledPotato()
    {
        Debug.Log("Unpeed washing");
        waterCollidedWithPotatoUnPeeled += waterStrength;

    }

    private void WashingPeeledPotato()
    {
        Debug.Log(waterCollidedWithPotatoPeeled + " " + waterNeededForPeeledPotato);
        waterCollidedWithPotatoPeeled += waterStrength;



        if (waterCollidedWithPotatoPeeled >= waterNeededForPeeledPotato)
        {
            isPotatoClean = true;
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (CookingGameManager.isPlayingCookingGame)
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
                    if (isPotatoPeeled && waterCollidedWithPotatoPeeled <= waterNeededForPeeledPotato)
                    {
                        WashingPeeledPotato();
                    }
                    else if (!isPotatoPeeled && waterNeededForUnPeeledPotato < waterCollidedWithPotatoUnPeeled)
                    {
                        WashingUnPeeledPotato();
                    }
                }
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (CookingGameManager.isPlayingCookingGame)
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
                    // Potato is correctly peeled and ready
                    EventBus.TriggerEvent(this, new GameStateEvent.PotatoComplete());

                    controller.isHoldingSomething = false;

                    controller = null;
                    objectToFollow = null;

                    isReady = true;

					transform.position = startPos;
					transform.rotation = startRot;

                    Debug.Log("Potato Done");
                }
                else if (!isPotatoPeeled)
                {
                    Debug.Log("Potato Unpeeled");
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(warningPotatoNotPeeled));
                }
                else if (!isPotatoClean)
                {
                    Debug.Log("Potato unwashed");
                    EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(warningPotatoNotClean));
                }
            }
        }
    }
}