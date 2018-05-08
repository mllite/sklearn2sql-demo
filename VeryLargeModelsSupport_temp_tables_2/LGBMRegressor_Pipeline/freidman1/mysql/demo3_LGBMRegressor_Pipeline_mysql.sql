-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LGBMRegressor_Pipeline
-- Dataset : freidman1
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508184456_CODEGEN_EH7MFN_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508184456_CODEGEN_EH7MFN_ADS_imp_1_OUT` (
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

-- Code For temporary table TMP_20180508184456_CODEGEN_EH7MFN_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180508184456_CODEGEN_EH7MFN_ADS_imp_1_OUT` (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT `U`.`KEY`, `U`.impter_2, `U`.impter_3, `U`.impter_4, `U`.impter_5, `U`.impter_6, `U`.impter_7, `U`.impter_8, `U`.impter_9, `U`.impter_10, `U`.impter_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.5629846484809591 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.45606442423375926 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.47113817481474773 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.533968020094518 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.4780936262373869 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.5682849224172329 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.47914374714280494 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.4594152477223205 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.4901106996809651 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.5378806933707533 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM freidman1 AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180508184456_CODEGEN_EH7MFN_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508184456_CODEGEN_EH7MFN_ADS_imp_1_OUT_KEY` ON `TMP_20180508184456_CODEGEN_EH7MFN_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` (
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

-- Code For temporary table TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT `U`.`KEY`, `U`.scaler_2, `U`.scaler_3, `U`.scaler_4, `U`.scaler_5, `U`.scaler_6, `U`.scaler_7, `U`.scaler_8, `U`.scaler_9, `U`.scaler_10, `U`.scaler_11 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.impter_2 - 0.5629846484809591) / 0.2583714683396337 AS scaler_2, (`ADS_imp_1_OUT`.impter_3 - 0.45606442423375926) / 0.2878721730712705 AS scaler_3, (`ADS_imp_1_OUT`.impter_4 - 0.47113817481474773) / 0.3109216791553051 AS scaler_4, (`ADS_imp_1_OUT`.impter_5 - 0.533968020094518) / 0.2826199867400281 AS scaler_5, (`ADS_imp_1_OUT`.impter_6 - 0.4780936262373869) / 0.286140491317745 AS scaler_6, (`ADS_imp_1_OUT`.impter_7 - 0.5682849224172329) / 0.29767408106451737 AS scaler_7, (`ADS_imp_1_OUT`.impter_8 - 0.47914374714280494) / 0.2735314971431575 AS scaler_8, (`ADS_imp_1_OUT`.impter_9 - 0.4594152477223205) / 0.28721149346998975 AS scaler_9, (`ADS_imp_1_OUT`.impter_10 - 0.4901106996809651) / 0.2790486717322703 AS scaler_10, (`ADS_imp_1_OUT`.impter_11 - 0.5378806933707533) / 0.2958192296543193 AS scaler_11 
FROM `TMP_20180508184456_CODEGEN_EH7MFN_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT_KEY` ON `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180508184456_CODEGEN_OSSDRP_LGBM_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508184456_CODEGEN_OSSDRP_LGBM_B0` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508184456_CODEGEN_OSSDRP_LGBM_B0 part 2. Populate

INSERT INTO `TMP_20180508184456_CODEGEN_OSSDRP_LGBM_B0` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03575253068147678) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 0.16343214314230212) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, 15.200469904526686 AS `Estimator` UNION ALL SELECT 6 AS nid, 15.41544151008129 AS `Estimator` UNION ALL SELECT 7 AS nid, 15.579710047284053 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`LGBM_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03575253068147678) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 0.16343214314230212) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.1456287688169724 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.05859425783157349 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.21464937293813346 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`LGBM_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03575253068147678) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 0.16343214314230212) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.1383473269068278 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.055664545074105266 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.20391690738144375 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`LGBM_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03575253068147678) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 0.16343214314230212) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.1314299638454731 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.052881319066509606 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.19372105797131856 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`LGBM_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03575253068147678) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 0.16343214314230212) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.12485846152696281 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.0502372551523149 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.1840350009146191 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`LGBM_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`Estimator` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.1199268106081446) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03575253068147678) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.14136352358442364 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.006007910966873169 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.17722794303187617 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`LGBM_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`Estimator` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.1199268106081446) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03575253068147678) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.13429534491716008 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.005707516670227051 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.16836654455573472 AS `Estimator`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`LGBM_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`Estimator` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03575253068147678) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.1625431860749545) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.11160037578680577 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.04609195474535227 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.1633607491141274 AS `Estimator`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`LGBM_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`Estimator` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.22762641972664058) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.2825087793419189) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.136899081915617 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.0166017499707994 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.15364169139286568 AS `Estimator`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`LGBM_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`Estimator` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.7175518802310756) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -0.49655221054287896) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.15410186561445396 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.07494587354362012 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.14437117580738332 AS `Estimator`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.nid AS nid, `DT_node_data_9`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.nid), 
`LGBM_Model_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`Estimator` AS `Estimator` 
FROM `DT_Output_9`)
 SELECT `LGBM_B0`.`KEY`, `LGBM_B0`.`Estimator` 
FROM (SELECT `LGBM_esu_0`.`KEY` AS `KEY`, `LGBM_esu_0`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_Model_0`.`KEY` AS `KEY`, `LGBM_Model_0`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_0` UNION ALL SELECT `LGBM_Model_1`.`KEY` AS `KEY`, `LGBM_Model_1`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_1` UNION ALL SELECT `LGBM_Model_2`.`KEY` AS `KEY`, `LGBM_Model_2`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_2` UNION ALL SELECT `LGBM_Model_3`.`KEY` AS `KEY`, `LGBM_Model_3`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_3` UNION ALL SELECT `LGBM_Model_4`.`KEY` AS `KEY`, `LGBM_Model_4`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_4` UNION ALL SELECT `LGBM_Model_5`.`KEY` AS `KEY`, `LGBM_Model_5`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_5` UNION ALL SELECT `LGBM_Model_6`.`KEY` AS `KEY`, `LGBM_Model_6`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_6` UNION ALL SELECT `LGBM_Model_7`.`KEY` AS `KEY`, `LGBM_Model_7`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_7` UNION ALL SELECT `LGBM_Model_8`.`KEY` AS `KEY`, `LGBM_Model_8`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_8` UNION ALL SELECT `LGBM_Model_9`.`KEY` AS `KEY`, `LGBM_Model_9`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_9`) AS `LGBM_esu_0`) AS `LGBM_B0`) AS `U`

