using UnityEngine;

public class Cookbook : MonoBehaviour
{
    [SerializeField]
    private GameObject openBook;
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
            if (isHit && draggableHit.transform.gameObject == gameObject)
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
