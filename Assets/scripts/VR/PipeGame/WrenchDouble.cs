using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WrenchDouble : MonoBehaviour
{
    [SerializeField]
    GameObject wrenchDouble;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.name == "Controller (left)")
        {
            wrenchDouble.SetActive(true);
            if(gameObject.name != "wrench (2)")
            {

                gameObject.SetActive(false);
            }
        }
        else if (col.gameObject.name == "Controller (right)")
        {
            if(gameObject.name=="wrench (2)")
            {
                wrenchDouble.SetActive(true);
                gameObject.SetActive(false);
            }
        }
    }


}
