﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using SpeechLib;


public class Narrator : MonoBehaviour {

	private AudioSource narrator;

	[SerializeField]private AudioClip bath;
	[SerializeField]private AudioClip fixing;

	[SerializeField]
	SpVoice ttsVoice;

	[SerializeField]
	int rate;
	[SerializeField]
	int volume;
	[SerializeField]
	int voiceID;


	private void Awake()
	{
		// Events that trigger narration
		EventBus.AddListener<GamePlayEvent.StartTaskBath>(GoToBathVoice);
		EventBus.AddListener<GamePlayEvent.StartTaskFixing>(GoToFixingVoice);
		EventBus.AddListener<NarrativeEvent.TextToSpeechNarratorEvent>(TextToSpeechTalk);
		narrator = GetComponent<AudioSource>();
	}

	private void Start()
	{
		ttsVoice = new SpVoice();
		ttsVoice.Volume = volume;
		ttsVoice.Rate = rate;
		ttsVoice.Voice = ttsVoice.GetVoices().Item(voiceID);
	}

	private void TextToSpeechTalk (object sender, NarrativeEvent.TextToSpeechNarratorEvent e)
	{
		ttsVoice.Speak(e.text, SpeechVoiceSpeakFlags.SVSFlagsAsync);
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
