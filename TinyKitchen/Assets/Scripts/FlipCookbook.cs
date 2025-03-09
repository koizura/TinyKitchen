using System;
using UnityEngine;

public class FlipCookbook : MonoBehaviour
{
    public int pageIndex = 0;
    public int pageCount = 2;
    public Sprite[] sprites;
    [SerializeField]
    private GameObject leftPage;
    [SerializeField]
    private GameObject rightPage;

    [SerializeField]
    private Animator animator;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            Ray mouseRay = Camera.main.ScreenPointToRay(Input.mousePosition);
            bool isHit = Physics.Raycast(mouseRay.origin, mouseRay.direction, out RaycastHit draggableHit, 20.0f);
            if (isHit && (draggableHit.transform.gameObject != gameObject && draggableHit.transform.gameObject != leftPage && draggableHit.transform.gameObject != rightPage))
            {
                CloseBook();
            }
        }
    }

    public void Flip(bool dir)
    {
        if (dir && pageIndex < pageCount - 2)
        {
            pageIndex++;
            animator.Play("Base Layer.Book_Flip_Right");
            GameObject temp = leftPage;
            leftPage = rightPage;
            rightPage = temp;
        }
        else if (!dir && pageIndex > 0)
        {
            pageIndex--;
            animator.Play("Base Layer.Book_Flip_Left");
            GameObject temp = rightPage;
            rightPage = leftPage;
            leftPage = temp;
        }
    }

    public void CloseBook()
    {
        Destroy(gameObject);
    }
}
