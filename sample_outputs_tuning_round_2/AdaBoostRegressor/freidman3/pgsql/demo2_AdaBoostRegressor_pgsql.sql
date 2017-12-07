-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "WeightedEstimators_0" AS 
(WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.20348544418811798) THEN CASE WHEN ("ADS"."Feature_1" <= 574.9090576171875) THEN CASE WHEN ("ADS"."Feature_3" <= 3.7317280769348145) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.025156566873192787) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 450.96368408203125) THEN CASE WHEN ("ADS"."Feature_2" <= 0.5044680237770081) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 42.91398620605469) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 0.7050714675464733 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 2 AS parent_id, 0.43001724369176697 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 5 AS parent_id, 0.6100168381304848 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, 5 AS parent_id, 1.2443297616327034 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, 1.4733555133692287 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, 9 AS parent_id, 1.1552266207505864 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, 12 AS parent_id, 1.5354636129407508 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 27 AS count, 3 AS depth, 12 AS parent_id, 1.4648826319981552 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"AdaBoost_Estim_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator", 0.229633445326 AS "Weight", 0 AS est_index 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.041584230959415436) THEN CASE WHEN ("ADS"."Feature_0" <= 39.704856872558594) THEN 2 ELSE 3 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.3052070736885071) THEN CASE WHEN ("ADS"."Feature_1" <= 516.2426147460938) THEN 6 ELSE 7 END ELSE CASE WHEN ("ADS"."Feature_0" <= 46.51478958129883) THEN 9 ELSE 10 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, 0.38342473185592096 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, 0.4848669214064692 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 5 AS parent_id, 0.5915392445044317 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 27 AS count, 3 AS depth, 5 AS parent_id, 1.2541519017473017 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, 8 AS parent_id, 1.5287311749770354 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 3 AS depth, 8 AS parent_id, 1.3679828024550929 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"AdaBoost_Estim_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator", 0.164615926013 AS "Weight", 1 AS est_index 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.041584230959415436) THEN CASE WHEN ("ADS"."Feature_1" <= 1445.20751953125) THEN CASE WHEN ("ADS"."Feature_0" <= 39.704856872558594) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_1" <= 766.9921875) THEN CASE WHEN ("ADS"."Feature_2" <= 0.056316666305065155) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.1915559023618698) THEN 11 ELSE 12 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 2 AS parent_id, 0.38342473185592096 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 0.4848669214064692 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 1 AS parent_id, 0.6100168381304848 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 7 AS parent_id, 0.3751675659770648 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 35 AS count, 3 AS depth, 7 AS parent_id, 1.2189678231486023 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 10 AS parent_id, 1.377641769292083 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 37 AS count, 3 AS depth, 10 AS parent_id, 1.5145094173378104 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"AdaBoost_Estim_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator", 0.233047426435 AS "Weight", 2 AS est_index 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.1157732754945755) THEN CASE WHEN ("ADS"."Feature_2" <= 0.056316666305065155) THEN CASE WHEN ("ADS"."Feature_3" <= 5.679426193237305) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 516.97119140625) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 49.2326774597168) THEN CASE WHEN ("ADS"."Feature_3" <= 2.0892207622528076) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 850.1043701171875) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 2 AS parent_id, 0.4848669214064692 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 2 AS parent_id, 0.38177329868014975 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 5 AS parent_id, 0.7736311045366903 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 5 AS parent_id, 1.2168500273152194 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 9 AS parent_id, 1.4286748402499525 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, 9 AS parent_id, 1.5097423878118206 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 3 AS depth, 12 AS parent_id, 1.142622893040531 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, 12 AS parent_id, 1.398314530314508 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"AdaBoost_Estim_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator", 0.372703202227 AS "Weight", 3 AS est_index 
FROM "DT_Output_3")
 SELECT "WeightedEstimators_esu_0"."KEY", "WeightedEstimators_esu_0"."Estimator", "WeightedEstimators_esu_0"."Weight", "WeightedEstimators_esu_0".est_index 
FROM (SELECT "AdaBoost_Estim_0"."KEY" AS "KEY", "AdaBoost_Estim_0"."Estimator" AS "Estimator", "AdaBoost_Estim_0"."Weight" AS "Weight", "AdaBoost_Estim_0".est_index AS est_index 
FROM "AdaBoost_Estim_0" UNION ALL SELECT "AdaBoost_Estim_1"."KEY" AS "KEY", "AdaBoost_Estim_1"."Estimator" AS "Estimator", "AdaBoost_Estim_1"."Weight" AS "Weight", "AdaBoost_Estim_1".est_index AS est_index 
FROM "AdaBoost_Estim_1" UNION ALL SELECT "AdaBoost_Estim_2"."KEY" AS "KEY", "AdaBoost_Estim_2"."Estimator" AS "Estimator", "AdaBoost_Estim_2"."Weight" AS "Weight", "AdaBoost_Estim_2".est_index AS est_index 
FROM "AdaBoost_Estim_2" UNION ALL SELECT "AdaBoost_Estim_3"."KEY" AS "KEY", "AdaBoost_Estim_3"."Estimator" AS "Estimator", "AdaBoost_Estim_3"."Weight" AS "Weight", "AdaBoost_Estim_3".est_index AS est_index 
FROM "AdaBoost_Estim_3") AS "WeightedEstimators_esu_0"), 
"WeightedEstimators" AS 
(SELECT "WeightedEstimatorsbig_esu"."KEY" AS "KEY", "WeightedEstimatorsbig_esu"."Estimator" AS "Estimator", "WeightedEstimatorsbig_esu"."Weight" AS "Weight", "WeightedEstimatorsbig_esu".est_index AS est_index 
FROM (SELECT "WeightedEstimators_0"."KEY" AS "KEY", "WeightedEstimators_0"."Estimator" AS "Estimator", "WeightedEstimators_0"."Weight" AS "Weight", "WeightedEstimators_0".est_index AS est_index 
FROM "WeightedEstimators_0") AS "WeightedEstimatorsbig_esu"), 
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