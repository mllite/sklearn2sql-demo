-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_isotonic_Pipeline
-- Dataset : iris_str_tgt
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508190451_CODEGEN_GP6YWP_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508190451_CODEGEN_GP6YWP_ADS_imp_1_OUT` (
	`KEY` BIGINT NOT NULL, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508190451_CODEGEN_GP6YWP_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180508190451_CODEGEN_GP6YWP_ADS_imp_1_OUT` (`KEY`, imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT `U`.`KEY`, `U`.imputer_output_2, `U`.imputer_output_3, `U`.imputer_output_4, `U`.imputer_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.imputer_output_2, `ADS_imp_1_OUT`.imputer_output_3, `ADS_imp_1_OUT`.imputer_output_4, `ADS_imp_1_OUT`.imputer_output_5 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 5.8474999999999975 ELSE `ADS`.`Feature_0` END AS imputer_output_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 3.0366666666666657 ELSE `ADS`.`Feature_1` END AS imputer_output_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 3.8450000000000006 ELSE `ADS`.`Feature_2` END AS imputer_output_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 1.245 ELSE `ADS`.`Feature_3` END AS imputer_output_5 
FROM iris_str_tgt AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180508190451_CODEGEN_GP6YWP_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508190451_CODEGEN_GP6YWP_ADS_imp_1_OUT_KEY` ON `TMP_20180508190451_CODEGEN_GP6YWP_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180508190451_CODEGEN_C3QIF7_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508190451_CODEGEN_C3QIF7_ADS_sca_2_OUT` (
	`KEY` BIGINT NOT NULL, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508190451_CODEGEN_C3QIF7_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180508190451_CODEGEN_C3QIF7_ADS_sca_2_OUT` (`KEY`, scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT `U`.`KEY`, `U`.scaler_output_2, `U`.scaler_output_3, `U`.scaler_output_4, `U`.scaler_output_5 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_output_2, `ADS_sca_2_OUT`.scaler_output_3, `ADS_sca_2_OUT`.scaler_output_4, `ADS_sca_2_OUT`.scaler_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.imputer_output_2 - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (`ADS_imp_1_OUT`.imputer_output_3 - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (`ADS_imp_1_OUT`.imputer_output_4 - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (`ADS_imp_1_OUT`.imputer_output_5 - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM `TMP_20180508190451_CODEGEN_GP6YWP_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180508190451_CODEGEN_C3QIF7_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508190451_CODEGEN_C3QIF7_ADS_sca_2_OUT_KEY` ON `TMP_20180508190451_CODEGEN_C3QIF7_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180508190452_CODEGEN_2LEICN_CalProb_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508190452_CODEGEN_2LEICN_CalProb_B0` (
	`KEY` BIGINT, 
	`Proba_CLASS_0` DOUBLE, 
	`Proba_CLASS_1` DOUBLE, 
	`Proba_CLASS_2` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508190452_CODEGEN_2LEICN_CalProb_B0 part 2. Populate

INSERT INTO `TMP_20180508190452_CODEGEN_2LEICN_CalProb_B0` (`KEY`, `Proba_CLASS_0`, `Proba_CLASS_1`, `Proba_CLASS_2`) SELECT `U`.`KEY`, `U`.`Proba_CLASS_0`, `U`.`Proba_CLASS_1`, `U`.`Proba_CLASS_2` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.6601125001907349) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.529296338558197) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.7047536373138428) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.030562859028577805) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.6734480857849121) THEN 7 ELSE 8 END ELSE 9 END ELSE 10 END END END AS node_id_2 
FROM `TMP_20180508190451_CODEGEN_C3QIF7_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_CLASS_0` AS `P_CLASS_0`, `Values`.`P_CLASS_1` AS `P_CLASS_1`, `Values`.`P_CLASS_2` AS `P_CLASS_2`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 1 AS nid, 1.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_0' AS `D`, 1.0 AS `DP` UNION ALL SELECT 3 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.0 AS `P_CLASS_0`, 0.6666666666666666 AS `P_CLASS_1`, 0.3333333333333333 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 0.6666666666666666 AS `DP` UNION ALL SELECT 8 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`P_CLASS_0` AS `P_CLASS_0`, `DT_node_data`.`P_CLASS_1` AS `P_CLASS_1`, `DT_node_data`.`P_CLASS_2` AS `P_CLASS_2`, `DT_node_data`.`D` AS `D`, `DT_node_data`.`DP` AS `DP` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`Calibrated_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, NULL AS `Score_CLASS_0`, NULL AS `Score_CLASS_1`, NULL AS `Score_CLASS_2`, `DT_Output`.`P_CLASS_0` AS `Proba_CLASS_0`, `DT_Output`.`P_CLASS_1` AS `Proba_CLASS_1`, `DT_Output`.`P_CLASS_2` AS `Proba_CLASS_2`, CASE WHEN (`DT_Output`.`P_CLASS_0` IS NULL OR `DT_Output`.`P_CLASS_0` > 0.0) THEN ln(`DT_Output`.`P_CLASS_0`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_0`, CASE WHEN (`DT_Output`.`P_CLASS_1` IS NULL OR `DT_Output`.`P_CLASS_1` > 0.0) THEN ln(`DT_Output`.`P_CLASS_1`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_1`, CASE WHEN (`DT_Output`.`P_CLASS_2` IS NULL OR `DT_Output`.`P_CLASS_2` > 0.0) THEN ln(`DT_Output`.`P_CLASS_2`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_2`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output`.`P_CLASS_0`) AS `ScoreOrProba_CLASS_0`, coalesce(NULL, `DT_Output`.`P_CLASS_1`) AS `ScoreOrProba_CLASS_1`, coalesce(NULL, `DT_Output`.`P_CLASS_2`) AS `ScoreOrProba_CLASS_2` 
FROM `DT_Output`), 
isotonic_cte_0 AS 
(SELECT `Calibrated_Model_0`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_0` < 0.0) THEN 0.0 WHEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_0` < 1.0) THEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_0` - 0.0) * 1.0 + 0.0 ELSE 1.0 END AS `Proba_CLASS_0`, CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_1` < 0.0) THEN 0.0 WHEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_1` < 0.6666666666666666) THEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_1` - 0.0) * 1.425 + 0.0 WHEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_1` < 1.0) THEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_1` - 0.6666666666666666) * 0.0 + 0.95 ELSE 0.95 END AS `Proba_CLASS_1`, CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_2` < 0.0) THEN 0.025 WHEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_2` < 0.3333333333333333) THEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_2` - 0.0) * 0.0 + 0.025 WHEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_2` < 1.0) THEN (`Calibrated_Model_0`.`ScoreOrProba_CLASS_2` - 0.3333333333333333) * 1.4625 + 0.025 ELSE 1.0 END AS `Proba_CLASS_2` 
FROM `Calibrated_Model_0`), 
`Normalized_Probas` AS 
(SELECT isotonic_cte_0.`KEY` AS `KEY`, isotonic_cte_0.`Proba_CLASS_0` / (isotonic_cte_0.`Proba_CLASS_0` + isotonic_cte_0.`Proba_CLASS_1` + isotonic_cte_0.`Proba_CLASS_2`) AS `Proba_CLASS_0`, isotonic_cte_0.`Proba_CLASS_1` / (isotonic_cte_0.`Proba_CLASS_0` + isotonic_cte_0.`Proba_CLASS_1` + isotonic_cte_0.`Proba_CLASS_2`) AS `Proba_CLASS_1`, isotonic_cte_0.`Proba_CLASS_2` / (isotonic_cte_0.`Proba_CLASS_0` + isotonic_cte_0.`Proba_CLASS_1` + isotonic_cte_0.`Proba_CLASS_2`) AS `Proba_CLASS_2` 
FROM isotonic_cte_0), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.6462678909301758) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.5400919914245605) THEN 4 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.1451735943555832) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.7047536373138428) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= 0.7889590263366699) THEN 10 ELSE 11 END ELSE 12 END END END AS node_id_2 
FROM `TMP_20180508190451_CODEGEN_C3QIF7_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_CLASS_0` AS `P_CLASS_0`, `Values`.`P_CLASS_1` AS `P_CLASS_1`, `Values`.`P_CLASS_2` AS `P_CLASS_2`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 1 AS nid, 1.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_0' AS `D`, 1.0 AS `DP` UNION ALL SELECT 4 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`P_CLASS_0` AS `P_CLASS_0`, `DT_node_data_1`.`P_CLASS_1` AS `P_CLASS_1`, `DT_node_data_1`.`P_CLASS_2` AS `P_CLASS_2`, `DT_node_data_1`.`D` AS `D`, `DT_node_data_1`.`DP` AS `DP` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`Calibrated_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, NULL AS `Score_CLASS_0`, NULL AS `Score_CLASS_1`, NULL AS `Score_CLASS_2`, `DT_Output_1`.`P_CLASS_0` AS `Proba_CLASS_0`, `DT_Output_1`.`P_CLASS_1` AS `Proba_CLASS_1`, `DT_Output_1`.`P_CLASS_2` AS `Proba_CLASS_2`, CASE WHEN (`DT_Output_1`.`P_CLASS_0` IS NULL OR `DT_Output_1`.`P_CLASS_0` > 0.0) THEN ln(`DT_Output_1`.`P_CLASS_0`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_0`, CASE WHEN (`DT_Output_1`.`P_CLASS_1` IS NULL OR `DT_Output_1`.`P_CLASS_1` > 0.0) THEN ln(`DT_Output_1`.`P_CLASS_1`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_1`, CASE WHEN (`DT_Output_1`.`P_CLASS_2` IS NULL OR `DT_Output_1`.`P_CLASS_2` > 0.0) THEN ln(`DT_Output_1`.`P_CLASS_2`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_2`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_1`.`P_CLASS_0`) AS `ScoreOrProba_CLASS_0`, coalesce(NULL, `DT_Output_1`.`P_CLASS_1`) AS `ScoreOrProba_CLASS_1`, coalesce(NULL, `DT_Output_1`.`P_CLASS_2`) AS `ScoreOrProba_CLASS_2` 
FROM `DT_Output_1`), 
isotonic_cte_1 AS 
(SELECT `Calibrated_Model_1`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_CLASS_0` < 0.0) THEN 0.0 WHEN (`Calibrated_Model_1`.`ScoreOrProba_CLASS_0` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_CLASS_0` - 0.0) * 1.0 + 0.0 ELSE 1.0 END AS `Proba_CLASS_0`, CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_CLASS_1` < 0.0) THEN 0.0 WHEN (`Calibrated_Model_1`.`ScoreOrProba_CLASS_1` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_CLASS_1` - 0.0) * 1.0 + 0.0 ELSE 1.0 END AS `Proba_CLASS_1`, CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_CLASS_2` < 0.0) THEN 0.0 WHEN (`Calibrated_Model_1`.`ScoreOrProba_CLASS_2` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_CLASS_2` - 0.0) * 1.0 + 0.0 ELSE 1.0 END AS `Proba_CLASS_2` 
FROM `Calibrated_Model_1`), 
`Normalized_Probas_1` AS 
(SELECT isotonic_cte_1.`KEY` AS `KEY`, isotonic_cte_1.`Proba_CLASS_0` / (isotonic_cte_1.`Proba_CLASS_0` + isotonic_cte_1.`Proba_CLASS_1` + isotonic_cte_1.`Proba_CLASS_2`) AS `Proba_CLASS_0`, isotonic_cte_1.`Proba_CLASS_1` / (isotonic_cte_1.`Proba_CLASS_0` + isotonic_cte_1.`Proba_CLASS_1` + isotonic_cte_1.`Proba_CLASS_2`) AS `Proba_CLASS_1`, isotonic_cte_1.`Proba_CLASS_2` / (isotonic_cte_1.`Proba_CLASS_0` + isotonic_cte_1.`Proba_CLASS_1` + isotonic_cte_1.`Proba_CLASS_2`) AS `Proba_CLASS_2` 
FROM isotonic_cte_1), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.6734480857849121) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.6462678909301758) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= -1.0851964950561523) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.5400919914245605) THEN 8 ELSE 9 END END ELSE 10 END END AS node_id_2 
FROM `TMP_20180508190451_CODEGEN_C3QIF7_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_CLASS_0` AS `P_CLASS_0`, `Values`.`P_CLASS_1` AS `P_CLASS_1`, `Values`.`P_CLASS_2` AS `P_CLASS_2`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 1 AS nid, 1.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_0' AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`P_CLASS_0` AS `P_CLASS_0`, `DT_node_data_2`.`P_CLASS_1` AS `P_CLASS_1`, `DT_node_data_2`.`P_CLASS_2` AS `P_CLASS_2`, `DT_node_data_2`.`D` AS `D`, `DT_node_data_2`.`DP` AS `DP` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`Calibrated_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, NULL AS `Score_CLASS_0`, NULL AS `Score_CLASS_1`, NULL AS `Score_CLASS_2`, `DT_Output_2`.`P_CLASS_0` AS `Proba_CLASS_0`, `DT_Output_2`.`P_CLASS_1` AS `Proba_CLASS_1`, `DT_Output_2`.`P_CLASS_2` AS `Proba_CLASS_2`, CASE WHEN (`DT_Output_2`.`P_CLASS_0` IS NULL OR `DT_Output_2`.`P_CLASS_0` > 0.0) THEN ln(`DT_Output_2`.`P_CLASS_0`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_0`, CASE WHEN (`DT_Output_2`.`P_CLASS_1` IS NULL OR `DT_Output_2`.`P_CLASS_1` > 0.0) THEN ln(`DT_Output_2`.`P_CLASS_1`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_1`, CASE WHEN (`DT_Output_2`.`P_CLASS_2` IS NULL OR `DT_Output_2`.`P_CLASS_2` > 0.0) THEN ln(`DT_Output_2`.`P_CLASS_2`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_2`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_2`.`P_CLASS_0`) AS `ScoreOrProba_CLASS_0`, coalesce(NULL, `DT_Output_2`.`P_CLASS_1`) AS `ScoreOrProba_CLASS_1`, coalesce(NULL, `DT_Output_2`.`P_CLASS_2`) AS `ScoreOrProba_CLASS_2` 
FROM `DT_Output_2`), 
isotonic_cte_2 AS 
(SELECT `Calibrated_Model_2`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_CLASS_0` < 0.0) THEN 0.0 WHEN (`Calibrated_Model_2`.`ScoreOrProba_CLASS_0` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_CLASS_0` - 0.0) * 1.0 + 0.0 ELSE 1.0 END AS `Proba_CLASS_0`, CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_CLASS_1` < 0.0) THEN 0.09090909090909091 WHEN (`Calibrated_Model_2`.`ScoreOrProba_CLASS_1` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_CLASS_1` - 0.0) * 0.9090909090909091 + 0.09090909090909091 ELSE 1.0 END AS `Proba_CLASS_1`, CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_CLASS_2` < 0.0) THEN 0.0 WHEN (`Calibrated_Model_2`.`ScoreOrProba_CLASS_2` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_CLASS_2` - 0.0) * 0.8461538461538461 + 0.0 ELSE 0.8461538461538461 END AS `Proba_CLASS_2` 
FROM `Calibrated_Model_2`), 
`Normalized_Probas_2` AS 
(SELECT isotonic_cte_2.`KEY` AS `KEY`, isotonic_cte_2.`Proba_CLASS_0` / (isotonic_cte_2.`Proba_CLASS_0` + isotonic_cte_2.`Proba_CLASS_1` + isotonic_cte_2.`Proba_CLASS_2`) AS `Proba_CLASS_0`, isotonic_cte_2.`Proba_CLASS_1` / (isotonic_cte_2.`Proba_CLASS_0` + isotonic_cte_2.`Proba_CLASS_1` + isotonic_cte_2.`Proba_CLASS_2`) AS `Proba_CLASS_1`, isotonic_cte_2.`Proba_CLASS_2` / (isotonic_cte_2.`Proba_CLASS_0` + isotonic_cte_2.`Proba_CLASS_1` + isotonic_cte_2.`Proba_CLASS_2`) AS `Proba_CLASS_2` 
FROM isotonic_cte_2), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.5877821445465088) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.5400919914245605) THEN 4 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.1451735943555832) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -1.115544319152832) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.6462678909301758) THEN 10 ELSE 11 END ELSE 12 END END END AS node_id_2 
FROM `TMP_20180508190451_CODEGEN_C3QIF7_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_CLASS_0` AS `P_CLASS_0`, `Values`.`P_CLASS_1` AS `P_CLASS_1`, `Values`.`P_CLASS_2` AS `P_CLASS_2`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 1 AS nid, 1.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_0' AS `D`, 1.0 AS `DP` UNION ALL SELECT 4 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`P_CLASS_0` AS `P_CLASS_0`, `DT_node_data_3`.`P_CLASS_1` AS `P_CLASS_1`, `DT_node_data_3`.`P_CLASS_2` AS `P_CLASS_2`, `DT_node_data_3`.`D` AS `D`, `DT_node_data_3`.`DP` AS `DP` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`Calibrated_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, NULL AS `Score_CLASS_0`, NULL AS `Score_CLASS_1`, NULL AS `Score_CLASS_2`, `DT_Output_3`.`P_CLASS_0` AS `Proba_CLASS_0`, `DT_Output_3`.`P_CLASS_1` AS `Proba_CLASS_1`, `DT_Output_3`.`P_CLASS_2` AS `Proba_CLASS_2`, CASE WHEN (`DT_Output_3`.`P_CLASS_0` IS NULL OR `DT_Output_3`.`P_CLASS_0` > 0.0) THEN ln(`DT_Output_3`.`P_CLASS_0`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_0`, CASE WHEN (`DT_Output_3`.`P_CLASS_1` IS NULL OR `DT_Output_3`.`P_CLASS_1` > 0.0) THEN ln(`DT_Output_3`.`P_CLASS_1`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_1`, CASE WHEN (`DT_Output_3`.`P_CLASS_2` IS NULL OR `DT_Output_3`.`P_CLASS_2` > 0.0) THEN ln(`DT_Output_3`.`P_CLASS_2`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_2`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_3`.`P_CLASS_0`) AS `ScoreOrProba_CLASS_0`, coalesce(NULL, `DT_Output_3`.`P_CLASS_1`) AS `ScoreOrProba_CLASS_1`, coalesce(NULL, `DT_Output_3`.`P_CLASS_2`) AS `ScoreOrProba_CLASS_2` 
FROM `DT_Output_3`), 
isotonic_cte_3 AS 
(SELECT `Calibrated_Model_3`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_CLASS_0` < 0.0) THEN 0.0 WHEN (`Calibrated_Model_3`.`ScoreOrProba_CLASS_0` < 1.0) THEN (`Calibrated_Model_3`.`ScoreOrProba_CLASS_0` - 0.0) * 1.0 + 0.0 ELSE 1.0 END AS `Proba_CLASS_0`, CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_CLASS_1` < 0.0) THEN 0.09523809523809523 WHEN (`Calibrated_Model_3`.`ScoreOrProba_CLASS_1` < 1.0) THEN (`Calibrated_Model_3`.`ScoreOrProba_CLASS_1` - 0.0) * 0.9047619047619048 + 0.09523809523809523 ELSE 1.0 END AS `Proba_CLASS_1`, CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_CLASS_2` < 0.0) THEN 0.0 WHEN (`Calibrated_Model_3`.`ScoreOrProba_CLASS_2` < 1.0) THEN (`Calibrated_Model_3`.`ScoreOrProba_CLASS_2` - 0.0) * 0.8333333333333334 + 0.0 ELSE 0.8333333333333334 END AS `Proba_CLASS_2` 
FROM `Calibrated_Model_3`), 
`Normalized_Probas_3` AS 
(SELECT isotonic_cte_3.`KEY` AS `KEY`, isotonic_cte_3.`Proba_CLASS_0` / (isotonic_cte_3.`Proba_CLASS_0` + isotonic_cte_3.`Proba_CLASS_1` + isotonic_cte_3.`Proba_CLASS_2`) AS `Proba_CLASS_0`, isotonic_cte_3.`Proba_CLASS_1` / (isotonic_cte_3.`Proba_CLASS_0` + isotonic_cte_3.`Proba_CLASS_1` + isotonic_cte_3.`Proba_CLASS_2`) AS `Proba_CLASS_1`, isotonic_cte_3.`Proba_CLASS_2` / (isotonic_cte_3.`Proba_CLASS_0` + isotonic_cte_3.`Proba_CLASS_1` + isotonic_cte_3.`Proba_CLASS_2`) AS `Proba_CLASS_2` 
FROM isotonic_cte_3)
 SELECT `CalProb_B0`.`KEY`, `CalProb_B0`.`Proba_CLASS_0`, `CalProb_B0`.`Proba_CLASS_1`, `CalProb_B0`.`Proba_CLASS_2` 
FROM (SELECT `CalProb_esu_0`.`KEY` AS `KEY`, `CalProb_esu_0`.`Proba_CLASS_0` AS `Proba_CLASS_0`, `CalProb_esu_0`.`Proba_CLASS_1` AS `Proba_CLASS_1`, `CalProb_esu_0`.`Proba_CLASS_2` AS `Proba_CLASS_2` 
FROM (SELECT `Normalized_Probas`.`KEY` AS `KEY`, `Normalized_Probas`.`Proba_CLASS_0` AS `Proba_CLASS_0`, `Normalized_Probas`.`Proba_CLASS_1` AS `Proba_CLASS_1`, `Normalized_Probas`.`Proba_CLASS_2` AS `Proba_CLASS_2` 
FROM `Normalized_Probas` UNION ALL SELECT `Normalized_Probas_1`.`KEY` AS `KEY`, `Normalized_Probas_1`.`Proba_CLASS_0` AS `Proba_CLASS_0`, `Normalized_Probas_1`.`Proba_CLASS_1` AS `Proba_CLASS_1`, `Normalized_Probas_1`.`Proba_CLASS_2` AS `Proba_CLASS_2` 
FROM `Normalized_Probas_1` UNION ALL SELECT `Normalized_Probas_2`.`KEY` AS `KEY`, `Normalized_Probas_2`.`Proba_CLASS_0` AS `Proba_CLASS_0`, `Normalized_Probas_2`.`Proba_CLASS_1` AS `Proba_CLASS_1`, `Normalized_Probas_2`.`Proba_CLASS_2` AS `Proba_CLASS_2` 
FROM `Normalized_Probas_2` UNION ALL SELECT `Normalized_Probas_3`.`KEY` AS `KEY`, `Normalized_Probas_3`.`Proba_CLASS_0` AS `Proba_CLASS_0`, `Normalized_Probas_3`.`Proba_CLASS_1` AS `Proba_CLASS_1`, `Normalized_Probas_3`.`Proba_CLASS_2` AS `Proba_CLASS_2` 
FROM `Normalized_Probas_3`) AS `CalProb_esu_0`) AS `CalProb_B0`) AS `U`

-- Code For temporary table TMP_20180508190452_CODEGEN_E4FY3R_CalProb_Union part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508190452_CODEGEN_E4FY3R_CalProb_Union` (
	`KEY` BIGINT, 
	`Proba_CLASS_0` DOUBLE, 
	`Proba_CLASS_1` DOUBLE, 
	`Proba_CLASS_2` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508190452_CODEGEN_E4FY3R_CalProb_Union part 2. Populate

INSERT INTO `TMP_20180508190452_CODEGEN_E4FY3R_CalProb_Union` (`KEY`, `Proba_CLASS_0`, `Proba_CLASS_1`, `Proba_CLASS_2`) SELECT `U`.`KEY`, `U`.`Proba_CLASS_0`, `U`.`Proba_CLASS_1`, `U`.`Proba_CLASS_2` 
FROM (SELECT `CalProb_Union`.`KEY`, `CalProb_Union`.`Proba_CLASS_0`, `CalProb_Union`.`Proba_CLASS_1`, `CalProb_Union`.`Proba_CLASS_2` 
FROM (SELECT `CalProb_EnsembleUnion`.`KEY` AS `KEY`, `CalProb_EnsembleUnion`.`Proba_CLASS_0` AS `Proba_CLASS_0`, `CalProb_EnsembleUnion`.`Proba_CLASS_1` AS `Proba_CLASS_1`, `CalProb_EnsembleUnion`.`Proba_CLASS_2` AS `Proba_CLASS_2` 
FROM (SELECT `CalProb_B0`.`KEY` AS `KEY`, `CalProb_B0`.`Proba_CLASS_0` AS `Proba_CLASS_0`, `CalProb_B0`.`Proba_CLASS_1` AS `Proba_CLASS_1`, `CalProb_B0`.`Proba_CLASS_2` AS `Proba_CLASS_2` 
FROM `TMP_20180508190452_CODEGEN_2LEICN_CalProb_B0` AS `CalProb_B0`) AS `CalProb_EnsembleUnion`) AS `CalProb_Union`) AS `U`

-- Code For temporary table TMP_20180508190452_CODEGEN_Y7PAPG_CalProb_avg part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508190452_CODEGEN_Y7PAPG_CalProb_avg` (
	`KEY` BIGINT NOT NULL, 
	`Proba_CLASS_0` DOUBLE, 
	`Proba_CLASS_1` DOUBLE, 
	`Proba_CLASS_2` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508190452_CODEGEN_Y7PAPG_CalProb_avg part 2. Populate

INSERT INTO `TMP_20180508190452_CODEGEN_Y7PAPG_CalProb_avg` (`KEY`, `Proba_CLASS_0`, `Proba_CLASS_1`, `Proba_CLASS_2`) SELECT `U`.`KEY`, `U`.`Proba_CLASS_0`, `U`.`Proba_CLASS_1`, `U`.`Proba_CLASS_2` 
FROM (SELECT `CalProb_avg`.`KEY`, `CalProb_avg`.`Proba_CLASS_0`, `CalProb_avg`.`Proba_CLASS_1`, `CalProb_avg`.`Proba_CLASS_2` 
FROM (SELECT `T`.`KEY` AS `KEY`, `T`.`Proba_CLASS_0` AS `Proba_CLASS_0`, `T`.`Proba_CLASS_1` AS `Proba_CLASS_1`, `T`.`Proba_CLASS_2` AS `Proba_CLASS_2` 
FROM (SELECT `CalProb_Union`.`KEY` AS `KEY`, avg(`CalProb_Union`.`Proba_CLASS_0`) AS `Proba_CLASS_0`, avg(`CalProb_Union`.`Proba_CLASS_1`) AS `Proba_CLASS_1`, avg(`CalProb_Union`.`Proba_CLASS_2`) AS `Proba_CLASS_2` 
FROM `TMP_20180508190452_CODEGEN_E4FY3R_CalProb_Union` AS `CalProb_Union` GROUP BY `CalProb_Union`.`KEY`) AS `T`) AS `CalProb_avg`) AS `U`

-- Code For temporary table TMP_20180508190452_CODEGEN_Y7PAPG_CalProb_avg part 3. Create Index 

CREATE INDEX `ix_TMP_20180508190452_CODEGEN_Y7PAPG_CalProb_avg_KEY` ON `TMP_20180508190452_CODEGEN_Y7PAPG_CalProb_avg` (`KEY`)

-- Model deployment code

WITH orig_cte AS 
(SELECT `CalProb_avg`.`KEY` AS `KEY`, NULL AS `Score_CLASS_0`, NULL AS `Score_CLASS_1`, NULL AS `Score_CLASS_2`, `CalProb_avg`.`Proba_CLASS_0` AS `Proba_CLASS_0`, `CalProb_avg`.`Proba_CLASS_1` AS `Proba_CLASS_1`, `CalProb_avg`.`Proba_CLASS_2` AS `Proba_CLASS_2`, NULL AS `LogProba_CLASS_0`, NULL AS `LogProba_CLASS_1`, NULL AS `LogProba_CLASS_2`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM `TMP_20180508190452_CODEGEN_Y7PAPG_CalProb_avg` AS `CalProb_avg`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 'CLASS_0' AS class, orig_cte.`LogProba_CLASS_0` AS `LogProba`, orig_cte.`Proba_CLASS_0` AS `Proba`, orig_cte.`Score_CLASS_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 'CLASS_1' AS class, orig_cte.`LogProba_CLASS_1` AS `LogProba`, orig_cte.`Proba_CLASS_1` AS `Proba`, orig_cte.`Score_CLASS_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 'CLASS_2' AS class, orig_cte.`LogProba_CLASS_2` AS `LogProba`, orig_cte.`Proba_CLASS_2` AS `Proba`, orig_cte.`Score_CLASS_2` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_CLASS_0` AS `Score_CLASS_0`, orig_cte.`Score_CLASS_1` AS `Score_CLASS_1`, orig_cte.`Score_CLASS_2` AS `Score_CLASS_2`, orig_cte.`Proba_CLASS_0` AS `Proba_CLASS_0`, orig_cte.`Proba_CLASS_1` AS `Proba_CLASS_1`, orig_cte.`Proba_CLASS_2` AS `Proba_CLASS_2`, orig_cte.`LogProba_CLASS_0` AS `LogProba_CLASS_0`, orig_cte.`LogProba_CLASS_1` AS `LogProba_CLASS_1`, orig_cte.`LogProba_CLASS_2` AS `LogProba_CLASS_2`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Proba` AS `max_Proba` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Proba`) AS `max_Proba` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_CLASS_0` AS `Score_CLASS_0`, score_max.`Score_CLASS_1` AS `Score_CLASS_1`, score_max.`Score_CLASS_2` AS `Score_CLASS_2`, score_max.`Proba_CLASS_0` AS `Proba_CLASS_0`, score_max.`Proba_CLASS_1` AS `Proba_CLASS_1`, score_max.`Proba_CLASS_2` AS `Proba_CLASS_2`, score_max.`LogProba_CLASS_0` AS `LogProba_CLASS_0`, score_max.`LogProba_CLASS_1` AS `LogProba_CLASS_1`, score_max.`LogProba_CLASS_2` AS `LogProba_CLASS_2`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_CLASS_0` AS `Score_CLASS_0`, score_max.`Score_CLASS_1` AS `Score_CLASS_1`, score_max.`Score_CLASS_2` AS `Score_CLASS_2`, score_max.`Proba_CLASS_0` AS `Proba_CLASS_0`, score_max.`Proba_CLASS_1` AS `Proba_CLASS_1`, score_max.`Proba_CLASS_2` AS `Proba_CLASS_2`, score_max.`LogProba_CLASS_0` AS `LogProba_CLASS_0`, score_max.`LogProba_CLASS_1` AS `LogProba_CLASS_1`, score_max.`LogProba_CLASS_2` AS `LogProba_CLASS_2`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Proba`, min(union_with_max.class) AS `arg_max_Proba` 
FROM union_with_max 
WHERE union_with_max.`Proba` >= union_with_max.`max_Proba` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Proba` ON score_max.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_CLASS_0` AS `Score_CLASS_0`, arg_max_cte.`Score_CLASS_1` AS `Score_CLASS_1`, arg_max_cte.`Score_CLASS_2` AS `Score_CLASS_2`, arg_max_cte.`Proba_CLASS_0` AS `Proba_CLASS_0`, arg_max_cte.`Proba_CLASS_1` AS `Proba_CLASS_1`, arg_max_cte.`Proba_CLASS_2` AS `Proba_CLASS_2`, CASE WHEN (arg_max_cte.`Proba_CLASS_0` IS NULL OR arg_max_cte.`Proba_CLASS_0` > 0.0) THEN ln(arg_max_cte.`Proba_CLASS_0`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_0`, CASE WHEN (arg_max_cte.`Proba_CLASS_1` IS NULL OR arg_max_cte.`Proba_CLASS_1` > 0.0) THEN ln(arg_max_cte.`Proba_CLASS_1`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_1`, CASE WHEN (arg_max_cte.`Proba_CLASS_2` IS NULL OR arg_max_cte.`Proba_CLASS_2` > 0.0) THEN ln(arg_max_cte.`Proba_CLASS_2`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_2`, arg_max_cte.`arg_max_Proba` AS `Decision`, arg_max_cte.`max_Proba` AS `DecisionProba` 
FROM arg_max_cte