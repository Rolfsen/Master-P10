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
}