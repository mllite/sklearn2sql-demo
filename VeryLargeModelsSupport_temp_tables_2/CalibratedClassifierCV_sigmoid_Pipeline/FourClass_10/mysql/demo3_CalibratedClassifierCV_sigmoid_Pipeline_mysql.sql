-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_sigmoid_Pipeline
-- Dataset : FourClass_10
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508181124_CODEGEN_WVJ4GG_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508181124_CODEGEN_WVJ4GG_ADS_imp_1_OUT` (
	`KEY` BIGINT NOT NULL, 
	impter_2 DOUBLE, 
	impter_3 DOUBLE, 
	impter_4 DOUBLE, 
	impter_5 DOUBLE, 
	impter_6 DOUBLE, 
	impter_7 DOUBLE, 
	impter_8 DOUBLE, 
	impter_9 DOUBLE, 
	impter_10 DOUBLE, 
	impter_11 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508181124_CODEGEN_WVJ4GG_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180508181124_CODEGEN_WVJ4GG_ADS_imp_1_OUT` (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT `U`.`KEY`, `U`.impter_2, `U`.impter_3, `U`.impter_4, `U`.impter_5, `U`.impter_6, `U`.impter_7, `U`.impter_8, `U`.impter_9, `U`.impter_10, `U`.impter_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN -0.003903374463034205 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.6152232215702322 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.042796236914291665 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.7709819558904074 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.43300733624893334 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN -0.0424956965794036 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.29809080119845455 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.14672241507251663 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.01746942384662034 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.11507331415602866 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `FourClass_10` AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180508181124_CODEGEN_WVJ4GG_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508181124_CODEGEN_WVJ4GG_ADS_imp_1_OUT_KEY` ON `TMP_20180508181124_CODEGEN_WVJ4GG_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180508181124_CODEGEN_HEIW9N_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508181124_CODEGEN_HEIW9N_ADS_sca_2_OUT` (
	`KEY` BIGINT NOT NULL, 
	scaler_2 DOUBLE, 
	scaler_3 DOUBLE, 
	scaler_4 DOUBLE, 
	scaler_5 DOUBLE, 
	scaler_6 DOUBLE, 
	scaler_7 DOUBLE, 
	scaler_8 DOUBLE, 
	scaler_9 DOUBLE, 
	scaler_10 DOUBLE, 
	scaler_11 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508181124_CODEGEN_HEIW9N_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180508181124_CODEGEN_HEIW9N_ADS_sca_2_OUT` (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT `U`.`KEY`, `U`.scaler_2, `U`.scaler_3, `U`.scaler_4, `U`.scaler_5, `U`.scaler_6, `U`.scaler_7, `U`.scaler_8, `U`.scaler_9, `U`.scaler_10, `U`.scaler_11 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.impter_2 - -0.003903374463034205) / 0.9795060640183997 AS scaler_2, (`ADS_imp_1_OUT`.impter_3 - 0.6152232215702322) / 1.3900807236205235 AS scaler_3, (`ADS_imp_1_OUT`.impter_4 - 0.042796236914291665) / 1.4962685135870766 AS scaler_4, (`ADS_imp_1_OUT`.impter_5 - 0.7709819558904074) / 2.3333561060111743 AS scaler_5, (`ADS_imp_1_OUT`.impter_6 - -0.43300733624893334) / 1.4029757772648748 AS scaler_6, (`ADS_imp_1_OUT`.impter_7 - -0.0424956965794036) / 0.9558091076873229 AS scaler_7, (`ADS_imp_1_OUT`.impter_8 - -0.29809080119845455) / 1.017013180721433 AS scaler_8, (`ADS_imp_1_OUT`.impter_9 - 0.14672241507251663) / 1.600798539929603 AS scaler_9, (`ADS_imp_1_OUT`.impter_10 - 0.01746942384662034) / 1.1487296361671415 AS scaler_10, (`ADS_imp_1_OUT`.impter_11 - 0.11507331415602866) / 0.9690911857336224 AS scaler_11 
FROM `TMP_20180508181124_CODEGEN_WVJ4GG_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180508181124_CODEGEN_HEIW9N_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508181124_CODEGEN_HEIW9N_ADS_sca_2_OUT_KEY` ON `TMP_20180508181124_CODEGEN_HEIW9N_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180508181124_CODEGEN_ES96PF_CalProb_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508181124_CODEGEN_ES96PF_CalProb_B0` (
	`KEY` BIGINT, 
	`Proba_0` DOUBLE, 
	`Proba_1` DOUBLE, 
	`Proba_2` DOUBLE, 
	`Proba_3` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508181124_CODEGEN_ES96PF_CalProb_B0 part 2. Populate

INSERT INTO `TMP_20180508181124_CODEGEN_ES96PF_CalProb_B0` (`KEY`, `Proba_0`, `Proba_1`, `Proba_2`, `Proba_3`) SELECT `U`.`KEY`, `U`.`Proba_0`, `U`.`Proba_1`, `U`.`Proba_2`, `U`.`Proba_3` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.0912456214427948) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -1.0915334224700928) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.055714450776576996) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.9628250598907471) THEN 5 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= 0.42813172936439514) THEN 7 ELSE 8 END END ELSE 9 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.13469922542572021) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.8707321286201477) THEN 12 ELSE 13 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 1.8647207021713257) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= -1.7593052387237549) THEN 16 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.9231358766555786) THEN 18 ELSE 19 END END ELSE 20 END END END AS node_id_2 
FROM `TMP_20180508181124_CODEGEN_HEIW9N_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_0` AS `P_0`, `Values`.`P_1` AS `P_1`, `Values`.`P_2` AS `P_2`, `Values`.`P_3` AS `P_3`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 2 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.2 AS `P_0`, 0.0 AS `P_1`, 0.8 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 0.8 AS `DP` UNION ALL SELECT 8 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS nid, 0.0 AS `P_0`, 0.875 AS `P_1`, 0.0 AS `P_2`, 0.125 AS `P_3`, 1 AS `D`, 0.875 AS `DP` UNION ALL SELECT 19 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 20 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`P_0` AS `P_0`, `DT_node_data`.`P_1` AS `P_1`, `DT_node_data`.`P_2` AS `P_2`, `DT_node_data`.`P_3` AS `P_3`, `DT_node_data`.`D` AS `D`, `DT_node_data`.`DP` AS `DP` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`Calibrated_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, `DT_Output`.`P_0` AS `Proba_0`, `DT_Output`.`P_1` AS `Proba_1`, `DT_Output`.`P_2` AS `Proba_2`, `DT_Output`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output`.`P_0` IS NULL OR `DT_Output`.`P_0` > 0.0) THEN ln(`DT_Output`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output`.`P_1` IS NULL OR `DT_Output`.`P_1` > 0.0) THEN ln(`DT_Output`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output`.`P_2` IS NULL OR `DT_Output`.`P_2` > 0.0) THEN ln(`DT_Output`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output`.`P_3` IS NULL OR `DT_Output`.`P_3` > 0.0) THEN ln(`DT_Output`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output`.`P_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output`.`P_1`) AS `ScoreOrProba_1`, coalesce(NULL, `DT_Output`.`P_2`) AS `ScoreOrProba_2`, coalesce(NULL, `DT_Output`.`P_3`) AS `ScoreOrProba_3` 
FROM `DT_Output`), 
sigmoid_calibration_0 AS 
(SELECT `Calibrated_Model_0`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(2.614782213667346 * `Calibrated_Model_0`.`ScoreOrProba_0` + -1.8541774485001863)), 100.0))) AS `Proba_0`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(1.6744918254963246 * `Calibrated_Model_0`.`ScoreOrProba_1` + -1.6402291617335063)), 100.0))) AS `Proba_1`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(1.612590274619459 * `Calibrated_Model_0`.`ScoreOrProba_2` + -1.465775876667155)), 100.0))) AS `Proba_2`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(2.675768697999654 * `Calibrated_Model_0`.`ScoreOrProba_3` + -2.1312246712336864)), 100.0))) AS `Proba_3` 
FROM `Calibrated_Model_0`), 
`Normalized_Probas` AS 
(SELECT sigmoid_calibration_0.`KEY` AS `KEY`, sigmoid_calibration_0.`Proba_0` / (sigmoid_calibration_0.`Proba_0` + sigmoid_calibration_0.`Proba_1` + sigmoid_calibration_0.`Proba_2` + sigmoid_calibration_0.`Proba_3`) AS `Proba_0`, sigmoid_calibration_0.`Proba_1` / (sigmoid_calibration_0.`Proba_0` + sigmoid_calibration_0.`Proba_1` + sigmoid_calibration_0.`Proba_2` + sigmoid_calibration_0.`Proba_3`) AS `Proba_1`, sigmoid_calibration_0.`Proba_2` / (sigmoid_calibration_0.`Proba_0` + sigmoid_calibration_0.`Proba_1` + sigmoid_calibration_0.`Proba_2` + sigmoid_calibration_0.`Proba_3`) AS `Proba_2`, sigmoid_calibration_0.`Proba_3` / (sigmoid_calibration_0.`Proba_0` + sigmoid_calibration_0.`Proba_1` + sigmoid_calibration_0.`Proba_2` + sigmoid_calibration_0.`Proba_3`) AS `Proba_3` 
FROM sigmoid_calibration_0), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.05717501789331436) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.037758152931928635) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= -1.213514804840088) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.966012716293335) THEN 5 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= 2.119138240814209) THEN 7 ELSE 8 END END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -1.2971596717834473) THEN 10 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -1.7257757186889648) THEN 12 ELSE 13 END END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.20309582352638245) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.02690359205007553) THEN 16 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.2743743360042572) THEN 18 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.6807283759117126) THEN 20 ELSE 21 END END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= -1.5937905311584473) THEN 23 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= -0.7875761985778809) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.6242193579673767) THEN 26 ELSE 27 END ELSE 28 END END END END AS node_id_2 
FROM `TMP_20180508181124_CODEGEN_HEIW9N_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_0` AS `P_0`, `Values`.`P_1` AS `P_1`, `Values`.`P_2` AS `P_2`, `Values`.`P_3` AS `P_3`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 3 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 20 AS nid, 0.0 AS `P_0`, 0.3333333333333333 AS `P_1`, 0.0 AS `P_2`, 0.6666666666666666 AS `P_3`, 3 AS `D`, 0.6666666666666666 AS `DP` UNION ALL SELECT 21 AS nid, 0.0 AS `P_0`, 0.3333333333333333 AS `P_1`, 0.6666666666666666 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 0.6666666666666666 AS `DP` UNION ALL SELECT 23 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 26 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 27 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 28 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`P_0` AS `P_0`, `DT_node_data_1`.`P_1` AS `P_1`, `DT_node_data_1`.`P_2` AS `P_2`, `DT_node_data_1`.`P_3` AS `P_3`, `DT_node_data_1`.`D` AS `D`, `DT_node_data_1`.`DP` AS `DP` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`Calibrated_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, `DT_Output_1`.`P_0` AS `Proba_0`, `DT_Output_1`.`P_1` AS `Proba_1`, `DT_Output_1`.`P_2` AS `Proba_2`, `DT_Output_1`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output_1`.`P_0` IS NULL OR `DT_Output_1`.`P_0` > 0.0) THEN ln(`DT_Output_1`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_1`.`P_1` IS NULL OR `DT_Output_1`.`P_1` > 0.0) THEN ln(`DT_Output_1`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output_1`.`P_2` IS NULL OR `DT_Output_1`.`P_2` > 0.0) THEN ln(`DT_Output_1`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output_1`.`P_3` IS NULL OR `DT_Output_1`.`P_3` > 0.0) THEN ln(`DT_Output_1`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_1`.`P_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_1`.`P_1`) AS `ScoreOrProba_1`, coalesce(NULL, `DT_Output_1`.`P_2`) AS `ScoreOrProba_2`, coalesce(NULL, `DT_Output_1`.`P_3`) AS `ScoreOrProba_3` 
FROM `DT_Output_1`), 
sigmoid_calibration_1 AS 
(SELECT `Calibrated_Model_1`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(2.9681424816383735 * `Calibrated_Model_1`.`ScoreOrProba_0` + -2.1359182242144628)), 100.0))) AS `Proba_0`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(2.5189664651165287 * `Calibrated_Model_1`.`ScoreOrProba_1` + -2.0741055120441403)), 100.0))) AS `Proba_1`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(2.140876412096892 * `Calibrated_Model_1`.`ScoreOrProba_2` + -2.040476353698952)), 100.0))) AS `Proba_2`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(3.3646908708097913 * `Calibrated_Model_1`.`ScoreOrProba_3` + -1.418780192015199)), 100.0))) AS `Proba_3` 
FROM `Calibrated_Model_1`), 
`Normalized_Probas_1` AS 
(SELECT sigmoid_calibration_1.`KEY` AS `KEY`, sigmoid_calibration_1.`Proba_0` / (sigmoid_calibration_1.`Proba_0` + sigmoid_calibration_1.`Proba_1` + sigmoid_calibration_1.`Proba_2` + sigmoid_calibration_1.`Proba_3`) AS `Proba_0`, sigmoid_calibration_1.`Proba_1` / (sigmoid_calibration_1.`Proba_0` + sigmoid_calibration_1.`Proba_1` + sigmoid_calibration_1.`Proba_2` + sigmoid_calibration_1.`Proba_3`) AS `Proba_1`, sigmoid_calibration_1.`Proba_2` / (sigmoid_calibration_1.`Proba_0` + sigmoid_calibration_1.`Proba_1` + sigmoid_calibration_1.`Proba_2` + sigmoid_calibration_1.`Proba_3`) AS `Proba_2`, sigmoid_calibration_1.`Proba_3` / (sigmoid_calibration_1.`Proba_0` + sigmoid_calibration_1.`Proba_1` + sigmoid_calibration_1.`Proba_2` + sigmoid_calibration_1.`Proba_3`) AS `Proba_3` 
FROM sigmoid_calibration_1), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.053778067231178284) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -1.148135781288147) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.19233238697052002) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.12061124294996262) THEN 5 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.42041534185409546) THEN 7 ELSE 8 END END ELSE 9 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.23792332410812378) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.5790218114852905) THEN 12 ELSE 13 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= 1.5061954259872437) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= -0.012925520539283752) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= -1.7593052387237549) THEN 17 ELSE 18 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.412983775138855) THEN 20 ELSE 21 END END ELSE 22 END END END AS node_id_2 
FROM `TMP_20180508181124_CODEGEN_HEIW9N_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_0` AS `P_0`, `Values`.`P_1` AS `P_1`, `Values`.`P_2` AS `P_2`, `Values`.`P_3` AS `P_3`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 2 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.75 AS `P_0`, 0.0 AS `P_1`, 0.25 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 0.75 AS `DP` UNION ALL SELECT 8 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 17 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 20 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 21 AS nid, 0.14285714285714285 AS `P_0`, 0.5714285714285714 AS `P_1`, 0.0 AS `P_2`, 0.2857142857142857 AS `P_3`, 1 AS `D`, 0.5714285714285714 AS `DP` UNION ALL SELECT 22 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`P_0` AS `P_0`, `DT_node_data_2`.`P_1` AS `P_1`, `DT_node_data_2`.`P_2` AS `P_2`, `DT_node_data_2`.`P_3` AS `P_3`, `DT_node_data_2`.`D` AS `D`, `DT_node_data_2`.`DP` AS `DP` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`Calibrated_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, `DT_Output_2`.`P_0` AS `Proba_0`, `DT_Output_2`.`P_1` AS `Proba_1`, `DT_Output_2`.`P_2` AS `Proba_2`, `DT_Output_2`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output_2`.`P_0` IS NULL OR `DT_Output_2`.`P_0` > 0.0) THEN ln(`DT_Output_2`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_2`.`P_1` IS NULL OR `DT_Output_2`.`P_1` > 0.0) THEN ln(`DT_Output_2`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output_2`.`P_2` IS NULL OR `DT_Output_2`.`P_2` > 0.0) THEN ln(`DT_Output_2`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output_2`.`P_3` IS NULL OR `DT_Output_2`.`P_3` > 0.0) THEN ln(`DT_Output_2`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_2`.`P_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_2`.`P_1`) AS `ScoreOrProba_1`, coalesce(NULL, `DT_Output_2`.`P_2`) AS `ScoreOrProba_2`, coalesce(NULL, `DT_Output_2`.`P_3`) AS `ScoreOrProba_3` 
FROM `DT_Output_2`), 
sigmoid_calibration_2 AS 
(SELECT `Calibrated_Model_2`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(1.689332668076091 * `Calibrated_Model_2`.`ScoreOrProba_0` + -1.9406293857491108)), 100.0))) AS `Proba_0`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(1.405628394347645 * `Calibrated_Model_2`.`ScoreOrProba_1` + -1.3489731040569997)), 100.0))) AS `Proba_1`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(0.22478479435704893 * `Calibrated_Model_2`.`ScoreOrProba_2` + -1.0263746591668546)), 100.0))) AS `Proba_2`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(1.6386132666333737 * `Calibrated_Model_2`.`ScoreOrProba_3` + -1.5671253094287134)), 100.0))) AS `Proba_3` 
FROM `Calibrated_Model_2`), 
`Normalized_Probas_2` AS 
(SELECT sigmoid_calibration_2.`KEY` AS `KEY`, sigmoid_calibration_2.`Proba_0` / (sigmoid_calibration_2.`Proba_0` + sigmoid_calibration_2.`Proba_1` + sigmoid_calibration_2.`Proba_2` + sigmoid_calibration_2.`Proba_3`) AS `Proba_0`, sigmoid_calibration_2.`Proba_1` / (sigmoid_calibration_2.`Proba_0` + sigmoid_calibration_2.`Proba_1` + sigmoid_calibration_2.`Proba_2` + sigmoid_calibration_2.`Proba_3`) AS `Proba_1`, sigmoid_calibration_2.`Proba_2` / (sigmoid_calibration_2.`Proba_0` + sigmoid_calibration_2.`Proba_1` + sigmoid_calibration_2.`Proba_2` + sigmoid_calibration_2.`Proba_3`) AS `Proba_2`, sigmoid_calibration_2.`Proba_3` / (sigmoid_calibration_2.`Proba_0` + sigmoid_calibration_2.`Proba_1` + sigmoid_calibration_2.`Proba_2` + sigmoid_calibration_2.`Proba_3`) AS `Proba_3` 
FROM sigmoid_calibration_2), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.150100976228714) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.6293138265609741) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= 0.21739888191223145) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.8093550205230713) THEN 4 ELSE 5 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -1.766975998878479) THEN 7 ELSE 8 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.23468829691410065) THEN 10 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 1.0432679653167725) THEN 12 ELSE 13 END END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 0.17407895624637604) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -1.496924638748169) THEN 16 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -2.2014365196228027) THEN 18 ELSE 19 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.8858284950256348) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 1.9481966495513916) THEN 22 ELSE 23 END ELSE 24 END END END AS node_id_2 
FROM `TMP_20180508181124_CODEGEN_HEIW9N_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_0` AS `P_0`, `Values`.`P_1` AS `P_1`, `Values`.`P_2` AS `P_2`, `Values`.`P_3` AS `P_3`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 4 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 19 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 22 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 23 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 24 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`P_0` AS `P_0`, `DT_node_data_3`.`P_1` AS `P_1`, `DT_node_data_3`.`P_2` AS `P_2`, `DT_node_data_3`.`P_3` AS `P_3`, `DT_node_data_3`.`D` AS `D`, `DT_node_data_3`.`DP` AS `DP` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`Calibrated_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, `DT_Output_3`.`P_0` AS `Proba_0`, `DT_Output_3`.`P_1` AS `Proba_1`, `DT_Output_3`.`P_2` AS `Proba_2`, `DT_Output_3`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output_3`.`P_0` IS NULL OR `DT_Output_3`.`P_0` > 0.0) THEN ln(`DT_Output_3`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_3`.`P_1` IS NULL OR `DT_Output_3`.`P_1` > 0.0) THEN ln(`DT_Output_3`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output_3`.`P_2` IS NULL OR `DT_Output_3`.`P_2` > 0.0) THEN ln(`DT_Output_3`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output_3`.`P_3` IS NULL OR `DT_Output_3`.`P_3` > 0.0) THEN ln(`DT_Output_3`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_3`.`P_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_3`.`P_1`) AS `ScoreOrProba_1`, coalesce(NULL, `DT_Output_3`.`P_2`) AS `ScoreOrProba_2`, coalesce(NULL, `DT_Output_3`.`P_3`) AS `ScoreOrProba_3` 
FROM `DT_Output_3`), 
sigmoid_calibration_3 AS 
(SELECT `Calibrated_Model_3`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(1.7911314395473739 * `Calibrated_Model_3`.`ScoreOrProba_0` + -2.0076580723287925)), 100.0))) AS `Proba_0`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(1.3234114598263957 * `Calibrated_Model_3`.`ScoreOrProba_1` + -1.484473012687775)), 100.0))) AS `Proba_1`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(1.6892598764470943 * `Calibrated_Model_3`.`ScoreOrProba_2` + -1.315936557650469)), 100.0))) AS `Proba_2`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(2.253173046050721 * `Calibrated_Model_3`.`ScoreOrProba_3` + -1.596635300071773)), 100.0))) AS `Proba_3` 
FROM `Calibrated_Model_3`), 
`Normalized_Probas_3` AS 
(SELECT sigmoid_calibration_3.`KEY` AS `KEY`, sigmoid_calibration_3.`Proba_0` / (sigmoid_calibration_3.`Proba_0` + sigmoid_calibration_3.`Proba_1` + sigmoid_calibration_3.`Proba_2` + sigmoid_calibration_3.`Proba_3`) AS `Proba_0`, sigmoid_calibration_3.`Proba_1` / (sigmoid_calibration_3.`Proba_0` + sigmoid_calibration_3.`Proba_1` + sigmoid_calibration_3.`Proba_2` + sigmoid_calibration_3.`Proba_3`) AS `Proba_1`, sigmoid_calibration_3.`Proba_2` / (sigmoid_calibration_3.`Proba_0` + sigmoid_calibration_3.`Proba_1` + sigmoid_calibration_3.`Proba_2` + sigmoid_calibration_3.`Proba_3`) AS `Proba_2`, sigmoid_calibration_3.`Proba_3` / (sigmoid_calibration_3.`Proba_0` + sigmoid_calibration_3.`Proba_1` + sigmoid_calibration_3.`Proba_2` + sigmoid_calibration_3.`Proba_3`) AS `Proba_3` 
FROM sigmoid_calibration_3)
 SELECT `CalProb_B0`.`KEY`, `CalProb_B0`.`Proba_0`, `CalProb_B0`.`Proba_1`, `CalProb_B0`.`Proba_2`, `CalProb_B0`.`Proba_3` 
