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
    Simon_CreationOrder Create;

    public TMP_Text StreakText;
    public List<int> User_List = new List<int>();
    
    // Start is called before the first frame update
    void Start()
    {
        StreakText.text = "Press spacebar to start";    
       Create = GetComponent<Simon_CreationOrder>();
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
        Create.CreateOrder();
        
    }

    public void ButtonPress1(){
        User_List.Add(0);
    }

    public void ButtonPress2(){
        User_List.Add(1);
    }

    public void ButtonPress3(){
        User_List.Add(2);
    }

    public void ButtonPress4(){
        User_List.Add(3);
    }
}
