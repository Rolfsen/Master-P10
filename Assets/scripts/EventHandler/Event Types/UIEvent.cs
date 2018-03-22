using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public abstract class UIEvent : BaseEvent
{
	public class TestEvent : UIEvent
	{
		public string message { get; private set; }

		public TestEvent(string message)
		{
			this.message = message;
		}
	}
}