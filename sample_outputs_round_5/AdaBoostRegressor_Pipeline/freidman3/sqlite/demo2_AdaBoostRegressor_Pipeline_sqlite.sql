-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 52.3981064762 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 883.027508593 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.490327779843 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.22445783293 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman3 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 52.3981064762) / 30.4822783403 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 883.027508593) / 484.790817089 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.490327779843) / 0.306422265348 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.22445783293) / 2.84316360496 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.070751428604126) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.7670344114303589) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.4599981904029846) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.4408085346221924) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.5595684051513672) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.4637237787246704) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_output_4' AS feature, -1.070751428604126 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.302843060563856 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_output_5' AS feature, 0.7670344114303589 AS threshold, 8 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5318414857387723 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_output_5' AS feature, 0.4599981904029846 AS threshold, 7 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.4308964671515283 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.38685793229259297 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6951276763051403 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.2384566158494805 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'scaler_output_3' AS feature, -1.4408085346221924 AS threshold, 59 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4073856469808173 AS "Estimator" UNION ALL SELECT 7 AS node_id, 'scaler_output_3' AS feature, -1.5595684051513672 AS threshold, 7 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9920089567352373 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7526511664427694 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0877520728522245 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'scaler_output_2' AS feature, 1.4637237787246704 AS threshold, 52 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4633017398984904 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 50 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4828391130864151 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9748674102003753 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"AdaBoost_Estim_0" AS 
(SELECT "DT_Output"."KEY" AS join_key_0, "DT_Output"."Estimator" AS "Estimator_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.2177999019622803) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.9185100197792053) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.20675741136074066) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.5337620377540588) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.1551682949066162) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.14685171842575073) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.3950035572052002) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_output_4' AS feature, -1.2177999019622803 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.2394966559955665 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_output_2' AS feature, -0.9185100197792053 AS threshold, 15 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7697507726600946 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_output_3' AS feature, -0.20675741136074066 AS threshold, 6 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.2008042919690327 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.140730508104192 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.5011732112932354 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'scaler_output_5' AS feature, 0.5337620377540588 AS threshold, 9 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.4823817597874698 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.41464750627625485 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5670495766764883 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'scaler_output_3' AS feature, -1.1551682949066162 AS threshold, 52 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.375000276188491 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'scaler_output_5' AS feature, 0.14685171842575073 AS threshold, 13 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.03505622575233 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7641057955601959 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.2672994516313019 AS "Estimator" UNION ALL SELECT 12 AS node_id, 'scaler_output_5' AS feature, 1.3950035572052002 AS threshold, 39 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.488314959667212 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 34 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.5025930580501432 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.391223890663282 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"AdaBoost_Estim_1" AS 
(SELECT "DT_Output_1"."KEY" AS join_key_1, "DT_Output_1"."Estimator" AS "Estimator_1" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.6155144572257996) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.21832206845283508) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.3789939880371094) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.2173960208892822) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.4236013889312744) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -1.2268298864364624) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.180594801902771) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_output_4' AS feature, -0.6155144572257996 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0954306003032461 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_output_2' AS feature, 0.21832206845283508 AS threshold, 41 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8907007061613723 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_output_2' AS feature, -1.3789939880371094 AS threshold, 23 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.1399600797231637 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4854709369317385 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9887990796944119 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'scaler_output_4' AS feature, -1.2173960208892822 AS threshold, 18 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5722026177213064 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.41384517494877215 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7701494211869743 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'scaler_output_3' AS feature, -1.4236013889312744 AS threshold, 26 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4182738949115845 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'scaler_output_5' AS feature, -1.2268298864364624 AS threshold, 3 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9457613334939851 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7741393462403076 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.031572327120824 AS "Estimator" UNION ALL SELECT 12 AS node_id, 'scaler_output_2' AS feature, -0.180594801902771 AS threshold, 23 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4799059681399669 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.5302990505981624 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4249316963673897 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"AdaBoost_Estim_2" AS 
(SELECT "DT_Output_2"."KEY" AS join_key_2, "DT_Output_2"."Estimator" AS "Estimator_2" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.8302361965179443) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.9464374780654907) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.341906189918518) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.2615749835968018) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.1273841857910156) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -1.565123200416565) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.023096024990081787) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_output_3' AS feature, -0.8302361965179443 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.1023425761627919 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_output_2' AS feature, -0.9464374780654907 AS threshold, 28 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8103777898577965 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_output_3' AS feature, -1.341906189918518 AS threshold, 7 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.2894076957564555 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.1996126705446541 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.5138952587859582 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'scaler_output_4' AS feature, -1.2615749835968018 AS threshold, 21 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6507011545582434 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.4794336238656934 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7560965580613507 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'scaler_output_2' AS feature, 1.1273841857910156 AS threshold, 39 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.3119583201766354 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'scaler_output_5' AS feature, -1.565123200416565 AS threshold, 33 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4132243834852947 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.035685140371798 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4652987618457767 AS "Estimator" UNION ALL SELECT 12 AS node_id, 'scaler_output_5' AS feature, -0.023096024990081787 AS threshold, 6 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.75499497197901 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9748674102003753 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6450587528683271 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"AdaBoost_Estim_3" AS 
(SELECT "DT_Output_3"."KEY" AS join_key_3, "DT_Output_3"."Estimator" AS "Estimator_3" 
FROM "DT_Output_3"), 
"AdaBoost_Join_CTE" AS 
(SELECT "AdaBoost_Estim_0".join_key_0 AS join_key_0, "AdaBoost_Estim_0"."Estimator_0" AS "Estimator_0", "AdaBoost_Estim_1".join_key_1 AS join_key_1, "AdaBoost_Estim_1"."Estimator_1" AS "Estimator_1", "AdaBoost_Estim_2".join_key_2 AS join_key_2, "AdaBoost_Estim_2"."Estimator_2" AS "Estimator_2", "AdaBoost_Estim_3".join_key_3 AS join_key_3, "AdaBoost_Estim_3"."Estimator_3" AS "Estimator_3" 
FROM "AdaBoost_Estim_0" LEFT OUTER JOIN "AdaBoost_Estim_1" ON "AdaBoost_Estim_0".join_key_0 = "AdaBoost_Estim_1".join_key_1 LEFT OUTER JOIN "AdaBoost_Estim_2" ON "AdaBoost_Estim_2".join_key_2 = "AdaBoost_Estim_1".join_key_1 LEFT OUTER JOIN "AdaBoost_Estim_3" ON "AdaBoost_Estim_3".join_key_3 = "AdaBoost_Estim_2".join_key_2), 
"WeightedEstimators" AS 
(SELECT "Values"."Key" AS "Key", "Values".sub_estimator AS sub_estimator, "Values"."Weight" AS "Weight", "Values"."Value" AS "Value" 
FROM (SELECT "AdaBoost_Join_CTE".join_key_0 AS "Key", 0 AS sub_estimator, 0.261578820672 AS "Weight", "AdaBoost_Join_CTE"."Estimator_0" AS "Value" 
FROM "AdaBoost_Join_CTE" UNION ALL SELECT "AdaBoost_Join_CTE".join_key_0 AS "Key", 1 AS sub_estimator, 0.286696223333 AS "Weight", "AdaBoost_Join_CTE"."Estimator_1" AS "Value" 
FROM "AdaBoost_Join_CTE" UNION ALL SELECT "AdaBoost_Join_CTE".join_key_0 AS "Key", 2 AS sub_estimator, 0.196249340079 AS "Weight", "AdaBoost_Join_CTE"."Estimator_2" AS "Value" 
FROM "AdaBoost_Join_CTE" UNION ALL SELECT "AdaBoost_Join_CTE".join_key_0 AS "Key", 3 AS sub_estimator, 0.255475615916 AS "Weight", "AdaBoost_Join_CTE"."Estimator_3" AS "Value" 
FROM "AdaBoost_Join_CTE") AS "Values"), 
"Cumulative_Frequencies" AS 
(SELECT u1."Key" AS "Key", u1.sub_estimator AS sub_estimator, u1."Weight" AS "Weight", u1."Value" AS "Value", (SELECT sum(u2."Weight") AS sum_1 
FROM "WeightedEstimators" AS u2 
WHERE u1."Key" = u2."Key" AND u1."Value" >= u2."Value") AS cum_weight 
FROM "WeightedEstimators" AS u1), 
"Quantiles" AS 
(SELECT "AdaBoost_Join_CTE".join_key_0 AS join_key_0, "AdaBoost_Join_CTE"."Estimator_0" AS "Estimator_0", "AdaBoost_Join_CTE".join_key_1 AS join_key_1, "AdaBoost_Join_CTE"."Estimator_1" AS "Estimator_1", "AdaBoost_Join_CTE".join_key_2 AS join_key_2, "AdaBoost_Join_CTE"."Estimator_2" AS "Estimator_2", "AdaBoost_Join_CTE".join_key_3 AS join_key_3, "AdaBoost_Join_CTE"."Estimator_3" AS "Estimator_3", (SELECT min("Cumulative_Frequencies"."Value") AS min_1 
FROM "Cumulative_Frequencies" 
WHERE "AdaBoost_Join_CTE".join_key_0 = "Cumulative_Frequencies"."Key" AND "Cumulative_Frequencies".cum_weight >= 0.5) AS "Median" 
FROM "AdaBoost_Join_CTE")
 SELECT "Quantiles".join_key_0 AS "KEY", "Quantiles"."Median" AS "Estimator" 
FROM "Quantiles"