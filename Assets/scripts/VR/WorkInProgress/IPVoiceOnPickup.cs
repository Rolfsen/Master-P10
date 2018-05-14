using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IPVoiceOnPickup : IPFixTransform
{

	bool playNarrationPickupClipOnce;

	public override void OnPickUp()
	{
		base.OnPickUp();

		if (!playNarrationPickupClipOnce)
		{

			playNarrationPickupClipOnce = true;
		}


	}

}
