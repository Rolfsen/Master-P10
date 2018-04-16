using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VacuumCleaning : MonoBehaviour {
    [SerializeField]
    int count = 0;
    Collider colin;
    bool correctSurface = false;
    bool wrongSurface = false;
    [SerializeField]
    GameObject dustObject;
    VacuumHandler vacuumHandler;
    
    // Use this for initialization
    void Start()
    {
        vacuumHandler = gameObject.GetComponent<VacuumHandler>();
    }

    // Update is called once per frame
    void Update()
    {
        IsOnRightSurface();
        IsNotOnRightSurface();

    }
    void IsOnRightSurface()
    {
        if (correctSurface == true && vacuumHandler.isControllerPressed == true)
        {
            count++;
            if (count > 50)
            {

                colin.gameObject.SetActive(false);
                count = 0;
            }
        }
    }

    void IsNotOnRightSurface()
    {
        if (wrongSurface == true)
        {
            count++;
            if (count > 50)
            {
                Instantiate(dustObject, new Vector3(transform.position.x + Random.Range(-2.0f, 2.0f), transform.position.y, transform.position.z + Random.Range(-2.0f, 2.0f)), Quaternion.identity);
                Instantiate(dustObject, new Vector3(transform.position.x + Random.Range(-2.0f, 2.0f), transform.position.y, transform.position.z + Random.Range(-2.0f, 2.0f)), Quaternion.identity);
                Instantiate(dustObject, new Vector3(transform.position.x + Random.Range(-2.0f, 2.0f), transform.position.y, transform.position.z + Random.Range(-2.0f, 2.0f)), Quaternion.identity);
                wrongSurface = false;
                count = 0;
               
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
            wrongSurface = true;
            
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
