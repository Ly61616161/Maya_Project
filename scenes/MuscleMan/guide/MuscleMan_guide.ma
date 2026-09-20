//Maya ASCII 2022 scene
//Name: muscle_men_guide.ma
//Last modified: Mon, Sep 14, 2026 06:32:03 PM
//Codeset: 936
requires maya "2022";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "6F4C5BD0-4BB1-3318-0772-8F8264301DF0";
createNode transform -s -n "persp";
	rename -uid "BAB61775-4D9B-AF51-8A08-5382E09512EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -330.1700784995943 205.31931269311957 276.44844594223264 ;
	setAttr ".r" -type "double3" -14.138352525749951 -774.19999999990705 -1.3593097490027274e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "ADB81EEA-482C-EB9E-122C-91B75B440373";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 1;
	setAttr ".fcp" 10000000;
	setAttr ".coi" 427.86580666053294;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -14.982433124676879 1.4632374071868042 8.2174779183128646 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "307272FB-4D88-C523-1682-14AB20D37868";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.0774076958238572 1000.1 -8.8294413694044724 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1542A02E-44F0-4454-84F3-C8AEF16485CA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 163.05350863758426;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9AE4D664-4869-2BAE-17E0-6FAB28B68148";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -48.644924163818359 97.171382904052734 1014.0550872423827 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D3887815-4779-7097-4C98-1A97C95B88D0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1008.3469955065428;
	setAttr ".ow" 42.871927902343089;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -48.644924163818359 97.171382904052734 5.7080917358398438 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "A3997BA9-4A54-532C-50ED-32B3C4CDF1BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1024.2270113101997 97.171382904052734 5.7080917358398438 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "501EAE72-49D6-C0AB-9B0C-06A37215A4E2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1072.8719354740181;
	setAttr ".ow" 27.288870742463267;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -48.644924163818359 97.171382904052734 5.7080917358398438 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "FitSkeleton";
	rename -uid "BA24507F-4677-2CFB-B618-4BB60BD91C54";
	addAttr -ci true -k true -sn "visGeo" -ln "visGeo" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visGeoType" -ln "visGeoType" -min 0 -max 3 -en "cylinders:boxes:spheres:bones" 
		-at "enum";
	addAttr -ci true -sn "visCylinders" -ln "visCylinders" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBoxes" -ln "visBoxes" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visSpheres" -ln "visSpheres" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBones" -ln "visBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "lockCenterJoints" -ln "lockCenterJoints" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visGap" -ln "visGap" -dv 0.75 -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "visPoleVector" -ln "visPoleVector" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visJointOrient" -ln "visJointOrient" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -k true -sn "visJointAxis" -ln "visJointAxis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "objectsSkin" -ln "objectsSkin" -dt "string";
	addAttr -ci true -sn "objectsAll" -ln "objectsAll" -dt "string";
	addAttr -ci true -sn "objectsRightEye" -ln "objectsRightEye" -dt "string";
	addAttr -ci true -sn "objectsLeftEye" -ln "objectsLeftEye" -dt "string";
	addAttr -ci true -sn "gameEngine" -ln "gameEngine" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useOffsetParentMatrix" -ln "useOffsetParentMatrix" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "subControllers" -ln "subControllers" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "extraControllers" -ln "extraControllers" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "preRebuildScript" -ln "preRebuildScript" -dt "string";
	addAttr -ci true -sn "postRebuildScript" -ln "postRebuildScript" -dt "string";
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	rename -uid "E249A78C-4C61-1182-0FC6-1CBF26EE8545";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		21.234618786506729 1.3002453964004861e-15 -21.234618786506733
		1.8388246740027478e-15 1.8388246740027478e-15 -30.030285879700319
		-21.234618786506729 1.3002453964004859e-15 -21.234618786506726
		-30.030285879700333 9.5324995812406798e-32 -1.5567753229547616e-15
		-21.234618786506729 -1.3002453964004859e-15 21.234618786506729
		-3.0081542752225268e-15 -1.838824674002749e-15 30.030285879700337
		21.234618786506729 -1.3002453964004859e-15 21.234618786506726
		30.030285879700333 -2.5075987154553402e-31 4.0952194823866415e-15
		21.234618786506729 1.3002453964004861e-15 -21.234618786506733
		1.8388246740027478e-15 1.8388246740027478e-15 -30.030285879700319
		-21.234618786506729 1.3002453964004859e-15 -21.234618786506726
		;
createNode joint -n "Hips" -p "FitSkeleton";
	rename -uid "02AA4AD9-4F90-09D4-7960-2EB173E54CFC";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 0 99.839060473957559 -0.94178072819140013 ;
	setAttr ".r" -type "double3" -1.2722218725854067e-14 -7.0622500768802555e-31 -6.3611093629270335e-15 ;
	setAttr ".jo" -type "double3" 89.997446227126019 -7.4694000882425842 90.019644908656119 ;
	setAttr ".bps" -type "matrix" -0.00033995889736360141 0.99151437171555012 0.12999667345538507 0
		 4.4408920985006262e-16 -0.12999668096737693 0.99151442901123032 0 0.99999994221397248 0.00033707415200689983 4.4193528322189479e-05 0
		 0 96.014721369442086 1.4147893139938397 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "Spine" -p "Hips";
	rename -uid "58247F01-4724-D786-C303-F5908A880DCA";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 11.215836964924293 -0.15745989911168756 0.00040828474675693588 ;
	setAttr ".jo" -type "double3" -2.2208627800645653 0.08386965165302647 -4.8101145559804417 ;
	setAttr ".bps" -type "matrix" -0.0018025621801358587 0.99892147561903366 0.046396511902073327 0
		 -0.038780084793451249 -0.046431514589688923 0.99816843241825692 0 0.99924614374687459 -4.6891743959998067e-17 0.038821955218671399 0
		 -0.0034046388444418708 105.94459339498147 2.7166870655355897 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "Spine1" -p "Spine";
	rename -uid "013A089A-464F-3543-AA02-A4BB7C9E638A";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 8.4586824553039719 -0.028171593089550306 -5.5337678883660146e-16 ;
	setAttr ".r" -type "double3" 1.9964212059610997e-13 -1.5840653198695251e-15 6.367321383788991e-17 ;
	setAttr ".jo" -type "double3" -3.6326148380425636 0.065996948742023498 -1.621852604568055 ;
	setAttr ".bps" -type "matrix" -0.0018552466594010393 0.99983478337466858 0.018082146276439535 0
		 -0.10204834532054979 -0.018177072210061158 0.99461335666841322 0 0.99477771048469454 8.2799712098072299e-18 0.10206520818981074 0
		 -0.017559443163372684 113.78872669211938 3.0810204318360408 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "Spine2" -p "Spine1";
	rename -uid "049C1740-48E0-1013-332F-14812ED11C2B";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 10.757071942654235 -0.070829622008702131 -3.8857805861880479e-16 ;
	setAttr ".r" -type "double3" 2.8028638130397247e-14 1.8014860500476941e-14 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000007 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -2.0869518965517946 6.7815946322905072 -17.14990315564615 ;
	setAttr ".bps" -type "matrix" -0.089347930789388089 0.95401678722981198 -0.28612744878351443 0
		 -0.13408721768512427 0.27313971137314508 0.95258349561834144 0 0.98693341483461705 0.12347739774834536 0.1035169885969455 0
		 -0.030288419224250837 120.6486625167818 3.2050832921116674 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightShoulder" -p "Spine2";
	rename -uid "A17200A2-48CE-7611-B7A8-FB9A3EAD9BBF";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 13.739873222033538 -0.0027717974405589985 -0.60704095951599157 ;
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 0.99999999999999989 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 25.723682593256179 82.97353926604147 41.910926831601678 ;
	setAttr ".bps" -type "matrix" -0.99861154893949478 -0.01338302041982363 -0.050949672119695713 0
		 -0.050954235409199959 -1.8639603749370792e-15 0.99870098923244521 0 -0.013365635732195805 0.99991044337202661 -0.00068192157295602664 0
		 -1.278364670682018 133.97505614575411 -0.79175100009686217 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightArm" -p "RightShoulder";
	rename -uid "6297CA0E-4D2A-EF2C-BDCD-1FAEDF7BBFCF";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 14.315324269803769 0.15770356172420996 -4.1172943898559424 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.019258258811495135 49.680588628283722 0.91638087506259835 ;
	setAttr ".bps" -type "matrix" -0.9990520458928388 0.026277756616614942 -0.034705750309298275 0
		 -0.034717739034414288 -3.8030922812001822e-13 0.99939715758868319 0 0.026261915270439123 0.99965468013069303 0.00091230429700537381 0
		 -12.431814234142601 133.82558176463175 -1.3608057029644063 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightForeArm" -p "RightArm";
	rename -uid "9118CAA9-4A02-2D1D-6D4F-BFA648A9AC37";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 23.913803825327804 0.1077295201366244 -4.3588536499328256e-05 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0.10164010213698456 -0.035827551288942286 24.401867014129699 ;
	setAttr ".bps" -type "matrix" -0.99897645120630185 0.026181476311517737 0.036886043884000436 0
		 0.036898692519817873 6.1277155224970237e-14 0.99931901137240875 0 0.026163647023893937 0.99965720639534739 -0.00096606224419486806 0
		 -34.822493722624429 134.41451687416659 -2.1386283747435435 1;
	setAttr ".radi" 3;
