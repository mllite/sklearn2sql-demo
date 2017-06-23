-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 37.1024906382 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 820.420898922 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.566181762373 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.66448350657 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman3 "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 37.1024906382) / 27.2361073362 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 820.420898922) / 386.031348182 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.566181762373) / 0.306900434257 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.66448350657) / 3.34652241867 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.515555739402771) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.5869677066802979) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.6624939441680908) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.4626967906951904) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.676448106765747) THEN 8 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.31593656539917) THEN 10 ELSE 11 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.8555728197097778) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.0836601257324219) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.5597398281097412) THEN 15 ELSE 16 END ELSE 17 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.18919242918491364) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.8306390047073364) THEN 20 ELSE 21 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.02516266703605652) THEN 23 ELSE 24 END END END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_output_4' AS feature, -1.515555739402771 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4256189972048414 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'scaler_output_4' AS feature, -1.5869677066802979 AS threshold, 3 AS count, 1 AS depth, 0 AS parent_id, 1.0996390945457295 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, 'scaler_output_4' AS feature, -1.6624939441680908 AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, 1.2455031803026952 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 1.350090108150775 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 1.1409162524546155 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 1 AS parent_id, 0.8079109230317987 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, 'scaler_output_3' AS feature, -1.4626967906951904 AS threshold, 22 AS count, 1 AS depth, 0 AS parent_id, 1.4700708021129019 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, 'scaler_output_3' AS feature, -1.676448106765747 AS threshold, 3 AS count, 2 AS depth, 6 AS parent_id, 1.3196337047994555 AS "Estimator" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 7 AS parent_id, 1.5359670902044162 AS "Estimator" FROM DUAL UNION ALL SELECT 9 AS node_id, 'scaler_output_2' AS feature, 1.31593656539917 AS threshold, 2 AS count, 3 AS depth, 7 AS parent_id, 1.2114670120969753 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 9 AS parent_id, 1.278877589279357 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 9 AS parent_id, 1.1440564349145939 AS "Estimator" FROM DUAL UNION ALL SELECT 12 AS node_id, 'scaler_output_2' AS feature, -0.8555728197097778 AS threshold, 19 AS count, 2 AS depth, 6 AS parent_id, 1.4938240280044992 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, 'scaler_output_5' AS feature, 1.0836601257324219 AS threshold, 5 AS count, 3 AS depth, 12 AS parent_id, 1.559117611782573 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, 'scaler_output_5' AS feature, 0.5597398281097412 AS threshold, 4 AS count, 4 AS depth, 13 AS parent_id, 1.5647192071019234 AS "Estimator" FROM DUAL UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 14 AS parent_id, 1.556101969927248 AS "Estimator" FROM DUAL UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, 14 AS parent_id, 1.5675916194934818 AS "Estimator" FROM DUAL UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 13 AS parent_id, 1.536711230505171 AS "Estimator" FROM DUAL UNION ALL SELECT 18 AS node_id, 'scaler_output_4' AS feature, -0.18919242918491364 AS threshold, 14 AS count, 3 AS depth, 12 AS parent_id, 1.4705048909409013 AS "Estimator" FROM DUAL UNION ALL SELECT 19 AS node_id, 'scaler_output_4' AS feature, -0.8306390047073364 AS threshold, 4 AS count, 4 AS depth, 18 AS parent_id, 1.393133967887413 AS "Estimator" FROM DUAL UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, 19 AS parent_id, 1.368305858765039 AS "Estimator" FROM DUAL UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, 19 AS parent_id, 1.4179620770097867 AS "Estimator" FROM DUAL UNION ALL SELECT 22 AS node_id, 'scaler_output_5' AS feature, 0.02516266703605652 AS threshold, 10 AS count, 4 AS depth, 18 AS parent_id, 1.5014532601622965 AS "Estimator" FROM DUAL UNION ALL SELECT 23 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 5 AS depth, 22 AS parent_id, 1.5174608589991356 AS "Estimator" FROM DUAL UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 5 AS depth, 22 AS parent_id, 1.4854456613254576 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"