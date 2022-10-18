-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingRegressor
-- Dataset : freidman1
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190117_KQBK8CU_GB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190117_KQBK8CU_GB_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20221018190117_KQBK8CU_GB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.44577227532863617) THEN CASE WHEN ("ADS"."Feature_4" <= 0.6678532958030701) THEN CASE WHEN ("ADS"."Feature_3" <= 0.4583197087049484) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.6619341671466827) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.27792081236839294) THEN CASE WHEN ("ADS"."Feature_0" <= 0.37086910009384155) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.23805725574493408) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -7.093849845116415 AS "E" UNION ALL SELECT 4 AS nid, -2.501011412013575 AS "E" UNION ALL SELECT 6 AS nid, -0.7408275201378117 AS "E" UNION ALL SELECT 7 AS nid, 4.278078463400813 AS "E" UNION ALL SELECT 10 AS nid, -4.585097879169128 AS "E" UNION ALL SELECT 11 AS nid, 1.2898297572270978 AS "E" UNION ALL SELECT 13 AS nid, -1.2643830692508 AS "E" UNION ALL SELECT 14 AS nid, 4.784408715250739 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"GB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.44577227532863617) THEN CASE WHEN ("ADS"."Feature_4" <= 0.6678532958030701) THEN CASE WHEN ("ADS"."Feature_3" <= 0.4583197087049484) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.917350709438324) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.27792081236839294) THEN CASE WHEN ("ADS"."Feature_3" <= 0.04497052729129791) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.23805725574493408) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -6.384464860604774 AS "E" UNION ALL SELECT 4 AS nid, -2.2509102708122177 AS "E" UNION ALL SELECT 6 AS nid, 0.38757941027332676 AS "E" UNION ALL SELECT 7 AS nid, 7.912399167038801 AS "E" UNION ALL SELECT 10 AS nid, -6.219637110260264 AS "E" UNION ALL SELECT 11 AS nid, 0.3622503180672496 AS "E" UNION ALL SELECT 13 AS nid, -1.1379447623257206 AS "E" UNION ALL SELECT 14 AS nid, 4.3059678437256625 AS "E") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"GB_Model_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.44577227532863617) THEN CASE WHEN ("ADS"."Feature_3" <= 0.24268899112939835) THEN CASE WHEN ("ADS"."Feature_1" <= 0.37809421122074127) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.2274620532989502) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.7538962662220001) THEN CASE WHEN ("ADS"."Feature_3" <= 0.04497052729129791) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_9" <= 0.0398918092250824) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -7.370152713546332 AS "E" UNION ALL SELECT 4 AS nid, -4.2708906932921185 AS "E" UNION ALL SELECT 6 AS nid, -3.1804811311245733 AS "E" UNION ALL SELECT 7 AS nid, 0.9284733977472368 AS "E" UNION ALL SELECT 10 AS nid, -5.597673399234237 AS "E" UNION ALL SELECT 11 AS nid, 1.605168377981131 AS "E" UNION ALL SELECT 13 AS nid, 0.6748819159331783 AS "E" UNION ALL SELECT 14 AS nid, 5.905636312210524 AS "E") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"GB_Model_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.44577227532863617) THEN CASE WHEN ("ADS"."Feature_4" <= 0.574918806552887) THEN CASE WHEN ("ADS"."Feature_7" <= 0.041853321716189384) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.8595516383647919) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.38620519638061523) THEN CASE WHEN ("ADS"."Feature_4" <= 0.7087181210517883) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.7423960864543915) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 2.8294125166928 AS "E" UNION ALL SELECT 4 AS nid, -4.282294629155776 AS "E" UNION ALL SELECT 6 AS nid, -0.36262630653622246 AS "E" UNION ALL SELECT 7 AS nid, 5.009876124965633 AS "E" UNION ALL SELECT 10 AS nid, -2.28524649853795 AS "E" UNION ALL SELECT 11 AS nid, 1.8822147770483508 AS "E" UNION ALL SELECT 13 AS nid, 2.036037131911777 AS "E" UNION ALL SELECT 14 AS nid, 5.191154372346607 AS "E") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"GB_Model_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.44577227532863617) THEN CASE WHEN ("ADS"."Feature_4" <= 0.6678532958030701) THEN CASE WHEN ("ADS"."Feature_3" <= 0.4583197087049484) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.9630824029445648) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.27792081236839294) THEN CASE WHEN ("ADS"."Feature_0" <= 0.37086910009384155) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.23805725574493408) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -4.859742212322365 AS "E" UNION ALL SELECT 4 AS nid, -1.5960175829078778 AS "E" UNION ALL SELECT 6 AS nid, 2.4300306931823994 AS "E" UNION ALL SELECT 7 AS nid, -2.248809381563529 AS "E" UNION ALL SELECT 10 AS nid, -3.509755382615769 AS "E" UNION ALL SELECT 11 AS nid, 0.7630649046227624 AS "E" UNION ALL SELECT 13 AS nid, -0.9251329253025341 AS "E" UNION ALL SELECT 14 AS nid, 3.2387562234915994 AS "E") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"GB_Model_4_0" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.2274620532989502) THEN CASE WHEN ("ADS"."Feature_4" <= 0.624884307384491) THEN CASE WHEN ("ADS"."Feature_3" <= 0.3159424811601639) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_8" <= 0.49793438613414764) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.285542830824852) THEN CASE WHEN ("ADS"."Feature_0" <= 0.2935235798358917) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.7538962662220001) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -5.940445102789389 AS "E" UNION ALL SELECT 4 AS nid, -3.263158824945032 AS "E" UNION ALL SELECT 6 AS nid, -1.7660285006642826 AS "E" UNION ALL SELECT 7 AS nid, 1.4135000256219261 AS "E" UNION ALL SELECT 10 AS nid, -5.989390720113895 AS "E" UNION ALL SELECT 11 AS nid, -0.9876530251311973 AS "E" UNION ALL SELECT 13 AS nid, 1.203279631963778 AS "E" UNION ALL SELECT 14 AS nid, 4.007030033503691 AS "E") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"GB_Model_5_0" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.44577227532863617) THEN CASE WHEN ("ADS"."Feature_3" <= 0.24268899112939835) THEN CASE WHEN ("ADS"."Feature_5" <= 0.13421679171733558) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.27081388235092163) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.38620519638061523) THEN CASE WHEN ("ADS"."Feature_4" <= 0.7087181210517883) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.9278656244277954) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -2.830832637301972 AS "E" UNION ALL SELECT 4 AS nid, -5.205804261815099 AS "E" UNION ALL SELECT 6 AS nid, -1.8834463132420642 AS "E" UNION ALL SELECT 7 AS nid, 1.4075455508891848 AS "E" UNION ALL SELECT 10 AS nid, -1.9480077609740871 AS "E" UNION ALL SELECT 11 AS nid, 1.5219110785813015 AS "E" UNION ALL SELECT 13 AS nid, 1.8626031871480675 AS "E" UNION ALL SELECT 14 AS nid, 5.208207179423199 AS "E") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"GB_Model_6_0" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.5503556430339813) THEN CASE WHEN ("ADS"."Feature_1" <= 0.4512072205543518) THEN CASE WHEN ("ADS"."Feature_4" <= 0.5689454674720764) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.04497052729129791) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.27081388235092163) THEN CASE WHEN ("ADS"."Feature_4" <= 0.6678532958030701) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.32308802008628845) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -3.432718889290516 AS "E" UNION ALL SELECT 4 AS nid, -0.8438412023296973 AS "E" UNION ALL SELECT 6 AS nid, -3.914752907835775 AS "E" UNION ALL SELECT 7 AS nid, 0.5535587562627319 AS "E" UNION ALL SELECT 10 AS nid, -2.209802734087997 AS "E" UNION ALL SELECT 11 AS nid, 1.4038748832583738 AS "E" UNION ALL SELECT 13 AS nid, -0.03242426158790686 AS "E" UNION ALL SELECT 14 AS nid, 2.92566369780902 AS "E") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"GB_Model_7_0" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.5503556430339813) THEN CASE WHEN ("ADS"."Feature_1" <= 0.594910204410553) THEN CASE WHEN ("ADS"."Feature_4" <= 0.4401707798242569) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.8164874613285065) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.27081388235092163) THEN CASE WHEN ("ADS"."Feature_4" <= 0.6678532958030701) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.23805725574493408) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -3.26748931749112 AS "E" UNION ALL SELECT 4 AS nid, -0.8496953434200751 AS "E" UNION ALL SELECT 6 AS nid, 0.23675681572864105 AS "E" UNION ALL SELECT 7 AS nid, 2.7263067607487077 AS "E" UNION ALL SELECT 10 AS nid, -1.9888224606791964 AS "E" UNION ALL SELECT 11 AS nid, 1.263487394932536 AS "E" UNION ALL SELECT 13 AS nid, -0.8483627404304563 AS "E" UNION ALL SELECT 14 AS nid, 2.526911564624024 AS "E") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"GB_Model_8_0" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.49495647847652435) THEN CASE WHEN ("ADS"."Feature_4" <= 0.4505019336938858) THEN CASE WHEN ("ADS"."Feature_1" <= 0.6534442901611328) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.3189048022031784) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.2274620532989502) THEN CASE WHEN ("ADS"."Feature_6" <= 0.8818452656269073) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.7538962662220001) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -3.2548053774012042 AS "E" UNION ALL SELECT 4 AS nid, -0.22159773790941392 AS "E" UNION ALL SELECT 6 AS nid, -2.693580455845465 AS "E" UNION ALL SELECT 7 AS nid, 0.26971446839586566 AS "E" UNION ALL SELECT 10 AS nid, -2.033015553816656 AS "E" UNION ALL SELECT 11 AS nid, 1.462802579777997 AS "E" UNION ALL SELECT 13 AS nid, 0.8646598138009701 AS "E" UNION ALL SELECT 14 AS nid, 2.926715687967111 AS "E") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"GB_Model_9_0" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20221018190117_KQBK8CU_GB_B0" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "GB_B0"."KEY" AS "KEY", "GB_B0"."Estimator" AS "Estimator" 
FROM (SELECT "GB_esu_0"."KEY" AS "KEY", "GB_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "GB_Model_0_0"."KEY" AS "KEY", "GB_Model_0_0"."Estimator" AS "Estimator" 
FROM "GB_Model_0_0" UNION ALL SELECT "GB_Model_1_0"."KEY" AS "KEY", "GB_Model_1_0"."Estimator" AS "Estimator" 
FROM "GB_Model_1_0" UNION ALL SELECT "GB_Model_2_0"."KEY" AS "KEY", "GB_Model_2_0"."Estimator" AS "Estimator" 
FROM "GB_Model_2_0" UNION ALL SELECT "GB_Model_3_0"."KEY" AS "KEY", "GB_Model_3_0"."Estimator" AS "Estimator" 
FROM "GB_Model_3_0" UNION ALL SELECT "GB_Model_4_0"."KEY" AS "KEY", "GB_Model_4_0"."Estimator" AS "Estimator" 
FROM "GB_Model_4_0" UNION ALL SELECT "GB_Model_5_0"."KEY" AS "KEY", "GB_Model_5_0"."Estimator" AS "Estimator" 
FROM "GB_Model_5_0" UNION ALL SELECT "GB_Model_6_0"."KEY" AS "KEY", "GB_Model_6_0"."Estimator" AS "Estimator" 
FROM "GB_Model_6_0" UNION ALL SELECT "GB_Model_7_0"."KEY" AS "KEY", "GB_Model_7_0"."Estimator" AS "Estimator" 
FROM "GB_Model_7_0" UNION ALL SELECT "GB_Model_8_0"."KEY" AS "KEY", "GB_Model_8_0"."Estimator" AS "Estimator" 
FROM "GB_Model_8_0" UNION ALL SELECT "GB_Model_9_0"."KEY" AS "KEY", "GB_Model_9_0"."Estimator" AS "Estimator" 
FROM "GB_Model_9_0") AS "GB_esu_0") AS "GB_B0") AS "T"