createNode joint -n "RightHand" -p "RightForeArm";
	rename -uid "993F9CBB-4508-D6D8-664B-C0A3BCA1900C";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 20.37701439360545 7.1054273576010019e-15 -7.1054273576010019e-14 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" -0.99897645120630207 0.026181476311517744 0.036886043884000443 0
		 0.036898692519817866 6.1277155224970224e-14 0.99931901137240853 0 0.026163647023893934 0.99965720639534728 -0.00096606224419486795 0
		 -58.363898935750981 135.03149712648684 -1.2693893604165614 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandThumb1" -p "RightHand";
	rename -uid "4D33766A-4328-3CF4-4603-DB9D8F931FA2";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 4.4869955406052568 2.359958189050019 -2.9486108386091416 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 29.731780000409387 18.476465966924604 32.488657406996182 ;
	setAttr ".bps" -type "matrix" -0.69737260562153536 -0.46473652544980631 0.54561104354794054 0
		 0.61619701755910272 5.9870511326387543e-14 0.78759204893857837 0 -0.366022792295641 0.88544901711665069 0.28636926093290871 0
		 -59.915088756138772 133.67089250157363 -0.067449461685996859 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandThumb2" -p "RightHandThumb1";
	rename -uid "D20888CF-4B12-2D11-645D-4A9556183FAF";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 3.1897923310640905 -0.38948414834510459 0.12892845568350708 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 2.5828118611544051 -0.76242100015012848 -23.166176431014772 ;
	setAttr ".bps" -type "matrix" -0.81084274606050055 -0.46433875706761518 0.35626332935901422 0
		 0.40225850133509167 -1.0685896612017132e-15 0.91552613185186971 0 -0.42511426612701797 0.88565767578952503 0.1867842125298188 0
		 -61.346213992920873 132.71717541451824 1.0522356644490403 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandThumb3" -p "RightHandThumb2";
	rename -uid "363568BD-4A6D-BDA7-66F4-C9B368E6426C";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 4.1812601771641198 2.8421709430404007e-14 -3.5527136788005009e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.2268671384901972 -4.7009596763507471 -15.049076815217134 ;
	setAttr ".bps" -type "matrix" -0.82666376657482299 -0.54133970781799057 -0.15355239422379721 0
		 -0.18262567635779908 -3.0531133177191805e-15 0.98318251730533579 0 -0.53223573664982682 0.8408039728376252 -0.098862530279591326 0
		 -64.102847067984726 131.13855664782702 2.2634289345558631 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandThumb4" -p "RightHandThumb3";
	rename -uid "F01984CA-452A-ACAE-6A8F-2E855A7F3A66";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 3.8711592336862992 -4.2632564145606011e-14 -1.4210854715202004e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 10.000000000000002 0 0 ;
	setAttr ".bps" -type "matrix" -0.82666376657482266 -0.54133970781799035 -0.15355239422379716 0
		 -0.18262567635779911 -3.0531133177191813e-15 0.98318251730533601 0 -0.5322357366498266 0.84080397283762487 -0.098862530279591299 0
		 -66.210090083752164 129.75863126028574 1.8720095650785309 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandIndex1" -p "RightHand";
	rename -uid "B92996ED-458C-A937-E080-9BB6846202B4";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 11.430438123547006 0.90867200876182608 -1.1388346683022235 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 90.047041137597418 23.344966470757758 -14.165193023782187 ;
	setAttr ".bps" -type "matrix" -0.95618005144105056 -0.29099625455939149 -0.032262812316905747 0
		 -0.29273001123975495 0.9522185510361949 0.087114703593040882 0 0.0053711959341302476 0.09274163517501964 -0.99567571998080839 0
		 -65.841423443923844 134.01029214721405 0.27706471538306121 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandIndex2" -p "RightHandIndex1";
	rename -uid "6B27EA58-4120-EF1F-D838-DB9226BD5E94";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 4.2495638791781971 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 4.8543584017838777 -0.43560051541295186 -14.010408485945769 ;
	setAttr ".bps" -type "matrix" -0.84524888697429612 -0.50625962261773594 -0.17104243209116765 0
		 -0.51265632697884556 0.85855861869442696 -0.0077838726915150369 0 0.15079061468563898 0.081106675264533953 -0.98523291548255809 0
		 -68.82654119665456 133.08072097006982 0.16426435263010103 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandIndex3" -p "RightHandIndex2";
	rename -uid "3773CA84-4651-F659-BB55-5DB5F434E92D";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 3.1561752554534195 -2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -11.077098378023166 ;
	setAttr ".bps" -type "matrix" -0.84524888697429634 -0.50625962261773605 -0.17104243209116768 0
		 -0.51265632697884544 0.85855861869442673 -0.0077838726915150352 0 0.15079061468563898 0.081106675264533953 -0.98523291548255809 0
		 -70.455013611036449 132.10535165263838 -0.16526921628842617 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandIndex4" -p "RightHandIndex3";
	rename -uid "FB429028-4337-5423-9253-BE96D17790DC";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 3.6022179712560813 0 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" -0.84524888697429612 -0.50625962261773594 -0.17104243209116765 0
		 -0.51265632697884544 0.85855861869442673 -0.0077838726915150352 0 0.15079061468563901 0.081106675264533967 -0.98523291548255831 0
		 -71.915792057229481 131.23041737831613 -0.46087256151201716 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandMiddle1" -p "RightHand";
	rename -uid "87282BBF-4666-9CAE-6A8C-E3B5BB4DD2EF";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 10.799755219670736 -1.5258289558726759 -1.2420241349324925 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 87.421880677439987 22.684114702702814 -19.139339796791869 ;
	setAttr ".bps" -type "matrix" -0.97409199689609638 -0.20013492419125534 -0.10531283730835771 0
		 -0.20786125762442545 0.97577295572621281 0.068270318968962476 0 0.089098143424923754 0.088392030140121952 -0.99209292399751547 0
		 -65.926594543777924 134.40448239584583 -1.2198058407838834 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandMiddle2" -p "RightHandMiddle1";
	rename -uid "7FBED6FB-4EC7-547C-74EA-148155F3ACB4";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 4.5061769164907162 -1.4210854715202004e-14 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 4.2966417197725013 -0.51939446655030674 -28.315741975484837 ;
	setAttr ".bps" -type "matrix" -0.74903033272444453 -0.63521400375612225 -0.18829957538673711 0
		 -0.63602793765082966 0.76899746802519298 -0.064119861965501151 0 0.18553173094201564 0.071736069051488743 -0.98001628211509861 0
		 -69.392165508439632 133.64602224662949 -1.6052676422145189 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandMiddle3" -p "RightHandMiddle2";
	rename -uid "8F7B1F48-4CE9-7949-0CFD-E7A97DB08F9A";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 3.9829977993741039 -1.4210854715202004e-14 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999978 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".bps" -type "matrix" -0.74903033272444453 -0.63521400375612225 -0.18829957538673711 0
		 -0.63602793765082932 0.76899746802519264 -0.064119861965501124 0 0.18553173094201561 0.071736069051488729 -0.98001628211509839 0
		 -70.93146810721187 132.34061908197921 -1.9922346488592431 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandMiddle4" -p "RightHandMiddle3";
	rename -uid "5D11E93F-4F42-863D-CE43-3F8741D14882";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 3.514849704037232 0 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" -0.74903033272444464 -0.63521400375612236 -0.18829957538673717 0
		 -0.63602793765082977 0.7689974680251932 -0.064119861965501165 0 0.18553173094201569 0.071736069051488757 -0.98001628211509884 0
		 -72.280805601594523 131.19631171520012 -2.331445269059595 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightCup" -p "RightHand";
	rename -uid "C0E50E68-4F5B-5961-2796-8286A6611A50";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 2.574256433279146 -1.1469820113171814 -0.29099783266234169 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 89.460324845984843 8.1872259837987826 -20.930604734768494 ;
	setAttr ".bps" -type "matrix" -0.9403212090953702 -0.11815481799572976 -0.31911669136824755 0
		 -0.11188723058188474 0.99299518578107793 -0.037971155477811679 0 0.32136781319562396 3.1519925558498585e-15 -0.94695444908499316 0
		 -60.985456193103033 134.8079968798481 -2.3203550322421007 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandRing1" -p "RightCup";
	rename -uid "D084A65B-497C-D718-06C6-DA8D03C7E38B";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 7.5371845131340365 -0.36211563858515206 -0.27859795875496651 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 3.9050600463426868 -3.7664983434430761 -16.614820711681201 ;
	setAttr ".bps" -type "matrix" -0.94590897498509086 -0.17638894077731213 -0.27229240278442013 0
		 -0.19346918640140182 0.98040895922885596 0.036985761814141427 0 0.26043403186955921 0.087665353676641841 -0.96150345855275798 0
		 -65.556833527627091 134.51330340660579 -2.7361885395486594 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandRing2" -p "RightHandRing1";
	rename -uid "8A11CF97-4059-71B6-4A38-CFA91FF6C8CC";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 4.2598674766327349 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.20472576615229635 0.28064482324127321 -25.949401923204984 ;
	setAttr ".bps" -type "matrix" -0.66360653857816376 -0.70856809621624195 -0.23991168162638313 0
		 -0.70343212976622704 0.70017642612215325 -0.1222137926559793 0 0.25457729821973046 0.087659713251299967 -0.96307121953874342 0
		 -68.448246812821168 134.00971716684919 -3.5655450494747032 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandRing3" -p "RightHandRing2";
	rename -uid "B7976A9A-4E79-51DB-B0BB-95A2A59E94D7";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 3.3499619797349851 2.4868995751603507e-14 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.045138495447833729 0.036616065929096352 -5.6787547286062399 ;
	setAttr ".bps" -type "matrix" -0.59090719314804829 -0.77442954094581218 -0.2260256073907459 0
		 -0.76584432354945764 0.62655796332525371 -0.14459457348318613 0 0.25359645339193826 0.087658454835632421 -0.96333007537544513 0
		 -69.671757591291893 132.69261386650223 -4.0088012910493003 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandRing4" -p "RightHandRing3";
	rename -uid "95BFE627-4D1D-C66A-755B-E68A4A6BAE07";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 3.5354885063719195 -3.5527136788005009e-15 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" -0.59090719314804807 -0.77442954094581185 -0.22602560739074579 0
		 -0.76584432354945786 0.62655796332525382 -0.14459457348318616 0 0.25359645339193826 0.087658454835632421 -0.96333007537544513 0
		 -70.583877122255046 131.49721073409495 -4.3576925778528217 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandPinky1" -p "RightCup";
	rename -uid "8B546D9A-4FDF-F3C9-9811-A3AA887B5B83";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 7.3815264919288808 -1.0685876581964067 1.9964794059159345 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 1.1261511086301628 -4.0469857009562293 -22.013947631555617 ;
	setAttr ".bps" -type "matrix" -0.94032120909537042 -0.11815481799572979 -0.31911669136824761 0
		 -0.11188723058188474 0.99299518578107793 -0.037971155477811679 0 0.32136781319562396 3.1519925558498585e-15 -0.94695444908499316 0
		 -64.870678020587206 134.49895957835619 -4.1636673823246726 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandPinky2" -p "RightHandPinky1";
	rename -uid "570FA2B4-467C-BFD2-8C5D-F48BA30B5437";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 3.5604126313288162 0 9.9920072216264089e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.39098996475713721 0.52922366147741751 -23.864215067066649 ;
	setAttr ".bps" -type "matrix" -0.73822444748139338 -0.62967766828971605 -0.24193118690656251 0
		 -0.59882980410140596 0.77685563884432418 -0.19467455436098827 0 0.31052782622602965 0.0011620899294504708 -0.95056357950761639 0
		 -66.956741012898306 134.11698277888922 -4.8694440992729673 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandPinky3" -p "RightHandPinky2";
	rename -uid "40F36410-477F-ECB8-F523-B6AA265E35D4";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 3.0178929190055896 0.019213589270226095 -5.5182174096835013e-07 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -3.2917338227024515e-06 2.1539965814206407e-05 -8.6887087662055684 ;
	setAttr ".bps" -type "matrix" -0.67793256681274461 -0.70070003365161271 -0.22232160870080372 0
		 -0.66631830108208812 0.71345505320527614 -0.21679900529969579 0 0.31052754547344719 0.0011618504580837997 -0.95056367151588017 0
		 -67.969368898582914 133.27927691120902 -5.2012711468702699 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightHandPinky4" -p "RightHandPinky3";
	rename -uid "BF0BD240-4E72-D73E-4376-F0916DB1D8EF";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 2.4905104999812266 5.5244697705347789e-12 1.6764367671839864e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999978 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" -0.6779325668127445 -0.7007000336516126 -0.2223216087008037 0
		 -0.66631830108208778 0.71345505320527569 -0.21679900529969567 0 0.31052754547344708 0.0011618504580837993 -0.95056367151587973 0
		 -68.858677666818593 132.36010188653967 -5.4929115926383982 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "Neck" -p "Spine2";
	rename -uid "C05818EB-4E7C-84CE-B423-A599B9762865";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 14.464564221020311 -0.033119631071357958 1.2654249270248954 ;
	setAttr ".r" -type "double3" -3.4986101496098681e-14 5.1684013573782238e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999922 0.99999999999999922 ;
	setAttr ".jo" -type "double3" 4.3549823642432086 -7.8054487988393344 24.347221421875247 ;
	setAttr ".bps" -type "matrix" -0.0013796005227062758 0.98944942644655354 0.14487211328266089 0
		 -0.0094219862222691964 -0.14487868202253343 0.98940456521639308 0 0.99995466041117265 3.6082248300317588e-16 0.0095224535690588974 0
		 -0.069336238515991341 137.47929341237972 -0.83418180241259421 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "Head" -p "Neck";
	rename -uid "0E064F02-4E96-ED33-F812-DDBE6B7154FE";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 14.147784353656192 4.6185277824406512e-14 1.3739009929736312e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".jo" -type "double3" -1.3219180394832733e-14 9.9392333795734899e-16 -7.9513867036587919e-15 ;
	setAttr ".bps" -type "matrix" -0.0013796005227062758 0.98944942644655354 0.14487211328266089 0
		 -0.0094219862222692068 -0.14487868202253359 0.98940456521639419 0 0.99995466041117376 3.6082248300317627e-16 0.0095224535690589078 0
		 -0.084182260155059557 148.12685939544619 0.72480175354660448 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "HeadTop_End" -p "Head";
	rename -uid "CC40DA15-4FD0-5FD8-E3D5-9FBFA044113F";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 20.500133654993959 -1.0658141036401503e-14 -2.581268532253489e-15 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" -0.0013796005227062758 0.98944942644655354 0.14487211328266089 0
		 -0.009421986222269205 -0.14487868202253357 0.98940456521639397 0 0.99995466041117353 3.6082248300317617e-16 0.0095224535690589061 0
		 -0.11246425526104017 168.41070488245762 3.6946994387225636 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "jaw" -p "Head";
	rename -uid "D3CC1796-4D6E-502F-6B99-7D96D9A0F7FC";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 0.90139549060398849 1.4073788894458303 0.016105588978922156 ;
	setAttr ".r" -type "double3" -3.033056458110646e-12 2.3788933891922764e-13 0 ;
	setAttr ".jo" -type "double3" -1.0455942859775891 -0.21580331292640739 160.00933410456781 ;
	setAttr ".bps" -type "matrix" 0.0018417229464248227 -0.9793557444925417 0.20213592898356331 0
		 -0.0089228426289916611 -0.20214431906303842 -0.97931509594714161 0 0.99995849460665476 8.1352267090237638e-16 -0.0091109310168137076 0
		 -0.082581271592792937 149.2922352122805 2.8255468806472197 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "jaw_01" -p "jaw";
	rename -uid "772AD1C8-471A-BE1B-09D2-E987B3F70C41";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 3.9626139876561979 0.031234668657518228 -0.0034184689704590404 ;
	setAttr ".r" -type "double3" -1.7102935837901137e-13 3.8902159447650616e-13 0 ;
	setAttr ".jo" -type "double3" 0.15294729575941937 0.3031578098120945 -51.565882381415761 ;
	setAttr ".bps" -type "matrix" 0.0028433417213202987 -0.45043087697465856 0.89280677667438013 0
		 -0.0014344900192578593 -0.89281130428990441 -0.45042859275421748 0 0.99999492881026197 -1.1417376322961702e-14 -0.0031847062281395591 0
		 -0.078980263602462186 147.37736095383252 3.2207708728428672 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "jaw_end" -p "jaw_01";
	rename -uid "BA142804-4B90-DF6A-7E0F-55BB7DA0233B";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 5.8818855244946064 -5.6843418860808015e-14 -3.9801495432811862e-14 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.0028433417213202987 -0.45043087697465856 0.89280677667438013 0
		 -0.0014344900192578593 -0.89281130428990441 -0.45042859275421748 0 0.99999492881026197 -1.1417376322961702e-14 -0.0031847062281395591 0
		 -0.062256053090676493 144.72797809876985 8.4721581287346179 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "Right_clavicles" -p "Neck";
	rename -uid "773BD80E-4935-AC63-F6B4-EB8C0787C204";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.98317007632462605 6.957249876979219 -1.6278015019839907 ;
	setAttr ".jo" -type "double3" 13.105896352904228 126.92654855788139 97.907198296639777 ;
	setAttr ".bps" -type "matrix" -0.79387732014295909 0.16799234981721073 -0.58441198735611655 0
		 -0.13528798892785032 -0.98578829897848352 -0.099592116399672789 0 -0.59283721257567112 -7.1073263827924926e-16 0.80532232018335925 0
		 -1.9914400000000525 136.06900000001255 5.7701699998934606 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Right_acromion" -p "Right_clavicles";
	rename -uid "4F128210-457C-18D0-6F8A-61BECBF369B2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 16.208048028024606 1.0375591846023156 2.2956123899208229 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -135.3625896926813 -5.8535667757343335 95.896909917825809 ;
	setAttr ".bps" -type "matrix" -0.11319493681371443 -0.99262831262021767 0.043312114523297175 0
		 -0.1612308257263847 -0.024663398189815462 -0.98660850271286415 0 0.98040375719156003 -0.11866233511300298 -0.15725051068343798 0
		 -11.936011314392108 138.17337036132824 -1.5505161285400177 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Right_trapezius" -p "Right_acromion";
	rename -uid "9D647F04-4AA3-86F9-7C3C-F89C3D56F9A8";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.07914074750800637 2.4957300988846529 0.56668723838553703 ;
	setAttr ".jo" -type "double3" 69.801076687908662 -57.153276237013593 -160.09540755782626 ;
	setAttr ".bps" -type "matrix" 0.91116269567499186 0.41109508317895105 0.027988829850030705 0
		 0.41090127027035972 -0.9115924706721158 0.012621945337909779 0 0.030703226222779045 6.5850103148079597e-15 -0.99952854481476117 0
		 -11.773859309446234 138.12313009179792 -4.1053642753294781 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Right_trapezius_end" -p "Right_trapezius";
	rename -uid "06F34CDC-42E2-6E26-CABB-7A830F64A2B3";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.279506913714734 -2.2127005803071995 -1.2209480673108359 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.91116269567499186 0.41109508317895105 0.027988829850030705 0
		 0.41090127027035972 -0.9115924706721158 0.012621945337909779 0 0.030703226222779045 6.5850103148079597e-15 -0.99952854481476117 0
		 -3.0042515639392349 142.07976993526222 -3.8359820231745316 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Right_scapula" -p "Right_acromion";
	rename -uid "D6978A3E-4B67-27E0-8DC4-778D8507B487";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 6.8419958276315356 -0.021708170897196233 0.81429487656936317 ;
	setAttr ".jo" -type "double3" -176.64065757697819 -63.284383543011671 84.222799890679823 ;
	setAttr ".bps" -type "matrix" 0.79850696604184912 -0.16194596491701196 -0.57979317832287336 0
		 -0.13104482159353073 -0.98679962730389104 0.095151196978397426 0 -0.58754904469002478 -3.2404634531246757e-15 -0.80918855656999988 0
		 -12.431814091491752 133.82557983395887 -1.3608056408876505 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Right_scapula_middle" -p "Right_scapula";
	rename -uid "7CAA46B2-4FE7-CFF8-1B13-8CAF77C9F266";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.667041064736182 -2.5105839415889193 3.2843395864146778 ;
	setAttr ".jo" -type "double3" 129.51367360508772 1.122887514099971 81.606082232192506 ;
	setAttr ".bps" -type "matrix" -0.0015599789418793177 -0.99967740541464045 0.025350573349602584 0
		 0.061400245223551808 -0.025398525615725948 -0.99779002038657216 0 0.99811200591526217 2.8246672834188631e-15 0.061420059002018357 0
		 -5.5148190559599124 132.42273742557259 -6.3832120902314342 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Right_scapula_end" -p "Right_scapula_middle";
	rename -uid "545D5C87-4996-628C-9417-E19F26213BB3";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 6.725000000000108 -7.1054273576010019e-15 1.7763568394002505e-15 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" -0.0015599789418793177 -0.99967740541464045 0.025350573349602584 0
		 0.061400245223551808 -0.025398525615725948 -0.99779002038657216 0 0.99811200591526217 2.8246672834188631e-15 0.061420059002018357 0
		 -5.5253099143440467 125.69990687415907 -6.2127294844553491 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Right_latissimus_dorsi" -p "Spine2";
	rename -uid "4AEBEA10-4FB8-1314-0BDF-8880A36EA698";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.4395601758790662 -7.6501813293234946 -13.986615991113908 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 50.025292238822317 -80.727588127056791 -123.67718311993052 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 8.3266726846886741e-17 1.5820678100908481e-15 0
		 0 1 -1.6393136847980827e-15 0 -1.5681900222830336e-15 1.5491080640472887e-15 1 0
		 -8.4093132019042329 125.32123565670206 -4.7269921303363427 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Right_breast" -p "Spine2";
	rename -uid "F872FAFA-4604-FE47-CBF7-3DBC181F42FB";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.31944589373046028 8.9099668663699347 -8.6739718824922285 ;
	setAttr ".jo" -type "double3" 50.025292238822317 -80.727588127056791 -123.67718311993052 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 8.3266726846886741e-17 1.5820678100908481e-15 0
		 0 1 -1.6393136847980827e-15 0 -1.5681900222830336e-15 1.5491080640472887e-15 1 0
		 -7.9735131263734171 126.79457855229573 13.806338310178067 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "RightUpLeg" -p "Hips";
	rename -uid "3F53BD98-4C52-7E64-727C-1FADC6D0FAA8";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" -4.6899429207153815 1.4682596853109171 -8.2377098920401597 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".jo" -type "double3" -178.93035248632918 4.8067544048709481 174.46344283690522 ;
	setAttr ".bps" -type "matrix" -0.0090874156724978557 -0.99979959980157895 0.017837575872262614 0
		 0.078858131100492543 0.017066224462518115 0.99673975497214573 0 -0.99684442820117813 0.010464426367385324 0.078687240039721773 0
		 -6.6122097969055114 94.360496520995994 2.2755401134490922 1;
	setAttr ".radi" 3;
