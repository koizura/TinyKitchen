using System;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;


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
        return false;
    }
    public void Contain(GameObject obj) {
        containing.Add(obj);
    }   
}
