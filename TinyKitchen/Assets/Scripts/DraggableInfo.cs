using System;
using System.Collections.Generic;
using System.Linq;
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
                SwapMesh(gameObject, 3);
                transform.SetParent(targetObj.transform);
                Debug.Log("Egg on pan");
                return true;
            }
        }

        if (itemName == "cut chicken" && targetName == "pan") {
            if (target.containing.Count == 0) {
                target.containing.Add(gameObject);
                Destroy(GetComponent<Rigidbody>());
                // SwapMesh(gameObject, 3);
                transform.SetParent(targetObj.transform);
                Debug.Log("chicken on pan");
                return true;
            }
        }

        if (itemName == "rice bag" && targetName == "pot") {
            if (target.containing.Count == 0) {
                itemName = "raw rice";
                target.containing.Add(gameObject);
                Destroy(GetComponent<Rigidbody>());
                transform.SetParent(targetObj.transform);
                SwapMesh(gameObject, 1);
                Debug.Log("Rice in pot");
                return true;
            }
        }
        if (itemName == "raw chicken" && targetName == "cutting board") {
            if (target.containing.Count == 0) {
                // itemName = "raw rice";
                target.containing.Add(gameObject);
                Destroy(GetComponent<Rigidbody>());
                transform.SetParent(targetObj.transform);
                // SwapMesh(gameObject, 1);
                Debug.Log("raw chicken on cutting board");
                return true;
            }
        }
        if (itemName == "knife" && targetName == "cutting board") {
            if (target.containing.Count == 1) {
                // itemName = "raw rice";
                GetInfo(target.containing[0]).itemName = "cutting chicken";
                GetInfo(target.containing[0]).cookTimeLeft = 3f;
                target.containing.Add(gameObject);
                Destroy(GetComponent<Rigidbody>());
                transform.SetParent(targetObj.transform);
                // SwapMesh(gameObject, 1);
                Debug.Log("knife on cutting board, cutting");
                return true;
            }
        }
        if ((itemName == "bowl" || itemName.Contains("dish"))&& (targetName == "pan" || targetName == "pot")) {
            DraggableInfo pan = targetObj.GetComponent<DraggableInfo>();
            if (pan.containing.Count == 0) return false;
            DraggableInfo panItem = GetInfo(pan.containing[0]);
            if (panItem.itemName == "cooked egg") {
                containing.Add(panItem.gameObject);
                panItem.transform.SetParent(transform);
                panItem.transform.position = transform.position + Vector3.up * 0.2f;
                Debug.Log("cooked egg has been plated");
            }
            if (panItem.itemName == "cooked rice") {
                containing.Add(panItem.gameObject);
                panItem.transform.SetParent(transform);
                panItem.transform.position = transform.position + Vector3.up * 0.1f;
                Debug.Log("cooked rice has been plated");
            }
            if (panItem.itemName == "chicken leg") {
                containing.Add(panItem.gameObject);
                panItem.transform.SetParent(transform);
                panItem.transform.position = transform.position + Vector3.up * 0.1f;
                Debug.Log("cooked rice has been plated");
            }
            foreach(Transform child in transform) {
                child.gameObject.SetActive(false);
            }
            string dishName = CalculateDish();
            List<GameObject> sprites = GameObject.Find("StoveManager").GetComponent<StoveManager>().sprites;

            if (dishName == "chicken dish") {
                GameObject obj = Instantiate(sprites[9], transform.position, transform.rotation);
                obj.transform.SetParent(transform);
            }
            if (dishName == "egg dish") {
                GameObject obj = Instantiate(sprites[8], transform.position, transform.rotation);
                obj.transform.SetParent(transform);

            }
            if (dishName == "rice dish") {
                GameObject obj = Instantiate(sprites[6], transform.position, transform.rotation);
                obj.transform.SetParent(transform);
            }
            if (dishName == "rice chicken dish") {
                GameObject obj = Instantiate(sprites[7], transform.position, transform.rotation);
                obj.transform.SetParent(transform);
            }
            if (dishName == "garbage") {
                GameObject obj = Instantiate(sprites[10], transform.position, transform.rotation);
                obj.transform.SetParent(transform);
            }
            itemName = dishName;
        }

        return false;
    }
    public string CalculateDish() {
        bool chicken = false, egg = false, rice = false;
        foreach(GameObject obj in containing) {
            DraggableInfo info = obj.GetComponent<DraggableInfo>();
            if (info.itemName == "chicken leg") chicken = true;
            if (info.itemName == "cooked egg") egg = true;
            if (info.itemName == "cooked rice") rice = true;
        }
        if (chicken && egg && rice) {

        } else if (chicken && !egg && !rice) {
            return "chicken dish";
        } else if (!chicken && egg && !rice) {
            return "egg dish";
        } else if (!chicken && !egg && rice) {
            return "rice dish";
        } else if (chicken && !egg && rice) {
            return "rice chicken dish";
        }
        return "garbage";
    }
    public DraggableInfo GetInfo(GameObject obj) {
        return obj.GetComponent<DraggableInfo>();
    }

    void SwapMesh(GameObject obj, int spriteIndex) {
        List<GameObject> sprites = GameObject.Find("StoveManager").GetComponent<StoveManager>().sprites;
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
        t.localScale = referenceT.localScale;
        
    }
}
