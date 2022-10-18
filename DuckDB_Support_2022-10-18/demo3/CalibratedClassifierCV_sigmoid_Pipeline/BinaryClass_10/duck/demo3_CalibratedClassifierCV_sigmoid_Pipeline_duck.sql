-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_sigmoid_Pipeline
-- Dataset : BinaryClass_10
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018184807_2M5UHCF_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184807_2M5UHCF_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE, 
	imputer_output_6 DOUBLE, 
	imputer_output_7 DOUBLE, 
	imputer_output_8 DOUBLE, 
	imputer_output_9 DOUBLE, 
	imputer_output_10 DOUBLE, 
	imputer_output_11 DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018184807_2M5UHCF_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018184807_2M5UHCF_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9, imputer_output_10, imputer_output_11) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9, "T".imputer_output_10, "T".imputer_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9, "ADS_imp_1_OUT".imputer_output_10 AS imputer_output_10, "ADS_imp_1_OUT".imputer_output_11 AS imputer_output_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS imputer_output_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS imputer_output_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS imputer_output_11 
FROM "BinaryClass_10" AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018184807_2M5UHCF_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018184807_2M5UHCF_ADS_imp_1_OUT_KEY" ON "TMP_20221018184807_2M5UHCF_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018184807_NADP4IN_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184807_NADP4IN_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE, 
	scaler_output_6 DOUBLE, 
	scaler_output_7 DOUBLE, 
	scaler_output_8 DOUBLE, 
	scaler_output_9 DOUBLE, 
	scaler_output_10 DOUBLE, 
	scaler_output_11 DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018184807_NADP4IN_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018184807_NADP4IN_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9, scaler_output_10, scaler_output_11) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9, "T".scaler_output_10, "T".scaler_output_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9, "ADS_sca_2_OUT".scaler_output_10 AS scaler_output_10, "ADS_sca_2_OUT".scaler_output_11 AS scaler_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 0.061829205238134496) / 1.2283839562090673 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 0.17702463767183324) / 0.940821656314017 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 0.04138385004903454) / 1.0741824888811282 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 0.13060646805847148) / 1.0792244559733761 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS DOUBLE) - -0.05955810471983082) / 1.1095891190508123 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS DOUBLE) - -0.04892908987010584) / 1.3781871812029047 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS DOUBLE) - 0.19101797861713127) / 0.9735285246303208 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS DOUBLE) - 0.02204959673267471) / 0.47460301203797095 AS scaler_output_9, (CAST("ADS_imp_1_OUT".imputer_output_10 AS DOUBLE) - -0.057729814034140035) / 1.064607524840552 AS scaler_output_10, (CAST("ADS_imp_1_OUT".imputer_output_11 AS DOUBLE) - -0.05254959205203237) / 1.2245328896554564 AS scaler_output_11 
FROM "TMP_20221018184807_2M5UHCF_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018184807_NADP4IN_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018184807_NADP4IN_ADS_sca_2_OUT_KEY" ON "TMP_20221018184807_NADP4IN_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20221018184807_LEBMI1U_CalProb_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184807_LEBMI1U_CalProb_B0" (
	"KEY" BIGINT, 
	"Proba_1" DOUBLE, 
	"Proba_0" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018184807_LEBMI1U_CalProb_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.16774543933570385) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= 1.7556507587432861) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -1.033427655696869) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.665978878736496) THEN 4 ELSE 5 END ELSE 6 END ELSE 7 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.7904822826385498) THEN 9 ELSE 10 END END AS node_id_2 
FROM "TMP_20221018184807_NADP4IN_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."D" AS "D", "Values"."DP" AS "DP" 
FROM (SELECT 4 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 5 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 6 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 7 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 9 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 10 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_0" AS "P_0", "DT_node_data"."P_1" AS "P_1", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"Calibrated_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", "DT_Output"."P_0" AS "Proba_0", "DT_Output"."P_1" AS "Proba_1", CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > 0.0) THEN ln("DT_Output"."P_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > 0.0) THEN ln("DT_Output"."P_1") ELSE '-Infinity'::float8 END AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS DOUBLE), "DT_Output"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS DOUBLE), "DT_Output"."P_1") AS "ScoreOrProba_1" 
FROM "DT_Output"), 
sigmoid_calibration_0 AS 
(SELECT "Calibrated_Model_0"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(3.3640840384918063 * "Calibrated_Model_0"."ScoreOrProba_1" + -0.9661855827081625))))) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(3.3640840384918063 * "Calibrated_Model_0"."ScoreOrProba_1" + -0.9661855827081625))))) AS "Proba_0" 
FROM "Calibrated_Model_0"), 
"Normalized_Probas" AS 
(SELECT sigmoid_calibration_0."KEY" AS "KEY", sigmoid_calibration_0."Proba_1" / (sigmoid_calibration_0."Proba_0" + sigmoid_calibration_0."Proba_1") AS "Proba_1", sigmoid_calibration_0."Proba_0" / (sigmoid_calibration_0."Proba_0" + sigmoid_calibration_0."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_0), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.07101128064095974) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= 1.7556507587432861) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.7515930533409119) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.4045209288597107) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.0299373269081116) THEN 5 ELSE 6 END ELSE 7 END ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= 1.4344911575317383) THEN 11 ELSE 12 END END AS node_id_2 
FROM "TMP_20221018184807_NADP4IN_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."D" AS "D", "Values"."DP" AS "DP" 
FROM (SELECT 5 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 6 AS nid, 0.75 AS "P_0", 0.25 AS "P_1", 0 AS "D", 0.75 AS "DP" UNION ALL SELECT 7 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 8 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 9 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 11 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 12 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."P_0" AS "P_0", "DT_node_data_1"."P_1" AS "P_1", "DT_node_data_1"."D" AS "D", "DT_node_data_1"."DP" AS "DP" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"Calibrated_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", "DT_Output_1"."P_0" AS "Proba_0", "DT_Output_1"."P_1" AS "Proba_1", CASE WHEN ("DT_Output_1"."P_0" IS NULL OR "DT_Output_1"."P_0" > 0.0) THEN ln("DT_Output_1"."P_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN ("DT_Output_1"."P_1" IS NULL OR "DT_Output_1"."P_1" > 0.0) THEN ln("DT_Output_1"."P_1") ELSE '-Infinity'::float8 END AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS DOUBLE), "DT_Output_1"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS DOUBLE), "DT_Output_1"."P_1") AS "ScoreOrProba_1" 
FROM "DT_Output_1"), 
sigmoid_calibration_1 AS 
(SELECT "Calibrated_Model_1"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(2.7526301314605353 * "Calibrated_Model_1"."ScoreOrProba_1" + -1.597109346935524))))) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(2.7526301314605353 * "Calibrated_Model_1"."ScoreOrProba_1" + -1.597109346935524))))) AS "Proba_0" 
FROM "Calibrated_Model_1"), 
"Normalized_Probas_1" AS 
(SELECT sigmoid_calibration_1."KEY" AS "KEY", sigmoid_calibration_1."Proba_1" / (sigmoid_calibration_1."Proba_0" + sigmoid_calibration_1."Proba_1") AS "Proba_1", sigmoid_calibration_1."Proba_0" / (sigmoid_calibration_1."Proba_0" + sigmoid_calibration_1."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_1), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.07101128064095974) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= 1.7556507587432861) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.7515930533409119) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.5206031203269958) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= 1.0610102415084839) THEN 5 ELSE 6 END ELSE 7 END ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.8911219835281372) THEN 11 ELSE 12 END END AS node_id_2 
FROM "TMP_20221018184807_NADP4IN_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."D" AS "D", "Values"."DP" AS "DP" 
FROM (SELECT 5 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 6 AS nid, 0.8 AS "P_0", 0.2 AS "P_1", 0 AS "D", 0.8 AS "DP" UNION ALL SELECT 7 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 8 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 9 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 11 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 12 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."P_0" AS "P_0", "DT_node_data_2"."P_1" AS "P_1", "DT_node_data_2"."D" AS "D", "DT_node_data_2"."DP" AS "DP" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"Calibrated_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", "DT_Output_2"."P_0" AS "Proba_0", "DT_Output_2"."P_1" AS "Proba_1", CASE WHEN ("DT_Output_2"."P_0" IS NULL OR "DT_Output_2"."P_0" > 0.0) THEN ln("DT_Output_2"."P_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN ("DT_Output_2"."P_1" IS NULL OR "DT_Output_2"."P_1" > 0.0) THEN ln("DT_Output_2"."P_1") ELSE '-Infinity'::float8 END AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS DOUBLE), "DT_Output_2"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS DOUBLE), "DT_Output_2"."P_1") AS "ScoreOrProba_1" 
FROM "DT_Output_2"), 
sigmoid_calibration_2 AS 
(SELECT "Calibrated_Model_2"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(3.650659014145949 * "Calibrated_Model_2"."ScoreOrProba_1" + -1.2527629098223438))))) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(3.650659014145949 * "Calibrated_Model_2"."ScoreOrProba_1" + -1.2527629098223438))))) AS "Proba_0" 
FROM "Calibrated_Model_2"), 
"Normalized_Probas_2" AS 
(SELECT sigmoid_calibration_2."KEY" AS "KEY", sigmoid_calibration_2."Proba_1" / (sigmoid_calibration_2."Proba_0" + sigmoid_calibration_2."Proba_1") AS "Proba_1", sigmoid_calibration_2."Proba_0" / (sigmoid_calibration_2."Proba_0" + sigmoid_calibration_2."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_2), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= -0.17995495349168777) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.4718672037124634) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= 1.7706510424613953) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -1.033427655696869) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.8862567842006683) THEN 5 ELSE 6 END ELSE 7 END ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.7904822826385498) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.010654184967279434) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.21191619336605072) THEN 13 ELSE 14 END ELSE 15 END ELSE 16 END END AS node_id_2 
FROM "TMP_20221018184807_NADP4IN_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."D" AS "D", "Values"."DP" AS "DP" 
FROM (SELECT 5 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 6 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 7 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 8 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 9 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 13 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 14 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 15 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 16 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."P_0" AS "P_0", "DT_node_data_3"."P_1" AS "P_1", "DT_node_data_3"."D" AS "D", "DT_node_data_3"."DP" AS "DP" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"Calibrated_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", "DT_Output_3"."P_0" AS "Proba_0", "DT_Output_3"."P_1" AS "Proba_1", CASE WHEN ("DT_Output_3"."P_0" IS NULL OR "DT_Output_3"."P_0" > 0.0) THEN ln("DT_Output_3"."P_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN ("DT_Output_3"."P_1" IS NULL OR "DT_Output_3"."P_1" > 0.0) THEN ln("DT_Output_3"."P_1") ELSE '-Infinity'::float8 END AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS DOUBLE), "DT_Output_3"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS DOUBLE), "DT_Output_3"."P_1") AS "ScoreOrProba_1" 
FROM "DT_Output_3"), 
sigmoid_calibration_3 AS 
(SELECT "Calibrated_Model_3"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(4.062903184000669 * "Calibrated_Model_3"."ScoreOrProba_1" + -2.3978968871297437))))) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(4.062903184000669 * "Calibrated_Model_3"."ScoreOrProba_1" + -2.3978968871297437))))) AS "Proba_0" 
FROM "Calibrated_Model_3"), 
"Normalized_Probas_3" AS 
(SELECT sigmoid_calibration_3."KEY" AS "KEY", sigmoid_calibration_3."Proba_1" / (sigmoid_calibration_3."Proba_0" + sigmoid_calibration_3."Proba_1") AS "Proba_1", sigmoid_calibration_3."Proba_0" / (sigmoid_calibration_3."Proba_0" + sigmoid_calibration_3."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_3)
 INSERT INTO "TMP_20221018184807_LEBMI1U_CalProb_B0" ("KEY", "Proba_1", "Proba_0") SELECT "T"."KEY", "T"."Proba_1", "T"."Proba_0" 
FROM (SELECT "CalProb_B0"."KEY" AS "KEY", "CalProb_B0"."Proba_1" AS "Proba_1", "CalProb_B0"."Proba_0" AS "Proba_0" 
FROM (SELECT "CalProb_esu_0"."KEY" AS "KEY", "CalProb_esu_0"."Proba_1" AS "Proba_1", "CalProb_esu_0"."Proba_0" AS "Proba_0" 
FROM (SELECT "Normalized_Probas"."KEY" AS "KEY", "Normalized_Probas"."Proba_1" AS "Proba_1", "Normalized_Probas"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas" UNION ALL SELECT "Normalized_Probas_1"."KEY" AS "KEY", "Normalized_Probas_1"."Proba_1" AS "Proba_1", "Normalized_Probas_1"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_1" UNION ALL SELECT "Normalized_Probas_2"."KEY" AS "KEY", "Normalized_Probas_2"."Proba_1" AS "Proba_1", "Normalized_Probas_2"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_2" UNION ALL SELECT "Normalized_Probas_3"."KEY" AS "KEY", "Normalized_Probas_3"."Proba_1" AS "Proba_1", "Normalized_Probas_3"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_3") AS "CalProb_esu_0") AS "CalProb_B0") AS "T"

-- Code For temporary table TMP_20221018184807_HT6BHVB_CalProb_avg part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184807_HT6BHVB_CalProb_avg" (
	"KEY" BIGINT NOT NULL, 
	"Proba_1" DOUBLE, 
	"Proba_0" DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018184807_HT6BHVB_CalProb_avg part 2. Populate

WITH "CalProb_Union" AS 
(SELECT "CalProb_EnsembleUnion"."KEY" AS "KEY", "CalProb_EnsembleUnion"."Proba_1" AS "Proba_1", "CalProb_EnsembleUnion"."Proba_0" AS "Proba_0" 
FROM (SELECT "CalProb_B0"."KEY" AS "KEY", "CalProb_B0"."Proba_1" AS "Proba_1", "CalProb_B0"."Proba_0" AS "Proba_0" 
FROM "TMP_20221018184807_LEBMI1U_CalProb_B0" AS "CalProb_B0") AS "CalProb_EnsembleUnion")
 INSERT INTO "TMP_20221018184807_HT6BHVB_CalProb_avg" ("KEY", "Proba_1", "Proba_0") SELECT "T"."KEY", "T"."Proba_1", "T"."Proba_0" 
FROM (SELECT "CalProb_avg"."KEY" AS "KEY", "CalProb_avg"."Proba_1" AS "Proba_1", "CalProb_avg"."Proba_0" AS "Proba_0" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Proba_1" AS DOUBLE) AS "Proba_1", CAST("T"."Proba_0" AS DOUBLE) AS "Proba_0" 
FROM (SELECT "CalProb_Union"."KEY" AS "KEY", avg(CAST("CalProb_Union"."Proba_1" AS DOUBLE)) AS "Proba_1", avg(CAST("CalProb_Union"."Proba_0" AS DOUBLE)) AS "Proba_0" 
FROM "CalProb_Union" GROUP BY "CalProb_Union"."KEY") AS "T") AS "CalProb_avg") AS "T"

-- Code For temporary table TMP_20221018184807_HT6BHVB_CalProb_avg part 3. Create Index 

CREATE INDEX "ix_TMP_20221018184807_HT6BHVB_CalProb_avg_KEY" ON "TMP_20221018184807_HT6BHVB_CalProb_avg" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "CalProb_avg"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", "CalProb_avg"."Proba_0" AS "Proba_0", "CalProb_avg"."Proba_1" AS "Proba_1", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM "TMP_20221018184807_HT6BHVB_CalProb_avg" AS "CalProb_avg"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", max(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."Proba" >= union_with_max."max_Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE '-Infinity'::float8 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte