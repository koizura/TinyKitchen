//Maya ASCII 2024 scene
//Name: Egg_Cooked.ma
//Last modified: Sat, Mar 08, 2025 08:52:12 AM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26100)";
fileInfo "UUID" "0583202E-4373-29BE-5713-7B88B0E9942C";
createNode transform -s -n "persp";
	rename -uid "D0957372-41A7-43E9-F699-6F93334C0939";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.7334108948477667 31.891352147662325 -8.6210980268708095 ;
	setAttr ".r" -type "double3" -73.538352729597563 -182.19999999999266 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E6447E5B-4DB9-5E7A-12BE-A19303613E4A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 36.169599406702424;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A68C3BC1-466C-C84A-A585-E5AED738E18C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E96ACB1C-4FBC-60AD-64C3-CCBDEAEAE34C";
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
	rename -uid "70E1A86A-45BB-4BE2-DB0E-01A507AD2DA4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "10B4277E-4E37-4A71-7DFB-6DB973E7D409";
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
	rename -uid "76BA0329-48CF-A1E3-6502-38AAB325B5D3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D4BD2788-48D8-A759-FB91-BDA635ED59C3";
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
createNode transform -n "Cooked_Egg";
	rename -uid "84980C91-43C6-BC7C-6DBE-6CBBE9E6C320";
	setAttr ".rp" -type "double3" -0.81829643249511719 0.70589089393615723 0.62726593017578125 ;
	setAttr ".sp" -type "double3" -0.81829643249511719 0.70589089393615723 0.62726593017578125 ;
