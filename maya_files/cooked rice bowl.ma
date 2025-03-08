//Maya ASCII 2023 scene
//Name: uncooked rice bowl.ma
//Last modified: Sat, Mar 08, 2025 01:47:33 AM
//Codeset: 1252
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "rmanVolumeAggregateSet" "rfm_volume_aggregate_set.py" "1.0";
requires -nodeType "MASH_Waiter" -nodeType "MASH_Distribute" -nodeType "MASH_Repro"
		 "MASH" "450";
requires -nodeType "d_openexr" -nodeType "PxrPathTracer" -nodeType "rmanBakingGlobals"
		 -nodeType "rmanDisplay" -nodeType "rmanDisplayChannel" -nodeType "rmanGlobals" "RenderMan_for_Maya.py" "26.2 @ 2336968";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202405151550-05a853e76d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "99FAB682-4BD9-4A1F-FA6B-41AC85F574FB";
createNode transform -s -n "persp";
	rename -uid "8281F48F-41FD-BCA4-433C-AB99B00B5E8C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.8841743703338416 0.9071873258043226 -7.9230493354200835 ;
	setAttr ".r" -type "double3" -10.538352718188996 -6623.3999999971411 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "87D80876-4E6F-DC76-A5AF-60AF697222E7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.038374578398747;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.3113021850585938e-06 -0.92876771092414856 -5.9604644775390625e-08 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "60F8496C-4F01-D13E-4EE1-3482574EA630";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "9A96D06D-4B93-71E0-4593-439E3DBD5292";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "B21D2DCD-4D41-51C9-792B-8FB0BBD0800A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "491569F4-4AEE-6387-090B-92B079555800";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "3F19868A-401D-C149-DC2E-79B9441BB4D1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1A238025-446E-A420-9307-549B9B2BE62A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "MASH1_ReproMesh";
	rename -uid "B804872D-4E55-F8B3-A27D-AAAE6AD17AD2";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
createNode mesh -n "MASH1_ReproMeshShape" -p "MASH1_ReproMesh";
	rename -uid "E27D6C83-43DF-3E4E-6598-3380A7A541A1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere4";
	rename -uid "CB9B11D7-4DA0-5738-3FBA-E49C8B6C2BAC";
createNode mesh -n "pSphereShape4" -p "pSphere4";
	rename -uid "0F2DAA1A-41E6-4F1E-1601-18BF9B51B2FB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000017881393433 0.099852427840232849 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 126 ".pt";
	setAttr ".pt[692]" -type "float3" 0.023208331 0.005880279 -0.010332997 ;
	setAttr ".pt[693]" -type "float3" 7.4505806e-09 -4.4408921e-16 1.6763806e-08 ;
	setAttr ".pt[694]" -type "float3" 0.024849547 0.005880279 -0.005281907 ;
	setAttr ".pt[695]" -type "float3" 1.1175871e-08 -4.4408921e-16 5.5879354e-09 ;
	setAttr ".pt[696]" -type "float3" 0.020552821 0.005880279 -0.014932482 ;
	setAttr ".pt[697]" -type "float3" -3.3527613e-08 -4.4408921e-16 2.9802322e-08 ;
	setAttr ".pt[698]" -type "float3" 0.016999066 0.005880279 -0.018879352 ;
	setAttr ".pt[699]" -type "float3" 0 -4.4408921e-16 7.4505806e-09 ;
	setAttr ".pt[700]" -type "float3" 0.012702349 0.005880279 -0.022001067 ;
	setAttr ".pt[701]" -type "float3" 1.4901161e-08 -4.4408921e-16 1.8626451e-08 ;
	setAttr ".pt[702]" -type "float3" 0.0078504886 0.005880279 -0.024161275 ;
	setAttr ".pt[703]" -type "float3" -9.3132257e-09 -4.4408921e-16 -3.7252903e-08 ;
	setAttr ".pt[704]" -type "float3" 0.0026555341 0.005880279 -0.025265506 ;
	setAttr ".pt[705]" -type "float3" 2.3283064e-09 -4.4408921e-16 -3.3527613e-08 ;
	setAttr ".pt[706]" -type "float3" -0.0026554891 0.005880279 -0.025265509 ;
	setAttr ".pt[707]" -type "float3" 4.6566129e-10 -4.4408921e-16 -2.6077032e-08 ;
	setAttr ".pt[708]" -type "float3" -0.0078504663 0.005880279 -0.024161279 ;
	setAttr ".pt[709]" -type "float3" 5.5879354e-09 -4.4408921e-16 -2.2351742e-08 ;
	setAttr ".pt[710]" -type "float3" -0.012702316 0.005880279 -0.02200109 ;
	setAttr ".pt[711]" -type "float3" 9.3132257e-09 -4.4408921e-16 -7.4505806e-09 ;
	setAttr ".pt[712]" -type "float3" -0.016999027 0.005880279 -0.018879345 ;
	setAttr ".pt[713]" -type "float3" -1.4901161e-08 -4.4408921e-16 -1.1175871e-08 ;
	setAttr ".pt[714]" -type "float3" -0.020552792 0.005880279 -0.01493248 ;
	setAttr ".pt[715]" -type "float3" -7.4505806e-09 4.4408921e-16 -2.6077032e-08 ;
	setAttr ".pt[716]" -type "float3" -0.023208281 0.005880279 -0.010333011 ;
	setAttr ".pt[717]" -type "float3" -2.2351742e-08 -4.4408921e-16 -3.7252903e-09 ;
	setAttr ".pt[718]" -type "float3" -0.024849504 0.005880279 -0.0052819238 ;
	setAttr ".pt[719]" -type "float3" -1.1175871e-08 -4.4408921e-16 -9.3132257e-10 ;
	setAttr ".pt[720]" -type "float3" -0.025404669 0.005880279 4.1974149e-09 ;
	setAttr ".pt[721]" -type "float3" 1.8626451e-08 -4.4408921e-16 0 ;
	setAttr ".pt[722]" -type "float3" -0.024849501 0.005880279 0.0052819354 ;
	setAttr ".pt[723]" -type "float3" -1.8626451e-08 -4.4408921e-16 3.7252903e-09 ;
	setAttr ".pt[724]" -type "float3" -0.023208296 0.005880279 0.010333009 ;
	setAttr ".pt[725]" -type "float3" -1.1175871e-08 -4.4408921e-16 -9.3132257e-09 ;
	setAttr ".pt[726]" -type "float3" -0.020552797 0.005880279 0.014932506 ;
	setAttr ".pt[727]" -type "float3" 1.1175871e-08 -4.4408921e-16 1.1175871e-08 ;
	setAttr ".pt[728]" -type "float3" -0.016999034 0.005880279 0.018879356 ;
	setAttr ".pt[729]" -type "float3" -2.2351742e-08 -4.4408921e-16 -7.4505806e-09 ;
	setAttr ".pt[730]" -type "float3" -0.012702333 0.005880279 0.02200109 ;
	setAttr ".pt[731]" -type "float3" 1.3038516e-08 -4.4408921e-16 1.4901161e-08 ;
	setAttr ".pt[732]" -type "float3" -0.0078504691 0.005880279 0.024161279 ;
	setAttr ".pt[733]" -type "float3" 7.4505806e-09 -4.4408921e-16 2.2351742e-08 ;
	setAttr ".pt[734]" -type "float3" -0.0026555054 0.005880279 0.025265509 ;
	setAttr ".pt[735]" -type "float3" 1.8626451e-09 -4.4408921e-16 2.6077032e-08 ;
	setAttr ".pt[736]" -type "float3" 0.0026555152 0.005880279 0.025265509 ;
	setAttr ".pt[737]" -type "float3" -1.3969839e-09 -4.4408921e-16 2.6077032e-08 ;
	setAttr ".pt[738]" -type "float3" 0.0078504747 0.005880279 0.024161283 ;
	setAttr ".pt[739]" -type "float3" 1.4901161e-08 -4.4408921e-16 7.4505806e-09 ;
	setAttr ".pt[740]" -type "float3" 0.012702337 0.005880279 0.022001093 ;
	setAttr ".pt[741]" -type "float3" -1.8626451e-08 -4.4408921e-16 7.4505806e-09 ;
	setAttr ".pt[742]" -type "float3" 0.016999036 0.005880279 0.018879352 ;
	setAttr ".pt[743]" -type "float3" 1.1175871e-08 -4.4408921e-16 -3.7252903e-09 ;
	setAttr ".pt[744]" -type "float3" 0.020552799 0.005880279 0.014932486 ;
	setAttr ".pt[745]" -type "float3" -7.4505806e-09 -4.4408921e-16 2.0489097e-08 ;
	setAttr ".pt[746]" -type "float3" 0.023208324 0.005880279 0.010333024 ;
	setAttr ".pt[747]" -type "float3" 2.2351742e-08 -4.4408921e-16 3.7252903e-09 ;
	setAttr ".pt[748]" -type "float3" 0.024849501 0.005880279 0.0052819354 ;
	setAttr ".pt[749]" -type "float3" 1.1175871e-08 -4.4408921e-16 3.7252903e-09 ;
	setAttr ".pt[750]" -type "float3" 0.025404669 0.005880279 7.6489712e-09 ;
	setAttr ".pt[751]" -type "float3" -1.8626451e-08 -4.4408921e-16 -1.7763568e-14 ;
	setAttr ".pt[752]" -type "float3" 0.074151427 0.046201777 -0.033014268 ;
	setAttr ".pt[753]" -type "float3" 0.056916546 0.053160168 -0.025340885 ;
	setAttr ".pt[754]" -type "float3" 0.060941443 0.053160168 -0.012953427 ;
	setAttr ".pt[755]" -type "float3" 0.079395182 0.046201777 -0.016875867 ;
	setAttr ".pt[756]" -type "float3" 0.065667085 0.046201777 -0.047709834 ;
	setAttr ".pt[757]" -type "float3" 0.050404254 0.053160168 -0.036620729 ;
	setAttr ".pt[758]" -type "float3" 0.062302843 0.053160168 3.9963748e-08 ;
	setAttr ".pt[759]" -type "float3" 0.081168756 0.046201777 2.333725e-08 ;
	setAttr ".pt[760]" -type "float3" 0.054312646 0.046201777 -0.060320143 ;
	setAttr ".pt[761]" -type "float3" 0.041688833 0.053160168 -0.046300136 ;
	setAttr ".pt[762]" -type "float3" 0.040584423 0.046201777 -0.070294186 ;
	setAttr ".pt[763]" -type "float3" 0.031151528 0.053160168 -0.053955957 ;
	setAttr ".pt[764]" -type "float3" 0.025082547 0.046201777 -0.077196069 ;
	setAttr ".pt[765]" -type "float3" 0.019252712 0.053160168 -0.059253611 ;
	setAttr ".pt[766]" -type "float3" 0.0084845051 0.046201777 -0.080723993 ;
	setAttr ".pt[767]" -type "float3" 0.0065124808 0.053160168 -0.061961699 ;
	setAttr ".pt[768]" -type "float3" -0.0084844027 0.046201777 -0.080724292 ;
	setAttr ".pt[769]" -type "float3" -0.0065123872 0.053160168 -0.061961714 ;
	setAttr ".pt[770]" -type "float3" -0.025082523 0.046201777 -0.077196129 ;
	setAttr ".pt[771]" -type "float3" -0.019252632 0.053160168 -0.059253637 ;
	setAttr ".pt[772]" -type "float3" -0.04058437 0.046201777 -0.070294365 ;
	setAttr ".pt[773]" -type "float3" -0.031151421 0.053160168 -0.053955995 ;
	setAttr ".pt[774]" -type "float3" -0.054312579 0.046201777 -0.060320091 ;
	setAttr ".pt[775]" -type "float3" -0.041688811 0.053160168 -0.046300121 ;
	setAttr ".pt[776]" -type "float3" -0.065666772 0.046201777 -0.04770983 ;
	setAttr ".pt[777]" -type "float3" -0.050404157 0.053160168 -0.036620729 ;
	setAttr ".pt[778]" -type "float3" -0.074151382 0.046201777 -0.033014338 ;
	setAttr ".pt[779]" -type "float3" -0.056916513 0.053160168 -0.025340918 ;
	setAttr ".pt[780]" -type "float3" -0.079395138 0.046201777 -0.016875932 ;
	setAttr ".pt[781]" -type "float3" -0.06094142 0.053160168 -0.012953537 ;
	setAttr ".pt[782]" -type "float3" -0.081168756 0.046201777 1.5450436e-08 ;
	setAttr ".pt[783]" -type "float3" -0.062302843 0.053160168 7.1778241e-09 ;
	setAttr ".pt[784]" -type "float3" -0.079395123 0.046201777 0.016876016 ;
	setAttr ".pt[785]" -type "float3" -0.060941417 0.053160168 0.012953534 ;
	setAttr ".pt[786]" -type "float3" -0.074151404 0.046201777 0.033014324 ;
	setAttr ".pt[787]" -type "float3" -0.056916524 0.053160168 0.025340905 ;
	setAttr ".pt[788]" -type "float3" -0.065667048 0.046201777 0.047709871 ;
	setAttr ".pt[789]" -type "float3" -0.050404172 0.053160168 0.036620744 ;
	setAttr ".pt[790]" -type "float3" -0.054312591 0.046201777 0.060320105 ;
	setAttr ".pt[791]" -type "float3" -0.041688811 0.053160168 0.046300121 ;
	setAttr ".pt[792]" -type "float3" -0.040584367 0.046201777 0.070294261 ;
	setAttr ".pt[793]" -type "float3" -0.031151414 0.053160168 0.053955987 ;
	setAttr ".pt[794]" -type "float3" -0.025082532 0.046201777 0.077196181 ;
	setAttr ".pt[795]" -type "float3" -0.019252691 0.053160168 0.059253644 ;
	setAttr ".pt[796]" -type "float3" -0.0084844194 0.046201777 0.080724299 ;
	setAttr ".pt[797]" -type "float3" -0.0065124244 0.053160168 0.061961714 ;
	setAttr ".pt[798]" -type "float3" 0.00848448 0.046201777 0.080724046 ;
	setAttr ".pt[799]" -type "float3" 0.0065124426 0.053160168 0.061961703 ;
	setAttr ".pt[800]" -type "float3" 0.025082542 0.046201777 0.077196181 ;
	setAttr ".pt[801]" -type "float3" 0.019252695 0.053160168 0.059253644 ;
	setAttr ".pt[802]" -type "float3" 0.040584382 0.046201777 0.07029438 ;
	setAttr ".pt[803]" -type "float3" 0.031151528 0.053160168 0.053956047 ;
	setAttr ".pt[804]" -type "float3" 0.054312602 0.046201777 0.060320154 ;
	setAttr ".pt[805]" -type "float3" 0.041688822 0.053160168 0.046300128 ;
	setAttr ".pt[806]" -type "float3" 0.065667056 0.046201777 0.047709871 ;
	setAttr ".pt[807]" -type "float3" 0.050404176 0.053160168 0.036620747 ;
	setAttr ".pt[808]" -type "float3" 0.074151419 0.046201777 0.033014324 ;
	setAttr ".pt[809]" -type "float3" 0.056916542 0.053160168 0.025340905 ;
	setAttr ".pt[810]" -type "float3" 0.079395123 0.046201777 0.016875951 ;
	setAttr ".pt[811]" -type "float3" 0.06094142 0.053160168 0.012953511 ;
	setAttr ".dr" 1;
createNode transform -n "pSphere5";
	rename -uid "615AB3F2-4D5E-DC3A-A653-D48E0C48BC7D";
	setAttr ".s" -type "double3" 1 0.58874951335690784 1 ;
createNode mesh -n "pSphereShape5" -p "pSphere5";
	rename -uid "E4A0664C-4CA4-E41A-40B8-DE90E699717C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FCB3F95D-4113-7837-6B8C-61A83EFD319E";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8AEB9647-48AE-362D-49B9-84A0C51D07FB";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "817C6FB7-4290-3C59-ADEF-52B8774157EA";
createNode displayLayerManager -n "layerManager";
	rename -uid "F907BA88-4C56-A073-28F2-768D71B18222";
createNode displayLayer -n "defaultLayer";
	rename -uid "8B7C6351-4A5E-12DC-96C9-FE94ACD2C9FA";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F5B3B0E3-4829-4687-C367-138265480C7D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "077C376E-42C6-2829-A07C-CD883551F5BF";
	setAttr ".g" yes;
createNode rmanGlobals -s -n "rmanGlobals";
	rename -uid "A4324F35-4A0D-8B91-C3C4-559058E4ECA9";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".hider_minSamples" 0;
	setAttr ".hider_maxSamples" 128;
	setAttr ".ri_pixelVariance" 0.014999999664723873;
	setAttr ".hider_incremental" yes;
	setAttr ".ipr_hider_minSamples" 0;
	setAttr ".ipr_hider_maxSamples" 64;
	setAttr ".ipr_ri_pixelVariance" 0.05000000074505806;
	setAttr ".ipr_ri_decidither" 0;
	setAttr ".ri_maxSpecularDepth" 4;
	setAttr ".ri_maxDiffuseDepth" 1;
	setAttr ".ri_displayFilter" -type "string" "gaussian";
	setAttr ".ri_displayFilterSize" -type "float2" 2 2 ;
	setAttr ".renderVariant" -type "string" "ris";
	setAttr ".xpuMode" -type "long2" 1 1 ;
	setAttr ".motionBlur" 0;
	setAttr ".cameraBlur" no;
	setAttr ".shutterAngle" 180;
	setAttr ".shutterOpenEnd" 0;
	setAttr ".shutterCloseStart" 1;
	setAttr ".shutterTiming" 0;
	setAttr ".motionSamples" 2;
	setAttr ".ocioConfig" 0;
	setAttr ".ocioConfigPath" -type "string" "";
	setAttr ".ocioColorSpaceName" -type "string" "";
	setAttr ".ocioEnabled" 0;
	setAttr ".enableQN" no;
	setAttr ".qnCheapPass" no;
	setAttr ".qnMinSamples" 2;
	setAttr ".qnInterval" 4;
	setAttr ".enableStylizedLooks" no;
	setAttr ".displayFilters[0]" -type "string" "";
	setAttr ".sampleFilters[0]" -type "string" "";
	setAttr ".outputAllShaders" no;
	setAttr ".reentrantProcedurals" yes;
	setAttr ".outputShadowAOV" 0;
	setAttr ".enableImagePlaneFilter" yes;
	setAttr ".learnLightSelection" yes;
	setAttr ".shadowBumpTerminator" yes;
	setAttr ".blueNoise" yes;
	setAttr ".geomShadowTermBias" yes;
	setAttr ".roughnessMollification" 1;
	setAttr ".opt_bucket_order" -type "string" "circle";
	setAttr ".limits_bucketsize" -type "long2" 16 16 ;
	setAttr ".limits_othreshold" -type "float3" 0.99599999 0.99599999 0.99599999 ;
	setAttr ".rfm_referenceFrame" 0;
	setAttr ".adaptiveMetric" -type "string" "variance";
	setAttr ".hider_darkfalloff" 0.02500000037252903;
	setAttr ".hider_exposurebracket" -type "float2" -1 1 ;
	setAttr ".ri_hider_adaptAll" no;
	setAttr ".dice_micropolygonlength" 1;
	setAttr ".dice_watertight" no;
	setAttr ".dice_referenceCameraType" 0;
	setAttr ".dice_referenceCamera" -type "string" "";
	setAttr ".hair_minWidth" 0.5;
	setAttr ".trace_autobias" yes;
	setAttr ".trace_bias" 0.0010000000474974513;
	setAttr ".trace_worldorigin" -type "string" "camera";
	setAttr ".trace_worldoffset" -type "float3" 0 0 0 ;
	setAttr ".opt_oslmatchcpp" no;
	setAttr ".opt_oslSIMDEnable" yes;
	setAttr ".opt_oslVerbosity" 0;
	setAttr ".opt_oslStatistics" 0;
	setAttr ".volume_aggregatespace" -type "string" "world";
	setAttr ".deep_quality" 0.75;
	setAttr ".opt_cropWindowEnable" no;
	setAttr ".opt_cropWindowTopLeft" -type "float2" 0 0 ;
	setAttr ".opt_cropWindowBottomRight" -type "float2" 1 1 ;
	setAttr ".user_sceneUnits" 1;
	setAttr ".user_iesIgnoreWatts" yes;
	setAttr ".limits_texturememory" 4096;
	setAttr ".limits_geocachememory" 4096;
	setAttr ".limits_opacitycachememory" 2048;
	setAttr ".statistics_jsonFilename" -type "string" "";
	setAttr ".statistics_level" 1;
	setAttr ".statistics_xmlfilename" -type "string" "";
	setAttr ".lpe_reload_definitions" -type "string" "";
	setAttr ".lpe_diffuse2" -type "string" "Diffuse,HairDiffuse,diffuse,translucent,hair4,irradiance";
	setAttr ".lpe_diffuse3" -type "string" "Subsurface,subsurface";
	setAttr ".lpe_specular2" -type "string" "Specular,HairSpecularR,specular,hair1";
	setAttr ".lpe_specular3" -type "string" "RoughSpecular,HairSpecularTRT,hair3";
	setAttr ".lpe_specular4" -type "string" "Clearcoat";
	setAttr ".lpe_specular5" -type "string" "Iridescence";
	setAttr ".lpe_specular6" -type "string" "Fuzz,HairSpecularGLINTS";
	setAttr ".lpe_specular7" -type "string" "SingleScatter,HairSpecularTT,hair2";
	setAttr ".lpe_specular8" -type "string" "Glass,specular";
	setAttr ".lpe_user2" -type "string" "Albedo,DiffuseAlbedo,SubsurfaceAlbedo,HairAlbedo";
	setAttr ".lpe_user3" -type "string" "Position";
	setAttr ".lpe_user4" -type "string" "UserColor";
	setAttr ".lpe_user5" -type "string" "";
	setAttr ".lpe_user6" -type "string" "Normal,DiffuseNormal,HairTangent,SubsurfaceNormal,SpecularNormal,RoughSpecularNormal,SingleScatterNormal,FuzzNormal,IridescenceNormal,GlassNormal";
	setAttr ".lpe_user7" -type "string" "";
	setAttr ".lpe_user8" -type "string" "";
	setAttr ".lpe_user9" -type "string" "";
	setAttr ".lpe_user10" -type "string" "";
	setAttr ".lpe_user11" -type "string" "";
	setAttr ".lpe_user12" -type "string" "";
	setAttr ".imageFileFormat" -type "string" "<scene>_<layer>_<camera>_<aov>.<f4>.<ext>";
	setAttr ".ribFileFormat" -type "string" "<camera><layer>.<f4>.rib";
	setAttr ".version" 1;
	setAttr ".take" 1;
	setAttr ".imageOutputDir" -type "string" "<ws>/images/<scene>_v<version>_t<take>";
	setAttr ".ribOutputDir" -type "string" "<ws>/renderman/rib/<scene>/v<version>_t<take>";
	setAttr -s 10 ".UserTokens";
	setAttr ".UserTokens[0].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[0].userTokenValues" -type "string" "";
	setAttr ".UserTokens[1].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[1].userTokenValues" -type "string" "";
	setAttr ".UserTokens[2].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[2].userTokenValues" -type "string" "";
	setAttr ".UserTokens[3].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[3].userTokenValues" -type "string" "";
	setAttr ".UserTokens[4].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[4].userTokenValues" -type "string" "";
	setAttr ".UserTokens[5].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[5].userTokenValues" -type "string" "";
	setAttr ".UserTokens[6].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[6].userTokenValues" -type "string" "";
	setAttr ".UserTokens[7].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[7].userTokenValues" -type "string" "";
	setAttr ".UserTokens[8].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[8].userTokenValues" -type "string" "";
	setAttr ".UserTokens[9].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[9].userTokenValues" -type "string" "";
	setAttr ".rlfData" -type "string" "init";
	setAttr ".jobid" -type "string" "";
	setAttr ".txmanagerData" -type "string" "";
	setAttr ".rmanVersion" -type "string" "";
createNode PxrPathTracer -s -n "PxrPathTracer";
	rename -uid "5D7913D9-40DC-5333-8ECE-6B94E264A99E";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".maxIndirectBounces" 8;
	setAttr ".maxContinuationLength" -1;
	setAttr ".maxNonStochasticOpacityEvents" 0;
	setAttr ".sampleMode" -type "string" "bxdf";
	setAttr ".numLightSamples" 1;
	setAttr ".numBxdfSamples" 1;
	setAttr ".numVolumeAggregateSamples" 1;
	setAttr ".numIndirectSamples" 1;
	setAttr ".numDiffuseSamples" 1;
	setAttr ".numSpecularSamples" 1;
	setAttr ".numSubsurfaceSamples" 1;
	setAttr ".numRefractionSamples" 1;
	setAttr ".allowCaustics" no;
	setAttr ".accumOpacity" no;
	setAttr ".risPathGuiding" no;
	setAttr ".rouletteDepth" 4;
	setAttr ".rouletteThreshold" 0.20000000298023224;
	setAttr ".clampDepth" 2;
	setAttr ".clampLuminance" 10;
	setAttr ".volumeAggregate" -type "string" "globalVolumeAggregate";
	setAttr ".volumeAggregateCamera" -type "string" "";
	setAttr ".volumeAggregateIndirect" -type "string" "";
	setAttr ".volumeAggregateTransmission" -type "string" "";
	setAttr ".jointSampling" no;
	setAttr ".jointScatteringBias" 0.5;
createNode rmanBakingGlobals -s -n "rmanBakingGlobals";
	rename -uid "6DDDDB57-4E3F-56F6-A1DE-8885242AD5D2";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".bakeMode" 0;
	setAttr ".bakingImageFileFormat" -type "string" "<scene>_<user:bakingIdentifier>_<aov>.<ext>";
	setAttr ".resolution" 512;
	setAttr ".rman_bakeudimstride" 1;
	setAttr ".rman_bakeudimoffset" 0;
	setAttr ".rman_diceDistanceLength" 0.05000000074505806;
	setAttr ".rman_bakebboxmin" -type "float3" 1e+30 1e+30 1e+30 ;
	setAttr ".rman_bakebboxmax" -type "float3" -1e+30 -1e+30 -1e+30 ;
	setAttr ".ri_maxSpecularDepth" 4;
	setAttr ".ri_maxDiffuseDepth" 1;
	setAttr ".init" 0;
createNode rmanDisplay -n "rmanDefaultBakeDisplay";
	rename -uid "3813702D-4382-AC36-5C77-0DB86E9A52CF";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enable" yes;
	setAttr ".denoise" no;
	setAttr ".frameMode" 0;
	setAttr ".opticalFlow" no;
	setAttr ".remapBreakPoint" 0;
	setAttr ".remapMaxValue" 0;
	setAttr ".remapSmoothness" 0;
	setAttr -s 2 ".displayChannels";
	setAttr ".name" -type "string" "";
createNode rmanDisplayChannel -n "diffuse";
	rename -uid "367BFA20-436B-CE17-E208-A28FE98F0BB1";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enable" yes;
	setAttr ".channelType" -type "string" "color";
	setAttr ".channelSource" -type "string" "lpe:C(D[DS]*[LO])|[LO]";
	setAttr ".lpeLightGroup" -type "string" "";
	setAttr ".filter" -type "string" "inherit from display";
	setAttr ".statistics" -type "string" "";
	setAttr ".relativepixelvariance" -1;
	setAttr ".shadowthreshold" 0.0099999997764825821;
	setAttr ".remapBreakPoint" 0;
	setAttr ".remapMaxValue" 0;
	setAttr ".remapSmoothness" 0;
	setAttr ".name" -type "string" "diffuse";
createNode rmanDisplayChannel -n "a";
	rename -uid "3EE0AC2B-44C6-D3C7-236C-A2AF7C1B0842";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enable" yes;
	setAttr ".channelType" -type "string" "float";
	setAttr ".channelSource" -type "string" "a";
	setAttr ".lpeLightGroup" -type "string" "";
	setAttr ".filter" -type "string" "inherit from display";
	setAttr ".statistics" -type "string" "";
	setAttr ".relativepixelvariance" -1;
	setAttr ".shadowthreshold" 0.0099999997764825821;
	setAttr ".remapBreakPoint" 0;
	setAttr ".remapMaxValue" 0;
	setAttr ".remapSmoothness" 0;
	setAttr ".name" -type "string" "a";
createNode PxrPathTracer -s -n "bake_PxrPathTracer";
	rename -uid "98CDC4C5-4BFB-D95F-AE19-CB908A8DB9AF";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".maxIndirectBounces" 8;
	setAttr ".maxContinuationLength" -1;
	setAttr ".maxNonStochasticOpacityEvents" 0;
	setAttr ".sampleMode" -type "string" "bxdf";
	setAttr ".numLightSamples" 1;
	setAttr ".numBxdfSamples" 1;
	setAttr ".numVolumeAggregateSamples" 1;
	setAttr ".numIndirectSamples" 1;
	setAttr ".numDiffuseSamples" 1;
	setAttr ".numSpecularSamples" 1;
	setAttr ".numSubsurfaceSamples" 1;
	setAttr ".numRefractionSamples" 1;
	setAttr ".allowCaustics" no;
	setAttr ".accumOpacity" no;
	setAttr ".risPathGuiding" no;
	setAttr ".rouletteDepth" 4;
	setAttr ".rouletteThreshold" 0.20000000298023224;
	setAttr ".clampDepth" 2;
	setAttr ".clampLuminance" 10;
	setAttr ".volumeAggregate" -type "string" "globalVolumeAggregate";
	setAttr ".volumeAggregateCamera" -type "string" "";
	setAttr ".volumeAggregateIndirect" -type "string" "";
	setAttr ".volumeAggregateTransmission" -type "string" "";
	setAttr ".jointSampling" no;
	setAttr ".jointScatteringBias" 0.5;
createNode rmanVolumeAggregateSet -s -n "globalVolumeAggregate";
	rename -uid "44F5400D-4A8D-7D83-1DCC-B69AB287E215";
lockNode -l 1 ;
createNode d_openexr -n "d_openexr";
	rename -uid "3277CAF3-4FDA-3EF9-72AC-94903A6E3A02";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".asrgba" yes;
	setAttr ".asrgbacolorchannel" -type "string" "";
	setAttr ".asrgbaalphachannel" -type "string" "";
	setAttr ".autocrop" -type "string" "false";
	setAttr ".storage" -type "string" "scanline";
	setAttr ".exrpixeltype" -type "string" "half";
	setAttr ".compression" -type "string" "zips";
	setAttr ".compressionlevel" 45;
	setAttr ".forcepar" 0;
	setAttr ".metadatacount" 0;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "A570D930-4348-DE5E-7875-8EB89E39C3E3";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "64091AED-4437-5347-4757-BCA9A4E3E8BD";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A0A9F0A0-4E60-FD75-60A8-12A794A77BCA";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "1C51F232-4D83-394F-D92A-F584DB359FBE";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode MASH_Waiter -n "MASH1";
	rename -uid "2A6DB57A-474D-A7C9-9233-D8A8AA8F3290";
	addAttr -s false -ci true -h true -sn "instancerMessage" -ln "instancerMessage" 
		-at "message";
	setAttr ".filename" -type "string" "";
createNode MASH_Distribute -n "MASH1_Distribute";
	rename -uid "2D47A13C-46AE-99E4-3C7E-BAA16594D455";
	setAttr ".savedData" -type "newParticles" ;
	setAttr ".mapDirection" 4;
	setAttr -s 3 ".scaleRamp[0:2]"  0 0 1 0 0 1 1 1 1;
	setAttr -s 3 ".rotationRamp[0:2]"  0 0 1 0 0 1 1 1 1;
	setAttr -s 3 ".bRmp[0:2]"  0 0 1 0 0 1 1 1 1;
	setAttr ".bRmpX[0]"  0 1 1;
	setAttr ".bRmpY[0]"  0 1 1;
	setAttr ".bRmpZ[0]"  0 1 1;
createNode MASH_Repro -n "MASH1_Repro";
	rename -uid "8B850265-47E2-9CC4-2AD4-1EA0F0E6FFFD";
	addAttr -s false -ci true -h true -sn "instancerMessage" -ln "instancerMessage" 
		-at "message";
	setAttr ".numberOfObjects" 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0132A7EA-4F58-0C35-F430-B398C3BD584A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 783\n            -height 354\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 783\n            -height 353\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 783\n            -height 353\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1576\n            -height 797\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1576\\n    -height 797\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1576\\n    -height 797\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "72FB5D85-48BD-6818-F521-F68EC0E39721";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 720 -ast 1 -aet 720 ";
	setAttr ".st" 6;
