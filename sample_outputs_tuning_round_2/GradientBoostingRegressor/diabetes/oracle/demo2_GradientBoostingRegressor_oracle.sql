-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= 0.0007076415931805968) THEN CASE WHEN ("ADS"."Feature_2" <= 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_5" <= 0.11267216503620148) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.08361412584781647) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.05576823651790619) THEN CASE WHEN ("ADS"."Feature_3" <= 0.037365272641181946) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.022485405206680298) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 138 AS count, 3 AS depth, 2 AS parent_id, -56.26206018803645 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 98.92634560906515 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 5 AS parent_id, 147.92634560906515 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 37 AS count, 3 AS depth, 5 AS parent_id, 4.5749942577138 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 96 AS count, 3 AS depth, 9 AS parent_id, 10.468012275731821 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 40 AS count, 3 AS depth, 9 AS parent_id, 58.92634560906521 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 24 AS count, 3 AS depth, 12 AS parent_id, 122.05134560906521 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, 12 AS parent_id, 66.05134560906515 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"GB_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.00016888421669136733) THEN CASE WHEN ("ADS"."Feature_2" <= 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_6" <= 0.021027816459536552) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.08361412584781647) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.047145746648311615) THEN CASE WHEN ("ADS"."Feature_2" <= -0.021834230050444603) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.022485405206680298) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 72 AS count, 3 AS depth, 2 AS parent_id, -37.89909893573828 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 66 AS count, 3 AS depth, 2 AS parent_id, -63.205024129706885 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 5 AS parent_id, 133.13371104815863 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 37 AS count, 3 AS depth, 5 AS parent_id, 4.117494831942426 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 32 AS count, 3 AS depth, 9 AS parent_id, -14.908867076841354 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 96 AS count, 3 AS depth, 9 AS parent_id, 31.375443762530647 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, 12 AS parent_id, 108.54701233020995 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, 12 AS parent_id, 54.678457424970226 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"GB_Tree_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_2" <= 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_5" <= 0.11267216503620148) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.03625963628292084) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.06870198249816895) THEN CASE WHEN ("ADS"."Feature_3" <= 0.037365272641181946) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.022485405206680298) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 125 AS count, 3 AS depth, 2 AS parent_id, -49.766609329091665 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 92.82362094173246 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, 5 AS parent_id, 17.59555823856106 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 5 AS parent_id, -45.60956996656714 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 117 AS count, 3 AS depth, 9 AS parent_id, 7.324309607101877 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 51 AS count, 3 AS depth, 9 AS parent_id, 50.25051607768055 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, 12 AS parent_id, 110.4290098151377 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, 12 AS parent_id, 68.87188634151958 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"GB_Tree_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= 0.0007076415931805968) THEN CASE WHEN ("ADS"."Feature_2" <= 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_6" <= 0.021027816459536552) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_9" <= -0.019717179238796234) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.047145746648311615) THEN CASE WHEN ("ADS"."Feature_2" <= -0.021834230050444603) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.038333673030138016) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 73 AS count, 3 AS depth, 2 AS parent_id, -29.566777184999317 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 66 AS count, 3 AS depth, 2 AS parent_id, -52.40540745223855 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, 5 AS parent_id, -19.417554600564845 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 24 AS count, 3 AS depth, 5 AS parent_id, 20.648083697077226 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 32 AS count, 3 AS depth, 9 AS parent_id, -14.821133305970204 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 95 AS count, 3 AS depth, 9 AS parent_id, 26.37345823008113 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 32 AS count, 3 AS depth, 12 AS parent_id, 84.93432962632869 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 3 AS depth, 12 AS parent_id, 37.90132752479809 AS "Estimator" FROM DUAL) "Values"), 
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
FROM "GB_Tree_3_0") ensemble_score_union), 
"GradBoost_Sum_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", sum("Score_Union_CTE"."Estimator") AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") "T")
 SELECT "GradBoost_Sum_Scores"."KEY" AS "KEY", 154.073654391 + 0.1 * "GradBoost_Sum_Scores"."Estimator" AS "Estimator" 
FROM "GradBoost_Sum_Scores"