createNode mesh -n "Cooked_EggShape" -p "Cooked_Egg";
	rename -uid "FDAF5681-43B8-F6D6-6EEC-C89FA18E8E6D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 4 "f[0:13]" "f[17:19]" "f[23:25]" "f[29:95]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 3 "f[14:16]" "f[20:22]" "f[26:28]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[42:47]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[48:83]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[90:95]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[84:89]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[6:41]";
	setAttr ".pv" -type "double2" 0.58333331346511841 0.43749995529651642 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 129 ".uvst[0].uvsp[0:128]" -type "float2" 0.375 0 0.41666666
		 0 0.45833331 0 0.49999997 0 0.54166663 0 0.58333331 0 0.625 0 0.375 0.25 0.41666666
		 0.25 0.45833331 0.25 0.49999997 0.25 0.54166663 0.25 0.58333331 0.25 0.625 0.25 0.375
		 0.29166666 0.41666666 0.29166666 0.45833331 0.29166666 0.49999997 0.29166666 0.54166663
		 0.29166666 0.58333331 0.29166666 0.625 0.29166666 0.375 0.33333331 0.41666666 0.33333331
		 0.45833331 0.33333331 0.49999997 0.33333331 0.54166663 0.33333331 0.58333331 0.33333331
		 0.625 0.33333331 0.375 0.37499997 0.41666666 0.37499997 0.45833331 0.37499997 0.49999997
		 0.37499997 0.54166663 0.37499997 0.58333331 0.37499997 0.625 0.37499997 0.375 0.41666663
		 0.41666666 0.41666663 0.45833331 0.41666663 0.49999997 0.41666663 0.54166663 0.41666663
		 0.58333331 0.41666663 0.625 0.41666663 0.375 0.45833328 0.41666666 0.45833328 0.45833331
		 0.45833328 0.49999997 0.45833328 0.54166663 0.45833328 0.58333331 0.45833328 0.625
		 0.45833328 0.375 0.49999994 0.41666666 0.49999994 0.45833331 0.49999994 0.49999997
		 0.49999994 0.54166663 0.49999994 0.58333331 0.49999994 0.625 0.49999994 0.375 0.74999994
		 0.41666666 0.74999994 0.45833331 0.74999994 0.49999997 0.74999994 0.54166663 0.74999994
		 0.58333331 0.74999994 0.625 0.74999994 0.375 0.79166663 0.41666666 0.79166663 0.45833331
		 0.79166663 0.49999997 0.79166663 0.54166663 0.79166663 0.58333331 0.79166663 0.625
		 0.79166663 0.375 0.83333331 0.41666666 0.83333331 0.45833331 0.83333331 0.49999997
		 0.83333331 0.54166663 0.83333331 0.58333331 0.83333331 0.625 0.83333331 0.375 0.875
		 0.41666666 0.875 0.45833331 0.875 0.49999997 0.875 0.54166663 0.875 0.58333331 0.875
		 0.625 0.875 0.375 0.91666669 0.41666666 0.91666669 0.45833331 0.91666669 0.49999997
		 0.91666669 0.54166663 0.91666669 0.58333331 0.91666669 0.625 0.91666669 0.375 0.95833337
		 0.41666666 0.95833337 0.45833331 0.95833337 0.49999997 0.95833337 0.54166663 0.95833337
		 0.58333331 0.95833337 0.625 0.95833337 0.375 1 0.41666666 1 0.45833331 1 0.49999997
		 1 0.54166663 1 0.58333331 1 0.625 1 0.875 0 0.83333331 0 0.79166663 0 0.74999994
		 0 0.70833325 0 0.66666657 0 0.875 0.25 0.83333331 0.25 0.79166663 0.25 0.74999994
		 0.25 0.70833325 0.25 0.66666657 0.25 0.125 0 0.16666667 0 0.20833334 0 0.25 0 0.29166666
		 0 0.33333331 0 0.125 0.25 0.16666667 0.25 0.20833334 0.25 0.25 0.25 0.29166666 0.25
		 0.33333331 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 98 ".pt[0:97]" -type "float3"  2.9659209 0.34580207 18.970819 
		2.4819546 0.34580207 19.554853 2.1640296 0.34580207 19.998728 2.0190039 0.34580207 
		20.690538 1.8573318 0.34580207 21.176929 1.4658957 0.34580207 21.645588 1.6262836 
		0.34580207 22.141964 2.9659209 0.34580207 18.970819 2.4819546 0.34580207 19.554853 
		2.1640296 0.34580207 19.998728 2.0190039 0.34580207 20.690538 1.8573318 0.34580207 
		21.176929 1.4736967 0.34580207 21.651104 1.6340852 0.34580207 22.14748 2.9259267 
		0.34580207 18.759762 3.1750655 0.34580207 19.418999 2.9924917 0.34580207 20.300564 
		2.8133135 0.34580207 21.047537 2.3912535 0.34580207 21.453569 2.4541135 0.34580207 
		21.879213 2.261055 0.34580207 22.456221 3.7824898 0.34580207 18.745667 3.577457 0.34580207 
		19.503197 3.2351828 0.34580207 20.445154 3.1667295 0.34580207 21.027002 3.0988455 
		0.34580207 21.391363 2.9121442 0.34580207 22.021662 2.5678353 0.34580207 22.668943 
		4.5298767 0.34580207 19.166441 3.9798498 0.34580207 19.587395 3.8063345 0.34580207 
		20.547989 3.5784693 0.34580207 21.129831 3.5059228 0.34580207 21.476542 3.4734044 
		0.34580207 22.139103 3.2130938 0.34580207 22.679426 4.4547901 0.23747727 19.266247 
		4.3822422 0.34580207 19.671593 4.3607225 0.34580207 20.915934 4.4402618 0.34580207 
		21.203175 4.0329013 0.34580207 21.621967 3.8089962 0.34580207 22.065113 3.8496466 
		0.34580207 22.849262 4.8293419 0.34580207 19.255707 4.7846346 0.34580207 19.755791 
		4.9530363 0.34580207 20.667311 5.0944805 0.34580207 21.287548 4.9760761 0.34580207 
		21.853413 4.5978251 0.34580207 22.364908 4.4794216 0.34580207 22.930773 5.1478233 
		0.34580207 19.529156 5.1166887 0.34580207 19.888979 5.5142965 0.34580207 20.78475 
		5.6557407 0.34580207 21.404987 5.5373373 0.20087874 21.970854 5.1590862 0.17038022 
		22.482347 4.8788023 0.22611791 22.792715 5.1478233 0.34580207 19.529156 5.1166887 
		0.34580207 19.888979 5.5142965 0.34580207 20.78475 5.6557407 0.34580207 21.404987 
		5.5373373 0.34580207 21.970854 5.1590862 0.34580207 22.482347 4.8788023 0.34580207 
		22.792715 4.8293409 0.34580207 19.255707 4.7846346 0.34580207 19.755791 4.9530363 
		0.34580207 20.667311 5.0944805 0.34580207 21.287548 4.9760761 0.34580207 21.853413 
		4.5978251 0.34580207 22.364908 4.4794216 0.34580207 22.930773 4.4547892 0.23747727 
		19.266247 4.3822422 0.34580207 19.671593 4.3917751 0.34580207 20.54987 4.2733717 
		0.34580207 21.115736 4.1549678 0.34580207 21.681601 4.0365639 0.34580207 22.247467 
		3.8496466 0.34580207 22.849262 4.5298767 0.34580207 19.166441 3.9798498 0.34580207 
		19.587395 3.8305144 0.34580207 20.43243 3.712111 0.34580207 20.998295 3.5937071 0.34580207 
		21.564161 3.4753036 0.34580207 22.130028 3.2130938 0.34580207 22.679426 3.7824888 
		0.34580207 18.745667 3.577457 0.34580207 19.503197 3.2692542 0.34580207 20.314989 
		3.1508503 0.34580207 20.880856 3.0324469 0.34580207 21.446722 2.9140429 0.34580207 
		22.012587 2.5678353 0.34580207 22.668943 2.9259257 0.34580207 18.759762 3.1750646 
		0.34580207 19.418999 2.7079926 0.34580207 20.19755 2.5895891 0.34580207 20.763416 
		2.4711857 0.34580207 21.329281 2.3527818 0.34580207 21.895147 2.261054 0.34580207 
		22.456221;
	setAttr -s 98 ".vt[0:97]"  -8.65137863 -0.1703569 -18.042247772 -7.48188305 -0.1703569 -17.5007515
		 -5.79417992 -0.1703569 -16.64003372 -4.06854248 -0.1703569 -16.63939095 -2.82544613 -0.1703569 -16.49625969
		 -1.1801641 -0.14086303 -16.11259079 -0.18564963 -0.19905145 -16.60559464 -8.65137863 0.1703569 -18.042247772
		 -7.48188305 0.1703569 -17.5007515 -5.79417992 0.1703569 -16.64003372 -4.06854248 0.1703569 -16.63939095
		 -2.82544613 0.1703569 -16.49625969 -1.17088389 0.19905145 -16.13398933 -0.17636967 0.14086305 -16.62699509
		 -9.096370697 0.1703569 -18.76610184 -7.68499756 0.1703569 -18.76610184 -5.22334576 0.20768994 -18.38011169
		 -4.1993475 0.30764824 -18.15106773 -2.7683177 0.30764824 -18.13110161 -1.68703294 0.20768994 -18.36668205
		 -0.12303972 0.1703569 -17.58619118 -9.59767723 0.1703569 -19.88091469 -7.68499756 0.1703569 -19.76974106
		 -5.26299286 0.33411336 -19.4228344 -3.83840442 1.066278577 -19.55018425 -2.93379974 1.066278696 -19.57015228
		 -1.33430839 0.29871428 -19.43916702 0.38456154 0.1703569 -18.94005966 -9.38150024 0.1703569 -21.1463089
		 -7.68499756 0.1703569 -20.77338219 -5.30284119 0.3341133 -20.83905411 -3.79855585 1.074190259 -20.58547783
		 -2.93379974 1.074190021 -20.58547783 -1.33430839 0.29871428 -20.83905411 0.086981773 0.1703569 -20.48718643
		 -8.72447968 0.1703569 -21.9131031 -7.68499756 0.1703569 -21.77702332 -5.26097584 0.2076899 -21.91153908
		 -4.17969131 0.26877534 -22.073291779 -2.7683177 0.26877528 -22.073291779 -1.68703294 0.20768994 -21.91153908
		 0.17454004 0.1703569 -22.093187332 -8.91689873 0.1703569 -22.82522964 -7.68499756 0.1703569 -22.78066444
		 -5.59106541 0.1703569 -23.63883018 -4.17969131 0.17035688 -24.28693771 -2.7683177 0.1703569 -24.28693771
		 -1.35694361 0.1703569 -23.63883018 0.054430485 0.1703569 -23.63883018 -8.57608128 0.1703569 -23.5169487
		 -7.68499756 0.1703569 -23.78430557 -5.59106541 0.1703569 -25.03871727 -4.17969131 0.1703569 -25.6868248
		 -2.7683177 0.1703569 -25.6868248 -1.35694361 0.1703569 -25.03871727 -0.47516036 0.1703569 -24.52414513
		 -8.57608128 -0.1703569 -23.5169487 -7.68499756 -0.1703569 -23.78430557 -5.59106541 -0.1703569 -25.03871727
		 -4.17969131 -0.1703569 -25.6868248 -2.7683177 -0.1703569 -25.6868248 -1.35694361 -0.1703569 -25.03871727
		 -0.47516036 -0.1703569 -24.52414513 -8.91689873 -0.1703569 -22.82522774 -7.68499756 -0.1703569 -22.78066444
		 -5.59106541 -0.1703569 -23.63883018 -4.17969131 -0.1703569 -24.28693771 -2.7683177 -0.1703569 -24.28693771
		 -1.35694361 -0.1703569 -23.63883018 0.054430485 -0.1703569 -23.63883018 -8.72447968 -0.1703569 -21.9131012
		 -7.68499756 -0.1703569 -21.77702332 -5.59106541 -0.14623241 -22.23894119 -4.17969131 0.088595755 -22.23894119
		 -2.7683177 -0.11918443 -22.23894119 -1.35694361 -0.35401261 -22.23894119 0.17454004 -0.1703569 -22.093187332
		 -9.38150024 -0.1703569 -21.1463089 -7.68499756 -0.1703569 -20.77338219 -5.59106541 0.08859574 -20.83905411
		 -4.17969131 0.1727403 -20.83905411 -2.7683177 0.18063399 -20.83905411 -1.35694361 -0.11918443 -20.83905411
		 0.086981773 -0.1703569 -20.48718643 -9.59767723 -0.1703569 -19.88091278 -7.68499756 -0.1703569 -19.76974106
		 -5.59106541 0.088595718 -19.43916702 -4.17969131 0.049477499 -19.43916702 -2.7683177 0.06036377 -19.43916702
		 -1.35694361 -0.11918443 -19.43916702 0.38456154 -0.1703569 -18.94005966 -9.096370697 -0.1703569 -18.76609993
		 -7.68499756 -0.1703569 -18.76609993 -5.59106541 -0.14623243 -18.03927803 -4.17969131 0.088595755 -18.03927803
		 -2.7683177 0.088595755 -18.03927803 -1.35694361 -0.14623243 -18.03927803 -0.12303972 -0.1703569 -17.58618927;
	setAttr -s 192 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 7 8 0 8 9 0 9 10 0
		 10 11 0 11 12 0 12 13 0 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1 21 22 1 22 23 1
		 23 24 1 24 25 1 25 26 1 26 27 1 28 29 1 29 30 1 30 31 1 31 32 1 32 33 1 33 34 1 35 36 1
		 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1
		 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 56 57 0 57 58 0 58 59 0 59 60 0 60 61 0
		 61 62 0 63 64 1 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 70 71 1 71 72 1 72 73 1 73 74 1
		 74 75 1 75 76 1 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 84 85 1 85 86 1 86 87 1
		 87 88 1 88 89 1 89 90 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1 0 7 0 1 8 1
		 2 9 1 3 10 1 4 11 1 5 12 1 6 13 0 7 14 0 8 15 1 9 16 1 10 17 1 11 18 1 12 19 1 13 20 0
		 14 21 0 15 22 1 16 23 1 17 24 1 18 25 1 19 26 1 20 27 0 21 28 0 22 29 1 23 30 1 24 31 1
		 25 32 1 26 33 1 27 34 0 28 35 0 29 36 1 30 37 1 31 38 1 32 39 1 33 40 1 34 41 0 35 42 0
		 36 43 1 37 44 1 38 45 1 39 46 1 40 47 1 41 48 0 42 49 0 43 50 1 44 51 1 45 52 1 46 53 1
		 47 54 1 48 55 0 49 56 0 50 57 1 51 58 1 52 59 1 53 60 1 54 61 1 55 62 0 56 63 0 57 64 1
		 58 65 1 59 66 1 60 67 1 61 68 1 62 69 0 63 70 0 64 71 1 65 72 1 66 73 1 67 74 1 68 75 1
		 69 76 0 70 77 0 71 78 1 72 79 1 73 80 1 74 81 1 75 82 1 76 83 0 77 84 0 78 85 1 79 86 1
		 80 87 1 81 88 1;
	setAttr ".ed[166:191]" 82 89 1 83 90 0 84 91 0 85 92 1 86 93 1 87 94 1 88 95 1
		 89 96 1 90 97 0 91 0 0 92 1 1 93 2 1 94 3 1 95 4 1 96 5 1 97 6 0 69 48 1 76 41 1
		 83 34 1 90 27 1 97 20 1 63 42 1 70 35 1 77 28 1 84 21 1 91 14 1;
	setAttr -s 96 -ch 384 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -7 -85
		mu 0 4 0 1 8 7
		f 4 1 86 -8 -86
		mu 0 4 1 2 9 8
		f 4 2 87 -9 -87
		mu 0 4 2 3 10 9
		f 4 3 88 -10 -88
		mu 0 4 3 4 11 10
		f 4 4 89 -11 -89
		mu 0 4 4 5 12 11
		f 4 5 90 -12 -90
		mu 0 4 5 6 13 12
		f 4 6 92 -13 -92
		mu 0 4 7 8 15 14
		f 4 7 93 -14 -93
		mu 0 4 8 9 16 15
		f 4 8 94 -15 -94
		mu 0 4 9 10 17 16
		f 4 9 95 -16 -95
		mu 0 4 10 11 18 17
		f 4 10 96 -17 -96
		mu 0 4 11 12 19 18
		f 4 11 97 -18 -97
		mu 0 4 12 13 20 19
		f 4 12 99 -19 -99
		mu 0 4 14 15 22 21
		f 4 13 100 -20 -100
		mu 0 4 15 16 23 22
		f 4 14 101 -21 -101
		mu 0 4 16 17 24 23
		f 4 15 102 -22 -102
		mu 0 4 17 18 25 24
		f 4 16 103 -23 -103
		mu 0 4 18 19 26 25
		f 4 17 104 -24 -104
		mu 0 4 19 20 27 26
		f 4 18 106 -25 -106
		mu 0 4 21 22 29 28
		f 4 19 107 -26 -107
		mu 0 4 22 23 30 29
		f 4 20 108 -27 -108
		mu 0 4 23 24 31 30
		f 4 21 109 -28 -109
		mu 0 4 24 25 32 31
		f 4 22 110 -29 -110
		mu 0 4 25 26 33 32
		f 4 23 111 -30 -111
		mu 0 4 26 27 34 33
		f 4 24 113 -31 -113
		mu 0 4 28 29 36 35
		f 4 25 114 -32 -114
		mu 0 4 29 30 37 36
		f 4 26 115 -33 -115
		mu 0 4 30 31 38 37
		f 4 27 116 -34 -116
		mu 0 4 31 32 39 38
		f 4 28 117 -35 -117
		mu 0 4 32 33 40 39
		f 4 29 118 -36 -118
		mu 0 4 33 34 41 40
		f 4 30 120 -37 -120
		mu 0 4 35 36 43 42
		f 4 31 121 -38 -121
		mu 0 4 36 37 44 43
		f 4 32 122 -39 -122
		mu 0 4 37 38 45 44
		f 4 33 123 -40 -123
		mu 0 4 38 39 46 45
		f 4 34 124 -41 -124
		mu 0 4 39 40 47 46
		f 4 35 125 -42 -125
		mu 0 4 40 41 48 47
		f 4 36 127 -43 -127
		mu 0 4 42 43 50 49
		f 4 37 128 -44 -128
		mu 0 4 43 44 51 50
		f 4 38 129 -45 -129
		mu 0 4 44 45 52 51
		f 4 39 130 -46 -130
		mu 0 4 45 46 53 52
		f 4 40 131 -47 -131
		mu 0 4 46 47 54 53
		f 4 41 132 -48 -132
		mu 0 4 47 48 55 54
		f 4 42 134 -49 -134
		mu 0 4 49 50 57 56
		f 4 43 135 -50 -135
		mu 0 4 50 51 58 57
		f 4 44 136 -51 -136
		mu 0 4 51 52 59 58
		f 4 45 137 -52 -137
		mu 0 4 52 53 60 59
		f 4 46 138 -53 -138
		mu 0 4 53 54 61 60
		f 4 47 139 -54 -139
		mu 0 4 54 55 62 61
		f 4 48 141 -55 -141
		mu 0 4 56 57 64 63
		f 4 49 142 -56 -142
		mu 0 4 57 58 65 64
		f 4 50 143 -57 -143
		mu 0 4 58 59 66 65
		f 4 51 144 -58 -144
		mu 0 4 59 60 67 66
		f 4 52 145 -59 -145
		mu 0 4 60 61 68 67
		f 4 53 146 -60 -146
		mu 0 4 61 62 69 68
		f 4 54 148 -61 -148
		mu 0 4 63 64 71 70
		f 4 55 149 -62 -149
		mu 0 4 64 65 72 71
		f 4 56 150 -63 -150
		mu 0 4 65 66 73 72
		f 4 57 151 -64 -151
		mu 0 4 66 67 74 73
		f 4 58 152 -65 -152
		mu 0 4 67 68 75 74
		f 4 59 153 -66 -153
		mu 0 4 68 69 76 75
		f 4 60 155 -67 -155
		mu 0 4 70 71 78 77
		f 4 61 156 -68 -156
		mu 0 4 71 72 79 78
		f 4 62 157 -69 -157
		mu 0 4 72 73 80 79
		f 4 63 158 -70 -158
		mu 0 4 73 74 81 80
		f 4 64 159 -71 -159
		mu 0 4 74 75 82 81
		f 4 65 160 -72 -160
		mu 0 4 75 76 83 82
		f 4 66 162 -73 -162
		mu 0 4 77 78 85 84
		f 4 67 163 -74 -163
		mu 0 4 78 79 86 85
		f 4 68 164 -75 -164
		mu 0 4 79 80 87 86
		f 4 69 165 -76 -165
		mu 0 4 80 81 88 87
		f 4 70 166 -77 -166
		mu 0 4 81 82 89 88
		f 4 71 167 -78 -167
		mu 0 4 82 83 90 89
		f 4 72 169 -79 -169
		mu 0 4 84 85 92 91
		f 4 73 170 -80 -170
		mu 0 4 85 86 93 92
		f 4 74 171 -81 -171
		mu 0 4 86 87 94 93
		f 4 75 172 -82 -172
		mu 0 4 87 88 95 94
		f 4 76 173 -83 -173
		mu 0 4 88 89 96 95
		f 4 77 174 -84 -174
		mu 0 4 89 90 97 96
		f 4 78 176 -1 -176
		mu 0 4 91 92 99 98
		f 4 79 177 -2 -177
		mu 0 4 92 93 100 99
		f 4 80 178 -3 -178
		mu 0 4 93 94 101 100
		f 4 81 179 -4 -179
		mu 0 4 94 95 102 101
		f 4 82 180 -5 -180
		mu 0 4 95 96 103 102
		f 4 83 181 -6 -181
		mu 0 4 96 97 104 103
		f 4 -147 -140 -133 -183
		mu 0 4 106 105 111 112
		f 4 -154 182 -126 -184
		mu 0 4 107 106 112 113
		f 4 -161 183 -119 -185
		mu 0 4 108 107 113 114
		f 4 -168 184 -112 -186
		mu 0 4 109 108 114 115
		f 4 -175 185 -105 -187
		mu 0 4 110 109 115 116
		f 4 -182 186 -98 -91
		mu 0 4 6 110 116 13
		f 4 140 187 126 133
		mu 0 4 117 118 124 123
		f 4 147 188 119 -188
		mu 0 4 118 119 125 124
		f 4 154 189 112 -189
		mu 0 4 119 120 126 125
		f 4 161 190 105 -190
		mu 0 4 120 121 127 126
		f 4 168 191 98 -191
		mu 0 4 121 122 128 127
		f 4 175 84 91 -192
		mu 0 4 122 0 7 128;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B9B9E5B8-4E73-9850-1B2D-989207E23162";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6BA4B0A6-4532-6389-809A-B3B6E446F090";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A21BC2A8-4075-E562-DF53-31B40255B0B7";
