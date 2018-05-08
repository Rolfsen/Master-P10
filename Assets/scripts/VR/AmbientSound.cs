using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AmbientSound : MonoBehaviour {
    [SerializeField]
    AudioClip musicClip;
    [SerializeField]
    AudioSource musicSource;
    [SerializeField]
    AudioClip musicClip2;
    [SerializeField]
    AudioSource musicSource2;
    // Use this for initialization
    void Start () {
        musicSource.clip = musicClip;
        musicSource.Play();

        musicSource2.clip = musicClip2;
        musicSource2.Play();
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
