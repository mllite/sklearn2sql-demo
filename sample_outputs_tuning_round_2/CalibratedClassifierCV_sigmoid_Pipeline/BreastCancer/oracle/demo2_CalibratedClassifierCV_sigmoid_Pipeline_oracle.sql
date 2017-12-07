-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 14.0777120879 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.0390549451 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 91.6617802198 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 650.967692308 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0964218461538 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.104416131868 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.0882623268132 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0485164 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.181588571429 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.0629403076923 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.409917362637 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.21706945055 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.90524901099 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 40.8798857143 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.00705597142857 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.0255678307692 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.0319992562637 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.0119723692308 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.0208962 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.00384655186813 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 16.1777648352 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 25.2650549451 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 106.68156044 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 870.863956044 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.13182756044 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.249918065934 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.265461593407 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.11348798022 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.289788131868 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.0836414505495 ELSE "ADS"."Feature_29" END AS impter_31 
FROM "BreastCancer" "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 14.0777120879) / 3.5451492987 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 19.0390549451) / 4.16229715042 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 91.6617802198) / 24.5039719435 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 650.967692308) / 355.702823164 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.0964218461538) / 0.0141978196631 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.104416131868) / 0.0534036946697 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.0882623268132) / 0.0819120016263 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.0485164) / 0.0393731173967 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.181588571429) / 0.0277900583287 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.0629403076923) / 0.00701935458617 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 0.409917362637) / 0.291204008368 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 1.21706945055) / 0.536389639634 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - 2.90524901099) / 2.14249442998 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - 40.8798857143) / 48.2247544796 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - 0.00705597142857) / 0.00286365165657 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - 0.0255678307692) / 0.017947013631 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - 0.0319992562637) / 0.0316649367214 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - 0.0119723692308) / 0.0063920055894 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - 0.0208962) / 0.00858291007987 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - 0.00384655186813) / 0.00274360758662 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - 16.1777648352) / 4.8174588162 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - 25.2650549451) / 5.92332412867 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - 106.68156044) / 33.7038583761 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - 870.863956044) / 566.995055987 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - 0.13182756044) / 0.0227482075223 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - 0.249918065934) / 0.152468936443 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - 0.265461593407) / 0.206925686782 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - 0.11348798022) / 0.0663814127852 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - 0.289788131868) / 0.0622047066505 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - 0.0836414505495) / 0.0170651458069 AS scaler_31 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_29 <= 0.5040872097015381) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_25 <= 0.14653751254081726) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_29 <= 0.1327483057975769) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_12 <= 0.8007535338401794) THEN 4 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.024999402463436127) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_12 <= -0.020663734525442123) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_23 <= 1.4603193998336792) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.520878255367279) THEN 13 ELSE 14 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_28 <= -0.3612968325614929) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_24 <= 0.45598456263542175) THEN 17 ELSE 18 END ELSE 19 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.0358413457870483) THEN 21 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_28 <= -0.2999221384525299) THEN 23 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.1987040936946869) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.1609880030155182) THEN 26 ELSE 27 END ELSE 28 END END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 199 AS count, 4 AS depth, 3 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 5 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 5 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 5 AS depth, 9 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 9 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, 12 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 12 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, 16 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 16 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, 15 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 20 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 23 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 22 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 26 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 5 AS depth, 25 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 25 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 98 AS count, 4 AS depth, 24 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Decision" AS "Decision", "DT_node_data"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
calibration_base_estimator_0 AS 
(SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba", coalesce(CAST(NULL AS FLOAT), "DT_Output"."Proba_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS FLOAT), "DT_Output"."Proba_1") AS "ScoreOrProba_1" 
FROM "DT_Output"), 
sigmoid_calibration_0 AS 
(SELECT calibration_base_estimator_0."KEY" AS "KEY", 1.0 / (1.0 + exp(-5.75641342471 * calibration_base_estimator_0."ScoreOrProba_1" + 2.5569469412)) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(-5.75641342471 * calibration_base_estimator_0."ScoreOrProba_1" + 2.5569469412)) AS "Proba_0" 
FROM calibration_base_estimator_0), 
"Normalized_Probas" AS 
(SELECT sigmoid_calibration_0."KEY" AS "KEY", sigmoid_calibration_0."Proba_1" / (sigmoid_calibration_0."Proba_0" + sigmoid_calibration_0."Proba_1") AS "Proba_1", sigmoid_calibration_0."Proba_0" / (sigmoid_calibration_0."Proba_0" + sigmoid_calibration_0."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_0), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_29 <= 0.4536212682723999) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_25 <= 0.15994150936603546) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_20 <= -1.419763207435608) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_29 <= 0.27661389112472534) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_25 <= -0.16069620847702026) THEN 7 ELSE 8 END END END ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_18 <= 3.273360252380371) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -0.0018596397712826729) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_30 <= 0.2992035448551178) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_22 <= 0.4093932509422302) THEN 14 ELSE 15 END ELSE 16 END ELSE 17 END ELSE 18 END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 209 AS count, 4 AS depth, 4 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 5 AS depth, 6 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, 6 AS parent_id, 0.6666666666666666 AS "Proba_0", -0.405465108108 AS "LogProba_0", 0.3333333333333333 AS "Proba_1", -1.09861228867 AS "LogProba_1", 0 AS "Decision", 0.666666666667 AS "DecisionProba" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 2 AS depth, 1 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, 13 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 13 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 4 AS depth, 12 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 106 AS count, 3 AS depth, 11 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 2 AS depth, 10 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Proba_0" AS "Proba_0", "DT_node_data_1"."LogProba_0" AS "LogProba_0", "DT_node_data_1"."Proba_1" AS "Proba_1", "DT_node_data_1"."LogProba_1" AS "LogProba_1", "DT_node_data_1"."Decision" AS "Decision", "DT_node_data_1"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
calibration_base_estimator_1 AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output_1"."Proba_0" AS "Proba_0", "DT_Output_1"."Proba_1" AS "Proba_1", "DT_Output_1"."LogProba_0" AS "LogProba_0", "DT_Output_1"."LogProba_1" AS "LogProba_1", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba", coalesce(CAST(NULL AS FLOAT), "DT_Output_1"."Proba_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS FLOAT), "DT_Output_1"."Proba_1") AS "ScoreOrProba_1" 
FROM "DT_Output_1"), 
sigmoid_calibration_1 AS 
(SELECT calibration_base_estimator_1."KEY" AS "KEY", 1.0 / (1.0 + exp(-4.69959237362 * calibration_base_estimator_1."ScoreOrProba_1" + 1.9242110762)) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(-4.69959237362 * calibration_base_estimator_1."ScoreOrProba_1" + 1.9242110762)) AS "Proba_0" 
FROM calibration_base_estimator_1), 
"Normalized_Probas_1" AS 
(SELECT sigmoid_calibration_1."KEY" AS "KEY", sigmoid_calibration_1."Proba_1" / (sigmoid_calibration_1."Proba_0" + sigmoid_calibration_1."Proba_1") AS "Proba_1", sigmoid_calibration_1."Proba_0" / (sigmoid_calibration_1."Proba_0" + sigmoid_calibration_1."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_1), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_29 <= 0.43554389476776123) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_25 <= 0.3300487995147705) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_15 <= 0.1621597558259964) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_29 <= 0.13048863410949707) THEN 4 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_12 <= 0.010242432355880737) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.4016001224517822) THEN 9 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_23 <= -0.7428354620933533) THEN 11 ELSE 12 END END END ELSE 13 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_18 <= 2.9780807495117188) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_14 <= -0.7779479026794434) THEN 16 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.8875038623809814) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.4802413582801819) THEN 19 ELSE 20 END ELSE 21 END END ELSE 22 END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 197 AS count, 4 AS depth, 3 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 5 AS depth, 5 AS parent_id, 0.06666666666666667 AS "Proba_0", -2.7080502011 AS "LogProba_0", 0.9333333333333333 AS "Proba_1", -0.068992871487 AS "LogProba_1", 1 AS "Decision", 0.933333333333 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 5 AS depth, 5 AS parent_id, 0.75 AS "Proba_0", -0.287682072452 AS "LogProba_0", 0.25 AS "Proba_1", -1.38629436112 AS "LogProba_1", 0 AS "Decision", 0.75 AS "DecisionProba" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, 8 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 10 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, 10 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 2 AS depth, 1 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 15 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 18 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, 18 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 101 AS count, 4 AS depth, 17 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 2 AS depth, 14 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Proba_0" AS "Proba_0", "DT_node_data_2"."LogProba_0" AS "LogProba_0", "DT_node_data_2"."Proba_1" AS "Proba_1", "DT_node_data_2"."LogProba_1" AS "LogProba_1", "DT_node_data_2"."Decision" AS "Decision", "DT_node_data_2"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
calibration_base_estimator_2 AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output_2"."Proba_0" AS "Proba_0", "DT_Output_2"."Proba_1" AS "Proba_1", "DT_Output_2"."LogProba_0" AS "LogProba_0", "DT_Output_2"."LogProba_1" AS "LogProba_1", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba", coalesce(CAST(NULL AS FLOAT), "DT_Output_2"."Proba_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS FLOAT), "DT_Output_2"."Proba_1") AS "ScoreOrProba_1" 
FROM "DT_Output_2"), 
sigmoid_calibration_2 AS 
(SELECT calibration_base_estimator_2."KEY" AS "KEY", 1.0 / (1.0 + exp(-5.46067623842 * calibration_base_estimator_2."ScoreOrProba_1" + 2.26090550078)) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(-5.46067623842 * calibration_base_estimator_2."ScoreOrProba_1" + 2.26090550078)) AS "Proba_0" 
FROM calibration_base_estimator_2), 
"Normalized_Probas_2" AS 
(SELECT sigmoid_calibration_2."KEY" AS "KEY", sigmoid_calibration_2."Proba_1" / (sigmoid_calibration_2."Proba_0" + sigmoid_calibration_2."Proba_1") AS "Proba_1", sigmoid_calibration_2."Proba_0" / (sigmoid_calibration_2."Proba_0" + sigmoid_calibration_2."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_2), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_29 <= 0.4837501645088196) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_25 <= 0.3300487995147705) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_20 <= -1.2299091815948486) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.46316879987716675) THEN 4 ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_15 <= -0.16371023654937744) THEN 7 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_23 <= 0.6609371900558472) THEN 9 ELSE 10 END END END ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_18 <= 3.273360252380371) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_28 <= -0.2999221384525299) THEN 14 ELSE 15 END ELSE 16 END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, 3 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 3 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 197 AS count, 4 AS depth, 6 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 5 AS depth, 8 AS parent_id, 0.047619047619047616 AS "Proba_0", -3.04452243772 AS "LogProba_0", 0.9523809523809523 AS "Proba_1", -0.0487901641694 AS "LogProba_1", 1 AS "Decision", 0.952380952381 AS "DecisionProba" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, 8 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 2 AS depth, 1 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 13 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 106 AS count, 3 AS depth, 13 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 2 AS depth, 12 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Proba_0" AS "Proba_0", "DT_node_data_3"."LogProba_0" AS "LogProba_0", "DT_node_data_3"."Proba_1" AS "Proba_1", "DT_node_data_3"."LogProba_1" AS "LogProba_1", "DT_node_data_3"."Decision" AS "Decision", "DT_node_data_3"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
calibration_base_estimator_3 AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output_3"."Proba_0" AS "Proba_0", "DT_Output_3"."Proba_1" AS "Proba_1", "DT_Output_3"."LogProba_0" AS "LogProba_0", "DT_Output_3"."LogProba_1" AS "LogProba_1", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba", coalesce(CAST(NULL AS FLOAT), "DT_Output_3"."Proba_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS FLOAT), "DT_Output_3"."Proba_1") AS "ScoreOrProba_1" 
FROM "DT_Output_3"), 
sigmoid_calibration_3 AS 
(SELECT calibration_base_estimator_3."KEY" AS "KEY", 1.0 / (1.0 + exp(-4.94925919551 * calibration_base_estimator_3."ScoreOrProba_1" + 2.03219522316)) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(-4.94925919551 * calibration_base_estimator_3."ScoreOrProba_1" + 2.03219522316)) AS "Proba_0" 
FROM calibration_base_estimator_3), 
"Normalized_Probas_3" AS 
(SELECT sigmoid_calibration_3."KEY" AS "KEY", sigmoid_calibration_3."Proba_1" / (sigmoid_calibration_3."Proba_0" + sigmoid_calibration_3."Proba_1") AS "Proba_1", sigmoid_calibration_3."Proba_0" / (sigmoid_calibration_3."Proba_0" + sigmoid_calibration_3."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_3), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Proba_1" AS "Proba_1", ensemble_score_union."Proba_0" AS "Proba_0" 
FROM (SELECT "Normalized_Probas"."KEY" AS "KEY", "Normalized_Probas"."Proba_1" AS "Proba_1", "Normalized_Probas"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas" UNION ALL SELECT "Normalized_Probas_1"."KEY" AS "KEY", "Normalized_Probas_1"."Proba_1" AS "Proba_1", "Normalized_Probas_1"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_1" UNION ALL SELECT "Normalized_Probas_2"."KEY" AS "KEY", "Normalized_Probas_2"."Proba_1" AS "Proba_1", "Normalized_Probas_2"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_2" UNION ALL SELECT "Normalized_Probas_3"."KEY" AS "KEY", "Normalized_Probas_3"."Proba_1" AS "Proba_1", "Normalized_Probas_3"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_3") ensemble_score_union), 
"Calibrate_AVG_Proba" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Proba_1" AS "Proba_1", "T"."Proba_0" AS "Proba_0" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", avg("Score_Union_CTE"."Proba_1") AS "Proba_1", avg("Score_Union_CTE"."Proba_0") AS "Proba_0" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") "T"), 
orig_cte AS 
(SELECT "Calibrate_AVG_Proba"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "Calibrate_AVG_Proba"."Proba_0" AS "Proba_0", "Calibrate_AVG_Proba"."Proba_1" AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "Calibrate_AVG_Proba"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte