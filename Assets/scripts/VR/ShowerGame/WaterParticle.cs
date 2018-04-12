using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterParticle : MonoBehaviour {
    [SerializeField]
    private int count = 0;
    public bool isWet = false;
   
    [SerializeField]
    bool rightPlace = false;
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        IsGettingWet();

    }

    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.name == "torso")
        {
            rightPlace = true;
        }
    }

    private void OnTriggerStay(Collider col)
    {
        if(col.gameObject.name == "torso")
        {
            rightPlace = true;
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (col.gameObject.name == "torso")
        {
            rightPlace = false;
        }
    }

    void IsGettingWet()
    {
        if(rightPlace == true)
        { 
            
            //PUT THE WATER HERE, HOW MUCH HE USES
            count++;
            if (count > 100)
            {
                isWet = true;
                //gameObject.SetActive(false);
                //GUY IS WET;
                Debug.Log("i am wet now");
                count = 0;
            }
        }
    }
}
