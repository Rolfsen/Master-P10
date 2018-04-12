using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class  GameState : MonoBehaviour {

	public static int currentMinigameID;
	public static string currentMinigameName;
	public static bool isMinigameRunning;

	[SerializeField]public List<bool> replayableMinigame;
	private List<bool> replayedMinigames;

	List<string> minigameNames;


	int prevID;
	string prevName;
	bool prevState;

	private void Awake()
	{
		currentMinigameID = 0;
	//	UpdateCurrentMinigame();
	}

	/*void UpdateCurrentMinigame ()
	{
		currentMinigameName = minigameNames[currentMinigameID];
		isMinigameRunning = false;
	}*/

	//TODO DELETE THIS
	private void Update()
	{
		if (currentMinigameID != prevID)
		{
			Debug.LogWarning("Minigame ID changed from" + prevID + " too" + currentMinigameID);
		}
		if (currentMinigameName!= prevName)
		{
			Debug.LogWarning("Minigame Name changed from" + prevName + " too" + currentMinigameName);
		}
		if (isMinigameRunning != prevState)
		{
			Debug.LogWarning("Minigame state changed from" + prevState+ " too" + isMinigameRunning);
		}

		prevName = currentMinigameName;
		prevID = currentMinigameID;
		prevState = isMinigameRunning;
	}
}
