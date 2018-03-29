using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Narrator : MonoBehaviour {

	private AudioSource narrator;

	[SerializeField]private AudioClip bath;
	[SerializeField]private AudioClip fixing;


	private void Awake()
	{
		// Events that trigger narration
		EventBus.AddListener<GamePlayEvent.StartTaskBath>(GoToBathVoice);
		EventBus.AddListener<GamePlayEvent.StartTaskFixing>(GoToFixingVoice);
		narrator = GetComponent<AudioSource>();
	}

	private void GoToBathVoice(object sender, GamePlayEvent.StartTaskBath e)
	{
		PlaySound(bath);
	}

	private void GoToFixingVoice(object sender, GamePlayEvent.StartTaskFixing e)
	{
		PlaySound(fixing);				
	}

	private void PlaySound (AudioClip clip)
	{

		narrator.clip = clip;
		narrator.Play();
	}


}
