﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinigameEvents : BaseEvent {

	public class GetMinigameDataEvent : MinigameEvents
	{
		public GetMinigameDataEvent(int dataFromID)
		{
			this.dataFromID = dataFromID;
		}

		public int dataFromID { get; private set; }

	}

	public class ChangeActiveMinigameEvent : MinigameEvents
	{
		public ChangeActiveMinigameEvent(int newID)
		{
			this.newID = newID;
		}

		public int newID { get; private set; }
	}

	public class StartMinigameEvent : MinigameEvents
	{

	}

	public class EndMinigamEvent : MinigameEvents
	{

	}

	public class ToggleWaterEvent : MinigameEvents
	{

	}
	
	public class SingleExecuteWaterUsageEvent : MinigameEvents
	{
		public SingleExecuteWaterUsageEvent(int waterAmount, int minigameID)
		{
			this.waterAmount = waterAmount;
			this.minigameID = minigameID;
		}

		public int waterAmount { get; private set;}
		public int minigameID { get; private set;}
	}

	public class GetDateFromMinigame : MinigameEvents
	{
		public GetDateFromMinigame(int id)
		{
			this.id = id;
		}

		public int id { get; private set; }
	}

	public class SendDataFromMinigame : MinigameEvents
	{
		public SendDataFromMinigame(string minigameName, bool replayable, float waterUsed, int id)
		{
			this.minigameName = minigameName;
			this.replayable = replayable;
			this.waterUsed = waterUsed;
			this.id = id;
		}

		public string minigameName { get; private set; }
		public bool replayable { get; private set; }
		public float waterUsed { get; private set; }
		public int id { get; private set; }
	}

	public class UpdateWaterUsage : MinigameEvents
	{
		public UpdateWaterUsage(float bestWaterUsage, string gameName)
		{
			this.bestWaterUsage = bestWaterUsage;
			this.gameName = gameName;
		}

		public float bestWaterUsage { get; private set; }
		public string gameName { get; private set; }
	}
}