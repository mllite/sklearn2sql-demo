-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 37.1024906382 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 820.420898922 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.566181762373 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.66448350657 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman2 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 37.1024906382) / 27.2361073362 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 820.420898922) / 386.031348182 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 0.566181762373) / 0.306900434257 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 6.66448350657) / 3.34652241867 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.1638009399175644) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.1309148669242859) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.03495202958583832) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.2849499583244324) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.5577172040939331) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.44602248072624207) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.5713012218475342) THEN 7 ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.429833173751831) THEN 11 ELSE 12 END END ELSE 13 END ELSE 14 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.7916625142097473) THEN 16 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.9322748780250549) THEN 18 ELSE 19 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.02516266703605652) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.915624737739563) THEN 22 ELSE 23 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.5851213335990906) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.3022146224975586) THEN 26 ELSE 27 END ELSE 28 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_output_4' AS feature, 0.1638009399175644 AS threshold, 15 AS "count", 0 AS depth, NULL AS parent_id, 411.67257803375753 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'scaler_output_3' AS feature, 0.1309148669242859 AS threshold, 10 AS "count", 1 AS depth, 0 AS parent_id, 223.80348328696738 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'scaler_output_4' AS feature, -0.03495202958583832 AS threshold, 7 AS "count", 2 AS depth, 1 AS parent_id, 146.43180610238966 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, 'scaler_output_2' AS feature, 0.2849499583244324 AS threshold, 6 AS "count", 3 AS depth, 2 AS parent_id, 119.13863996347327 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, 'scaler_output_4' AS feature, -0.5577172040939331 AS threshold, 5 AS "count", 4 AS depth, 3 AS parent_id, 89.19505294275075 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, 'scaler_output_3' AS feature, -0.44602248072624207 AS threshold, 3 AS "count", 5 AS depth, 4 AS parent_id, 65.21702965407476 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, 'scaler_output_2' AS feature, -0.5713012218475342 AS threshold, 2 AS "count", 6 AS depth, 5 AS parent_id, 48.81706440524433 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 6 AS parent_id, 43.137171961132545 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 6 AS parent_id, 60.176849293467896 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 5 AS parent_id, 89.81697752732039 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, 'scaler_output_3' AS feature, -1.429833173751831 AS threshold, 2 AS "count", 5 AS depth, 4 AS parent_id, 129.1584250905441 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 10 AS parent_id, 131.7476052576105 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 10 AS parent_id, 123.9800647564113 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 3 AS parent_id, 238.91298804636327 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, 419.3634674915536 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS node_id, 'scaler_output_4' AS feature, -0.7916625142097473 AS threshold, 3 AS "count", 2 AS depth, 1 AS parent_id, 365.65155812535994 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 15 AS parent_id, 251.33228305881974 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS node_id, 'scaler_output_5' AS feature, 0.9322748780250549 AS threshold, 2 AS "count", 3 AS depth, 15 AS parent_id, 479.9708331919 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 17 AS parent_id, 501.63259525741347 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 17 AS parent_id, 469.13995215914326 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS node_id, 'scaler_output_5' AS feature, 0.02516266703605652 AS threshold, 5 AS "count", 1 AS depth, 0 AS parent_id, 810.8944043706865 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS node_id, 'scaler_output_3' AS feature, 0.915624737739563 AS threshold, 2 AS "count", 2 AS depth, 20 AS parent_id, 1104.5495293989015 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 21 AS parent_id, 1006.9476600275759 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 21 AS parent_id, 1299.7532681415528 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS node_id, 'scaler_output_2' AS feature, -0.5851213335990906 AS threshold, 3 AS "count", 2 AS depth, 20 AS parent_id, 634.7013293537576 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS node_id, 'scaler_output_3' AS feature, 0.3022146224975586 AS threshold, 2 AS "count", 3 AS depth, 24 AS parent_id, 679.1662020190677 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 25 AS parent_id, 762.1275405517559 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 25 AS parent_id, 651.5124225081717 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 28 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 24 AS parent_id, 456.84183869251734 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.1638009399175644) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.46703335642814636) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.705585777759552) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.0407394170761108) THEN 4 ELSE 5 END ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.6290282011032104) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.4069045782089233) THEN 9 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.9809719324111938) THEN 11 ELSE 12 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.6665799021720886) THEN 14 ELSE 15 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.15406937897205353) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.5130382776260376) THEN 18 ELSE 19 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.0196428298950195) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.3872383236885071) THEN 22 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.5367218255996704) THEN 24 ELSE 25 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.915624737739563) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.310650110244751) THEN 28 ELSE 29 END ELSE 30 END END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_output_4' AS feature, 0.1638009399175644 AS threshold, 16 AS "count", 0 AS depth, NULL AS parent_id, 522.9353011826607 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'scaler_output_3' AS feature, -0.46703335642814636 AS threshold, 8 AS "count", 1 AS depth, 0 AS parent_id, 210.04342262705848 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'scaler_output_2' AS feature, -0.705585777759552 AS threshold, 3 AS "count", 2 AS depth, 1 AS parent_id, 74.53064538952195 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, 'scaler_output_2' AS feature, -1.0407394170761108 AS threshold, 2 AS "count", 3 AS depth, 2 AS parent_id, 41.56436581159573 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 3 AS parent_id, 43.137171961132545 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 3 AS parent_id, 38.41875351252209 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, 123.9800647564113 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, 'scaler_output_4' AS feature, -0.6290282011032104 AS threshold, 5 AS "count", 2 AS depth, 1 AS parent_id, 322.9707369916723 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, 'scaler_output_4' AS feature, -1.4069045782089233 AS threshold, 3 AS "count", 3 AS depth, 7 AS parent_id, 209.98584493592776 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 8 AS parent_id, 81.61991678616678 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, 'scaler_output_4' AS feature, -0.9809719324111938 AS threshold, 2 AS "count", 4 AS depth, 8 AS parent_id, 274.1688090108083 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 10 AS parent_id, 251.33228305881974 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 10 AS parent_id, 297.00533496279684 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, 'scaler_output_2' AS feature, -0.6665799021720886 AS threshold, 2 AS "count", 3 AS depth, 7 AS parent_id, 435.95562904741683 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 13 AS parent_id, 469.13995215914326 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 13 AS parent_id, 419.3634674915536 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS node_id, 'scaler_output_3' AS feature, -0.15406937897205353 AS threshold, 8 AS "count", 1 AS depth, 0 AS parent_id, 768.7789200477765 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS node_id, 'scaler_output_2' AS feature, 0.5130382776260376 AS threshold, 2 AS "count", 2 AS depth, 16 AS parent_id, 348.98160475366836 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 17 AS parent_id, 456.84183869251734 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 17 AS parent_id, 241.12137081481941 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS node_id, 'scaler_output_4' AS feature, 1.0196428298950195 AS threshold, 6 AS "count", 2 AS depth, 16 AS parent_id, 838.7451392634613 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS node_id, 'scaler_output_4' AS feature, 0.3872383236885071 AS threshold, 3 AS "count", 3 AS depth, 20 AS parent_id, 756.0248880284703 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 21 AS parent_id, 651.5124225081717 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS node_id, 'scaler_output_2' AS feature, 0.5367218255996704 AS threshold, 2 AS "count", 4 AS depth, 21 AS parent_id, 769.0889462185075 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 23 AS parent_id, 784.5912586165624 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 23 AS parent_id, 753.5866338204527 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS node_id, 'scaler_output_3' AS feature, 0.915624737739563 AS threshold, 3 AS "count", 3 AS depth, 20 AS parent_id, 1086.905892968435 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS node_id, 'scaler_output_4' AS feature, 1.310650110244751 AS threshold, 2 AS "count", 4 AS depth, 26 AS parent_id, 980.4822053818759 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 28 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 27 AS parent_id, 954.0167507361758 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 29 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 27 AS parent_id, 1006.9476600275759 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 30 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 26 AS parent_id, 1299.7532681415528 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1"."count" AS "count", "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.07358784973621368) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.8148788213729858) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.6750271320343018) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.2090084552764893) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.9968217611312866) THEN 5 ELSE 6 END ELSE 7 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.520769476890564) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.2568002939224243) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.4958369731903076) THEN 13 ELSE 14 END ELSE 15 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.3890860676765442) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.7916625142097473) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.4069045782089233) THEN 19 ELSE 20 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.133222222328186) THEN 22 ELSE 23 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.99062579870224) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.2210048884153366) THEN 26 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.8621824383735657) THEN 28 ELSE 29 END END ELSE 30 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_output_3' AS feature, -0.07358784973621368 AS threshold, 16 AS "count", 0 AS depth, NULL AS parent_id, 405.3366380477288 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'scaler_output_3' AS feature, -0.8148788213729858 AS threshold, 8 AS "count", 1 AS depth, 0 AS parent_id, 211.4380798284307 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'scaler_output_2' AS feature, 0.6750271320343018 AS threshold, 5 AS "count", 2 AS depth, 1 AS parent_id, 151.9098719194298 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, 'scaler_output_3' AS feature, -1.2090084552764893 AS threshold, 3 AS "count", 3 AS depth, 2 AS parent_id, 114.3264378643023 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, 'scaler_output_2' AS feature, -0.9968217611312866 AS threshold, 2 AS "count", 4 AS depth, 3 AS parent_id, 127.86383500701089 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 4 AS parent_id, 131.7476052576105 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 4 AS parent_id, 123.9800647564113 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 3 AS parent_id, 60.176849293467896 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, 'scaler_output_3' AS feature, -1.520769476890564 AS threshold, 2 AS "count", 3 AS depth, 2 AS parent_id, 198.88916448833922 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 8 AS parent_id, 184.8117623795125 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 8 AS parent_id, 241.12137081481941 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, 'scaler_output_3' AS feature, -0.2568002939224243 AS threshold, 3 AS "count", 2 AS depth, 1 AS parent_id, 318.58885406463213 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, 'scaler_output_3' AS feature, -0.4958369731903076 AS threshold, 2 AS "count", 3 AS depth, 11 AS parent_id, 438.10265309203544 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 12 AS parent_id, 456.84183869251734 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 12 AS parent_id, 419.3634674915536 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 11 AS parent_id, 238.91298804636327 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS node_id, 'scaler_output_4' AS feature, 0.3890860676765442 AS threshold, 8 AS "count", 1 AS depth, 0 AS parent_id, 652.1166212359262 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS node_id, 'scaler_output_4' AS feature, -0.7916625142097473 AS threshold, 4 AS "count", 2 AS depth, 16 AS parent_id, 362.3461349550441 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS node_id, 'scaler_output_4' AS feature, -1.4069045782089233 AS threshold, 2 AS "count", 3 AS depth, 17 AS parent_id, 194.76149430126875 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 18 AS parent_id, 81.61991678616678 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 18 AS parent_id, 251.33228305881974 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS node_id, 'scaler_output_2' AS feature, -1.133222222328186 AS threshold, 2 AS "count", 3 AS depth, 17 AS parent_id, 529.9307756088193 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 21 AS parent_id, 469.13995215914326 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 21 AS parent_id, 651.5124225081717 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS node_id, 'scaler_output_2' AS feature, 0.99062579870224 AS threshold, 4 AS "count", 2 AS depth, 16 AS parent_id, 999.8412047729847 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS node_id, 'scaler_output_3' AS feature, 0.2210048884153366 AS threshold, 3 AS "count", 3 AS depth, 24 AS parent_id, 924.8631889308426 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 25 AS parent_id, 762.1275405517559 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS node_id, 'scaler_output_3' AS feature, 0.8621824383735657 AS threshold, 2 AS "count", 4 AS depth, 25 AS parent_id, 979.1084050572049 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 28 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 27 AS parent_id, 954.0167507361758 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 29 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 27 AS parent_id, 991.6542322177195 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 30 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 24 AS parent_id, 1299.7532681415528 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2"."count" AS "count", "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.8250993490219116) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.0936046838760376) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.5876970291137695) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.36400505900382996) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.1544877588748932) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.185713768005371) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.3277835845947266) THEN 10 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.9932732582092285) THEN 12 ELSE 13 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.0357035398483276) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.04473435878753662) THEN 16 ELSE 17 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.1528394222259521) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.18733319640159607) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.7075794339179993) THEN 21 ELSE 22 END ELSE 23 END ELSE 24 END END END ELSE 25 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.7396178245544434) THEN 27 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.915624737739563) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.2352690696716309) THEN 30 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.310650110244751) THEN 32 ELSE 33 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.3825902938842773) THEN 35 ELSE 36 END END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_output_4' AS feature, 0.8250993490219116 AS threshold, 19 AS "count", 0 AS depth, NULL AS parent_id, 461.41151461154004 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'scaler_output_3' AS feature, 1.0936046838760376 AS threshold, 13 AS "count", 1 AS depth, 0 AS parent_id, 295.7739675422565 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'scaler_output_4' AS feature, -0.5876970291137695 AS threshold, 12 AS "count", 2 AS depth, 1 AS parent_id, 254.83983432605268 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, 'scaler_output_3' AS feature, -0.36400505900382996 AS threshold, 6 AS "count", 3 AS depth, 2 AS parent_id, 138.08424127260946 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, 'scaler_output_5' AS feature, -0.1544877588748932 AS threshold, 3 AS "count", 4 AS depth, 3 AS parent_id, 46.217486682063765 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 4 AS parent_id, 60.176849293467896 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, 'scaler_output_3' AS feature, -1.185713768005371 AS threshold, 2 AS "count", 5 AS depth, 4 AS parent_id, 41.56436581159573 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 6 AS parent_id, 43.137171961132545 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 6 AS parent_id, 38.41875351252209 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, 'scaler_output_4' AS feature, -1.3277835845947266 AS threshold, 3 AS "count", 4 AS depth, 3 AS parent_id, 211.577644945046 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 9 AS parent_id, 89.81697752732039 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, 'scaler_output_4' AS feature, -0.9932732582092285 AS threshold, 2 AS "count", 5 AS depth, 9 AS parent_id, 242.01781179947739 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 11 AS parent_id, 251.33228305881974 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 11 AS parent_id, 238.91298804636327 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, 'scaler_output_3' AS feature, -1.0357035398483276 AS threshold, 6 AS "count", 3 AS depth, 2 AS parent_id, 386.1898765111764 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS node_id, 'scaler_output_2' AS feature, 0.04473435878753662 AS threshold, 2 AS "count", 4 AS depth, 14 AS parent_id, 158.2796838185615 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 15 AS parent_id, 131.7476052576105 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 15 AS parent_id, 184.8117623795125 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS node_id, 'scaler_output_5' AS feature, 1.1528394222259521 AS threshold, 4 AS "count", 4 AS depth, 14 AS parent_id, 462.15994074204804 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS node_id, 'scaler_output_2' AS feature, 0.18733319640159607 AS threshold, 3 AS "count", 5 AS depth, 18 AS parent_id, 470.71923539214697 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS node_id, 'scaler_output_2' AS feature, -0.7075794339179993 AS threshold, 2 AS "count", 6 AS depth, 19 AS parent_id, 462.99089542583033 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 20 AS parent_id, 469.13995215914326 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 20 AS parent_id, 456.84183869251734 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 19 AS parent_id, 501.63259525741347 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 18 AS parent_id, 419.3634674915536 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 2 AS depth, 1 AS parent_id, 991.6542322177195 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS node_id, 'scaler_output_3' AS feature, -0.7396178245544434 AS threshold, 6 AS "count", 1 AS depth, 0 AS parent_id, 887.3366356468406 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 2 AS depth, 26 AS parent_id, 241.12137081481941 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 28 AS node_id, 'scaler_output_3' AS feature, 0.915624737739563 AS threshold, 5 AS "count", 2 AS depth, 26 AS parent_id, 995.0391797855109 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 29 AS node_id, 'scaler_output_4' AS feature, 1.2352690696716309 AS threshold, 3 AS "count", 3 AS depth, 28 AS parent_id, 871.304872966816 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 30 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 29 AS parent_id, 762.1275405517559 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 31 AS node_id, 'scaler_output_4' AS feature, 1.310650110244751 AS threshold, 2 AS "count", 4 AS depth, 29 AS parent_id, 980.4822053818759 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 32 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 31 AS parent_id, 954.0167507361758 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 33 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 31 AS parent_id, 1006.9476600275759 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 34 AS node_id, 'scaler_output_3' AS feature, 1.3825902938842773 AS threshold, 2 AS "count", 3 AS depth, 28 AS parent_id, 1242.5077934229007 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 35 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 34 AS parent_id, 1299.7532681415528 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 36 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 34 AS parent_id, 1185.2623187042484 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3"."count" AS "count", "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"RF_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator" 
FROM (SELECT "RF_Tree_0"."KEY" AS "KEY", "RF_Tree_0"."Estimator" AS "Estimator" 
FROM "RF_Tree_0" UNION ALL SELECT "RF_Tree_1"."KEY" AS "KEY", "RF_Tree_1"."Estimator" AS "Estimator" 
FROM "RF_Tree_1" UNION ALL SELECT "RF_Tree_2"."KEY" AS "KEY", "RF_Tree_2"."Estimator" AS "Estimator" 
FROM "RF_Tree_2" UNION ALL SELECT "RF_Tree_3"."KEY" AS "KEY", "RF_Tree_3"."Estimator" AS "Estimator" 
FROM "RF_Tree_3") AS ensemble_score_union), 
"RF_AVG_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", AVG(DOUBLE(("Score_Union_CTE"."Estimator"))) AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T")
 SELECT "RF_AVG_Scores"."KEY" AS "KEY", "RF_AVG_Scores"."Estimator" AS "Estimator" 
FROM "RF_AVG_Scores"