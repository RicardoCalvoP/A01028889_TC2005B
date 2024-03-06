using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Simon_CreationOrder : MonoBehaviour
{
    public GameObject[] buttons;
    public List<int> CPU_LIST = new List<int>();

    private int random_button;
    private int length;
    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void CreateOrder(){
        StartCoroutine(do_CreateOrder());
    }

    IEnumerator do_CreateOrder(){
        length = CPU_LIST.Count;
        
        for (int i = 0; i < 10; i++)
        {
        random_button = Random.Range(0,buttons.Length); // Creates a random number between 0 and number of buttons
        buttons[random_button].GetComponent<Simon_Buttons>().Highlight();
        CPU_LIST.Add(random_button);
        yield return new WaitForSeconds(1f);
        }
    }
}
