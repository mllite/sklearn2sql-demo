-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.28362607955932617) THEN CASE WHEN ("ADS"."Feature_4" <= 0.6014193892478943) THEN CASE WHEN ("ADS"."Feature_3" <= 0.3159424662590027) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_6" <= 0.6361697912216187) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.8160629272460938) THEN CASE WHEN ("ADS"."Feature_5" <= 0.02199404314160347) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_9" <= 0.09068352729082108) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 2 AS parent_id, 7.108390979047101 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 3 AS depth, 2 AS parent_id, 10.330887125839682 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 5 AS parent_id, 12.484302041779221 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 5 AS parent_id, 16.867007546276703 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, 9.958336196414976 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 35 AS count, 3 AS depth, 9 AS parent_id, 16.155086265138074 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 12 AS parent_id, 16.714568981882323 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 12 AS parent_id, 21.530772731913935 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"AdaBoost_Estim_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator", 0.222773049779 AS "Weight", 0 AS est_index 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.5565721392631531) THEN CASE WHEN ("ADS"."Feature_4" <= 0.6678532958030701) THEN CASE WHEN ("ADS"."Feature_3" <= 0.14032050967216492) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.917350709438324) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.7423961162567139) THEN CASE WHEN ("ADS"."Feature_7" <= 0.11840790510177612) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.8043949604034424) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 2 AS parent_id, 6.680372815192879 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, 2 AS parent_id, 13.03309136966267 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, 5 AS parent_id, 16.137564712882295 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 5 AS parent_id, 23.693970395239386 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 9 AS parent_id, 22.107190514382584 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS count, 3 AS depth, 9 AS parent_id, 17.253474800388226 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, 12 AS parent_id, 24.121309045735764 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 12 AS parent_id, 18.900387696177468 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"AdaBoost_Estim_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator", 0.255775687834 AS "Weight", 1 AS est_index 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.37473800778388977) THEN CASE WHEN ("ADS"."Feature_2" <= 0.8330837488174438) THEN CASE WHEN ("ADS"."Feature_3" <= 0.2539539933204651) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.7046108245849609) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.3769059479236603) THEN CASE WHEN ("ADS"."Feature_6" <= 0.6300066709518433) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.7423961162567139) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, 2 AS parent_id, 6.390535756426625 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 3 AS depth, 2 AS parent_id, 11.762807430332275 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 5 AS parent_id, 16.62135112393742 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 5 AS parent_id, 23.693970395239383 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, 9 AS parent_id, 13.283041611951388 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, 18.705200260853758 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, 12 AS parent_id, 18.520728123777474 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, 12 AS parent_id, 22.083801758207265 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"AdaBoost_Estim_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator", 0.267156455734 AS "Weight", 2 AS est_index 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.5503556728363037) THEN CASE WHEN ("ADS"."Feature_4" <= 0.5689454674720764) THEN CASE WHEN ("ADS"."Feature_1" <= 0.594910204410553) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_6" <= 0.8305523991584778) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.3013801872730255) THEN CASE WHEN ("ADS"."Feature_9" <= 0.5949296355247498) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.2519054412841797) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, 2 AS parent_id, 8.136348380598148 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 2 AS parent_id, 15.858066789184889 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 3 AS depth, 5 AS parent_id, 14.397970646627817 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 5 AS parent_id, 18.970449127439544 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 9 AS parent_id, 14.302644720397842 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 9 AS parent_id, 11.868082094679432 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 12 AS parent_id, 13.455276821939162 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 27 AS count, 3 AS depth, 12 AS parent_id, 20.67940396773559 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"AdaBoost_Estim_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator", 0.254294806653 AS "Weight", 3 AS est_index 
FROM "DT_Output_3"), 
"WeightedEstimators" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator", ensemble_score_union."Weight" AS "Weight", ensemble_score_union.est_index AS est_index 
FROM (SELECT "AdaBoost_Estim_0"."KEY" AS "KEY", "AdaBoost_Estim_0"."Estimator" AS "Estimator", "AdaBoost_Estim_0"."Weight" AS "Weight", "AdaBoost_Estim_0".est_index AS est_index 
FROM "AdaBoost_Estim_0" UNION ALL SELECT "AdaBoost_Estim_1"."KEY" AS "KEY", "AdaBoost_Estim_1"."Estimator" AS "Estimator", "AdaBoost_Estim_1"."Weight" AS "Weight", "AdaBoost_Estim_1".est_index AS est_index 
FROM "AdaBoost_Estim_1" UNION ALL SELECT "AdaBoost_Estim_2"."KEY" AS "KEY", "AdaBoost_Estim_2"."Estimator" AS "Estimator", "AdaBoost_Estim_2"."Weight" AS "Weight", "AdaBoost_Estim_2".est_index AS est_index 
FROM "AdaBoost_Estim_2" UNION ALL SELECT "AdaBoost_Estim_3"."KEY" AS "KEY", "AdaBoost_Estim_3"."Estimator" AS "Estimator", "AdaBoost_Estim_3"."Weight" AS "Weight", "AdaBoost_Estim_3".est_index AS est_index 
FROM "AdaBoost_Estim_3") ensemble_score_union), 
"Cumulative_Frequencies" AS 
(SELECT "CW"."KEY" AS "KEY", "CW"."Estimator" AS "Estimator", "CW"."Weight" AS "Weight", "CW".est_index AS est_index, "CW".cum_weight AS cum_weight 
FROM (SELECT u1."KEY" AS "KEY", u1."Estimator" AS "Estimator", u1."Weight" AS "Weight", u1.est_index AS est_index, sum(u2."Weight") AS cum_weight 
FROM "WeightedEstimators" u1, "WeightedEstimators" u2 
WHERE u1."Estimator" >= u2."Estimator" AND u1."KEY" = u2."KEY" GROUP BY u1."KEY", u1.est_index, u1."Estimator", u1."Weight") "CW"), 
"Quantiles" AS 
(SELECT "CW2"."KEY" AS "KEY", "CW2"."Quantile" AS "Quantile" 
FROM (SELECT "Cumulative_Frequencies"."KEY" AS "KEY", min("Cumulative_Frequencies"."Estimator") AS "Quantile" 
FROM "Cumulative_Frequencies" 
WHERE "Cumulative_Frequencies".cum_weight >= 0.5 GROUP BY "Cumulative_Frequencies"."KEY") "CW2")
 SELECT "Quantiles"."KEY" AS "KEY", "Quantiles"."Quantile" AS "Estimator" 
FROM "Quantiles"