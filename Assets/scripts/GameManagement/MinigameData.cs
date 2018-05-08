using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class MinigameData : MonoBehaviour
{
    public int IdOfNextMinigame;



    [SerializeField]
    int id;

    [SerializeField]
    bool replayable;

    [SerializeField]
    bool waterUsingTask;

    [SerializeField]
    float waterUsed;

    [SerializeField]
    float waterUsedPerSecond;

    [SerializeField]
    float maxProgressVal;

    [SerializeField]
    string gameName;

    [SerializeField, Multiline]
    string afterGameText;
    [SerializeField, Multiline]
    string introductionToNextMinigame;

    [SerializeField, Multiline]
    string startMinigameText;


    [SerializeField]
    private Text waterUsedText;

    [SerializeField]
    GameObject RestartMinigame;


    Renderer progressRenderer;

    [SerializeField]
    GameObject progressBar;

    bool active;

    bool replayed;

    bool isWaterRunning;

    float bestWaterUsage;

    bool complete;
    private void Awake()
    {
        EventBus.AddListener<MinigameEvents.ChangeActiveMinigameEvent>(ToggleActive);
        EventBus.AddListener<MinigameEvents.ToggleWaterEvent>(ToggleWaterUsage);
        EventBus.AddListener<MinigameEvents.EndMinigamEvent>(OnMinigameEnd);
        EventBus.AddListener<MinigameEvents.SingleExecuteWaterUsageEvent>(SingleTimeWaterEvent);
        EventBus.AddListener<MinigameEvents.ReplyCurrentMinigameSelectedEvent>(ReplayGame);
        replayed = false;
        if (waterUsingTask)
        {
            bestWaterUsage = -1;
            waterUsedText.text = 0.0f + "L";
        }

    }

    private void Start()
    {
        if (waterUsingTask)
        {
            progressRenderer = progressBar.GetComponent<Renderer>();
			Material mat = new Material(progressRenderer.material);
			progressRenderer.material = mat;
            progressRenderer.material.shader = Shader.Find("DCC/3d Progress Bar");
        }
    }

    private void Update()
    {

        if (isWaterRunning)
        {
            waterUsed += waterUsedPerSecond * Time.deltaTime;
            waterUsedText.text = (int)waterUsed + "L";
            UpdateProgressBar();
        }
    }

    void ToggleActive(object sender, MinigameEvents.ChangeActiveMinigameEvent e)
    {
        if (e.newID == id)
        {
            EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(true,startMinigameText));
            if (waterUsingTask)
            {
                waterUsedText.text = (int)waterUsed + "L";
            }
            active = true;
        }
        else
        {
            active = false;
        }
    }

    void OnMinigameEnd(object sender, MinigameEvents.EndMinigamEvent e)
    {
        if (GameManager.currentID == id)
        {
            complete = true;
            // Send Water Used
            if (waterUsingTask)
            {
                if (bestWaterUsage == -1 || bestWaterUsage > waterUsed)
                {
                    bestWaterUsage = waterUsed;
                }
                EventBus.TriggerEvent(this, new MinigameEvents.UpdateWaterUsage(bestWaterUsage, gameName));
            }

            EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(false,afterGameText));

            if (replayable && !replayed)
            {
                // Can Replay Game
                EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(false,"Do you wanna retry this minigame?"));
                EventBus.TriggerEvent(this, new MinigameEvents.WaitForReplayCurrentGameActionEvent(RestartMinigame));
            }
            else
            {
                EventBus.TriggerEvent(this, new MinigameEvents.PrepareForNextMinigameEvent(IdOfNextMinigame, introductionToNextMinigame));
            }
        }
    }


    private void ToggleWaterUsage(object sender, MinigameEvents.ToggleWaterEvent e)
    {
        if (id == GameManager.currentID && !complete && waterUsingTask && GameManager.isPlaying)
        {
            if (isWaterRunning)
            {
                isWaterRunning = false;
            }
            else
            {
                isWaterRunning = true;
            }
        }
        /*else if (!waterUsingTask && GameManager.currentID == id)
        {
            EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("Debug Narration Event: Trying to turn water on for a task that dont use water"));
        }*/
    }

    private void SingleTimeWaterEvent(object sender, MinigameEvents.SingleExecuteWaterUsageEvent e)
    {
        if (id == GameManager.currentID && !complete && waterUsingTask && GameManager.isPlaying)
        {
            print("I should update progress bar");
            waterUsed += e.waterAmount;
            waterUsedText.text = (int)waterUsed + "L";
            UpdateProgressBar();
        }
    }

    private void ReplayGame(object sender, MinigameEvents.ReplyCurrentMinigameSelectedEvent e)
    {
        waterUsed = 0f;
        complete = false;
        replayed = true;
    }

    private void UpdateProgressBar()
    {
        float progress = Mathf.Min(waterUsed / maxProgressVal, 1f);
        progressRenderer.material.SetFloat("_Progress", progress);
        progressBar.transform.localScale = new Vector3(1, progress, 1);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && active && !GameManager.isPlaying && !complete)
        {
            //EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent("The Game Begun" + GameManager.currentID));
            EventBus.TriggerEvent(this, new MinigameEvents.StartMinigameEvent());
        }
        else
        {
          //  Debug.Log(active + " " + complete);
        }
    }
}