FROM (SELECT `CalProb_esu_0`.`KEY` AS `KEY`, `CalProb_esu_0`.`Proba_0` AS `Proba_0`, `CalProb_esu_0`.`Proba_1` AS `Proba_1`, `CalProb_esu_0`.`Proba_2` AS `Proba_2`, `CalProb_esu_0`.`Proba_3` AS `Proba_3` 
FROM (SELECT `Normalized_Probas`.`KEY` AS `KEY`, `Normalized_Probas`.`Proba_0` AS `Proba_0`, `Normalized_Probas`.`Proba_1` AS `Proba_1`, `Normalized_Probas`.`Proba_2` AS `Proba_2`, `Normalized_Probas`.`Proba_3` AS `Proba_3` 
FROM `Normalized_Probas` UNION ALL SELECT `Normalized_Probas_1`.`KEY` AS `KEY`, `Normalized_Probas_1`.`Proba_0` AS `Proba_0`, `Normalized_Probas_1`.`Proba_1` AS `Proba_1`, `Normalized_Probas_1`.`Proba_2` AS `Proba_2`, `Normalized_Probas_1`.`Proba_3` AS `Proba_3` 
FROM `Normalized_Probas_1` UNION ALL SELECT `Normalized_Probas_2`.`KEY` AS `KEY`, `Normalized_Probas_2`.`Proba_0` AS `Proba_0`, `Normalized_Probas_2`.`Proba_1` AS `Proba_1`, `Normalized_Probas_2`.`Proba_2` AS `Proba_2`, `Normalized_Probas_2`.`Proba_3` AS `Proba_3` 
FROM `Normalized_Probas_2` UNION ALL SELECT `Normalized_Probas_3`.`KEY` AS `KEY`, `Normalized_Probas_3`.`Proba_0` AS `Proba_0`, `Normalized_Probas_3`.`Proba_1` AS `Proba_1`, `Normalized_Probas_3`.`Proba_2` AS `Proba_2`, `Normalized_Probas_3`.`Proba_3` AS `Proba_3` 
FROM `Normalized_Probas_3`) AS `CalProb_esu_0`) AS `CalProb_B0`) AS `U`

