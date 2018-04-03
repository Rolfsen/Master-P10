using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public abstract class NarrativeEvent : BaseEvent
{
	public class TextToSpeechNarratorEvent : NarrativeEvent
	{
		public TextToSpeechNarratorEvent(string text)
		{
			this.text = text;
		}

		public string text { get; private set; }
				
	}
}