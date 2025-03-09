//Maya ASCII 2024 scene
//Name: Kitchen_Tool_Clever.ma
//Last modified: Sat, Mar 08, 2025 04:58:31 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26100)";
fileInfo "UUID" "BCCA4456-45B7-37FD-FE66-099A9BDCCD36";
createNode transform -s -n "persp";
	rename -uid "B8806907-4456-5662-663A-C5AA28BDF72A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.7222375269187342 -7.5955539647449175 13.13010512807096 ;
	setAttr ".r" -type "double3" 154.46164727218121 -218.19999999959907 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "113EBEDB-4A42-5375-F23B-ABA20107459D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 18.167013615461169;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "EA120147-4356-9812-2B38-F1AE4575FBFD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3D2EE45A-49B7-3A81-4AC5-FAB258837537";
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
	rename -uid "B6D08D41-4738-C3CC-EEC6-5392B39ACA6C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FF6DDA3D-4D04-FDEB-1D13-9282678B470E";
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
	rename -uid "2E3389E5-4F3E-D2E2-2314-ACB3AE117E9E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8E6EB3C7-4247-61F9-73D7-1DB74BF6F1DD";
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
createNode transform -n "Clever";
	rename -uid "21100D62-4C57-1DC8-7D49-698654FB71E3";
	setAttr ".s" -type "double3" 1 4.3166522905168447 1 ;
createNode mesh -n "CleverShape" -p "Clever";
	rename -uid "28817A83-4FF8-6699-FD88-FCBB0C79D76A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" nan nan ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 120 ".pt";
	setAttr ".pt[96]" -type "float3" -2.1316282e-14 -0.0026486921 -0.0070137233 ;
	setAttr ".pt[97]" -type "float3" -2.1316282e-14 -0.0031604604 -0.004723561 ;
	setAttr ".pt[98]" -type "float3" -2.1316282e-14 -0.0035331207 -0.0024172678 ;
	setAttr ".pt[99]" -type "float3" -2.1316282e-14 -0.003157709 -0.0024572234 ;
	setAttr ".pt[100]" -type "float3" -2.1316282e-14 -0.0026385931 -0.0025172094 ;
	setAttr ".pt[101]" -type "float3" -2.1316282e-14 -0.0021149619 -0.0025811435 ;
	setAttr ".pt[102]" -type "float3" -2.1316282e-14 -0.0021190436 -0.0048421426 ;
	setAttr ".pt[103]" -type "float3" -2.1316282e-14 -0.0021238362 -0.0070840968 ;
	setAttr ".pt[104]" -type "float3" -2.1316282e-14 -0.0021280493 -0.0087050227 ;
	setAttr ".pt[105]" -type "float3" -2.1316282e-14 -0.0031523991 0.0056080506 ;
	setAttr ".pt[106]" -type "float3" -2.1316282e-14 -0.0026164083 0.0078398678 ;
	setAttr ".pt[107]" -type "float3" -2.1316282e-14 -0.0020804161 0.0094184652 ;
	setAttr ".pt[108]" -type "float3" -2.1316282e-14 -0.0020923754 0.0077972831 ;
	setAttr ".pt[109]" -type "float3" -2.1316282e-14 -0.0021060659 0.0055559007 ;
	setAttr ".pt[110]" -type "float3" -2.1316282e-14 -0.0021178247 0.0032937285 ;
	setAttr ".pt[111]" -type "float3" -2.1316282e-14 -0.0026418737 0.0033252053 ;
	setAttr ".pt[112]" -type "float3" -2.1316282e-14 -0.0031613214 0.0033469966 ;
	setAttr ".pt[113]" -type "float3" -2.1316282e-14 -0.0035370435 0.0033532651 ;
	setAttr ".pt[114]" -type "float3" -2.1316282e-14 0.0031667575 -0.0055865208 ;
	setAttr ".pt[115]" -type "float3" -2.1316282e-14 0.0026323898 -0.0078307148 ;
	setAttr ".pt[116]" -type "float3" -2.1316282e-14 0.0020977955 -0.0094161313 ;
	setAttr ".pt[117]" -type "float3" -2.1316282e-14 0.0021084305 -0.0077946158 ;
	setAttr ".pt[118]" -type "float3" -2.1316282e-14 0.0021198681 -0.0055528493 ;
	setAttr ".pt[119]" -type "float3" -2.1316282e-14 0.0021290493 -0.0032903755 ;
	setAttr ".pt[120]" -type "float3" -2.1316282e-14 0.0026531396 -0.0033131817 ;
	setAttr ".pt[121]" -type "float3" -2.1316282e-14 0.003172636 -0.0033255222 ;
	setAttr ".pt[122]" -type "float3" -2.1316282e-14 0.0035483977 -0.0033240905 ;
	setAttr ".pt[123]" -type "float3" -2.1316282e-14 0.0026438856 0.0070264814 ;
	setAttr ".pt[124]" -type "float3" -2.1316282e-14 0.0031574173 0.0047480119 ;
	setAttr ".pt[125]" -type "float3" -2.1316282e-14 0.0035330299 0.0024495884 ;
	setAttr ".pt[126]" -type "float3" -2.1316282e-14 0.0031575151 0.002481058 ;
	setAttr ".pt[127]" -type "float3" -2.1316282e-14 0.0026382706 0.0025311497 ;
	setAttr ".pt[128]" -type "float3" -2.1316282e-14 0.0021145195 0.0025864313 ;
	setAttr ".pt[129]" -type "float3" -2.1316282e-14 0.0021161276 0.0048477822 ;
	setAttr ".pt[130]" -type "float3" -2.1316282e-14 0.0021187717 0.0070901066 ;
	setAttr ".pt[131]" -type "float3" -2.1316282e-14 0.002121744 0.0087113399 ;
	setAttr ".pt[132]" -type "float3" 0 -0.002100707 -0.0048103766 ;
	setAttr ".pt[133]" -type "float3" 0 -0.0021019571 -0.0025272411 ;
	setAttr ".pt[134]" -type "float3" 0 -0.0026304827 -0.0024396102 ;
	setAttr ".pt[135]" -type "float3" 0 -0.0031543581 -0.0023534414 ;
	setAttr ".pt[136]" -type "float3" 0 -0.0035332039 -0.0022918216 ;
	setAttr ".pt[137]" -type "float3" 0 -0.0031527623 -0.0046463129 ;
	setAttr ".pt[138]" -type "float3" 0 -0.0026304401 -0.0069837328 ;
	setAttr ".pt[139]" -type "float3" 0 -0.0021079311 0.0055238716 ;
	setAttr ".pt[140]" -type "float3" 0 -0.0021099306 0.0077870563 ;
	setAttr ".pt[141]" -type "float3" 0 -0.0021113395 0.0094236676 ;
	setAttr ".pt[142]" -type "float3" 0 -0.002635967 0.0078433231 ;
	setAttr ".pt[143]" -type "float3" 0 -0.0031606094 0.0056099175 ;
	setAttr ".pt[144]" -type "float3" 0 -0.0035370435 0.0033532651 ;
	setAttr ".pt[145]" -type "float3" 0 -0.0031581733 0.0033302018 ;
	setAttr ".pt[146]" -type "float3" 0 -0.0026343246 0.0032889559 ;
	setAttr ".pt[147]" -type "float3" 0 -0.002105878 0.0032405783 ;
	setAttr ".pt[148]" -type "float3" 0 0.0031698365 -0.0034202635 ;
	setAttr ".pt[149]" -type "float3" 0 0.002645744 -0.003329193 ;
	setAttr ".pt[150]" -type "float3" 0 0.0021169933 -0.0032371902 ;
	setAttr ".pt[151]" -type "float3" 0 0.0021352768 -0.0094224326 ;
	setAttr ".pt[152]" -type "float3" 0 0.0026561888 -0.0078778639 ;
	setAttr ".pt[153]" -type "float3" 0 0.0031768349 -0.0056913206 ;
	setAttr ".pt[154]" -type "float3" 0 0.0035488289 -0.0034860009 ;
	setAttr ".pt[155]" -type "float3" 0 0.0020906606 0.0070801685 ;
	setAttr ".pt[156]" -type "float3" 0 0.002096019 0.0048164167 ;
	setAttr ".pt[157]" -type "float3" 0 0.0021016346 0.0025325529 ;
	setAttr ".pt[158]" -type "float3" 0 0.0026303632 0.0024455825 ;
	setAttr ".pt[159]" -type "float3" 0 0.0031544426 0.0023602718 ;
	setAttr ".pt[160]" -type "float3" 0 0.0035334309 0.0022994825 ;
	setAttr ".pt[161]" -type "float3" 0 0.0031483434 0.0046559107 ;
	setAttr ".pt[162]" -type "float3" 0 0.0026221029 0.0069907918 ;
	setAttr ".pt[163]" -type "float3" 0 0.0020869935 0.0087171849 ;
	setAttr ".pt[164]" -type "float3" -2.1316282e-14 -0.0025394529 -0.0061208368 ;
	setAttr ".pt[165]" -type "float3" -2.1316282e-14 -0.0029497393 -0.0042845719 ;
	setAttr ".pt[166]" -type "float3" -2.1316282e-14 -0.0025347844 -0.0043283622 ;
	setAttr ".pt[167]" -type "float3" -2.1316282e-14 -0.0029442599 0.0051412061 ;
	setAttr ".pt[168]" -type "float3" -2.1316282e-14 -0.0025156783 0.0069254371 ;
	setAttr ".pt[169]" -type "float3" -2.1316282e-14 -0.0025265387 0.005123904 ;
	setAttr ".pt[170]" -type "float3" -2.1316282e-14 0.002958012 -0.0051238001 ;
	setAttr ".pt[171]" -type "float3" -2.1316282e-14 0.0025308491 -0.0069174534 ;
	setAttr ".pt[172]" -type "float3" -2.1316282e-14 0.0025399653 -0.0051145162 ;
	setAttr ".pt[173]" -type "float3" -2.1316282e-14 0.0025353592 0.0061319182 ;
	setAttr ".pt[174]" -type "float3" -2.1316282e-14 0.0029471661 0.0043045338 ;
	setAttr ".pt[175]" -type "float3" -2.1316282e-14 0.0025323702 0.0043401201 ;
	setAttr ".pt[176]" -type "float3" 0 -0.0025225191 -0.0060858419 ;
	setAttr ".pt[177]" -type "float3" 0 -0.0025219324 -0.0042754626 ;
	setAttr ".pt[178]" -type "float3" 0 -0.0029409677 -0.0042131892 ;
	setAttr ".pt[179]" -type "float3" 0 -0.0025279205 0.0050992211 ;
	setAttr ".pt[180]" -type "float3" 0 -0.0025279289 0.0069173677 ;
	setAttr ".pt[181]" -type "float3" 0 -0.0029483146 0.005130548 ;
	setAttr ".pt[182]" -type "float3" 0 0.0029635886 -0.0051917699 ;
	setAttr ".pt[183]" -type "float3" 0 0.0025429346 -0.0051270649 ;
	setAttr ".pt[184]" -type "float3" 0 0.0025463647 -0.0069439728 ;
	setAttr ".pt[185]" -type "float3" 0 0.0025157621 0.0060922895 ;
	setAttr ".pt[186]" -type "float3" 0 0.0025183228 0.0042825034 ;
	setAttr ".pt[187]" -type "float3" 0 0.0029373507 0.0042217365 ;
	setAttr ".pt[230]" -type "float3" 0 0.0021677804 -0.0054799002 ;
	setAttr ".pt[231]" -type "float3" 0 0.002123272 -0.0053534517 ;
	setAttr ".pt[232]" -type "float3" 0 0.002074413 -0.0055129863 ;
	setAttr ".pt[233]" -type "float3" 0 0.0021743178 -0.0076965634 ;
	setAttr ".pt[234]" -type "float3" 0 0.0020811001 -0.0077769626 ;
	setAttr ".pt[235]" -type "float3" 0 0.0021308172 -0.0079056248 ;
	setAttr ".pt[236]" -type "float3" 0 -0.0021421991 -0.0069739916 ;
	setAttr ".pt[237]" -type "float3" 0 -0.0020503055 -0.0070817019 ;
	setAttr ".pt[238]" -type "float3" 0 -0.0020996977 -0.0069273785 ;
	setAttr ".pt[239]" -type "float3" 0 -0.0020495767 -0.008718228 ;
	setAttr ".pt[240]" -type "float3" 0 -0.0021412526 -0.0085726939 ;
	setAttr ".pt[241]" -type "float3" 0 -0.0020990707 -0.0087098973 ;
	setAttr ".pt[242]" -type "float3" 0 -0.02295889 1.1100653 ;
	setAttr ".pt[243]" -type "float3" 0 0.02295889 1.1100653 ;
	setAttr ".pt[244]" -type "float3" 0 0.02295889 1.1100653 ;
	setAttr ".pt[245]" -type "float3" 0 -0.02295889 1.1100653 ;
	setAttr ".pt[246]" -type "float3" 0 -0.02295889 1.1100653 ;
	setAttr ".pt[247]" -type "float3" 0 0.02295889 1.1100653 ;
	setAttr ".pt[248]" -type "float3" 0 0.02295889 1.1100653 ;
	setAttr ".pt[249]" -type "float3" 0 0.02295889 1.1100653 ;
	setAttr ".pt[250]" -type "float3" 0 -0.02295889 1.1100653 ;
	setAttr ".pt[251]" -type "float3" 0 -0.02295889 1.1100653 ;
	setAttr ".pt[252]" -type "float3" 0 -0.02295889 1.1100653 ;
	setAttr ".pt[253]" -type "float3" 0 0.02295889 1.1100653 ;
	setAttr ".pt[254]" -type "float3" 0 -0.02295889 1.1100653 ;
	setAttr ".pt[255]" -type "float3" 0 0.02295889 1.1100653 ;
	setAttr ".pt[256]" -type "float3" 0 -0.02295889 1.1100653 ;
	setAttr ".pt[257]" -type "float3" 0 0.02295889 1.1100653 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "Clever";
	rename -uid "F77A7826-43A2-B3F9-F4FA-8A91D35BD805";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 14 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[1]" "f[64]" "f[68]" "f[106]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 8 "f[24:43]" "f[65]" "f[69]" "f[77:79]" "f[85:87]" "f[92:101]" "f[103:104]" "f[107]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[12:31]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "vtx[8:27]" "vtx[48]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[8:27]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[8:47]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 2 "vtx[28:47]" "vtx[49]";
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "vtx[28:47]";
	setAttr ".gtag[8].gtagnm" -type "string" "front";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 3 "f[0]" "f[66]" "f[70]";
	setAttr ".gtag[9].gtagnm" -type "string" "left";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 4 "f[3]" "f[72]" "f[80]" "f[108]";
	setAttr ".gtag[10].gtagnm" -type "string" "right";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 3 "f[2]" "f[76]" "f[84]";
	setAttr ".gtag[11].gtagnm" -type "string" "sides";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 1 "f[4:23]";
	setAttr ".gtag[12].gtagnm" -type "string" "top";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 10 "f[44:63]" "f[67]" "f[71]" "f[73:75]" "f[81:83]" "f[88:91]" "f[96:99]" "f[101:102]" "f[104:105]" "f[109]";
	setAttr ".gtag[13].gtagnm" -type "string" "topRing";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 1 "e[32:51]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 114 ".pt[0:113]" -type "float3"  0 -0.0060500139 0.0003019674 
		0 -0.017998489 0.00027594678 0 0.017309064 -0.00027744815 0 0.0042441292 -0.00030590018 
		0 0.017533306 -0.00027695979 0 0.0044144513 0.00032475631 0 0.017524363 0.00035330627 
		0 0.017703872 0.00035369716 0 -0.0071263076 -0.00033066198 0 0.0055831661 -0.00030298412 
		0 -0.0068617919 0.00030019958 0 -0.0062094755 0.00030162017 0 0.0058763269 0.00032793987 
		0 0.017957848 -0.00027603525 0 -0.018409947 0.0002750507 0 -0.018113382 0.00027569654 
		0 -0.017971385 0.00027600577 0 -0.0060171694 0.00030203894 0 0.006051199 0.00032832072 
		0 -0.0065851398 -0.0003294835 0 0.0057983911 -0.00030251537 0 -0.018169427 -0.00035471108 
		0 -0.018607304 -0.0003556647 0 -0.0062574437 -0.00032876985 0 0.0039476883 -0.00030654573 
		0 0.017097337 -0.00027790922 0 0.017251059 0.0003527111 0 0.0040458711 0.00032395363 
		0 0.0053815828 0.00032686244 0 0.017947815 0.00035422842 0 0.018047526 0.00035444563 
		0 0.017778687 -0.00027642542 0 0.0051314314 -0.00030396786 0 0.0060699126 0.00032836146 
		0 0.018041864 0.00035443326 0 0.017909229 -0.00027614113 0 -0.018267322 -0.00035492418 
		0 -0.0063335798 -0.00032893565 0 -0.018434618 -0.00035528859 0 0.0059067169 -0.00030227951 
		0 0.0059702205 -0.00030214118 0 -0.0061754566 -0.0003285913 0 -0.029667545 -0.00037975091 
		0 -0.0098887254 -0.00033667783 0 -0.0098900972 0.00029360471 0 0.029668918 -0.00025053159 
		0 0.029667545 0.00037975097 0 -0.029668918 0.00025053159 0 -0.019581567 0.00027249922 
		0 -0.019119075 0.00027350639 0 -0.029668918 0.00025053159 0 -0.019580258 -0.00035778349 
		0 -0.029667545 -0.00037975097 0 -0.019187706 -0.00035692862 0 0.0040305005 -0.0003063654 
		0 0.00406443 0.00032399403 0 0.017981404 0.00035430162 0 0.017163465 -0.00027776521 
		0 0.017217657 0.00035263834 0 -0.029667545 -0.00037975097 0 -0.018075919 -0.00035450741 
		0 -0.029668918 0.00025053159 0 -0.018018253 0.0002759037 0 0.029667545 0.00037975097 
		0 0.029667545 0.00037975097 0 0.029668918 -0.00025053159 0 0.029668918 -0.00025053159 
		0 0.017954569 -0.00027604241 0 -0.029667545 -0.00037975088 0 0.029668918 -0.00025053156 
		0 0.029667545 0.00037975097 0 0.029667545 0.00037975097 0 -0.029668918 0.00025053159 
		0 0.0060247011 0.00032826301 0 -0.006104907 0.00030184787 0 -0.029667545 -0.00037975091 
		0 -0.029668918 0.00025053159 0 0.029667545 0.00037975097 0 0.029668918 -0.00025053159 
		0 0.029668918 -0.00025053156 0 -0.022933213 -0.00018377429 0 -0.024662079 -0.00017197389 
		0 -0.015426793 0.00011696829 0 -0.019273423 8.7666209e-05 0 -0.0098900981 0.00029360471 
		0 -0.015586074 -0.00017783715 0 -0.015586719 0.00011805986 0 -0.029667545 -0.00037975091 
		0 -0.013868591 0.00010633274 0 -0.019273423 8.7666209e-05 0 -0.022993688 5.7501624e-05 
		0 -0.019272836 -0.00018071568 0 -0.024662605 6.8892856e-05 0 -0.022933738 5.7092435e-05 
		0 -0.015426149 -0.00017892873 0 -0.0098887254 -0.00033667783 0 -0.029668918 0.00025053159 
		0 -0.022993162 -0.00018336509 0 -0.019272836 -0.00018071568 0 -0.013867946 -0.00018956428 
		0 -0.0098887254 -0.00033667783 0 -0.029668918 0.00025053159 0 0.029667545 0.00037975097 
		0 -0.029667545 -0.00037975091 0 0.029667545 0.00037975097 0 0.029668918 -0.00025053159 
		0 -0.0098900981 0.00029360471 0 -0.029667545 -0.00037975091 0 -0.029668918 0.00025053159 
		0 0.029668918 -0.00025053159 0 7.4505806e-08 -1.1920929e-07 0 -4.4703484e-08 -5.9604645e-08 
		0 6.7055225e-08 8.9406967e-08 0 -8.1956387e-08 -5.9604645e-08;
	setAttr -s 110 ".vt[0:109]"  3.1634469 -0.019095439 -0.44334123 3.16699219 -0.011215075 -1.31860673
		 -1.38496566 0.01166977 1.26810408 -1.39100921 0.020286474 0.31105414 -0.10064443 0.011521874 1.28453064
		 -1.39500892 -0.025997059 0.32321566 -1.38876116 -0.034643427 1.2835604 -0.1052326 -0.034761816 1.29671001
		 -0.10124712 0.027785605 -0.52186817 1.081101656 0.019403342 0.40914306 -0.11244991 -0.01856005 -0.50280666
		 1.07525301 -0.018990271 -0.45502231 1.071337819 -0.026961207 0.43030295 3.18207073 0.011241877 1.31562972
		 -0.085503228 -0.010943704 -1.34874749 1.12436795 -0.011139299 -1.32702303 2.19711804 -0.01123295 -1.3166213
		 2.16681838 -0.019117102 -0.44093525 2.16884089 -0.027076542 0.44311291 1.094635844 0.027428692 -0.48222584
		 2.17790318 0.019261392 0.424909 3.18412256 0.035068866 -1.33081341 -0.070682861 0.035357662 -1.36288929
		 3.1756525 0.027212566 -0.45822099 -2.6972115 0.020481985 0.28933889 -2.70390773 0.011809409 1.25259447
		 -2.70622635 -0.034463175 1.26353991 -2.69927597 -0.025753969 0.29621595 -0.12707585 -0.026634909 0.39406127
		 1.1211158 -0.034922704 1.31457961 2.21923995 -0.03498847 1.3218838 1.12620294 0.011360038 1.30250561
		 -0.11982106 0.019701272 0.37605199 3.15552664 -0.027088884 0.44448373 3.17945409 -0.034984734 1.32146907
		 2.22393084 0.011273943 1.31206822 2.22979999 0.035133425 -1.33798456 2.18506908 0.027262779 -0.46379822
		 1.14908803 0.035243768 -1.35023952 3.16086078 0.01918995 0.43284425 4.027499199 0.019148067 0.4374961
		 4.027499199 0.027158491 -0.45221516 3.17675138 0.042652205 -2.17308879 -2.68726683 0.029607501 -0.72422445
		 -2.68787932 -0.016562793 -0.72464013 -0.080346279 0.0035180855 2.17350459 3.17890763 -0.042652208 2.17308879
		 -0.063060872 -0.0035180857 -2.17350459 -4.027499199 -0.010170988 -1.43457258 -1.34249997 -0.010476015 -1.40069342
		 -2.68651175 -0.0035180859 -2.17350459 -4.027499199 0.03599935 -1.43416154 -2.68650985 0.042652208 -2.17308879
		 -1.34249997 0.03574045 -1.40540576 -4.027499199 0.020427369 0.29540515 -4.027499199 -0.025766209 0.29757544
		 4.027499199 -0.034944862 1.31704021 -4.027499199 0.011765796 1.25743854 -4.027499199 -0.034441143 1.26109302
		 1.1596173 0.042652208 -2.17308879 4.027499199 0.035007194 -1.32396364 2.22923946 -0.0035180859 -2.17350459
		 4.027499199 -0.011202039 -1.32005453 -1.38419366 -0.042652208 2.17308879 -0.081950635 -0.042652208 2.17308879
		 -2.70605254 0.0035180859 2.17350459 -1.38256717 0.0035180859 2.17350459 4.027499199 0.011244041 1.31538951
		 2.24031043 0.042652201 -2.17308879 3.17981577 0.0035180845 2.17350459 1.14830554 -0.042652208 2.17308879
		 2.24049687 -0.042652208 2.17308879 1.15108228 -0.0035180859 -2.17350459 4.027499199 -0.027059065 0.44117182
		 4.027499199 -0.019059237 -0.44736233 -0.058451906 0.042652205 -2.17308879 3.16900206 -0.0035180859 -2.17350459
		 -2.70721316 -0.042652208 2.17308879 1.1498878 0.0035180859 2.17350459 2.24196625 0.003518085 2.17350459
		 -2.98018074 0.024928885 -1.67986727 -2.68499947 0.024928886 -1.80652022 -2.3929894 -0.00085504726 -1.13013923
		 -2.26529098 0.0032147744 -1.4119072 -4.027499199 -0.016562793 -0.72464019 -2.97212934 0.020820394 -1.14165986
		 -2.97212934 -0.00085504726 -1.141855 4.027499199 0.042652205 -2.17308879 -2.68499947 -0.00085504726 -1.015988708
		 -3.071708679 0.0032147744 -1.4119072 -2.36251783 0.0072845961 -1.68441796 -3.071708679 0.02287464 -1.41173005
		 -2.68499947 0.0072845961 -1.80667913 -2.98018074 0.0072845961 -1.68002617 -2.3929894 0.020820394 -1.12994409
		 -1.34249997 0.029607501 -0.72422445 -1.34249997 -0.0035180859 -2.17350459 -2.36251783 0.024928885 -1.68425906
		 -2.26529098 0.02287464 -1.41173005 -2.68499947 0.020820394 -1.015793562 -4.027499199 0.029607501 -0.72422445
		 -4.027499199 -0.0035180859 -2.17350459 -4.027499199 -0.042652208 2.17308879 -1.34249997 0.042652205 -2.17308879
		 4.027499199 -0.042652208 2.17308879 4.027499199 0.0035180859 2.17350459 -1.34249997 -0.016562793 -0.72464019
		 -4.027499199 0.042652205 -2.17308879 4.027499199 -0.0035180859 -2.17350459 -4.027499199 0.0035180859 2.17350459;
	setAttr -s 220 ".ed";
	setAttr ".ed[0:165]"  0 33 1 33 18 1 18 17 1 17 0 1 0 74 1 74 73 0 73 33 1
		 0 1 1 1 62 1 62 74 0 17 16 1 16 1 1 1 76 1 76 108 0 108 62 0 16 61 1 61 76 0 2 4 1
		 4 32 1 32 3 1 3 2 1 2 66 1 66 45 0 45 4 1 2 25 1 25 65 1 65 66 0 3 24 1 24 25 1 3 95 1
		 95 43 0 43 24 1 32 8 1 8 95 1 4 31 1 31 9 1 9 32 1 45 78 0 78 31 1 5 6 1 6 26 1 26 27 1
		 27 5 1 5 28 1 28 7 1 7 6 1 5 106 1 106 10 1 10 28 1 27 44 1 44 106 0 6 63 1 63 77 0
		 77 26 1 7 64 1 64 63 0 28 12 1 12 29 1 29 7 1 29 70 1 70 64 0 8 19 1 19 38 1 38 22 1
		 22 8 1 9 19 1 22 53 1 53 95 0 31 35 1 35 20 1 20 9 1 20 37 1 37 19 1 10 11 1 11 12 1
		 10 14 1 14 15 1 15 11 1 106 49 0 49 14 1 15 16 1 17 11 1 18 12 1 18 30 1 30 29 1
		 13 69 1 69 105 0 105 67 0 67 13 1 13 35 1 35 79 1 79 69 0 13 39 1 39 20 1 67 40 0
		 40 39 1 49 96 0 96 47 0 47 14 1 47 72 0 72 15 1 72 61 0 33 34 1 34 30 1 37 36 1 36 38 1
		 39 23 1 23 37 1 21 23 1 23 41 1 41 60 0 60 21 1 21 36 1 21 42 1 42 68 0 68 36 1 60 87 0
		 87 42 0 22 75 1 75 103 0 103 53 0 38 59 1 59 75 0 40 41 0 24 54 1 54 57 0 57 25 1
		 43 100 0 100 54 0 57 109 0 109 65 0 26 58 1 58 55 0 55 27 1 77 102 0 102 58 0 55 84 0
		 84 44 0 30 71 1 71 70 0 34 46 1 46 71 0 78 79 0 73 56 0 56 34 1 56 104 0 104 46 0
		 68 59 0 67 56 1 73 40 1 74 41 1 62 60 1 87 108 0 76 42 1 61 68 1 43 99 1 99 85 0
		 85 100 0 95 94 0 94 99 0 44 88 1 88 82 0 82 106 0 84 86 0 86 88 0 45 64 1;
	setAttr ".ed[166:219]" 70 78 1 66 63 1 104 105 0 69 46 1 79 71 1 96 103 1 75 47 1
		 59 72 1 48 84 0 84 100 1 100 51 0 51 48 1 48 89 1 89 86 0 48 101 0 101 93 0 93 89 0
		 51 107 0 107 101 0 49 83 1 83 90 0 90 96 0 82 83 0 50 96 0 90 92 0 92 50 1 50 52 1
		 52 103 0 50 101 0 107 52 0 92 93 0 51 91 1 91 80 0 80 107 0 85 91 0 80 81 0 81 52 1
		 81 97 0 97 103 0 53 98 1 98 94 0 97 98 0 54 55 1 58 57 1 102 109 0 65 77 1 80 93 0
		 92 81 0 91 89 0 90 97 0 82 94 0 98 83 0 88 99 0 86 85 0;
	setAttr -s 110 -ch 440 ".fc[0:109]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 -1
		f 4 7 8 9 -5
		f 4 -4 10 11 -8
		f 4 12 13 14 -9
		f 4 -12 15 16 -13
		f 4 17 18 19 20
		f 4 21 22 23 -18
		f 4 24 25 26 -22
		f 4 -21 27 28 -25
		f 4 29 30 31 -28
		f 4 -20 32 33 -30
		f 4 34 35 36 -19
		f 4 -24 37 38 -35
		f 4 39 40 41 42
		f 4 43 44 45 -40
		f 4 46 47 48 -44
		f 4 -43 49 50 -47
		f 4 51 52 53 -41
		f 4 -46 54 55 -52
		f 4 -45 56 57 58
		f 4 -59 59 60 -55
		f 4 61 62 63 64
		f 4 -33 -37 65 -62
		f 4 -65 66 67 -34
		f 4 -36 68 69 70
		f 4 -71 71 72 -66
		f 4 73 74 -57 -49
		f 4 75 76 77 -74
		f 4 -48 78 79 -76
		f 4 -78 80 -11 81
		f 4 -82 -3 82 -75
		f 4 -83 83 84 -58
		f 4 85 86 87 88
		f 4 89 90 91 -86
		f 4 92 93 -70 -90
		f 4 -89 94 95 -93
		f 4 -80 96 97 98
		f 4 -99 99 100 -77
		f 4 -101 101 -16 -81
		f 4 -2 102 103 -84
		f 4 -73 104 105 -63
		f 4 -94 106 107 -72
		f 4 108 109 110 111
		f 4 112 -105 -108 -109
		f 4 113 114 115 -113
		f 4 -112 116 117 -114
		f 4 118 119 120 -67
		f 4 -64 121 122 -119
		f 4 -107 -96 123 -110
		f 4 124 125 126 -29
		f 4 -32 127 128 -125
		f 4 -127 129 130 -26
		f 4 131 132 133 -42
		f 4 -54 134 135 -132
		f 4 -134 136 137 -50
		f 4 -85 138 139 -60
		f 4 -104 140 141 -139
		f 4 -39 142 -91 -69
		f 4 -7 143 144 -103
		f 4 -145 145 146 -141
		f 4 -116 147 -122 -106
		f 4 -95 148 -144 149
		f 4 -150 -6 150 -124
		f 4 -151 -10 151 -111
		f 4 -118 152 -14 153
		f 4 -154 -17 154 -115
		f 4 155 156 157 -128
		f 4 -31 158 159 -156
		f 4 160 161 162 -51
		f 4 -138 163 164 -161
		f 4 165 -61 166 -38
		f 4 -23 167 -56 -166
		f 4 -147 168 -87 169
		f 4 -170 -92 170 -142
		f 4 -98 171 -120 172
		f 4 -173 -123 173 -100
		f 4 174 175 176 177
		f 4 178 179 -164 -175
		f 4 180 181 182 -179
		f 4 -178 183 184 -181
		f 4 185 186 187 -97
		f 4 -79 -163 188 -186
		f 4 189 -188 190 191
		f 4 192 193 -172 -190
		f 4 194 -185 195 -193
		f 4 -192 196 -182 -195
		f 4 197 198 199 -184
		f 4 -177 -158 200 -198
		f 4 -196 -200 201 202
		f 4 -203 203 204 -194
		f 4 205 206 -159 -68
		f 4 -121 -205 207 -206
		f 4 208 -133 209 -126
		f 4 -129 -176 -137 -209
		f 4 -149 -88 -169 -146
		f 4 -210 -136 210 -130
		f 4 -148 -155 -102 -174
		f 4 -152 -15 -153 -117
		f 4 -168 -27 211 -53
		f 4 -131 -211 -135 -212
		f 4 -140 -171 -143 -167
		f 4 212 -197 213 -202
		f 4 -199 214 -183 -213
		f 4 -214 -191 215 -204
		f 4 216 -207 217 -189
		f 4 -162 218 -160 -217
		f 4 -218 -208 -216 -187
		f 4 -157 -219 -165 219
		f 4 -220 -180 -215 -201;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "33F6AF79-4D5E-1A1B-2046-1CAB1ECD58A5";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B520D65F-4857-CA53-1623-5DB1B050F5EB";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "14E58E3D-4436-7FFB-8BF4-C1A63644949E";
