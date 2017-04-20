-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.022637327592 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.252390509171 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -0.222225143821 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.390326028812 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.013553437978 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.324957868374 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0118427421827 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0525936305874 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.257148584129 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.157245855165 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - -0.022637327592) / 0.882707138513 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.252390509171) / 1.02973438524 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - -0.222225143821) / 1.34677049143 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - -0.390326028812) / 1.2772245761 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.013553437978) / 1.03791797091 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - -0.324957868374) / 1.59454668945 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.0118427421827) / 0.822563978455 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.0525936305874) / 1.0889092144 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.257148584129) / 0.941769533678 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.157245855165) / 0.849245933414 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.12897005677223206) THEN 1 ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'scaler_7' AS feature, -0.12897005677223206 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5522388059701493 AS "Proba_0", -0.593774706747 AS "LogProba_0", 0.4477611940298507 AS "Proba_1", -0.803495237729 AS "LogProba_1", 0 AS "Decision" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 37 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8918918918918918 AS "Proba_0", -0.114410351178 AS "LogProba_0", 0.10810810810810817 AS "Proba_1", -2.22462355152 AS "LogProba_1", 0 AS "Decision" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 30 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.1333333333333334 AS "Proba_0", -2.01490302054 AS "LogProba_0", 0.8666666666666666 AS "Proba_1", -0.143100843641 AS "LogProba_1", 1 AS "Decision") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Decision" AS "Decision" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"AdaBoost_Estim_0" AS 
(SELECT "DT_Output"."KEY" AS join_key_0, CAST(NULL AS FLOAT) AS "Score_0_0", "DT_Output"."Proba_0" AS "Proba_0_0", "DT_Output"."LogProba_0" AS "LogProba_0_0", CAST(NULL AS FLOAT) AS "Score_0_1", "DT_Output"."Proba_1" AS "Proba_0_1", "DT_Output"."LogProba_1" AS "LogProba_0_1", "DT_Output"."Decision" AS "Decision_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.7451612949371338) THEN 1 ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'scaler_10' AS feature, 0.7451612949371338 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.4999999999999998 AS "Proba_0", -0.69314718056 AS "LogProba_0", 0.5000000000000002 AS "Proba_1", -0.69314718056 AS "LogProba_1", 1 AS "Decision" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 54 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.32639650863445874 AS "Proba_0", -1.11964235253 AS "LogProba_0", 0.6736034913655412 AS "Proba_1", -0.395113632924 AS "LogProba_1", 1 AS "Decision" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8838496640494 AS "Proba_0", -0.123468294099 AS "LogProba_0", 0.11615033595059994 AS "Proba_1", -2.15286992738 AS "LogProba_1", 0 AS "Decision") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Proba_0" AS "Proba_0", "DT_node_data_1"."LogProba_0" AS "LogProba_0", "DT_node_data_1"."Proba_1" AS "Proba_1", "DT_node_data_1"."LogProba_1" AS "LogProba_1", "DT_node_data_1"."Decision" AS "Decision" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"AdaBoost_Estim_1" AS 
(SELECT "DT_Output_1"."KEY" AS join_key_1, CAST(NULL AS FLOAT) AS "Score_1_0", "DT_Output_1"."Proba_0" AS "Proba_1_0", "DT_Output_1"."LogProba_0" AS "LogProba_1_0", CAST(NULL AS FLOAT) AS "Score_1_1", "DT_Output_1"."Proba_1" AS "Proba_1_1", "DT_Output_1"."LogProba_1" AS "LogProba_1_1", "DT_Output_1"."Decision" AS "Decision_1" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.41878414154052734) THEN 1 ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'scaler_7' AS feature, -0.41878414154052734 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5000000000000001 AS "Proba_0", -0.69314718056 AS "LogProba_0", 0.4999999999999999 AS "Proba_1", -0.69314718056 AS "LogProba_1", 0 AS "Decision" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7558901648115337 AS "Proba_0", -0.279859197998 AS "LogProba_0", 0.24410983518846627 AS "Proba_1", -1.41013701076 AS "LogProba_1", 0 AS "Decision" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 38 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.293340315713295 AS "Proba_0", -1.22642185689 AS "LogProba_0", 0.706659684286705 AS "Proba_1", -0.347206080759 AS "LogProba_1", 1 AS "Decision") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Proba_0" AS "Proba_0", "DT_node_data_2"."LogProba_0" AS "LogProba_0", "DT_node_data_2"."Proba_1" AS "Proba_1", "DT_node_data_2"."LogProba_1" AS "LogProba_1", "DT_node_data_2"."Decision" AS "Decision" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"AdaBoost_Estim_2" AS 
(SELECT "DT_Output_2"."KEY" AS join_key_2, CAST(NULL AS FLOAT) AS "Score_2_0", "DT_Output_2"."Proba_0" AS "Proba_2_0", "DT_Output_2"."LogProba_0" AS "LogProba_2_0", CAST(NULL AS FLOAT) AS "Score_2_1", "DT_Output_2"."Proba_1" AS "Proba_2_1", "DT_Output_2"."LogProba_1" AS "LogProba_2_1", "DT_Output_2"."Decision" AS "Decision_2" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -1.1862297058105469) THEN 1 ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'scaler_9' AS feature, -1.1862297058105469 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5 AS "Proba_0", -0.69314718056 AS "LogProba_0", 0.5 AS "Proba_1", -0.69314718056 AS "LogProba_1", 0 AS "Decision" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.1306601759044679 AS "Proba_0", -2.03515540329 AS "LogProba_0", 0.869339824095532 AS "Proba_1", -0.140021178264 AS "LogProba_1", 1 AS "Decision" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 58 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.634794068287564 AS "Proba_0", -0.454454634596 AS "LogProba_0", 0.36520593171243604 AS "Proba_1", -1.00729388803 AS "LogProba_1", 0 AS "Decision") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Proba_0" AS "Proba_0", "DT_node_data_3"."LogProba_0" AS "LogProba_0", "DT_node_data_3"."Proba_1" AS "Proba_1", "DT_node_data_3"."LogProba_1" AS "LogProba_1", "DT_node_data_3"."Decision" AS "Decision" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"AdaBoost_Estim_3" AS 
(SELECT "DT_Output_3"."KEY" AS join_key_3, CAST(NULL AS FLOAT) AS "Score_3_0", "DT_Output_3"."Proba_0" AS "Proba_3_0", "DT_Output_3"."LogProba_0" AS "LogProba_3_0", CAST(NULL AS FLOAT) AS "Score_3_1", "DT_Output_3"."Proba_1" AS "Proba_3_1", "DT_Output_3"."LogProba_1" AS "LogProba_3_1", "DT_Output_3"."Decision" AS "Decision_3" 
FROM "DT_Output_3"), 
"AdaBoost_Join_CTE" AS 
(SELECT "AdaBoost_Estim_0".join_key_0 AS join_key_0, "AdaBoost_Estim_0"."Score_0_0" AS "Score_0_0", "AdaBoost_Estim_0"."Proba_0_0" AS "Proba_0_0", "AdaBoost_Estim_0"."LogProba_0_0" AS "LogProba_0_0", "AdaBoost_Estim_0"."Score_0_1" AS "Score_0_1", "AdaBoost_Estim_0"."Proba_0_1" AS "Proba_0_1", "AdaBoost_Estim_0"."LogProba_0_1" AS "LogProba_0_1", "AdaBoost_Estim_0"."Decision_0" AS "Decision_0", "AdaBoost_Estim_1".join_key_1 AS join_key_1, "AdaBoost_Estim_1"."Score_1_0" AS "Score_1_0", "AdaBoost_Estim_1"."Proba_1_0" AS "Proba_1_0", "AdaBoost_Estim_1"."LogProba_1_0" AS "LogProba_1_0", "AdaBoost_Estim_1"."Score_1_1" AS "Score_1_1", "AdaBoost_Estim_1"."Proba_1_1" AS "Proba_1_1", "AdaBoost_Estim_1"."LogProba_1_1" AS "LogProba_1_1", "AdaBoost_Estim_1"."Decision_1" AS "Decision_1", "AdaBoost_Estim_2".join_key_2 AS join_key_2, "AdaBoost_Estim_2"."Score_2_0" AS "Score_2_0", "AdaBoost_Estim_2"."Proba_2_0" AS "Proba_2_0", "AdaBoost_Estim_2"."LogProba_2_0" AS "LogProba_2_0", "AdaBoost_Estim_2"."Score_2_1" AS "Score_2_1", "AdaBoost_Estim_2"."Proba_2_1" AS "Proba_2_1", "AdaBoost_Estim_2"."LogProba_2_1" AS "LogProba_2_1", "AdaBoost_Estim_2"."Decision_2" AS "Decision_2", "AdaBoost_Estim_3".join_key_3 AS join_key_3, "AdaBoost_Estim_3"."Score_3_0" AS "Score_3_0", "AdaBoost_Estim_3"."Proba_3_0" AS "Proba_3_0", "AdaBoost_Estim_3"."LogProba_3_0" AS "LogProba_3_0", "AdaBoost_Estim_3"."Score_3_1" AS "Score_3_1", "AdaBoost_Estim_3"."Proba_3_1" AS "Proba_3_1", "AdaBoost_Estim_3"."LogProba_3_1" AS "LogProba_3_1", "AdaBoost_Estim_3"."Decision_3" AS "Decision_3" 
FROM "AdaBoost_Estim_0" LEFT OUTER JOIN "AdaBoost_Estim_1" ON "AdaBoost_Estim_0".join_key_0 = "AdaBoost_Estim_1".join_key_1 LEFT OUTER JOIN "AdaBoost_Estim_2" ON "AdaBoost_Estim_2".join_key_2 = "AdaBoost_Estim_1".join_key_1 LEFT OUTER JOIN "AdaBoost_Estim_3" ON "AdaBoost_Estim_3".join_key_3 = "AdaBoost_Estim_2".join_key_2), 
"AdaBoost_AVG_Scores_BN" AS 
(SELECT "AdaBoost_Join_CTE".join_key_0 AS "KEY", (1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_0_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_0_0") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_0_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_0_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_0_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_0_1") ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 + (1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_1_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_1_0") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_1_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_1_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_1_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_1_1") ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 + (1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_2_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_2_0") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_2_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_2_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_2_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_2_1") ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 + (1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_3_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_3_0") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_3_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_3_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_3_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_3_1") ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 AS "Score_0", 1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_0_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_0_0") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_0_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_0_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_0_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_0_1") ELSE -1.79769313486231e+308 END END) / 2) + 1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_1_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_1_0") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_1_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_1_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_1_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_1_1") ELSE -1.79769313486231e+308 END END) / 2) + 1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_2_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_2_0") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_2_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_2_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_2_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_2_1") ELSE -1.79769313486231e+308 END END) / 2) + 1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_3_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_3_0") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_3_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_3_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_3_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_3_1") ELSE -1.79769313486231e+308 END END) / 2) AS "Proba_0", (1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_0_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_0_1") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_0_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_0_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_0_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_0_1") ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 + (1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_1_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_1_1") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_1_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_1_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_1_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_1_1") ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 + (1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_2_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_2_1") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_2_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_2_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_2_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_2_1") ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 + (1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_3_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_3_1") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_3_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_3_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_3_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_3_1") ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 AS "Score_1", 1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_0_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_0_1") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_0_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_0_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_0_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_0_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_0_1") ELSE -1.79769313486231e+308 END END) / 2) + 1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_1_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_1_1") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_1_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_1_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_1_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_1_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_1_1") ELSE -1.79769313486231e+308 END END) / 2) + 1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_2_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_2_1") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_2_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_2_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_2_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_2_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_2_1") ELSE -1.79769313486231e+308 END END) / 2) + 1.0 * (CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_3_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_3_1") ELSE -1.79769313486231e+308 END END - (CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_0" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_0" IS NULL OR "AdaBoost_Join_CTE"."Proba_3_0" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_3_0") ELSE -1.79769313486231e+308 END END + CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_1" <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN ("AdaBoost_Join_CTE"."Proba_3_1" IS NULL OR "AdaBoost_Join_CTE"."Proba_3_1" > 0.0) THEN ln("AdaBoost_Join_CTE"."Proba_3_1") ELSE -1.79769313486231e+308 END END) / 2) AS "Proba_1" 
FROM "AdaBoost_Join_CTE"), 
"AdaBoost_AVG_Scores" AS 
(SELECT "AdaBoost_AVG_Scores_BN"."KEY" AS "KEY", "AdaBoost_AVG_Scores_BN"."Score_0" AS "Score_0", exp(("AdaBoost_AVG_Scores_BN"."Proba_0" / 4.0) / 1) / (exp(("AdaBoost_AVG_Scores_BN"."Proba_0" / 4.0) / 1) + exp(("AdaBoost_AVG_Scores_BN"."Proba_1" / 4.0) / 1)) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0", "AdaBoost_AVG_Scores_BN"."Score_1" AS "Score_1", exp(("AdaBoost_AVG_Scores_BN"."Proba_1" / 4.0) / 1) / (exp(("AdaBoost_AVG_Scores_BN"."Proba_0" / 4.0) / 1) + exp(("AdaBoost_AVG_Scores_BN"."Proba_1" / 4.0) / 1)) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1" 
FROM "AdaBoost_AVG_Scores_BN"), 
orig_cte AS 
(SELECT "AdaBoost_AVG_Scores"."KEY" AS "KEY", "AdaBoost_AVG_Scores"."Score_0" AS "Score_0", "AdaBoost_AVG_Scores"."Score_1" AS "Score_1", "AdaBoost_AVG_Scores"."Proba_0" AS "Proba_0", "AdaBoost_AVG_Scores"."Proba_1" AS "Proba_1", "AdaBoost_AVG_Scores"."LogProba_0" AS "LogProba_0", "AdaBoost_AVG_Scores"."LogProba_1" AS "LogProba_1", CAST(NULL AS FLOAT) AS "Decision" 
FROM "AdaBoost_AVG_Scores"), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", (SELECT max(score_class_union."LogProba") AS max_1 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_LogProba", (SELECT max(score_class_union."Proba") AS max_2 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Proba", (SELECT max(score_class_union."Score") AS max_3 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Score" 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max."max_LogProba" = score_class_union."LogProba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max."max_Proba" = score_class_union."Proba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max."max_Score" = score_class_union."Score" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Score" 
FROM score_max)
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte