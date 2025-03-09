using System;
using Unity.VisualScripting;
using UnityEngine;


public class NewMonoBehaviourScript : MonoBehaviour
{
    public Transform pointer; // TEST pointer
    private Rigidbody draggedRigidbody; // Rigidbody of the object being dragged  
    private Vector3 targetRotation;
    public StoveManager stoveManager;

    private InteractShading targetInteractShading;
    void Start()
    {
        
    }

    void Update()
    {   
        // ray cast on any draggable item     
        Ray mouseRay = Camera.main.ScreenPointToRay(Input.mousePosition);
        LayerMask draggableMask = LayerMask.GetMask("Draggable");

        bool isHit = Physics.Raycast(mouseRay.origin, mouseRay.direction, out RaycastHit draggableHit, 20.0f, draggableMask);

        targetInteractShading = draggableHit.transform?.gameObject?.GetComponent<InteractShading>();
        if (isHit && targetInteractShading && !targetInteractShading.isHovering)
        {
            targetInteractShading.setHovering(true);
        }

        if (draggedRigidbody)
        {
            InteractShading interactShading = draggedRigidbody.GetComponent<InteractShading>();
            if (interactShading != null )
            {
                interactShading.setHovering(true);
                interactShading.setSelected(true);
            }
        }

        // reset if mouse stops dragging an object
        if (draggedRigidbody && (Input.GetMouseButtonUp(0) || !Input.GetMouseButton(0))) {
            // if mouse stops dragging on top of a pan/pot, and we can place the current item on it, then start cooking
            if (isHit) {
                GameObject objectHit = draggableHit.transform.gameObject;
                GameObject objectDragged = draggedRigidbody.gameObject;
                DraggableInfo panInfo = stoveManager.panObj.GetComponent<DraggableInfo>();
                if (objectHit.Equals(stoveManager.panObj) && panInfo.CanContain(objectDragged)) {
                    panInfo.Contain(objectDragged);
                    Destroy(objectDragged.GetComponent<Rigidbody>());
                    objectDragged.transform.SetParent(panInfo.transform);
                }

            }
            draggedRigidbody = null;
            targetRotation = Vector3.zero;
        }

        // Check if should initiate new drag
        if (isHit && Input.GetMouseButtonDown(0)) {
            draggedRigidbody = draggableHit.rigidbody;
            DraggableInfo info = draggableHit.transform.gameObject.GetComponent<DraggableInfo>();
            if (info) {
                targetRotation = info.pickupRotation;
            }

            if (targetInteractShading)
            {
                targetInteractShading.setSelected(true);
            }
        }
    }
    void FixedUpdate()
    {


        LayerMask surfaceMask = LayerMask.GetMask("Surface");   
        // surface raycast meant to determine target position where objects snap to. Either get point lying on z=0, or surface
        RaycastHit surfaceHit;
        Ray mouseRay = Camera.main.ScreenPointToRay(Input.mousePosition);
        Vector3 target = mouseRay.origin + mouseRay.direction / mouseRay.direction.z * -mouseRay.origin.z;
        if (!draggedRigidbody && Physics.Raycast(mouseRay.origin, mouseRay.direction, out surfaceHit, 20.0f, surfaceMask)) {
            target = surfaceHit.point;
        }
        pointer.position = target;


        // if currently dragging an object, update object physics (position, velocity, rotation)
        if (Input.GetMouseButton(0) && draggedRigidbody) {
            // handle unsnapping
            if (draggedRigidbody.isKinematic) {
                draggedRigidbody.isKinematic = false;
                stoveManager.Detach(draggedRigidbody.gameObject);
            }
            draggedRigidbody.MovePosition(draggedRigidbody.position + 0.2f * (pointer.position - draggedRigidbody.position));
            draggedRigidbody.linearVelocity = (target - draggedRigidbody.position) * 10f;
            if (targetRotation != Vector3.zero) {
                draggedRigidbody.rotation = Quaternion.Lerp(draggedRigidbody.rotation, Quaternion.Euler(targetRotation), 0.1f);
                draggedRigidbody.angularVelocity = Vector3.zero;
            }
        }
    }
}
