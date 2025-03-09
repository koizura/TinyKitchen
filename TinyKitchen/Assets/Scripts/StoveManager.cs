using System;
using System.Collections.Generic;
using System.Linq;
using Unity.VisualScripting;
using UnityEditor.AssetImporters;
using UnityEngine;

public class StoveManager : MonoBehaviour
{
    public GameObject stoveLObj, stoveRObj, panObj, potObj, boardSnapObj, boardObj;
    // how close the pot needs to be to the stove to snap
    public float snappingDistance;
    // current object set on each stove (null if none)
    public GameObject activeObjLeft, activeObjRight, activeObjBoard;
    public List<GameObject> sprites;
    void Start()
    {
        activeObjLeft = null;
        activeObjRight = null;
        activeObjBoard = null;
    }
    public void Detach(GameObject obj) {
        if (obj.Equals(activeObjLeft)) {
            activeObjLeft = null;
        }
        if (obj.Equals(activeObjRight)) {
            activeObjRight = null;
        }
         if (obj.Equals(activeObjBoard)) {
            activeObjBoard = null;
        }
    }
    void Update()
    {
        if (!Input.GetMouseButton(0)) {

            // LEFT PAN snap
            if (!activeObjLeft && (stoveLObj.transform.position - panObj.transform.position).magnitude < snappingDistance) {
                Rigidbody rb = panObj.GetComponent<Rigidbody>();
                rb.isKinematic = true;
                rb.MovePosition(stoveLObj.transform.position + Vector3.up * snappingDistance * 0.3f);
                rb.MoveRotation(Quaternion.Euler(panObj.GetComponent<DraggableInfo>().pickupRotation));
                activeObjLeft = panObj;
            }
            // RIGHT PAN snap
            if (!activeObjRight && (stoveRObj.transform.position - panObj.transform.position).magnitude < snappingDistance) {
                Rigidbody rb = panObj.GetComponent<Rigidbody>();
                rb.isKinematic = true;
                rb.MovePosition(stoveRObj.transform.position + Vector3.up * snappingDistance * 0.3f);
                rb.MoveRotation(Quaternion.Euler(panObj.GetComponent<DraggableInfo>().pickupRotation));
                activeObjRight = panObj;
            }

            // LEFT POT snap
            if (!activeObjLeft && (stoveLObj.transform.position - potObj.transform.position).magnitude < snappingDistance) {
                Rigidbody rb = potObj.GetComponent<Rigidbody>();
                rb.isKinematic = true;
                rb.MovePosition(stoveLObj.transform.position + 0.1f * snappingDistance * Vector3.up);
                rb.MoveRotation(Quaternion.Euler(potObj.GetComponent<DraggableInfo>().pickupRotation));
                activeObjLeft = potObj;
            }
            // RIGHT POT snap
            if (!activeObjRight && (stoveRObj.transform.position - potObj.transform.position).magnitude < snappingDistance) {
                Rigidbody rb = potObj.GetComponent<Rigidbody>();
                rb.isKinematic = true;
                rb.MovePosition(stoveRObj.transform.position + 0.1f * snappingDistance * Vector3.up);
                rb.MoveRotation(Quaternion.Euler(potObj.GetComponent<DraggableInfo>().pickupRotation));
                activeObjRight = potObj;
            }

            if (!activeObjBoard && (boardObj.transform.position - boardSnapObj.transform.position).magnitude < snappingDistance) {
                Rigidbody rb = boardObj.GetComponent<Rigidbody>();
                rb.isKinematic = true;
                rb.MovePosition(boardSnapObj.transform.position + 0.1f * snappingDistance * Vector3.up);
                rb.MoveRotation(Quaternion.Euler(boardObj.GetComponent<DraggableInfo>().pickupRotation));
                activeObjBoard = boardObj;
            }
            
        }

        Cook(activeObjLeft);
        Cook(activeObjRight);
        Cook(activeObjBoard);
        // Debug.Log(activeObjBoard + " " + (boardObj.transform.position - boardSnapObj.transform.position).magnitude);
        // Debug.Log((stoveLObj.transform.position - panObj.transform.position).magnitude + ", " + (stoveRObj.transform.position - potObj.transform.position).magnitude);
    }
    void Cook(GameObject containerObj) {
        if (!containerObj) return;
        DraggableInfo container = containerObj.GetComponent<DraggableInfo>();
        if (!container) return;
        if (!(container.gameObject == activeObjLeft || container.gameObject == activeObjRight || container.gameObject == activeObjBoard)) return;
        if (container.containing.Count == 0) return;
        DraggableInfo itemCooking = container.containing[0].GetComponent<DraggableInfo>();
        
        itemCooking.cookTimeLeft -= Time.deltaTime;
        if (itemCooking.cookTimeLeft < 0) {
            if (itemCooking.itemName == "egg") {
                itemCooking.itemName = "cooked egg";
                SwapMesh(itemCooking.gameObject, 0);
                Debug.Log("Egg has been cooked");
            }
            if (itemCooking.itemName == "raw rice") {
                itemCooking.itemName = "cooked rice";
                SwapMesh(itemCooking.gameObject, 2);
                Debug.Log("raw rice has been cooked");

            }
            if (itemCooking.itemName == "cutting chicken") {
                Debug.Log("chicken has been cut");
                Instantiate(sprites[4], itemCooking.transform.position, itemCooking.transform.rotation);
                Destroy(itemCooking.gameObject);
                // itemCooking.itemName = "cut chicken";
                // SwapMesh(itemCooking.gameObject, 4);
                // itemCooking.gameObject.AddComponent<Rigidbody>();
                // Destroy(itemCooking.GetComponent<Collider>());
                // itemCooking.transform.parent = null;

            }
        }
    }
    void SwapMesh(GameObject obj, int spriteIndex) {
        MeshFilter mf, referenceMf;
        MeshRenderer mr, referenceMr;
        Transform t, referenceT;

        // object has child
        if (obj.transform.childCount > 0) {
            Transform child = obj.transform.GetChild(0);
            mf = child.GetComponent<MeshFilter>();
            mr = child.GetComponent<MeshRenderer>();
            t = child;
        } else {
            mf = obj.GetComponent<MeshFilter>();
            mr = obj.GetComponent<MeshRenderer>();
            t = obj.transform;
        }
        // reference has child
        if (sprites[spriteIndex].transform.childCount > 0) {
            Transform child = sprites[spriteIndex].transform.GetChild(0);

            referenceMf = child.GetComponent<MeshFilter>();
            referenceMr = child.GetComponent<MeshRenderer>();
            referenceT = child;
        } else {
            referenceMf = sprites[spriteIndex].GetComponent<MeshFilter>();
            referenceMr = sprites[spriteIndex].GetComponent<MeshRenderer>();
            referenceT = sprites[spriteIndex].transform;
        }
        Debug.Log("Swap mesh " + mr.materials[0].name + " to " + referenceMr.sharedMaterials[0].name + " " + spriteIndex + ", " + sprites[spriteIndex].name);

        mf.mesh = referenceMf.sharedMesh;
        // mr.materials = new Material[referenceMr.sharedMaterials.Length];
        // mr.SetMaterials(new List<Material>());
        // for (int i = 0; i < referenceMr.sharedMaterials.Length; i++)
        // {
        //     mr.materials[i] = new Material(referenceMr.sharedMaterials[i]);
        // }
        // mr.SetMaterials(referenceMr.sharedMaterials.ToList<Material>());
        // mr.materials = (Material[])referenceMr.sharedMaterials.Clone();
        t.localScale = referenceT.localScale;
    }
}