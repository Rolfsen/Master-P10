using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IPVoiceOnPickup : IPFixTransform
{

	[SerializeField]
	string pickUpLine;

	bool playNarrationPickupClipOnce;


	/*	public override void OnItemPickup(SimpleInteractions hand, Collider collider)
		{
			base.OnItemPickup(hand,collider);

			if (!playNarrationPickupClipOnce)
			{
				EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(false,pickUpLine));
				playNarrationPickupClipOnce = true;
			}

		}*/

	public override void OnItemPickup(SimpleInteractions hand, Collider collider)
	{
		base.OnItemPickup(hand, collider);
		if (!playNarrationPickupClipOnce)
		{
			EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(false, pickUpLine));
			playNarrationPickupClipOnce = true;
		}
	}

}
