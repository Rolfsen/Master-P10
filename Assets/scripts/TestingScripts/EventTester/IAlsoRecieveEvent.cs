using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IAlsoRecieveEvent : MonoBehaviour {

	int myIndex;
	Renderer rend;

	private void Awake()
	{
		EventBus.AddListener<GamePlayEvent.TestEvent>(EventRecieved);
		rend = GetComponent<Renderer>();
	}


	private void EventRecieved(object sender, GamePlayEvent.TestEvent e)
	{
		transform.position = e.vec3;
	}
}
