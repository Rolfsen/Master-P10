using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotatoNewArea : MonoBehaviour {
    [SerializeField]
    int count = 0;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerEnter(Collider col)
        {
            if(col.gameObject.tag == "PeeledPotato" && col.gameObject.GetComponent<PotatoInteractions>().isCleanedDone == true)
            {
            count++;
            if(count==3)
            {
                Debug.Log("Game is won");
            }
            }
        }
    }
