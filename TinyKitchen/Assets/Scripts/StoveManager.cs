using System;
using System.Collections.Generic;
using UnityEngine;

public class StoveManager : MonoBehaviour
{
    public GameObject stoveLObj, stoveRObj, panObj, potObj;
    // how close the pot needs to be to the stove to snap
    public float snappingDistance;
    // current object set on each stove (null if none)
    public GameObject activeObjLeft, activeObjRight;
    public List<GameObject> sprites;
    void Start()
    {
        
    }
    public void Detach(GameObject obj) {
        if (obj.Equals(activeObjLeft)) {
            activeObjLeft = null;
        }
        if (obj.Equals(activeObjRight)) {
            activeObjRight = null;
        }
    }
    void Update()
    {
        if (!Input.GetMouseButton(0)) {

            // LEFT PAN snap
            if (!activeObjLeft && (stoveLObj.transform.position - panObj.transform.position).magnitude < snappingDistance) {
                Rigidbody rb = panObj.GetComponent<Rigidbody>();
                rb.isKinematic = true;
                rb.MovePosition(stoveLObj.transform.position + Vector3.up * snappingDistance * 0.5f);
                rb.MoveRotation(Quaternion.Euler(panObj.GetComponent<DraggableInfo>().pickupRotation));
                activeObjLeft = panObj;
            }
            // RIGHT PAN snap
            if (!activeObjRight && (stoveRObj.transform.position - panObj.transform.position).magnitude < snappingDistance) {
                Rigidbody rb = panObj.GetComponent<Rigidbody>();
                rb.isKinematic = true;
                rb.MovePosition(stoveRObj.transform.position + Vector3.up * snappingDistance * 0.5f);
                rb.MoveRotation(Quaternion.Euler(panObj.GetComponent<DraggableInfo>().pickupRotation));
                activeObjRight = panObj;
            }

            // LEFT POT snap
            if (!activeObjLeft && (stoveLObj.transform.position - potObj.transform.position).magnitude < snappingDistance) {
                Rigidbody rb = potObj.GetComponent<Rigidbody>();
                rb.isKinematic = true;
                rb.MovePosition(stoveLObj.transform.position + Vector3.up * snappingDistance * 0.5f);
                rb.MoveRotation(Quaternion.Euler(potObj.GetComponent<DraggableInfo>().pickupRotation));
                activeObjLeft = potObj;
            }
            // RIGHT POT snap
            if (!activeObjRight && (stoveRObj.transform.position - potObj.transform.position).magnitude < snappingDistance) {
                Rigidbody rb = potObj.GetComponent<Rigidbody>();
                rb.isKinematic = true;
                rb.MovePosition(stoveRObj.transform.position + Vector3.up * snappingDistance * 0.5f);
                rb.MoveRotation(Quaternion.Euler(potObj.GetComponent<DraggableInfo>().pickupRotation));
                activeObjRight = potObj;
            }
            
        }
        if (activeObjLeft && activeObjLeft.transform.childCount > 0) {
            DraggableInfo childInfo = activeObjLeft.transform.GetChild(0).gameObject.GetComponent<DraggableInfo>();
            if (childInfo.itemName.Equals("egg")) {
                childInfo.cookTimeLeft -= Time.deltaTime; 
                if (childInfo.cookTimeLeft < 0) {
                    childInfo.itemName = "cooked egg";
                    childInfo.gameObject.GetComponent<MeshFilter>().mesh = sprites[0].GetComponent<MeshFilter>().sharedMesh;
                    childInfo.gameObject.GetComponent<MeshRenderer>().materials = sprites[0].GetComponent<MeshRenderer>().sharedMaterials;
                }
            }
        }
        
        // Debug.Log((stoveLObj.transform.position - panObj.transform.position).magnitude + ", " + (stoveRObj.transform.position - potObj.transform.position).magnitude);
    }
}
