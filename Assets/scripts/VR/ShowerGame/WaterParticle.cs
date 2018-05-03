using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterParticle : MonoBehaviour
{
    [SerializeField]
    private float count = 0;
    [SerializeField]
    private float timeToGetWet = 5;
    public bool isWet = false;
    [SerializeField]
    AudioSource musicSource;
    [SerializeField]
    AudioClip musicClip;
    [SerializeField]
    bool rightPlace = false;
    bool doneApplyingSoap;

    [SerializeField]
    Showering showering;

    private void Awake()
    {
        EventBus.AddListener<PlayerEvent.PlayerWasSoaped>(PlayerGotSoaped);
    }

    // Use this for initialization
    void Start()
    {

        musicSource.clip = musicClip;
        musicSource.Play();
    }

    // Update is called once per frame
    void Update()
    {
        IsGettingWet();
        //musicSource.Play();

    }

    void PlayerGotSoaped(object sender, PlayerEvent.PlayerWasSoaped e)
    {
        isWet = false;
        doneApplyingSoap = true;
    }

    private void OnTriggerEnter(Collider col)
    {
        if (MiniGameManager.isShowerGameRunning)
        {
            if (col.gameObject.name == "torso")
            {
                rightPlace = true;
            }
        }
    }

    private void OnTriggerStay(Collider col)
    {
        if (MiniGameManager.isShowerGameRunning)
        {
            if (col.gameObject.name == "torso")
            {
                rightPlace = true;
            }
        }
    }

    private void OnTriggerExit(Collider col)
    {
        if (MiniGameManager.isShowerGameRunning)
        {
            if (col.gameObject.name == "torso")
            {
                rightPlace = false;
            }
        }
    }

    bool haveBeenTouchedByWater;

    void IsGettingWet()
    {
        if (MiniGameManager.isShowerGameRunning)
        {
            if (rightPlace == true && !isWet)
            {

                count += Time.deltaTime;
                if (!doneApplyingSoap)
                {
                    //PUT THE WATER HERE, HOW MUCH HE USES
                    showering.IsGettingWatered(Mathf.Min(count / timeToGetWet, 1));
                }
                else
                {
                    showering.WashingOfSoap((Mathf.Min(count / timeToGetWet, 1)));
                }
                if (count > timeToGetWet)
                {
                    isWet = true;
                    count = 0;
                }
            }
        }
    }
}
