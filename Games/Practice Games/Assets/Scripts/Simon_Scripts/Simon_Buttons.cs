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
        // Cambiar la transparencia a completamente opaco
        Color newColor = originalColor;
        newColor.a = 1f;
        GetComponent<Image>().color = newColor;
        yield return new WaitForSeconds(0.75f);

        // Cambiar la transparencia a 0.25 (un valor arbitrario)
        newColor.a = 0.25f;
        GetComponent<Image>().color = newColor;

    }
    public void HighlightPressed()
    {
        audioSource.Play();
        StartCoroutine(ChangeColorPressed());
    }

    IEnumerator ChangeColorPressed()
    {
        Color newColor = originalColor;
        newColor.a = 1f;
        GetComponent<Image>().color = newColor;
        yield return new WaitForSeconds(0.1f);

        newColor.a = 0.25f;
        GetComponent<Image>().color = newColor;

    }
}
