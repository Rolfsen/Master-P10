using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IAlsoRecieveEvent : MonoBehaviour {


	private void Awake()
	{
		EventBus.AddListener<GamePlayEvent.TestEvent>(EventRecieved);
		EventBus.AddListener<GamePlayEvent.TestEvent2>(EventReciev2);
	}


	public void EventReciev2(object sender, GamePlayEvent.TestEvent2 e)
	{

	}


	private void EventRecieved(object sender, GamePlayEvent.TestEvent e)
	{
		transform.position = e.vec3;
	}
}
