-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_sigmoid
-- Dataset : FourClass_10
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018185136_XCUBITN_CalProb_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185136_XCUBITN_CalProb_B0" (
	"KEY" BIGINT, 
	"Proba_0" FLOAT, 
	"Proba_1" FLOAT, 
	"Proba_2" FLOAT, 
	"Proba_3" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185136_XCUBITN_CalProb_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.5580734312534332) THEN CASE WHEN ("ADS"."Feature_3" <= -1.7759541869163513) THEN 2 ELSE CASE WHEN ("ADS"."Feature_4" <= -0.35484130680561066) THEN CASE WHEN ("ADS"."Feature_7" <= -1.3945664763450623) THEN 5 ELSE CASE WHEN ("ADS"."Feature_1" <= 1.2103608548641205) THEN 7 ELSE 8 END END ELSE 9 END END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.362348735332489) THEN CASE WHEN ("ADS"."Feature_1" <= -0.5951647609472275) THEN 12 ELSE 13 END ELSE CASE WHEN ("ADS"."Feature_7" <= 3.131764531135559) THEN CASE WHEN ("ADS"."Feature_9" <= -1.589853823184967) THEN 16 ELSE CASE WHEN ("ADS"."Feature_5" <= 1.7956550121307373) THEN 18 ELSE 19 END END ELSE 20 END END END AS node_id_2 
