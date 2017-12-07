-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.1157732754945755) THEN 1 ELSE 2 END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.03304983675479889 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.09192007780075073 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"XGB_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.1157732754945755) THEN 1 ELSE 2 END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.03004531003534794 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.08285753428936005 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"XGB_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.1157732754945755) THEN 1 ELSE CASE WHEN ("ADS"."Feature_0" < 72.4854736328125) THEN 3 ELSE 4 END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.027313916012644768 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.0781811997294426 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.05488375946879387 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"XGB_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.1157732754945755) THEN 1 ELSE CASE WHEN ("ADS"."Feature_0" < 61.53804397583008) THEN 3 ELSE CASE WHEN ("ADS"."Feature_1" < 851.9430541992188) THEN 5 ELSE 6 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.024830834940075874 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.07208586484193802 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 0.03887651488184929 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 0.06283045560121536 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"XGB_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.2454954981803894) THEN 1 ELSE CASE WHEN ("ADS"."Feature_1" < 329.4079284667969) THEN 3 ELSE 4 END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.030827684327960014 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.042946554720401764 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.06566087901592255 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"XGB_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.1157732754945755) THEN 1 ELSE CASE WHEN ("ADS"."Feature_0" < 61.53804397583008) THEN 3 ELSE CASE WHEN ("ADS"."Feature_1" < 851.9430541992188) THEN 5 ELSE 6 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.019770970568060875 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.05906825140118599 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 0.031149083748459816 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 0.05134235695004463 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"XGB_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.20348544418811798) THEN 1 ELSE CASE WHEN ("ADS"."Feature_1" < 784.8369140625) THEN CASE WHEN ("ADS"."Feature_0" < 48.77195739746094) THEN 5 ELSE 6 END ELSE 4 END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.02235419861972332 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.05528220534324646 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 0.048120249062776566 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 0.028293082490563393 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"XGB_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.1157732754945755) THEN 1 ELSE CASE WHEN ("ADS"."Feature_0" < 49.2326774597168) THEN 3 ELSE CASE WHEN ("ADS"."Feature_1" < 759.8154907226562) THEN 5 ELSE 6 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.015941409394145012 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.04950718954205513 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 0.025699550285935402 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 0.04306947439908981 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"XGB_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.20348544418811798) THEN 1 ELSE CASE WHEN ("ADS"."Feature_1" < 784.8369140625) THEN CASE WHEN ("ADS"."Feature_0" < 48.77195739746094) THEN 5 ELSE 6 END ELSE 4 END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.018013611435890198 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.045275527983903885 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 0.039108484983444214 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 0.023343760520219803 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"XGB_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.20348544418811798) THEN 1 ELSE CASE WHEN ("ADS"."Feature_1" < 329.4079284667969) THEN 3 ELSE 4 END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.016332341358065605 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.024957163259387016 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.039277832955121994 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"XGB_Tree_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Tree_0"."KEY" AS "KEY", "XGB_Tree_0"."Estimator" AS "Estimator" 
FROM "XGB_Tree_0" UNION ALL SELECT "XGB_Tree_1"."KEY" AS "KEY", "XGB_Tree_1"."Estimator" AS "Estimator" 
FROM "XGB_Tree_1" UNION ALL SELECT "XGB_Tree_2"."KEY" AS "KEY", "XGB_Tree_2"."Estimator" AS "Estimator" 
FROM "XGB_Tree_2" UNION ALL SELECT "XGB_Tree_3"."KEY" AS "KEY", "XGB_Tree_3"."Estimator" AS "Estimator" 
FROM "XGB_Tree_3" UNION ALL SELECT "XGB_Tree_4"."KEY" AS "KEY", "XGB_Tree_4"."Estimator" AS "Estimator" 
FROM "XGB_Tree_4" UNION ALL SELECT "XGB_Tree_5"."KEY" AS "KEY", "XGB_Tree_5"."Estimator" AS "Estimator" 
FROM "XGB_Tree_5" UNION ALL SELECT "XGB_Tree_6"."KEY" AS "KEY", "XGB_Tree_6"."Estimator" AS "Estimator" 
FROM "XGB_Tree_6" UNION ALL SELECT "XGB_Tree_7"."KEY" AS "KEY", "XGB_Tree_7"."Estimator" AS "Estimator" 
FROM "XGB_Tree_7" UNION ALL SELECT "XGB_Tree_8"."KEY" AS "KEY", "XGB_Tree_8"."Estimator" AS "Estimator" 
FROM "XGB_Tree_8" UNION ALL SELECT "XGB_Tree_9"."KEY" AS "KEY", "XGB_Tree_9"."Estimator" AS "Estimator" 
FROM "XGB_Tree_9") AS ensemble_score_union), 
"XGB_Sum_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", sum("Score_Union_CTE"."Estimator") AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T")
 SELECT "XGB_Sum_Scores"."KEY" AS "KEY", "XGB_Sum_Scores"."Estimator" + 0.5 AS "Estimator" 
FROM "XGB_Sum_Scores"