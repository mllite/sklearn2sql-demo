-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBRegressor
-- Dataset : freidman1
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190150_BDJ7731_XGB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190150_BDJ7731_XGB_B0" (
	"KEY" BIGINT, 
	"Estimator" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190150_BDJ7731_XGB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.44577229) THEN CASE WHEN ("ADS"."Feature_3" < 0.337229729) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 5.20409441 AS "Estimator" UNION ALL SELECT 3 AS nid, 2.17387152 AS "Estimator" UNION ALL SELECT 4 AS nid, 3.85627294 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"XGB_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.227462053) THEN CASE WHEN ("ADS"."Feature_4" < 0.48272559) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.275402367) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, 1.41071427 AS "Estimator" UNION ALL SELECT 4 AS nid, 2.42714262 AS "Estimator" UNION ALL SELECT 5 AS nid, 2.11307049 AS "Estimator" UNION ALL SELECT 6 AS nid, 3.89251494 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"XGB_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" < 0.318555892) THEN 1 ELSE CASE WHEN ("ADS"."Feature_3" < 0.550355673) THEN CASE WHEN ("ADS"."Feature_1" < 0.424497068) THEN 5 ELSE 6 END ELSE 4 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS nid, 1.24433184 AS "Estimator" UNION ALL SELECT 4 AS nid, 3.06391406 AS "Estimator" UNION ALL SELECT 5 AS nid, 1.32978749 AS "Estimator" UNION ALL SELECT 6 AS nid, 2.33954167 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"XGB_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.494956493) THEN CASE WHEN ("ADS"."Feature_4" < 0.450501919) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" < 0.270813882) THEN 5 ELSE CASE WHEN ("ADS"."Feature_3" < 0.753896236) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, 0.613173842 AS "Estimator" UNION ALL SELECT 4 AS nid, 1.48825288 AS "Estimator" UNION ALL SELECT 5 AS nid, 1.14802098 AS "Estimator" UNION ALL SELECT 7 AS nid, 1.71889293 AS "Estimator" UNION ALL SELECT 8 AS nid, 2.53091908 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"XGB_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" < 0.292197764) THEN 1 ELSE CASE WHEN ("ADS"."Feature_1" < 0.178881794) THEN 3 ELSE CASE WHEN ("ADS"."Feature_3" < 0.751403809) THEN 5 ELSE 6 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS nid, 0.408731848 AS "Estimator" UNION ALL SELECT 3 AS nid, 0.596439838 AS "Estimator" UNION ALL SELECT 5 AS nid, 1.24134743 AS "Estimator" UNION ALL SELECT 6 AS nid, 1.91035748 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"XGB_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_4" < 0.626042485) THEN CASE WHEN ("ADS"."Feature_2" < 0.191144228) THEN 3 ELSE CASE WHEN ("ADS"."Feature_2" < 0.791962981) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 1.25488043 AS "Estimator" UNION ALL SELECT 3 AS nid, 1.14702761 AS "Estimator" UNION ALL SELECT 5 AS nid, 0.22036989 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.928107023 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"XGB_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.425807238) THEN CASE WHEN ("ADS"."Feature_4" < 0.436961949) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.263883412) THEN 5 ELSE CASE WHEN ("ADS"."Feature_6" < 0.383191764) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, -0.154334188 AS "Estimator" UNION ALL SELECT 4 AS nid, 0.469956517 AS "Estimator" UNION ALL SELECT 5 AS nid, 0.242951527 AS "Estimator" UNION ALL SELECT 7 AS nid, 0.504113853 AS "Estimator" UNION ALL SELECT 8 AS nid, 1.02353692 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"XGB_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.594910204) THEN CASE WHEN ("ADS"."Feature_3" < 0.275402367) THEN 3 ELSE CASE WHEN ("ADS"."Feature_3" < 0.795114219) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_4" < 0.433508635) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, -0.185849145 AS "Estimator" UNION ALL SELECT 5 AS nid, 0.520060599 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.804469526 AS "Estimator" UNION ALL SELECT 7 AS nid, 0.269506752 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.703605831 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"XGB_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.774380207) THEN CASE WHEN ("ADS"."Feature_2" < 0.119792461) THEN 3 ELSE CASE WHEN ("ADS"."Feature_0" < 0.394444406) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 0.61849004 AS "Estimator" UNION ALL SELECT 3 AS nid, 0.558182001 AS "Estimator" UNION ALL SELECT 5 AS nid, -0.151840106 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.211264536 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"XGB_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.868725479) THEN CASE WHEN ("ADS"."Feature_2" < 0.245000884) THEN CASE WHEN ("ADS"."Feature_0" < 0.604981184) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.28035754) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 0.610841274 AS "Estimator" UNION ALL SELECT 5 AS nid, 0.223776102 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.552578449 AS "Estimator" UNION ALL SELECT 7 AS nid, -0.304640472 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.0979367197 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"XGB_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20221018190150_BDJ7731_XGB_B0" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_esu_0"."KEY" AS "KEY", "XGB_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Model_0"."KEY" AS "KEY", "XGB_Model_0"."Estimator" AS "Estimator" 
FROM "XGB_Model_0" UNION ALL SELECT "XGB_Model_1"."KEY" AS "KEY", "XGB_Model_1"."Estimator" AS "Estimator" 
FROM "XGB_Model_1" UNION ALL SELECT "XGB_Model_2"."KEY" AS "KEY", "XGB_Model_2"."Estimator" AS "Estimator" 
FROM "XGB_Model_2" UNION ALL SELECT "XGB_Model_3"."KEY" AS "KEY", "XGB_Model_3"."Estimator" AS "Estimator" 
FROM "XGB_Model_3" UNION ALL SELECT "XGB_Model_4"."KEY" AS "KEY", "XGB_Model_4"."Estimator" AS "Estimator" 
FROM "XGB_Model_4" UNION ALL SELECT "XGB_Model_5"."KEY" AS "KEY", "XGB_Model_5"."Estimator" AS "Estimator" 
FROM "XGB_Model_5" UNION ALL SELECT "XGB_Model_6"."KEY" AS "KEY", "XGB_Model_6"."Estimator" AS "Estimator" 
FROM "XGB_Model_6" UNION ALL SELECT "XGB_Model_7"."KEY" AS "KEY", "XGB_Model_7"."Estimator" AS "Estimator" 
FROM "XGB_Model_7" UNION ALL SELECT "XGB_Model_8"."KEY" AS "KEY", "XGB_Model_8"."Estimator" AS "Estimator" 
FROM "XGB_Model_8" UNION ALL SELECT "XGB_Model_9"."KEY" AS "KEY", "XGB_Model_9"."Estimator" AS "Estimator" 
FROM "XGB_Model_9") AS "XGB_esu_0") AS "XGB_B0") AS "T"

