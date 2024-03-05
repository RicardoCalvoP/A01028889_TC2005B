/*
Keep tack of streak in simon
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class Simon_GameController : MonoBehaviour
{
    public int streak;

    public TMP_Text StreakText;
    
    // Start is called before the first frame update
    void Start()
    {
        StreakText.text = "Press spacebar to start";    
       
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            StartGame();
        } 
    }

    public void StartGame(){
        StreakText.text = "Streak: " + streak.ToString();
        
    }
}