-- Code For temporary table TMP_20221018190117_M5PSBH7_GB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190117_M5PSBH7_GB_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20221018190117_M5PSBH7_GB_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.2274620532989502) THEN CASE WHEN ("ADS"."Feature_4" <= 0.5962461233139038) THEN CASE WHEN ("ADS"."Feature_3" <= 0.3159424811601639) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.9630824029445648) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.285542830824852) THEN CASE WHEN ("ADS"."Feature_0" <= 0.2935235798358917) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.7538962662220001) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -4.061935602121685 AS "E" UNION ALL SELECT 4 AS nid, -2.079040905822101 AS "E" UNION ALL SELECT 6 AS nid, 0.3560825243421908 AS "E" UNION ALL SELECT 7 AS nid, -2.6206510461882573 AS "E" UNION ALL SELECT 10 AS nid, -4.066195909433461 AS "E" UNION ALL SELECT 11 AS nid, -0.6294195239942684 AS "E" UNION ALL SELECT 13 AS nid, 0.7086538750478792 AS "E" UNION ALL SELECT 14 AS nid, 2.6340441191704014 AS "E") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"GB_Model_10_0" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.44577227532863617) THEN CASE WHEN ("ADS"."Feature_3" <= 0.24268899112939835) THEN CASE WHEN ("ADS"."Feature_5" <= 0.13421679171733558) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.6463045179843903) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.31855587661266327) THEN CASE WHEN ("ADS"."Feature_7" <= 0.2784389331936836) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.8929773271083832) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -1.489306062754066 AS "E" UNION ALL SELECT 4 AS nid, -3.4892843866531167 AS "E" UNION ALL SELECT 6 AS nid, -1.1965538713939976 AS "E" UNION ALL SELECT 7 AS nid, 0.8773113058462035 AS "E" UNION ALL SELECT 10 AS nid, -3.0974461978376335 AS "E" UNION ALL SELECT 11 AS nid, -0.2712945963387945 AS "E" UNION ALL SELECT 13 AS nid, 0.8274380073207317 AS "E" UNION ALL SELECT 14 AS nid, 3.251757710238614 AS "E") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"GB_Model_11_0" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.2274620532989502) THEN CASE WHEN ("ADS"."Feature_4" <= 0.5962461233139038) THEN CASE WHEN ("ADS"."Feature_3" <= 0.4583197087049484) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_6" <= 0.45308953523635864) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.285542830824852) THEN CASE WHEN ("ADS"."Feature_0" <= 0.8121815919876099) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.7538962662220001) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -2.9772604108455876 AS "E" UNION ALL SELECT 4 AS nid, -1.5370966666421342 AS "E" UNION ALL SELECT 6 AS nid, -1.0977861098985795 AS "E" UNION ALL SELECT 7 AS nid, 0.7164149146634631 AS "E" UNION ALL SELECT 10 AS nid, -1.5917350804842714 AS "E" UNION ALL SELECT 11 AS nid, 1.8319796221835514 AS "E" UNION ALL SELECT 13 AS nid, 0.6084074680124133 AS "E" UNION ALL SELECT 14 AS nid, 2.2372321718452657 AS "E") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"GB_Model_12_0" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.2274620532989502) THEN CASE WHEN ("ADS"."Feature_4" <= 0.5962461233139038) THEN CASE WHEN ("ADS"."Feature_3" <= 0.3159424811601639) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.5485113561153412) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.285542830824852) THEN CASE WHEN ("ADS"."Feature_7" <= 0.2732423171401024) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.026954924687743187) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -3.0664058250411257 AS "E" UNION ALL SELECT 4 AS nid, -1.5962012079987338 AS "E" UNION ALL SELECT 6 AS nid, 0.95063078671502 AS "E" UNION ALL SELECT 7 AS nid, -0.8092052910206888 AS "E" UNION ALL SELECT 10 AS nid, -2.5597145795214464 AS "E" UNION ALL SELECT 11 AS nid, -0.2527164224128347 AS "E" UNION ALL SELECT 13 AS nid, 3.8021357039912367 AS "E" UNION ALL SELECT 14 AS nid, 0.8532023850462546 AS "E") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"GB_Model_13_0" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" <= 0.31855587661266327) THEN CASE WHEN ("ADS"."Feature_7" <= 0.358134925365448) THEN CASE WHEN ("ADS"."Feature_9" <= 0.15919313579797745) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_6" <= 0.5801491737365723) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.5503556430339813) THEN CASE WHEN ("ADS"."Feature_1" <= 0.4244970828294754) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_6" <= 0.3831917643547058) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -0.4626326703537016 AS "E" UNION ALL SELECT 4 AS nid, -2.854928864667206 AS "E" UNION ALL SELECT 6 AS nid, -1.1883523746963742 AS "E" UNION ALL SELECT 7 AS nid, 0.1812323777744537 AS "E" UNION ALL SELECT 10 AS nid, -1.2271860363207405 AS "E" UNION ALL SELECT 11 AS nid, 0.4049849157094105 AS "E" UNION ALL SELECT 13 AS nid, 0.19391784015403796 AS "E" UNION ALL SELECT 14 AS nid, 2.0254684557041562 AS "E") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"GB_Model_14_0" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.7743802070617676) THEN CASE WHEN ("ADS"."Feature_2" <= 0.03384460136294365) THEN CASE WHEN ("ADS"."Feature_8" <= 0.8270924687385559) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6198089122772217) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.8334439098834991) THEN CASE WHEN ("ADS"."Feature_2" <= 0.19114422053098679) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.17702400218695402) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 1.8239927454179607 AS "E" UNION ALL SELECT 4 AS nid, 3.91800268716279 AS "E" UNION ALL SELECT 6 AS nid, -1.1224589587132219 AS "E" UNION ALL SELECT 7 AS nid, 0.47984003349542026 AS "E" UNION ALL SELECT 10 AS nid, 2.168015173134883 AS "E" UNION ALL SELECT 11 AS nid, -0.20944940128567247 AS "E" UNION ALL SELECT 13 AS nid, 1.3888370017942862 AS "E" UNION ALL SELECT 14 AS nid, 4.297215809128249 AS "E") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"GB_Model_15_0" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20221018190117_M5PSBH7_GB_B1" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "GB_B1"."KEY" AS "KEY", "GB_B1"."Estimator" AS "Estimator" 
FROM (SELECT "GB_esu_1"."KEY" AS "KEY", "GB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "GB_Model_10_0"."KEY" AS "KEY", "GB_Model_10_0"."Estimator" AS "Estimator" 
FROM "GB_Model_10_0" UNION ALL SELECT "GB_Model_11_0"."KEY" AS "KEY", "GB_Model_11_0"."Estimator" AS "Estimator" 
FROM "GB_Model_11_0" UNION ALL SELECT "GB_Model_12_0"."KEY" AS "KEY", "GB_Model_12_0"."Estimator" AS "Estimator" 
FROM "GB_Model_12_0" UNION ALL SELECT "GB_Model_13_0"."KEY" AS "KEY", "GB_Model_13_0"."Estimator" AS "Estimator" 
FROM "GB_Model_13_0" UNION ALL SELECT "GB_Model_14_0"."KEY" AS "KEY", "GB_Model_14_0"."Estimator" AS "Estimator" 
FROM "GB_Model_14_0" UNION ALL SELECT "GB_Model_15_0"."KEY" AS "KEY", "GB_Model_15_0"."Estimator" AS "Estimator" 
FROM "GB_Model_15_0") AS "GB_esu_1") AS "GB_B1") AS "T"

