using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class BaseEvent
{
	/// <summary>
	/// Base class for all events that are tied to a specific GameObject.
	/// </summary>
	public abstract class PositionalBaseEvent : BaseEvent
	{
		public GameObject gameObject { get; private set; }

		protected PositionalBaseEvent(GameObject gameObject)
		{
			this.gameObject = gameObject;
		}
	}
}