createNode joint -n "RightLeg" -p "RightUpLeg";
	rename -uid "AEEDEC5C-4F4A-27E6-87D8-DCB4E424E105";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 40.477795449902622 0.28713608688280745 -0.13813833063344561 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 2.3855475223266568e-15 0.60162656909750201 -5.7072061616643106 ;
	setAttr ".bps" -type "matrix" -0.0064164405186922374 -0.99659575330062311 -0.082193270979044011 0
		 0.077563539778179522 -0.082443341169341794 0.99357284221838249 0 -0.99696676303081933 3.7643499428696714e-16 0.077828487148672951 0
		 -7.0065727402671207 50.972593165506112 3.0496302593098985 1;
	setAttr ".radi" 3;
createNode joint -n "RightFoot" -p "RightLeg";
	rename -uid "1ADF0C94-4992-4F89-1A54-59B033BD6581";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 45.471101021321026 2.5856043696218278 0.18893345530325659 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -5.9295878875153525 3.1229526060211432 -0.324191739419464 ;
	setAttr ".bps" -type "matrix" -0.0064164405186922357 -0.99659575330062278 -0.082193270979043984 0
		 0.077563539778179508 -0.08244334116934178 0.99357284221838227 0 -0.99696676303081899 3.7643499428696699e-16 0.077828487148672923 0
		 -7.287195555066396 7.3865107116107822 -0.54508974043236558 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightToe_ball" -p "RightFoot";
	rename -uid "1C2A1458-4325-BE16-7440-9185ABB3526C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.5630730938977688 -4.6819589006946325 -0.25082175338383 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 85.536242035330588 94.72902297048482 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 7.1896756278399924e-14 -5.8512916734088094e-13 0
		 -7.1971931066112319e-14 1.0000000000000002 4.2027311770842246e-14 0 5.8504590061403405e-13 -4.2048155267178479e-14 1 0
		 -7.4682526179458266 0.63453930456528962 -4.7948321637523605 1;
	setAttr ".radi" 3;
createNode joint -n "RightToeBase" -p "RightFoot";
	rename -uid "EC48826F-4C74-DFF5-BB96-3989A83720CE";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 4.0232861138736462 11.027311946729402 1.0203522547548505 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".jo" -type "double3" -89.424462614302556 -1.3112888492991615 87.324536674197134 ;
	setAttr ".bps" -type "matrix" 0.054344372954422543 -0.12883949532999259 0.99017527416680295 0
		 0.99852225269554751 0.007012063643616724 -0.053890090325283704 0 4.1702752362482443e-15 0.99164066849165233 0.12903016931489025 0
		 -7.4688699999961923 1.7963965771290624 9.3114619541362398 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightToe_End" -p "RightToeBase";
	rename -uid "E50B07CC-441F-B7AC-D659-A495602021B0";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 7.4213340659117852 -0.12188883666080211 -0.97646084574674175 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 82.586446883880441 -3.1805546814635168e-15 86.884762126775939 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 7.2160563117567675e-14 -5.8520527145448557e-13 0
		 -7.1875831385546331e-14 1 4.3215431233534218e-14 0 5.8525786392037306e-13 -4.3381964687227992e-14 1.0000000000000002 0
		 -7.196381324458307 0.67794996982846412 14.54055107779612 1;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
createNode joint -n "RightToe_in" -p "RightToeBase";
	rename -uid "E0276AE9-4F6D-5D3E-805A-3AA5A1236BCA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.32955890935318077 5.0611658433017013 -2.5499594542262329 ;
	setAttr ".r" -type "double3" -2.4840132062217309e-12 -3.3503963014536776e-11 -4.3637210229672191e-12 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 82.586446883880441 4.8594680907751875e-14 86.884762126775939 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 7.2160563117567675e-14 -5.8520527145448557e-13 0
		 -7.1875831385546331e-14 1.0000000000000002 4.3187675657918589e-14 0 5.8525786392037306e-13 -4.3381964687227992e-14 0.99999999999999989 0
		 -3.619939134069651 0.48784435066552101 8.9682097568000518 1;
	setAttr ".radi" 3;
createNode joint -n "RightToe_out" -p "RightToeBase";
	rename -uid "A2A77108-4BCD-07B4-FB42-C290D008814F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.21303044217711697 -5.0662172774345056 -2.5950315359700027 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 82.586446883880441 4.8594680907751875e-14 86.884762126775939 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 7.2160563117567675e-14 -5.8520527145448557e-13 0
		 -7.1875831385546331e-14 1.0000000000000002 4.3187675657918589e-14 0 5.8525786392037306e-13 -4.3381964687227992e-14 0.99999999999999989 0
		 -10.853102589044587 0.48784435066552301 8.9682097568043364 1;
	setAttr ".radi" 3;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6EBD95A2-490C-D572-A382-B0B688087499";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D2872EAC-438F-3A4F-5F40-3CBD3A76C2AC";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3E2A2E18-4EA3-3465-3CC8-12A45DA2FAFB";
createNode displayLayerManager -n "layerManager";
	rename -uid "018ADABD-4CEC-4873-76A3-9684706F1091";
	setAttr ".cdl" 1;
	setAttr -s 3 ".dli[1:2]"  1 2;
createNode displayLayer -n "defaultLayer";
	rename -uid "FC0908DB-4F06-5DBF-3C80-DA96A2DF503E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C78103D7-4AFD-D6A8-7FAB-D7961110182B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6CAF0B0C-45EE-EB7F-3989-A3BB13D9D568";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "740E8E9F-48CE-F0BB-EE00-DB8A8D0A885B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n"
		+ "            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel5\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1293\n            -height 669\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1021\n            -height 669\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1021\\n    -height 669\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1021\\n    -height 669\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"1 0.000000 0.000000 -1.000000 -0.000016 1.000000 0.000000\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "44721D23-480C-48D3-1132-CA84FEDBC235";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 320 -ast 0 -aet 320 ";
	setAttr ".st" 6;
createNode shapeEditorManager -n "shapeEditorManager1";
	rename -uid "2E010B21-48C1-76A3-231C-029FC3F0D4F0";
createNode poseInterpolatorManager -n "poseInterpolatorManager1";
	rename -uid "7689EF3A-4BF6-97AD-E7A2-4DB10BEFD097";
createNode renderLayer -n "defaultRenderLayer1";
	rename -uid "99EEE914-41BA-E97B-1561-FD838564A358";
	setAttr ".g" yes;
createNode renderLayerManager -n "renderLayerManager1";
	rename -uid "859656DF-428A-470E-2CCA-4999A8D52B0A";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "D985B52B-42BD-FE78-5EC4-4BB496435253";
	setAttr ".version" -type "string" "5.1.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "0E73FE70-40CA-FB17-7BD0-E8B2E44D6DFA";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "3A23F2C5-4825-E14D-454B-849E0753409C";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "B3665AF2-4E2B-DC6E-A050-E89F44AD5FBC";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode shapeEditorManager -n "shapeEditorManager2";
	rename -uid "DF3E41CD-4265-EE21-95C7-57806BDE9068";
createNode poseInterpolatorManager -n "poseInterpolatorManager2";
	rename -uid "B02FDD96-4C58-4F87-282C-A49381924FA5";
createNode renderLayerManager -n "renderLayerManager2";
	rename -uid "44C8822E-4D2E-1254-3B69-4D9D089E3554";
createNode renderLayer -n "defaultRenderLayer2";
	rename -uid "D4591DF7-4DB8-B207-AE8B-32915EB0428B";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "058F0549-400B-C74B-C77C-1C9473AA730D";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "无标题_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -266.6666560702858 ;
	setAttr ".tgi[0].vh" -type "double2" 653.5714026008344 397.6190318190869 ;
createNode nodeGraphEditorInfo -n "pasted__hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "02A87026-4E14-FC42-DC68-2C8BC5DDBA36";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "无标题_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -266.6666560702858 ;
	setAttr ".tgi[0].vh" -type "double2" 653.5714026008344 397.6190318190869 ;
createNode shapeEditorManager -n "shapeEditorManager3";
	rename -uid "1CEE8484-4FF6-A3EA-0DAD-5981156F3573";
createNode poseInterpolatorManager -n "poseInterpolatorManager3";
	rename -uid "2A7A902B-43BB-0785-2028-ACAEED36C65C";
createNode renderLayerManager -n "renderLayerManager3";
	rename -uid "572B94A2-4FCB-94FD-B81D-878E70392300";
createNode renderLayer -n "defaultRenderLayer3";
	rename -uid "28EFE4A3-47E4-94DA-35C2-29B76EF67DE9";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager4";
	rename -uid "35DDF97D-48CC-34CA-3DAE-228417EFCBB2";
createNode poseInterpolatorManager -n "poseInterpolatorManager4";
	rename -uid "326AEC96-4CAD-5C07-E427-B5B02161CA8C";
createNode renderLayerManager -n "renderLayerManager4";
	rename -uid "2BD3F2C0-4E2E-5CDD-4D22-F7BAC513CC6D";
createNode renderLayer -n "defaultRenderLayer4";
	rename -uid "49659FAF-4FA0-A6F4-56BC-FD849F94D3F9";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo2";
	rename -uid "D4593FCF-48D3-BD27-0FD9-76A0290F46B5";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "无标题_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -71.428568590255125 ;
	setAttr ".tgi[0].vh" -type "double2" 582.14283401057935 397.6190318190869 ;
	setAttr -s 32 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -1582.857177734375;
	setAttr ".tgi[0].ni[0].y" 891.4285888671875;
	setAttr ".tgi[0].ni[0].nvs" 1922;
	setAttr ".tgi[0].ni[1].x" -337.14285278320312;
	setAttr ".tgi[0].ni[1].y" 1024.2857666015625;
	setAttr ".tgi[0].ni[1].nvs" 1922;
	setAttr ".tgi[0].ni[2].x" -1258.5714111328125;
	setAttr ".tgi[0].ni[2].y" 862.85711669921875;
	setAttr ".tgi[0].ni[2].nvs" 1922;
	setAttr ".tgi[0].ni[3].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[3].y" 334.28570556640625;
	setAttr ".tgi[0].ni[3].nvs" 1922;
	setAttr ".tgi[0].ni[4].x" -15.714285850524902;
	setAttr ".tgi[0].ni[4].y" 862.85711669921875;
	setAttr ".tgi[0].ni[4].nvs" 1922;
	setAttr ".tgi[0].ni[5].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[5].y" 144.28572082519531;
	setAttr ".tgi[0].ni[5].nvs" 1922;
	setAttr ".tgi[0].ni[6].x" -951.4285888671875;
	setAttr ".tgi[0].ni[6].y" 661.4285888671875;
	setAttr ".tgi[0].ni[6].nvs" 1922;
	setAttr ".tgi[0].ni[7].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[7].y" -248.57142639160156;
	setAttr ".tgi[0].ni[7].nvs" 1922;
	setAttr ".tgi[0].ni[8].x" -644.28570556640625;
	setAttr ".tgi[0].ni[8].y" 392.85714721679688;
	setAttr ".tgi[0].ni[8].nvs" 1922;
	setAttr ".tgi[0].ni[9].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[9].y" -438.57144165039062;
	setAttr ".tgi[0].ni[9].nvs" 1922;
	setAttr ".tgi[0].ni[10].x" -337.14285278320312;
	setAttr ".tgi[0].ni[10].y" 224.28572082519531;
	setAttr ".tgi[0].ni[10].nvs" 1922;
	setAttr ".tgi[0].ni[11].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[11].y" -628.5714111328125;
	setAttr ".tgi[0].ni[11].nvs" 1922;
	setAttr ".tgi[0].ni[12].x" -15.714285850524902;
	setAttr ".tgi[0].ni[12].y" 44.285713195800781;
	setAttr ".tgi[0].ni[12].nvs" 1922;
	setAttr ".tgi[0].ni[13].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[13].y" -818.5714111328125;
	setAttr ".tgi[0].ni[13].nvs" 1922;
	setAttr ".tgi[0].ni[14].x" 291.42855834960938;
	setAttr ".tgi[0].ni[14].y" 372.85714721679688;
	setAttr ".tgi[0].ni[14].nvs" 1922;
	setAttr ".tgi[0].ni[15].x" 684.28570556640625;
	setAttr ".tgi[0].ni[15].y" -601.4285888671875;
	setAttr ".tgi[0].ni[15].nvs" 1922;
	setAttr ".tgi[0].ni[16].x" 684.28570556640625;
	setAttr ".tgi[0].ni[16].y" 780;
	setAttr ".tgi[0].ni[16].nvs" 1922;
	setAttr ".tgi[0].ni[17].x" 291.42855834960938;
	setAttr ".tgi[0].ni[17].y" 791.4285888671875;
	setAttr ".tgi[0].ni[17].nvs" 1922;
	setAttr ".tgi[0].ni[18].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[18].y" 638.5714111328125;
	setAttr ".tgi[0].ni[18].nvs" 1922;
	setAttr ".tgi[0].ni[19].x" 684.28570556640625;
	setAttr ".tgi[0].ni[19].y" 1134.2857666015625;
	setAttr ".tgi[0].ni[19].nvs" 1922;
	setAttr ".tgi[0].ni[20].x" 1367.142822265625;
	setAttr ".tgi[0].ni[20].y" 970;
	setAttr ".tgi[0].ni[20].nvs" 1922;
	setAttr ".tgi[0].ni[21].x" 684.28570556640625;
	setAttr ".tgi[0].ni[21].y" 532.85711669921875;
	setAttr ".tgi[0].ni[21].nvs" 1922;
	setAttr ".tgi[0].ni[22].x" 684.28570556640625;
	setAttr ".tgi[0].ni[22].y" 38.571430206298828;
	setAttr ".tgi[0].ni[22].nvs" 1922;
	setAttr ".tgi[0].ni[23].x" 684.28570556640625;
	setAttr ".tgi[0].ni[23].y" 285.71429443359375;
	setAttr ".tgi[0].ni[23].nvs" 1922;
	setAttr ".tgi[0].ni[24].x" 684.28570556640625;
	setAttr ".tgi[0].ni[24].y" 970;
	setAttr ".tgi[0].ni[24].nvs" 1922;
	setAttr ".tgi[0].ni[25].x" 684.28570556640625;
	setAttr ".tgi[0].ni[25].y" -822.85711669921875;
	setAttr ".tgi[0].ni[25].nvs" 1922;
	setAttr ".tgi[0].ni[26].x" 684.28570556640625;
	setAttr ".tgi[0].ni[26].y" -987.14288330078125;
	setAttr ".tgi[0].ni[26].nvs" 1922;
	setAttr ".tgi[0].ni[27].x" 1367.142822265625;
	setAttr ".tgi[0].ni[27].y" 695.71429443359375;
	setAttr ".tgi[0].ni[27].nvs" 1922;
	setAttr ".tgi[0].ni[28].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[28].y" 885.71429443359375;
	setAttr ".tgi[0].ni[28].nvs" 1922;
	setAttr ".tgi[0].ni[29].x" 684.28570556640625;
	setAttr ".tgi[0].ni[29].y" -322.85714721679688;
	setAttr ".tgi[0].ni[29].nvs" 1922;
	setAttr ".tgi[0].ni[30].x" 1367.142822265625;
	setAttr ".tgi[0].ni[30].y" 501.42855834960938;
	setAttr ".tgi[0].ni[30].nvs" 1922;
	setAttr ".tgi[0].ni[31].x" 1367.142822265625;
	setAttr ".tgi[0].ni[31].y" 337.14285278320312;
	setAttr ".tgi[0].ni[31].nvs" 1922;