-- Code For temporary table TMP_20221018190117_IT81MVU_GB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190117_IT81MVU_GB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018190117_IT81MVU_GB_sum part 2. Populate

WITH "GB_Union" AS 
(SELECT "GB_EnsembleUnion"."KEY" AS "KEY", "GB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "GB_B0"."KEY" AS "KEY", "GB_B0"."Estimator" AS "Estimator" 
FROM "TMP_20221018190117_KQBK8CU_GB_B0" AS "GB_B0" UNION ALL SELECT "GB_B1"."KEY" AS "KEY", "GB_B1"."Estimator" AS "Estimator" 
FROM "TMP_20221018190117_M5PSBH7_GB_B1" AS "GB_B1") AS "GB_EnsembleUnion")
 INSERT INTO "TMP_20221018190117_IT81MVU_GB_sum" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "GB_sum"."KEY" AS "KEY", "GB_sum"."Estimator" AS "Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT "GB_Union"."KEY" AS "KEY", sum("GB_Union"."Estimator") AS "Estimator" 
FROM "GB_Union" GROUP BY "GB_Union"."KEY") AS "T") AS "GB_sum") AS "T"

-- Code For temporary table TMP_20221018190117_IT81MVU_GB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190117_IT81MVU_GB_sum_KEY" ON "TMP_20221018190117_IT81MVU_GB_sum" ("KEY")

-- Model deployment code

SELECT "GB_sum"."KEY" AS "KEY", 15.3537633818605 + 0.1 * "GB_sum"."Estimator" AS "Estimator" 
FROM "TMP_20221018190117_IT81MVU_GB_sum" AS "GB_sum"