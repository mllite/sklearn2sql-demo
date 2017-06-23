-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.10105706006288528) THEN CASE WHEN ("ADS"."Feature_2" <= 0.07914068549871445) THEN CASE WHEN ("ADS"."Feature_2" <= 0.05596163123846054) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_1" <= 255.7740478515625) THEN CASE WHEN ("ADS"."Feature_1" <= 173.25933837890625) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_0" <= 13.800018310546875) THEN 11 ELSE 12 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_2' AS feature, 0.10105706006288528 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.1546319456101628e-16 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_2' AS feature, 0.07914068549871445 AS threshold, 3 AS count, 1 AS depth, 0 AS parent_id, -0.3259799026591117 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_2' AS feature, 0.05596163123846054 AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, -0.18011581690214618 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -0.0755288890540664 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -0.28470274475022594 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 1 AS parent_id, -0.6177080741730427 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'Feature_1' AS feature, 255.7740478515625 AS threshold, 22 AS count, 1 AS depth, 0 AS parent_id, 0.04445180490806082 AS "Estimator" UNION ALL SELECT 7 AS node_id, 'Feature_1' AS feature, 173.25933837890625 AS threshold, 3 AS count, 2 AS depth, 6 AS parent_id, -0.10598529240538575 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 7 AS parent_id, 0.11034809299957482 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 7 AS parent_id, -0.21415198510786604 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'Feature_0' AS feature, 13.800018310546875 AS threshold, 19 AS count, 2 AS depth, 6 AS parent_id, 0.06820503079965765 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 10 AS parent_id, 0.13349861457773157 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, 10 AS parent_id, 0.04488589373605981 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"GB_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.10105706006288528) THEN CASE WHEN ("ADS"."Feature_2" <= 0.07914068549871445) THEN CASE WHEN ("ADS"."Feature_2" <= 0.05596163123846054) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_1" <= 255.7740478515625) THEN CASE WHEN ("ADS"."Feature_3" <= 8.262189865112305) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.37313270568847656) THEN 11 ELSE 12 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_2' AS feature, 0.10105706006288528 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.1546319456101628e-16 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_2' AS feature, 0.07914068549871445 AS threshold, 3 AS count, 1 AS depth, 0 AS parent_id, -0.2933819123932005 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_2' AS feature, 0.05596163123846054 AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, -0.1621042352119315 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -0.06797600014865979 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -0.25623247027520324 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 1 AS parent_id, -0.5559372667557385 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'Feature_1' AS feature, 255.7740478515625 AS threshold, 22 AS count, 1 AS depth, 0 AS parent_id, 0.04000662441725475 AS "Estimator" UNION ALL SELECT 7 AS node_id, 'Feature_3' AS feature, 8.262189865112305 AS threshold, 3 AS count, 2 AS depth, 6 AS parent_id, -0.09538676316484714 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 7 AS parent_id, -0.19273678659707938 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 7 AS parent_id, 0.09931328369961734 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'Feature_2' AS feature, 0.37313270568847656 AS threshold, 19 AS count, 2 AS depth, 6 AS parent_id, 0.061384527719691884 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 10 AS parent_id, -0.007697113219293783 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, 10 AS parent_id, 0.07980629863675473 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"GB_Tree_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.10105706006288528) THEN CASE WHEN ("ADS"."Feature_3" <= 4.412130355834961) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 1042.344482421875) THEN 4 ELSE 5 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 255.7740478515625) THEN CASE WHEN ("ADS"."Feature_1" <= 173.25933837890625) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_0" <= 13.800018310546875) THEN 11 ELSE 12 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_2' AS feature, 0.10105706006288528 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 6.217248937900877e-17 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_3' AS feature, 4.412130355834961 AS threshold, 3 AS count, 1 AS depth, 0 AS parent_id, -0.2640437211538804 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 1 AS parent_id, -0.5003435400801646 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'Feature_1' AS feature, 1042.344482421875 AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, -0.14589381169073834 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 3 AS parent_id, -0.23060922324768285 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 3 AS parent_id, -0.06117840013379383 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'Feature_1' AS feature, 255.7740478515625 AS threshold, 22 AS count, 1 AS depth, 0 AS parent_id, 0.036005961975529216 AS "Estimator" UNION ALL SELECT 7 AS node_id, 'Feature_1' AS feature, 173.25933837890625 AS threshold, 3 AS count, 2 AS depth, 6 AS parent_id, -0.0858480868483625 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 7 AS parent_id, 0.08938195532965554 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 7 AS parent_id, -0.17346310793737152 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'Feature_0' AS feature, 13.800018310546875 AS threshold, 19 AS count, 2 AS depth, 6 AS parent_id, 0.05524607494772265 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 10 AS parent_id, 0.11391819149340385 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, 10 AS parent_id, 0.03429174760997936 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"GB_Tree_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.10105706006288528) THEN CASE WHEN ("ADS"."Feature_0" <= 29.725467681884766) THEN CASE WHEN ("ADS"."Feature_3" <= 8.204108238220215) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_1" <= 255.7740478515625) THEN CASE WHEN ("ADS"."Feature_0" <= 35.447261810302734) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.37313270568847656) THEN 11 ELSE 12 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_2' AS feature, 0.10105706006288528 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.7763568394002505e-17 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 29.725467681884766 AS threshold, 3 AS count, 1 AS depth, 0 AS parent_id, -0.2376393490384924 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_3' AS feature, 8.204108238220215 AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, -0.13130443052166452 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -0.05506056012041438 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -0.20754830092291465 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 1 AS parent_id, -0.4503091860721482 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'Feature_1' AS feature, 255.7740478515625 AS threshold, 22 AS count, 1 AS depth, 0 AS parent_id, 0.03240536577797626 AS "Estimator" UNION ALL SELECT 7 AS node_id, 'Feature_0' AS feature, 35.447261810302734 AS threshold, 3 AS count, 2 AS depth, 6 AS parent_id, -0.0772632781635263 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 7 AS parent_id, 0.08044375979669005 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 7 AS parent_id, -0.15611679714363447 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'Feature_2' AS feature, 0.37313270568847656 AS threshold, 19 AS count, 2 AS depth, 6 AS parent_id, 0.04972146745295034 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 10 AS parent_id, -0.012347237755447993 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, 10 AS parent_id, 0.06627312217518991 AS "Estimator") AS "Values"), 
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
 SELECT "GradBoost_Sum_Scores"."KEY" AS "KEY", 1.4256189972 + 0.1 * "GradBoost_Sum_Scores"."Estimator" AS "Estimator" 
FROM "GradBoost_Sum_Scores"