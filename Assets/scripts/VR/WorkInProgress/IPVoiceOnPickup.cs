using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IPVoiceOnPickup : IPFixTransform
{

	[SerializeField]
	string pickUpLine;

	bool playNarrationPickupClipOnce;


	public override void OnPickUp()
	{
		base.OnPickUp();

		if (!playNarrationPickupClipOnce)
		{
			EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(false,pickUpLine));
			playNarrationPickupClipOnce = true;
		}


	}

}
