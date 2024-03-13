/*
Highlight a button and detect when its clicked
*/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class Simon_Buttons : MonoBehaviour
{
    Color originalColor;
    AudioSource audioSource;

    void Start()
    {
        audioSource = GetComponent<AudioSource>();
        originalColor = GetComponent<Image>().color;
    }

    public void Highlight()
    {
        audioSource.Play();
        StartCoroutine(ChangeColor());
    }

    IEnumerator ChangeColor()
    {
        originalColor = GetComponent<Image>().color;
        GetComponent<Image>().color = Color.white;
        yield return new WaitForSeconds(0.75f);
        GetComponent<Image>().color = originalColor;

    }
}
