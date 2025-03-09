using UnityEngine;

public class Cookbook : MonoBehaviour
{
    [SerializeField]
    private GameObject openBook;

    private float mouseDownTime = 0;
    [SerializeField]
    private float mouseDownDuration = 0.5f;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Ray mouseRay = Camera.main.ScreenPointToRay(Input.mousePosition);
        bool isHit = Physics.Raycast(mouseRay.origin, mouseRay.direction, out RaycastHit draggableHit, 20.0f);
        if (Input.GetMouseButtonDown(0))
        {
            mouseDownTime = Time.time + mouseDownDuration;
        }
        if (Input.GetMouseButtonUp(0))
        {
            if (Time.time <= mouseDownTime && isHit && draggableHit.transform.gameObject == gameObject)
            {
                SpawnBook();
            }
        }
    }

    public void SpawnBook()
    {
        Instantiate(openBook);
        Destroy(gameObject);
    }
}
