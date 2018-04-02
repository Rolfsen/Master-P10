using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaypointController : MonoBehaviour {

	[SerializeField]
	int ID;
	[SerializeField]
	bool active;

	private void Awake()
	{
		EventBus.AddListener<GameStateEvent.SetWayPointStateEvent>(SetActiveState);				
	}

	private void SetActiveState (object sender, GameStateEvent.SetWayPointStateEvent e)
	{
		if (e.activeIDs.Contains(ID))
		{
			active = false;
		}
		else
		{
			active = true;
		}
	}
}
