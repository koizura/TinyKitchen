using System;
using System.Linq;
using System.Xml;
using UnityEngine;

public class InteractShading : MonoBehaviour
{
    [SerializeField]
    public bool isHovering = false;
    [SerializeField]
    public bool isSelected = false;

    private Material[] materials;
    private Material[] originalMaterials;
    private MeshRenderer meshRenderer;

    [SerializeField]
    private Color hoverOutlineColor = Color.green;
    [SerializeField]
    private Color selectOutlineColor = Color.blue;

    private bool isOriginal = true;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        meshRenderer = GetComponent<MeshRenderer>();
        if (meshRenderer != null)
        {
            materials = meshRenderer.materials;
            originalMaterials = new Material[materials.Length];
            for (int i = 0; i < materials.Length; i++)
            {
                originalMaterials[i] = new Material(materials[i]);
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (!isOriginal)
        {
            isHovering = false;
            isSelected = false;
            changeShader();
            isOriginal = true;
        }
        changeShader();
    }

    public void setHovering(bool isHovering)
    {
        this.isHovering = isHovering;
        isOriginal = false;
        changeShader();
    }

    public void setSelected(bool isSelected)
    {
        this.isSelected = isSelected;
        isOriginal = false;
        changeShader();
    }

    private void changeShader()
    {
        if (isSelected)
        {
            for (int i = 0; i < materials.Length; i++)
            {
                meshRenderer.materials[i].SetColor("_Outline_Color", hoverOutlineColor);
            }
        }
        else if (isHovering)
        {
            for (int i = 0; i < materials.Length; i++)
            {
                meshRenderer.materials[i].SetColor("_Outline_Color", selectOutlineColor);
            }
        }
        else if (originalMaterials != null && materials.Length != 0 && originalMaterials.Length != 0)
        {
            for (int i = 0; i < materials.Length; i++)
            {
                materials[i] = new Material(originalMaterials[i]);
                meshRenderer.materials = materials;
            }
        }
    }

    private void OnValidate()
    {
        if (materials != null && originalMaterials != null)
        {
            changeShader();
        }
    }

}
