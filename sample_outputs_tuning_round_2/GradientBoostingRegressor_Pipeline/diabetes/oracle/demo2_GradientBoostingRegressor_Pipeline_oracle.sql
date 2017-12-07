-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.000268693206665 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.000723958058064 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.000728071982559 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.00101356522108 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.000976358073288 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.00176438082423 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.00165128154506 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.00139055019834 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.00127264825481 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.00103442500568 ELSE "ADS"."Feature_9" END AS impter_11 
FROM diabetes "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.000268693206665) / 0.0472420958365 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.000723958058064) / 0.047605576685 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.000728071982559) / 0.0469359114394 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.00101356522108) / 0.048335271949 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.000976358073288) / 0.0480507620097 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.00176438082423) / 0.0480608087315 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.00165128154506) / 0.0462024037804 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.00139055019834) / 0.0473630930405 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.00127264825481) / 0.0458928613136 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.00103442500568) / 0.0477615851957 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.012311428785324097) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.11634615063667297) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 2.3076553344726562) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.77559494972229) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 1.1726664304733276) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.752074122428894) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.43114182353019714) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
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
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.0314108207821846) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.11634615063667297) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 0.4908640384674072) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.77559494972229) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.9889585971832275) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.4807044267654419) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.43114182353019714) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
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
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.23324185609817505) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.11634615063667297) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 2.3076553344726562) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.7618405818939209) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 1.4482282400131226) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.752074122428894) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.43114182353019714) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
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
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.012311428785324097) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.11634615063667297) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 0.4908640384674072) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -0.434483140707016) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.9889585971832275) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.4807044267654419) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.77745521068573) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
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