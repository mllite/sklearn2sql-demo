-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_387" < 0.24362143874168396) THEN 1 ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_387' AS feature, 0.24362143874168396 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 7.582586765289307 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, -15.733843803405762 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"XGB_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_180" < -0.5016933083534241) THEN 1 ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_180' AS feature, -0.5016933083534241 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 8.888289451599121 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, -13.067999839782715 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"XGB_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" < 0.011036199517548084) THEN 1 ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_214' AS feature, 0.011036199517548084 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, -11.85273551940918 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 9.891031265258789 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"XGB_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_412" < 0.36421263217926025) THEN 1 ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_412' AS feature, 0.36421263217926025 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, -11.114690780639648 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 9.534607887268066 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"XGB_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_234" < -0.24068111181259155) THEN 1 ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_234' AS feature, -0.24068111181259155 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, -14.677233695983887 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 5.9770402908325195 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"XGB_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_67" < -0.05566117540001869) THEN 1 ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_67' AS feature, -0.05566117540001869 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, -12.858057975769043 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 6.2794294357299805 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"XGB_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_180" < -0.5016933083534241) THEN 1 ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_180' AS feature, -0.5016933083534241 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 8.292862892150879 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, -10.284462928771973 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"XGB_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_456" < 0.5582361221313477) THEN 1 ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_456' AS feature, 0.5582361221313477 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, -9.528338432312012 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 9.361538887023926 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"XGB_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_296" < 0.354414165019989) THEN 1 ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_296' AS feature, 0.354414165019989 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, -8.951757431030273 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 8.971144676208496 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"XGB_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_387" < -0.0858854204416275) THEN 1 ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_387' AS feature, -0.0858854204416275 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 8.88745403289795 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, -8.61568832397461 AS "Estimator") AS "Values"), 
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