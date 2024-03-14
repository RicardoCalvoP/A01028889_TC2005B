/*
Ricardo Calvo
dd/03/2024

Keep tack of streak in simon
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using TMPro;

public class Simon_GameController : MonoBehaviour
{
    public TMP_Text StreakText; //Text shown on the screen to start the game and text for showing the current score
    public TMP_Text BestStreakText;
    public GameObject[] buttons; //List of objects buttons
    public List<int> User_List = new List<int>(); //List of numbers gathered from the buttons pressed by the player
    public List<int> CPU_LIST = new List<int>(); // List of numbers created randomly by the cpu
    public int streak; // score of the current game
    public int best_streak;
    private int random_button;
    private int length;
    private int index;
    private bool playerTurn; // if true, then is player turn, else, cpu will add to pattern

    /*
    -------
    AUDIO
    -------
    */
    public AudioSource audioSource;

    public AudioClip Lose;
    //public AudioClip Win;



    // Start is called before the first frame update
    void Start()
    {
        audioSource = GetComponent<AudioSource>();
        best_streak = PlayerPrefs.GetInt("record", 0);
        playerTurn = false;
        StartGame();
    }

    // Update is called once per frame

    void Update()
    {
        StreakText.text = "Streak: " + streak.ToString();
        BestStreakText.text = "Best score: " + best_streak.ToString();
    }


    public void StartGame()
    {
        StartCoroutine(CPU_ORDER());
    }

    IEnumerator CPU_ORDER()
    {
        yield return new WaitForSeconds(1f);

        random_button = Random.Range(0, buttons.Length); // Creates a random number between 0 and number of buttons
        CPU_LIST.Add(random_button);
        length = CPU_LIST.Count;

        for (int i = 0; i < length; i++)
        {
            random_button = CPU_LIST[i];
            buttons[random_button].GetComponent<Simon_Buttons>().Highlight();
            yield return new WaitForSeconds(0.5f);
        }
        playerTurn = true;
        index = 0;
    }
    public void ButtonPress(int choice)
    {
        if (playerTurn)
        {
            if (CPU_LIST[index] == choice)
            {
                User_List.Add(choice);
                index++;
                buttons[choice].GetComponent<Simon_Buttons>().HighlightPressed();

                if (index == length)
                {
                    streak++;
                    if (streak > best_streak)
                    {
                        best_streak = streak;
                        PlayerPrefs.SetInt("record", best_streak);
                        audioSource = BestStreakText.GetComponent<AudioSource>();
                        audioSource.Play();
                    }
                    playerTurn = false;
                    StartCoroutine(CPU_ORDER());
                }
            }
            else
            {
                audioSource = StreakText.GetComponent<AudioSource>();
                audioSource.Play();
                StartCoroutine(LoadSceneAfterDelay(Lose.length));
            }
        }
    }
    IEnumerator LoadSceneAfterDelay(float delay)
    {
        yield return new WaitForSeconds(delay);
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex - 1);
    }

}