createNode displayLayerManager -n "layerManager";
	rename -uid "C39F3CBA-4A8A-2581-4DDD-FDBA76611E82";
createNode displayLayer -n "defaultLayer";
	rename -uid "0D24ECD0-47A6-8AD6-C187-839F29588A6D";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "894F8177-46D3-94DA-4595-C1A1D8D144A6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F8530983-4203-DD3B-CD74-E084117DD562";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "74E3573E-4B6B-1322-3C81-CCA2741DEEDA";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "1F8AD7DB-4262-C6D8-7438-AD8F8E05A399";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "2E65C590-474A-6F22-D954-05B80A68A06B";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "50C1823F-4713-8AF6-7403-46AF8425C282";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode lambert -n "Cooked_Chicken_Cooked_Egg:Chicken_Meat_Cooked";
	rename -uid "D3386DAF-4C79-677A-C3D9-A7B2871E1275";
	setAttr ".c" -type "float3" 0.1178 0.059999999 0 ;
createNode shadingEngine -n "Cooked_Chicken_Cooked_Egg:lambert2SG";
	rename -uid "B2DFBF44-43F2-5DF3-5EA2-DA8D5A23FF3C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Cooked_Chicken_Cooked_Egg:materialInfo1";
	rename -uid "EE46059B-4FAD-655C-AE53-218D2F15E8BB";
createNode lambert -n "Cooked_Chicken_Cooked_Egg:Chicken_Bone";
	rename -uid "C2BBA23D-4B00-1C32-13FA-E6889CF9738A";
	setAttr ".c" -type "float3" 1 0.74980003 0.4901 ;
	setAttr ".it" -type "float3" 0.44230768 0.44230768 0.44230768 ;
createNode shadingEngine -n "Cooked_Chicken_Cooked_Egg:lambert3SG";
	rename -uid "4C298ED7-4429-01FC-83A8-3DA142762192";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Cooked_Chicken_Cooked_Egg:materialInfo2";
	rename -uid "5A6454FD-4DCE-3ADA-4755-46ADD8FA4697";
createNode lambert -n "Cooked_Chicken_Cooked_Egg:Plate_color";
	rename -uid "064C5A02-4787-D27B-9D0D-29BED3FE4F20";
	setAttr ".c" -type "float3" 0.3344 0.3344 0.3344 ;
createNode shadingEngine -n "Cooked_Chicken_Cooked_Egg:lambert4SG";
	rename -uid "17D9E878-4B44-B386-26C8-67B15820E63F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Cooked_Chicken_Cooked_Egg:materialInfo3";
	rename -uid "10D02547-435D-F101-7653-C594F5E49E69";
