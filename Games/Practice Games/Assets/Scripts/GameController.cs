/*
Keep track of score and ball status

Ricardo Calvo
21/02/2024
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class GameController : MonoBehaviour
{
    public GameObject dotPrefab;
    public GameObject dot;
    public float force;

    public int pointsPing;
    public int pointsPong;

    public TMP_Text PingScore;
    public TMP_Text PongScore;

    public int GoalScore;

    // Start is called before the first frame update
    void Start()
    {
        StartGame();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            Reset();
        }
    }

    public void StartGame()
    {
        //Create a copy of the prefab object
        Destroy(dot);
        dot = Instantiate(dotPrefab);
        dot.GetComponent<Rigidbody2D>().velocity = Random.onUnitSphere * force;
    }

    public void Reset(){
        Destroy(dot);
        StartGame();
        pointsPing = 0;
        pointsPong = 0;
        PingScore.text = "Ping: " + pointsPing.ToString();
        PongScore.text = "Pong: " + pointsPong.ToString();
    }

    public void AddPoints(int side)
    {
        if (side == 1)
        {
            pointsPing++;
            PingScore.text = "Ping: " + pointsPing.ToString();
            if(pointsPing == GoalScore){
                PingScore.text = "Ping: Winner!";
            }
        }
        else
        {
            pointsPong++;
            PongScore.text = "Pong: " + pointsPong.ToString();
            if(pointsPong == GoalScore){
                PongScore.text = "Pong: Winner!";
            }
        }
        if(pointsPing == GoalScore -1 && pointsPong == GoalScore -1){
            GoalScore += 2;
        }
        StartGame();
    }
}