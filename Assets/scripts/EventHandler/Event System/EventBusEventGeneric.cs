using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class EventBusEvent<T> : EventBusEvent where T : BaseEvent
{
	protected Action<object, T> action;

	public EventBusEvent(Action<object, T> action)
	{
		this.action = action;
	}

	public override void Trigger(object sender, BaseEvent e)
	{
		Trigger(sender, (T)e);
	}

	public bool EventEquals(Action<object, T> other)
	{
		return action.Equals(other);
	}

	protected void Trigger(object sender, T e)
	{
		if (action != null)
		{
			action.Invoke(sender, e);
		}
	}
}
