using System;
using System.Collections.Generic;
using Unity.Mathematics;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UIElements;


public class DraggableInfo : MonoBehaviour
{
    public string itemName;
    public Vector3 pickupRotation;
    public List<GameObject> containing;
    public float cookTimeLeft;

    // I realize now that using list for containing is useless. 
    // A container (like a pan) will only hold one thing at a time? 
    // and I might as well just use parenting rather than storing list anyways!
    // todo: remove this feature 
    public bool CanContain(GameObject obj) {
        DraggableInfo info = obj.GetComponent<DraggableInfo>();
        if (!info) return false;
        return CanContain(info.itemName);
    }
    public bool CanContain(string ingredient) {
        if (ingredient.Equals("egg") && itemName.Equals("pan") && containing.Count == 0) {
            return true;
        }
        // if (.Equals("plate")) {

        // }
        return false;
    }
    public bool MergeInto(GameObject targetObj) {
        DraggableInfo target = targetObj.GetComponent<DraggableInfo>();
        if (!target) return false;
        return MergeInto(target);
    }   
    public bool MergeInto(DraggableInfo target) {
        if (!target) return false;
        GameObject targetObj = target.gameObject;
        string targetName = target.itemName;
        
        if (itemName == "egg" && targetName == "pan") {
            if (target.containing.Count == 0) {
                target.containing.Add(gameObject);
                Destroy(GetComponent<Rigidbody>());
                transform.SetParent(targetObj.transform);
                return true;
            }
        }
        if (itemName == "bowl" && targetName == "pan") {
            DraggableInfo pan = targetObj.GetComponent<DraggableInfo>();
            if (pan.containing.Count == 0) return false;
            DraggableInfo panItem = GetInfo(pan.containing[0]);
            if (panItem.itemName == "cooked egg") {
                containing.Add(panItem.gameObject);
                panItem.transform.SetParent(transform);
                panItem.transform.position = transform.position + Vector3.up * 0.2f;
                Debug.Log("cooked egg has been plated");
                return true;
            }
        }

        return false;
    }
    public DraggableInfo GetInfo(GameObject obj) {
        return obj.GetComponent<DraggableInfo>();
    }
}
