-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table TMP_20180329232656_PD32JB_LGBM_Sum_B0 part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329232656_PD32JB_LGBM_Sum_B0" (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)


-- Code For temporary table TMP_20180329232656_PD32JB_LGBM_Sum_B0 part 2/2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS"."Feature_454" <= 0.3689650000837929) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.08181818181818183 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.018518518518518514 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.09999999999999998 AS "Score") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Score" AS "Score" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"LGBM_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Score" AS "Score_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS"."Feature_454" <= 0.3689650000837929) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.07785970941192365 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.01759412798531222 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.09524187224606032 AS "Score") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Score" AS "Score" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"LGBM_Tree_0_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Score" AS "Score_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS"."Feature_191" <= 1.0000000180025095e-35) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.07432295598691702 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.004648611088805188 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.08047675743400781 AS "Score") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Score" AS "Score" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"LGBM_Tree_0_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Score" AS "Score_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS"."Feature_454" <= 0.3689650000837929) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.07113620841455619 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.014268805394253535 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.08930332814691366 AS "Score") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Score" AS "Score" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"LGBM_Tree_0_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Score" AS "Score_0" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 0.5079938063349371) THEN CASE WHEN ("ADS"."Feature_454" <= 0.3689650000837929) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.08685111779526351 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.0056404308399810674 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.08594782029474553 AS "Score") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Score" AS "Score" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"LGBM_Tree_0_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Score" AS "Score_0" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS"."Feature_191" <= 1.0000000180025095e-35) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.06588141560671026 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 1.1173152650181581e-05 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.0737944965735968 AS "Score") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Score" AS "Score" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"LGBM_Tree_0_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Score" AS "Score_0" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 0.5079938063349371) THEN CASE WHEN ("ADS"."Feature_454" <= 0.3689650000837929) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.08163149835642083 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.004550766606149904 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.08177276766053548 AS "Score") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Score" AS "Score" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"LGBM_Tree_0_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Score" AS "Score_0" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 0.5079938063349371) THEN CASE WHEN ("ADS"."Feature_441" <= -0.11166385842624572) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.07915195296825749 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.014955733622861593 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.05957864761290195 AS "Score") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Score" AS "Score" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"LGBM_Tree_0_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Score" AS "Score_0" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 0.5079938063349371) THEN CASE WHEN ("ADS"."Feature_232" <= -1.0000000180025095e-35) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.07693347352992512 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.06695089540208503 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.006453173914940856 AS "Score") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Score" AS "Score" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"LGBM_Tree_0_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Score" AS "Score_0" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS"."Feature_191" <= 1.0000000180025095e-35) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.0583702353291274 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.004567018857065583 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.06736966190903516 AS "Score") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Score" AS "Score" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"LGBM_Tree_0_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Score" AS "Score_0" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20180329232656_PD32JB_LGBM_Sum_B0" ("KEY", "Score_0") SELECT "LGBM_Sum_B0"."KEY", "LGBM_Sum_B0"."Score_0" 
FROM (SELECT "LGBM_Sum_esu_0"."KEY" AS "KEY", "LGBM_Sum_esu_0"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_Tree_0_0"."KEY" AS "KEY", "LGBM_Tree_0_0"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_0" UNION ALL SELECT "LGBM_Tree_0_1"."KEY" AS "KEY", "LGBM_Tree_0_1"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_1" UNION ALL SELECT "LGBM_Tree_0_2"."KEY" AS "KEY", "LGBM_Tree_0_2"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_2" UNION ALL SELECT "LGBM_Tree_0_3"."KEY" AS "KEY", "LGBM_Tree_0_3"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_3" UNION ALL SELECT "LGBM_Tree_0_4"."KEY" AS "KEY", "LGBM_Tree_0_4"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_4" UNION ALL SELECT "LGBM_Tree_0_5"."KEY" AS "KEY", "LGBM_Tree_0_5"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_5" UNION ALL SELECT "LGBM_Tree_0_6"."KEY" AS "KEY", "LGBM_Tree_0_6"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_6" UNION ALL SELECT "LGBM_Tree_0_7"."KEY" AS "KEY", "LGBM_Tree_0_7"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_7" UNION ALL SELECT "LGBM_Tree_0_8"."KEY" AS "KEY", "LGBM_Tree_0_8"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_8" UNION ALL SELECT "LGBM_Tree_0_9"."KEY" AS "KEY", "LGBM_Tree_0_9"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_9") AS "LGBM_Sum_esu_0") AS "LGBM_Sum_B0"
-- Code For temporary table TMP_20180329232656_E2ROW3_LGBM_Sum_B1 part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329232656_E2ROW3_LGBM_Sum_B1" (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)


-- Code For temporary table TMP_20180329232656_E2ROW3_LGBM_Sum_B1 part 2/2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 0.5079938063349371) THEN CASE WHEN ("ADS"."Feature_84" <= -0.11381220150682193) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.07352506342318364 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.0028208369716701985 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.06969897572374385 AS "Score") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".node_id AS node_id, "DT_node_data_10".feature AS feature, "DT_node_data_10".threshold AS threshold, "DT_node_data_10".depth AS depth, "DT_node_data_10".parent_id AS parent_id, "DT_node_data_10"."Score" AS "Score" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".node_id), 
"LGBM_Tree_0_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Score" AS "Score_0" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_454" <= 0.2901602450760709) THEN CASE WHEN ("ADS"."Feature_163" <= -0.35192399711133165) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -0.061800796511683714 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.017154035524858568 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.06175431339721659 AS "Score") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".node_id AS node_id, "DT_node_data_11".feature AS feature, "DT_node_data_11".threshold AS threshold, "DT_node_data_11".depth AS depth, "DT_node_data_11".parent_id AS parent_id, "DT_node_data_11"."Score" AS "Score" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".node_id), 
"LGBM_Tree_0_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Score" AS "Score_0" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 0.5079938063349371) THEN CASE WHEN ("ADS"."Feature_232" <= -1.0000000180025095e-35) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.07090885104105292 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.06180375562302146 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.008689094047406415 AS "Score") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".node_id AS node_id, "DT_node_data_12".feature AS feature, "DT_node_data_12".threshold AS threshold, "DT_node_data_12".depth AS depth, "DT_node_data_12".parent_id AS parent_id, "DT_node_data_12"."Score" AS "Score" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".node_id), 
"LGBM_Tree_0_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Score" AS "Score_0" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_454" <= 0.3689650000837929) THEN CASE WHEN ("ADS"."Feature_340" <= -1.0000000180025095e-35) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -0.0730351274203137 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.06433127269712952 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.008607553395213486 AS "Score") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".node_id AS node_id, "DT_node_data_13".feature AS feature, "DT_node_data_13".threshold AS threshold, "DT_node_data_13".depth AS depth, "DT_node_data_13".parent_id AS parent_id, "DT_node_data_13"."Score" AS "Score" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".node_id), 
"LGBM_Tree_0_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Score" AS "Score_0" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 0.5079938063349371) THEN CASE WHEN ("ADS"."Feature_441" <= -0.11166385842624572) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 0.06883333516160821 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.018805705080875715 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.0520276227218964 AS "Score") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".node_id AS node_id, "DT_node_data_14".feature AS feature, "DT_node_data_14".threshold AS threshold, "DT_node_data_14".depth AS depth, "DT_node_data_14".parent_id AS parent_id, "DT_node_data_14"."Score" AS "Score" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".node_id), 
"LGBM_Tree_0_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Score" AS "Score_0" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_454" <= 0.3689650000837929) THEN CASE WHEN ("ADS"."Feature_456" <= -0.2959332930312479) THEN 4 ELSE CASE WHEN ("ADS"."Feature_441" <= -0.11166385842624572) THEN 10 ELSE 11 END END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -0.0707321722455437 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.02556989633416671 AS "Score" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 0.08373023936493429 AS "Score" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 0.01422826392554377 AS "Score") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".node_id AS node_id, "DT_node_data_15".feature AS feature, "DT_node_data_15".threshold AS threshold, "DT_node_data_15".depth AS depth, "DT_node_data_15".parent_id AS parent_id, "DT_node_data_15"."Score" AS "Score" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".node_id), 
"LGBM_Tree_0_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Score" AS "Score_0" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20180329232656_E2ROW3_LGBM_Sum_B1" ("KEY", "Score_0") SELECT "LGBM_Sum_B1"."KEY", "LGBM_Sum_B1"."Score_0" 
FROM (SELECT "LGBM_Sum_esu_1"."KEY" AS "KEY", "LGBM_Sum_esu_1"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_Tree_0_10"."KEY" AS "KEY", "LGBM_Tree_0_10"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_10" UNION ALL SELECT "LGBM_Tree_0_11"."KEY" AS "KEY", "LGBM_Tree_0_11"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_11" UNION ALL SELECT "LGBM_Tree_0_12"."KEY" AS "KEY", "LGBM_Tree_0_12"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_12" UNION ALL SELECT "LGBM_Tree_0_13"."KEY" AS "KEY", "LGBM_Tree_0_13"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_13" UNION ALL SELECT "LGBM_Tree_0_14"."KEY" AS "KEY", "LGBM_Tree_0_14"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_14" UNION ALL SELECT "LGBM_Tree_0_15"."KEY" AS "KEY", "LGBM_Tree_0_15"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_15") AS "LGBM_Sum_esu_1") AS "LGBM_Sum_B1"
-- Code For temporary table TMP_20180329232657_AMYR05_LGBM_Sum_Union part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329232657_AMYR05_LGBM_Sum_Union" (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)


-- Code For temporary table TMP_20180329232657_AMYR05_LGBM_Sum_Union part 2/2. Populate

INSERT INTO "TMP_20180329232657_AMYR05_LGBM_Sum_Union" ("KEY", "Score_0") SELECT "LGBM_Sum_Union"."KEY", "LGBM_Sum_Union"."Score_0" 
FROM (SELECT "LGBM_Sum_EnsembleUnion"."KEY" AS "KEY", "LGBM_Sum_EnsembleUnion"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_Sum_B0"."KEY" AS "KEY", "LGBM_Sum_B0"."Score_0" AS "Score_0" 
FROM "TMP_20180329232656_PD32JB_LGBM_Sum_B0" AS "LGBM_Sum_B0" UNION ALL SELECT "LGBM_Sum_B1"."KEY" AS "KEY", "LGBM_Sum_B1"."Score_0" AS "Score_0" 
FROM "TMP_20180329232656_E2ROW3_LGBM_Sum_B1" AS "LGBM_Sum_B1") AS "LGBM_Sum_EnsembleUnion") AS "LGBM_Sum_Union"

-- Model deployment code

WITH "LGBM_Sum_sum" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_Sum_Union"."KEY" AS "KEY", sum(CAST("LGBM_Sum_Union"."Score_0" AS FLOAT)) AS "Score_0" 
FROM "TMP_20180329232657_AMYR05_LGBM_Sum_Union" AS "LGBM_Sum_Union" GROUP BY "LGBM_Sum_Union"."KEY") AS "T"), 
orig_cte AS 
(SELECT "LGBM_Sum_sum"."KEY" AS "KEY", "LGBM_Sum_sum"."Score_0" AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", 1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -"LGBM_Sum_sum"."Score_0"), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(min(max(-100.0, -"LGBM_Sum_sum"."Score_0"), 100.0))) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "LGBM_Sum_sum"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte