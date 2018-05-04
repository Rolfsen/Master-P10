using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUpPot : MonoBehaviour
{

    [SerializeField]
    bool isBeingCarried;

    [SerializeField]
    Vector3 animOffset;


    [SerializeField]
    string putThePotBackText;

    [SerializeField]
    string pickThePotUpText;

    [SerializeField]
    string PourTheWaterOnPlantText;

    [SerializeField]
    Transform animPos;

    float startY;
    bool playingAnim;
    bool haveFlowerBeenWatered;

    [SerializeField] Renderer waterRenderer;
    [SerializeField] Material invisibleMat;



    Quaternion startRot;
    Transform hand;
    Animator anim;

    private void Awake()
    {
        EventBus.AddListener<MinigameEvents.StartMinigameEvent>(MinigameStarted);
    }

    private void Start()
    {
        startRot = transform.rotation;
        startY = transform.position.y;
        anim = GetComponent<Animator>();
    }

    void MinigameStarted(object sender, MinigameEvents.StartMinigameEvent e)
    {
        if (MiniGameManager.isFlowerWateringGameRunning)
        {
            EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(false,pickThePotUpText));
        }
    }

    private void Update()
    {
        if (isBeingCarried && !playingAnim && MiniGameManager.isFlowerWateringGameRunning)
        {
            transform.position = hand.position;
            transform.rotation = hand.rotation;
        }
        else if (playingAnim)
        {
            if (anim.GetCurrentAnimatorStateInfo(0).IsName("Empty"))
            {
                waterRenderer.material = invisibleMat;
                playingAnim = false;
                EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(false,putThePotBackText));
            }
            else if (anim.GetCurrentAnimatorStateInfo(0).IsName("StayStill"))
            {
                SpawnParticles();
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (MiniGameManager.isFlowerWateringGameRunning)
        {
            switch (other.tag)
            {
                case ("Player"):
                    {
                        PlayerCol(other);
                        break;
                    }
                case ("Table"):
                    {
                        TableCol(other);
                        break;
                    }
                case ("Flower"):
                    {
                        FlowerCol(other);
                        break;
                    }
            }
        }
    }

    void PlayerCol(Collider player)
    {
        if (!isBeingCarried && !playingAnim)
        {
            isBeingCarried = true;
            hand = player.transform;
        }
    }

    void TableCol(Collider Table)
    {
        if (isBeingCarried)
        {
            isBeingCarried = false;
            transform.position = new Vector3(Table.transform.position.x, startY, Table.transform.position.z);
            transform.rotation = startRot;
            hand = null;
            if (haveFlowerBeenWatered)
            {
                EventBus.TriggerEvent(this, new MinigameEvents.EndMinigamEvent());
                MiniGameManager.isFlowerWateringGameRunning = false;
            }
        }
    }

    void FlowerCol(Collider flower)
    {
        if (!haveFlowerBeenWatered)
        {

            playingAnim = true;
            haveFlowerBeenWatered = true;
            anim.SetBool("AnimStart", true);
            // transform.position = flower.transform.position + animOffset;
            transform.position = animPos.transform.position;
        }
    }

    void SpawnParticles()
    {
        // If we want particles let it happen here
    }

}
