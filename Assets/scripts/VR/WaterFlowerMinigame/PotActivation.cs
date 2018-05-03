using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotActivation : MonoBehaviour {
    [SerializeField]
    GameObject pot;
	void Awake () {
        pot.SetActive(false);
	}
    
    void Update()
    {
        if (MiniGameManager.isFlowerWateringGameRunning)
        {
            pot.SetActive(true);
        }
    }
}
