using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using SpeechLib;


public class Narrator : MonoBehaviour
{



    [SerializeField]
    SpVoice ttsVoice;

    [SerializeField]
    int rate;
    [SerializeField]
    int volume;
    [SerializeField]
    int voiceID;

    string lastSentence;
    private void Awake()
    {
        // Events that trigger narration

        EventBus.AddListener<NarrativeEvent.TextToSpeechNarratorEvent>(TextToSpeechTalk);
        EventBus.AddListener<MinigameEvents.PrepareForNextMinigameEvent>(PrepareForNextGame);
        EventBus.AddListener<MinigameEvents.WaitForReplayCurrentGameActionEvent>(WaitForPlayerReplayChoice);
    }

    private void Start()
    {
        ttsVoice = new SpVoice();
        ttsVoice.Volume = volume;
        ttsVoice.Rate = rate;
        ttsVoice.Voice = ttsVoice.GetVoices().Item(voiceID);
    }

    private void Update()
    {
        if (Input.GetKey(KeyCode.Alpha9))
        {
            ttsVoice.Skip("Sentence", 1);
        }
    }


    private void PrepareForNextGame(object sender, MinigameEvents.PrepareForNextMinigameEvent e)
    {
        StartCoroutine(SoundQuarantine(e.nextGame));
    }

    private void TextToSpeechTalk(object sender, NarrativeEvent.TextToSpeechNarratorEvent e)
    {
        if (e.replayable)
        {
            lastSentence = e.text;
            coroutine = StartCoroutine(enumerator());
        }
        else
        {
            lastSentence = "";
            StopCoroutine(coroutine);
        }
        ttsVoice.Speak(e.text, SpeechVoiceSpeakFlags.SVSFlagsAsync);
    }


    public void WaitForPlayerReplayChoice(object sender, MinigameEvents.WaitForReplayCurrentGameActionEvent e)
    {
        StartCoroutine(ActivateReplayUI(e.confirmationMenu));
    }

    // Delay the game until narrator is done speaking
    IEnumerator SoundQuarantine(int nextGame)
    {
        while (ttsVoice.Status.RunningState != SpeechRunState.SRSEDone)
        {
            yield return null;
        }
        EventBus.TriggerEvent(this, new MinigameEvents.ChangeActiveMinigameEvent(nextGame));
    }

    IEnumerator ActivateReplayUI(GameObject obj)
    {
        while (ttsVoice.Status.RunningState != SpeechRunState.SRSEDone)
        {
            yield return null;
        }
        obj.SetActive(true);
    }

    [SerializeField]
    float waitToRepeat;

    Coroutine coroutine;

    IEnumerator enumerator()
    {
        while (ttsVoice.Status.RunningState != SpeechRunState.SRSEDone)
        {
            yield return null;
        }
        yield return new WaitForSeconds(waitToRepeat);
        EventBus.TriggerEvent(this, new NarrativeEvent.TextToSpeechNarratorEvent(true, lastSentence));
    }
}