FROM "FourClass_10" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."D" AS "D", "Values"."DP" AS "DP" 
FROM (SELECT 2 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 5 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 7 AS nid, 0.2 AS "P_0", 0.0 AS "P_1", 0.8 AS "P_2", 0.0 AS "P_3", 2 AS "D", 0.8 AS "DP" UNION ALL SELECT 8 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 9 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 12 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 13 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 16 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 18 AS nid, 0.0 AS "P_0", 0.875 AS "P_1", 0.0 AS "P_2", 0.125 AS "P_3", 1 AS "D", 0.875 AS "DP" UNION ALL SELECT 19 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 20 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_0" AS "P_0", "DT_node_data"."P_1" AS "P_1", "DT_node_data"."P_2" AS "P_2", "DT_node_data"."P_3" AS "P_3", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"Calibrated_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", "DT_Output"."P_0" AS "Proba_0", "DT_Output"."P_1" AS "Proba_1", "DT_Output"."P_2" AS "Proba_2", "DT_Output"."P_3" AS "Proba_3", CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > 0.0) THEN ln("DT_Output"."P_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > 0.0) THEN ln("DT_Output"."P_1") ELSE '-Infinity'::float8 END AS "LogProba_1", CASE WHEN ("DT_Output"."P_2" IS NULL OR "DT_Output"."P_2" > 0.0) THEN ln("DT_Output"."P_2") ELSE '-Infinity'::float8 END AS "LogProba_2", CASE WHEN ("DT_Output"."P_3" IS NULL OR "DT_Output"."P_3" > 0.0) THEN ln("DT_Output"."P_3") ELSE '-Infinity'::float8 END AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba", coalesce(CAST(NULL AS FLOAT), "DT_Output"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS FLOAT), "DT_Output"."P_1") AS "ScoreOrProba_1", coalesce(CAST(NULL AS FLOAT), "DT_Output"."P_2") AS "ScoreOrProba_2", coalesce(CAST(NULL AS FLOAT), "DT_Output"."P_3") AS "ScoreOrProba_3" 
FROM "DT_Output"), 
sigmoid_calibration_0 AS 
(SELECT "Calibrated_Model_0"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(2.5492470312606317 * "Calibrated_Model_0"."ScoreOrProba_0" + -1.7882076040738046))))) AS "Proba_0", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(1.596529418727809 * "Calibrated_Model_0"."ScoreOrProba_1" + -1.5654279247168081))))) AS "Proba_1", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(1.5421687240963162 * "Calibrated_Model_0"."ScoreOrProba_2" + -1.3957623211185077))))) AS "Proba_2", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(2.458665819722004 * "Calibrated_Model_0"."ScoreOrProba_3" + -2.131680397837361))))) AS "Proba_3" 
FROM "Calibrated_Model_0"), 
"Normalized_Probas" AS 
(SELECT sigmoid_calibration_0."KEY" AS "KEY", sigmoid_calibration_0."Proba_0" / (sigmoid_calibration_0."Proba_0" + sigmoid_calibration_0."Proba_1" + sigmoid_calibration_0."Proba_2" + sigmoid_calibration_0."Proba_3") AS "Proba_0", sigmoid_calibration_0."Proba_1" / (sigmoid_calibration_0."Proba_0" + sigmoid_calibration_0."Proba_1" + sigmoid_calibration_0."Proba_2" + sigmoid_calibration_0."Proba_3") AS "Proba_1", sigmoid_calibration_0."Proba_2" / (sigmoid_calibration_0."Proba_0" + sigmoid_calibration_0."Proba_1" + sigmoid_calibration_0."Proba_2" + sigmoid_calibration_0."Proba_3") AS "Proba_2", sigmoid_calibration_0."Proba_3" / (sigmoid_calibration_0."Proba_0" + sigmoid_calibration_0."Proba_1" + sigmoid_calibration_0."Proba_2" + sigmoid_calibration_0."Proba_3") AS "Proba_3" 
FROM sigmoid_calibration_0), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.6375722885131836) THEN CASE WHEN ("ADS"."Feature_4" <= -0.35484130680561066) THEN CASE WHEN ("ADS"."Feature_1" <= 0.504041001200676) THEN CASE WHEN ("ADS"."Feature_5" <= 0.059238336980342865) THEN 4 ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_2" <= -1.900172233581543) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_3" <= -2.2557533979415894) THEN 10 ELSE CASE WHEN ("ADS"."Feature_2" <= -2.539427638053894) THEN 12 ELSE 13 END END END ELSE CASE WHEN ("ADS"."Feature_4" <= -0.14806882664561272) THEN CASE WHEN ("ADS"."Feature_7" <= 0.1897896433947608) THEN 16 ELSE CASE WHEN ("ADS"."Feature_8" <= 0.33265136182308197) THEN 18 ELSE CASE WHEN ("ADS"."Feature_8" <= 0.799442321062088) THEN 20 ELSE 21 END END END ELSE CASE WHEN ("ADS"."Feature_9" <= -1.4294551014900208) THEN 23 ELSE CASE WHEN ("ADS"."Feature_8" <= -0.8872426450252533) THEN CASE WHEN ("ADS"."Feature_6" <= -0.9329301416873932) THEN 26 ELSE 27 END ELSE 28 END END END END AS node_id_2 
FROM "FourClass_10" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."D" AS "D", "Values"."DP" AS "DP" 
FROM (SELECT 4 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 5 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 7 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 8 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 10 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 12 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 13 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 16 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 18 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 20 AS nid, 0.0 AS "P_0", 0.3333333333333333 AS "P_1", 0.0 AS "P_2", 0.6666666666666666 AS "P_3", 3 AS "D", 0.6666666666666666 AS "DP" UNION ALL SELECT 21 AS nid, 0.0 AS "P_0", 0.3333333333333333 AS "P_1", 0.6666666666666666 AS "P_2", 0.0 AS "P_3", 2 AS "D", 0.6666666666666666 AS "DP" UNION ALL SELECT 23 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 26 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 27 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 28 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."P_0" AS "P_0", "DT_node_data_1"."P_1" AS "P_1", "DT_node_data_1"."P_2" AS "P_2", "DT_node_data_1"."P_3" AS "P_3", "DT_node_data_1"."D" AS "D", "DT_node_data_1"."DP" AS "DP" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"Calibrated_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", "DT_Output_1"."P_0" AS "Proba_0", "DT_Output_1"."P_1" AS "Proba_1", "DT_Output_1"."P_2" AS "Proba_2", "DT_Output_1"."P_3" AS "Proba_3", CASE WHEN ("DT_Output_1"."P_0" IS NULL OR "DT_Output_1"."P_0" > 0.0) THEN ln("DT_Output_1"."P_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN ("DT_Output_1"."P_1" IS NULL OR "DT_Output_1"."P_1" > 0.0) THEN ln("DT_Output_1"."P_1") ELSE '-Infinity'::float8 END AS "LogProba_1", CASE WHEN ("DT_Output_1"."P_2" IS NULL OR "DT_Output_1"."P_2" > 0.0) THEN ln("DT_Output_1"."P_2") ELSE '-Infinity'::float8 END AS "LogProba_2", CASE WHEN ("DT_Output_1"."P_3" IS NULL OR "DT_Output_1"."P_3" > 0.0) THEN ln("DT_Output_1"."P_3") ELSE '-Infinity'::float8 END AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba", coalesce(CAST(NULL AS FLOAT), "DT_Output_1"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS FLOAT), "DT_Output_1"."P_1") AS "ScoreOrProba_1", coalesce(CAST(NULL AS FLOAT), "DT_Output_1"."P_2") AS "ScoreOrProba_2", coalesce(CAST(NULL AS FLOAT), "DT_Output_1"."P_3") AS "ScoreOrProba_3" 
FROM "DT_Output_1"), 
sigmoid_calibration_1 AS 
(SELECT "Calibrated_Model_1"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(2.905345084762549 * "Calibrated_Model_1"."ScoreOrProba_0" + -2.0700246142981693))))) AS "Proba_0", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(2.4518409127002156 * "Calibrated_Model_1"."ScoreOrProba_1" + -2.0071873789295784))))) AS "Proba_1", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(1.3075887920199918 * "Calibrated_Model_1"."ScoreOrProba_2" + -1.515381085469717))))) AS "Proba_2", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(3.505003484432656 * "Calibrated_Model_1"."ScoreOrProba_3" + -1.7132439237219161))))) AS "Proba_3" 
FROM "Calibrated_Model_1"), 
"Normalized_Probas_1" AS 
(SELECT sigmoid_calibration_1."KEY" AS "KEY", sigmoid_calibration_1."Proba_0" / (sigmoid_calibration_1."Proba_0" + sigmoid_calibration_1."Proba_1" + sigmoid_calibration_1."Proba_2" + sigmoid_calibration_1."Proba_3") AS "Proba_0", sigmoid_calibration_1."Proba_1" / (sigmoid_calibration_1."Proba_0" + sigmoid_calibration_1."Proba_1" + sigmoid_calibration_1."Proba_2" + sigmoid_calibration_1."Proba_3") AS "Proba_1", sigmoid_calibration_1."Proba_2" / (sigmoid_calibration_1."Proba_0" + sigmoid_calibration_1."Proba_1" + sigmoid_calibration_1."Proba_2" + sigmoid_calibration_1."Proba_3") AS "Proba_2", sigmoid_calibration_1."Proba_3" / (sigmoid_calibration_1."Proba_0" + sigmoid_calibration_1."Proba_1" + sigmoid_calibration_1."Proba_2" + sigmoid_calibration_1."Proba_3") AS "Proba_3" 
FROM sigmoid_calibration_1), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.6454985737800598) THEN CASE WHEN ("ADS"."Feature_3" <= -1.9080277681350708) THEN 2 ELSE CASE WHEN ("ADS"."Feature_8" <= -1.3765310645103455) THEN 4 ELSE CASE WHEN ("ADS"."Feature_8" <= 0.23840734362602234) THEN CASE WHEN ("ADS"."Feature_1" <= 0.030811965465545654) THEN 7 ELSE 8 END ELSE 9 END END END ELSE CASE WHEN ("ADS"."Feature_7" <= -0.234144888818264) THEN CASE WHEN ("ADS"."Feature_1" <= -0.18966388702392578) THEN 12 ELSE 13 END ELSE CASE WHEN ("ADS"."Feature_1" <= 2.708956480026245) THEN CASE WHEN ("ADS"."Feature_9" <= 0.10254730749875307) THEN CASE WHEN ("ADS"."Feature_9" <= -1.589853823184967) THEN 17 ELSE 18 END ELSE CASE WHEN ("ADS"."Feature_4" <= -1.0124135315418243) THEN 20 ELSE 21 END END ELSE 22 END END END AS node_id_2 
FROM "FourClass_10" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."D" AS "D", "Values"."DP" AS "DP" 
FROM (SELECT 2 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 4 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 7 AS nid, 0.6 AS "P_0", 0.0 AS "P_1", 0.2 AS "P_2", 0.2 AS "P_3", 0 AS "D", 0.6 AS "DP" UNION ALL SELECT 8 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 9 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 12 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 13 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 17 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 18 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 20 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 21 AS nid, 0.14285714285714285 AS "P_0", 0.5714285714285714 AS "P_1", 0.0 AS "P_2", 0.2857142857142857 AS "P_3", 1 AS "D", 0.5714285714285714 AS "DP" UNION ALL SELECT 22 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."P_0" AS "P_0", "DT_node_data_2"."P_1" AS "P_1", "DT_node_data_2"."P_2" AS "P_2", "DT_node_data_2"."P_3" AS "P_3", "DT_node_data_2"."D" AS "D", "DT_node_data_2"."DP" AS "DP" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"Calibrated_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", "DT_Output_2"."P_0" AS "Proba_0", "DT_Output_2"."P_1" AS "Proba_1", "DT_Output_2"."P_2" AS "Proba_2", "DT_Output_2"."P_3" AS "Proba_3", CASE WHEN ("DT_Output_2"."P_0" IS NULL OR "DT_Output_2"."P_0" > 0.0) THEN ln("DT_Output_2"."P_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN ("DT_Output_2"."P_1" IS NULL OR "DT_Output_2"."P_1" > 0.0) THEN ln("DT_Output_2"."P_1") ELSE '-Infinity'::float8 END AS "LogProba_1", CASE WHEN ("DT_Output_2"."P_2" IS NULL OR "DT_Output_2"."P_2" > 0.0) THEN ln("DT_Output_2"."P_2") ELSE '-Infinity'::float8 END AS "LogProba_2", CASE WHEN ("DT_Output_2"."P_3" IS NULL OR "DT_Output_2"."P_3" > 0.0) THEN ln("DT_Output_2"."P_3") ELSE '-Infinity'::float8 END AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba", coalesce(CAST(NULL AS FLOAT), "DT_Output_2"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS FLOAT), "DT_Output_2"."P_1") AS "ScoreOrProba_1", coalesce(CAST(NULL AS FLOAT), "DT_Output_2"."P_2") AS "ScoreOrProba_2", coalesce(CAST(NULL AS FLOAT), "DT_Output_2"."P_3") AS "ScoreOrProba_3" 
FROM "DT_Output_2"), 
sigmoid_calibration_2 AS 
(SELECT "Calibrated_Model_2"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(1.6553122659968933 * "Calibrated_Model_2"."ScoreOrProba_0" + -1.9465359156649766))))) AS "Proba_0", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(1.4842829120382715 * "Calibrated_Model_2"."ScoreOrProba_1" + -1.4260945474099451))))) AS "Proba_1", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(0.18516420736990685 * "Calibrated_Model_2"."ScoreOrProba_2" + -1.1227740857433035))))) AS "Proba_2", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(2.3275370279747007 * "Calibrated_Model_2"."ScoreOrProba_3" + -1.178817079014264))))) AS "Proba_3" 
FROM "Calibrated_Model_2"), 
"Normalized_Probas_2" AS 
(SELECT sigmoid_calibration_2."KEY" AS "KEY", sigmoid_calibration_2."Proba_0" / (sigmoid_calibration_2."Proba_0" + sigmoid_calibration_2."Proba_1" + sigmoid_calibration_2."Proba_2" + sigmoid_calibration_2."Proba_3") AS "Proba_0", sigmoid_calibration_2."Proba_1" / (sigmoid_calibration_2."Proba_0" + sigmoid_calibration_2."Proba_1" + sigmoid_calibration_2."Proba_2" + sigmoid_calibration_2."Proba_3") AS "Proba_1", sigmoid_calibration_2."Proba_2" / (sigmoid_calibration_2."Proba_0" + sigmoid_calibration_2."Proba_1" + sigmoid_calibration_2."Proba_2" + sigmoid_calibration_2."Proba_3") AS "Proba_2", sigmoid_calibration_2."Proba_3" / (sigmoid_calibration_2."Proba_0" + sigmoid_calibration_2."Proba_1" + sigmoid_calibration_2."Proba_2" + sigmoid_calibration_2."Proba_3") AS "Proba_3" 
FROM sigmoid_calibration_2), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.6375722885131836) THEN CASE WHEN ("ADS"."Feature_4" <= -0.22726380452513695) THEN CASE WHEN ("ADS"."Feature_8" <= -1.3765310645103455) THEN 3 ELSE CASE WHEN ("ADS"."Feature_7" <= -2.517311692237854) THEN 5 ELSE CASE WHEN ("ADS"."Feature_3" <= -1.1015613675117493) THEN 7 ELSE 8 END END END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.28215067833662033) THEN 10 ELSE 11 END END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.44504228234291077) THEN CASE WHEN ("ADS"."Feature_4" <= -0.13814806938171387) THEN 14 ELSE CASE WHEN ("ADS"."Feature_7" <= 0.07134207338094711) THEN 16 ELSE 17 END END ELSE CASE WHEN ("ADS"."Feature_8" <= 1.035046935081482) THEN CASE WHEN ("ADS"."Feature_7" <= 3.2653926610946655) THEN CASE WHEN ("ADS"."Feature_1" <= -0.6816645860671997) THEN 21 ELSE 22 END ELSE 23 END ELSE 24 END END END AS node_id_2 
FROM "FourClass_10" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."D" AS "D", "Values"."DP" AS "DP" 
FROM (SELECT 3 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 5 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 7 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 8 AS nid, 0.4 AS "P_0", 0.0 AS "P_1", 0.4 AS "P_2", 0.2 AS "P_3", 0 AS "D", 0.4 AS "DP" UNION ALL SELECT 10 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 11 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 14 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 16 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 17 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 21 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 22 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 23 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 24 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."P_0" AS "P_0", "DT_node_data_3"."P_1" AS "P_1", "DT_node_data_3"."P_2" AS "P_2", "DT_node_data_3"."P_3" AS "P_3", "DT_node_data_3"."D" AS "D", "DT_node_data_3"."DP" AS "DP" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"Calibrated_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", "DT_Output_3"."P_0" AS "Proba_0", "DT_Output_3"."P_1" AS "Proba_1", "DT_Output_3"."P_2" AS "Proba_2", "DT_Output_3"."P_3" AS "Proba_3", CASE WHEN ("DT_Output_3"."P_0" IS NULL OR "DT_Output_3"."P_0" > 0.0) THEN ln("DT_Output_3"."P_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN ("DT_Output_3"."P_1" IS NULL OR "DT_Output_3"."P_1" > 0.0) THEN ln("DT_Output_3"."P_1") ELSE '-Infinity'::float8 END AS "LogProba_1", CASE WHEN ("DT_Output_3"."P_2" IS NULL OR "DT_Output_3"."P_2" > 0.0) THEN ln("DT_Output_3"."P_2") ELSE '-Infinity'::float8 END AS "LogProba_2", CASE WHEN ("DT_Output_3"."P_3" IS NULL OR "DT_Output_3"."P_3" > 0.0) THEN ln("DT_Output_3"."P_3") ELSE '-Infinity'::float8 END AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba", coalesce(CAST(NULL AS FLOAT), "DT_Output_3"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS FLOAT), "DT_Output_3"."P_1") AS "ScoreOrProba_1", coalesce(CAST(NULL AS FLOAT), "DT_Output_3"."P_2") AS "ScoreOrProba_2", coalesce(CAST(NULL AS FLOAT), "DT_Output_3"."P_3") AS "ScoreOrProba_3" 
FROM "DT_Output_3"), 
sigmoid_calibration_3 AS 
(SELECT "Calibrated_Model_3"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(0.6541345978264838 * "Calibrated_Model_3"."ScoreOrProba_0" + -1.431848418349633))))) AS "Proba_0", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(1.3969638678099034 * "Calibrated_Model_3"."ScoreOrProba_1" + -1.5654274312060947))))) AS "Proba_1", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(0.7771003168569949 * "Calibrated_Model_3"."ScoreOrProba_2" + -1.2745028430865424))))) AS "Proba_2", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(1.948907765544585 * "Calibrated_Model_3"."ScoreOrProba_3" + -1.5260515838033688))))) AS "Proba_3" 
FROM "Calibrated_Model_3"), 
"Normalized_Probas_3" AS 
(SELECT sigmoid_calibration_3."KEY" AS "KEY", sigmoid_calibration_3."Proba_0" / (sigmoid_calibration_3."Proba_0" + sigmoid_calibration_3."Proba_1" + sigmoid_calibration_3."Proba_2" + sigmoid_calibration_3."Proba_3") AS "Proba_0", sigmoid_calibration_3."Proba_1" / (sigmoid_calibration_3."Proba_0" + sigmoid_calibration_3."Proba_1" + sigmoid_calibration_3."Proba_2" + sigmoid_calibration_3."Proba_3") AS "Proba_1", sigmoid_calibration_3."Proba_2" / (sigmoid_calibration_3."Proba_0" + sigmoid_calibration_3."Proba_1" + sigmoid_calibration_3."Proba_2" + sigmoid_calibration_3."Proba_3") AS "Proba_2", sigmoid_calibration_3."Proba_3" / (sigmoid_calibration_3."Proba_0" + sigmoid_calibration_3."Proba_1" + sigmoid_calibration_3."Proba_2" + sigmoid_calibration_3."Proba_3") AS "Proba_3" 
FROM sigmoid_calibration_3)
 INSERT INTO "TMP_20221018185136_XCUBITN_CalProb_B0" ("KEY", "Proba_0", "Proba_1", "Proba_2", "Proba_3") SELECT "T"."KEY", "T"."Proba_0", "T"."Proba_1", "T"."Proba_2", "T"."Proba_3" 
FROM (SELECT "CalProb_B0"."KEY" AS "KEY", "CalProb_B0"."Proba_0" AS "Proba_0", "CalProb_B0"."Proba_1" AS "Proba_1", "CalProb_B0"."Proba_2" AS "Proba_2", "CalProb_B0"."Proba_3" AS "Proba_3" 
FROM (SELECT "CalProb_esu_0"."KEY" AS "KEY", "CalProb_esu_0"."Proba_0" AS "Proba_0", "CalProb_esu_0"."Proba_1" AS "Proba_1", "CalProb_esu_0"."Proba_2" AS "Proba_2", "CalProb_esu_0"."Proba_3" AS "Proba_3" 
FROM (SELECT "Normalized_Probas"."KEY" AS "KEY", "Normalized_Probas"."Proba_0" AS "Proba_0", "Normalized_Probas"."Proba_1" AS "Proba_1", "Normalized_Probas"."Proba_2" AS "Proba_2", "Normalized_Probas"."Proba_3" AS "Proba_3" 
FROM "Normalized_Probas" UNION ALL SELECT "Normalized_Probas_1"."KEY" AS "KEY", "Normalized_Probas_1"."Proba_0" AS "Proba_0", "Normalized_Probas_1"."Proba_1" AS "Proba_1", "Normalized_Probas_1"."Proba_2" AS "Proba_2", "Normalized_Probas_1"."Proba_3" AS "Proba_3" 
FROM "Normalized_Probas_1" UNION ALL SELECT "Normalized_Probas_2"."KEY" AS "KEY", "Normalized_Probas_2"."Proba_0" AS "Proba_0", "Normalized_Probas_2"."Proba_1" AS "Proba_1", "Normalized_Probas_2"."Proba_2" AS "Proba_2", "Normalized_Probas_2"."Proba_3" AS "Proba_3" 
FROM "Normalized_Probas_2" UNION ALL SELECT "Normalized_Probas_3"."KEY" AS "KEY", "Normalized_Probas_3"."Proba_0" AS "Proba_0", "Normalized_Probas_3"."Proba_1" AS "Proba_1", "Normalized_Probas_3"."Proba_2" AS "Proba_2", "Normalized_Probas_3"."Proba_3" AS "Proba_3" 
FROM "Normalized_Probas_3") AS "CalProb_esu_0") AS "CalProb_B0") AS "T"

-- Code For temporary table TMP_20221018185136_XWEI8MR_CalProb_avg part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185136_XWEI8MR_CalProb_avg" (
	"KEY" BIGINT NOT NULL, 
	"Proba_0" FLOAT, 
	"Proba_1" FLOAT, 
	"Proba_2" FLOAT, 
	"Proba_3" FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185136_XWEI8MR_CalProb_avg part 2. Populate

WITH "CalProb_Union" AS 
(SELECT "CalProb_EnsembleUnion"."KEY" AS "KEY", "CalProb_EnsembleUnion"."Proba_0" AS "Proba_0", "CalProb_EnsembleUnion"."Proba_1" AS "Proba_1", "CalProb_EnsembleUnion"."Proba_2" AS "Proba_2", "CalProb_EnsembleUnion"."Proba_3" AS "Proba_3" 
FROM (SELECT "CalProb_B0"."KEY" AS "KEY", "CalProb_B0"."Proba_0" AS "Proba_0", "CalProb_B0"."Proba_1" AS "Proba_1", "CalProb_B0"."Proba_2" AS "Proba_2", "CalProb_B0"."Proba_3" AS "Proba_3" 
FROM "TMP_20221018185136_XCUBITN_CalProb_B0" AS "CalProb_B0") AS "CalProb_EnsembleUnion")
 INSERT INTO "TMP_20221018185136_XWEI8MR_CalProb_avg" ("KEY", "Proba_0", "Proba_1", "Proba_2", "Proba_3") SELECT "T"."KEY", "T"."Proba_0", "T"."Proba_1", "T"."Proba_2", "T"."Proba_3" 
FROM (SELECT "CalProb_avg"."KEY" AS "KEY", "CalProb_avg"."Proba_0" AS "Proba_0", "CalProb_avg"."Proba_1" AS "Proba_1", "CalProb_avg"."Proba_2" AS "Proba_2", "CalProb_avg"."Proba_3" AS "Proba_3" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Proba_0" AS FLOAT) AS "Proba_0", CAST("T"."Proba_1" AS FLOAT) AS "Proba_1", CAST("T"."Proba_2" AS FLOAT) AS "Proba_2", CAST("T"."Proba_3" AS FLOAT) AS "Proba_3" 
FROM (SELECT "CalProb_Union"."KEY" AS "KEY", avg(CAST("CalProb_Union"."Proba_0" AS FLOAT)) AS "Proba_0", avg(CAST("CalProb_Union"."Proba_1" AS FLOAT)) AS "Proba_1", avg(CAST("CalProb_Union"."Proba_2" AS FLOAT)) AS "Proba_2", avg(CAST("CalProb_Union"."Proba_3" AS FLOAT)) AS "Proba_3" 
FROM "CalProb_Union" GROUP BY "CalProb_Union"."KEY") AS "T") AS "CalProb_avg") AS "T"

-- Code For temporary table TMP_20221018185136_XWEI8MR_CalProb_avg part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185136_XWEI8MR_CalProb_avg_KEY" ON "TMP_20221018185136_XWEI8MR_CalProb_avg" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "CalProb_avg"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", "CalProb_avg"."Proba_0" AS "Proba_0", "CalProb_avg"."Proba_1" AS "Proba_1", "CalProb_avg"."Proba_2" AS "Proba_2", "CalProb_avg"."Proba_3" AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "TMP_20221018185136_XWEI8MR_CalProb_avg" AS "CalProb_avg"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", max(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."Proba" >= union_with_max."max_Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE '-Infinity'::float8 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE '-Infinity'::float8 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE '-Infinity'::float8 END AS "LogProba_3", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte