using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Showering : MonoBehaviour {


    Renderer rend;

    float maxClean = 0.85f;
    float minClean = 0.6f;

    float getDry;

    private void Awake()
    {
        EventBus.AddListener<PlayerEvent.PlayerWasSoaped>(IsCompletedlySoap);
        EventBus.AddListener<MinigameEvents.EndMinigamEvent>(DryPlayer);
    }

    private void Start()
    {
        rend = GetComponent<Renderer>();

        Material mat = new Material(rend.materials[0]);

        rend.material = mat;

        rend.material.shader = Shader.Find("DCC/Dissolve Water");

        getDry = rend.material.GetFloat("_OverlayIntensity");
    }

    private void DryPlayer (object sender, MinigameEvents.EndMinigamEvent e)
    {
        if (GameManager.currentID == 4)
        {
            rend.material.SetFloat("_OverlayIntensity",getDry);
			GetComponent<Renderer>().enabled = false;
        }
    }

    public void IsGettingWatered (float val)
    {
        rend.material.SetFloat("_OverlayIntensity", val);
    }



    public void WashingOfSoap(float val)
    {
        float cleanScale = maxClean - minClean;
        float newShaderVal = minClean + (cleanScale * val);
        rend.material.SetFloat("_DissolveAmount",newShaderVal);
    }

    [SerializeField]
    Color soapedColor;
    public void IsCompletedlySoap (object sender, PlayerEvent.PlayerWasSoaped e)
    {
        rend.material.SetColor("_DissolveColor",soapedColor);
    }
}