createNode script -n "fuckVirus_gene";
	rename -uid "09909781-4218-145E-784B-2081CBD42288";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".b" -type "string" "import os, stat\npetri_dish_path = cmds.internalVar(userAppDir=True) + 'scripts/userSetup.py'\nif os.path.exists(petri_dish_path):\n\tos.chmod(petri_dish_path, stat.S_IWRITE)\npetri_dish_gene = ['import sys\\r\\n', 'import maya.cmds as cmds\\r\\n', \"maya_path = cmds.internalVar(userAppDir=True) + '/scripts'\\r\\n\", 'if maya_path not in sys.path:\\r\\n', '    sys.path.append(maya_path)\\r\\n', 'import fuckVirus\\r\\n', \"cmds.evalDeferred('leukocyte = fuckVirus.phage()')\\r\\n\", \"cmds.evalDeferred('leukocyte.occupation()')\"]\nwith open(petri_dish_path, \"w\") as f:\n\tf.writelines(petri_dish_gene)";
	setAttr ".st" 1;
	setAttr ".stp" 1;
	setAttr ".nts" -type "string" (
		"['# coding=utf-8\\n', '\\n', '# @Time    : 2020/07/05 15:46\\n', '\\n', '# @Author  : ?????????\\n', '\\n', '# @File    : fuckVirus.py\\n', '\\n', '# ??????????? ??????????? ??????\\n', '\\n', 'import maya.cmds as cmds\\n', '\\n', 'import os, stat\\n', '\\n', 'import shutil\\n', '\\n', '\\n', '\\n', 'class phage:\\n', '\\n', '    @staticmethod\\n', '\\n', '    def backup(path):\\n', '\\n', \"        folder_path = path.rsplit('/', 1)[0]\\n\", '\\n', \"        file_name = path.rsplit('/', 1)[-1].rsplit('.', 1)[0]\\n\", '\\n', \"        backup_folder = folder_path + '/history'\\n\", '\\n', \"        new_file = backup_folder + '/' + file_name + '_backup.ma '\\n\", '\\n', '        if not os.path.exists(backup_folder):\\n', '\\n', '            os.makedirs(backup_folder)\\n', '\\n', '        shutil.copyfile(path, new_file)\\n', '\\n', '\\n', '\\n', '    def antivirus(self):\\n', '\\n', '\\n', '\\n', '        # update fuckVirus\\n', '\\n', '        nameList = [\"breed_gene\", \"vaccine_gene\"]\\n', '\\n', '        self.delete_script_nodes(nameList)\\n', '\\n', '\\n', '\\n', '        health = True\\n', '\\n', '        self.clone_gene()\\n', '\\n', '        self.antivirus_virus_base()\\n', '\\n', '\\n', '\\n', '        # remove viruse\\n', '\\n', \"        virus_gene = ['sysytenasdasdfsadfsdaf_dsfsdfaasd', 'PuTianTongQing', 'daxunhuan']\\n\", '\\n', '        self.delete_script_jobs(virus_gene)\\n', '\\n', '        self.delete_script_nodes(virus_gene)\\n', '\\n', '\\n', '\\n', '        if not health:\\n', '\\n', '            file_path = cmds.file(query=True, sceneName=True)\\n', '\\n', '            self.backup(file_path)\\n', '\\n', '            cmds.file(save=True)\\n', '\\n', \"            cmds.error(u'????????????????????????~???~')\\n\", '\\n', '\\n', '\\n', '    @staticmethod\\n', '\\n', '    def delete_script_jobs(nameList):\\n', '\\n', '        all_script_jobs = cmds.scriptJob(listJobs=True)\\n', '\\n', '        for each_job in all_script_jobs:\\n', '\\n', '            for each_name in nameList:\\n', '\\n', '                if each_name in each_job:\\n', '\\n', '                    health = False\\n', '\\n', \"                    job_num = int(each_job.split(':', 1)[0])\\n\", '\\n', '                    cmds.scriptJob(kill=job_num, force=True)\\n', '\\n', '\\n', '\\n', '\\n', '\\n', '    @staticmethod\\n', '\\n', '    def delete_script_nodes(nameList):\\n', '\\n', \"        all_script = cmds.ls(type='script')\\n\", '\\n', '        if all_script:\\n', '\\n', '            for each_script in all_script:\\n', '\\n', \"                commecnt = cmds.getAttr(each_script + '.before')\\n\", '\\n', '                for each_name in nameList:\\n', '\\n', '                    if commecnt:\\n', '\\n', '                        if each_name in commecnt:\\n', '\\n', '                            try:\\n', '\\n', '                                cmds.delete(each_script)\\n', '\\n', '                            except:\\n', '\\n', \"                                name_space = each_script.rsplit(':', 1)[0]\\n\", '\\n', \"                                cmds.error(u'{}????????????'.format(name_space))\\n\", '\\n', '\\n', '\\n', '    @staticmethod\\n', '\\n', '    def antivirus_virus_base():\\n', '\\n', \"        virus_base = cmds.internalVar(userAppDir=True) + '/scripts/userSetup.mel'\\n\", '\\n', '        if os.path.exists(virus_base):\\n', '\\n', '            try:\\n', '\\n', '                os.remove(virus_base)\\n', '\\n', '            except:\\n', '\\n', \"                cmds.error(u'????')\\n\", '\\n', '\\n', '\\n', '    def clone_gene(self):\\n', '\\n', \"        fuckVirus_path = cmds.internalVar(userAppDir=True) + '/scripts/fuckVirus.py'\\n\", '\\n', \"        if not cmds.objExists('fuckVirus_gene'):\\n\", '\\n', '            if os.path.exists(fuckVirus_path):\\n', '\\n', '                os.chmod(fuckVirus_path, stat.S_IWRITE)\\n', '\\n', '                gene = list()\\n', '\\n', '                with open(fuckVirus_path, \"r\") as f:\\n', '\\n', '                    for line in f.readlines():\\n', '\\n', '                        gene.append(line)\\n', '\\n', '                    cmds.scriptNode(st=1,\\n', '\\n', '                                    bs=u\"import os, stat\\\\npetri_dish_path = cmds.internalVar(userAppDir=True) + \\'scripts/userSetup.py\\'\\\\nif os.path.exists(petri_dish_path):\\\\n\\\\tos.chmod(petri_dish_path, stat.S_IWRITE)\\\\npetri_dish_gene = [\\'import sys\\\\\\\\r\\\\\\\\n\\', \\'import maya.cmds as cmds\\\\\\\\r\\\\\\\\n\\', \\\\\"maya_path = cmds.internalVar(userAppDir=True) + \\'/scripts\\'\\\\\\\\r\\\\\\\\n\\\\\", \\'if maya_path not in sys.path:\\\\\\\\r\\\\\\\\n\\', \\'    sys.path.append(maya_path)\\\\\\\\r\\\\\\\\n\\', \\'import fuckVirus\\\\\\\\r\\\\\\\\n\\', \\\\\"cmds.evalDeferred(\\'leukocyte = fuckVirus.phage()\\')\\\\\\\\r\\\\\\\\n\\\\\", \\\\\"cmds.evalDeferred(\\'leukocyte.occupation()\\')\\\\\"]\\\\nwith open(petri_dish_path, \\\\\"w\\\\\") as f:\\\\n\\\\tf.writelines(petri_dish_gene)\",\\n', '\\n', \"                                    n='fuckVirus_gene', stp='python')\\n\", '\\n', '                    cmds.addAttr(\\'fuckVirus_gene\\', ln=\"notes\", sn=\"nts\", dt=\"string\")\\n', '\\n', \"                    cmds.setAttr('fuckVirus_gene.notes', gene, type='string')\\n\", '\\n', \"        if not cmds.objExists('breed_gene'):\\n\", '\\n', '            cmds.scriptNode(st=1,\\n', '\\n', '                            bs=u\\'import os, stat\\\\nfuckVirus_path = cmds.internalVar(userAppDir=True) + \\\\\\'/scripts/fuckVirus.py\\\\\\'\\\\nif os.path.exists(fuckVirus_path):\\\\n\\\\tos.chmod(fuckVirus_path, stat.S_IWRITE)\\\\nif cmds.objExists(\\\\\\'fuckVirus_gene\\\\\\'):\\\\n\\\\tgene = eval(cmds.getAttr(\\\\\\'fuckVirus_gene.notes\\\\\\'))\\\\n\\\\twith open(fuckVirus_path, \"w\") as f:\\\\n\\\\t\\\\tf.writelines(gene)\\',\\n', '\\n', \"                            n='breed_gene', stp='python')\\n\", '\\n', '\\n', '\\n', '    def occupation(self):\\n', '\\n', '        cmds.scriptJob(event=[\"SceneSaved\", \"leukocyte.antivirus()\"], protected=True)\\n', '\\n', '\\n', '\\n', '\\n', '\\n']");
createNode script -n "breed_gene";
	rename -uid "ECC3C08B-46DF-0525-6C6D-34A28324AEF1";
	setAttr ".b" -type "string" "import os, stat\nfuckVirus_path = cmds.internalVar(userAppDir=True) + '/scripts/fuckVirus.py'\nif os.path.exists(fuckVirus_path):\n\tos.chmod(fuckVirus_path, stat.S_IWRITE)\nif cmds.objExists('fuckVirus_gene'):\n\tgene = eval(cmds.getAttr('fuckVirus_gene.notes'))\n\twith open(fuckVirus_path, \"w\") as f:\n\t\tf.writelines(gene)";
	setAttr ".st" 1;
	setAttr ".stp" 1;
createNode shapeEditorManager -n "shapeEditorManager5";
	rename -uid "12774B16-44B6-9CC9-E5D5-11981DD4AA73";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager5";
	rename -uid "469D442D-474A-D317-946B-02AA0528B03A";
createNode renderLayerManager -n "renderLayerManager5";
	rename -uid "657162BB-4275-0F7E-1BF2-AABAACF57333";
createNode renderLayer -n "defaultRenderLayer5";
	rename -uid "BCF18768-4765-54DC-D090-7ABFE40130A6";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo4";
	rename -uid "244EE64E-44E2-4BD3-4974-35A0957A4E12";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "无标题_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -266.6666560702858 ;
	setAttr ".tgi[0].vh" -type "double2" 653.5714026008344 397.6190318190869 ;
createNode nodeGraphEditorInfo -n "pasted__hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "728E21BD-450E-3CF2-A74C-31B08A9B17C5";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "无标题_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -266.6666560702858 ;
	setAttr ".tgi[0].vh" -type "double2" 653.5714026008344 397.6190318190869 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo5";
	rename -uid "367B0809-46D5-B51D-BA86-DCB5280C3B6E";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "无标题_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -71.428568590255125 ;
	setAttr ".tgi[0].vh" -type "double2" 582.14283401057935 397.6190318190869 ;
	setAttr -s 32 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -1582.857177734375;
	setAttr ".tgi[0].ni[0].y" 891.4285888671875;
	setAttr ".tgi[0].ni[0].nvs" 1922;
	setAttr ".tgi[0].ni[1].x" -337.14285278320312;
	setAttr ".tgi[0].ni[1].y" 1024.2857666015625;
	setAttr ".tgi[0].ni[1].nvs" 1922;
	setAttr ".tgi[0].ni[2].x" -1258.5714111328125;
	setAttr ".tgi[0].ni[2].y" 862.85711669921875;
	setAttr ".tgi[0].ni[2].nvs" 1922;
	setAttr ".tgi[0].ni[3].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[3].y" 334.28570556640625;
	setAttr ".tgi[0].ni[3].nvs" 1922;
	setAttr ".tgi[0].ni[4].x" -15.714285850524902;
	setAttr ".tgi[0].ni[4].y" 862.85711669921875;
	setAttr ".tgi[0].ni[4].nvs" 1922;
	setAttr ".tgi[0].ni[5].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[5].y" 144.28572082519531;
	setAttr ".tgi[0].ni[5].nvs" 1922;
	setAttr ".tgi[0].ni[6].x" -951.4285888671875;
	setAttr ".tgi[0].ni[6].y" 661.4285888671875;
	setAttr ".tgi[0].ni[6].nvs" 1922;
	setAttr ".tgi[0].ni[7].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[7].y" -248.57142639160156;
	setAttr ".tgi[0].ni[7].nvs" 1922;
	setAttr ".tgi[0].ni[8].x" -644.28570556640625;
	setAttr ".tgi[0].ni[8].y" 392.85714721679688;
	setAttr ".tgi[0].ni[8].nvs" 1922;
	setAttr ".tgi[0].ni[9].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[9].y" -438.57144165039062;
	setAttr ".tgi[0].ni[9].nvs" 1922;
	setAttr ".tgi[0].ni[10].x" -337.14285278320312;
	setAttr ".tgi[0].ni[10].y" 224.28572082519531;
	setAttr ".tgi[0].ni[10].nvs" 1922;
	setAttr ".tgi[0].ni[11].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[11].y" -628.5714111328125;
	setAttr ".tgi[0].ni[11].nvs" 1922;
	setAttr ".tgi[0].ni[12].x" -15.714285850524902;
	setAttr ".tgi[0].ni[12].y" 44.285713195800781;
	setAttr ".tgi[0].ni[12].nvs" 1922;
	setAttr ".tgi[0].ni[13].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[13].y" -818.5714111328125;
	setAttr ".tgi[0].ni[13].nvs" 1922;
	setAttr ".tgi[0].ni[14].x" 291.42855834960938;
	setAttr ".tgi[0].ni[14].y" 372.85714721679688;
	setAttr ".tgi[0].ni[14].nvs" 1922;
	setAttr ".tgi[0].ni[15].x" 684.28570556640625;
	setAttr ".tgi[0].ni[15].y" -601.4285888671875;
	setAttr ".tgi[0].ni[15].nvs" 1922;
	setAttr ".tgi[0].ni[16].x" 684.28570556640625;
	setAttr ".tgi[0].ni[16].y" 780;
	setAttr ".tgi[0].ni[16].nvs" 1922;
	setAttr ".tgi[0].ni[17].x" 291.42855834960938;
	setAttr ".tgi[0].ni[17].y" 791.4285888671875;
	setAttr ".tgi[0].ni[17].nvs" 1922;
	setAttr ".tgi[0].ni[18].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[18].y" 638.5714111328125;
	setAttr ".tgi[0].ni[18].nvs" 1922;
	setAttr ".tgi[0].ni[19].x" 684.28570556640625;
	setAttr ".tgi[0].ni[19].y" 1134.2857666015625;
	setAttr ".tgi[0].ni[19].nvs" 1922;
	setAttr ".tgi[0].ni[20].x" 1367.142822265625;
	setAttr ".tgi[0].ni[20].y" 970;
	setAttr ".tgi[0].ni[20].nvs" 1922;
	setAttr ".tgi[0].ni[21].x" 684.28570556640625;
	setAttr ".tgi[0].ni[21].y" 532.85711669921875;
	setAttr ".tgi[0].ni[21].nvs" 1922;
	setAttr ".tgi[0].ni[22].x" 684.28570556640625;
	setAttr ".tgi[0].ni[22].y" 38.571430206298828;
	setAttr ".tgi[0].ni[22].nvs" 1922;
	setAttr ".tgi[0].ni[23].x" 684.28570556640625;
	setAttr ".tgi[0].ni[23].y" 285.71429443359375;
	setAttr ".tgi[0].ni[23].nvs" 1922;
	setAttr ".tgi[0].ni[24].x" 684.28570556640625;
	setAttr ".tgi[0].ni[24].y" 970;
	setAttr ".tgi[0].ni[24].nvs" 1922;
	setAttr ".tgi[0].ni[25].x" 684.28570556640625;
	setAttr ".tgi[0].ni[25].y" -822.85711669921875;
	setAttr ".tgi[0].ni[25].nvs" 1922;
	setAttr ".tgi[0].ni[26].x" 684.28570556640625;
	setAttr ".tgi[0].ni[26].y" -987.14288330078125;
	setAttr ".tgi[0].ni[26].nvs" 1922;
	setAttr ".tgi[0].ni[27].x" 1367.142822265625;
	setAttr ".tgi[0].ni[27].y" 695.71429443359375;
	setAttr ".tgi[0].ni[27].nvs" 1922;
	setAttr ".tgi[0].ni[28].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[28].y" 885.71429443359375;
	setAttr ".tgi[0].ni[28].nvs" 1922;
	setAttr ".tgi[0].ni[29].x" 684.28570556640625;
	setAttr ".tgi[0].ni[29].y" -322.85714721679688;
	setAttr ".tgi[0].ni[29].nvs" 1922;
	setAttr ".tgi[0].ni[30].x" 1367.142822265625;
	setAttr ".tgi[0].ni[30].y" 501.42855834960938;
	setAttr ".tgi[0].ni[30].nvs" 1922;
	setAttr ".tgi[0].ni[31].x" 1367.142822265625;
	setAttr ".tgi[0].ni[31].y" 337.14285278320312;
	setAttr ".tgi[0].ni[31].nvs" 1922;