-- Code For temporary table TMP_20180508184456_CODEGEN_BSQ2RV_LGBM_B1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508184456_CODEGEN_BSQ2RV_LGBM_B1` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508184456_CODEGEN_BSQ2RV_LGBM_B1 part 2. Populate

INSERT INTO `TMP_20180508184456_CODEGEN_BSQ2RV_LGBM_B1` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup_10` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.1199268106081446) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03575253068147678) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.11833023796930459 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.0028462833166122436 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.14251748767715913 AS `Estimator`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`LGBM_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`Estimator` AS `Estimator` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.22762641972664058) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.2825087793419189) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.12186335364977519 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.012794868789968036 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.13533078618347646 AS `Estimator`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`LGBM_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`Estimator` AS `Estimator` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.7175518802310756) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -0.49655221054287896) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.14037044793367387 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.07012534938752651 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.1325388250872493 AS `Estimator`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`LGBM_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`Estimator` AS `Estimator` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.1199268106081446) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03575253068147678) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.10532797493717888 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.00504039190709591 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.12500056635450435 AS `Estimator`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`LGBM_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`Estimator` AS `Estimator` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.8115141080331363) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -0.49655221054287896) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, -0.14412912201313746 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.07575691569419135 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.12151596916741447 AS `Estimator`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`LGBM_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`Estimator` AS `Estimator` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.5856121580016488) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.2825087793419189) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM `TMP_20180508184456_CODEGEN_X45SYZ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, 0.14199724786338352 AS `Estimator` UNION ALL SELECT 4 AS nid, -0.16625589457926926 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.04709271775209345 AS `Estimator`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.nid AS nid, `DT_node_data_15`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.nid), 
`LGBM_Model_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`Estimator` AS `Estimator` 
FROM `DT_Output_15`)
 SELECT `LGBM_B1`.`KEY`, `LGBM_B1`.`Estimator` 
FROM (SELECT `LGBM_esu_1`.`KEY` AS `KEY`, `LGBM_esu_1`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_Model_10`.`KEY` AS `KEY`, `LGBM_Model_10`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_10` UNION ALL SELECT `LGBM_Model_11`.`KEY` AS `KEY`, `LGBM_Model_11`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_11` UNION ALL SELECT `LGBM_Model_12`.`KEY` AS `KEY`, `LGBM_Model_12`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_12` UNION ALL SELECT `LGBM_Model_13`.`KEY` AS `KEY`, `LGBM_Model_13`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_13` UNION ALL SELECT `LGBM_Model_14`.`KEY` AS `KEY`, `LGBM_Model_14`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_14` UNION ALL SELECT `LGBM_Model_15`.`KEY` AS `KEY`, `LGBM_Model_15`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_15`) AS `LGBM_esu_1`) AS `LGBM_B1`) AS `U`

