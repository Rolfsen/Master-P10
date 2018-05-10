using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CollideWithPlayerVibration : MonoBehaviour
{

	[SerializeField]
	int typeOfVibration;
	[SerializeField]
	ushort minPower;
	[SerializeField]
	ushort maxPower;
	[SerializeField]
	float duration;
	[SerializeField]
	float timeBetweenPulses;
	[SerializeField]
	AnimationCurve powerCurve;

    [SerializeField]
	SimpleInteractions leftHand;
    [SerializeField]
    SimpleInteractions rightHand;

    SimpleInteractions playerHand;

	private void OnTriggerStay(Collider other)
	{
		if (other.CompareTag("Player"))
		{

            playerHand = other.GetComponent<SimpleInteractions>();
            if (!playerHand.isVibrationRunning )
			{
				switch (typeOfVibration)
				{
					case 0:
						{
							playerHand.SingleVibrationPulse(maxPower);
							break;
						}
					case 1:
						{
							playerHand.AnimTimeBasedVibration(maxPower, duration, timeBetweenPulses, powerCurve);
							break;
						}
					case 2:
						{
							playerHand.RandomIntensityBasedVibration(minPower, maxPower, duration, timeBetweenPulses);
							break;
						}
				}
			}
		}
        else if (other.CompareTag("TemparyHand"))
        {
            other.GetComponentInParent<SimpleInteractions>().RandomIntensityBasedVibration(minPower, maxPower, duration, timeBetweenPulses);
        }
	}
}
