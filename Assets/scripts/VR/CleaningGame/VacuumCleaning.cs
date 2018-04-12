using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VacuumCleaning : MonoBehaviour {
    [SerializeField]
    int count = 0;
    Collider colin;
    bool correctSurface = false;
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        IsOnRightSurface();

    }
    void IsOnRightSurface()
    {
        if (correctSurface == true)
        {
            count++;
            if (count > 50)
            {

                colin.gameObject.SetActive(false);
            }
        }
    }
    private void OnTriggerStay(Collider col)
    {
        if (col.gameObject.tag == "Dust")
        {
            correctSurface = true;
            Debug.Log("i am touching something");
            colin = col;
        }

        if(col.gameObject.tag == "Liquid")
        {
            //MAKE BAD THINGS HAPPEN
        }
    }
    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "Dust" || col.gameObject.tag == "Liquid")
        {
            correctSurface = true;
            colin = col;
        }
    }
}
