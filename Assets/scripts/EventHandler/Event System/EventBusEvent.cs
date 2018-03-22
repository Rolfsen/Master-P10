using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class EventBusEvent
{
	public abstract void Trigger(object sender, BaseEvent e);
}