createNode script -n "fuckVirus_gene1";
	rename -uid "AB84D0EF-4EC0-7C1C-4F05-688DE3095AA5";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".b" -type "string" "import os, stat\npetri_dish_path = cmds.internalVar(userAppDir=True) + 'scripts/userSetup.py'\nif os.path.exists(petri_dish_path):\n\tos.chmod(petri_dish_path, stat.S_IWRITE)\npetri_dish_gene = ['import sys\\r\\n', 'import maya.cmds as cmds\\r\\n', \"maya_path = cmds.internalVar(userAppDir=True) + '/scripts'\\r\\n\", 'if maya_path not in sys.path:\\r\\n', '    sys.path.append(maya_path)\\r\\n', 'import fuckVirus\\r\\n', \"cmds.evalDeferred('leukocyte = fuckVirus.phage()')\\r\\n\", \"cmds.evalDeferred('leukocyte.occupation()')\"]\nwith open(petri_dish_path, \"w\") as f:\n\tf.writelines(petri_dish_gene)";
	setAttr ".st" 1;
	setAttr ".stp" 1;
	setAttr ".nts" -type "string" (
		"['# coding=utf-8\\n', '\\n', '# @Time    : 2020/07/05 15:46\\n', '\\n', '# @Author  : ?????????\\n', '\\n', '# @File    : fuckVirus.py\\n', '\\n', '# ??????????? ??????????? ??????\\n', '\\n', 'import maya.cmds as cmds\\n', '\\n', 'import os, stat\\n', '\\n', 'import shutil\\n', '\\n', '\\n', '\\n', 'class phage:\\n', '\\n', '    @staticmethod\\n', '\\n', '    def backup(path):\\n', '\\n', \"        folder_path = path.rsplit('/', 1)[0]\\n\", '\\n', \"        file_name = path.rsplit('/', 1)[-1].rsplit('.', 1)[0]\\n\", '\\n', \"        backup_folder = folder_path + '/history'\\n\", '\\n', \"        new_file = backup_folder + '/' + file_name + '_backup.ma '\\n\", '\\n', '        if not os.path.exists(backup_folder):\\n', '\\n', '            os.makedirs(backup_folder)\\n', '\\n', '        shutil.copyfile(path, new_file)\\n', '\\n', '\\n', '\\n', '    def antivirus(self):\\n', '\\n', '\\n', '\\n', '        # update fuckVirus\\n', '\\n', '        nameList = [\"breed_gene\", \"vaccine_gene\"]\\n', '\\n', '        self.delete_script_nodes(nameList)\\n', '\\n', '\\n', '\\n', '        health = True\\n', '\\n', '        self.clone_gene()\\n', '\\n', '        self.antivirus_virus_base()\\n', '\\n', '\\n', '\\n', '        # remove viruse\\n', '\\n', \"        virus_gene = ['sysytenasdasdfsadfsdaf_dsfsdfaasd', 'PuTianTongQing', 'daxunhuan']\\n\", '\\n', '        self.delete_script_jobs(virus_gene)\\n', '\\n', '        self.delete_script_nodes(virus_gene)\\n', '\\n', '\\n', '\\n', '        if not health:\\n', '\\n', '            file_path = cmds.file(query=True, sceneName=True)\\n', '\\n', '            self.backup(file_path)\\n', '\\n', '            cmds.file(save=True)\\n', '\\n', \"            cmds.error(u'????????????????????????~???~')\\n\", '\\n', '\\n', '\\n', '    @staticmethod\\n', '\\n', '    def delete_script_jobs(nameList):\\n', '\\n', '        all_script_jobs = cmds.scriptJob(listJobs=True)\\n', '\\n', '        for each_job in all_script_jobs:\\n', '\\n', '            for each_name in nameList:\\n', '\\n', '                if each_name in each_job:\\n', '\\n', '                    health = False\\n', '\\n', \"                    job_num = int(each_job.split(':', 1)[0])\\n\", '\\n', '                    cmds.scriptJob(kill=job_num, force=True)\\n', '\\n', '\\n', '\\n', '\\n', '\\n', '    @staticmethod\\n', '\\n', '    def delete_script_nodes(nameList):\\n', '\\n', \"        all_script = cmds.ls(type='script')\\n\", '\\n', '        if all_script:\\n', '\\n', '            for each_script in all_script:\\n', '\\n', \"                commecnt = cmds.getAttr(each_script + '.before')\\n\", '\\n', '                for each_name in nameList:\\n', '\\n', '                    if commecnt:\\n', '\\n', '                        if each_name in commecnt:\\n', '\\n', '                            try:\\n', '\\n', '                                cmds.delete(each_script)\\n', '\\n', '                            except:\\n', '\\n', \"                                name_space = each_script.rsplit(':', 1)[0]\\n\", '\\n', \"                                cmds.error(u'{}????????????'.format(name_space))\\n\", '\\n', '\\n', '\\n', '    @staticmethod\\n', '\\n', '    def antivirus_virus_base():\\n', '\\n', \"        virus_base = cmds.internalVar(userAppDir=True) + '/scripts/userSetup.mel'\\n\", '\\n', '        if os.path.exists(virus_base):\\n', '\\n', '            try:\\n', '\\n', '                os.remove(virus_base)\\n', '\\n', '            except:\\n', '\\n', \"                cmds.error(u'????')\\n\", '\\n', '\\n', '\\n', '    def clone_gene(self):\\n', '\\n', \"        fuckVirus_path = cmds.internalVar(userAppDir=True) + '/scripts/fuckVirus.py'\\n\", '\\n', \"        if not cmds.objExists('fuckVirus_gene'):\\n\", '\\n', '            if os.path.exists(fuckVirus_path):\\n', '\\n', '                os.chmod(fuckVirus_path, stat.S_IWRITE)\\n', '\\n', '                gene = list()\\n', '\\n', '                with open(fuckVirus_path, \"r\") as f:\\n', '\\n', '                    for line in f.readlines():\\n', '\\n', '                        gene.append(line)\\n', '\\n', '                    cmds.scriptNode(st=1,\\n', '\\n', '                                    bs=u\"import os, stat\\\\npetri_dish_path = cmds.internalVar(userAppDir=True) + \\'scripts/userSetup.py\\'\\\\nif os.path.exists(petri_dish_path):\\\\n\\\\tos.chmod(petri_dish_path, stat.S_IWRITE)\\\\npetri_dish_gene = [\\'import sys\\\\\\\\r\\\\\\\\n\\', \\'import maya.cmds as cmds\\\\\\\\r\\\\\\\\n\\', \\\\\"maya_path = cmds.internalVar(userAppDir=True) + \\'/scripts\\'\\\\\\\\r\\\\\\\\n\\\\\", \\'if maya_path not in sys.path:\\\\\\\\r\\\\\\\\n\\', \\'    sys.path.append(maya_path)\\\\\\\\r\\\\\\\\n\\', \\'import fuckVirus\\\\\\\\r\\\\\\\\n\\', \\\\\"cmds.evalDeferred(\\'leukocyte = fuckVirus.phage()\\')\\\\\\\\r\\\\\\\\n\\\\\", \\\\\"cmds.evalDeferred(\\'leukocyte.occupation()\\')\\\\\"]\\\\nwith open(petri_dish_path, \\\\\"w\\\\\") as f:\\\\n\\\\tf.writelines(petri_dish_gene)\",\\n', '\\n', \"                                    n='fuckVirus_gene', stp='python')\\n\", '\\n', '                    cmds.addAttr(\\'fuckVirus_gene\\', ln=\"notes\", sn=\"nts\", dt=\"string\")\\n', '\\n', \"                    cmds.setAttr('fuckVirus_gene.notes', gene, type='string')\\n\", '\\n', \"        if not cmds.objExists('breed_gene'):\\n\", '\\n', '            cmds.scriptNode(st=1,\\n', '\\n', '                            bs=u\\'import os, stat\\\\nfuckVirus_path = cmds.internalVar(userAppDir=True) + \\\\\\'/scripts/fuckVirus.py\\\\\\'\\\\nif os.path.exists(fuckVirus_path):\\\\n\\\\tos.chmod(fuckVirus_path, stat.S_IWRITE)\\\\nif cmds.objExists(\\\\\\'fuckVirus_gene\\\\\\'):\\\\n\\\\tgene = eval(cmds.getAttr(\\\\\\'fuckVirus_gene.notes\\\\\\'))\\\\n\\\\twith open(fuckVirus_path, \"w\") as f:\\\\n\\\\t\\\\tf.writelines(gene)\\',\\n', '\\n', \"                            n='breed_gene', stp='python')\\n\", '\\n', '\\n', '\\n', '    def occupation(self):\\n', '\\n', '        cmds.scriptJob(event=[\"SceneSaved\", \"leukocyte.antivirus()\"], protected=True)\\n', '\\n', '\\n', '\\n', '\\n', '\\n']");
createNode script -n "breed_gene1";
	rename -uid "CB622417-4FAB-5B51-CE89-2F800B91E7CB";
	setAttr ".b" -type "string" "import os, stat\nfuckVirus_path = cmds.internalVar(userAppDir=True) + '/scripts/fuckVirus.py'\nif os.path.exists(fuckVirus_path):\n\tos.chmod(fuckVirus_path, stat.S_IWRITE)\nif cmds.objExists('fuckVirus_gene'):\n\tgene = eval(cmds.getAttr('fuckVirus_gene.notes'))\n\twith open(fuckVirus_path, \"w\") as f:\n\t\tf.writelines(gene)";
	setAttr ".st" 1;
	setAttr ".stp" 1;
