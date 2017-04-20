-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.0901570728042 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.061552835555 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.000989641976103 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0601464163812 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.00758962273607 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.00802413621375 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.0155110204253 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -0.241132486724 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.183184186242 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.136948419103 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - -0.0901570728042) / 1.25478280502 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.061552835555) / 0.985047593521 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.000989641976103) / 0.904014139436 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.0601464163812) / 1.27489051488 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.00758962273607) / 0.957389282777 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.00802413621375) / 0.119843488084 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.0155110204253) / 1.74046808573 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - -0.241132486724) / 0.930973258962 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.183184186242) / 1.06784792486 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - -0.136948419103) / 1.0710990467 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.2675831615924835) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 1.2939964532852173) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 2.5407350063323975) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.32018232345581055) THEN 4 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.21203091740608215) THEN 6 ELSE 7 END END ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.12035419791936874) THEN 10 ELSE 11 END END ELSE 12 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'scaler_5' AS feature, -0.2675831615924835 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.47761194029850745 AS "Proba_0", -0.738956716591 AS "LogProba_0", 0.5223880597014925 AS "Proba_1", -0.649344557902 AS "LogProba_1", 1 AS "Decision" UNION ALL SELECT 1 AS node_id, 'scaler_9' AS feature, 1.2939964532852173 AS threshold, 36 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8888888888888888 AS "Proba_0", -0.117783035656 AS "LogProba_0", 0.1111111111111111 AS "Proba_1", -2.19722457734 AS "LogProba_1", 0 AS "Decision" UNION ALL SELECT 2 AS node_id, 'scaler_4' AS feature, 2.5407350063323975 AS threshold, 33 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9393939393939394 AS "Proba_0", -0.0625203569813 AS "LogProba_0", 0.06060606060606061 AS "Proba_1", -2.80336038091 AS "LogProba_1", 0 AS "Decision" UNION ALL SELECT 3 AS node_id, 'scaler_5' AS feature, -0.32018232345581055 AS threshold, 32 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.96875 AS "Proba_0", -0.0317486983146 AS "LogProba_0", 0.03125 AS "Proba_1", -3.4657359028 AS "LogProba_1", 0 AS "Decision" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 30 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision" UNION ALL SELECT 5 AS node_id, 'scaler_2' AS feature, -0.21203091740608215 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5 AS "Proba_0", -0.69314718056 AS "LogProba_0", 0.5 AS "Proba_1", -0.69314718056 AS "LogProba_1", 0 AS "Decision" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision" UNION ALL SELECT 9 AS node_id, 'scaler_4' AS feature, -0.12035419791936874 AS threshold, 3 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3333333333333333 AS "Proba_0", -1.09861228867 AS "LogProba_0", 0.6666666666666666 AS "Proba_1", -0.405465108108 AS "LogProba_1", 1 AS "Decision" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 31 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Decision" AS "Decision" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", "DT_Output"."Decision" AS "Decision" 
FROM "DT_Output"