-- Code For temporary table TMP_20221018190150_WJ53ULB_XGB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190150_WJ53ULB_XGB_B1" (
	"KEY" BIGINT, 
	"Estimator" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190150_WJ53ULB_XGB_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_4" < 0.705635369) THEN CASE WHEN ("ADS"."Feature_1" < 0.374738008) THEN CASE WHEN ("ADS"."Feature_2" < 0.622945905) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.191144228) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 0.401917726 AS "Estimator" UNION ALL SELECT 5 AS nid, -0.18514359 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.133646309 AS "Estimator" UNION ALL SELECT 7 AS nid, 0.42468372 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.0741623789 AS "Estimator") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"XGB_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.791962981) THEN CASE WHEN ("ADS"."Feature_2" < 0.191144228) THEN 3 ELSE CASE WHEN ("ADS"."Feature_3" < 0.299128771) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 0.333456516 AS "Estimator" UNION ALL SELECT 3 AS nid, 0.242667362 AS "Estimator" UNION ALL SELECT 5 AS nid, -0.254993021 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.0346417092 AS "Estimator") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"XGB_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" < 0.386205196) THEN CASE WHEN ("ADS"."Feature_8" < 0.538075686) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" < 0.297900081) THEN CASE WHEN ("ADS"."Feature_2" < 0.495598555) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_5" < 0.696181178) THEN 9 ELSE 10 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, 0.0781900436 AS "Estimator" UNION ALL SELECT 4 AS nid, -0.240867764 AS "Estimator" UNION ALL SELECT 7 AS nid, -0.146877274 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.109450921 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.117463887 AS "Estimator" UNION ALL SELECT 10 AS nid, 0.472460806 AS "Estimator") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"XGB_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_4" < 0.674897075) THEN CASE WHEN ("ADS"."Feature_7" < 0.109224856) THEN 3 ELSE CASE WHEN ("ADS"."Feature_3" < 0.195833787) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_3" < 0.555954814) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, -0.177886814 AS "Estimator" UNION ALL SELECT 5 AS nid, 0.0569376349 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.346652687 AS "Estimator" UNION ALL SELECT 7 AS nid, -0.103671327 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.0884396434 AS "Estimator") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"XGB_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.868725479) THEN CASE WHEN ("ADS"."Feature_2" < 0.08179041) THEN 3 ELSE CASE WHEN ("ADS"."Feature_5" < 0.739893854) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 0.216289103 AS "Estimator" UNION ALL SELECT 3 AS nid, 0.204798773 AS "Estimator" UNION ALL SELECT 5 AS nid, 0.0191522799 AS "Estimator" UNION ALL SELECT 6 AS nid, -0.125294894 AS "Estimator") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"XGB_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_4" < 0.435257792) THEN CASE WHEN ("ADS"."Feature_7" < 0.522663116) THEN CASE WHEN ("ADS"."Feature_2" < 0.421828806) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" < 0.832000732) THEN CASE WHEN ("ADS"."Feature_6" < 0.495003045) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS nid, 0.0655611604 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.259908646 AS "Estimator" UNION ALL SELECT 7 AS nid, -0.232347324 AS "Estimator" UNION ALL SELECT 8 AS nid, -0.0291054845 AS "Estimator" UNION ALL SELECT 9 AS nid, -0.113413215 AS "Estimator" UNION ALL SELECT 10 AS nid, 0.116505913 AS "Estimator") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"XGB_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20221018190150_WJ53ULB_XGB_B1" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_esu_1"."KEY" AS "KEY", "XGB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Model_10"."KEY" AS "KEY", "XGB_Model_10"."Estimator" AS "Estimator" 
FROM "XGB_Model_10" UNION ALL SELECT "XGB_Model_11"."KEY" AS "KEY", "XGB_Model_11"."Estimator" AS "Estimator" 
FROM "XGB_Model_11" UNION ALL SELECT "XGB_Model_12"."KEY" AS "KEY", "XGB_Model_12"."Estimator" AS "Estimator" 
FROM "XGB_Model_12" UNION ALL SELECT "XGB_Model_13"."KEY" AS "KEY", "XGB_Model_13"."Estimator" AS "Estimator" 
FROM "XGB_Model_13" UNION ALL SELECT "XGB_Model_14"."KEY" AS "KEY", "XGB_Model_14"."Estimator" AS "Estimator" 
FROM "XGB_Model_14" UNION ALL SELECT "XGB_Model_15"."KEY" AS "KEY", "XGB_Model_15"."Estimator" AS "Estimator" 
FROM "XGB_Model_15") AS "XGB_esu_1") AS "XGB_B1") AS "T"

-- Code For temporary table TMP_20221018190150_QU5O8SF_XGB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190150_QU5O8SF_XGB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190150_QU5O8SF_XGB_sum part 2. Populate

WITH "XGB_Union" AS 
(SELECT "XGB_EnsembleUnion"."KEY" AS "KEY", "XGB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Estimator" AS "Estimator" 
FROM "TMP_20221018190150_BDJ7731_XGB_B0" AS "XGB_B0" UNION ALL SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Estimator" AS "Estimator" 
FROM "TMP_20221018190150_WJ53ULB_XGB_B1" AS "XGB_B1") AS "XGB_EnsembleUnion")
 INSERT INTO "TMP_20221018190150_QU5O8SF_XGB_sum" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Estimator" AS "Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT "XGB_Union"."KEY" AS "KEY", sum("XGB_Union"."Estimator") AS "Estimator" 
FROM "XGB_Union" GROUP BY "XGB_Union"."KEY") AS "T") AS "XGB_sum") AS "T"

-- Code For temporary table TMP_20221018190150_QU5O8SF_XGB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190150_QU5O8SF_XGB_sum_KEY" ON "TMP_20221018190150_QU5O8SF_XGB_sum" ("KEY")

-- Model deployment code

SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Estimator" + 0.5 AS "Estimator" 
FROM "TMP_20221018190150_QU5O8SF_XGB_sum" AS "XGB_sum"