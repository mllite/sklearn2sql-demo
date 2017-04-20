-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.84333333333 ELSE "ADS"."Feature_0" END AS impute_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.054 ELSE "ADS"."Feature_1" END AS impute_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.75866666667 ELSE "ADS"."Feature_2" END AS impute_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.19866666667 ELSE "ADS"."Feature_3" END AS impute_output_5 
FROM "INPUT_DATA" "ADS"), 
"CenteredDataForPCA" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".impute_output_2 - 5.84333333333 AS impute_output_2, "ADS_imp_1_OUT".impute_output_3 - 3.054 AS impute_output_3, "ADS_imp_1_OUT".impute_output_4 - 3.75866666667 AS impute_output_4, "ADS_imp_1_OUT".impute_output_5 - 1.19866666667 AS impute_output_5 
FROM "ADS_imp_1_OUT"), 
"ADS_ano_2_OUT" AS 
(SELECT "CenteredDataForPCA"."KEY" AS "KEY", "CenteredDataForPCA".impute_output_2 * 0.361589677381 + "CenteredDataForPCA".impute_output_3 * -0.0822688898922 + "CenteredDataForPCA".impute_output_4 * 0.856572105291 + "CenteredDataForPCA".impute_output_5 * 0.358843926248 AS anova_output_2, "CenteredDataForPCA".impute_output_2 * 0.656539883286 + "CenteredDataForPCA".impute_output_3 * 0.729712371326 + "CenteredDataForPCA".impute_output_4 * -0.175767403429 + "CenteredDataForPCA".impute_output_5 * -0.074706470135 AS anova_output_3, "CenteredDataForPCA".impute_output_2 * -0.580997279828 + "CenteredDataForPCA".impute_output_3 * 0.596418087938 + "CenteredDataForPCA".impute_output_4 * 0.072524075487 + "CenteredDataForPCA".impute_output_5 * 0.549060910727 AS anova_output_4, "CenteredDataForPCA".impute_output_2 * 0.317254547169 + "CenteredDataForPCA".impute_output_3 * -0.324094352418 + "CenteredDataForPCA".impute_output_4 * -0.47971898733 + "CenteredDataForPCA".impute_output_5 * 0.751120560381 AS anova_output_5 
FROM "CenteredDataForPCA"), 
"DT_node_lookup" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anova_output_2 <= -1.5537705421447754) THEN 1 ELSE CASE WHEN ("ADS_ano_2_OUT".anova_output_2 <= 1.1425471305847168) THEN 3 ELSE CASE WHEN ("ADS_ano_2_OUT".anova_output_2 <= 1.3832025527954102) THEN 5 ELSE 6 END END END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Proba_2" AS "Proba_2", "Values"."LogProba_2" AS "LogProba_2", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'anova_output_2' AS feature, -1.5537705421447754 AS threshold, 99 AS count, 0 AS depth, 0.3333333333333333 AS "Proba_0", -1.09861228867 AS "LogProba_0", 0.3333333333333333 AS "Proba_1", -1.09861228867 AS "LogProba_1", 0.3333333333333333 AS "Proba_2", -1.09861228867 AS "LogProba_2", 0 AS "Decision" FROM DUAL UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 33 AS count, 1 AS depth, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0 AS "Decision" FROM DUAL UNION ALL SELECT 2 AS node_id, 'anova_output_2' AS feature, 1.1425471305847168 AS threshold, 66 AS count, 1 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.5 AS "Proba_1", -0.69314718056 AS "LogProba_1", 0.5 AS "Proba_2", -0.69314718056 AS "LogProba_2", 1 AS "Decision" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS count, 2 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 1 AS "Decision" FROM DUAL UNION ALL SELECT 4 AS node_id, 'anova_output_2' AS feature, 1.3832025527954102 AS threshold, 38 AS count, 2 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.13157894736842105 AS "Proba_1", -2.02814824729 AS "LogProba_1", 0.868421052631579 AS "Proba_2", -0.14107859826 AS "LogProba_2", 2 AS "Decision" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.4444444444444444 AS "Proba_1", -0.810930216216 AS "LogProba_1", 0.5555555555555556 AS "Proba_2", -0.587786664902 AS "LogProba_2", 2 AS "Decision" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 3 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.034482758620689655 AS "Proba_1", -3.36729582999 AS "LogProba_1", 0.9655172413793104 AS "Proba_2", -0.0350913198113 AS "LogProba_2", 2 AS "Decision" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Proba_2" AS "Proba_2", "DT_node_data"."LogProba_2" AS "LogProba_2", "DT_node_data"."Decision" AS "Decision" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
calibration_base_estimator AS 
(SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."Proba_2" AS "Proba_2", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", "DT_Output"."LogProba_2" AS "LogProba_2", "DT_Output"."Decision" AS "Decision" 
FROM "DT_Output"), 
sigmoid_calibration_0 AS 
(SELECT calibration_base_estimator."KEY" AS "KEY", 1.0 / (1.0 + exp(-6.44571776382 * calibration_base_estimator."Proba_0" + 3.55534825953)) AS "Proba_0_0", 1.0 / (1.0 + exp(-6.44571776382 * calibration_base_estimator."Proba_1" + 3.55534825953)) AS "Proba_1_0", 1.0 / (1.0 + exp(-6.44571776382 * calibration_base_estimator."Proba_2" + 3.55534825953)) AS "Proba_2_0" 
FROM calibration_base_estimator), 
sigmoid_cte_0 AS 
(SELECT sigmoid_calibration_0."KEY" AS join_key_0, sigmoid_calibration_0."Proba_0_0" AS "Proba_0_0", sigmoid_calibration_0."Proba_1_0" AS "Proba_1_0", sigmoid_calibration_0."Proba_2_0" AS "Proba_2_0" 
FROM sigmoid_calibration_0), 
"DT_node_lookup_1" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anova_output_2 <= -1.5586481094360352) THEN 1 ELSE CASE WHEN ("ADS_ano_2_OUT".anova_output_2 <= 1.3146944046020508) THEN CASE WHEN ("ADS_ano_2_OUT".anova_output_4 <= 0.49563461542129517) THEN 4 ELSE 5 END ELSE CASE WHEN ("ADS_ano_2_OUT".anova_output_4 <= -0.3373417258262634) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Proba_2" AS "Proba_2", "Values"."LogProba_2" AS "LogProba_2", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'anova_output_2' AS feature, -1.5586481094360352 AS threshold, 99 AS count, 0 AS depth, 0.3333333333333333 AS "Proba_0", -1.09861228867 AS "LogProba_0", 0.3333333333333333 AS "Proba_1", -1.09861228867 AS "LogProba_1", 0.3333333333333333 AS "Proba_2", -1.09861228867 AS "LogProba_2", 0 AS "Decision" FROM DUAL UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 33 AS count, 1 AS depth, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0 AS "Decision" FROM DUAL UNION ALL SELECT 2 AS node_id, 'anova_output_2' AS feature, 1.3146944046020508 AS threshold, 66 AS count, 1 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.5 AS "Proba_1", -0.69314718056 AS "LogProba_1", 0.5 AS "Proba_2", -0.69314718056 AS "LogProba_2", 1 AS "Decision" FROM DUAL UNION ALL SELECT 3 AS node_id, 'anova_output_4' AS feature, 0.49563461542129517 AS threshold, 34 AS count, 2 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.9411764705882353 AS "Proba_1", -0.0606246218164 AS "LogProba_1", 0.058823529411764705 AS "Proba_2", -2.83321334406 AS "LogProba_2", 1 AS "Decision" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 33 AS count, 3 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.9696969696969697 AS "Proba_1", -0.0307716586668 AS "LogProba_1", 0.030303030303030304 AS "Proba_2", -3.49650756147 AS "LogProba_2", 1 AS "Decision" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 2 AS "Decision" FROM DUAL UNION ALL SELECT 6 AS node_id, 'anova_output_4' AS feature, -0.3373417258262634 AS threshold, 32 AS count, 2 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.03125 AS "Proba_1", -3.4657359028 AS "LogProba_1", 0.96875 AS "Proba_2", -0.0317486983146 AS "LogProba_2", 2 AS "Decision" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.25 AS "Proba_1", -1.38629436112 AS "LogProba_1", 0.75 AS "Proba_2", -0.287682072452 AS "LogProba_2", 2 AS "Decision" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS count, 3 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 2 AS "Decision" FROM DUAL) "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1"."Proba_0" AS "Proba_0", "DT_node_data_1"."LogProba_0" AS "LogProba_0", "DT_node_data_1"."Proba_1" AS "Proba_1", "DT_node_data_1"."LogProba_1" AS "LogProba_1", "DT_node_data_1"."Proba_2" AS "Proba_2", "DT_node_data_1"."LogProba_2" AS "LogProba_2", "DT_node_data_1"."Decision" AS "Decision" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
calibration_base_estimator_1 AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", "DT_Output_1"."Proba_0" AS "Proba_0", "DT_Output_1"."Proba_1" AS "Proba_1", "DT_Output_1"."Proba_2" AS "Proba_2", "DT_Output_1"."LogProba_0" AS "LogProba_0", "DT_Output_1"."LogProba_1" AS "LogProba_1", "DT_Output_1"."LogProba_2" AS "LogProba_2", "DT_Output_1"."Decision" AS "Decision" 
FROM "DT_Output_1"), 
sigmoid_calibration_1 AS 
(SELECT calibration_base_estimator_1."KEY" AS "KEY", 1.0 / (1.0 + exp(-3.69819133852 * calibration_base_estimator_1."Proba_0" + 2.2870245185)) AS "Proba_0_1", 1.0 / (1.0 + exp(-3.69819133852 * calibration_base_estimator_1."Proba_1" + 2.2870245185)) AS "Proba_1_1", 1.0 / (1.0 + exp(-3.69819133852 * calibration_base_estimator_1."Proba_2" + 2.2870245185)) AS "Proba_2_1" 
FROM calibration_base_estimator_1), 
sigmoid_cte_1 AS 
(SELECT sigmoid_calibration_1."KEY" AS join_key_1, sigmoid_calibration_1."Proba_0_1" AS "Proba_0_1", sigmoid_calibration_1."Proba_1_1" AS "Proba_1_1", sigmoid_calibration_1."Proba_2_1" AS "Proba_2_1" 
FROM sigmoid_calibration_1), 
"DT_node_lookup_2" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anova_output_2 <= -1.475272536277771) THEN 1 ELSE CASE WHEN ("ADS_ano_2_OUT".anova_output_2 <= 1.1571691036224365) THEN CASE WHEN ("ADS_ano_2_OUT".anova_output_4 <= 0.5032649040222168) THEN 4 ELSE 5 END ELSE CASE WHEN ("ADS_ano_2_OUT".anova_output_2 <= 1.5713317394256592) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Proba_2" AS "Proba_2", "Values"."LogProba_2" AS "LogProba_2", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'anova_output_2' AS feature, -1.475272536277771 AS threshold, 102 AS count, 0 AS depth, 0.3333333333333333 AS "Proba_0", -1.09861228867 AS "LogProba_0", 0.3333333333333333 AS "Proba_1", -1.09861228867 AS "LogProba_1", 0.3333333333333333 AS "Proba_2", -1.09861228867 AS "LogProba_2", 0 AS "Decision" FROM DUAL UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 34 AS count, 1 AS depth, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0 AS "Decision" FROM DUAL UNION ALL SELECT 2 AS node_id, 'anova_output_2' AS feature, 1.1571691036224365 AS threshold, 68 AS count, 1 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.5 AS "Proba_1", -0.69314718056 AS "LogProba_1", 0.5 AS "Proba_2", -0.69314718056 AS "LogProba_2", 1 AS "Decision" FROM DUAL UNION ALL SELECT 3 AS node_id, 'anova_output_4' AS feature, 0.5032649040222168 AS threshold, 29 AS count, 2 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.9655172413793104 AS "Proba_1", -0.0350913198113 AS "LogProba_1", 0.034482758620689655 AS "Proba_2", -3.36729582999 AS "LogProba_2", 1 AS "Decision" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS count, 3 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 1 AS "Decision" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 2 AS "Decision" FROM DUAL UNION ALL SELECT 6 AS node_id, 'anova_output_2' AS feature, 1.5713317394256592 AS threshold, 39 AS count, 2 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.15384615384615385 AS "Proba_1", -1.8718021769 AS "LogProba_1", 0.8461538461538461 AS "Proba_2", -0.167054084663 AS "LogProba_2", 2 AS "Decision" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.42857142857142855 AS "Proba_1", -0.847297860387 AS "LogProba_1", 0.5714285714285714 AS "Proba_2", -0.559615787935 AS "LogProba_2", 2 AS "Decision" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 25 AS count, 3 AS depth, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 2 AS "Decision" FROM DUAL) "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2"."Proba_0" AS "Proba_0", "DT_node_data_2"."LogProba_0" AS "LogProba_0", "DT_node_data_2"."Proba_1" AS "Proba_1", "DT_node_data_2"."LogProba_1" AS "LogProba_1", "DT_node_data_2"."Proba_2" AS "Proba_2", "DT_node_data_2"."LogProba_2" AS "LogProba_2", "DT_node_data_2"."Decision" AS "Decision" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
calibration_base_estimator_2 AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", "DT_Output_2"."Proba_0" AS "Proba_0", "DT_Output_2"."Proba_1" AS "Proba_1", "DT_Output_2"."Proba_2" AS "Proba_2", "DT_Output_2"."LogProba_0" AS "LogProba_0", "DT_Output_2"."LogProba_1" AS "LogProba_1", "DT_Output_2"."LogProba_2" AS "LogProba_2", "DT_Output_2"."Decision" AS "Decision" 
FROM "DT_Output_2"), 
sigmoid_calibration_2 AS 
(SELECT calibration_base_estimator_2."KEY" AS "KEY", 1.0 / (1.0 + exp(-6.77172627178 * calibration_base_estimator_2."Proba_0" + 3.25426780529)) AS "Proba_0_2", 1.0 / (1.0 + exp(-6.77172627178 * calibration_base_estimator_2."Proba_1" + 3.25426780529)) AS "Proba_1_2", 1.0 / (1.0 + exp(-6.77172627178 * calibration_base_estimator_2."Proba_2" + 3.25426780529)) AS "Proba_2_2" 
FROM calibration_base_estimator_2), 
sigmoid_cte_2 AS 
(SELECT sigmoid_calibration_2."KEY" AS join_key_2, sigmoid_calibration_2."Proba_0_2" AS "Proba_0_2", sigmoid_calibration_2."Proba_1_2" AS "Proba_1_2", sigmoid_calibration_2."Proba_2_2" AS "Proba_2_2" 
FROM sigmoid_calibration_2), 
"Calibration_Join_CTE" AS 
(SELECT sigmoid_cte_0.join_key_0 AS join_key_0, sigmoid_cte_0."Proba_0_0" AS "Proba_0_0", sigmoid_cte_0."Proba_1_0" AS "Proba_1_0", sigmoid_cte_0."Proba_2_0" AS "Proba_2_0", sigmoid_cte_1.join_key_1 AS join_key_1, sigmoid_cte_1."Proba_0_1" AS "Proba_0_1", sigmoid_cte_1."Proba_1_1" AS "Proba_1_1", sigmoid_cte_1."Proba_2_1" AS "Proba_2_1", sigmoid_cte_2.join_key_2 AS join_key_2, sigmoid_cte_2."Proba_0_2" AS "Proba_0_2", sigmoid_cte_2."Proba_1_2" AS "Proba_1_2", sigmoid_cte_2."Proba_2_2" AS "Proba_2_2" 
FROM sigmoid_cte_0 LEFT OUTER JOIN sigmoid_cte_1 ON sigmoid_cte_0.join_key_0 = sigmoid_cte_1.join_key_1 LEFT OUTER JOIN sigmoid_cte_2 ON sigmoid_cte_2.join_key_2 = sigmoid_cte_1.join_key_1), 
"Avg_Proba_CTE" AS 
(SELECT "Calibration_Join_CTE".join_key_0 AS "KEY", ("Calibration_Join_CTE"."Proba_0_0" + "Calibration_Join_CTE"."Proba_0_1" + "Calibration_Join_CTE"."Proba_0_2") / 3 AS "AvgProba_0", ("Calibration_Join_CTE"."Proba_1_0" + "Calibration_Join_CTE"."Proba_1_1" + "Calibration_Join_CTE"."Proba_1_2") / 3 AS "AvgProba_1", ("Calibration_Join_CTE"."Proba_2_0" + "Calibration_Join_CTE"."Proba_2_1" + "Calibration_Join_CTE"."Proba_2_2") / 3 AS "AvgProba_2" 
FROM "Calibration_Join_CTE"), 
orig_cte AS 
(SELECT "Avg_Proba_CTE"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", "Avg_Proba_CTE"."AvgProba_0" / ("Avg_Proba_CTE"."AvgProba_0" + "Avg_Proba_CTE"."AvgProba_1" + "Avg_Proba_CTE"."AvgProba_2") AS "Proba_0", "Avg_Proba_CTE"."AvgProba_1" / ("Avg_Proba_CTE"."AvgProba_0" + "Avg_Proba_CTE"."AvgProba_1" + "Avg_Proba_CTE"."AvgProba_2") AS "Proba_1", "Avg_Proba_CTE"."AvgProba_2" / ("Avg_Proba_CTE"."AvgProba_0" + "Avg_Proba_CTE"."AvgProba_1" + "Avg_Proba_CTE"."AvgProba_2") AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "Decision" 
FROM "Avg_Proba_CTE"), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."Decision" AS "Decision", (SELECT max(score_class_union."LogProba") AS max_1 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_LogProba", (SELECT max(score_class_union."Proba") AS max_2 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Proba", (SELECT max(score_class_union."Score") AS max_3 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Score" 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max."max_LogProba" = score_class_union."LogProba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max."max_Proba" = score_class_union."Proba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max."max_Score" = score_class_union."Score" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Score" 
FROM score_max)
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_2", arg_max_cte."arg_max_Proba" AS "Decision" 
FROM arg_max_cte