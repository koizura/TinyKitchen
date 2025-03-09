using System;
using UnityEngine;

public class FlipCookbook : MonoBehaviour
{
    public int pageIndex = 0;
    public int pageCount = 2;
    public Texture2D[] sprites;
    [SerializeField]
    private GameObject leftPage;
    [SerializeField]
    private GameObject rightPage;

    [SerializeField]
    private MeshRenderer leftBottomRenderer;
    [SerializeField]
    private MeshRenderer rightBottomRenderer;

    private MeshRenderer leftRenderer;
    private MeshRenderer rightRenderer;

    [SerializeField]
    private Animator animator;
    [SerializeField]
    private GameObject cookbookObj;
    [SerializeField]
    private float force = 30;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        pageIndex = 0;
        leftRenderer = leftPage.GetComponent<MeshRenderer>();
        rightRenderer = rightPage.GetComponent<MeshRenderer>();

        leftRenderer.material.SetTexture("_MainTex", sprites[0]);
        rightRenderer.material.SetTexture("_MainTex", sprites[1]);
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
                animator.Play("Base Layer.Close");
            }
        }
    }

    public void Flip(bool dir)
    {
        if (dir && pageIndex < pageCount - 2)
        {
            pageIndex += 2;
            animator.Play("Base Layer.Book_Flip_Right");
            leftBottomRenderer.material.SetTexture("_MainTex", sprites[pageIndex]);
            rightBottomRenderer.material.SetTexture("_MainTex", sprites[pageIndex + 1]);
        }
        else if (!dir && pageIndex > 1)
        {
            pageIndex -= 2;
            animator.Play("Base Layer.Book_Flip_Left");
            leftBottomRenderer.material.SetTexture("_MainTex", sprites[pageIndex]);
            rightBottomRenderer.material.SetTexture("_MainTex", sprites[pageIndex + 1]);
        }
    }

    public void ChangePage(AnimatorStateInfo stateInfo)
    {
        (leftPage, rightPage) = (rightPage, leftPage);

        if (stateInfo.IsName("Book_Flip_Left"))
        {
            leftPage.GetComponent<MeshRenderer>().material = new Material(leftBottomRenderer.material);
            rightPage.GetComponent<MeshRenderer>().material = new Material(rightBottomRenderer.material);
        }
        else if (stateInfo.IsName("Book_Flip_Right"))
        {
            leftPage.GetComponent<MeshRenderer>().material = new Material(leftBottomRenderer.material);
            rightPage.GetComponent<MeshRenderer>().material = new Material(rightBottomRenderer.material);
        }

        //(leftRenderer, rightRenderer) = (rightRenderer, leftRenderer);
        //rightPage.GetComponent<MeshRenderer>().material.SetTexture("_MainTex", sprites[pageIndex + 1]);
        //leftPage.GetComponent<MeshRenderer>().material.SetTexture("_MainTex", sprites[pageIndex]);

        //(leftBottomRenderer, rightBottomRenderer) = (rightBottomRenderer, leftBottomRenderer);

    }

    public void ChangeHalf(AnimatorStateInfo stateInfo)
    {
        if (stateInfo.IsName("Book_Flip_Left"))
        {
            leftPage.GetComponent<MeshRenderer>().material.SetTexture("_MainTex", sprites[pageIndex + 1]);
        }
        else if (stateInfo.IsName("Book_Flip_Right"))
        {
            rightPage.GetComponent<MeshRenderer>().material.SetTexture("_MainTex", sprites[pageIndex]);
        }
    }
    public void CloseBook()
    {
        GameObject cookbook = Instantiate(cookbookObj, transform.position, Quaternion.identity);
        cookbook.gameObject.GetComponent<Rigidbody>().AddForce(-transform.up * force, ForceMode.Impulse);
        Destroy(gameObject);
    }
}
