﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public abstract class GamePlayEvent : BaseEvent
{
	public class TestEvent : GamePlayEvent
	{
		public Color col { get; private set; }
		public Vector3 vec3 { get; private set; }
		public string stri { get; private set; }

		public TestEvent(Color col, Vector3 vec3, string stri)
		{
			this.col = col;
			this.vec3 = vec3;
			this.stri = stri;
		}
	}
}