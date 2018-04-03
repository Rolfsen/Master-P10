using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using SpeechLib;


public class TTS : MonoBehaviour {

	[SerializeField]
	string text;

	[SerializeField]
	int rate;

	[SerializeField]
	int volume;

	SpVoice v;


	private void Start()
	{
		v = new SpVoice();
		Debug.Log(v.GetVoices().Count);

		volume = v.Volume;
		rate = v.Rate;


	}

	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.W))
		{
			v.Volume = volume;
			v.Rate = rate;

			for (int i = 0; i < v.GetVoices().Count; i++)
			{
				v.Voice = v.GetVoices().Item(i);
				v.Speak(text,SpeechVoiceSpeakFlags.SVSFlagsAsync);
			}

		}
	}
}