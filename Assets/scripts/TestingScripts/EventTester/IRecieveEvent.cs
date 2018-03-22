using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IRecieveEvent : MonoBehaviour {

	int myIndex;
	Renderer rend;

	private void Awake()
	{
		EventBus.AddListener<GamePlayEvent.TestEvent>(EventRecieved);
		rend = GetComponent<Renderer>();
	}

	private void EventRecieved (object sender, GamePlayEvent.TestEvent e)
	{
		Debug.Log(e.stri);
		rend.material.color = e.col;
	}
}
//		EventBus.AddListener<UIEvent.ToggleGodMode>(OnUpdateText);
