-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.7912812221 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.967283308 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.531000909998 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.13996715205 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman2 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 43.7912812221) / 26.0356235762 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 945.967283308) / 461.455276615 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 0.531000909998) / 0.290186328214 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 6.13996715205) / 3.07291724256 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.1482173353433609) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.128638505935669) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.4309000968933105) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.0598863363265991) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.09475763142108917) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.4582001566886902) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.33256804943084717) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS "count", 3 AS depth, 2 AS parent_id, 64.45369065255933 AS "Estimator" FROM rdb$database UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS "count", 3 AS depth, 2 AS parent_id, 202.28209039774268 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS "count", 3 AS depth, 5 AS parent_id, 299.2743124225056 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS "count", 3 AS depth, 5 AS parent_id, 623.5052580108661 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS "count", 3 AS depth, 9 AS parent_id, 154.48498448216702 AS "Estimator" FROM rdb$database UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS "count", 3 AS depth, 9 AS parent_id, 587.5278729144649 AS "Estimator" FROM rdb$database UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS "count", 3 AS depth, 12 AS parent_id, 672.6347380054439 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS "count", 3 AS depth, 12 AS parent_id, 1069.6801245266563 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"AdaBoost_Estim_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator", 0.348813479781 AS "Weight", 0 AS est_index 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.13761106133460999) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.11010892689228058) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.27896609902381897) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.7437447309494019) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.5718052387237549) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.5346832275390625) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.5360115766525269) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS "count", 3 AS depth, 2 AS parent_id, 216.82967879019387 AS "Estimator" FROM rdb$database UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS "count", 3 AS depth, 2 AS parent_id, 81.00036759616331 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS "count", 3 AS depth, 5 AS parent_id, 264.5753460987517 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS "count", 3 AS depth, 5 AS parent_id, 546.1890496395341 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS "count", 3 AS depth, 9 AS parent_id, 229.15913713796215 AS "Estimator" FROM rdb$database UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS "count", 3 AS depth, 9 AS parent_id, 520.6117294724178 AS "Estimator" FROM rdb$database UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 38 AS "count", 3 AS depth, 12 AS parent_id, 852.044079581605 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS "count", 3 AS depth, 12 AS parent_id, 1375.101694218316 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1"."count" AS "count", "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"AdaBoost_Estim_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator", 0.230563230919 AS "Weight", 1 AS est_index 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.45993202924728394) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.893553614616394) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.9191882014274597) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.030537530779838562) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.6325141787528992) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.211948037147522) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.8745283484458923) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS "count", 3 AS depth, 2 AS parent_id, 87.95940899385482 AS "Estimator" FROM rdb$database UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS "count", 3 AS depth, 2 AS parent_id, 217.97307207934023 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS "count", 3 AS depth, 5 AS parent_id, 456.84183869251734 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS "count", 3 AS depth, 5 AS parent_id, 262.27001215911247 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS "count", 3 AS depth, 9 AS parent_id, 254.19291276653803 AS "Estimator" FROM rdb$database UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS "count", 3 AS depth, 9 AS parent_id, 17.512631595279426 AS "Estimator" FROM rdb$database UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 34 AS "count", 3 AS depth, 12 AS parent_id, 749.325459238228 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS "count", 3 AS depth, 12 AS parent_id, 1106.961558761814 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2"."count" AS "count", "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"AdaBoost_Estim_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator", 0.211537222562 AS "Weight", 2 AS est_index 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.9173357486724854) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.7634240388870239) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.4348924160003662) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.357338547706604) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.675052285194397) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.5515946745872498) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.06669343262910843) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS "count", 3 AS depth, 2 AS parent_id, 51.02105150973193 AS "Estimator" FROM rdb$database UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS "count", 3 AS depth, 2 AS parent_id, 219.73160142888457 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS "count", 3 AS depth, 5 AS parent_id, 257.1949901310189 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS "count", 3 AS depth, 5 AS parent_id, 709.5225260605212 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS "count", 3 AS depth, 9 AS parent_id, 451.9899115058162 AS "Estimator" FROM rdb$database UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS "count", 3 AS depth, 9 AS parent_id, 891.9116137909689 AS "Estimator" FROM rdb$database UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS "count", 3 AS depth, 12 AS parent_id, 1450.4501202950794 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS "count", 3 AS depth, 12 AS parent_id, 1310.3597486879787 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3"."count" AS "count", "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"AdaBoost_Estim_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator", 0.209086066738 AS "Weight", 3 AS est_index 
FROM "DT_Output_3"), 
"WeightedEstimators" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator", ensemble_score_union."Weight" AS "Weight", ensemble_score_union.est_index AS est_index 
FROM (SELECT "AdaBoost_Estim_0"."KEY" AS "KEY", "AdaBoost_Estim_0"."Estimator" AS "Estimator", "AdaBoost_Estim_0"."Weight" AS "Weight", "AdaBoost_Estim_0".est_index AS est_index 
FROM "AdaBoost_Estim_0" UNION ALL SELECT "AdaBoost_Estim_1"."KEY" AS "KEY", "AdaBoost_Estim_1"."Estimator" AS "Estimator", "AdaBoost_Estim_1"."Weight" AS "Weight", "AdaBoost_Estim_1".est_index AS est_index 
FROM "AdaBoost_Estim_1" UNION ALL SELECT "AdaBoost_Estim_2"."KEY" AS "KEY", "AdaBoost_Estim_2"."Estimator" AS "Estimator", "AdaBoost_Estim_2"."Weight" AS "Weight", "AdaBoost_Estim_2".est_index AS est_index 
FROM "AdaBoost_Estim_2" UNION ALL SELECT "AdaBoost_Estim_3"."KEY" AS "KEY", "AdaBoost_Estim_3"."Estimator" AS "Estimator", "AdaBoost_Estim_3"."Weight" AS "Weight", "AdaBoost_Estim_3".est_index AS est_index 
FROM "AdaBoost_Estim_3") AS ensemble_score_union), 
"Cumulative_Frequencies" AS 
(SELECT "CW"."KEY" AS "KEY", "CW"."Estimator" AS "Estimator", "CW"."Weight" AS "Weight", "CW".est_index AS est_index, "CW".cum_weight AS cum_weight 
FROM (SELECT u1."KEY" AS "KEY", u1."Estimator" AS "Estimator", u1."Weight" AS "Weight", u1.est_index AS est_index, sum(u2."Weight") AS cum_weight 
FROM "WeightedEstimators" AS u1, "WeightedEstimators" AS u2 
WHERE u1."Estimator" >= u2."Estimator" AND u1."KEY" = u2."KEY" GROUP BY u1."KEY", u1.est_index, u1."Estimator", u1."Weight") AS "CW"), 
"Quantiles" AS 
(SELECT "CW2"."KEY" AS "KEY", "CW2"."Quantile" AS "Quantile" 
FROM (SELECT "Cumulative_Frequencies"."KEY" AS "KEY", min("Cumulative_Frequencies"."Estimator") AS "Quantile" 
FROM "Cumulative_Frequencies" 
WHERE "Cumulative_Frequencies".cum_weight >= 0.5 GROUP BY "Cumulative_Frequencies"."KEY") AS "CW2")
 SELECT "Quantiles"."KEY" AS "KEY", "Quantiles"."Quantile" AS "Estimator" 
FROM "Quantiles"