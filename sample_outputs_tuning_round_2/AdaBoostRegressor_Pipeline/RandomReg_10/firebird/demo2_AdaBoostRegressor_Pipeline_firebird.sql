-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.166809472981 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.163512719944 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.19149292241 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0583848447531 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.0993320516212 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.212931216605 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.04786556869 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0507869895908 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.191319922591 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.199404056775 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.166809472981) / 1.0289835997 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - -0.163512719944) / 0.991581253505 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.19149292241) / 0.932114762915 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.0583848447531) / 1.08557293295 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - -0.0993320516212) / 1.07439044129 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - 0.212931216605) / 0.935807438189 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.04786556869) / 1.13635740906 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.0507869895908) / 0.97254574601 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - -0.191319922591) / 1.14159746779 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - 0.199404056775) / 0.882245682091 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.9213013648986816) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.9911112785339355) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -1.0691639184951782) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.07575029134750366) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.7206276059150696) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.0988624095916748) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS "count", 3 AS depth, 2 AS parent_id, -258.78967128195916 AS "Estimator" FROM rdb$database UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, -459.030670753418 AS "Estimator" FROM rdb$database UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS "count", 2 AS depth, 1 AS parent_id, 8.923656244969493 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 33 AS "count", 3 AS depth, 7 AS parent_id, -33.68318489379449 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS "count", 3 AS depth, 7 AS parent_id, 331.1703574482745 AS "Estimator" FROM rdb$database UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS "count", 3 AS depth, 10 AS parent_id, -67.71218597426643 AS "Estimator" FROM rdb$database UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 32 AS "count", 3 AS depth, 10 AS parent_id, 237.42844372247995 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"AdaBoost_Estim_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator", 0.168623921614 AS "Weight", 0 AS est_index 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.3164803087711334) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.15121608972549438) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.11104751378297806) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.3991467952728271) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.029281165450811386) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.08869194984436035) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.4962504506111145) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS "count", 3 AS depth, 2 AS parent_id, -275.3140245822599 AS "Estimator" FROM rdb$database UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS "count", 3 AS depth, 2 AS parent_id, -51.978296973080745 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS "count", 3 AS depth, 5 AS parent_id, -5.071250740277515 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS "count", 3 AS depth, 5 AS parent_id, 233.69717607109223 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS "count", 3 AS depth, 9 AS parent_id, -3.5129502029338977 AS "Estimator" FROM rdb$database UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS "count", 3 AS depth, 9 AS parent_id, 188.04997667771173 AS "Estimator" FROM rdb$database UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS "count", 3 AS depth, 12 AS parent_id, 140.41860719645143 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 20 AS "count", 3 AS depth, 12 AS parent_id, 315.516499408182 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1"."count" AS "count", "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"AdaBoost_Estim_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator", 0.328600572396 AS "Weight", 1 AS est_index 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.3088432848453522) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.7092622518539429) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 1.157738447189331) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.43917304277420044) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.05833066627383232) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -0.2454001009464264) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.5722590684890747) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS "count", 3 AS depth, 2 AS parent_id, -275.71317374560243 AS "Estimator" FROM rdb$database UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS "count", 3 AS depth, 2 AS parent_id, -67.71218597426643 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS "count", 3 AS depth, 5 AS parent_id, 55.116699007890816 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS "count", 3 AS depth, 5 AS parent_id, -155.93422584455163 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS "count", 3 AS depth, 9 AS parent_id, -147.53184050315582 AS "Estimator" FROM rdb$database UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS "count", 3 AS depth, 9 AS parent_id, 58.68288409772242 AS "Estimator" FROM rdb$database UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS "count", 3 AS depth, 12 AS parent_id, 18.952518951698984 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 20 AS "count", 3 AS depth, 12 AS parent_id, 306.8298344890547 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2"."count" AS "count", "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"AdaBoost_Estim_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator", 0.249627828332 AS "Weight", 2 AS est_index 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.17482367157936096) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.29165011644363403) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.9983952641487122) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.07795177400112152) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.8952888250350952) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 1.7259516716003418) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.9687913656234741) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS "count", 3 AS depth, 2 AS parent_id, -372.6097926421876 AS "Estimator" FROM rdb$database UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS "count", 3 AS depth, 2 AS parent_id, -179.49806119548728 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS "count", 3 AS depth, 5 AS parent_id, 0.03464252446700726 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS "count", 3 AS depth, 5 AS parent_id, 148.5689639947692 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS "count", 3 AS depth, 9 AS parent_id, -176.44474023597397 AS "Estimator" FROM rdb$database UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS "count", 3 AS depth, 9 AS parent_id, 235.3201708856319 AS "Estimator" FROM rdb$database UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS "count", 3 AS depth, 12 AS parent_id, 115.83390653339242 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS "count", 3 AS depth, 12 AS parent_id, 330.130452304522 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3"."count" AS "count", "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"AdaBoost_Estim_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator", 0.253147677658 AS "Weight", 3 AS est_index 
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