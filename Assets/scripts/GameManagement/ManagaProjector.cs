using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class ManagaProjector : MonoBehaviour {

	[SerializeField]
	List<Text> uiText;

	private void Awake()
	{
		EventBus.AddListener<MinigameEvents.UpdateWaterUsage>(UpdateUIText);
	}

	private void UpdateUIText (object sender, MinigameEvents.UpdateWaterUsage e)
	{
		uiText[GameManager.currentID].text = e.gameName + " " + (int)e.bestWaterUsage + "L";
	} 

}