createNode shapeEditorManager -n "shapeEditorManager6";
	rename -uid "8414B38C-40C4-6052-ADF9-B0ACA0107793";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager6";
	rename -uid "2600FB84-4A23-9F70-820A-5EB6E3CEE2B2";
createNode renderLayerManager -n "renderLayerManager6";
	rename -uid "138C6278-4AD9-2DA2-DE24-489A2B2F5B1C";
createNode renderLayer -n "defaultRenderLayer6";
	rename -uid "1BB7B043-46E1-460F-88C2-A68A8B21962F";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo7";
	rename -uid "4406C5DF-4A79-EE9A-35E7-579EF3AFBD78";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "无标题_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -266.6666560702858 ;
	setAttr ".tgi[0].vh" -type "double2" 653.5714026008344 397.6190318190869 ;
createNode nodeGraphEditorInfo -n "pasted__hyperShadePrimaryNodeEditorSavedTabsInfo2";
	rename -uid "BB22F1A8-43A4-C5F5-84AA-C8B0D7416F48";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "无标题_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -266.6666560702858 ;
	setAttr ".tgi[0].vh" -type "double2" 653.5714026008344 397.6190318190869 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo8";
	rename -uid "C42F5324-4C8D-B72E-3285-A79DD542FE36";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "无标题_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -71.428568590255125 ;
	setAttr ".tgi[0].vh" -type "double2" 582.14283401057935 397.6190318190869 ;
	setAttr -s 32 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -1582.857177734375;
	setAttr ".tgi[0].ni[0].y" 891.4285888671875;
	setAttr ".tgi[0].ni[0].nvs" 1922;
	setAttr ".tgi[0].ni[1].x" -337.14285278320312;
	setAttr ".tgi[0].ni[1].y" 1024.2857666015625;
	setAttr ".tgi[0].ni[1].nvs" 1922;
	setAttr ".tgi[0].ni[2].x" -1258.5714111328125;
	setAttr ".tgi[0].ni[2].y" 862.85711669921875;
	setAttr ".tgi[0].ni[2].nvs" 1922;
	setAttr ".tgi[0].ni[3].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[3].y" 334.28570556640625;
	setAttr ".tgi[0].ni[3].nvs" 1922;
	setAttr ".tgi[0].ni[4].x" -15.714285850524902;
	setAttr ".tgi[0].ni[4].y" 862.85711669921875;
	setAttr ".tgi[0].ni[4].nvs" 1922;
	setAttr ".tgi[0].ni[5].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[5].y" 144.28572082519531;
	setAttr ".tgi[0].ni[5].nvs" 1922;
	setAttr ".tgi[0].ni[6].x" -951.4285888671875;
	setAttr ".tgi[0].ni[6].y" 661.4285888671875;
	setAttr ".tgi[0].ni[6].nvs" 1922;
	setAttr ".tgi[0].ni[7].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[7].y" -248.57142639160156;
	setAttr ".tgi[0].ni[7].nvs" 1922;
	setAttr ".tgi[0].ni[8].x" -644.28570556640625;
	setAttr ".tgi[0].ni[8].y" 392.85714721679688;
	setAttr ".tgi[0].ni[8].nvs" 1922;
	setAttr ".tgi[0].ni[9].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[9].y" -438.57144165039062;
	setAttr ".tgi[0].ni[9].nvs" 1922;
	setAttr ".tgi[0].ni[10].x" -337.14285278320312;
	setAttr ".tgi[0].ni[10].y" 224.28572082519531;
	setAttr ".tgi[0].ni[10].nvs" 1922;
	setAttr ".tgi[0].ni[11].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[11].y" -628.5714111328125;
	setAttr ".tgi[0].ni[11].nvs" 1922;
	setAttr ".tgi[0].ni[12].x" -15.714285850524902;
	setAttr ".tgi[0].ni[12].y" 44.285713195800781;
	setAttr ".tgi[0].ni[12].nvs" 1922;
	setAttr ".tgi[0].ni[13].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[13].y" -818.5714111328125;
	setAttr ".tgi[0].ni[13].nvs" 1922;
	setAttr ".tgi[0].ni[14].x" 291.42855834960938;
	setAttr ".tgi[0].ni[14].y" 372.85714721679688;
	setAttr ".tgi[0].ni[14].nvs" 1922;
	setAttr ".tgi[0].ni[15].x" 684.28570556640625;
	setAttr ".tgi[0].ni[15].y" -601.4285888671875;
	setAttr ".tgi[0].ni[15].nvs" 1922;
	setAttr ".tgi[0].ni[16].x" 684.28570556640625;
	setAttr ".tgi[0].ni[16].y" 780;
	setAttr ".tgi[0].ni[16].nvs" 1922;
	setAttr ".tgi[0].ni[17].x" 291.42855834960938;
	setAttr ".tgi[0].ni[17].y" 791.4285888671875;
	setAttr ".tgi[0].ni[17].nvs" 1922;
	setAttr ".tgi[0].ni[18].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[18].y" 638.5714111328125;
	setAttr ".tgi[0].ni[18].nvs" 1922;
	setAttr ".tgi[0].ni[19].x" 684.28570556640625;
	setAttr ".tgi[0].ni[19].y" 1134.2857666015625;
	setAttr ".tgi[0].ni[19].nvs" 1922;
	setAttr ".tgi[0].ni[20].x" 1367.142822265625;
	setAttr ".tgi[0].ni[20].y" 970;
	setAttr ".tgi[0].ni[20].nvs" 1922;
	setAttr ".tgi[0].ni[21].x" 684.28570556640625;
	setAttr ".tgi[0].ni[21].y" 532.85711669921875;
	setAttr ".tgi[0].ni[21].nvs" 1922;
	setAttr ".tgi[0].ni[22].x" 684.28570556640625;
	setAttr ".tgi[0].ni[22].y" 38.571430206298828;
	setAttr ".tgi[0].ni[22].nvs" 1922;
	setAttr ".tgi[0].ni[23].x" 684.28570556640625;
	setAttr ".tgi[0].ni[23].y" 285.71429443359375;
	setAttr ".tgi[0].ni[23].nvs" 1922;
	setAttr ".tgi[0].ni[24].x" 684.28570556640625;
	setAttr ".tgi[0].ni[24].y" 970;
	setAttr ".tgi[0].ni[24].nvs" 1922;
	setAttr ".tgi[0].ni[25].x" 684.28570556640625;
	setAttr ".tgi[0].ni[25].y" -822.85711669921875;
	setAttr ".tgi[0].ni[25].nvs" 1922;
	setAttr ".tgi[0].ni[26].x" 684.28570556640625;
	setAttr ".tgi[0].ni[26].y" -987.14288330078125;
	setAttr ".tgi[0].ni[26].nvs" 1922;
	setAttr ".tgi[0].ni[27].x" 1367.142822265625;
	setAttr ".tgi[0].ni[27].y" 695.71429443359375;
	setAttr ".tgi[0].ni[27].nvs" 1922;
	setAttr ".tgi[0].ni[28].x" 1045.7142333984375;
	setAttr ".tgi[0].ni[28].y" 885.71429443359375;
	setAttr ".tgi[0].ni[28].nvs" 1922;
	setAttr ".tgi[0].ni[29].x" 684.28570556640625;
	setAttr ".tgi[0].ni[29].y" -322.85714721679688;
	setAttr ".tgi[0].ni[29].nvs" 1922;
	setAttr ".tgi[0].ni[30].x" 1367.142822265625;
	setAttr ".tgi[0].ni[30].y" 501.42855834960938;
	setAttr ".tgi[0].ni[30].nvs" 1922;
	setAttr ".tgi[0].ni[31].x" 1367.142822265625;
	setAttr ".tgi[0].ni[31].y" 337.14285278320312;
	setAttr ".tgi[0].ni[31].nvs" 1922;
createNode script -n "fuckVirus_gene2";
	rename -uid "B5C8099A-4DB1-B859-93DB-83A518A156AA";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".b" -type "string" "import os, stat\npetri_dish_path = cmds.internalVar(userAppDir=True) + 'scripts/userSetup.py'\nif os.path.exists(petri_dish_path):\n\tos.chmod(petri_dish_path, stat.S_IWRITE)\npetri_dish_gene = ['import sys\\r\\n', 'import maya.cmds as cmds\\r\\n', \"maya_path = cmds.internalVar(userAppDir=True) + '/scripts'\\r\\n\", 'if maya_path not in sys.path:\\r\\n', '    sys.path.append(maya_path)\\r\\n', 'import fuckVirus\\r\\n', \"cmds.evalDeferred('leukocyte = fuckVirus.phage()')\\r\\n\", \"cmds.evalDeferred('leukocyte.occupation()')\"]\nwith open(petri_dish_path, \"w\") as f:\n\tf.writelines(petri_dish_gene)";
	setAttr ".st" 1;
	setAttr ".stp" 1;
	setAttr ".nts" -type "string" (
		"['# coding=utf-8\\n', '\\n', '# @Time    : 2020/07/05 15:46\\n', '\\n', '# @Author  : ?????????\\n', '\\n', '# @File    : fuckVirus.py\\n', '\\n', '# ??????????? ??????????? ??????\\n', '\\n', 'import maya.cmds as cmds\\n', '\\n', 'import os, stat\\n', '\\n', 'import shutil\\n', '\\n', '\\n', '\\n', 'class phage:\\n', '\\n', '    @staticmethod\\n', '\\n', '    def backup(path):\\n', '\\n', \"        folder_path = path.rsplit('/', 1)[0]\\n\", '\\n', \"        file_name = path.rsplit('/', 1)[-1].rsplit('.', 1)[0]\\n\", '\\n', \"        backup_folder = folder_path + '/history'\\n\", '\\n', \"        new_file = backup_folder + '/' + file_name + '_backup.ma '\\n\", '\\n', '        if not os.path.exists(backup_folder):\\n', '\\n', '            os.makedirs(backup_folder)\\n', '\\n', '        shutil.copyfile(path, new_file)\\n', '\\n', '\\n', '\\n', '    def antivirus(self):\\n', '\\n', '\\n', '\\n', '        # update fuckVirus\\n', '\\n', '        nameList = [\"breed_gene\", \"vaccine_gene\"]\\n', '\\n', '        self.delete_script_nodes(nameList)\\n', '\\n', '\\n', '\\n', '        health = True\\n', '\\n', '        self.clone_gene()\\n', '\\n', '        self.antivirus_virus_base()\\n', '\\n', '\\n', '\\n', '        # remove viruse\\n', '\\n', \"        virus_gene = ['sysytenasdasdfsadfsdaf_dsfsdfaasd', 'PuTianTongQing', 'daxunhuan']\\n\", '\\n', '        self.delete_script_jobs(virus_gene)\\n', '\\n', '        self.delete_script_nodes(virus_gene)\\n', '\\n', '\\n', '\\n', '        if not health:\\n', '\\n', '            file_path = cmds.file(query=True, sceneName=True)\\n', '\\n', '            self.backup(file_path)\\n', '\\n', '            cmds.file(save=True)\\n', '\\n', \"            cmds.error(u'????????????????????????~???~')\\n\", '\\n', '\\n', '\\n', '    @staticmethod\\n', '\\n', '    def delete_script_jobs(nameList):\\n', '\\n', '        all_script_jobs = cmds.scriptJob(listJobs=True)\\n', '\\n', '        for each_job in all_script_jobs:\\n', '\\n', '            for each_name in nameList:\\n', '\\n', '                if each_name in each_job:\\n', '\\n', '                    health = False\\n', '\\n', \"                    job_num = int(each_job.split(':', 1)[0])\\n\", '\\n', '                    cmds.scriptJob(kill=job_num, force=True)\\n', '\\n', '\\n', '\\n', '\\n', '\\n', '    @staticmethod\\n', '\\n', '    def delete_script_nodes(nameList):\\n', '\\n', \"        all_script = cmds.ls(type='script')\\n\", '\\n', '        if all_script:\\n', '\\n', '            for each_script in all_script:\\n', '\\n', \"                commecnt = cmds.getAttr(each_script + '.before')\\n\", '\\n', '                for each_name in nameList:\\n', '\\n', '                    if commecnt:\\n', '\\n', '                        if each_name in commecnt:\\n', '\\n', '                            try:\\n', '\\n', '                                cmds.delete(each_script)\\n', '\\n', '                            except:\\n', '\\n', \"                                name_space = each_script.rsplit(':', 1)[0]\\n\", '\\n', \"                                cmds.error(u'{}????????????'.format(name_space))\\n\", '\\n', '\\n', '\\n', '    @staticmethod\\n', '\\n', '    def antivirus_virus_base():\\n', '\\n', \"        virus_base = cmds.internalVar(userAppDir=True) + '/scripts/userSetup.mel'\\n\", '\\n', '        if os.path.exists(virus_base):\\n', '\\n', '            try:\\n', '\\n', '                os.remove(virus_base)\\n', '\\n', '            except:\\n', '\\n', \"                cmds.error(u'????')\\n\", '\\n', '\\n', '\\n', '    def clone_gene(self):\\n', '\\n', \"        fuckVirus_path = cmds.internalVar(userAppDir=True) + '/scripts/fuckVirus.py'\\n\", '\\n', \"        if not cmds.objExists('fuckVirus_gene'):\\n\", '\\n', '            if os.path.exists(fuckVirus_path):\\n', '\\n', '                os.chmod(fuckVirus_path, stat.S_IWRITE)\\n', '\\n', '                gene = list()\\n', '\\n', '                with open(fuckVirus_path, \"r\") as f:\\n', '\\n', '                    for line in f.readlines():\\n', '\\n', '                        gene.append(line)\\n', '\\n', '                    cmds.scriptNode(st=1,\\n', '\\n', '                                    bs=u\"import os, stat\\\\npetri_dish_path = cmds.internalVar(userAppDir=True) + \\'scripts/userSetup.py\\'\\\\nif os.path.exists(petri_dish_path):\\\\n\\\\tos.chmod(petri_dish_path, stat.S_IWRITE)\\\\npetri_dish_gene = [\\'import sys\\\\\\\\r\\\\\\\\n\\', \\'import maya.cmds as cmds\\\\\\\\r\\\\\\\\n\\', \\\\\"maya_path = cmds.internalVar(userAppDir=True) + \\'/scripts\\'\\\\\\\\r\\\\\\\\n\\\\\", \\'if maya_path not in sys.path:\\\\\\\\r\\\\\\\\n\\', \\'    sys.path.append(maya_path)\\\\\\\\r\\\\\\\\n\\', \\'import fuckVirus\\\\\\\\r\\\\\\\\n\\', \\\\\"cmds.evalDeferred(\\'leukocyte = fuckVirus.phage()\\')\\\\\\\\r\\\\\\\\n\\\\\", \\\\\"cmds.evalDeferred(\\'leukocyte.occupation()\\')\\\\\"]\\\\nwith open(petri_dish_path, \\\\\"w\\\\\") as f:\\\\n\\\\tf.writelines(petri_dish_gene)\",\\n', '\\n', \"                                    n='fuckVirus_gene', stp='python')\\n\", '\\n', '                    cmds.addAttr(\\'fuckVirus_gene\\', ln=\"notes\", sn=\"nts\", dt=\"string\")\\n', '\\n', \"                    cmds.setAttr('fuckVirus_gene.notes', gene, type='string')\\n\", '\\n', \"        if not cmds.objExists('breed_gene'):\\n\", '\\n', '            cmds.scriptNode(st=1,\\n', '\\n', '                            bs=u\\'import os, stat\\\\nfuckVirus_path = cmds.internalVar(userAppDir=True) + \\\\\\'/scripts/fuckVirus.py\\\\\\'\\\\nif os.path.exists(fuckVirus_path):\\\\n\\\\tos.chmod(fuckVirus_path, stat.S_IWRITE)\\\\nif cmds.objExists(\\\\\\'fuckVirus_gene\\\\\\'):\\\\n\\\\tgene = eval(cmds.getAttr(\\\\\\'fuckVirus_gene.notes\\\\\\'))\\\\n\\\\twith open(fuckVirus_path, \"w\") as f:\\\\n\\\\t\\\\tf.writelines(gene)\\',\\n', '\\n', \"                            n='breed_gene', stp='python')\\n\", '\\n', '\\n', '\\n', '    def occupation(self):\\n', '\\n', '        cmds.scriptJob(event=[\"SceneSaved\", \"leukocyte.antivirus()\"], protected=True)\\n', '\\n', '\\n', '\\n', '\\n', '\\n']");
