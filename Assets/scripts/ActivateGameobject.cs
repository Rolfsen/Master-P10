using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActivateGameobject : MonoBehaviour {

	[SerializeField]
	List<GameObject> targetGameobjects;

	public void DisableTarget(int index)
	{
		targetGameobjects[index].SetActive(false);
	}
	public void EnableTarget(int index)
	{
		targetGameobjects[index].SetActive(true);
	}
}
