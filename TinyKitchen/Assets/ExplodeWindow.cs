using UnityEngine;

public class ExplodeWindow : MonoBehaviour
{
    [SerializeField]
    private Animator animator;
    [SerializeField]
    private float minSpeed = 10;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void Explode()
    {
        animator.Play("Base Layer.Explode");
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.layer.Equals(6))
        {
            if (other.gameObject.GetComponent<Rigidbody>().linearVelocity.magnitude >= minSpeed)
            {
                Explode();
            }
        }
    }
}