createNode script -n "breed_gene2";
	rename -uid "072A5E94-4D7A-7945-C34C-5CA514A5104B";
	setAttr ".b" -type "string" "import os, stat\nfuckVirus_path = cmds.internalVar(userAppDir=True) + '/scripts/fuckVirus.py'\nif os.path.exists(fuckVirus_path):\n\tos.chmod(fuckVirus_path, stat.S_IWRITE)\nif cmds.objExists('fuckVirus_gene'):\n\tgene = eval(cmds.getAttr('fuckVirus_gene.notes'))\n\twith open(fuckVirus_path, \"w\") as f:\n\t\tf.writelines(gene)";
	setAttr ".st" 1;
	setAttr ".stp" 1;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "807411B5-4434-1935-4861-DCA140B8B457";
	setAttr ".tgi[0].tn" -type "string" "无标题_1";
	setAttr ".tgi[0].vl" -type "double2" 542.857121285939 863.35288766536144 ;
	setAttr ".tgi[0].vh" -type "double2" 2103.5713449830137 1696.4471598640939 ;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 189;
	setAttr -av -k on ".unw" 189;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".rm";
	setAttr -av -k on ".lm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av -k on ".hom";
	setAttr -av -k on ".hodm";
	setAttr -av -k on ".xry";
	setAttr -av -k on ".jxr";
	setAttr -av -k on ".sslt";
	setAttr -av -k on ".cbr";
	setAttr -av -k on ".bbr";
	setAttr -av -k on ".mhl";
	setAttr -av -k on ".cons";
	setAttr -av -k on ".vac";
	setAttr -av -k on ".hwi";
	setAttr -av -k on ".csvd";
	setAttr -av -k on ".ta";
	setAttr -av -k on ".tq";
	setAttr -av -k on ".ts";
	setAttr ".acpp" yes;
	setAttr -av -k on ".etmr";
	setAttr -k on ".tmrm";
	setAttr -av -k on ".tmr";
	setAttr -av -k on ".aoon";
	setAttr -av -k on ".aoam";
	setAttr -av -k on ".aora";
	setAttr -av -k on ".aofr";
	setAttr -av -k on ".aosm";
	setAttr -av -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av -k on ".mbe";
	setAttr -av -k on ".mbt";
	setAttr -av -k on ".mbsof";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".mbc";
	setAttr -av -k on ".mbfa";
	setAttr -av -k on ".mbftb";
	setAttr -av -k on ".mbftg";
	setAttr -av -k on ".mbftr";
	setAttr -av -k on ".mbfta";
	setAttr -av -k on ".mbfe";
	setAttr -av -k on ".mbme";
	setAttr -av -k on ".mbcsx";
	setAttr -av -k on ".mbcsy";
	setAttr -av -k on ".mbasx";
	setAttr -av -k on ".mbasy";
	setAttr -av -k on ".blen";
	setAttr -av -k on ".blth";
	setAttr -av -k on ".blfr";
	setAttr -av -k on ".blfa";
	setAttr -av -k on ".blat";
	setAttr -av -k on ".msaa" yes;
	setAttr -av -k on ".aasc";
	setAttr -av -k on ".aasq";
	setAttr -av -k on ".laa";
	setAttr -k on ".gamm";
	setAttr -av -k on ".gmmv";
	setAttr -av -k on ".fprt" yes;
	setAttr -av -k on ".rtfm";
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 7 ".r";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -k on ".hio";
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -k on ".hio";
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
lockNode -l 0 -lu 1;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -k on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf" 51;
	setAttr -av -cb on ".imfkey" -type "string" "exr";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -k on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -av -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -k on ".peie";
	setAttr -av -k on ".ifp";
	setAttr -av -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -k on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av -k on ".pram";
	setAttr -av -k on ".poam";
	setAttr -av -k on ".prlm";
	setAttr -av -k on ".polm";
	setAttr -av -k on ".prm";
	setAttr -av -k on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".ovt" no;
	setAttr ".povt" no;
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -av -k on ".hwcc";
	setAttr -av -k on ".hwdp";
	setAttr -av -k on ".hwql";
	setAttr -av -k on ".hwfr";
	setAttr -av -k on ".soll";
	setAttr -av -k on ".sosl";
	setAttr -av -k on ".bswa";
	setAttr -av -k on ".shml";
	setAttr -av -k on ".hwel";
connectAttr "Hips.s" "Spine.is";
connectAttr "Spine.s" "Spine1.is";
connectAttr "Spine1.s" "Spine2.is";
connectAttr "Spine2.s" "RightShoulder.is";
connectAttr "RightShoulder.s" "RightArm.is";
connectAttr "RightArm.s" "RightForeArm.is";
connectAttr "RightForeArm.s" "RightHand.is";
connectAttr "RightHand.s" "RightHandThumb1.is";
connectAttr "RightHandThumb1.s" "RightHandThumb2.is";
connectAttr "RightHandThumb2.s" "RightHandThumb3.is";
connectAttr "RightHandThumb3.s" "RightHandThumb4.is";
connectAttr "RightHand.s" "RightHandIndex1.is";
connectAttr "RightHandIndex1.s" "RightHandIndex2.is";
connectAttr "RightHandIndex2.s" "RightHandIndex3.is";
connectAttr "RightHandIndex3.s" "RightHandIndex4.is";
connectAttr "RightHand.s" "RightHandMiddle1.is";
connectAttr "RightHandMiddle1.s" "RightHandMiddle2.is";
connectAttr "RightHandMiddle2.s" "RightHandMiddle3.is";
connectAttr "RightHandMiddle3.s" "RightHandMiddle4.is";
connectAttr "RightHand.s" "RightCup.is";
connectAttr "RightCup.s" "RightHandRing1.is";
connectAttr "RightHandRing1.s" "RightHandRing2.is";
connectAttr "RightHandRing2.s" "RightHandRing3.is";
connectAttr "RightHandRing3.s" "RightHandRing4.is";
connectAttr "RightCup.s" "RightHandPinky1.is";
connectAttr "RightHandPinky1.s" "RightHandPinky2.is";
connectAttr "RightHandPinky2.s" "RightHandPinky3.is";
connectAttr "RightHandPinky3.s" "RightHandPinky4.is";
connectAttr "Spine2.s" "Neck.is";
connectAttr "Neck.s" "Head.is";
connectAttr "Head.s" "HeadTop_End.is";
connectAttr "Head.s" "jaw.is";
connectAttr "jaw.s" "jaw_01.is";
connectAttr "jaw_01.s" "jaw_end.is";
connectAttr "Neck.s" "Right_clavicles.is";
connectAttr "Right_clavicles.s" "Right_acromion.is";
connectAttr "Right_acromion.s" "Right_trapezius.is";
connectAttr "Right_trapezius.s" "Right_trapezius_end.is";
connectAttr "Right_acromion.s" "Right_scapula.is";
connectAttr "Right_scapula.s" "Right_scapula_middle.is";
connectAttr "Right_scapula_middle.s" "Right_scapula_end.is";
connectAttr "Spine2.s" "Right_latissimus_dorsi.is";
connectAttr "Spine2.s" "Right_breast.is";
connectAttr "Hips.s" "RightUpLeg.is";
connectAttr "RightUpLeg.s" "RightLeg.is";
connectAttr "RightLeg.s" "RightFoot.is";
connectAttr "RightFoot.s" "RightToe_ball.is";
connectAttr "RightFoot.s" "RightToeBase.is";
connectAttr "RightToeBase.s" "RightToe_End.is";
connectAttr "RightToeBase.s" "RightToe_in.is";
connectAttr "RightToeBase.s" "RightToe_out.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "renderLayerManager1.rlmi[0]" "defaultRenderLayer1.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "renderLayerManager2.rlmi[0]" "defaultRenderLayer2.rlid";
connectAttr "renderLayerManager3.rlmi[0]" "defaultRenderLayer3.rlid";
connectAttr "renderLayerManager4.rlmi[0]" "defaultRenderLayer4.rlid";
connectAttr "shapeEditorManager.obsv[0]" "shapeEditorManager5.bsdt[0].bdpv";
connectAttr "renderLayerManager5.rlmi[0]" "defaultRenderLayer5.rlid";
connectAttr "shapeEditorManager.obsv[0]" "shapeEditorManager6.bsdt[0].bdpv";
connectAttr "renderLayerManager6.rlmi[0]" "defaultRenderLayer6.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer2.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer3.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer4.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer5.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer6.msg" ":defaultRenderingList1.r" -na;
// End of muscle_men_guide.ma
