-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.48648887872695923) THEN CASE WHEN ("ADS"."Feature_5" <= -0.6670668125152588) THEN CASE WHEN ("ADS"."Feature_5" <= -0.8804326057434082) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_8" <= -0.10979260504245758) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_4" <= -1.1975512504577637) THEN CASE WHEN ("ADS"."Feature_5" <= 0.10777395963668823) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.3104289174079895) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 9 AS count, 3 AS depth, 2 AS parent_id, -208.7780451708557 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, -437.3409386784606 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 23 AS count, 3 AS depth, 5 AS parent_id, -113.60421644601387 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 15 AS count, 3 AS depth, 5 AS parent_id, 122.45884789399581 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -309.90060671962567 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -32.15578897857857 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 8 AS count, 3 AS depth, 12 AS parent_id, 61.439924831450156 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 18 AS count, 3 AS depth, 12 AS parent_id, 231.09071528701512 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"GB_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.48648887872695923) THEN CASE WHEN ("ADS"."Feature_7" <= 0.48319584131240845) THEN CASE WHEN ("ADS"."Feature_1" <= -1.1535027027130127) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_8" <= -0.1374099999666214) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_4" <= -1.1975512504577637) THEN CASE WHEN ("ADS"."Feature_5" <= 0.10777395963668823) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.3104289174079895) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS count, 3 AS depth, 2 AS parent_id, -326.5091064084041 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 31 AS count, 3 AS depth, 2 AS parent_id, -98.85523416498395 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS count, 3 AS depth, 5 AS parent_id, -87.44714659587862 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 9 AS count, 3 AS depth, 5 AS parent_id, 173.77310999517758 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -278.9105460476631 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -28.94021008072071 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 8 AS count, 3 AS depth, 12 AS parent_id, 55.29593234830514 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 18 AS count, 3 AS depth, 12 AS parent_id, 207.98164375831354 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"GB_Tree_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.48648887872695923) THEN CASE WHEN ("ADS"."Feature_5" <= -0.6670668125152588) THEN CASE WHEN ("ADS"."Feature_5" <= -0.8804326057434082) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_8" <= -0.18419554829597473) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_4" <= -1.1975512504577637) THEN CASE WHEN ("ADS"."Feature_5" <= 0.10777395963668823) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= -0.19500726461410522) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 9 AS count, 3 AS depth, 2 AS parent_id, -176.11170265107646 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, -368.5443965778881 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 22 AS count, 3 AS depth, 5 AS parent_id, -96.0390013850018 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 16 AS count, 3 AS depth, 5 AS parent_id, 99.38716020637538 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -251.0194914428968 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -26.04618907264864 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 12 AS count, 3 AS depth, 12 AS parent_id, 75.1277990616216 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 14 AS count, 3 AS depth, 12 AS parent_id, 204.70712521807272 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"GB_Tree_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= 1.377770185470581) THEN CASE WHEN ("ADS"."Feature_5" <= -0.6693825721740723) THEN CASE WHEN ("ADS"."Feature_1" <= -0.07982142269611359) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_8" <= -0.1578926146030426) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_0" <= -1.5720696449279785) THEN 9 ELSE CASE WHEN ("ADS"."Feature_8" <= 1.8881685733795166) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 12 AS count, 3 AS depth, 2 AS parent_id, -219.68151785911093 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, 1.5378845252896032 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 31 AS count, 3 AS depth, 5 AS parent_id, -63.12781904445371 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 26 AS count, 3 AS depth, 5 AS parent_id, 105.11332453399308 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 2 AS depth, 8 AS parent_id, 50.921431639148395 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS count, 3 AS depth, 10 AS parent_id, 228.02920133836216 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS count, 3 AS depth, 10 AS parent_id, 332.2565374483745 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
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
 SELECT "GradBoost_Sum_Scores"."KEY" AS "KEY", 26.4058527307 + 0.1 * "GradBoost_Sum_Scores"."Estimator" AS "Estimator" 
FROM "GradBoost_Sum_Scores"