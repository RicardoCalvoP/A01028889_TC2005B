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

    public void StartGame()
    {
        StreakText.text = "Streak: " + streak.ToString();
        Create.CreateOrder();

    }

    public void ButtonPress(int choice)
    {
        User_List.Add(choice);
    }

}
