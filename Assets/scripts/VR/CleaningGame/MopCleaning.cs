using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MopCleaning : MonoBehaviour {
    [SerializeField]
    int count = 0;
    Collider colin;
    bool correctSurface = false;
    int mopCleanMeter=0; 
    [SerializeField]
    GameObject dustObject;
    [SerializeField]
    GameObject rodObject;
    
    MopHandler mopHandler;
    // Use this for initialization
    void Start () {
        mopHandler = rodObject.GetComponent<MopHandler>();
    }
	
	// Update is called once per frame
	void Update () {
        IsOnRightSurface();
        
        IsMopDirty();
        
    }
    void IsOnRightSurface()
    {
        if (correctSurface == true && mopHandler.isControllerPressed == true)
        {
            count++;
            if (count > 50)
            {
                mopCleanMeter++;
                Debug.Log(mopCleanMeter);
                colin.gameObject.SetActive(false);
                count = 0;
            }
        }
    }
    
    void IsMopDirty()
    {
        if(mopCleanMeter>4 && mopHandler.isControllerPressed == true && correctSurface == true)
        {
            Instantiate(dustObject, new Vector3(transform.position.x + Random.Range(-2.0f, 2.0f), transform.position.y, transform.position.z + Random.Range(-2.0f, 2.0f)), Quaternion.identity);
            Instantiate(dustObject, new Vector3(transform.position.x + Random.Range(-2.0f, 2.0f), transform.position.y, transform.position.z + Random.Range(-2.0f, 2.0f)), Quaternion.identity);
            
        }
    }
    private void OnTriggerStay(Collider col)
    {
        if(col.gameObject.tag == "Dust" && mopCleanMeter <= 5 || col.gameObject.tag == "Liquid" && mopCleanMeter <= 5)
        {
            correctSurface = true;
           // Debug.Log("i am touching something");
            colin = col;
        }
    }
    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "Dust" && mopCleanMeter <= 5 || col.gameObject.tag == "Liquid" && mopCleanMeter <= 5)
        {
            correctSurface = true;
            colin = col;
        }
        if(col.gameObject.tag == "Bucket")
        {
            mopCleanMeter = 0;
            Debug.Log("ur mop is clean now");
        }
    }
    
}
