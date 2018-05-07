using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToiletButton : MonoBehaviour
{
	[SerializeField]
	float waterUsedOnPress = 1;

	[SerializeField]
	float waitTime = 2;

	List<SimpleInteractions> interaction;
    [SerializeField]
    AudioClip musicClip;
    [SerializeField]
    AudioSource musicSource;
	bool haveToiletbeenFlushed = false;
    private void Start()
    {
        musicSource.clip = musicClip;
    }
    IEnumerator WaitForFlush()
	{
		yield return new WaitForSeconds(2);
		EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
	}

	private void OnTriggerStay(Collider other)
	{
		if (MiniGameManager.isToiletGameRunning)
		{
			if (other.CompareTag("Player") && !haveToiletbeenFlushed)
			{
				if (other.GetComponent<SimpleInteractions>().isPressed)
				{
					haveToiletbeenFlushed = true;
                    // Play flushing sound;
                    musicSource.Play();
					StartCoroutine(WaitForFlush());
				}
			}
		}
	}
}
