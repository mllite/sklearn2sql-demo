-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier_Pipeline
-- Dataset : iris
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508185544_CODEGEN_ROBV85_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508185544_CODEGEN_ROBV85_ADS_imp_1_OUT` (
	`KEY` BIGINT NOT NULL, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508185544_CODEGEN_ROBV85_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180508185544_CODEGEN_ROBV85_ADS_imp_1_OUT` (`KEY`, imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT `U`.`KEY`, `U`.imputer_output_2, `U`.imputer_output_3, `U`.imputer_output_4, `U`.imputer_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.imputer_output_2, `ADS_imp_1_OUT`.imputer_output_3, `ADS_imp_1_OUT`.imputer_output_4, `ADS_imp_1_OUT`.imputer_output_5 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 5.8474999999999975 ELSE `ADS`.`Feature_0` END AS imputer_output_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 3.0366666666666657 ELSE `ADS`.`Feature_1` END AS imputer_output_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 3.8450000000000006 ELSE `ADS`.`Feature_2` END AS imputer_output_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 1.245 ELSE `ADS`.`Feature_3` END AS imputer_output_5 
FROM iris AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180508185544_CODEGEN_ROBV85_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508185544_CODEGEN_ROBV85_ADS_imp_1_OUT_KEY` ON `TMP_20180508185544_CODEGEN_ROBV85_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180508185544_CODEGEN_WNZNLB_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508185544_CODEGEN_WNZNLB_ADS_sca_2_OUT` (
	`KEY` BIGINT NOT NULL, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508185544_CODEGEN_WNZNLB_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180508185544_CODEGEN_WNZNLB_ADS_sca_2_OUT` (`KEY`, scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT `U`.`KEY`, `U`.scaler_output_2, `U`.scaler_output_3, `U`.scaler_output_4, `U`.scaler_output_5 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_output_2, `ADS_sca_2_OUT`.scaler_output_3, `ADS_sca_2_OUT`.scaler_output_4, `ADS_sca_2_OUT`.scaler_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.imputer_output_2 - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (`ADS_imp_1_OUT`.imputer_output_3 - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (`ADS_imp_1_OUT`.imputer_output_4 - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (`ADS_imp_1_OUT`.imputer_output_5 - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM `TMP_20180508185544_CODEGEN_ROBV85_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180508185544_CODEGEN_WNZNLB_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508185544_CODEGEN_WNZNLB_ADS_sca_2_OUT_KEY` ON `TMP_20180508185544_CODEGEN_WNZNLB_ADS_sca_2_OUT` (`KEY`)

-- Model deployment code

WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.5877821445465088) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.5400919914245605) THEN 4 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.1451735943555832) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.6734480857849121) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.7047536373138428) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -1.5739872455596924) THEN 11 ELSE 12 END ELSE 13 END ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508185544_CODEGEN_WNZNLB_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_0` AS `P_0`, `Values`.`P_1` AS `P_1`, `Values`.`P_2` AS `P_2`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 1 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 4 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 14 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`P_0` AS `P_0`, `DT_node_data`.`P_1` AS `P_1`, `DT_node_data`.`P_2` AS `P_2`, `DT_node_data`.`D` AS `D`, `DT_node_data`.`DP` AS `DP` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid)
 SELECT `DT_Output`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, `DT_Output`.`P_0` AS `Proba_0`, `DT_Output`.`P_1` AS `Proba_1`, `DT_Output`.`P_2` AS `Proba_2`, CASE WHEN (`DT_Output`.`P_0` IS NULL OR `DT_Output`.`P_0` > 0.0) THEN ln(`DT_Output`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output`.`P_1` IS NULL OR `DT_Output`.`P_1` > 0.0) THEN ln(`DT_Output`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output`.`P_2` IS NULL OR `DT_Output`.`P_2` > 0.0) THEN ln(`DT_Output`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, `DT_Output`.`D` AS `Decision`, `DT_Output`.`DP` AS `DecisionProba` 
FROM `DT_Output`