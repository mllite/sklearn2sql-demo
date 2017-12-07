-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.7912812221 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.967283308 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.531000909998 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.13996715205 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman2 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 43.7912812221) / 26.0356235762 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 945.967283308) / 461.455276615 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 0.531000909998) / 0.290186328214 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 6.13996715205) / 3.07291724256 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.017649224027991295) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.9838693141937256) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.4309000968933105) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.1041902303695679) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.047109298408031464) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.8755245804786682) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.9779741168022156) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 10 AS "count", 3 AS depth, 2 AS parent_id, -440.7436530554128 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 7 AS "count", 3 AS depth, 2 AS parent_id, -300.4881185327728 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 14 AS "count", 3 AS depth, 5 AS parent_id, -252.2198116624816 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS "count", 3 AS depth, 5 AS parent_id, 185.22544338794856 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 10 AS "count", 3 AS depth, 9 AS parent_id, -269.85383485627165 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 12 AS "count", 3 AS depth, 9 AS parent_id, 99.6071474783419 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 15 AS "count", 3 AS depth, 12 AS parent_id, 361.14063776512046 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 8 AS "count", 3 AS depth, 12 AS parent_id, 673.3964952940365 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"GB_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.017649224027991295) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.9838693141937256) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.4309000968933105) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.1041902303695679) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.13761106133460999) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.8755245804786682) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.5316546559333801) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 10 AS "count", 3 AS depth, 2 AS parent_id, -396.6692877498715 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 7 AS "count", 3 AS depth, 2 AS parent_id, -270.4393066794955 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 14 AS "count", 3 AS depth, 5 AS parent_id, -226.99783049623343 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS "count", 3 AS depth, 5 AS parent_id, 166.70289904915367 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 10 AS "count", 3 AS depth, 9 AS parent_id, -242.86845137064444 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 7 AS "count", 3 AS depth, 9 AS parent_id, 39.58261290399929 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 16 AS "count", 3 AS depth, 12 AS parent_id, 245.43746079172746 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 12 AS "count", 3 AS depth, 12 AS parent_id, 549.6277421430539 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1"."count" AS "count", "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"GB_Tree_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.017649224027991295) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.9838693141937256) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.4309000968933105) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.1041902303695679) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.047109298408031464) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.8755245804786682) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.9779741168022156) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 10 AS "count", 3 AS depth, 2 AS parent_id, -357.0023589748843 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 7 AS "count", 3 AS depth, 2 AS parent_id, -243.39537601154595 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 14 AS "count", 3 AS depth, 5 AS parent_id, -204.2980474466101 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS "count", 3 AS depth, 5 AS parent_id, 150.03260914423825 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 10 AS "count", 3 AS depth, 9 AS parent_id, -218.58160623357998 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 12 AS "count", 3 AS depth, 9 AS parent_id, 77.11088611145244 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 15 AS "count", 3 AS depth, 12 AS parent_id, 284.259346237365 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 8 AS "count", 3 AS depth, 12 AS parent_id, 566.3035856178938 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2"."count" AS "count", "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"GB_Tree_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.017649224027991295) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.9838693141937256) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.4309000968933105) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.022104963660240173) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.2821004390716553) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.3361194133758545) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.5316546559333801) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 10 AS "count", 3 AS depth, 2 AS parent_id, -321.30212307739595 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 7 AS "count", 3 AS depth, 2 AS parent_id, -219.05583841039137 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 9 AS "count", 3 AS depth, 5 AS parent_id, -246.0121888664979 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 9 AS "count", 3 AS depth, 5 AS parent_id, 20.007966098939093 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 6 AS "count", 3 AS depth, 9 AS parent_id, -253.1177525169952 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 8 AS "count", 3 AS depth, 9 AS parent_id, -65.05519982719866 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 19 AS "count", 3 AS depth, 12 AS parent_id, 175.6603954929661 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 12 AS "count", 3 AS depth, 12 AS parent_id, 456.8375586589945 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
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
 SELECT "GradBoost_Sum_Scores"."KEY" AS "KEY", 499.092884465 + 0.1 * "GradBoost_Sum_Scores"."Estimator" AS "Estimator" 
FROM "GradBoost_Sum_Scores"