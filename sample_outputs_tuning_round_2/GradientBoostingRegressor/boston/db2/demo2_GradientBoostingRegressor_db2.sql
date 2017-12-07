-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 7.010499954223633) THEN CASE WHEN ("ADS"."Feature_12" <= 14.780000686645508) THEN CASE WHEN ("ADS"."Feature_5" <= 6.541999816894531) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6030000448226929) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_8" <= 16.0) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_8" <= 16.0) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 170 AS "count", 3 AS depth, 2 AS parent_id, -0.8483721607454837 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 57 AS "count", 3 AS depth, 2 AS parent_id, 5.778934340802502 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 47 AS "count", 3 AS depth, 5 AS parent_id, -4.564066779018324 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 80 AS "count", 3 AS depth, 5 AS parent_id, -9.700210396039603 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 21 AS "count", 3 AS depth, 9 AS parent_id, 11.0210396039604 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 9 AS parent_id, -3.3122937293729344 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 25 AS "count", 3 AS depth, 12 AS parent_id, 23.381039603960392 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 12 AS parent_id, -0.6789603960396029 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"GB_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 6.824999809265137) THEN CASE WHEN ("ADS"."Feature_12" <= 14.805000305175781) THEN CASE WHEN ("ADS"."Feature_7" <= 1.384850025177002) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 5.781899929046631) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_4" <= 0.659000039100647) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 2.7422351837158203) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS "count", 3 AS depth, 2 AS parent_id, 21.815194157496244 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 204 AS "count", 3 AS depth, 2 AS parent_id, -0.2396463855716492 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 64 AS "count", 3 AS depth, 5 AS parent_id, -4.805447210491492 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 60 AS "count", 3 AS depth, 5 AS parent_id, -9.581208416719333 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 43 AS "count", 3 AS depth, 9 AS parent_id, 7.94163458537708 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 9 AS parent_id, -7.634800467546751 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 25 AS "count", 3 AS depth, 12 AS parent_id, 21.04293564356436 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 12 AS parent_id, -0.6110643564356408 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1"."count" AS "count", "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"GB_Tree_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 9.725000381469727) THEN CASE WHEN ("ADS"."Feature_5" <= 7.140999794006348) THEN CASE WHEN ("ADS"."Feature_7" <= 1.4849499464035034) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 19.850000381469727) THEN CASE WHEN ("ADS"."Feature_11" <= 174.31500244140625) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6030000448226929) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 2 AS parent_id, 25.103447187567056 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 125 AS "count", 3 AS depth, 2 AS parent_id, 2.484205273659576 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 14 AS "count", 3 AS depth, 5 AS parent_id, 10.139057899312366 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 26 AS "count", 3 AS depth, 5 AS parent_id, 18.18908054074639 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 16 AS "count", 3 AS depth, 9 AS parent_id, -7.359879756146922 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 160 AS "count", 3 AS depth, 9 AS parent_id, -2.4218652961991904 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 17 AS "count", 3 AS depth, 12 AS parent_id, -4.342721902787801 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 43 AS "count", 3 AS depth, 12 AS parent_id, -9.80502580423983 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2"."count" AS "count", "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"GB_Tree_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 7.864999771118164) THEN CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_5" <= 6.541999816894531) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_11" <= 361.92498779296875) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 14.805000305175781) THEN CASE WHEN ("ADS"."Feature_7" <= 1.2271499633789062) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 5.781899929046631) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 40 AS "count", 3 AS depth, 2 AS parent_id, 0.9564209312261512 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 60 AS "count", 3 AS depth, 2 AS parent_id, 6.484731479394312 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 5 AS parent_id, -2.3688659748667185 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 25 AS "count", 3 AS depth, 5 AS parent_id, 17.119734025133283 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS "count", 3 AS depth, 9 AS parent_id, 22.814012685528617 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 149 AS "count", 3 AS depth, 9 AS parent_id, -1.1245083937503437 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 64 AS "count", 3 AS depth, 12 AS parent_id, -3.8619717533611166 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 63 AS "count", 3 AS depth, 12 AS parent_id, -7.680560208782768 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3"."count" AS "count", "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"GB_Tree_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator" 
FROM (SELECT "GB_Tree_0_0"."KEY" AS "KEY", "GB_Tree_0_0"."Estimator" AS "Estimator" 
FROM "GB_Tree_0_0" UNION ALL SELECT "GB_Tree_1_0"."KEY" AS "KEY", "GB_Tree_1_0"."Estimator" AS "Estimator" 
FROM "GB_Tree_1_0" UNION ALL SELECT "GB_Tree_2_0"."KEY" AS "KEY", "GB_Tree_2_0"."Estimator" AS "Estimator" 
FROM "GB_Tree_2_0" UNION ALL SELECT "GB_Tree_3_0"."KEY" AS "KEY", "GB_Tree_3_0"."Estimator" AS "Estimator" 
FROM "GB_Tree_3_0") AS ensemble_score_union), 
"GradBoost_Sum_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", sum("Score_Union_CTE"."Estimator") AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T")
 SELECT "GradBoost_Sum_Scores"."KEY" AS "KEY", 22.578960396 + 0.1 * "GradBoost_Sum_Scores"."Estimator" AS "Estimator" 
FROM "GradBoost_Sum_Scores"