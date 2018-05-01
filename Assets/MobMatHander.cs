using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MobMatHander : MonoBehaviour
{

	Renderer rend;

	Material mat;

	[SerializeField]
	Texture clean;

	[SerializeField]
	Texture notCleanDust;

	[SerializeField]
	Texture notCleanLiquid;

	private void Awake()
	{
		EventBus.AddListener<GameStateEvent.MopIsDirty>(MobIsDirty);
		EventBus.AddListener<GameStateEvent.MopIsCleanNow>(MobIsClean);
	}

	private void Start()
	{
		rend = GetComponent<Renderer>();
		mat = new Material(rend.material);
		rend.material = mat;

		rend.material.shader = Shader.Find("DCC/Silhouette Enhancement");
	}

	private void MobIsClean(object sender, GameStateEvent.MopIsCleanNow e)
	{
		rend.material.SetTexture("_MainTex", clean);
	}

	private void MobIsDirty(object sender, GameStateEvent.MopIsDirty e)
	{
		if (e.typeOfDirt == "Dust")
		{
			rend.material.SetTexture("_MainTex", notCleanDust);
		}
		else
		{
			rend.material.SetTexture("_MainTex", notCleanLiquid);
		}
	}


}