createNode lambert -n "Egg_Yolk";
	rename -uid "DE2D723B-48B5-772C-E344-C093A23590C4";
	setAttr ".c" -type "float3" 0.54000002 0.52420002 0 ;
createNode shadingEngine -n "Cooked_Chicken_Cooked_Egg:lambert5SG";
	rename -uid "9D7D8D05-42E4-1FE1-D3BF-61B5A1C8AB3E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Cooked_Chicken_Cooked_Egg:materialInfo4";
	rename -uid "ABD3E645-4482-D3C6-BE44-438AB8986E4D";
createNode groupId -n "Cooked_Chicken_Cooked_Egg:groupId2";
	rename -uid "2265B9AC-4CA9-B94F-EC6B-DF89C3812FEB";
	setAttr ".ihi" 0;
createNode lambert -n "Egg_whites";
	rename -uid "58DE7287-42B6-7E8E-09A9-D3B7EEAD013F";
	setAttr ".c" -type "float3" 1 0.99419999 0.8039 ;
createNode shadingEngine -n "Cooked_Chicken_Cooked_Egg:lambert6SG";
	rename -uid "D3914FD1-4242-8EED-12F3-5884AE817B7F";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "Cooked_Chicken_Cooked_Egg:materialInfo5";
	rename -uid "4C324723-4B11-0EFE-23A0-968F139C0781";
