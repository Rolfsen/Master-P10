using System;
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

	public class StartUpSetTaskVars : GameStateEvent
	{
		public StartUpSetTaskVars(List<string> taskNames)
		{
			this.taskNames = taskNames;
		}

		public List<string> taskNames { get; private set; }
	}

	public class SetWayPointStateEvent : GameStateEvent
	{
		public SetWayPointStateEvent(List<int> activeIDs)
		{
			this.activeIDs = activeIDs;
		}

		public List<int> activeIDs { get; private set; }
	}

    //ShowerGame

    public class ShowerHeadGameStarts : GameStateEvent
    {

    }

    public class ShowerHeadScrewedOffEvent : GameStateEvent
    {

    }
    public class OldShowerHeadInPlacedInBoxEvent : GameStateEvent
    {

    }

    public class NewShowePickedUpEvent : GameStateEvent
    {

    }

    public class NewShowerHeadRightPlaceEvent : GameStateEvent
    {

    }

    public class NewShowerHeadScrewedOnEvent : GameStateEvent
    {

    }

    public class ShowerHeadGameEndsEvent : GameStateEvent
    {

    }

    //PipeGame

    public class PipeGameStartsEvent : GameStateEvent
    {

    }


    public class AfterPickUpWrench : GameStateEvent
    {

    }

    public class APipeIsFixed : GameStateEvent
    {

    }

    public class PipeGameHasEnded : GameStateEvent
    {

    }

    //Cooking Game

    public class CookingStart : GameStateEvent
    {

    }

    public class TheSinkIsOn : GameStateEvent
    {

    }

    public class TheSinkIsOff : GameStateEvent
    {

    }

}