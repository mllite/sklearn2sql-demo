-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", "ADS"."Feature_0" AS "Feature_0", "ADS"."Feature_1" AS "Feature_1", "ADS"."Feature_2" AS "Feature_2", "ADS"."Feature_3" AS "Feature_3", "ADS"."Feature_4" AS "Feature_4", "ADS"."Feature_5" AS "Feature_5", "ADS"."Feature_6" AS "Feature_6", "ADS"."Feature_7" AS "Feature_7", "ADS"."Feature_8" AS "Feature_8", "ADS"."Feature_9" AS "Feature_9", "ADS"."Feature_10" AS "Feature_10", "ADS"."Feature_11" AS "Feature_11", "ADS"."Feature_12" AS "Feature_12", "ADS"."Feature_13" AS "Feature_13", "ADS"."Feature_14" AS "Feature_14", "ADS"."Feature_15" AS "Feature_15", "ADS"."Feature_16" AS "Feature_16", "ADS"."Feature_17" AS "Feature_17", "ADS"."Feature_18" AS "Feature_18", "ADS"."Feature_19" AS "Feature_19", "ADS"."Feature_20" AS "Feature_20", "ADS"."Feature_21" AS "Feature_21", "ADS"."Feature_22" AS "Feature_22", "ADS"."Feature_23" AS "Feature_23", "ADS"."Feature_24" AS "Feature_24", "ADS"."Feature_25" AS "Feature_25", "ADS"."Feature_26" AS "Feature_26", "ADS"."Feature_27" AS "Feature_27", "ADS"."Feature_28" AS "Feature_28", "ADS"."Feature_29" AS "Feature_29" 
FROM "INPUT_DATA" "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", 0.0268930774033 * "IL"."Feature_0" + 0.356560133677 * "IL"."Feature_1" + -0.393189738373 * "IL"."Feature_2" + -0.315247453304 * "IL"."Feature_3" + -0.0467448510964 * "IL"."Feature_4" + -0.123533381188 * "IL"."Feature_5" + -0.158530625898 * "IL"."Feature_6" + 0.109826816107 * "IL"."Feature_7" + -0.253039846863 * "IL"."Feature_8" + 0.366981722621 * "IL"."Feature_9" + -0.156512882658 * "IL"."Feature_10" + 0.0484435921842 * "IL"."Feature_11" + 0.0569007094244 * "IL"."Feature_12" + -0.211483679286 * "IL"."Feature_13" + 0.146651919205 * "IL"."Feature_14" + 0.167137413103 * "IL"."Feature_15" + 0.115403791273 * "IL"."Feature_16" + 0.0471741061489 * "IL"."Feature_17" + 0.231417985073 * "IL"."Feature_18" + -0.280110900382 * "IL"."Feature_19" + 0.14500191761 * "IL"."Feature_20" + 0.170853442283 * "IL"."Feature_21" + -0.134795190973 * "IL"."Feature_22" + 0.333200760355 * "IL"."Feature_23" + -0.26129195323 * "IL"."Feature_24" + -0.161451867239 * "IL"."Feature_25" + 0.0171696512584 * "IL"."Feature_26" + -0.154923903628 * "IL"."Feature_27" + -0.261751378215 * "IL"."Feature_28" + 0.00255351829669 * "IL"."Feature_29" + 0.277250434554 AS "NEUR_1_1", 0.15914983299 * "IL"."Feature_0" + -0.104528108995 * "IL"."Feature_1" + 0.252476304248 * "IL"."Feature_2" + 0.0993624978187 * "IL"."Feature_3" + 0.0425132773535 * "IL"."Feature_4" + -0.0618988286266 * "IL"."Feature_5" + -0.120122384648 * "IL"."Feature_6" + -0.20787495361 * "IL"."Feature_7" + -0.11621077063 * "IL"."Feature_8" + 0.0714349779074 * "IL"."Feature_9" + -0.0799522149411 * "IL"."Feature_10" + 0.329289018596 * "IL"."Feature_11" + -0.393187839817 * "IL"."Feature_12" + 0.0487779379842 * "IL"."Feature_13" + -0.172831886968 * "IL"."Feature_14" + -0.0108023792019 * "IL"."Feature_15" + -0.178691812928 * "IL"."Feature_16" + 0.109885648518 * "IL"."Feature_17" + 0.150141183992 * "IL"."Feature_18" + 0.0799714955538 * "IL"."Feature_19" + -0.0487880127948 * "IL"."Feature_20" + -0.272864817722 * "IL"."Feature_21" + 0.328342368205 * "IL"."Feature_22" + 0.0787319357486 * "IL"."Feature_23" + 0.341268692434 * "IL"."Feature_24" + 0.144170174489 * "IL"."Feature_25" + 0.303363321595 * "IL"."Feature_26" + -0.104474496746 * "IL"."Feature_27" + 0.347941217388 * "IL"."Feature_28" + -0.388857998402 * "IL"."Feature_29" + -0.315843093819 AS "NEUR_1_2", 0.0787650702938 * "IL"."Feature_0" + 0.226213932244 * "IL"."Feature_1" + 0.215568760246 * "IL"."Feature_2" + -0.277224915213 * "IL"."Feature_3" + -0.375359576778 * "IL"."Feature_4" + 0.152539927364 * "IL"."Feature_5" + 0.0536277701245 * "IL"."Feature_6" + -0.0256218336304 * "IL"."Feature_7" + 0.249196386694 * "IL"."Feature_8" + 0.185091546094 * "IL"."Feature_9" + -0.339593373752 * "IL"."Feature_10" + -0.139897515373 * "IL"."Feature_11" + 0.255440785016 * "IL"."Feature_12" + 0.0704758804511 * "IL"."Feature_13" + 0.243543932561 * "IL"."Feature_14" + 0.355542400623 * "IL"."Feature_15" + 0.0905773254771 * "IL"."Feature_16" + 0.117051634918 * "IL"."Feature_17" + -0.311168139723 * "IL"."Feature_18" + -0.292593885007 * "IL"."Feature_19" + 0.171626926687 * "IL"."Feature_20" + 0.015969964852 * "IL"."Feature_21" + 0.157837769899 * "IL"."Feature_22" + 0.0271072110701 * "IL"."Feature_23" + 0.185316392246 * "IL"."Feature_24" + -0.0938593566392 * "IL"."Feature_25" + 0.38256163969 * "IL"."Feature_26" + 0.0675990415959 * "IL"."Feature_27" + 0.144622751957 * "IL"."Feature_28" + -0.226845606792 * "IL"."Feature_29" + 0.0138115138575 AS "NEUR_1_3", 0.0424316921652 * "IL"."Feature_0" + 0.0332767878521 * "IL"."Feature_1" + 0.300754174308 * "IL"."Feature_2" + 0.357445974369 * "IL"."Feature_3" + 0.103779146344 * "IL"."Feature_4" + -0.339239284114 * "IL"."Feature_5" + -0.0431168779466 * "IL"."Feature_6" + -0.197492171979 * "IL"."Feature_7" + -0.309573846032 * "IL"."Feature_8" + -0.355552862059 * "IL"."Feature_9" + 0.154902819117 * "IL"."Feature_10" + 0.141523329761 * "IL"."Feature_11" + -0.392193995975 * "IL"."Feature_12" + 0.0556360849354 * "IL"."Feature_13" + -0.0774112205817 * "IL"."Feature_14" + 0.123605859113 * "IL"."Feature_15" + -0.0507558292578 * "IL"."Feature_16" + -0.0455343636321 * "IL"."Feature_17" + 0.339389542791 * "IL"."Feature_18" + 0.284943866982 * "IL"."Feature_19" + 0.298690613876 * "IL"."Feature_20" + -0.343360873619 * "IL"."Feature_21" + -0.364551131866 * "IL"."Feature_22" + 0.0777300697082 * "IL"."Feature_23" + 0.0032788287411 * "IL"."Feature_24" + -0.243122335358 * "IL"."Feature_25" + -0.214034899432 * "IL"."Feature_26" + 0.273487909059 * "IL"."Feature_27" + -0.214897053776 * "IL"."Feature_28" + -0.0486698565275 * "IL"."Feature_29" + -0.282007372695 AS "NEUR_1_4", -0.072186761241 * "IL"."Feature_0" + 0.0425091217557 * "IL"."Feature_1" + 0.368856633218 * "IL"."Feature_2" + 0.00590080590156 * "IL"."Feature_3" + 0.0775494027514 * "IL"."Feature_4" + 0.121017521071 * "IL"."Feature_5" + 0.376679129487 * "IL"."Feature_6" + -0.282461160448 * "IL"."Feature_7" + 0.257019474618 * "IL"."Feature_8" + -0.184166318791 * "IL"."Feature_9" + 0.0414808726641 * "IL"."Feature_10" + -0.304152344666 * "IL"."Feature_11" + 0.129874253783 * "IL"."Feature_12" + -0.23142648988 * "IL"."Feature_13" + 0.291384372018 * "IL"."Feature_14" + -0.0720219180309 * "IL"."Feature_15" + -0.301201380625 * "IL"."Feature_16" + 0.303631256741 * "IL"."Feature_17" + 0.158695447126 * "IL"."Feature_18" + 0.23271723205 * "IL"."Feature_19" + 0.366385407686 * "IL"."Feature_20" + -0.249996376763 * "IL"."Feature_21" + -0.277988132559 * "IL"."Feature_22" + 0.171405082307 * "IL"."Feature_23" + -0.228181281681 * "IL"."Feature_24" + -0.3892906392 * "IL"."Feature_25" + 0.118055990611 * "IL"."Feature_26" + 0.0909888206403 * "IL"."Feature_27" + 0.343951197213 * "IL"."Feature_28" + -0.111571099644 * "IL"."Feature_29" + 0.160786398672 AS "NEUR_1_5", 0.112222405049 * "IL"."Feature_0" + 0.331510874174 * "IL"."Feature_1" + 0.23204854404 * "IL"."Feature_2" + -0.0652993433098 * "IL"."Feature_3" + 0.0897390532125 * "IL"."Feature_4" + 0.131483270159 * "IL"."Feature_5" + -0.30973653065 * "IL"."Feature_6" + -0.303177266229 * "IL"."Feature_7" + -0.314419544973 * "IL"."Feature_8" + -0.295445757738 * "IL"."Feature_9" + -0.181449392952 * "IL"."Feature_10" + 0.167147680035 * "IL"."Feature_11" + -0.177835248064 * "IL"."Feature_12" + 0.352913125824 * "IL"."Feature_13" + 0.0621629014839 * "IL"."Feature_14" + 0.0815741910116 * "IL"."Feature_15" + -0.15573127039 * "IL"."Feature_16" + -0.101767062222 * "IL"."Feature_17" + 0.389275048077 * "IL"."Feature_18" + 0.0527840520513 * "IL"."Feature_19" + 0.276561542515 * "IL"."Feature_20" + -0.375571001542 * "IL"."Feature_21" + 0.09326237008 * "IL"."Feature_22" + -0.145064965281 * "IL"."Feature_23" + -0.190086884085 * "IL"."Feature_24" + -0.337148434223 * "IL"."Feature_25" + -0.183067294629 * "IL"."Feature_26" + 0.289816318072 * "IL"."Feature_27" + 0.178511118107 * "IL"."Feature_28" + -0.0277125226926 * "IL"."Feature_29" + -0.0826033721008 AS "NEUR_1_6", -0.0476393042122 * "IL"."Feature_0" + -0.334164396237 * "IL"."Feature_1" + -0.0293155153516 * "IL"."Feature_2" + -0.182102036049 * "IL"."Feature_3" + 0.345816981825 * "IL"."Feature_4" + -0.22455998857 * "IL"."Feature_5" + -0.225741658089 * "IL"."Feature_6" + 0.120340299671 * "IL"."Feature_7" + 0.371611984284 * "IL"."Feature_8" + -0.157404523633 * "IL"."Feature_9" + 0.0176546060762 * "IL"."Feature_10" + -0.162666193083 * "IL"."Feature_11" + 0.181906081747 * "IL"."Feature_12" + -0.0403132394276 * "IL"."Feature_13" + 0.296966424237 * "IL"."Feature_14" + -0.375041345877 * "IL"."Feature_15" + 0.0534492725107 * "IL"."Feature_16" + -0.0489635832174 * "IL"."Feature_17" + -0.272431119128 * "IL"."Feature_18" + -0.0710744677371 * "IL"."Feature_19" + -0.380941813162 * "IL"."Feature_20" + 0.22776211605 * "IL"."Feature_21" + 0.0590445987744 * "IL"."Feature_22" + -0.0780034497203 * "IL"."Feature_23" + -0.344416000526 * "IL"."Feature_24" + 0.138307950096 * "IL"."Feature_25" + -0.373891340901 * "IL"."Feature_26" + -0.175070349376 * "IL"."Feature_27" + -0.190411751655 * "IL"."Feature_28" + -0.171873825018 * "IL"."Feature_29" + 0.0519915866389 AS "NEUR_1_7", 0.302393802195 * "IL"."Feature_0" + -0.336821318592 * "IL"."Feature_1" + 0.213997674942 * "IL"."Feature_2" + 0.209311975752 * "IL"."Feature_3" + 0.135577479225 * "IL"."Feature_4" + -0.303618062917 * "IL"."Feature_5" + -0.276846000199 * "IL"."Feature_6" + -0.2957912245 * "IL"."Feature_7" + -0.0337844678559 * "IL"."Feature_8" + -0.311802756941 * "IL"."Feature_9" + -0.331581160284 * "IL"."Feature_10" + -0.260428805459 * "IL"."Feature_11" + 0.358502056555 * "IL"."Feature_12" + 0.266924252802 * "IL"."Feature_13" + 0.14422446403 * "IL"."Feature_14" + -0.166370130846 * "IL"."Feature_15" + 0.0636271980258 * "IL"."Feature_16" + 0.30281919495 * "IL"."Feature_17" + 0.284356725482 * "IL"."Feature_18" + -0.349858826328 * "IL"."Feature_19" + -0.120233861641 * "IL"."Feature_20" + -0.22810738989 * "IL"."Feature_21" + -0.217245956104 * "IL"."Feature_22" + -0.239219665543 * "IL"."Feature_23" + -0.061030267391 * "IL"."Feature_24" + -0.0455304587251 * "IL"."Feature_25" + 0.197637409704 * "IL"."Feature_26" + 0.228580949318 * "IL"."Feature_27" + -0.236701719811 * "IL"."Feature_28" + 0.0601400007928 * "IL"."Feature_29" + -0.260566465097 AS "NEUR_1_8" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3", CASE WHEN ("HL_BA_1"."NEUR_1_4" >= 0.0) THEN "HL_BA_1"."NEUR_1_4" ELSE 0.0 END AS "NEUR_1_4", CASE WHEN ("HL_BA_1"."NEUR_1_5" >= 0.0) THEN "HL_BA_1"."NEUR_1_5" ELSE 0.0 END AS "NEUR_1_5", CASE WHEN ("HL_BA_1"."NEUR_1_6" >= 0.0) THEN "HL_BA_1"."NEUR_1_6" ELSE 0.0 END AS "NEUR_1_6", CASE WHEN ("HL_BA_1"."NEUR_1_7" >= 0.0) THEN "HL_BA_1"."NEUR_1_7" ELSE 0.0 END AS "NEUR_1_7", CASE WHEN ("HL_BA_1"."NEUR_1_8" >= 0.0) THEN "HL_BA_1"."NEUR_1_8" ELSE 0.0 END AS "NEUR_1_8" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", -0.381934093839 * "HL_1_relu"."NEUR_1_1" + -0.277693849621 * "HL_1_relu"."NEUR_1_2" + -0.172430054747 * "HL_1_relu"."NEUR_1_3" + -0.162650685126 * "HL_1_relu"."NEUR_1_4" + -0.433079596532 * "HL_1_relu"."NEUR_1_5" + 0.241315344751 * "HL_1_relu"."NEUR_1_6" + -0.245730229713 * "HL_1_relu"."NEUR_1_7" + -0.477727001399 * "HL_1_relu"."NEUR_1_8" + 0.328409937253 AS "NEUR_2_1", -0.0124894008598 * "HL_1_relu"."NEUR_1_1" + -0.430413044628 * "HL_1_relu"."NEUR_1_2" + 0.497795300605 * "HL_1_relu"."NEUR_1_3" + -0.378352806003 * "HL_1_relu"."NEUR_1_4" + 0.389590340296 * "HL_1_relu"."NEUR_1_5" + -0.527226484656 * "HL_1_relu"."NEUR_1_6" + -0.396471520364 * "HL_1_relu"."NEUR_1_7" + 0.210381320839 * "HL_1_relu"."NEUR_1_8" + -0.463420993585 AS "NEUR_2_2", -0.146366190955 * "HL_1_relu"."NEUR_1_1" + -0.517828186164 * "HL_1_relu"."NEUR_1_2" + -0.287591802663 * "HL_1_relu"."NEUR_1_3" + 0.539782962353 * "HL_1_relu"."NEUR_1_4" + 0.529947113959 * "HL_1_relu"."NEUR_1_5" + 0.290067487906 * "HL_1_relu"."NEUR_1_6" + -0.479332579685 * "HL_1_relu"."NEUR_1_7" + 0.312674827665 * "HL_1_relu"."NEUR_1_8" + 0.0326190570806 AS "NEUR_2_3", 0.470724585078 * "HL_1_relu"."NEUR_1_1" + 0.458681665678 * "HL_1_relu"."NEUR_1_2" + 0.484445755114 * "HL_1_relu"."NEUR_1_3" + -0.0356123582497 * "HL_1_relu"."NEUR_1_4" + 0.492982256189 * "HL_1_relu"."NEUR_1_5" + -0.379651496686 * "HL_1_relu"."NEUR_1_6" + -0.211898976868 * "HL_1_relu"."NEUR_1_7" + 0.296544176313 * "HL_1_relu"."NEUR_1_8" + -0.223569212809 AS "NEUR_2_4", 0.302421482124 * "HL_1_relu"."NEUR_1_1" + 0.198003729873 * "HL_1_relu"."NEUR_1_2" + 0.475794134782 * "HL_1_relu"."NEUR_1_3" + 0.00908341827114 * "HL_1_relu"."NEUR_1_4" + 0.457221624278 * "HL_1_relu"."NEUR_1_5" + -0.45302977298 * "HL_1_relu"."NEUR_1_6" + -0.254621495296 * "HL_1_relu"."NEUR_1_7" + -0.256180165874 * "HL_1_relu"."NEUR_1_8" + 0.0969065759168 AS "NEUR_2_5", 0.260654432673 * "HL_1_relu"."NEUR_1_1" + 0.300526631515 * "HL_1_relu"."NEUR_1_2" + 0.321131111286 * "HL_1_relu"."NEUR_1_3" + 0.140867527636 * "HL_1_relu"."NEUR_1_4" + 0.288368397794 * "HL_1_relu"."NEUR_1_5" + -0.442052391961 * "HL_1_relu"."NEUR_1_6" + -0.0461352758661 * "HL_1_relu"."NEUR_1_7" + -0.145570335801 * "HL_1_relu"."NEUR_1_8" + 0.49134495705 AS "NEUR_2_6", 0.434782522638 * "HL_1_relu"."NEUR_1_1" + -0.233387618423 * "HL_1_relu"."NEUR_1_2" + 0.138633363573 * "HL_1_relu"."NEUR_1_3" + -0.139673347109 * "HL_1_relu"."NEUR_1_4" + -0.177836428831 * "HL_1_relu"."NEUR_1_5" + 0.183438245964 * "HL_1_relu"."NEUR_1_6" + 0.195563657615 * "HL_1_relu"."NEUR_1_7" + 0.092695773766 * "HL_1_relu"."NEUR_1_8" + 0.15946421318 AS "NEUR_2_7", -0.44878235295 * "HL_1_relu"."NEUR_1_1" + 0.0914244921665 * "HL_1_relu"."NEUR_1_2" + 0.402749909064 * "HL_1_relu"."NEUR_1_3" + -0.390578245206 * "HL_1_relu"."NEUR_1_4" + -0.451309897844 * "HL_1_relu"."NEUR_1_5" + -0.272773523553 * "HL_1_relu"."NEUR_1_6" + 0.208898735772 * "HL_1_relu"."NEUR_1_7" + -0.24302991547 * "HL_1_relu"."NEUR_1_8" + -0.508984950002 AS "NEUR_2_8", 0.050548859613 * "HL_1_relu"."NEUR_1_1" + -0.487585271287 * "HL_1_relu"."NEUR_1_2" + -0.221173772055 * "HL_1_relu"."NEUR_1_3" + 0.342929411892 * "HL_1_relu"."NEUR_1_4" + -0.1114573544 * "HL_1_relu"."NEUR_1_5" + -0.0840018690004 * "HL_1_relu"."NEUR_1_6" + -0.231452025089 * "HL_1_relu"."NEUR_1_7" + -0.148479046946 * "HL_1_relu"."NEUR_1_8" + -0.085971337415 AS "NEUR_2_9", 0.0893578922814 * "HL_1_relu"."NEUR_1_1" + -0.0150367584188 * "HL_1_relu"."NEUR_1_2" + 0.375182314676 * "HL_1_relu"."NEUR_1_3" + -0.333022686749 * "HL_1_relu"."NEUR_1_4" + -0.287014216213 * "HL_1_relu"."NEUR_1_5" + 0.0604698688383 * "HL_1_relu"."NEUR_1_6" + -0.127487655647 * "HL_1_relu"."NEUR_1_7" + -0.325195831012 * "HL_1_relu"."NEUR_1_8" + 0.0109729119398 AS "NEUR_2_10", 0.494293626973 * "HL_1_relu"."NEUR_1_1" + 0.511236682816 * "HL_1_relu"."NEUR_1_2" + 0.12512982032 * "HL_1_relu"."NEUR_1_3" + 0.000491127963923 * "HL_1_relu"."NEUR_1_4" + -0.414415262145 * "HL_1_relu"."NEUR_1_5" + 0.387806112208 * "HL_1_relu"."NEUR_1_6" + -0.342470765858 * "HL_1_relu"."NEUR_1_7" + -0.0513081536306 * "HL_1_relu"."NEUR_1_8" + 0.027699961264 AS "NEUR_2_11", -0.222117651672 * "HL_1_relu"."NEUR_1_1" + 0.405162441931 * "HL_1_relu"."NEUR_1_2" + -0.525253996237 * "HL_1_relu"."NEUR_1_3" + -0.295602638055 * "HL_1_relu"."NEUR_1_4" + -0.481453940195 * "HL_1_relu"."NEUR_1_5" + 0.242885018702 * "HL_1_relu"."NEUR_1_6" + 0.309561200239 * "HL_1_relu"."NEUR_1_7" + -0.491058339854 * "HL_1_relu"."NEUR_1_8" + 0.19870553964 AS "NEUR_2_12" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5", CASE WHEN ("HL_BA_2"."NEUR_2_6" >= 0.0) THEN "HL_BA_2"."NEUR_2_6" ELSE 0.0 END AS "NEUR_2_6", CASE WHEN ("HL_BA_2"."NEUR_2_7" >= 0.0) THEN "HL_BA_2"."NEUR_2_7" ELSE 0.0 END AS "NEUR_2_7", CASE WHEN ("HL_BA_2"."NEUR_2_8" >= 0.0) THEN "HL_BA_2"."NEUR_2_8" ELSE 0.0 END AS "NEUR_2_8", CASE WHEN ("HL_BA_2"."NEUR_2_9" >= 0.0) THEN "HL_BA_2"."NEUR_2_9" ELSE 0.0 END AS "NEUR_2_9", CASE WHEN ("HL_BA_2"."NEUR_2_10" >= 0.0) THEN "HL_BA_2"."NEUR_2_10" ELSE 0.0 END AS "NEUR_2_10", CASE WHEN ("HL_BA_2"."NEUR_2_11" >= 0.0) THEN "HL_BA_2"."NEUR_2_11" ELSE 0.0 END AS "NEUR_2_11", CASE WHEN ("HL_BA_2"."NEUR_2_12" >= 0.0) THEN "HL_BA_2"."NEUR_2_12" ELSE 0.0 END AS "NEUR_2_12" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", -0.295792634859 * "HL_2_relu"."NEUR_2_1" + -0.496456739447 * "HL_2_relu"."NEUR_2_2" + -0.157802820825 * "HL_2_relu"."NEUR_2_3" + 0.608325956418 * "HL_2_relu"."NEUR_2_4" + -0.436975840532 * "HL_2_relu"."NEUR_2_5" + 0.537072337517 * "HL_2_relu"."NEUR_2_6" + 0.0572463024124 * "HL_2_relu"."NEUR_2_7" + -0.0563014045223 * "HL_2_relu"."NEUR_2_8" + 0.509815931126 * "HL_2_relu"."NEUR_2_9" + -0.0540728301438 * "HL_2_relu"."NEUR_2_10" + 0.292834473739 * "HL_2_relu"."NEUR_2_11" + -0.133040825601 * "HL_2_relu"."NEUR_2_12" + 0.537038720841 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_logistic" AS 
(SELECT "OL_BA"."KEY" AS "KEY", 1.0 / (1.0 + exp(-"OL_BA"."NEUR_3_1")) AS "NEUR_3_1" 
FROM "OL_BA"), 
orig_cte AS 
(SELECT "OL_logistic"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", 1.0 - "OL_logistic"."NEUR_3_1" AS "Proba_0", "OL_logistic"."NEUR_3_1" AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "Decision" 
FROM "OL_logistic"), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", (SELECT max(score_class_union."LogProba") AS max_1 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_LogProba", (SELECT max(score_class_union."Proba") AS max_2 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Proba", (SELECT max(score_class_union."Score") AS max_3 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Score" 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max."max_LogProba" = score_class_union."LogProba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max."max_Proba" = score_class_union."Proba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max."max_Score" = score_class_union."Score" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Score" 
FROM score_max)
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision" 
FROM arg_max_cte