createNode groupId -n "Cooked_Chicken_Cooked_Egg:groupId3";
	rename -uid "C3CF45EC-4775-EF7E-015B-78A1D075DC19";
	setAttr ".ihi" 0;
createNode groupId -n "Cooked_Chicken_Cooked_Egg:groupId4";
	rename -uid "ED7F8479-4AE3-12FA-5590-219DD31BA0F8";
	setAttr ".ihi" 0;
createNode groupId -n "Cooked_Chicken_Cooked_Egg:groupId5";
	rename -uid "B1D7D3D4-4991-535A-15FB-83BF9F4D553A";
	setAttr ".ihi" 0;
createNode script -n "Cooked_Chicken_Cooked_Egg:uiConfigurationScriptNode";
	rename -uid "FBFD3486-4901-3501-E1F4-159F1B7DF1D4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "Cooked_Chicken_Cooked_Egg:sceneConfigurationScriptNode";
	rename -uid "40C0DFF5-4D1B-6177-9A0F-17AE1524B3F6";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "CAA5D98B-4BA7-3754-1DEA-74824BB91066";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
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
connectAttr "Cooked_Chicken_Cooked_Egg:groupId3.id" "Cooked_EggShape.iog.og[2].gid"
		;
connectAttr "Cooked_Chicken_Cooked_Egg:lambert6SG.mwc" "Cooked_EggShape.iog.og[2].gco"
		;
