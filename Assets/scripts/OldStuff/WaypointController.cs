using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaypointController : MonoBehaviour {

	[SerializeField]
	int ID = 0;

	BoxCollider col;

	Material mat;

	Renderer rend;

	Color startCol;

	private void Awake()
	{
		EventBus.AddListener<GameStateEvent.SetWayPointStateEvent>(SetActiveState);				
	}

	private void Start()
	{
		col = GetComponent<BoxCollider>();

		rend = GetComponent<Renderer>();
		mat = mat = new Material(rend.materials[0]);
		mat.shader = Shader.Find("Standard");
		rend.materials[0] = mat;
		startCol = rend.material.GetColor("_Color");

	}

	private void SetActiveState (object sender, GameStateEvent.SetWayPointStateEvent e)
	{
		if (e.activeIDs.Contains(ID))
		{
			col.enabled = false;
			rend.material.SetColor("_Color",startCol);
			rend.material.SetColor("_EmissionColor", startCol);

		}
		else
		{
			rend.material.SetColor("_Color", Color.red);
			rend.material.SetColor("_EmissionColor", Color.red);
			col.enabled = true;
		}
	}
}
