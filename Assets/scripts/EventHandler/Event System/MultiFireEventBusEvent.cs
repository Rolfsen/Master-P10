using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class MultiFireEventBusEvent<T> : EventBusEvent<T> where T : BaseEvent
{
	public MultiFireEventBusEvent(Action<object, T> action) : base(action) { }
}
