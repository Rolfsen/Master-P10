using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LookatRotation : MonoBehaviour
{

    [SerializeField]
    List<Transform> lookAtTargets;

    Quaternion startRot;

    [SerializeField]
    float speed;

    int currentTarget = 0;

    void Update()
    {

        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            if (currentTarget == 0)
            {
                startRot = lookAtTargets[0].rotation;
                currentTarget = 1;
            }
            else
            {
                startRot = lookAtTargets[1].rotation;
                currentTarget = 0;
            }

        }

        Quaternion targetRotation = Quaternion.LookRotation(lookAtTargets[currentTarget].position - transform.position);
        transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, speed * Time.deltaTime);
    }

}
