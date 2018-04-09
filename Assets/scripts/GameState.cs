using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class  GameState : MonoBehaviour {

	public static int currentMinigameID;
	public static string currentMinigameName;
	public static bool isMinigameRunning;

	int prevID;
	string prevName;
	bool prevState;

	private void Awake()
	{
		currentMinigameID = 0;
		currentMinigameName = "Installing Game";
		isMinigameRunning = false;
	}

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
