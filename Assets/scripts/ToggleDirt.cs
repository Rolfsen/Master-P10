using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToggleDirt : MonoBehaviour
{
	[SerializeField]
	int disableID;

	[SerializeField]
	GameObject objectToToggle;

	private void Awake()
	{
		EventBus.AddListener<MinigameEvents.UpdatedCurrentID>(UpdateGameObjectActive);
	}


	void UpdateGameObjectActive(object sender, MinigameEvents.UpdatedCurrentID e)
	{
		if (GameManager.currentID == disableID)
		{
			objectToToggle.SetActive(true);
		}
		else
		{
			objectToToggle.SetActive(false);
		}
	}
}