-- Code For temporary table TMP_20180508181124_CODEGEN_6OJRZM_CalProb_Union part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508181124_CODEGEN_6OJRZM_CalProb_Union` (
	`KEY` BIGINT, 
	`Proba_0` DOUBLE, 
	`Proba_1` DOUBLE, 
	`Proba_2` DOUBLE, 
	`Proba_3` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508181124_CODEGEN_6OJRZM_CalProb_Union part 2. Populate

INSERT INTO `TMP_20180508181124_CODEGEN_6OJRZM_CalProb_Union` (`KEY`, `Proba_0`, `Proba_1`, `Proba_2`, `Proba_3`) SELECT `U`.`KEY`, `U`.`Proba_0`, `U`.`Proba_1`, `U`.`Proba_2`, `U`.`Proba_3` 
FROM (SELECT `CalProb_Union`.`KEY`, `CalProb_Union`.`Proba_0`, `CalProb_Union`.`Proba_1`, `CalProb_Union`.`Proba_2`, `CalProb_Union`.`Proba_3` 
FROM (SELECT `CalProb_EnsembleUnion`.`KEY` AS `KEY`, `CalProb_EnsembleUnion`.`Proba_0` AS `Proba_0`, `CalProb_EnsembleUnion`.`Proba_1` AS `Proba_1`, `CalProb_EnsembleUnion`.`Proba_2` AS `Proba_2`, `CalProb_EnsembleUnion`.`Proba_3` AS `Proba_3` 
FROM (SELECT `CalProb_B0`.`KEY` AS `KEY`, `CalProb_B0`.`Proba_0` AS `Proba_0`, `CalProb_B0`.`Proba_1` AS `Proba_1`, `CalProb_B0`.`Proba_2` AS `Proba_2`, `CalProb_B0`.`Proba_3` AS `Proba_3` 
FROM `TMP_20180508181124_CODEGEN_ES96PF_CalProb_B0` AS `CalProb_B0`) AS `CalProb_EnsembleUnion`) AS `CalProb_Union`) AS `U`

-- Code For temporary table TMP_20180508181124_CODEGEN_2O2JTP_CalProb_avg part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508181124_CODEGEN_2O2JTP_CalProb_avg` (
	`KEY` BIGINT NOT NULL, 
	`Proba_0` DOUBLE, 
	`Proba_1` DOUBLE, 
	`Proba_2` DOUBLE, 
	`Proba_3` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508181124_CODEGEN_2O2JTP_CalProb_avg part 2. Populate

INSERT INTO `TMP_20180508181124_CODEGEN_2O2JTP_CalProb_avg` (`KEY`, `Proba_0`, `Proba_1`, `Proba_2`, `Proba_3`) SELECT `U`.`KEY`, `U`.`Proba_0`, `U`.`Proba_1`, `U`.`Proba_2`, `U`.`Proba_3` 
FROM (SELECT `CalProb_avg`.`KEY`, `CalProb_avg`.`Proba_0`, `CalProb_avg`.`Proba_1`, `CalProb_avg`.`Proba_2`, `CalProb_avg`.`Proba_3` 
FROM (SELECT `T`.`KEY` AS `KEY`, `T`.`Proba_0` AS `Proba_0`, `T`.`Proba_1` AS `Proba_1`, `T`.`Proba_2` AS `Proba_2`, `T`.`Proba_3` AS `Proba_3` 
FROM (SELECT `CalProb_Union`.`KEY` AS `KEY`, avg(`CalProb_Union`.`Proba_0`) AS `Proba_0`, avg(`CalProb_Union`.`Proba_1`) AS `Proba_1`, avg(`CalProb_Union`.`Proba_2`) AS `Proba_2`, avg(`CalProb_Union`.`Proba_3`) AS `Proba_3` 
FROM `TMP_20180508181124_CODEGEN_6OJRZM_CalProb_Union` AS `CalProb_Union` GROUP BY `CalProb_Union`.`KEY`) AS `T`) AS `CalProb_avg`) AS `U`

-- Code For temporary table TMP_20180508181124_CODEGEN_2O2JTP_CalProb_avg part 3. Create Index 

CREATE INDEX `ix_TMP_20180508181124_CODEGEN_2O2JTP_CalProb_avg_KEY` ON `TMP_20180508181124_CODEGEN_2O2JTP_CalProb_avg` (`KEY`)

-- Model deployment code

WITH orig_cte AS 
(SELECT `CalProb_avg`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, `CalProb_avg`.`Proba_0` AS `Proba_0`, `CalProb_avg`.`Proba_1` AS `Proba_1`, `CalProb_avg`.`Proba_2` AS `Proba_2`, `CalProb_avg`.`Proba_3` AS `Proba_3`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, NULL AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM `TMP_20180508181124_CODEGEN_2O2JTP_CalProb_avg` AS `CalProb_avg`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 3 AS class, orig_cte.`LogProba_3` AS `LogProba`, orig_cte.`Proba_3` AS `Proba`, orig_cte.`Score_3` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Score_3` AS `Score_3`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`Proba_3` AS `Proba_3`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`LogProba_3` AS `LogProba_3`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Proba` AS `max_Proba` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Proba`) AS `max_Proba` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Proba`, min(union_with_max.class) AS `arg_max_Proba` 
FROM union_with_max 
WHERE union_with_max.`Proba` >= union_with_max.`max_Proba` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Proba` ON score_max.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Score_2` AS `Score_2`, arg_max_cte.`Score_3` AS `Score_3`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, arg_max_cte.`Proba_2` AS `Proba_2`, arg_max_cte.`Proba_3` AS `Proba_3`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`Proba_2` IS NULL OR arg_max_cte.`Proba_2` > 0.0) THEN ln(arg_max_cte.`Proba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (arg_max_cte.`Proba_3` IS NULL OR arg_max_cte.`Proba_3` > 0.0) THEN ln(arg_max_cte.`Proba_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, arg_max_cte.`arg_max_Proba` AS `Decision`, arg_max_cte.`max_Proba` AS `DecisionProba` 
FROM arg_max_cte