connectAttr "Cooked_Chicken_Cooked_Egg:groupId5.id" "Cooked_EggShape.iog.og[3].gid"
		;
connectAttr "Cooked_Chicken_Cooked_Egg:lambert5SG.mwc" "Cooked_EggShape.iog.og[3].gco"
		;
connectAttr "Cooked_Chicken_Cooked_Egg:groupId4.id" "Cooked_EggShape.ciog.cog[1].cgid"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Cooked_Chicken_Cooked_Egg:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Cooked_Chicken_Cooked_Egg:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Cooked_Chicken_Cooked_Egg:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Cooked_Chicken_Cooked_Egg:lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Cooked_Chicken_Cooked_Egg:lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Cooked_Chicken_Cooked_Egg:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Cooked_Chicken_Cooked_Egg:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Cooked_Chicken_Cooked_Egg:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Cooked_Chicken_Cooked_Egg:lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Cooked_Chicken_Cooked_Egg:lambert6SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "Cooked_Chicken_Cooked_Egg:Chicken_Meat_Cooked.oc" "Cooked_Chicken_Cooked_Egg:lambert2SG.ss"
		;
connectAttr "Cooked_Chicken_Cooked_Egg:lambert2SG.msg" "Cooked_Chicken_Cooked_Egg:materialInfo1.sg"
		;