createNode displayLayerManager -n "layerManager";
	rename -uid "DAB9CBC1-4DE3-4212-9AFE-20AD05140E39";
createNode displayLayer -n "defaultLayer";
	rename -uid "D3AA9223-4681-E3E1-0554-849E5250951A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B6DF91DD-4936-3D08-3A6A-BBA68BA075B2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8C0D539C-449C-7A88-98EB-0AA32B169480";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "B36B06EF-4726-49C1-631A-1B949C6D0F80";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "6B35BBA6-4FD2-9DBF-A4CC-979D351EFC5D";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "618CC1E2-4242-4CD3-10ED-63A803A68479";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "00F5BF8D-4CAD-0C0B-0E20-608C9C545014";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode groupId -n "groupId1";
	rename -uid "DC46312F-44AB-5F07-43AA-22ACD958E83F";
	setAttr ".ihi" 0;
createNode objectSet -n "set1";
	rename -uid "CAD8BDD0-4A9B-22BD-5D9E-7994A93378DB";
	setAttr ".ihi" 0;
createNode objectSet -n "set2";
	rename -uid "D2F1B7C4-47CE-9270-755C-D29917445E42";
	setAttr ".ihi" 0;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "22E98B36-4E70-32F0-E6D1-23ACEA63F3B5";
	setAttr ".ics" -type "componentList" 1 "f[98]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.0274992 -0.0081278635 -1.7466236 ;
	setAttr ".rs" 46105;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.0274991989135742 -0.033187001943588257 -2.1734685897827148 ;
	setAttr ".cbx" -type "double3" 4.0274991989135742 0.016931274905800819 -1.3197786808013916 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "4E02C806-45DC-DB50-441E-BF8406EE6170";
	setAttr ".ics" -type "componentList" 1 "f[98]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.5304132 -0.0081278635 -1.7466236 ;
	setAttr ".rs" 49592;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.5304131507873535 -0.033187001943588257 -2.1734685897827148 ;
	setAttr ".cbx" -type "double3" 4.5304131507873535 0.016931274905800819 -1.3197786808013916 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "3F38C14D-44D2-5708-06FF-DB91524701B6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[110:113]" -type "float3"  0.50291395 0 0 0.50291395
		 0 0 0.50291395 0 0 0.50291395 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "445EFF2A-4A2E-375C-9627-3A84DE5ED15D";
	setAttr ".ics" -type "componentList" 1 "f[98]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.5304132 -0.0081278645 -1.7466236 ;
	setAttr ".rs" 52822;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.5304131507873535 -0.071729585528373718 -2.1734683513641357 ;
	setAttr ".cbx" -type "double3" 4.5304131507873535 0.055473856627941132 -1.3197789192199707 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "A41725A1-4433-75AD-20FC-C0BC69BB3931";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[114:117]" -type "float3"  0 -0.032441568 -2.3841858e-07
		 0 0.038542584 -2.9802322e-07 0 -0.03854258 -4.1723251e-07 0 0.032472484 1.7881393e-07;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5F1B168E-4145-83F5-D5C7-60A38AAAD496";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E099E8F0-4C26-FCA6-CBCF-C29F64FCD78A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "D3CC61DA-49D2-88A0-247D-40A4D2A56696";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[230]" "e[232]" "e[234:243]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 4.3166522905168447 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.69897959139008004;
	setAttr ".sg" 3;
	setAttr ".d" 0.28571428598037785;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak3";
	rename -uid "19B32B2D-4003-A147-ECC7-12A44975AF95";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[42]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.14246938 ;
	setAttr ".tk[46]" -type "float3" 0 0.021596905 -0.29819497 ;
	setAttr ".tk[63]" -type "float3" 0 0.021596905 -0.29819497 ;
	setAttr ".tk[64]" -type "float3" 0 0.021596905 -0.29819497 ;
	setAttr ".tk[70]" -type "float3" 0 0.021596905 -0.29819497 ;
	setAttr ".tk[71]" -type "float3" 0 0.021596905 -0.29819497 ;
	setAttr ".tk[76]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[77]" -type "float3" 0 0.021596905 -0.29819497 ;
	setAttr ".tk[82]" -type "float3" 0 -0.0097613987 0 ;
	setAttr ".tk[83]" -type "float3" 0 -0.0097613987 0 ;
	setAttr ".tk[84]" -type "float3" 0 0 0.15501161 ;
	setAttr ".tk[86]" -type "float3" 0 -0.0097613987 0 ;
	setAttr ".tk[88]" -type "float3" 0 -0.0097613987 0 ;
	setAttr ".tk[89]" -type "float3" 0 -0.0097613987 0 ;
	setAttr ".tk[90]" -type "float3" 0 -0.0097613987 0 ;
	setAttr ".tk[92]" -type "float3" 0 -0.0097613987 0 ;
	setAttr ".tk[93]" -type "float3" 0 -0.0097613987 0 ;
	setAttr ".tk[102]" -type "float3" 0 0.021596905 -0.29819497 ;
	setAttr ".tk[104]" -type "float3" 0 0.021596905 -0.29819497 ;
	setAttr ".tk[106]" -type "float3" 0 0 0.18440749 ;
	setAttr ".tk[110]" -type "float3" -0.32898018 0 0 ;
	setAttr ".tk[111]" -type "float3" -0.32898018 0 0 ;
	setAttr ".tk[112]" -type "float3" -0.32898018 0 0 ;
	setAttr ".tk[113]" -type "float3" -0.32898018 0 0 ;
	setAttr ".tk[114]" -type "float3" -0.32413796 -0.027047371 0.2156581 ;
	setAttr ".tk[115]" -type "float3" -0.32413796 0.032133956 0.2133645 ;
	setAttr ".tk[116]" -type "float3" -0.32413796 -0.032133959 -0.21554974 ;
	setAttr ".tk[117]" -type "float3" -0.32413796 0.027073139 -0.2156581 ;
	setAttr ".tk[118]" -type "float3" 4.3235188 -0.027047371 0.2156581 ;
	setAttr ".tk[119]" -type "float3" 4.3235188 0.032133956 0.2133645 ;
	setAttr ".tk[120]" -type "float3" 4.3235188 -0.032133959 -0.21554974 ;
	setAttr ".tk[121]" -type "float3" 4.3235188 0.027073139 -0.2156581 ;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "83B8DFC4-49B7-3BB5-75AF-78AB0F2B3AEC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[13]" "e[16]" "e[97]" "e[99]" "e[101]" "e[114]" "e[117]" "e[119]" "e[122]" "e[147]" "e[189]" "e[193:195]" "e[223]" "e[225]" "e[314:315]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 4.3166522905168447 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.19999999999999996;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "CA36DACA-4842-E9B7-460A-5096C8348C40";
	setAttr ".ics" -type "componentList" 2 "f[59:62]" "f[77:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 4.3166522905168447 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.036041174 2.180212 ;
	setAttr ".rs" 48494;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.0274991989135742 -0.071174397395547304 2.1732540130615234 ;
	setAttr ".cbx" -type "double3" 4.0274991989135742 0.14325674795517723 2.1871697902679443 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "CB667B88-499C-38AA-9D1F-23B60508A092";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[45]" -type "float3" 0 -0.025100574 0.31189626 ;
	setAttr ".tk[57]" -type "float3" 0 -0.025100574 0.31189626 ;
	setAttr ".tk[58]" -type "float3" 0 -0.025100574 0.31189626 ;
	setAttr ".tk[63]" -type "float3" 0 -0.025100574 0.31189626 ;
	setAttr ".tk[64]" -type "float3" 0 -0.025100574 0.31189626 ;
	setAttr ".tk[67]" -type "float3" 0 -0.025100574 0.31189626 ;
	setAttr ".tk[74]" -type "float3" 0 0 -0.081507958 ;
	setAttr ".tk[88]" -type "float3" 0 0 0.066709362 ;
	setAttr ".tk[89]" -type "float3" 0 -0.025100574 0.31189626 ;
	setAttr ".tk[90]" -type "float3" 0 -0.025100574 0.31189626 ;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "5BF0081E-4674-325D-ABE9-1A8D253008D8";
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
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
connectAttr "polyExtrudeFace4.out" "CleverShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polySurfaceShape1.o" "polyExtrudeFace1.ip";
connectAttr "CleverShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "CleverShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "CleverShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyBevel1.ip";
connectAttr "CleverShape.wm" "polyBevel1.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "CleverShape.wm" "polyBevel2.mp";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "CleverShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyBevel2.out" "polyTweak4.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "CleverShape.iog" ":initialShadingGroup.dsm" -na;
// End of Kitchen_Tool_Clever.ma
