using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class SingleFireEventBusEvent<T> : EventBusEvent<T> where T : BaseEvent
{
	public SingleFireEventBusEvent(Action<object, T> action) : base(action) { }

	public override void Trigger(object sender, BaseEvent e)
	{
		base.Trigger(sender, e);

		EventBus.RemoveSingleFireListener(action);
	}
}
