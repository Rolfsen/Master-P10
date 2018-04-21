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
        public int numberOfTasks { get; private set; }
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

    //ShowerHeadGame

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

    

    //ShowerGame 
    public class WaterInShowerRunning : GameStateEvent
    {

    }

    public class GettingTheSoap : GameStateEvent
    {

    }

    public class StartCleaningSelf : GameStateEvent
    {

    }

    public class NudgePlayerToGetWet : GameStateEvent
    {

    }

    public class StopCleaningSelf : GameStateEvent
    {

    }
    //cooking Game
	public class PotatoComplete : GameStateEvent
	{

	}

	public class AllPotatoesComplete : GameStateEvent
	{

	}

    public class CookingStart : GameStateEvent
    {

    }

    public class TheSinkIsOn : GameStateEvent
    {

    }

    public class TheSinkIsOff : GameStateEvent
    {

    }
    //cleaning game

    public class VacuumIsBeingHeld : GameStateEvent
    {

    }

    public class VacuumIsNotHeld : GameStateEvent
    {

    }
    public class VacuumCleaningASpot : GameStateEvent
    {

    }
    public class VacuumSpotIsClear : GameStateEvent
    {

    }
    public class VacuumWrongSpot : GameStateEvent
    {

    }

    public class MopIsBeingHeld : GameStateEvent
    {

    }

    public class MopIsNotBeingHeld : GameStateEvent
    {

    }

    public class MopIsCleaning: GameStateEvent
    {

    }
    public class MopSpotClear : GameStateEvent
    {

    }
    public class MopIsDirty : GameStateEvent
    {

    }
    public class MopIsCleanNow : GameStateEvent
    {

    }

    //simpleInteractionsScript

    public class ControllerIsHoldingWrench : GameStateEvent
    {

    }

    public class ControllerIsHoldingOldShowerHead : GameStateEvent
    {

    }

    public class ControllerIsHoldingNewShowerHead : GameStateEvent
    {

    }

    public class ControllerIsHoldingMop : GameStateEvent
    {

    }

    public class ControllerIsHoldingVacuum : GameStateEvent
    {

    }

    public class ControllerIsHoldingSoap : GameStateEvent
    {

    }

    public class ControllerIsHoldingPeeler : GameStateEvent
    {

    }

    public class ControllerIsHoldingPotato : GameStateEvent
    {

    }

    public class ControllerIsNotHoldingWrench : GameStateEvent
    {

    }

    public class ControllerIsNotHoldingOldShowerHead : GameStateEvent
    {

    }

    public class ControllerIsNotHoldingNewShowerHead : GameStateEvent
    {

    }

    public class ControllerIsNotHoldingMop : GameStateEvent
    {

    }

    public class ControllerIsNotHoldingVacuum : GameStateEvent
    {

    }

    public class ControllerIsNotHoldingSoap : GameStateEvent
    {

    }

    public class ControllerIsNotHoldingPeeler : GameStateEvent
    {

    }

    public class ControllerIsNotHoldingPotato : GameStateEvent
    {

    }
}