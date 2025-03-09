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
    [SerializeField]
    private bool isAngry = false;

    [SerializeField]
    private MouseInteractor mouseInteractor;
    private GameObject currentGameObj;

    [SerializeField]
    private string[] desiredItemList;

    [SerializeField]
    string desiredItem;
    [SerializeField]
    LayerMask LayerMask;

    public Sprite[] spriteList;
    Sprite currentSprite;

    public SpriteRenderer dialogueRenderer;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        nextFoodTime = Time.time + foodInterval;
        int index = Random.Range(0, desiredItemList.Length);
        desiredItem = desiredItemList[index];
        currentSprite = spriteList[index];
    }

    // Update is called once per frame
    void Update()
    {
        if (desiredItem == null)
        {
            int index = Random.Range(0, desiredItemList.Length);
            desiredItem = desiredItemList[index];
            currentSprite = spriteList[index];
        }

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
            animator.SetBool("isTalking", true);
        }

        currentGameObj = mouseInteractor.draggedRigidbody?.gameObject;
        if (currentGameObj != null)
        {
            if (Input.GetMouseButtonUp(0))
            {
                Ray mouseRay = Camera.main.ScreenPointToRay(Input.mousePosition);
                bool isHit = Physics.Raycast(mouseRay.origin, mouseRay.direction, out RaycastHit draggableHit, 20.0f, LayerMask);
                if (isHit && draggableHit.transform?.gameObject == gameObject)
                {
                    DraggableInfo draggableInfo = currentGameObj.GetComponent<DraggableInfo>();
                    if (draggableInfo)
                    {
                        if (draggableInfo.itemName == desiredItem)
                        {
                            Destroy(currentGameObj);
                            animator.SetTrigger("Eat");
                            currentGameObj = null;
                        }
                        else
                        {
                            if (draggableInfo.itemName != "pot" &&
                                draggableInfo.itemName != "bowl" &&
                                draggableInfo.itemName != "cutting board" &&
                                draggableInfo.itemName != "knfie")
                            {
                                Destroy(currentGameObj);
                                animator.SetTrigger("Angry");
                                currentGameObj = null;
                            }
                        }
                        dialogueRenderer.sprite = currentSprite;
                    }
                }
            }
        }
    }

    IEnumerator IngredientDelay()
    {
        yield return new WaitForSeconds(ingredientDelay);
        if (foodCount != maxFoodCount)
        {
            animator.Play("Base Layer.BurpDemon");
            int index = Random.Range(0, ingredientList.Length);
            GameObject food = Instantiate(ingredientList[index], ingredientGivingLocation.transform.position, Quaternion.identity);
            float mult = Random.Range(0.7f, 1.5f);
            food.GetComponent<Rigidbody>().AddForce(ingredientGivingLocation.transform.up * shootForce * mult, ForceMode.Impulse);
            foodCount++;
            StartCoroutine(IngredientDelay());
        }

    }
}
