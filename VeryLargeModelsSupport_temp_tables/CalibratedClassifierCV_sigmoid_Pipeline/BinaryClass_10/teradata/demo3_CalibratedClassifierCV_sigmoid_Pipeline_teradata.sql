-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_sigmoid_Pipeline
-- Dataset : BinaryClass_10
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180416222633_9d09kv_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416222633_9d09kv_ads_  (
	"KEY" BIGINT, 
	impter_2 FLOAT, 
	impter_3 FLOAT, 
	impter_4 FLOAT, 
	impter_5 FLOAT, 
	impter_6 FLOAT, 
	impter_7 FLOAT, 
	impter_8 FLOAT, 
	impter_9 FLOAT, 
	impter_10 FLOAT, 
	impter_11 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416222633_9d09kv_ads_ part 2/2. Populate

INSERT INTO tmp_20180416222633_9d09kv_ads_ ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180416222633_j85ote_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416222633_j85ote_ads_  (
	"KEY" BIGINT, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416222633_j85ote_ads_ part 2/2. Populate

INSERT INTO tmp_20180416222633_j85ote_ads_ ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.061829205238134) / 1.228383956209067 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.177024637671833) / 0.940821656314017 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.041383850049035) / 1.074182488881128 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.130606468058471) / 1.079224455973376 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.059558104719831) / 1.109589119050812 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - -0.048929089870106) / 1.378187181202905 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.191017978617131) / 0.973528524630321 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.022049596732675) / 0.474603012037971 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.05772981403414) / 1.064607524840552 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - -0.052549592052032) / 1.224532889655456 AS scaler_11 
FROM tmp_20180416222633_9d09kv_ads_ AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table tmp_20180416222633_vis6tw_calp part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416222633_vis6tw_calp  (
	"KEY" BIGINT, 
	"Proba_1" FLOAT, 
	"Proba_0" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416222633_vis6tw_calp part 2/2. Populate

INSERT INTO tmp_20180416222633_vis6tw_calp ("KEY", "Proba_1", "Proba_0") SELECT "U"."KEY", "U"."Proba_1", "U"."Proba_0" 
FROM (WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.167745441198349) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.755650758743286) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.033427715301514) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.665978908538818) THEN 4 ELSE 5 END ELSE 6 END ELSE 7 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 1.79048228263855) THEN 9 ELSE 10 END END AS node_id_2 
FROM tmp_20180416222633_j85ote_ads_ AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values"."count" AS FLOAT) AS "count", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Proba_0" AS FLOAT) AS "Proba_0", CAST("Values"."LogProba_0" AS FLOAT) AS "LogProba_0", CAST("Values"."Proba_1" AS FLOAT) AS "Proba_1", CAST("Values"."LogProba_1" AS FLOAT) AS "LogProba_1", CAST("Values"."Decision" AS FLOAT) AS "Decision", CAST("Values"."DecisionProba" AS FLOAT) AS "DecisionProba" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS "count", 4 AS depth, 3 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS "count", 4 AS depth, 3 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 25 AS "count", 3 AS depth, 2 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 2 AS depth, 1 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 25 AS "count", 2 AS depth, 8 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 2 AS depth, 8 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data"."threshold" AS "threshold", "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Decision" AS "Decision", "DT_node_data"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"Calibrated_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba", coalesce(CAST(NULL AS FLOAT), "DT_Output"."Proba_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS FLOAT), "DT_Output"."Proba_1") AS "ScoreOrProba_1" 
FROM "DT_Output"), 
sigmoid_calibration_0 AS 
(SELECT "Calibrated_Model_0"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -(3.364084038491808 * "Calibrated_Model_0"."ScoreOrProba_1" + -0.966185582708162)), 100.0))) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(3.364084038491808 * "Calibrated_Model_0"."ScoreOrProba_1" + -0.966185582708162)), 100.0))) AS "Proba_0" 
FROM "Calibrated_Model_0"), 
"Normalized_Probas" AS 
(SELECT sigmoid_calibration_0."KEY" AS "KEY", sigmoid_calibration_0."Proba_1" / (sigmoid_calibration_0."Proba_0" + sigmoid_calibration_0."Proba_1") AS "Proba_1", sigmoid_calibration_0."Proba_0" / (sigmoid_calibration_0."Proba_0" + sigmoid_calibration_0."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_0), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.071011282503605) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.755650758743286) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 1.751593112945557) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 1.404520988464356) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 1.029937267303467) THEN 5 ELSE 6 END ELSE 7 END ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.434491157531738) THEN 11 ELSE 12 END END AS node_id_2 
FROM tmp_20180416222633_j85ote_ads_ AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values"."count" AS FLOAT) AS "count", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Proba_0" AS FLOAT) AS "Proba_0", CAST("Values"."LogProba_0" AS FLOAT) AS "LogProba_0", CAST("Values"."Proba_1" AS FLOAT) AS "Proba_1", CAST("Values"."LogProba_1" AS FLOAT) AS "LogProba_1", CAST("Values"."Decision" AS FLOAT) AS "Decision", CAST("Values"."DecisionProba" AS FLOAT) AS "DecisionProba" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 26 AS "count", 5 AS depth, 4 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 4 AS "count", 5 AS depth, 4 AS parent_id, 0.75 AS "Proba_0", -0.287682072451781 AS "LogProba_0", 0.25 AS "Proba_1", -1.38629436111989 AS "LogProba_1", 0 AS "Decision", 0.75 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 4 AS depth, 3 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 3 AS depth, 2 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS "count", 2 AS depth, 1 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 22 AS "count", 2 AS depth, 10 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 2 AS depth, 10 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1"."threshold" AS "threshold", "DT_node_data_1"."count" AS "count", "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Proba_0" AS "Proba_0", "DT_node_data_1"."LogProba_0" AS "LogProba_0", "DT_node_data_1"."Proba_1" AS "Proba_1", "DT_node_data_1"."LogProba_1" AS "LogProba_1", "DT_node_data_1"."Decision" AS "Decision", "DT_node_data_1"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"Calibrated_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output_1"."Proba_0" AS "Proba_0", "DT_Output_1"."Proba_1" AS "Proba_1", "DT_Output_1"."LogProba_0" AS "LogProba_0", "DT_Output_1"."LogProba_1" AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba", coalesce(CAST(NULL AS FLOAT), "DT_Output_1"."Proba_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS FLOAT), "DT_Output_1"."Proba_1") AS "ScoreOrProba_1" 
FROM "DT_Output_1"), 
sigmoid_calibration_1 AS 
(SELECT "Calibrated_Model_1"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -(2.752630131460536 * "Calibrated_Model_1"."ScoreOrProba_1" + -1.597109346935524)), 100.0))) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(2.752630131460536 * "Calibrated_Model_1"."ScoreOrProba_1" + -1.597109346935524)), 100.0))) AS "Proba_0" 
FROM "Calibrated_Model_1"), 
"Normalized_Probas_1" AS 
(SELECT sigmoid_calibration_1."KEY" AS "KEY", sigmoid_calibration_1."Proba_1" / (sigmoid_calibration_1."Proba_0" + sigmoid_calibration_1."Proba_1") AS "Proba_1", sigmoid_calibration_1."Proba_0" / (sigmoid_calibration_1."Proba_0" + sigmoid_calibration_1."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_1), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.071011282503605) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.755650758743286) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 1.751593112945557) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 1.52060317993164) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.061010241508484) THEN 5 ELSE 6 END ELSE 7 END ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 1.891121983528137) THEN 11 ELSE 12 END END AS node_id_2 
FROM tmp_20180416222633_j85ote_ads_ AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values"."count" AS FLOAT) AS "count", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Proba_0" AS FLOAT) AS "Proba_0", CAST("Values"."LogProba_0" AS FLOAT) AS "LogProba_0", CAST("Values"."Proba_1" AS FLOAT) AS "Proba_1", CAST("Values"."LogProba_1" AS FLOAT) AS "LogProba_1", CAST("Values"."Decision" AS FLOAT) AS "Decision", CAST("Values"."DecisionProba" AS FLOAT) AS "DecisionProba" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 25 AS "count", 5 AS depth, 4 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 5 AS "count", 5 AS depth, 4 AS parent_id, 0.8 AS "Proba_0", -0.22314355131421 AS "LogProba_0", 0.2 AS "Proba_1", -1.6094379124341 AS "LogProba_1", 0 AS "Decision", 0.8 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 4 AS depth, 3 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 3 AS depth, 2 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS "count", 2 AS depth, 1 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 23 AS "count", 2 AS depth, 10 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 2 AS depth, 10 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2"."threshold" AS "threshold", "DT_node_data_2"."count" AS "count", "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Proba_0" AS "Proba_0", "DT_node_data_2"."LogProba_0" AS "LogProba_0", "DT_node_data_2"."Proba_1" AS "Proba_1", "DT_node_data_2"."LogProba_1" AS "LogProba_1", "DT_node_data_2"."Decision" AS "Decision", "DT_node_data_2"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"Calibrated_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output_2"."Proba_0" AS "Proba_0", "DT_Output_2"."Proba_1" AS "Proba_1", "DT_Output_2"."LogProba_0" AS "LogProba_0", "DT_Output_2"."LogProba_1" AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba", coalesce(CAST(NULL AS FLOAT), "DT_Output_2"."Proba_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS FLOAT), "DT_Output_2"."Proba_1") AS "ScoreOrProba_1" 
FROM "DT_Output_2"), 
sigmoid_calibration_2 AS 
(SELECT "Calibrated_Model_2"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -(3.650659014145948 * "Calibrated_Model_2"."ScoreOrProba_1" + -1.252762909822344)), 100.0))) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(3.650659014145948 * "Calibrated_Model_2"."ScoreOrProba_1" + -1.252762909822344)), 100.0))) AS "Proba_0" 
FROM "Calibrated_Model_2"), 
"Normalized_Probas_2" AS 
(SELECT sigmoid_calibration_2."KEY" AS "KEY", sigmoid_calibration_2."Proba_1" / (sigmoid_calibration_2."Proba_0" + sigmoid_calibration_2."Proba_1") AS "Proba_1", sigmoid_calibration_2."Proba_0" / (sigmoid_calibration_2."Proba_0" + sigmoid_calibration_2."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_2), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -0.179954946041107) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 1.471867203712464) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.77065110206604) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.033427715301514) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.886256814002991) THEN 5 ELSE 6 END ELSE 7 END ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 1.79048228263855) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.010654184967279) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.211916193366051) THEN 13 ELSE 14 END ELSE 15 END ELSE 16 END END AS node_id_2 
FROM tmp_20180416222633_j85ote_ads_ AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values"."count" AS FLOAT) AS "count", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Proba_0" AS FLOAT) AS "Proba_0", CAST("Values"."LogProba_0" AS FLOAT) AS "LogProba_0", CAST("Values"."Proba_1" AS FLOAT) AS "Proba_1", CAST("Values"."LogProba_1" AS FLOAT) AS "LogProba_1", CAST("Values"."Decision" AS FLOAT) AS "Decision", CAST("Values"."DecisionProba" AS FLOAT) AS "DecisionProba" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 5 AS depth, 4 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS "count", 5 AS depth, 4 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 24 AS "count", 4 AS depth, 3 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 3 AS depth, 2 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 2 AS depth, 1 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 4 AS depth, 12 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 4 AS depth, 12 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 23 AS "count", 3 AS depth, 11 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 2 AS depth, 10 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3"."threshold" AS "threshold", "DT_node_data_3"."count" AS "count", "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Proba_0" AS "Proba_0", "DT_node_data_3"."LogProba_0" AS "LogProba_0", "DT_node_data_3"."Proba_1" AS "Proba_1", "DT_node_data_3"."LogProba_1" AS "LogProba_1", "DT_node_data_3"."Decision" AS "Decision", "DT_node_data_3"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"Calibrated_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output_3"."Proba_0" AS "Proba_0", "DT_Output_3"."Proba_1" AS "Proba_1", "DT_Output_3"."LogProba_0" AS "LogProba_0", "DT_Output_3"."LogProba_1" AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba", coalesce(CAST(NULL AS FLOAT), "DT_Output_3"."Proba_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS FLOAT), "DT_Output_3"."Proba_1") AS "ScoreOrProba_1" 
FROM "DT_Output_3"), 
sigmoid_calibration_3 AS 
(SELECT "Calibrated_Model_3"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.06290318400067 * "Calibrated_Model_3"."ScoreOrProba_1" + -2.397896887129743)), 100.0))) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.06290318400067 * "Calibrated_Model_3"."ScoreOrProba_1" + -2.397896887129743)), 100.0))) AS "Proba_0" 
FROM "Calibrated_Model_3"), 
"Normalized_Probas_3" AS 
(SELECT sigmoid_calibration_3."KEY" AS "KEY", sigmoid_calibration_3."Proba_1" / (sigmoid_calibration_3."Proba_0" + sigmoid_calibration_3."Proba_1") AS "Proba_1", sigmoid_calibration_3."Proba_0" / (sigmoid_calibration_3."Proba_0" + sigmoid_calibration_3."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_3)
 SELECT "CalProb_B0"."KEY", "CalProb_B0"."Proba_1", "CalProb_B0"."Proba_0" 
FROM (SELECT "CalProb_esu_0"."KEY" AS "KEY", "CalProb_esu_0"."Proba_1" AS "Proba_1", "CalProb_esu_0"."Proba_0" AS "Proba_0" 
FROM (SELECT "Normalized_Probas"."KEY" AS "KEY", "Normalized_Probas"."Proba_1" AS "Proba_1", "Normalized_Probas"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas" UNION ALL SELECT "Normalized_Probas_1"."KEY" AS "KEY", "Normalized_Probas_1"."Proba_1" AS "Proba_1", "Normalized_Probas_1"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_1" UNION ALL SELECT "Normalized_Probas_2"."KEY" AS "KEY", "Normalized_Probas_2"."Proba_1" AS "Proba_1", "Normalized_Probas_2"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_2" UNION ALL SELECT "Normalized_Probas_3"."KEY" AS "KEY", "Normalized_Probas_3"."Proba_1" AS "Proba_1", "Normalized_Probas_3"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_3") AS "CalProb_esu_0") AS "CalProb_B0") AS "U"

-- Code For temporary table tmp_20180416222633_pp1kc5_calp part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416222633_pp1kc5_calp  (
	"KEY" BIGINT, 
	"Proba_1" FLOAT, 
	"Proba_0" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416222633_pp1kc5_calp part 2/2. Populate

INSERT INTO tmp_20180416222633_pp1kc5_calp ("KEY", "Proba_1", "Proba_0") SELECT "U"."KEY", "U"."Proba_1", "U"."Proba_0" 
FROM (SELECT "CalProb_Union"."KEY", "CalProb_Union"."Proba_1", "CalProb_Union"."Proba_0" 
FROM (SELECT "CalProb_EnsembleUnion"."KEY" AS "KEY", "CalProb_EnsembleUnion"."Proba_1" AS "Proba_1", "CalProb_EnsembleUnion"."Proba_0" AS "Proba_0" 
FROM (SELECT "CalProb_B0"."KEY" AS "KEY", "CalProb_B0"."Proba_1" AS "Proba_1", "CalProb_B0"."Proba_0" AS "Proba_0" 
FROM tmp_20180416222633_vis6tw_calp AS "CalProb_B0") AS "CalProb_EnsembleUnion") AS "CalProb_Union") AS "U"

-- Code For temporary table tmp_20180416222633_u352k0_calp part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416222633_u352k0_calp  (
	"KEY" BIGINT, 
	"Proba_1" FLOAT, 
	"Proba_0" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416222633_u352k0_calp part 2/2. Populate

INSERT INTO tmp_20180416222633_u352k0_calp ("KEY", "Proba_1", "Proba_0") SELECT "U"."KEY", "U"."Proba_1", "U"."Proba_0" 
FROM (SELECT "CalProb_avg"."KEY", "CalProb_avg"."Proba_1", "CalProb_avg"."Proba_0" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Proba_1" AS FLOAT) AS "Proba_1", CAST("T"."Proba_0" AS FLOAT) AS "Proba_0" 
FROM (SELECT "CalProb_Union"."KEY" AS "KEY", avg(CAST("CalProb_Union"."Proba_1" AS FLOAT)) AS "Proba_1", avg(CAST("CalProb_Union"."Proba_0" AS FLOAT)) AS "Proba_0" 
FROM tmp_20180416222633_pp1kc5_calp AS "CalProb_Union" GROUP BY "CalProb_Union"."KEY") AS "T") AS "CalProb_avg") AS "U"

-- Model deployment code

WITH orig_cte AS 
(SELECT "CalProb_avg"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "CalProb_avg"."Proba_0" AS "Proba_0", "CalProb_avg"."Proba_1" AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM tmp_20180416222633_u352k0_calp AS "CalProb_avg"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu."class" AS "class", scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS "class", orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS "class", orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union."class" AS "class", score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max."class") AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."Proba" >= union_with_max."max_Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte