﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public abstract class GameStateEvent : BaseEvent
{
	public class SceneLoadedEvent : GameStateEvent
	{
		public string sceneName { get; private set; }

		public int buildIndex { get; private set; }

		public SceneLoadedEvent(string sceneName, int buildIndex)
		{
			this.sceneName = sceneName;
			this.buildIndex = buildIndex;
		}
	}

	public class WaterUsageUpdated : GameStateEvent
	{
		public WaterUsageUpdated(float bestWaterUsageForTask, float totalWaterUsed, int taskNumber, string taskName, int numberOfTasks)
		{
			this.bestWaterUsageForTask = bestWaterUsageForTask;
			this.totalWaterUsed = totalWaterUsed;
			this.taskNumber = taskNumber;
			this.taskName = taskName;
			this.numberOfTasks = numberOfTasks;
		}

		public float bestWaterUsageForTask { get; private set; }
		public float totalWaterUsed { get; private set; }
		public int taskNumber { get; private set; }
		public string taskName { get; private set; }
		public int numberOfTasks { get; private set;}
	}
}