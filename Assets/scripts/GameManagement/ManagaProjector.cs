using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class ManagaProjector : MonoBehaviour {

	[SerializeField]
	List<Text> uiText;

	int index = 0;

	private void Awake()
	{
		EventBus.AddListener<MinigameEvents.UpdateWaterUsage>(UpdateUIText);
	}

	private void UpdateUIText (object sender, MinigameEvents.UpdateWaterUsage e)
	{
		uiText[index].text = e.gameName + " " + (int)e.bestWaterUsage + "L";
		index++;
	} 
}