connectAttr "Cooked_Chicken_Cooked_Egg:Chicken_Meat_Cooked.msg" "Cooked_Chicken_Cooked_Egg:materialInfo1.m"
		;
connectAttr "Cooked_Chicken_Cooked_Egg:Chicken_Bone.oc" "Cooked_Chicken_Cooked_Egg:lambert3SG.ss"
		;
connectAttr "Cooked_Chicken_Cooked_Egg:lambert3SG.msg" "Cooked_Chicken_Cooked_Egg:materialInfo2.sg"
		;
connectAttr "Cooked_Chicken_Cooked_Egg:Chicken_Bone.msg" "Cooked_Chicken_Cooked_Egg:materialInfo2.m"
		;
connectAttr "Cooked_Chicken_Cooked_Egg:Plate_color.oc" "Cooked_Chicken_Cooked_Egg:lambert4SG.ss"
		;
connectAttr "Cooked_Chicken_Cooked_Egg:lambert4SG.msg" "Cooked_Chicken_Cooked_Egg:materialInfo3.sg"
		;
connectAttr "Cooked_Chicken_Cooked_Egg:Plate_color.msg" "Cooked_Chicken_Cooked_Egg:materialInfo3.m"
		;
connectAttr "Egg_Yolk.oc" "Cooked_Chicken_Cooked_Egg:lambert5SG.ss";
connectAttr "Cooked_Chicken_Cooked_Egg:groupId5.msg" "Cooked_Chicken_Cooked_Egg:lambert5SG.gn"
		 -na;
connectAttr "Cooked_EggShape.iog.og[3]" "Cooked_Chicken_Cooked_Egg:lambert5SG.dsm"
		 -na;
connectAttr "Cooked_Chicken_Cooked_Egg:lambert5SG.msg" "Cooked_Chicken_Cooked_Egg:materialInfo4.sg"
		;
connectAttr "Egg_Yolk.msg" "Cooked_Chicken_Cooked_Egg:materialInfo4.m";
connectAttr "Egg_whites.oc" "Cooked_Chicken_Cooked_Egg:lambert6SG.ss";
connectAttr "Cooked_EggShape.iog.og[2]" "Cooked_Chicken_Cooked_Egg:lambert6SG.dsm"
		 -na;
connectAttr "Cooked_EggShape.ciog.cog[1]" "Cooked_Chicken_Cooked_Egg:lambert6SG.dsm"
		 -na;
connectAttr "Cooked_Chicken_Cooked_Egg:groupId3.msg" "Cooked_Chicken_Cooked_Egg:lambert6SG.gn"
		 -na;
connectAttr "Cooked_Chicken_Cooked_Egg:groupId4.msg" "Cooked_Chicken_Cooked_Egg:lambert6SG.gn"
		 -na;
connectAttr "Cooked_Chicken_Cooked_Egg:lambert6SG.msg" "Cooked_Chicken_Cooked_Egg:materialInfo5.sg"
		;
connectAttr "Egg_whites.msg" "Cooked_Chicken_Cooked_Egg:materialInfo5.m";
connectAttr "Cooked_Chicken_Cooked_Egg:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "Cooked_Chicken_Cooked_Egg:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "Cooked_Chicken_Cooked_Egg:lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "Cooked_Chicken_Cooked_Egg:lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "Cooked_Chicken_Cooked_Egg:lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "Cooked_Chicken_Cooked_Egg:Chicken_Meat_Cooked.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Cooked_Chicken_Cooked_Egg:Chicken_Bone.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Cooked_Chicken_Cooked_Egg:Plate_color.msg" ":defaultShaderList1.s" 
		-na;
connectAttr "Egg_Yolk.msg" ":defaultShaderList1.s" -na;
connectAttr "Egg_whites.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Egg_Cooked.ma