createNode polySphere -n "polySphere4";
	rename -uid "BF0AFD47-4F1D-D688-E445-9884313BFACE";
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak1";
	rename -uid "B3B34D2D-4869-BA96-E0C3-1BA13CA7FE5C";
	setAttr ".uopa" yes;
	setAttr -s 91 ".tk";
	setAttr ".tk[0]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[1]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[2]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[3]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[4]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[5]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[6]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[7]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[8]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[9]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[10]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[11]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[12]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[13]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[14]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[15]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[16]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[17]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[18]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[19]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[20]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[21]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[22]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[23]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[24]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[25]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[26]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[27]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[28]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[29]" -type "float3" 1.4004914e-06 0.10892341 0 ;
	setAttr ".tk[30]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[31]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[32]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[33]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[34]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[35]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[36]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[37]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[38]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[39]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[40]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[41]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[42]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[43]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[44]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[45]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[46]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[47]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[48]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[49]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[50]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[51]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[52]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[53]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[54]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[55]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[56]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[57]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[58]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[59]" -type "float3" 1.4004914e-06 0.072291903 0 ;
	setAttr ".tk[60]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[61]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[62]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[63]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[64]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[65]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[66]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[67]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[68]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[69]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[70]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[71]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[72]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[73]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[74]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[75]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[76]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[77]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[78]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[79]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[80]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[81]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[82]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[83]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[84]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[85]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[86]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[87]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[88]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[89]" -type "float3" 1.4004914e-06 0.012242492 0 ;
	setAttr ".tk[570]" -type "float3" 1.4004914e-06 0.12123494 0 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "D168ECF7-4E59-A991-804F-33883C10D9CA";
	setAttr ".dc" -type "componentList" 8 "f[307:320]" "f[337:350]" "f[367:380]" "f[397:409]" "f[427:439]" "f[457:469]" "f[488:499]" "f[519:528]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "9F166BAA-4721-5C56-5972-E6B131FD0FEF";
	setAttr ".dc" -type "componentList" 7 "f[300:354]" "f[356:424]" "f[426:436]" "f[467:475]" "f[477:479]" "f[481:484]" "f[486:496]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "EF1AAF82-42D2-49C6-70D9-4185547884DD";
	setAttr ".dc" -type "componentList" 2 "f[300:301]" "f[332:334]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "63D6B7FB-4694-8915-9C78-06BA57845A47";
	setAttr ".ics" -type "componentList" 1 "f[0:329]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.3841858e-07 -0.36116529 -2.0861626e-07 ;
	setAttr ".rs" 49631;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0000005960464478 -0.8787650465965271 -0.99452263116836548 ;
	setAttr ".cbx" -type "double3" 1.0000001192092896 0.15643449127674103 0.99452221393585205 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "C8AC1B8F-4E1B-AF92-94FA-D9A090D4E8B8";
	setAttr ".ics" -type "componentList" 1 "f[0:329]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.3841858e-07 -0.36116526 -2.0861626e-07 ;
	setAttr ".rs" 53343;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 0.05000000074505806;
	setAttr ".cbn" -type "double3" -1.0000005960464478 -0.8787650465965271 -0.99452263116836548 ;
	setAttr ".cbx" -type "double3" 1.0000001192092896 0.15643450617790222 0.99452221393585205 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "DD462322-448F-9845-BA10-CB81C9A1C02E";
	setAttr ".ics" -type "componentList" 1 "e[300:329]";
	setAttr ".cv" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "A3770D5E-48B6-CA65-E017-B8A909450A28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[270:299]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak2";
	rename -uid "8835B873-438E-2660-95EC-6A9E03507A27";
	setAttr ".uopa" yes;
	setAttr -s 691 ".tk";
	setAttr ".tk[0:165]" -type "float3"  1.1175871e-08 -5.5879354e-08 6.4261258e-08
		 2.7939677e-09 -5.5879354e-08 6.3329935e-08 1.1175871e-08 -5.5879354e-08 6.4726919e-08
		 -2.4214387e-08 -5.5879354e-08 6.4261258e-08 3.259629e-09 -5.5879354e-08 6.4261258e-08
		 3.9581209e-09 -5.5879354e-08 6.4261258e-08 -4.1909516e-09 -5.5879354e-08 3.632158e-08
		 -4.4237822e-09 -5.5879354e-08 3.632158e-08 3.259629e-09 -5.5879354e-08 6.6123903e-08
		 -3.7252903e-09 -5.5879354e-08 6.4261258e-08 1.5832484e-08 -5.5879354e-08 3.5390258e-08
		 -5.5879354e-09 -5.5879354e-08 6.4261258e-08 9.3132257e-10 -5.5879354e-08 6.4261258e-08
		 -1.9557774e-08 -5.5879354e-08 6.4261258e-08 -1.2107193e-08 -5.5879354e-08 6.4261229e-08
		 -3.7252903e-09 -5.5879354e-08 6.4028427e-08 -1.3969839e-08 -5.5879354e-08 6.4726919e-08
		 -5.5879354e-09 -5.5879354e-08 6.4261258e-08 1.5832484e-08 -5.5879354e-08 6.4261258e-08
		 -3.7252903e-09 -5.5879354e-08 9.2200935e-08 -4.8894435e-09 -5.5879354e-08 9.406358e-08
		 -4.3073669e-09 -5.5879354e-08 6.519258e-08 -4.1909516e-09 -5.5879354e-08 6.519258e-08
		 -3.7252903e-09 -5.5879354e-08 9.406358e-08 2.3283064e-09 -5.5879354e-08 9.4994903e-08
		 -1.8626451e-08 -5.5879354e-08 6.4261258e-08 -3.7252903e-09 -5.5879354e-08 6.519258e-08
		 -2.514571e-08 -5.5879354e-08 6.4726919e-08 1.8626451e-09 -5.5879354e-08 6.4028427e-08
		 -2.7008355e-08 -5.5879354e-08 6.4261286e-08 1.1175871e-08 -1.4901161e-08 6.3795596e-08
		 -1.4901161e-08 -1.4901161e-08 6.146729e-08 -9.3132257e-09 -1.4901161e-08 6.6123903e-08
		 3.7252903e-09 -1.4901161e-08 6.519258e-08 2.7939677e-09 -1.4901161e-08 9.1269612e-08
		 -3.7252903e-09 -1.4901161e-08 1.0058284e-07 -4.4237822e-09 -1.4901161e-08 3.7252903e-09
		 -3.9581209e-09 -1.4901161e-08 3.7252903e-09 2.7939677e-09 -1.4901161e-08 1.3038516e-07
		 1.1175871e-08 -1.4901161e-08 9.1269612e-08 -1.1175871e-08 -1.4901161e-08 3.5390258e-08
		 9.3132257e-09 -1.4901161e-08 6.7055225e-08 4.0978193e-08 -1.4901161e-08 6.2398612e-08
		 -8.5681677e-08 -1.4901161e-08 6.4726919e-08 -6.7055225e-08 -1.4901161e-08 6.4261222e-08
		 -7.6368451e-08 -1.4901161e-08 6.2864274e-08 5.4016709e-08 -1.4901161e-08 3.259629e-08
		 -2.0489097e-08 -1.4901161e-08 6.519258e-08 -1.1175871e-08 -1.4901161e-08 6.519258e-08
		 1.1175871e-08 -1.4901161e-08 9.4994903e-08 -1.0244548e-08 -1.4901161e-08 6.7055225e-08
		 -3.7252903e-09 -1.4901161e-08 6.146729e-08 -3.7252903e-09 -1.4901161e-08 6.146729e-08
		 -4.6566129e-09 -1.4901161e-08 6.7055225e-08 2.7939677e-09 -1.4901161e-08 9.4994903e-08
		 -2.6077032e-08 -1.4901161e-08 6.7055225e-08 -1.1175871e-08 -1.4901161e-08 9.406358e-08
		 1.6763806e-08 -1.4901161e-08 6.4261258e-08 -3.7252903e-09 -1.4901161e-08 6.2864274e-08
		 1.1175871e-08 -1.4901161e-08 6.4261286e-08 -1.1175871e-08 -1.1175871e-08 6.3329935e-08
		 4.0978193e-08 -1.1175871e-08 6.4261258e-08 -3.7252903e-09 -1.1175871e-08 6.3329935e-08
		 0 -1.1175871e-08 5.9604645e-08 5.5879354e-09 -1.1175871e-08 8.9406967e-08 4.6566129e-09
		 -1.1175871e-08 7.4505806e-09 -4.1909516e-09 -1.1175871e-08 6.7055225e-08 -4.1909516e-09
		 -1.1175871e-08 6.7055225e-08 -5.5879354e-09 -1.1175871e-08 3.7252903e-08 1.1175871e-08
		 -1.1175871e-08 6.519258e-08 -9.3132257e-09 -1.1175871e-08 6.3329935e-08 -3.9115548e-08
		 -1.1175871e-08 6.3329935e-08 2.9802322e-08 -1.1175871e-08 6.519258e-08 1.4901161e-08
		 -1.1175871e-08 6.1932951e-08 -4.0978193e-08 -1.1175871e-08 6.4261258e-08 1.4901161e-08
		 -1.1175871e-08 6.2864274e-08 0 -1.1175871e-08 6.6123903e-08 1.1175871e-08 -1.1175871e-08
		 6.3329935e-08 -9.3132257e-09 -1.1175871e-08 6.146729e-08 1.1175871e-08 -1.1175871e-08
		 6.3329935e-08 1.8626451e-09 -1.1175871e-08 9.3132257e-08 -3.9581209e-09 -1.1175871e-08
		 1.1920929e-07 3.0267984e-09 -1.1175871e-08 1.1920929e-07 -5.5879354e-09 -1.1175871e-08
		 2.9802322e-08 5.5879354e-09 -1.1175871e-08 9.3132257e-08 -5.5879354e-09 -1.1175871e-08
		 6.146729e-08 -1.4901161e-08 -1.1175871e-08 6.3329935e-08 2.9802322e-08 -1.1175871e-08
		 6.4261258e-08 -7.4505806e-09 -1.1175871e-08 6.2864274e-08 3.7252903e-09 -1.1175871e-08
		 6.4261286e-08 1.1175871e-08 9.6857548e-08 6.3329935e-08 -6.3329935e-08 9.6857548e-08
		 9.4994903e-08 1.8626451e-08 9.6857548e-08 1.2479722e-07 -2.4214387e-08 9.6857548e-08
		 3.3527613e-08 -5.4016709e-08 9.6857548e-08 2.9802322e-08 -4.6566129e-09 9.6857548e-08
		 1.0058284e-07 -4.1909516e-09 9.6857548e-08 9.3132257e-08 -4.1909516e-09 9.6857548e-08
		 9.3132257e-08 -1.8626451e-08 9.6857548e-08 9.6857548e-08 7.4505806e-09 9.6857548e-08
		 5.5879354e-08 -7.4505806e-09 9.6857548e-08 6.3329935e-08 -3.7252903e-08 9.6857548e-08
		 1.2293458e-07 4.8428774e-08 9.6857548e-08 3.7252903e-08 -1.8626451e-08 9.6857548e-08
		 6.4261258e-08 7.8231096e-08 9.6857548e-08 6.42613e-08 2.6077032e-08 9.6857548e-08
		 9.4994903e-08 2.2351742e-08 9.6857548e-08 6.7055225e-08 -2.9802322e-08 9.6857548e-08
		 1.2293458e-07 -7.4505806e-09 9.6857548e-08 3.7252903e-09 7.4505806e-09 9.6857548e-08
		 1.0058284e-07 -1.1175871e-08 9.6857548e-08 6.3329935e-08 -3.7252903e-09 9.6857548e-08
		 7.4505806e-08 4.1909516e-09 9.6857548e-08 7.4505806e-08 5.5879354e-09 9.6857548e-08
		 6.3329935e-08 7.4505806e-09 9.6857548e-08 6.7055225e-08 2.9802322e-08 9.6857548e-08
		 6.3329935e-08 -1.1175871e-08 9.6857548e-08 9.3132257e-08 -9.6857548e-08 9.6857548e-08
		 3.3527613e-08 -7.4505806e-09 9.6857548e-08 9.4994903e-08 -3.7252903e-08 9.6857548e-08
		 6.4261286e-08 6.3329935e-08 1.8626451e-08 6.4261258e-08 -6.7055225e-08 1.8626451e-08
		 3.1664968e-08 -4.4703484e-08 1.8626451e-08 1.527369e-07 1.8626451e-08 1.8626451e-08
		 9.6857548e-08 -2.0489097e-08 1.8626451e-08 -5.2154064e-08 -3.9115548e-08 1.8626451e-08
		 7.0780516e-08 -3.7252903e-09 1.8626451e-08 7.0780516e-08 -4.1909516e-09 1.8626451e-08
		 7.0780516e-08 3.7252903e-09 1.8626451e-08 7.0780516e-08 2.9802322e-08 1.8626451e-08
		 7.4505806e-09 0 1.8626451e-08 9.6857548e-08 0 1.8626451e-08 1.4901161e-07 -2.6077032e-08
		 1.8626451e-08 8.9406967e-08 -2.6077032e-08 1.8626451e-08 6.519258e-08 4.4703484e-08
		 1.8626451e-08 6.42613e-08 -8.5681677e-08 1.8626451e-08 6.6123903e-08 -4.0978193e-08
		 1.8626451e-08 8.9406967e-08 6.3329935e-08 1.8626451e-08 4.0978193e-08 0 1.8626451e-08
		 5.5879354e-08 2.9802322e-08 1.8626451e-08 9.3132257e-08 -9.3132257e-09 1.8626451e-08
		 8.5681677e-08 -4.1909516e-09 1.8626451e-08 2.6077032e-08 -4.1909516e-09 1.8626451e-08
		 2.6077032e-08 -5.5879354e-09 1.8626451e-08 1.4528632e-07 5.5879354e-09 1.8626451e-08
		 9.3132257e-08 3.7252903e-09 1.8626451e-08 6.3329935e-08 -3.7252903e-08 1.8626451e-08
		 -2.2351742e-08 -2.6077032e-08 1.8626451e-08 3.5390258e-08 3.7252903e-08 1.8626451e-08
		 6.6123903e-08 -2.9802322e-08 1.8626451e-08 6.4261286e-08 -4.4703484e-08 -3.7252903e-09
		 9.6857548e-08 1.1175871e-08 -3.7252903e-09 8.7544322e-08 5.5879354e-08 -3.7252903e-09
		 4.4703484e-08 -3.3527613e-08 -3.7252903e-09 2.6077032e-08 3.3527613e-08 -3.7252903e-09
		 2.9802322e-08 -3.1664968e-08 -3.7252903e-09 1.1920929e-07 2.7939677e-09 -3.7252903e-09
		 -7.4505806e-09 -4.1909516e-09 -3.7252903e-09 -7.4505806e-09 2.9802322e-08 -3.7252903e-09
		 1.1920929e-07 4.8428774e-08 -3.7252903e-09 5.2154064e-08 -4.4703484e-08 -3.7252903e-09
		 5.5879354e-08 4.0978193e-08 -3.7252903e-09 7.4505806e-08 -1.8626451e-08 -3.7252903e-09
		 6.3329935e-08 -4.0978193e-08 -3.7252903e-09 6.146729e-08 1.4901161e-08 -3.7252903e-09
		 6.4261201e-08 -1.0058284e-07 -3.7252903e-09 3.5390258e-08;
	setAttr ".tk[166:331]" 2.2351742e-08 -3.7252903e-09 1.2293458e-07 4.0978193e-08
		 -3.7252903e-09 6.3329935e-08 -4.4703484e-08 -3.7252903e-09 4.0978193e-08 4.8428774e-08
		 -3.7252903e-09 1.4901161e-08 -7.4505806e-09 -3.7252903e-09 4.4703484e-08 2.7939677e-09
		 -3.7252903e-09 1.937151e-07 3.259629e-09 -3.7252903e-09 1.937151e-07 9.3132257e-09
		 -3.7252903e-09 1.1175871e-08 -2.6077032e-08 -3.7252903e-09 4.0978193e-08 -1.8626451e-08
		 -3.7252903e-09 1.4901161e-08 -1.4901161e-08 -3.7252903e-09 3.3527613e-08 -3.7252903e-09
		 -3.7252903e-09 8.9406967e-08 2.9802322e-08 -3.7252903e-09 3.5390258e-08 4.4703484e-08
		 -3.7252903e-09 6.4261286e-08 3.7252903e-08 -5.1222742e-09 6.0535967e-08 1.0430813e-07
		 -5.1222742e-09 6.146729e-08 6.3329935e-08 -5.1222742e-09 7.0780516e-08 1.8626451e-08
		 -5.1222742e-09 9.3132257e-08 -5.2154064e-08 -5.1222742e-09 2.1234155e-07 2.9802322e-08
		 -5.1222742e-09 8.9406967e-08 -4.1909516e-09 -5.1222742e-09 1.1175871e-07 -5.5879354e-09
		 -5.1222742e-09 1.1175871e-07 5.7742e-08 -5.1222742e-09 1.0430813e-07 2.9802322e-08
		 -5.1222742e-09 8.9406967e-08 -1.1175871e-08 -5.1222742e-09 5.9604645e-08 -1.4156103e-07
		 -5.1222742e-09 7.4505806e-09 -5.2154064e-08 -5.1222742e-09 6.7055225e-08 -1.7136335e-07
		 -5.1222742e-09 6.519258e-08 3.7252903e-08 -5.1222742e-09 6.4261243e-08 -2.30968e-07
		 -5.1222742e-09 3.3527613e-08 -8.1956387e-08 -5.1222742e-09 3.5390258e-08 -5.9604645e-08
		 -5.1222742e-09 9.6857548e-08 -1.1175871e-08 -5.1222742e-09 9.6857548e-08 2.9802322e-08
		 -5.1222742e-09 2.6077032e-08 2.9802322e-08 -5.1222742e-09 -2.9802322e-08 -1.1175871e-08
		 -5.1222742e-09 8.5681677e-08 1.0244548e-08 -5.1222742e-09 8.5681677e-08 2.4214387e-08
		 -5.1222742e-09 2.9802322e-08 -4.4703484e-08 -5.1222742e-09 4.8428774e-08 -3.7252903e-08
		 -5.1222742e-09 5.9604645e-08 1.3411045e-07 -5.1222742e-09 9.3132257e-08 5.9604645e-08
		 -5.1222742e-09 2.9802322e-08 1.5646219e-07 -5.1222742e-09 3.3527613e-08 4.4703484e-08
		 -5.1222742e-09 6.4261286e-08 4.4703484e-08 4.1909516e-09 9.2200935e-08 -2.2351742e-08
		 4.1909516e-09 3.5390258e-08 4.8428774e-08 4.1909516e-09 1.0058284e-07 8.9406967e-08
		 4.1909516e-09 7.4505806e-08 2.2351742e-08 4.1909516e-09 9.6857548e-08 -1.3038516e-08
		 4.1909516e-09 1.2665987e-07 -4.6566129e-09 4.1909516e-09 2.9802322e-08 -3.7252903e-09
		 4.1909516e-09 2.9802322e-08 2.6077032e-08 4.1909516e-09 8.9406967e-08 -3.7252903e-08
		 4.1909516e-09 1.0430813e-07 -1.527369e-07 4.1909516e-09 1.3411045e-07 3.3527613e-08
		 4.1909516e-09 9.6857548e-08 -3.7252903e-08 4.1909516e-09 3.3527613e-08 -2.9802322e-08
		 4.1909516e-09 6.519258e-08 -2.2351742e-08 4.1909516e-09 6.4261329e-08 6.7055225e-08
		 4.1909516e-09 6.7055225e-08 -3.7252903e-08 4.1909516e-09 7.0780516e-08 3.3527613e-08
		 4.1909516e-09 6.7055225e-08 -1.527369e-07 4.1909516e-09 -3.7252903e-09 -3.7252903e-08
		 4.1909516e-09 0 7.4505806e-09 4.1909516e-09 5.9604645e-08 -5.5879354e-09 4.1909516e-09
		 1.7508864e-07 4.6566129e-09 4.1909516e-09 1.7508864e-07 7.4505806e-09 4.1909516e-09
		 -3.7252903e-08 -4.0978193e-08 4.1909516e-09 -2.9802322e-08 1.3411045e-07 4.1909516e-09
		 -3.7252903e-09 -1.8626451e-08 4.1909516e-09 -3.7252903e-09 7.4505806e-08 4.1909516e-09
		 3.9115548e-08 -3.7252903e-08 4.1909516e-09 6.7055225e-08 7.4505806e-09 4.1909516e-09
		 6.4261286e-08 9.6857548e-08 -1.8626451e-08 9.4994903e-08 0 -1.8626451e-08 9.3132257e-08
		 1.3411045e-07 -1.8626451e-08 8.1956387e-08 2.9802322e-08 -1.8626451e-08 1.3783574e-07
		 -1.15484e-07 -1.8626451e-08 9.6857548e-08 -1.8626451e-09 -1.8626451e-08 6.7055225e-08
		 -2.7008355e-08 -1.8626451e-08 5.9604645e-08 -3.7252903e-09 -1.8626451e-08 5.9604645e-08
		 -2.2351742e-08 -1.8626451e-08 1.2665987e-07 1.1175871e-08 -1.8626451e-08 6.7055225e-08
		 -1.0803342e-07 -1.8626451e-08 1.9744039e-07 -8.9406967e-08 -1.8626451e-08 8.5681677e-08
		 7.4505806e-08 -1.8626451e-08 9.6857548e-08 1.4901161e-08 -1.8626451e-08 1.2293458e-07
		 7.4505806e-08 -1.8626451e-08 6.4261243e-08 2.2351742e-08 -1.8626451e-08 9.3132257e-08
		 1.4901161e-08 -1.8626451e-08 6.3329935e-08 -3.7252903e-08 -1.8626451e-08 3.3527613e-08
		 -1.0803342e-07 -1.8626451e-08 1.8626451e-08 1.1175871e-08 -1.8626451e-08 2.9802322e-08
		 1.8626451e-08 -1.8626451e-08 -2.9802322e-08 2.7939677e-09 -1.8626451e-08 3.7252903e-08
		 1.3038516e-08 -1.8626451e-08 3.7252903e-08 1.3038516e-08 -1.8626451e-08 2.9802322e-08
		 -9.6857548e-08 -1.8626451e-08 4.4703484e-08 5.9604645e-08 -1.8626451e-08 -1.1175871e-08
		 1.3411045e-07 -1.8626451e-08 6.3329935e-08 -6.7055225e-08 -1.8626451e-08 9.3132257e-08
		 -2.2351742e-08 -1.8626451e-08 9.3132257e-08 -7.4505806e-08 -1.8626451e-08 6.4261286e-08
		 6.7055225e-08 0.074661173 6.519258e-08 7.4505806e-09 0.074661173 6.3329935e-08 -5.2154064e-08
		 0.074661173 7.0780516e-08 -1.0058284e-07 0.074661173 1.15484e-07 0 0.074661173 7.4505806e-09
		 -6.3329935e-08 0.074661173 1.4901161e-08 1.9557774e-08 0.074661173 5.2154064e-08
		 -3.7252903e-09 0.074661173 5.2154064e-08 3.7252903e-09 0.074661173 7.4505806e-08
		 -4.8428774e-08 0.074661173 6.7055225e-08 1.1920929e-07 0.074661173 1.0430813e-07
		 0 0.074661173 1.3038516e-07 0 0.074661173 6.3329935e-08 5.2154064e-08 0.074661173
		 6.3329935e-08 -1.3411045e-07 0.074661173 6.4261286e-08 -7.4505806e-09 0.074661173
		 6.146729e-08 -5.9604645e-08 0.074661173 6.3329935e-08 1.4901161e-08 0.074661173 1.2293458e-07
		 1.0803342e-07 0.074661173 5.9604645e-08 -4.8428774e-08 0.074661173 1.4901161e-08
		 -3.1664968e-08 0.074661173 -3.7252903e-08 1.8626451e-09 0.074661173 8.1956387e-08
		 -1.9557774e-08 0.074661173 8.1956387e-08 2.4214387e-08 0.074661173 2.2351742e-08
		 -2.9802322e-08 0.074661173 1.3411045e-07 -7.4505806e-08 0.074661173 4.8428774e-08
		 -1.4901161e-08 0.074661173 5.9604645e-08 7.4505806e-09 0.074661173 3.7252903e-08
		 -5.9604645e-08 0.074661173 6.146729e-08 1.1920929e-07 0.074661173 6.4261286e-08 9.6857548e-08
		 1.2665987e-07 9.4994903e-08 0.098794267 -0.00021581196 -0.043985885 0.10578078 -0.00021581196
		 -0.022484217 0.087490276 -0.00021581196 -0.06356512 0.072362199 -0.00021581196 -0.080366366
		 0.054071955 -0.00021581196 -0.093655087 0.033418257 -0.00021581196 -0.10285071 0.011304144
		 -0.00021581196 -0.10755122 -0.011304082 -0.00021581196 -0.10755113 -0.033418212 -0.00021581196
		 -0.10285069 -0.054071922 -0.00021581196 -0.093654886 -0.072362304 -0.00021581196
		 -0.080366388 -0.087489992 -0.00021581196 -0.063565172 -0.09879414 -0.00021581196
		 -0.043985859 -0.10578032 -0.00021581196 -0.022484247 -0.10814362 -0.00021581196 1.197654e-07
		 -0.10578038 -0.00021581196 0.022484438 -0.098794177 -0.00021581196 0.043986052 -0.087490171
		 -0.00021581196 0.063565351 -0.072362192 -0.00021581196 0.0803665 -0.05407181 -0.00021581196
		 0.093655124 -0.03341822 -0.00021581196 0.1028508 -0.011304074 -0.00021581196 0.10755129
		 0.011304129 -0.00021581196 0.10755129 0.033418145 -0.00021581196 0.10285082 0.054071892
		 -0.00021581196 0.093655132 0.072362438 -0.00021581196 0.080366537 0.087490007 -0.00021581196
		 0.063565388 0.098794118 -0.00021581196 0.043986112 0.10578034 -0.00021581196 0.02248444
		 0.10814364 -0.0002159482 9.7402094e-08 1.8998981e-07 -6.1932951e-08 1.4994293e-07;
	setAttr ".tk[332:497]" -3.7252903e-08 -6.1932951e-08 8.4284693e-08 -1.1920929e-07
		 -2.9802322e-08 7.8231096e-08 4.6566129e-08 -2.9802322e-08 1.7881393e-07 1.8626451e-09
		 -6.1932951e-08 1.7695129e-07 7.4505806e-09 -2.9802322e-08 2.6077032e-08 -2.4912879e-08
		 -6.1932951e-08 -3.5390258e-08 1.0477379e-08 -2.9802322e-08 -8.0093741e-08 8.3819032e-09
		 -6.1932951e-08 2.7939677e-08 -2.7008355e-08 -2.9802322e-08 2.1979213e-07 -1.4528632e-07
		 -6.1932951e-08 1.8626451e-07 0 -2.9802322e-08 1.0058284e-07 -1.1175871e-08 -6.1932951e-08
		 1.3690442e-07 1.0058284e-07 -2.9802322e-08 4.1443855e-08 -3.7252903e-08 -6.1932951e-08
		 5.5879319e-08 8.3819032e-08 -2.9802322e-08 -2.8871e-08 3.7252903e-09 -6.1932951e-08
		 -4.1909516e-08 1.4901161e-08 -2.9802322e-08 6.8917871e-08 -1.5832484e-07 -6.1932951e-08
		 -2.4214387e-08 -2.7008355e-08 -2.9802322e-08 -3.9115548e-08 2.3283064e-08 -6.1932951e-08
		 9.3132257e-08 -4.6566129e-10 -2.9802322e-08 1.527369e-07 1.5599653e-08 -6.1932951e-08
		 1.8440187e-07 8.5681677e-08 -2.9802322e-08 1.2479722e-07 -1.2107193e-08 -6.1932951e-08
		 -2.7939677e-08 2.2538006e-07 -2.9802322e-08 -5.9604645e-08 -5.7742e-08 -6.1932951e-08
		 4.0978193e-08 -5.4016709e-08 -2.9802322e-08 -2.0489097e-08 -1.15484e-07 -6.1932951e-08
		 1.1129305e-07 -3.1664968e-08 -2.9802322e-08 8.5681826e-08 -1.8626451e-09 -5.5879354e-08
		 7.5437129e-08 -6.8917871e-08 -3.3527613e-08 7.4040145e-08 -8.3819032e-09 -5.5879354e-08
		 7.5437129e-08 6.3329935e-08 -3.3527613e-08 4.3772161e-08 -9.3132257e-10 -5.5879354e-08
		 7.7765435e-08 -2.4214387e-08 -3.3527613e-08 6.8917871e-08 1.5832484e-08 -5.5879354e-08
		 7.5437129e-08 -1.1175871e-08 -3.3527613e-08 7.4505806e-08 -5.1222742e-09 -5.5879354e-08
		 1.0244548e-07 1.9557774e-08 -3.3527613e-08 1.0989606e-07 2.3283064e-10 -5.5879354e-08
		 1.071021e-07 -8.3819032e-09 -3.3527613e-08 6.8917871e-08 0 -5.5879354e-08 7.5437129e-08
		 -3.259629e-09 -3.3527613e-08 7.4505806e-08 -2.3283064e-10 -5.5879354e-08 7.8231096e-08
		 -6.9849193e-10 -3.3527613e-08 7.4505806e-08 1.1641532e-09 -5.5879354e-08 1.0803342e-07
		 -3.259629e-09 -3.3527613e-08 7.6368451e-08 1.8626451e-09 -5.5879354e-08 1.0803342e-07
		 5.5879354e-09 -3.3527613e-08 1.0803342e-07 -1.3969839e-08 -5.5879354e-08 7.3574483e-08
		 -1.9557774e-08 -3.3527613e-08 6.8917871e-08 -2.7939677e-09 -5.5879354e-08 7.590279e-08
		 -1.1175871e-08 -3.3527613e-08 9.5926225e-08 -2.514571e-08 -5.5879354e-08 7.2643161e-08
		 2.2351742e-08 -3.3527613e-08 7.0780516e-08 1.8626451e-09 -5.5879354e-08 7.5437129e-08
		 -1.8626451e-09 -3.3527613e-08 7.5437129e-08 -2.6077032e-08 -5.5879354e-08 7.4505806e-08
		 1.1175871e-08 -3.3527613e-08 7.4505721e-08 3.7252903e-08 -1.8626451e-08 7.6368451e-08
		 -1.8626451e-08 -1.8626451e-08 7.6368451e-08 0 -1.8626451e-08 7.8231096e-08 1.8626451e-09
		 -1.8626451e-08 8.3819032e-08 5.5879354e-09 -1.8626451e-08 1.1175871e-07 2.7939677e-09
		 -1.8626451e-08 1.8626451e-08 -2.5611371e-09 -1.8626451e-08 7.0780516e-08 1.3969839e-09
		 -1.4901161e-08 8.1956387e-08 -6.519258e-09 -1.8626451e-08 5.5879354e-08 1.1175871e-08
		 -1.4901161e-08 6.146729e-08 -7.4505806e-09 -1.8626451e-08 5.9604645e-08 -3.3527613e-08
		 -1.8626451e-08 8.1956387e-08 4.8428774e-08 -1.8626451e-08 8.1956387e-08 0 -1.8626451e-08
		 7.4505806e-08 -4.8428774e-08 -1.4901161e-08 7.4505913e-08 0 -1.8626451e-08 7.8231096e-08
		 1.8626451e-08 -1.8626451e-08 8.0093741e-08 9.3132257e-09 -1.8626451e-08 7.6368451e-08
		 -7.4505806e-09 -1.8626451e-08 6.519258e-08 1.1175871e-08 -1.8626451e-08 6.7055225e-08
		 2.7939677e-09 -1.8626451e-08 1.0058284e-07 -5.8207661e-09 -1.8626451e-08 1.4156103e-07
		 4.8894435e-09 -1.8626451e-08 1.4901161e-07 -4.6566129e-09 -1.8626451e-08 5.2154064e-08
		 1.1175871e-08 -1.8626451e-08 9.4994903e-08 -1.1175871e-08 -1.8626451e-08 6.8917871e-08
		 -1.3038516e-08 -1.8626451e-08 8.3819032e-08 3.7252903e-08 -1.8626451e-08 7.8231096e-08
		 0 -1.4901161e-08 7.21775e-08 -3.7252903e-09 -1.8626451e-08 7.4505941e-08 -3.3527613e-08
		 1.0430813e-07 1.0989606e-07 2.2351742e-08 9.3132257e-08 6.9849193e-08 2.6077032e-08
		 1.0430813e-07 1.2107193e-07 -2.6077032e-08 1.0430813e-07 4.0978193e-08 -5.0291419e-08
		 1.0430813e-07 3.7252903e-08 5.5879354e-09 9.3132257e-08 1.1175871e-07 9.3132257e-10
		 8.9406967e-08 1.0058284e-07 -3.259629e-09 8.1956387e-08 1.0058284e-07 -1.5832484e-08
		 8.9406967e-08 1.2293458e-07 5.5879354e-09 8.1956387e-08 5.2154064e-08 1.4901161e-08
		 8.1956387e-08 7.0780516e-08 -2.6077032e-08 7.8231096e-08 1.3224781e-07 5.9604645e-08
		 8.1956387e-08 5.0291419e-08 1.4901161e-08 8.5681677e-08 7.4505806e-08 6.7055225e-08
		 7.8231096e-08 7.4505706e-08 5.2154064e-08 7.8231096e-08 1.0896474e-07 2.2351742e-08
		 8.1956387e-08 6.519258e-08 -1.4901161e-08 7.8231096e-08 1.359731e-07 1.4901161e-08
		 7.8231096e-08 2.2351742e-08 5.5879354e-09 7.8231096e-08 1.1920929e-07 -7.4505806e-09
		 8.1956387e-08 6.3329935e-08 -1.8626451e-09 8.1956387e-08 8.1956387e-08 3.7252903e-09
		 8.9406967e-08 8.1956387e-08 5.5879354e-09 9.3132257e-08 5.9604645e-08 -1.8626451e-09
		 8.9406967e-08 7.8231096e-08 4.0978193e-08 1.0430813e-07 5.2154064e-08 1.1175871e-08
		 1.0430813e-07 9.3132257e-08 -1.0803342e-07 1.0430813e-07 4.2840838e-08 3.7252903e-09
		 1.0430813e-07 1.0337681e-07 0 1.0430813e-07 7.4505849e-08 -5.2154064e-08 1.8626451e-08
		 5.0291419e-08 5.5879354e-08 1.6763806e-08 7.6368451e-08 -3.3527613e-08 1.6763806e-08
		 1.6391277e-07 2.6077032e-08 1.6763806e-08 1.0803342e-07 -1.6763806e-08 1.8626451e-08
		 -5.5879354e-08 -4.0978193e-08 1.8626451e-08 4.4703484e-08 -3.7252903e-09 1.8626451e-08
		 5.2154064e-08 -2.7939677e-09 1.6763806e-08 5.2154064e-08 1.8626451e-09 1.8626451e-08
		 4.4703484e-08 2.7939677e-08 1.8626451e-08 -3.7252903e-09 3.7252903e-09 1.8626451e-08
		 1.0058284e-07 2.6077032e-08 1.8626451e-08 1.6391277e-07 -7.4505806e-09 1.8626451e-08
		 1.0989606e-07 -2.6077032e-08 1.8626451e-08 7.2643161e-08 3.3527613e-08 5.5879354e-09
		 7.4505699e-08 -8.5681677e-08 1.8626451e-08 7.2643161e-08 -1.4901161e-08 1.8626451e-08
		 1.0989606e-07 8.1956387e-08 1.6763806e-08 6.3329935e-08 3.7252903e-09 5.5879354e-09
		 7.4505806e-08 2.7939677e-08 1.8626451e-08 1.2665987e-07 0 1.8626451e-08 8.9406967e-08
		 1.8626451e-09 1.8626451e-08 6.7055225e-08 -1.3969839e-09 1.8626451e-08 6.7055225e-08
		 5.5879354e-09 1.8626451e-08 1.4901161e-07 -1.1175871e-08 1.8626451e-08 1.0803342e-07
		 2.6077032e-08 1.8626451e-08 7.4505806e-08 -5.9604645e-08 1.8626451e-08 0 -4.0978193e-08
		 1.8626451e-08 4.8428774e-08 0 1.8626451e-08 7.3574483e-08 -7.4505806e-09 1.8626451e-08
		 7.4505863e-08 -1.4901161e-08 -3.7252903e-09 9.3132257e-08 -7.4505806e-08 -3.7252903e-09
		 9.9651515e-08 1.0058284e-07 -1.8626451e-09 3.7252903e-08 -1.8626451e-08 -1.8626451e-09
		 2.9802322e-08 1.8626451e-08 -1.8626451e-09 7.0780516e-08 -4.4703484e-08 -3.7252903e-09
		 1.1175871e-07 7.4505806e-09 -1.8626451e-09 3.7252903e-08 -5.5879354e-09 -3.7252903e-09
		 3.7252903e-08 3.5390258e-08 -1.8626451e-09 1.1175871e-07 4.8428774e-08 -1.8626451e-09
		 9.6857548e-08 -4.0978193e-08 -1.8626451e-09 6.3329935e-08 3.3527613e-08 -3.7252903e-09
		 5.5879354e-08 -2.9802322e-08 -3.7252903e-09 6.7055225e-08 -3.7252903e-08 -1.8626451e-09
		 7.7299774e-08 2.2351742e-08 -3.7252903e-09 7.4505863e-08 -9.6857548e-08 -3.7252903e-09
		 4.4703484e-08 0 -3.7252903e-09 1.3038516e-07;
	setAttr ".tk[498:663]" 3.3527613e-08 -1.8626451e-09 7.0780516e-08 -4.0978193e-08
		 -1.8626451e-09 5.5879354e-08 4.4703484e-08 -3.7252903e-09 -1.8626451e-08 5.5879354e-09
		 -1.8626451e-09 5.9604645e-08 6.0535967e-09 -3.7252903e-09 1.7881393e-07 6.519258e-09
		 -3.7252903e-09 1.7881393e-07 1.4901161e-08 -1.8626451e-09 3.7252903e-08 -1.1175871e-08
		 -3.7252903e-09 1.8626451e-08 -2.6077032e-08 -1.8626451e-09 3.3527613e-08 -2.2351742e-08
		 -3.7252903e-09 6.7055225e-08 1.4901161e-08 -1.8626451e-09 9.8720193e-08 3.7252903e-08
		 -3.7252903e-09 4.8428774e-08 5.9604645e-08 -3.7252903e-09 7.4505756e-08 1.0430813e-07
		 -6.9849193e-09 8.3819032e-08 6.7055225e-08 -6.519258e-09 7.8231096e-08 4.0978193e-08
		 -6.519258e-09 6.7055225e-08 2.2351742e-08 -6.9849193e-09 1.1175871e-07 -3.3527613e-08
		 -6.0535967e-09 2.3841858e-07 1.8626451e-08 -6.519258e-09 8.9406967e-08 -2.3283064e-09
		 -6.9849193e-09 1.2665987e-07 -5.1222742e-09 -6.519258e-09 1.2665987e-07 7.4505806e-08
		 -6.519258e-09 1.0430813e-07 2.2351742e-08 -6.9849193e-09 1.1175871e-07 1.1175871e-08
		 -6.9849193e-09 8.9406967e-08 -1.4901161e-07 -6.9849193e-09 3.7252903e-09 -5.2154064e-08
		 -6.519258e-09 9.6857548e-08 -1.7136335e-07 -6.519258e-09 8.2887709e-08 7.4505806e-09
		 -6.519258e-09 7.4505749e-08 -2.30968e-07 -6.519258e-09 4.3772161e-08 -9.6857548e-08
		 -6.9849193e-09 3.9115548e-08 -6.7055225e-08 -6.519258e-09 1.1175871e-07 1.1175871e-08
		 -6.519258e-09 8.5681677e-08 2.2351742e-08 -6.519258e-09 2.9802322e-08 3.3527613e-08
		 -6.519258e-09 -2.2351742e-08 -4.6566129e-09 -4.1909516e-09 3.7252903e-08 1.4901161e-08
		 -6.519258e-09 3.7252903e-08 3.5390258e-08 -6.519258e-09 3.7252903e-08 -3.3527613e-08
		 -6.519258e-09 2.9802322e-08 -4.8428774e-08 -6.9849193e-09 6.7055225e-08 1.4901161e-07
		 -6.519258e-09 1.1920929e-07 8.9406967e-08 -6.519258e-09 3.1664968e-08 1.5646219e-07
		 -6.519258e-09 4.4703484e-08 7.4505806e-08 -4.6566129e-09 7.4505721e-08 -2.2351742e-08
		 3.259629e-09 2.6077032e-08 5.9604645e-08 1.3969839e-09 1.0803342e-07 8.1956387e-08
		 3.259629e-09 9.3132257e-08 7.4505806e-08 1.3969839e-09 1.1175871e-07 2.6077032e-08
		 1.3969839e-09 8.1956387e-08 -5.5879354e-09 3.259629e-09 1.1175871e-07 -2.7939677e-09
		 1.8626451e-09 4.4703484e-08 -5.5879354e-09 1.3969839e-09 4.4703484e-08 4.4703484e-08
		 1.3969839e-09 8.9406967e-08 -3.3527613e-08 1.3969839e-09 8.1956387e-08 -1.7136335e-07
		 1.3969839e-09 1.7136335e-07 5.9604645e-08 1.3969839e-09 8.5681677e-08 -6.7055225e-08
		 1.3969839e-09 3.3527613e-08 -1.4901161e-08 3.7252903e-09 8.0093741e-08 -2.2351742e-08
		 1.3969839e-09 7.4505877e-08 7.4505806e-08 1.8626451e-09 7.4505806e-08 -7.4505806e-08
		 1.8626451e-09 8.5681677e-08 6.7055225e-08 1.3969839e-09 5.9604645e-08 -1.6391277e-07
		 3.259629e-09 -3.7252903e-09 -2.6077032e-08 3.259629e-09 3.7252903e-08 1.8626451e-08
		 3.259629e-09 7.4505806e-08 -1.8626451e-09 1.8626451e-09 1.3411045e-07 0 1.8626451e-09
		 1.6391277e-07 7.4505806e-09 3.259629e-09 -7.4505806e-09 -3.3527613e-08 3.259629e-09
		 -7.4505806e-09 1.5646219e-07 1.3969839e-09 -7.4505806e-09 -2.9802322e-08 1.8626451e-09
		 3.3527613e-08 5.9604645e-08 1.3969839e-09 5.5879354e-08 -2.9802322e-08 1.3969839e-09
		 7.4505806e-08 1.4901161e-08 3.259629e-09 7.4505763e-08 0 -2.2351742e-08 8.1956387e-08
		 1.0430813e-07 -2.9802322e-08 1.0803342e-07 1.4901161e-07 -2.2351742e-08 8.9406967e-08
		 1.4901161e-08 -2.2351742e-08 1.8626451e-07 -1.0803342e-07 -2.2351742e-08 1.0430813e-07
		 -7.4505806e-09 -2.4214387e-08 1.0430813e-07 -2.514571e-08 -2.7939677e-08 1.1920929e-07
		 -4.6566129e-09 -2.4214387e-08 1.1920929e-07 -2.0489097e-08 -2.9802322e-08 1.4901161e-07
		 1.4901161e-08 -2.9802322e-08 8.1956387e-08 -1.3038516e-07 -2.9802322e-08 2.5331974e-07
		 -7.4505806e-08 -2.9802322e-08 9.3132257e-08 8.1956387e-08 -2.2351742e-08 1.0430813e-07
		 2.2351742e-08 -2.9802322e-08 1.3224781e-07 5.9604645e-08 -2.7939677e-08 7.4505834e-08
		 2.9802322e-08 -2.4214387e-08 1.0617077e-07 2.2351742e-08 -2.7939677e-08 6.3329935e-08
		 0 -2.7939677e-08 6.3329935e-08 -1.3038516e-07 -2.7939677e-08 3.7252903e-09 1.8626451e-08
		 -2.7939677e-08 5.9604645e-08 2.0489097e-08 -2.4214387e-08 7.4505806e-09 3.7252903e-09
		 -2.9802322e-08 0 8.3819032e-09 -2.9802322e-08 0 1.6763806e-08 -2.4214387e-08 5.2154064e-08
		 -9.6857548e-08 -2.2351742e-08 5.9604645e-08 1.0430813e-07 -2.4214387e-08 -4.0978193e-08
		 1.1920929e-07 -2.9802322e-08 8.5681677e-08 -6.7055225e-08 -2.9802322e-08 8.9406967e-08
		 -2.2351742e-08 -2.7939677e-08 1.0803342e-07 -7.4505806e-08 -2.7939677e-08 7.4505827e-08
		 -2.2351742e-08 -9.3132257e-09 7.8231096e-08 6.7055225e-08 -9.3132257e-09 7.4505806e-08
		 -4.4703484e-08 -9.3132257e-09 7.8231096e-08 -8.1956387e-08 -9.3132257e-09 1.1175871e-07
		 0 -9.3132257e-09 -2.2351742e-08 -7.2643161e-08 -9.3132257e-09 2.9802322e-08 1.5832484e-08
		 -9.3132257e-09 6.7055225e-08 -1.8626451e-09 -9.3132257e-09 6.7055225e-08 1.1175871e-08
		 -9.3132257e-09 8.9406967e-08 -3.3527613e-08 -9.3132257e-09 5.2154064e-08 1.2293458e-07
		 -9.3132257e-09 8.1956387e-08 7.4505806e-09 -9.3132257e-09 1.3783574e-07 1.4901161e-08
		 -9.3132257e-09 7.4505806e-08 2.2351742e-08 -9.3132257e-09 7.4505806e-08 -1.1920929e-07
		 -9.3132257e-09 7.4505742e-08 -7.4505806e-09 -9.3132257e-09 7.4505806e-08 -4.4703484e-08
		 -9.3132257e-09 8.1956387e-08 2.9802322e-08 -9.3132257e-09 1.2665987e-07 1.2665987e-07
		 -9.3132257e-09 9.3132257e-08 -4.4703484e-08 -9.3132257e-09 3.7252903e-08 -2.6077032e-08
		 -9.3132257e-09 -2.9802322e-08 3.7252903e-09 -9.3132257e-09 6.7055225e-08 -1.1175871e-08
		 -9.3132257e-09 6.7055225e-08 3.5390258e-08 -9.3132257e-09 3.7252903e-08 -1.8626451e-08
		 -9.3132257e-09 1.4901161e-07 -7.4505806e-08 -9.3132257e-09 8.1956387e-08 0 -9.3132257e-09
		 6.3329935e-08 1.4901161e-08 -9.3132257e-09 5.2154064e-08 -3.7252903e-08 -9.3132257e-09
		 7.4505806e-08 1.1920929e-07 -9.3132257e-09 7.4505799e-08 0.10380731 0.00021606238
		 -0.046217885 0.11114846 0.00021606238 -0.023625109 0.091929764 0.00021606238 -0.066790633
		 0.076034434 0.00021606238 -0.084444351 0.056815602 0.00021606074 -0.098407373 0.03511405
		 0.00021606238 -0.10806967 0.011877739 0.00021606238 -0.11300887 -0.011877673 0.00021606238
		 -0.11300892 -0.035114005 0.00021606179 -0.10806961 -0.056815654 0.00021606336 -0.098407388
		 -0.076034307 0.00021605456 -0.084444292 -0.091929674 0.00021605295 -0.066790618 -0.10380704
		 0.00021606238 -0.046217937 -0.11114804 0.00021614094 -0.023625098 -0.11363129 0.00021613824
		 9.9841671e-08 -0.11114796 0.00021605295 0.023625437 -0.1038071 0.00021605295 0.046218116
		 -0.091929644 0.00021605911 0.066790804 -0.076034248 0.00021605295 0.084444523 -0.056815669
		 0.00021606074 0.098407492 -0.035113957 0.00021606238 0.10806971 -0.011877704 0.00021606238
		 0.11300904 0.011877744 0.00021606238 0.11300904 0.03511402 0.00021606074 0.10806978
		 0.056815505 0.00021606451 0.098407499 0.076034226 0.00021605456 0.084444508 0.091929771
		 0.00021606451 0.066790849 0.1038072 0.00021605911 0.046218146 0.11114794 0.00021606278
		 0.023625437 0.11363122 0.00021606074 1.2134527e-07 -3.3527613e-08 8.3819032e-09 1.8626451e-08
		 1.1175871e-07 3.7252903e-09 -1.1175871e-08 -4.4703484e-08 3.7252903e-09 -7.8231096e-08;
	setAttr ".tk[664:690]" -9.3132257e-08 3.7252903e-09 -1.0058284e-07 -4.8428774e-08
		 6.519258e-09 -2.9802322e-08 -2.0489097e-08 3.7252903e-09 7.8231096e-08 1.3504177e-08
		 3.7252903e-09 5.2154064e-08 6.519258e-09 3.7252903e-09 8.5681677e-08 -9.4994903e-08
		 6.519258e-09 9.6857548e-08 5.5879354e-08 3.7252903e-09 -2.2351742e-08 1.1175871e-08
		 6.519258e-09 -1.2665987e-07 -6.3329935e-08 7.4505806e-09 -4.0978193e-08 -1.1175871e-07
		 3.7252903e-09 -4.4703484e-08 -1.3411045e-07 7.3574483e-08 -2.9802322e-08 5.5879354e-08
		 7.7299774e-08 -3.7252863e-09 -9.3132257e-08 7.4505806e-09 1.1175871e-08 -1.4528632e-07
		 7.4505806e-09 2.7939677e-08 -6.7055225e-08 7.4505806e-09 3.3527613e-08 -7.4505806e-09
		 7.4505806e-09 1.0058284e-07 4.0978193e-08 6.519258e-09 2.9802322e-08 -8.0093741e-08
		 3.7252903e-09 -7.8231096e-08 2.7474016e-08 3.7252903e-09 -3.7252903e-08 -2.6077032e-08
		 3.7252903e-09 -3.7252903e-08 9.3132257e-09 6.519258e-09 -7.4505806e-08 -9.3132257e-08
		 6.519258e-09 2.2351742e-08 -1.1175871e-08 6.519258e-09 -5.5879354e-08 2.9802322e-08
		 6.519258e-09 4.4703484e-08 9.3132257e-08 7.4505806e-09 3.5390258e-08 1.0058284e-07
		 7.4505806e-09 6.519258e-09 -1.4901161e-07 6.519258e-09 -3.7253214e-09;