-- Code For temporary table TMP_20180508184456_CODEGEN_4KD8GW_LGBM_Union part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508184456_CODEGEN_4KD8GW_LGBM_Union` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508184456_CODEGEN_4KD8GW_LGBM_Union part 2. Populate

INSERT INTO `TMP_20180508184456_CODEGEN_4KD8GW_LGBM_Union` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (SELECT `LGBM_Union`.`KEY`, `LGBM_Union`.`Estimator` 
FROM (SELECT `LGBM_EnsembleUnion`.`KEY` AS `KEY`, `LGBM_EnsembleUnion`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_B0`.`KEY` AS `KEY`, `LGBM_B0`.`Estimator` AS `Estimator` 
FROM `TMP_20180508184456_CODEGEN_OSSDRP_LGBM_B0` AS `LGBM_B0` UNION ALL SELECT `LGBM_B1`.`KEY` AS `KEY`, `LGBM_B1`.`Estimator` AS `Estimator` 
FROM `TMP_20180508184456_CODEGEN_BSQ2RV_LGBM_B1` AS `LGBM_B1`) AS `LGBM_EnsembleUnion`) AS `LGBM_Union`) AS `U`

-- Code For temporary table TMP_20180508184456_CODEGEN_K4ZG1H_LGBM_sum part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508184456_CODEGEN_K4ZG1H_LGBM_sum` (
	`KEY` BIGINT NOT NULL, 
	`Estimator` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508184456_CODEGEN_K4ZG1H_LGBM_sum part 2. Populate

INSERT INTO `TMP_20180508184456_CODEGEN_K4ZG1H_LGBM_sum` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (SELECT `LGBM_sum`.`KEY`, `LGBM_sum`.`Estimator` 
FROM (SELECT `T`.`KEY` AS `KEY`, `T`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_Union`.`KEY` AS `KEY`, sum(`LGBM_Union`.`Estimator`) AS `Estimator` 
FROM `TMP_20180508184456_CODEGEN_4KD8GW_LGBM_Union` AS `LGBM_Union` GROUP BY `LGBM_Union`.`KEY`) AS `T`) AS `LGBM_sum`) AS `U`

-- Code For temporary table TMP_20180508184456_CODEGEN_K4ZG1H_LGBM_sum part 3. Create Index 

CREATE INDEX `ix_TMP_20180508184456_CODEGEN_K4ZG1H_LGBM_sum_KEY` ON `TMP_20180508184456_CODEGEN_K4ZG1H_LGBM_sum` (`KEY`)

-- Model deployment code

SELECT `LGBM_sum`.`KEY` AS `KEY`, `LGBM_sum`.`Estimator` AS `Estimator` 
FROM `TMP_20180508184456_CODEGEN_K4ZG1H_LGBM_sum` AS `LGBM_sum`