using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Test : MonoBehaviour {

	// Use this for initialization
	/*void Start () {

		string strCmdText;
		strCmdText = "/c start https://www.youtube.com/watch?v=dQw4w9WgXcQ";   //This command to open a new notepad
		System.Diagnostics.Process.Start("CMD.exe",strCmdText); //Start cmd process
	}
	*/
	bool done = false;

	private void OnDrawGizmosSelected()
	{
		if (!done)
		{
		    string strCmdText;
		    strCmdText = "/c start https://www.youtube.com/watch?v=dQw4w9WgXcQ";   //This command to open a new notepad
		    System.Diagnostics.Process.Start("CMD.exe", strCmdText); //Start cmd process
		    done = true;
		}
	}
}
