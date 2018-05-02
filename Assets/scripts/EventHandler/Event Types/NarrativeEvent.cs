using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public abstract class NarrativeEvent : BaseEvent
{
	public class TextToSpeechNarratorEvent : NarrativeEvent
	{
        public TextToSpeechNarratorEvent(bool replayable, string text)
        {
            this.replayable = replayable;
            this.text = text;
        }

        public bool replayable { get; private set; }
		public string text { get; private set; }
				
	}
}