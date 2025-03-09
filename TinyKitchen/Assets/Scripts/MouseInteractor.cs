using System;
using Unity.VisualScripting;
using UnityEngine;


public class NewMonoBehaviourScript : MonoBehaviour
{
    public Transform pointer; // TEST pointer
    private Rigidbody draggedRigidbody; // Rigidbody of the object being dragged  
    private Vector3 targetRotation;
    void Start()
    {
        
    }

    void Update()
    {        
        // reset if mouse stops dragging an object
        if (draggedRigidbody && (Input.GetMouseButtonUp(0) || !Input.GetMouseButton(0))) {
            draggedRigidbody = null;
            targetRotation = Vector3.zero;
        }
        // ray cast on click to initiate drag
        Ray mouseRay = Camera.main.ScreenPointToRay(Input.mousePosition);
        LayerMask draggableMask = LayerMask.GetMask("Draggable");    


        RaycastHit draggableHit;
        bool isHit = Physics.Raycast(mouseRay.origin, mouseRay.direction, out draggableHit, 20.0f, draggableMask);
        if (isHit && Input.GetMouseButtonDown(0)) {
            draggedRigidbody = draggableHit.rigidbody;
            DraggableInfo info = draggableHit.transform.gameObject.GetComponent<DraggableInfo>();
            if (info) {
                targetRotation = info.pickupRotation;
            }
        }
    }
    void FixedUpdate()
    {


        LayerMask surfaceMask = LayerMask.GetMask("Surface");   
        // surface raycast meant to determine target. Either get point lying on z=0, or surface
        RaycastHit surfaceHit;
        Ray mouseRay = Camera.main.ScreenPointToRay(Input.mousePosition);
        Vector3 target = mouseRay.origin + mouseRay.direction / mouseRay.direction.z * -mouseRay.origin.z;
        if (!draggedRigidbody && Physics.Raycast(mouseRay.origin, mouseRay.direction, out surfaceHit, 20.0f, surfaceMask)) {
            target = surfaceHit.point;
        }
        // lerp to target
        pointer.position += 0.1f * (target - pointer.position); 
        
        // if currently dragging an object, update object physics
        if (Input.GetMouseButton(0) && draggedRigidbody) {
            draggedRigidbody.MovePosition(draggedRigidbody.position + 0.2f * (pointer.position - draggedRigidbody.position));
            draggedRigidbody.linearVelocity = (target - draggedRigidbody.position) * 10f;
            if (targetRotation != Vector3.zero) {
                // draggedRigidbody.MoveRotation(Vector3.Slerp());
                draggedRigidbody.rotation = Quaternion.Lerp(draggedRigidbody.rotation, Quaternion.Euler(targetRotation), 0.1f);
                draggedRigidbody.angularVelocity = Vector3.zero;
            }
        }
    }
}
