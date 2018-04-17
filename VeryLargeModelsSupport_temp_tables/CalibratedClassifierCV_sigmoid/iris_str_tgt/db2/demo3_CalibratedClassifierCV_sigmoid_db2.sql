-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_sigmoid
-- Dataset : iris_str_tgt
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180417050856_w7bxe9_calprob_b0 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417050856_w7bxe9_calprob_b0 (
	"KEY" BIGINT, 
	"Proba_CLASS_0" DOUBLE, 
	"Proba_CLASS_1" DOUBLE, 
	"Proba_CLASS_2" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417050856_w7bxe9_calprob_b0 part 2/2. Populate

INSERT INTO tmp_20180417050856_w7bxe9_calprob_b0 WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.75) THEN 1 ELSE CASE WHEN ("ADS"."Feature_2" <= 4.75) THEN 3 ELSE CASE WHEN ("ADS"."Feature_2" <= 5.050000190734863) THEN CASE WHEN ("ADS"."Feature_1" <= 3.049999952316284) THEN CASE WHEN ("ADS"."Feature_3" <= 1.75) THEN 7 ELSE 8 END ELSE 9 END ELSE 10 END END END AS node_id_2 
FROM "IRIS_STR_TGT" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values"."count" AS DOUBLE) AS "count", CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Proba_CLASS_0" AS DOUBLE) AS "Proba_CLASS_0", CAST("Values"."LogProba_CLASS_0" AS DOUBLE) AS "LogProba_CLASS_0", CAST("Values"."Proba_CLASS_1" AS DOUBLE) AS "Proba_CLASS_1", CAST("Values"."LogProba_CLASS_1" AS DOUBLE) AS "LogProba_CLASS_1", CAST("Values"."Proba_CLASS_2" AS DOUBLE) AS "Proba_CLASS_2", CAST("Values"."LogProba_CLASS_2" AS DOUBLE) AS "LogProba_CLASS_2", CAST("Values"."Decision" AS DOUBLE) AS "Decision", CAST("Values"."DecisionProba" AS DOUBLE) AS "DecisionProba" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 27 AS "count", 1 AS depth, 0 AS parent_id, 1.0 AS "Proba_CLASS_0", 0.0 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_0' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 26 AS "count", 2 AS depth, 2 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 1.0 AS "Proba_CLASS_1", 0.0 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_1' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 5 AS depth, 6 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 0.6666666666666666 AS "Proba_CLASS_1", -0.40546510810816444 AS "LogProba_CLASS_1", 0.3333333333333333 AS "Proba_CLASS_2", -1.0986122886681098 AS "LogProba_CLASS_2", 'CLASS_1' AS "Decision", 0.6666666666666666 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS "count", 5 AS depth, 6 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 1.0 AS "Proba_CLASS_2", 0.0 AS "LogProba_CLASS_2", 'CLASS_2' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS "count", 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 1.0 AS "Proba_CLASS_1", 0.0 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_1' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 26 AS "count", 3 AS depth, 4 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 1.0 AS "Proba_CLASS_2", 0.0 AS "LogProba_CLASS_2", 'CLASS_2' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_CLASS_0" AS "Proba_CLASS_0", "DT_node_data"."LogProba_CLASS_0" AS "LogProba_CLASS_0", "DT_node_data"."Proba_CLASS_1" AS "Proba_CLASS_1", "DT_node_data"."LogProba_CLASS_1" AS "LogProba_CLASS_1", "DT_node_data"."Proba_CLASS_2" AS "Proba_CLASS_2", "DT_node_data"."LogProba_CLASS_2" AS "LogProba_CLASS_2", "DT_node_data"."Decision" AS "Decision", "DT_node_data"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"Calibrated_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_CLASS_0", CAST(NULL AS DOUBLE) AS "Score_CLASS_1", CAST(NULL AS DOUBLE) AS "Score_CLASS_2", "DT_Output"."Proba_CLASS_0" AS "Proba_CLASS_0", "DT_Output"."Proba_CLASS_1" AS "Proba_CLASS_1", "DT_Output"."Proba_CLASS_2" AS "Proba_CLASS_2", "DT_Output"."LogProba_CLASS_0" AS "LogProba_CLASS_0", "DT_Output"."LogProba_CLASS_1" AS "LogProba_CLASS_1", "DT_Output"."LogProba_CLASS_2" AS "LogProba_CLASS_2", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS DOUBLE), "DT_Output"."Proba_CLASS_0") AS "ScoreOrProba_CLASS_0", coalesce(CAST(NULL AS DOUBLE), "DT_Output"."Proba_CLASS_1") AS "ScoreOrProba_CLASS_1", coalesce(CAST(NULL AS DOUBLE), "DT_Output"."Proba_CLASS_2") AS "ScoreOrProba_CLASS_2" 
FROM "DT_Output"), 
sigmoid_calibration_0 AS 
(SELECT "Calibrated_Model_0"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -(5.488937334779731 * "Calibrated_Model_0"."ScoreOrProba_CLASS_0" + -3.0910424939613868)), 100.0))) AS "Proba_CLASS_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.718121478468529 * "Calibrated_Model_0"."ScoreOrProba_CLASS_1" + -2.95244363385918)), 100.0))) AS "Proba_CLASS_1", 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.801955584523639 * "Calibrated_Model_0"."ScoreOrProba_CLASS_2" + -2.4323200933644706)), 100.0))) AS "Proba_CLASS_2" 
FROM "Calibrated_Model_0"), 
"Normalized_Probas" AS 
(SELECT sigmoid_calibration_0."KEY" AS "KEY", sigmoid_calibration_0."Proba_CLASS_0" / (sigmoid_calibration_0."Proba_CLASS_0" + sigmoid_calibration_0."Proba_CLASS_1" + sigmoid_calibration_0."Proba_CLASS_2") AS "Proba_CLASS_0", sigmoid_calibration_0."Proba_CLASS_1" / (sigmoid_calibration_0."Proba_CLASS_0" + sigmoid_calibration_0."Proba_CLASS_1" + sigmoid_calibration_0."Proba_CLASS_2") AS "Proba_CLASS_1", sigmoid_calibration_0."Proba_CLASS_2" / (sigmoid_calibration_0."Proba_CLASS_0" + sigmoid_calibration_0."Proba_CLASS_1" + sigmoid_calibration_0."Proba_CLASS_2") AS "Proba_CLASS_2" 
FROM sigmoid_calibration_0), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.800000011920929) THEN 1 ELSE CASE WHEN ("ADS"."Feature_2" <= 4.949999809265137) THEN CASE WHEN ("ADS"."Feature_3" <= 1.6500000953674316) THEN 4 ELSE CASE WHEN ("ADS"."Feature_1" <= 3.0999999046325684) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 5.050000190734863) THEN CASE WHEN ("ADS"."Feature_0" <= 6.5) THEN 10 ELSE 11 END ELSE 12 END END END AS node_id_2 
FROM "IRIS_STR_TGT" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values"."count" AS DOUBLE) AS "count", CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Proba_CLASS_0" AS DOUBLE) AS "Proba_CLASS_0", CAST("Values"."LogProba_CLASS_0" AS DOUBLE) AS "LogProba_CLASS_0", CAST("Values"."Proba_CLASS_1" AS DOUBLE) AS "Proba_CLASS_1", CAST("Values"."LogProba_CLASS_1" AS DOUBLE) AS "LogProba_CLASS_1", CAST("Values"."Proba_CLASS_2" AS DOUBLE) AS "Proba_CLASS_2", CAST("Values"."LogProba_CLASS_2" AS DOUBLE) AS "LogProba_CLASS_2", CAST("Values"."Decision" AS DOUBLE) AS "Decision", CAST("Values"."DecisionProba" AS DOUBLE) AS "DecisionProba" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 28 AS "count", 1 AS depth, 0 AS parent_id, 1.0 AS "Proba_CLASS_0", 0.0 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_0' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 28 AS "count", 3 AS depth, 3 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 1.0 AS "Proba_CLASS_1", 0.0 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_1' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS "count", 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 1.0 AS "Proba_CLASS_2", 0.0 AS "LogProba_CLASS_2", 'CLASS_2' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 1.0 AS "Proba_CLASS_1", 0.0 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_1' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS "count", 4 AS depth, 9 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 1.0 AS "Proba_CLASS_2", 0.0 AS "LogProba_CLASS_2", 'CLASS_2' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 9 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 1.0 AS "Proba_CLASS_1", 0.0 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_1' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 26 AS "count", 3 AS depth, 8 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 1.0 AS "Proba_CLASS_2", 0.0 AS "LogProba_CLASS_2", 'CLASS_2' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1"."count" AS "count", "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Proba_CLASS_0" AS "Proba_CLASS_0", "DT_node_data_1"."LogProba_CLASS_0" AS "LogProba_CLASS_0", "DT_node_data_1"."Proba_CLASS_1" AS "Proba_CLASS_1", "DT_node_data_1"."LogProba_CLASS_1" AS "LogProba_CLASS_1", "DT_node_data_1"."Proba_CLASS_2" AS "Proba_CLASS_2", "DT_node_data_1"."LogProba_CLASS_2" AS "LogProba_CLASS_2", "DT_node_data_1"."Decision" AS "Decision", "DT_node_data_1"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"Calibrated_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_CLASS_0", CAST(NULL AS DOUBLE) AS "Score_CLASS_1", CAST(NULL AS DOUBLE) AS "Score_CLASS_2", "DT_Output_1"."Proba_CLASS_0" AS "Proba_CLASS_0", "DT_Output_1"."Proba_CLASS_1" AS "Proba_CLASS_1", "DT_Output_1"."Proba_CLASS_2" AS "Proba_CLASS_2", "DT_Output_1"."LogProba_CLASS_0" AS "LogProba_CLASS_0", "DT_Output_1"."LogProba_CLASS_1" AS "LogProba_CLASS_1", "DT_Output_1"."LogProba_CLASS_2" AS "LogProba_CLASS_2", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS DOUBLE), "DT_Output_1"."Proba_CLASS_0") AS "ScoreOrProba_CLASS_0", coalesce(CAST(NULL AS DOUBLE), "DT_Output_1"."Proba_CLASS_1") AS "ScoreOrProba_CLASS_1", coalesce(CAST(NULL AS DOUBLE), "DT_Output_1"."Proba_CLASS_2") AS "ScoreOrProba_CLASS_2" 
FROM "DT_Output_1"), 
sigmoid_calibration_1 AS 
(SELECT "Calibrated_Model_1"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -(5.393626322122635 * "Calibrated_Model_1"."ScoreOrProba_CLASS_0" + -3.091045517303994)), 100.0))) AS "Proba_CLASS_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -(5.442417342523719 * "Calibrated_Model_1"."ScoreOrProba_CLASS_1" + -3.0445224878196573)), 100.0))) AS "Proba_CLASS_1", 1.0 / (1.0 + exp(least(greatest(-100.0, -(5.480638259777759 * "Calibrated_Model_1"."ScoreOrProba_CLASS_2" + -2.995732594243071)), 100.0))) AS "Proba_CLASS_2" 
FROM "Calibrated_Model_1"), 
"Normalized_Probas_1" AS 
(SELECT sigmoid_calibration_1."KEY" AS "KEY", sigmoid_calibration_1."Proba_CLASS_0" / (sigmoid_calibration_1."Proba_CLASS_0" + sigmoid_calibration_1."Proba_CLASS_1" + sigmoid_calibration_1."Proba_CLASS_2") AS "Proba_CLASS_0", sigmoid_calibration_1."Proba_CLASS_1" / (sigmoid_calibration_1."Proba_CLASS_0" + sigmoid_calibration_1."Proba_CLASS_1" + sigmoid_calibration_1."Proba_CLASS_2") AS "Proba_CLASS_1", sigmoid_calibration_1."Proba_CLASS_2" / (sigmoid_calibration_1."Proba_CLASS_0" + sigmoid_calibration_1."Proba_CLASS_1" + sigmoid_calibration_1."Proba_CLASS_2") AS "Proba_CLASS_2" 
FROM sigmoid_calibration_1), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.800000011920929) THEN 1 ELSE CASE WHEN ("ADS"."Feature_3" <= 1.75) THEN CASE WHEN ("ADS"."Feature_2" <= 4.949999809265137) THEN CASE WHEN ("ADS"."Feature_0" <= 4.949999809265137) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_3" <= 1.6500000953674316) THEN 8 ELSE 9 END END ELSE 10 END END AS node_id_2 
FROM "IRIS_STR_TGT" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values"."count" AS DOUBLE) AS "count", CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Proba_CLASS_0" AS DOUBLE) AS "Proba_CLASS_0", CAST("Values"."LogProba_CLASS_0" AS DOUBLE) AS "LogProba_CLASS_0", CAST("Values"."Proba_CLASS_1" AS DOUBLE) AS "Proba_CLASS_1", CAST("Values"."LogProba_CLASS_1" AS DOUBLE) AS "LogProba_CLASS_1", CAST("Values"."Proba_CLASS_2" AS DOUBLE) AS "Proba_CLASS_2", CAST("Values"."LogProba_CLASS_2" AS DOUBLE) AS "LogProba_CLASS_2", CAST("Values"."Decision" AS DOUBLE) AS "Decision", CAST("Values"."DecisionProba" AS DOUBLE) AS "DecisionProba" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 28 AS "count", 1 AS depth, 0 AS parent_id, 1.0 AS "Proba_CLASS_0", 0.0 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_0' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 4 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 1.0 AS "Proba_CLASS_2", 0.0 AS "LogProba_CLASS_2", 'CLASS_2' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 29 AS "count", 4 AS depth, 4 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 1.0 AS "Proba_CLASS_1", 0.0 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_1' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS "count", 4 AS depth, 7 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 1.0 AS "Proba_CLASS_2", 0.0 AS "LogProba_CLASS_2", 'CLASS_2' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 7 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 1.0 AS "Proba_CLASS_1", 0.0 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_1' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 29 AS "count", 2 AS depth, 2 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 1.0 AS "Proba_CLASS_2", 0.0 AS "LogProba_CLASS_2", 'CLASS_2' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2"."count" AS "count", "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Proba_CLASS_0" AS "Proba_CLASS_0", "DT_node_data_2"."LogProba_CLASS_0" AS "LogProba_CLASS_0", "DT_node_data_2"."Proba_CLASS_1" AS "Proba_CLASS_1", "DT_node_data_2"."LogProba_CLASS_1" AS "LogProba_CLASS_1", "DT_node_data_2"."Proba_CLASS_2" AS "Proba_CLASS_2", "DT_node_data_2"."LogProba_CLASS_2" AS "LogProba_CLASS_2", "DT_node_data_2"."Decision" AS "Decision", "DT_node_data_2"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"Calibrated_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_CLASS_0", CAST(NULL AS DOUBLE) AS "Score_CLASS_1", CAST(NULL AS DOUBLE) AS "Score_CLASS_2", "DT_Output_2"."Proba_CLASS_0" AS "Proba_CLASS_0", "DT_Output_2"."Proba_CLASS_1" AS "Proba_CLASS_1", "DT_Output_2"."Proba_CLASS_2" AS "Proba_CLASS_2", "DT_Output_2"."LogProba_CLASS_0" AS "LogProba_CLASS_0", "DT_Output_2"."LogProba_CLASS_1" AS "LogProba_CLASS_1", "DT_Output_2"."LogProba_CLASS_2" AS "LogProba_CLASS_2", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS DOUBLE), "DT_Output_2"."Proba_CLASS_0") AS "ScoreOrProba_CLASS_0", coalesce(CAST(NULL AS DOUBLE), "DT_Output_2"."Proba_CLASS_1") AS "ScoreOrProba_CLASS_1", coalesce(CAST(NULL AS DOUBLE), "DT_Output_2"."Proba_CLASS_2") AS "ScoreOrProba_CLASS_2" 
FROM "DT_Output_2"), 
sigmoid_calibration_2 AS 
(SELECT "Calibrated_Model_2"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -(5.393626322122635 * "Calibrated_Model_2"."ScoreOrProba_CLASS_0" + -3.091045517303994)), 100.0))) AS "Proba_CLASS_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.346958263204309 * "Calibrated_Model_2"."ScoreOrProba_CLASS_1" + -1.949062502016408)), 100.0))) AS "Proba_CLASS_1", 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.310987825487246 * "Calibrated_Model_2"."ScoreOrProba_CLASS_2" + -2.995735836256492)), 100.0))) AS "Proba_CLASS_2" 
FROM "Calibrated_Model_2"), 
"Normalized_Probas_2" AS 
(SELECT sigmoid_calibration_2."KEY" AS "KEY", sigmoid_calibration_2."Proba_CLASS_0" / (sigmoid_calibration_2."Proba_CLASS_0" + sigmoid_calibration_2."Proba_CLASS_1" + sigmoid_calibration_2."Proba_CLASS_2") AS "Proba_CLASS_0", sigmoid_calibration_2."Proba_CLASS_1" / (sigmoid_calibration_2."Proba_CLASS_0" + sigmoid_calibration_2."Proba_CLASS_1" + sigmoid_calibration_2."Proba_CLASS_2") AS "Proba_CLASS_1", sigmoid_calibration_2."Proba_CLASS_2" / (sigmoid_calibration_2."Proba_CLASS_0" + sigmoid_calibration_2."Proba_CLASS_1" + sigmoid_calibration_2."Proba_CLASS_2") AS "Proba_CLASS_2" 
FROM sigmoid_calibration_2), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.800000011920929) THEN 1 ELSE CASE WHEN ("ADS"."Feature_2" <= 4.850000381469727) THEN CASE WHEN ("ADS"."Feature_3" <= 1.6500000953674316) THEN 4 ELSE CASE WHEN ("ADS"."Feature_1" <= 3.0999999046325684) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 2.549999952316284) THEN CASE WHEN ("ADS"."Feature_2" <= 4.949999809265137) THEN 10 ELSE 11 END ELSE 12 END END END AS node_id_2 
FROM "IRIS_STR_TGT" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values"."count" AS DOUBLE) AS "count", CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Proba_CLASS_0" AS DOUBLE) AS "Proba_CLASS_0", CAST("Values"."LogProba_CLASS_0" AS DOUBLE) AS "LogProba_CLASS_0", CAST("Values"."Proba_CLASS_1" AS DOUBLE) AS "Proba_CLASS_1", CAST("Values"."LogProba_CLASS_1" AS DOUBLE) AS "LogProba_CLASS_1", CAST("Values"."Proba_CLASS_2" AS DOUBLE) AS "Proba_CLASS_2", CAST("Values"."LogProba_CLASS_2" AS DOUBLE) AS "LogProba_CLASS_2", CAST("Values"."Decision" AS DOUBLE) AS "Decision", CAST("Values"."DecisionProba" AS DOUBLE) AS "DecisionProba" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 28 AS "count", 1 AS depth, 0 AS parent_id, 1.0 AS "Proba_CLASS_0", 0.0 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_0' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 28 AS "count", 3 AS depth, 3 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 1.0 AS "Proba_CLASS_1", 0.0 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_1' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS "count", 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 1.0 AS "Proba_CLASS_2", 0.0 AS "LogProba_CLASS_2", 'CLASS_2' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 1.0 AS "Proba_CLASS_1", 0.0 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_1' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 9 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 1.0 AS "Proba_CLASS_1", 0.0 AS "LogProba_CLASS_1", 0.0 AS "Proba_CLASS_2", -1.79769313486231e+308 AS "LogProba_CLASS_2", 'CLASS_1' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS "count", 4 AS depth, 9 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 1.0 AS "Proba_CLASS_2", 0.0 AS "LogProba_CLASS_2", 'CLASS_2' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 29 AS "count", 3 AS depth, 8 AS parent_id, 0.0 AS "Proba_CLASS_0", -1.79769313486231e+308 AS "LogProba_CLASS_0", 0.0 AS "Proba_CLASS_1", -1.79769313486231e+308 AS "LogProba_CLASS_1", 1.0 AS "Proba_CLASS_2", 0.0 AS "LogProba_CLASS_2", 'CLASS_2' AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3"."count" AS "count", "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Proba_CLASS_0" AS "Proba_CLASS_0", "DT_node_data_3"."LogProba_CLASS_0" AS "LogProba_CLASS_0", "DT_node_data_3"."Proba_CLASS_1" AS "Proba_CLASS_1", "DT_node_data_3"."LogProba_CLASS_1" AS "LogProba_CLASS_1", "DT_node_data_3"."Proba_CLASS_2" AS "Proba_CLASS_2", "DT_node_data_3"."LogProba_CLASS_2" AS "LogProba_CLASS_2", "DT_node_data_3"."Decision" AS "Decision", "DT_node_data_3"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"Calibrated_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_CLASS_0", CAST(NULL AS DOUBLE) AS "Score_CLASS_1", CAST(NULL AS DOUBLE) AS "Score_CLASS_2", "DT_Output_3"."Proba_CLASS_0" AS "Proba_CLASS_0", "DT_Output_3"."Proba_CLASS_1" AS "Proba_CLASS_1", "DT_Output_3"."Proba_CLASS_2" AS "Proba_CLASS_2", "DT_Output_3"."LogProba_CLASS_0" AS "LogProba_CLASS_0", "DT_Output_3"."LogProba_CLASS_1" AS "LogProba_CLASS_1", "DT_Output_3"."LogProba_CLASS_2" AS "LogProba_CLASS_2", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS DOUBLE), "DT_Output_3"."Proba_CLASS_0") AS "ScoreOrProba_CLASS_0", coalesce(CAST(NULL AS DOUBLE), "DT_Output_3"."Proba_CLASS_1") AS "ScoreOrProba_CLASS_1", coalesce(CAST(NULL AS DOUBLE), "DT_Output_3"."Proba_CLASS_2") AS "ScoreOrProba_CLASS_2" 
FROM "DT_Output_3"), 
sigmoid_calibration_3 AS 
(SELECT "Calibrated_Model_3"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -(5.3471066241328655 * "Calibrated_Model_3"."ScoreOrProba_CLASS_0" + -3.0445258104151054)), 100.0))) AS "Proba_CLASS_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.295450701778823 * "Calibrated_Model_3"."ScoreOrProba_CLASS_1" + -1.8975549276218453)), 100.0))) AS "Proba_CLASS_1", 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.214379795150796 * "Calibrated_Model_3"."ScoreOrProba_CLASS_2" + -2.99573366824266)), 100.0))) AS "Proba_CLASS_2" 
FROM "Calibrated_Model_3"), 
"Normalized_Probas_3" AS 
(SELECT sigmoid_calibration_3."KEY" AS "KEY", sigmoid_calibration_3."Proba_CLASS_0" / (sigmoid_calibration_3."Proba_CLASS_0" + sigmoid_calibration_3."Proba_CLASS_1" + sigmoid_calibration_3."Proba_CLASS_2") AS "Proba_CLASS_0", sigmoid_calibration_3."Proba_CLASS_1" / (sigmoid_calibration_3."Proba_CLASS_0" + sigmoid_calibration_3."Proba_CLASS_1" + sigmoid_calibration_3."Proba_CLASS_2") AS "Proba_CLASS_1", sigmoid_calibration_3."Proba_CLASS_2" / (sigmoid_calibration_3."Proba_CLASS_0" + sigmoid_calibration_3."Proba_CLASS_1" + sigmoid_calibration_3."Proba_CLASS_2") AS "Proba_CLASS_2" 
FROM sigmoid_calibration_3)
 SELECT "CalProb_B0"."KEY", "CalProb_B0"."Proba_CLASS_0", "CalProb_B0"."Proba_CLASS_1", "CalProb_B0"."Proba_CLASS_2" 
FROM (SELECT "CalProb_esu_0"."KEY" AS "KEY", "CalProb_esu_0"."Proba_CLASS_0" AS "Proba_CLASS_0", "CalProb_esu_0"."Proba_CLASS_1" AS "Proba_CLASS_1", "CalProb_esu_0"."Proba_CLASS_2" AS "Proba_CLASS_2" 
FROM (SELECT "Normalized_Probas"."KEY" AS "KEY", "Normalized_Probas"."Proba_CLASS_0" AS "Proba_CLASS_0", "Normalized_Probas"."Proba_CLASS_1" AS "Proba_CLASS_1", "Normalized_Probas"."Proba_CLASS_2" AS "Proba_CLASS_2" 
FROM "Normalized_Probas" UNION ALL SELECT "Normalized_Probas_1"."KEY" AS "KEY", "Normalized_Probas_1"."Proba_CLASS_0" AS "Proba_CLASS_0", "Normalized_Probas_1"."Proba_CLASS_1" AS "Proba_CLASS_1", "Normalized_Probas_1"."Proba_CLASS_2" AS "Proba_CLASS_2" 
FROM "Normalized_Probas_1" UNION ALL SELECT "Normalized_Probas_2"."KEY" AS "KEY", "Normalized_Probas_2"."Proba_CLASS_0" AS "Proba_CLASS_0", "Normalized_Probas_2"."Proba_CLASS_1" AS "Proba_CLASS_1", "Normalized_Probas_2"."Proba_CLASS_2" AS "Proba_CLASS_2" 
FROM "Normalized_Probas_2" UNION ALL SELECT "Normalized_Probas_3"."KEY" AS "KEY", "Normalized_Probas_3"."Proba_CLASS_0" AS "Proba_CLASS_0", "Normalized_Probas_3"."Proba_CLASS_1" AS "Proba_CLASS_1", "Normalized_Probas_3"."Proba_CLASS_2" AS "Proba_CLASS_2" 
FROM "Normalized_Probas_3") AS "CalProb_esu_0") AS "CalProb_B0"

-- Code For temporary table tmp_20180417050856_lppdnj_calprob_union part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417050856_lppdnj_calprob_union (
	"KEY" BIGINT, 
	"Proba_CLASS_0" DOUBLE, 
	"Proba_CLASS_1" DOUBLE, 
	"Proba_CLASS_2" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417050856_lppdnj_calprob_union part 2/2. Populate

INSERT INTO tmp_20180417050856_lppdnj_calprob_union SELECT "CalProb_Union"."KEY", "CalProb_Union"."Proba_CLASS_0", "CalProb_Union"."Proba_CLASS_1", "CalProb_Union"."Proba_CLASS_2" 
FROM (SELECT "CalProb_EnsembleUnion"."KEY" AS "KEY", "CalProb_EnsembleUnion"."Proba_CLASS_0" AS "Proba_CLASS_0", "CalProb_EnsembleUnion"."Proba_CLASS_1" AS "Proba_CLASS_1", "CalProb_EnsembleUnion"."Proba_CLASS_2" AS "Proba_CLASS_2" 
FROM (SELECT "CalProb_B0"."KEY" AS "KEY", "CalProb_B0"."Proba_CLASS_0" AS "Proba_CLASS_0", "CalProb_B0"."Proba_CLASS_1" AS "Proba_CLASS_1", "CalProb_B0"."Proba_CLASS_2" AS "Proba_CLASS_2" 
FROM tmp_20180417050856_w7bxe9_calprob_b0 AS "CalProb_B0") AS "CalProb_EnsembleUnion") AS "CalProb_Union"

-- Code For temporary table tmp_20180417050856_ju39i4_calprob_avg part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417050856_ju39i4_calprob_avg (
	"KEY" BIGINT, 
	"Proba_CLASS_0" FLOAT, 
	"Proba_CLASS_1" FLOAT, 
	"Proba_CLASS_2" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417050856_ju39i4_calprob_avg part 2/2. Populate

INSERT INTO tmp_20180417050856_ju39i4_calprob_avg SELECT "CalProb_avg"."KEY", "CalProb_avg"."Proba_CLASS_0", "CalProb_avg"."Proba_CLASS_1", "CalProb_avg"."Proba_CLASS_2" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Proba_CLASS_0" AS DOUBLE) AS "Proba_CLASS_0", CAST("T"."Proba_CLASS_1" AS DOUBLE) AS "Proba_CLASS_1", CAST("T"."Proba_CLASS_2" AS DOUBLE) AS "Proba_CLASS_2" 
FROM (SELECT "CalProb_Union"."KEY" AS "KEY", AVG(DOUBLE((CAST("CalProb_Union"."Proba_CLASS_0" AS DOUBLE)))) AS "Proba_CLASS_0", AVG(DOUBLE((CAST("CalProb_Union"."Proba_CLASS_1" AS DOUBLE)))) AS "Proba_CLASS_1", AVG(DOUBLE((CAST("CalProb_Union"."Proba_CLASS_2" AS DOUBLE)))) AS "Proba_CLASS_2" 
FROM tmp_20180417050856_lppdnj_calprob_union AS "CalProb_Union" GROUP BY "CalProb_Union"."KEY") AS "T") AS "CalProb_avg"

-- Model deployment code

WITH orig_cte AS 
(SELECT "CalProb_avg"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_CLASS_0", CAST(NULL AS DOUBLE) AS "Score_CLASS_1", CAST(NULL AS DOUBLE) AS "Score_CLASS_2", "CalProb_avg"."Proba_CLASS_0" AS "Proba_CLASS_0", "CalProb_avg"."Proba_CLASS_1" AS "Proba_CLASS_1", "CalProb_avg"."Proba_CLASS_2" AS "Proba_CLASS_2", CAST(NULL AS DOUBLE) AS "LogProba_CLASS_0", CAST(NULL AS DOUBLE) AS "LogProba_CLASS_1", CAST(NULL AS DOUBLE) AS "LogProba_CLASS_2", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM tmp_20180417050856_ju39i4_calprob_avg AS "CalProb_avg"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_0' AS class, orig_cte."LogProba_CLASS_0" AS "LogProba", orig_cte."Proba_CLASS_0" AS "Proba", orig_cte."Score_CLASS_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_1' AS class, orig_cte."LogProba_CLASS_1" AS "LogProba", orig_cte."Proba_CLASS_1" AS "Proba", orig_cte."Score_CLASS_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_2' AS class, orig_cte."LogProba_CLASS_2" AS "LogProba", orig_cte."Proba_CLASS_2" AS "Proba", orig_cte."Score_CLASS_2" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_CLASS_0" AS "Score_CLASS_0", orig_cte."Score_CLASS_1" AS "Score_CLASS_1", orig_cte."Score_CLASS_2" AS "Score_CLASS_2", orig_cte."Proba_CLASS_0" AS "Proba_CLASS_0", orig_cte."Proba_CLASS_1" AS "Proba_CLASS_1", orig_cte."Proba_CLASS_2" AS "Proba_CLASS_2", orig_cte."LogProba_CLASS_0" AS "LogProba_CLASS_0", orig_cte."LogProba_CLASS_1" AS "LogProba_CLASS_1", orig_cte."LogProba_CLASS_2" AS "LogProba_CLASS_2", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_CLASS_0" AS "Score_CLASS_0", score_max."Score_CLASS_1" AS "Score_CLASS_1", score_max."Score_CLASS_2" AS "Score_CLASS_2", score_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_CLASS_0" AS "Score_CLASS_0", score_max."Score_CLASS_1" AS "Score_CLASS_1", score_max."Score_CLASS_2" AS "Score_CLASS_2", score_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."Proba" >= union_with_max."max_Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_CLASS_0" AS "Score_CLASS_0", arg_max_cte."Score_CLASS_1" AS "Score_CLASS_1", arg_max_cte."Score_CLASS_2" AS "Score_CLASS_2", arg_max_cte."Proba_CLASS_0" AS "Proba_CLASS_0", arg_max_cte."Proba_CLASS_1" AS "Proba_CLASS_1", arg_max_cte."Proba_CLASS_2" AS "Proba_CLASS_2", CASE WHEN (arg_max_cte."Proba_CLASS_0" IS NULL OR arg_max_cte."Proba_CLASS_0" > 0.0) THEN ln(arg_max_cte."Proba_CLASS_0") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_0", CASE WHEN (arg_max_cte."Proba_CLASS_1" IS NULL OR arg_max_cte."Proba_CLASS_1" > 0.0) THEN ln(arg_max_cte."Proba_CLASS_1") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_1", CASE WHEN (arg_max_cte."Proba_CLASS_2" IS NULL OR arg_max_cte."Proba_CLASS_2" > 0.0) THEN ln(arg_max_cte."Proba_CLASS_2") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_2", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte