using System;
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

	public class TestEvent2 : GamePlayEvent
	{
		public int myInt { get; private set;}

		public TestEvent2 (int myInt)
		{
			this.myInt = myInt;
		}
	}

	public class TestEvent3: GamePlayEvent
	{

	}

	public class TaskComplete : GamePlayEvent
	{
		public TaskComplete(int taskNumber, float waterUsed, string taskName)
		{
			this.taskNumber = taskNumber;
			this.waterUsed = waterUsed;
			this.taskName = taskName;
		}

		public int taskNumber { get; private set; }
		public float waterUsed { get; private set; }
		public string taskName { get; private set; }
	} 
}