createNode polySphere -n "polySphere5";
	rename -uid "80F37210-4E25-835C-FFF1-19860B3F67AF";
createNode polyBevel3 -n "polyBevel2";
	rename -uid "25769941-48FB-C46B-0ED9-9BBDA689656E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 29 "e[1081]" "e[1084]" "e[1086]" "e[1088]" "e[1090]" "e[1092]" "e[1094]" "e[1096]" "e[1098]" "e[1100]" "e[1102]" "e[1104]" "e[1106]" "e[1108]" "e[1110]" "e[1112]" "e[1114]" "e[1116]" "e[1118]" "e[1120]" "e[1122]" "e[1124]" "e[1126]" "e[1128]" "e[1130]" "e[1132]" "e[1134]" "e[1136]" "e[1138:1139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak3";
	rename -uid "DDBA60BA-437D-C9BC-D0EA-7E9CF60DF522";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[271]" -type "float3" -0.028842477 -1.9569122e-09 0.012841499 ;
	setAttr ".tk[272]" -type "float3" -0.03088217 -1.9569122e-09 0.0065641757 ;
	setAttr ".tk[273]" -type "float3" -0.025542326 -1.9569122e-09 0.018557565 ;
	setAttr ".tk[274]" -type "float3" -0.021125831 -1.9569122e-09 0.02346259 ;
	setAttr ".tk[275]" -type "float3" -0.015786035 -1.9569122e-09 0.027342182 ;
	setAttr ".tk[276]" -type "float3" -0.009756308 -1.9569122e-09 0.030026786 ;
	setAttr ".tk[277]" -type "float3" -0.003300189 -1.9569122e-09 0.031399105 ;
	setAttr ".tk[278]" -type "float3" 0.0033001653 -1.9569122e-09 0.031399101 ;
	setAttr ".tk[279]" -type "float3" 0.0097562829 -1.9569122e-09 0.030026786 ;
	setAttr ".tk[280]" -type "float3" 0.015786026 -1.9569122e-09 0.027342163 ;
	setAttr ".tk[281]" -type "float3" 0.021125812 -1.9569122e-09 0.023462605 ;
	setAttr ".tk[282]" -type "float3" 0.02554228 -1.9569122e-09 0.018557565 ;
	setAttr ".tk[283]" -type "float3" 0.028842479 -1.9569122e-09 0.012841499 ;
	setAttr ".tk[284]" -type "float3" 0.030882094 -1.9569122e-09 0.0065641878 ;
	setAttr ".tk[285]" -type "float3" 0.031572051 -1.9569122e-09 -7.7754558e-09 ;
	setAttr ".tk[286]" -type "float3" 0.030882094 -1.9569122e-09 -0.0065642064 ;
	setAttr ".tk[287]" -type "float3" 0.028842479 -1.9569122e-09 -0.012841496 ;
	setAttr ".tk[288]" -type "float3" 0.02554228 -1.9569122e-09 -0.018557595 ;
	setAttr ".tk[289]" -type "float3" 0.021125808 -1.9569122e-09 -0.023462612 ;
	setAttr ".tk[290]" -type "float3" 0.015786022 -1.9569122e-09 -0.027342182 ;
	setAttr ".tk[291]" -type "float3" 0.0097562922 -1.9569122e-09 -0.030026786 ;
	setAttr ".tk[292]" -type "float3" 0.0033001713 -1.9569122e-09 -0.031399105 ;
	setAttr ".tk[293]" -type "float3" -0.0033001821 -1.9569122e-09 -0.031399105 ;
	setAttr ".tk[294]" -type "float3" -0.0097562857 -1.9569122e-09 -0.030026786 ;
	setAttr ".tk[295]" -type "float3" -0.015786033 -1.9569122e-09 -0.027342182 ;
	setAttr ".tk[296]" -type "float3" -0.021125805 -1.9569122e-09 -0.023462608 ;
	setAttr ".tk[297]" -type "float3" -0.02554228 -1.9569122e-09 -0.018557571 ;
	setAttr ".tk[298]" -type "float3" -0.028842507 -1.9569122e-09 -0.012841496 ;
	setAttr ".tk[299]" -type "float3" -0.030882094 -1.9569122e-09 -0.0065642064 ;
	setAttr ".tk[300]" -type "float3" -0.031572051 1.956912e-09 -9.675329e-09 ;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "057F4EA7-4DCC-6312-595B-8B84CD19E9AC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 30 "e[572]" "e[576]" "e[579]" "e[582]" "e[585]" "e[588]" "e[591]" "e[594]" "e[597]" "e[600]" "e[603]" "e[606]" "e[609]" "e[612]" "e[615]" "e[618]" "e[621]" "e[624]" "e[627]" "e[630]" "e[633]" "e[636]" "e[639]" "e[642]" "e[645]" "e[648]" "e[651]" "e[654]" "e[657]" "e[659]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.19999999999999998;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "912149CF-4826-2B0D-8C39-FD8614B56658";
	setAttr ".ics" -type "componentList" 1 "f[690:719]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.3113022e-06 -0.92876768 -5.9604645e-08 ;
	setAttr ".rs" 53335;
	setAttr ".lt" -type "double3" -1.5141222151938971e-16 3.5727849715186388e-18 0.18154860332879805 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33952942490577698 -0.92877066135406494 -0.33767098188400269 ;
	setAttr ".cbx" -type "double3" 0.33953204751014709 -0.92876476049423218 0.33767086267471313 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 6 ".r";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "MASH1_Repro.out" "MASH1_ReproMeshShape.i";
connectAttr "polyExtrudeFace3.out" "pSphereShape4.i";
connectAttr "polySphere5.out" "pSphereShape5.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":PxrPathTracer.msg" ":rmanGlobals.ri_integrator";
connectAttr "rmanDefaultBakeDisplay.msg" ":rmanBakingGlobals.displays[0]";
connectAttr ":bake_PxrPathTracer.msg" ":rmanBakingGlobals.ri_integrator";
connectAttr "diffuse.msg" "rmanDefaultBakeDisplay.displayChannels[0]";
connectAttr "a.msg" "rmanDefaultBakeDisplay.displayChannels[1]";
connectAttr "d_openexr.msg" "rmanDefaultBakeDisplay.displayType";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "MASH1_Distribute.outputPoints" "MASH1.inputPoints";
connectAttr "MASH1_Distribute.waiterMessage" "MASH1.waiterMessage";
connectAttr "MASH1_ReproMeshShape.wim" "MASH1_Repro.mmtx";
connectAttr "MASH1_ReproMeshShape.msg" "MASH1_Repro.meshmessage";
connectAttr "MASH1.outputPoints" "MASH1_Repro.inputPoints";
connectAttr "MASH1.instancerMessage" "MASH1_Repro.instancerMessage";
connectAttr "polySphere4.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyExtrudeFace1.ip";
connectAttr "pSphereShape4.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pSphereShape4.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyDelEdge1.ip";
connectAttr "polyTweak2.out" "polyBevel1.ip";
connectAttr "pSphereShape4.wm" "polyBevel1.mp";
connectAttr "polyDelEdge1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyBevel2.ip";
connectAttr "pSphereShape4.wm" "polyBevel2.mp";
connectAttr "polyBevel1.out" "polyTweak3.ip";
connectAttr "polyBevel2.out" "polyBevel3.ip";
connectAttr "pSphereShape4.wm" "polyBevel3.mp";
connectAttr "polyBevel3.out" "polyExtrudeFace3.ip";
connectAttr "pSphereShape4.wm" "polyExtrudeFace3.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":rmanGlobals.msg" ":defaultRenderingList1.r" -na;
connectAttr ":PxrPathTracer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":rmanBakingGlobals.msg" ":defaultRenderingList1.r" -na;
connectAttr ":bake_PxrPathTracer.msg" ":defaultRenderingList1.r" -na;
connectAttr "d_openexr.msg" ":defaultRenderingList1.r" -na;
connectAttr "pSphereShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape5.iog" ":initialShadingGroup.dsm" -na;
// End of uncooked rice bowl.ma
