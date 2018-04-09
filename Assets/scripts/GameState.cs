using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class  GameState : MonoBehaviour {

	public static int currentMinigameID;
	public static string currentMinigameName;
	public static bool isMinigameRunning;


	private void Awake()
	{
		currentMinigameID = 0;
		currentMinigameName = "Installing Shower Head";
		isMinigameRunning = false;
	}
}
