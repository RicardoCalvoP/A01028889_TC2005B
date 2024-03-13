/*
Ricardo Calvo
dd/03/2024

Change scenes between Simon menu and actual game

Current inedx scene for MenuSimon: 0
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using TMPro;



public class Simon_Menu : MonoBehaviour
{
    public TMP_Text StartText; //Text shown on the screen to start the game and text for showing the current score

    void Start()
    {
        StartText.text = "Press spacebar to start";
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
            // changes scene from current index scene to the next index scene that corresponds to actual game scene
        }
    }
}
