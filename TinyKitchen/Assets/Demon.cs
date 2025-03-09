using System;
using System.Collections;
using UnityEngine;
using Random = UnityEngine.Random;

public class Demon : MonoBehaviour
{
    [SerializeField]
    private GameObject ingredientGivingLocation;
    public bool givingIngredients = true;
    [SerializeField]
    private float foodInterval = 5f;
    [SerializeField]
    private float ingredientDelay = 0.4f;
    private float nextFoodTime = 0;
    private int foodCount = 0;
    [SerializeField]
    private int maxFoodCount = 3;
    [SerializeField]
    private GameObject[] ingredientList;
    [SerializeField]
    private float shootForce = 5;

    [SerializeField]
    private Animator animator;

    [SerializeField]
    private bool isTalking = false;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        nextFoodTime = Time.time + foodInterval;
    }

    // Update is called once per frame
    void Update()
    {
        if (givingIngredients)
        {
            if (Time.time >= nextFoodTime)
            {
                nextFoodTime = Time.time + foodInterval;
                foodCount = 0;
                StartCoroutine(IngredientDelay());
            }
        }

        if (isTalking)
        {
            
        }
    }

    IEnumerator IngredientDelay()
    {
        yield return new WaitForSeconds(ingredientDelay);
        if (foodCount != maxFoodCount)
        {
            int index = Random.Range(0, ingredientList.Length);
            GameObject food = Instantiate(ingredientList[index], ingredientGivingLocation.transform.position, Quaternion.identity);
            float mult = Random.Range(0.7f, 1.5f);
            food.GetComponent<Rigidbody>().AddForce(ingredientGivingLocation.transform.up * shootForce * mult, ForceMode.Impulse);
            foodCount++;
            StartCoroutine(IngredientDelay());
        }

    }
}
