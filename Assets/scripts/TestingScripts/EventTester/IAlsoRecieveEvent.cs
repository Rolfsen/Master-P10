using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IAlsoRecieveEvent : MonoBehaviour {


	private void Awake()
	{
		EventBus.AddListener<GamePlayEvent.TestEvent>(EventRecieved);
	}


	private void EventRecieved(object sender, GamePlayEvent.TestEvent e)
	{
		transform.position = e.vec3;
	}
}
