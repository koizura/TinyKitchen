using System;
using System.Xml;
using UnityEngine;

public class InteractShading : MonoBehaviour
{
    [SerializeField]
    private bool isHovering = false;
    [SerializeField]
    private bool isSelected = false;

    private Material material;
    private Material originalMaterial;
    private MeshRenderer meshRenderer;

    [SerializeField]
    private Color hoverOutlineColor = Color.green;
    [SerializeField]
    private Color selectOutlineColor = Color.blue;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        meshRenderer = GetComponent<MeshRenderer>();
        material = meshRenderer.material;
        originalMaterial = new Material(material);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void setHovering(bool isHovering)
    {
        this.isHovering = isHovering;
        changeShader();
    }

    public void setSelected(bool isSelected)
    {
        this.isSelected = isSelected;
        changeShader();
    }

    private void changeShader()
    {
        if (isSelected)
        {
            meshRenderer.material.SetColor("_Outline_Color", hoverOutlineColor);
        }
        else if (isHovering)
        {
            meshRenderer.material.SetColor("_Outline_Color", selectOutlineColor);
        }
        else if (originalMaterial)
        {
            meshRenderer.material = new Material(originalMaterial);
        }
    }

    private void OnValidate()
    {
        if (material && originalMaterial)
        {
            changeShader();
        }
    }
}
