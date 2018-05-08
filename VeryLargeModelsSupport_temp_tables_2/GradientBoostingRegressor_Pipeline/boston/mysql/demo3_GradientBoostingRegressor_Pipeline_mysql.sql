-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingRegressor_Pipeline
-- Dataset : boston
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508183008_CODEGEN_0Y5FBH_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508183008_CODEGEN_0Y5FBH_ADS_imp_1_OUT` (
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
	impter_12 DOUBLE, 
	impter_13 DOUBLE, 
	impter_14 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508183008_CODEGEN_0Y5FBH_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180508183008_CODEGEN_0Y5FBH_ADS_imp_1_OUT` (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14) SELECT `U`.`KEY`, `U`.impter_2, `U`.impter_3, `U`.impter_4, `U`.impter_5, `U`.impter_6, `U`.impter_7, `U`.impter_8, `U`.impter_9, `U`.impter_10, `U`.impter_11, `U`.impter_12, `U`.impter_13, `U`.impter_14 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11, `ADS_imp_1_OUT`.impter_12, `ADS_imp_1_OUT`.impter_13, `ADS_imp_1_OUT`.impter_14 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 3.3688565346534656 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 12.113861386138614 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 10.983613861386127 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.07178217821782178 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.5541153465346542 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 6.299148514851482 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 67.85049504950491 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 3.8198420792079233 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 9.55940594059406 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 405.8019801980198 ELSE `ADS`.`Feature_9` END AS impter_11, CASE WHEN (`ADS`.`Feature_10` IS NULL) THEN 18.40915841584154 ELSE `ADS`.`Feature_10` END AS impter_12, CASE WHEN (`ADS`.`Feature_11` IS NULL) THEN 358.3797277227715 ELSE `ADS`.`Feature_11` END AS impter_13, CASE WHEN (`ADS`.`Feature_12` IS NULL) THEN 12.626584158415856 ELSE `ADS`.`Feature_12` END AS impter_14 
FROM boston AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180508183008_CODEGEN_0Y5FBH_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508183008_CODEGEN_0Y5FBH_ADS_imp_1_OUT_KEY` ON `TMP_20180508183008_CODEGEN_0Y5FBH_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` (
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
	scaler_12 DOUBLE, 
	scaler_13 DOUBLE, 
	scaler_14 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14) SELECT `U`.`KEY`, `U`.scaler_2, `U`.scaler_3, `U`.scaler_4, `U`.scaler_5, `U`.scaler_6, `U`.scaler_7, `U`.scaler_8, `U`.scaler_9, `U`.scaler_10, `U`.scaler_11, `U`.scaler_12, `U`.scaler_13, `U`.scaler_14 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11, `ADS_sca_2_OUT`.scaler_12, `ADS_sca_2_OUT`.scaler_13, `ADS_sca_2_OUT`.scaler_14 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.impter_2 - 3.3688565346534656) / 7.9935268095335426 AS scaler_2, (`ADS_imp_1_OUT`.impter_3 - 12.113861386138614) / 24.187656534977855 AS scaler_3, (`ADS_imp_1_OUT`.impter_4 - 10.983613861386127) / 6.8177472477399235 AS scaler_4, (`ADS_imp_1_OUT`.impter_5 - 0.07178217821782178) / 0.2581269011709685 AS scaler_5, (`ADS_imp_1_OUT`.impter_6 - 0.5541153465346542) / 0.11800809760824685 AS scaler_6, (`ADS_imp_1_OUT`.impter_7 - 6.299148514851482) / 0.7060417397996938 AS scaler_7, (`ADS_imp_1_OUT`.impter_8 - 67.85049504950491) / 28.107403181658597 AS scaler_8, (`ADS_imp_1_OUT`.impter_9 - 3.8198420792079233) / 2.0933726902675627 AS scaler_9, (`ADS_imp_1_OUT`.impter_10 - 9.55940594059406) / 8.728803783375893 AS scaler_10, (`ADS_imp_1_OUT`.impter_11 - 405.8019801980198) / 169.7858592930543 AS scaler_11, (`ADS_imp_1_OUT`.impter_12 - 18.40915841584154) / 2.166792648327246 AS scaler_12, (`ADS_imp_1_OUT`.impter_13 - 358.3797277227715) / 90.64691624336051 AS scaler_13, (`ADS_imp_1_OUT`.impter_14 - 12.626584158415856) / 7.167938324035357 AS scaler_14 
FROM `TMP_20180508183008_CODEGEN_0Y5FBH_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT_KEY` ON `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180508183008_CODEGEN_N29A3F_GB_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508183008_CODEGEN_N29A3F_GB_B0` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508183008_CODEGEN_N29A3F_GB_B0 part 2. Populate

INSERT INTO `TMP_20180508183008_CODEGEN_N29A3F_GB_B0` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.0075204372406006) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.3004233241081238) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.3439619541168213) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.4142482876777649) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.7378552556037903) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.7378552556037903) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -0.8483721607454837 AS `E` UNION ALL SELECT 4 AS nid, 5.778934340802502 AS `E` UNION ALL SELECT 6 AS nid, -4.564066779018324 AS `E` UNION ALL SELECT 7 AS nid, -9.700210396039603 AS `E` UNION ALL SELECT 10 AS nid, 11.0210396039604 AS `E` UNION ALL SELECT 11 AS nid, -3.3122937293729344 AS `E` UNION ALL SELECT 13 AS nid, 23.381039603960392 AS `E` UNION ALL SELECT 14 AS nid, -0.6789603960396029 AS `E`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`E` AS `E` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`GB_Model_0_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`E` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.7447880506515503) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.30391108989715576) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1631908416748047) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.30187469720840454) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.8887920379638672) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -0.07839112728834152) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 21.815194157496244 AS `E` UNION ALL SELECT 4 AS nid, -0.2396463855716492 AS `E` UNION ALL SELECT 6 AS nid, -4.805447210491492 AS `E` UNION ALL SELECT 7 AS nid, -9.581208416719333 AS `E` UNION ALL SELECT 10 AS nid, 7.94163458537708 AS `E` UNION ALL SELECT 11 AS nid, -7.634800467546751 AS `E` UNION ALL SELECT 13 AS nid, 21.04293564356436 AS `E` UNION ALL SELECT 14 AS nid, -0.6110643564356408 AS `E`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`E` AS `E` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`GB_Model_1_0` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`E` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.4048003852367401) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.1923537254333496) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1153733730316162) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.611592411994934) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 1.0077396631240845) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_13 <= -2.0305681228637695) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.4142482876777649) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 25.103447187567056 AS `E` UNION ALL SELECT 4 AS nid, 2.484205273659576 AS `E` UNION ALL SELECT 6 AS nid, 10.139057899312366 AS `E` UNION ALL SELECT 7 AS nid, 18.18908054074639 AS `E` UNION ALL SELECT 10 AS nid, -7.359879756146922 AS `E` UNION ALL SELECT 11 AS nid, -2.4218652961991904 AS `E` UNION ALL SELECT 13 AS nid, -4.342721902787801 AS `E` UNION ALL SELECT 14 AS nid, -9.80502580423983 AS `E`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`E` AS `E` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`GB_Model_2_0` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`E` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.6642892360687256) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.3439619541168213) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_13 <= 0.03911078721284866) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.30391108989715576) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2385239601135254) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.30187469720840454) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 0.9564209312261512 AS `E` UNION ALL SELECT 4 AS nid, 6.484731479394312 AS `E` UNION ALL SELECT 6 AS nid, -2.3688659748667185 AS `E` UNION ALL SELECT 7 AS nid, 17.119734025133283 AS `E` UNION ALL SELECT 10 AS nid, 22.814012685528617 AS `E` UNION ALL SELECT 11 AS nid, -1.1245083937503437 AS `E` UNION ALL SELECT 13 AS nid, -3.8619717533611166 AS `E` UNION ALL SELECT 14 AS nid, -7.680560208782768 AS `E`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`E` AS `E` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`GB_Model_3_0` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`E` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.6642892360687256) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.3439619541168213) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 3.474796772003174) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.48248404264450073) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2385239601135254) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.4142482876777649) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 0.8607788381035378 AS `E` UNION ALL SELECT 4 AS nid, 5.836258331454881 AS `E` UNION ALL SELECT 6 AS nid, 15.407760622619955 AS `E` UNION ALL SELECT 7 AS nid, -2.1319793773800484 AS `E` UNION ALL SELECT 10 AS nid, 20.532611416975755 AS `E` UNION ALL SELECT 11 AS nid, -1.1975617354332486 AS `E` UNION ALL SELECT 13 AS nid, -2.8272705763317787 AS `E` UNION ALL SELECT 14 AS nid, -6.76966368664234 AS `E`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`E` AS `E` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`GB_Model_4_0` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`E` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.7447880506515503) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.23345845937728882) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1631908416748047) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.8675674796104431) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.8887920379638672) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= 0.5726628303527832) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 15.394158637917217 AS `E` UNION ALL SELECT 4 AS nid, -0.0862720289231399 AS `E` UNION ALL SELECT 6 AS nid, -6.463808470986295 AS `E` UNION ALL SELECT 7 AS nid, -2.8557554273301307 AS `E` UNION ALL SELECT 10 AS nid, 5.81169995972859 AS `E` UNION ALL SELECT 11 AS nid, -5.588383293837697 AS `E` UNION ALL SELECT 13 AS nid, 13.866984560357956 AS `E` UNION ALL SELECT 14 AS nid, -1.9187814396420428 AS `E`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`E` AS `E` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`GB_Model_5_0` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`E` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.4048003852367401) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.1640267372131348) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1153733730316162) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= -1.481063961982727) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.31014764308929443) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.9055434465408325) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 1.0077396631240845) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 17.75321200449003 AS `E` UNION ALL SELECT 4 AS nid, 1.6591435216962147 AS `E` UNION ALL SELECT 6 AS nid, 12.796594507036893 AS `E` UNION ALL SELECT 7 AS nid, 8.266752204906313 AS `E` UNION ALL SELECT 10 AS nid, -1.926331818462883 AS `E` UNION ALL SELECT 11 AS nid, 6.092732573697336 AS `E` UNION ALL SELECT 13 AS nid, -3.778369007299135 AS `E` UNION ALL SELECT 14 AS nid, -6.937024667785336 AS `E`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`E` AS `E` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`GB_Model_6_0` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`E` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -1.0423617362976074) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.567685604095459) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.5096745491027832) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.29253846406936646) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.1306629776954651) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.0981667041778564) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.9777689576148987) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 1.957581564285816 AS `E` UNION ALL SELECT 4 AS nid, 6.914444562849308 AS `E` UNION ALL SELECT 6 AS nid, 13.947995739948368 AS `E` UNION ALL SELECT 7 AS nid, 10.023002777579354 AS `E` UNION ALL SELECT 10 AS nid, 0.401168739240097 AS `E` UNION ALL SELECT 11 AS nid, 6.656375521084428 AS `E` UNION ALL SELECT 13 AS nid, -1.819744042370566 AS `E` UNION ALL SELECT 14 AS nid, -4.813677124435982 AS `E`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`E` AS `E` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`GB_Model_7_0` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`E` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.6894010305404663) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -1.0765416622161865) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 3.474796772003174) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 1.0077396631240845) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2385239601135254) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.4142482876777649) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 5.346084613071413 AS `E` UNION ALL SELECT 4 AS nid, 1.709044700366004 AS `E` UNION ALL SELECT 6 AS nid, 10.325905698462392 AS `E` UNION ALL SELECT 7 AS nid, -3.219216068276914 AS `E` UNION ALL SELECT 10 AS nid, 15.124496337113442 AS `E` UNION ALL SELECT 11 AS nid, -1.1814593983125241 AS `E` UNION ALL SELECT 13 AS nid, -2.192314557866565 AS `E` UNION ALL SELECT 14 AS nid, -5.8546149874711295 AS `E`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`E` AS `E` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`GB_Model_8_0` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`E` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.32909029722213745) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.7468557357788086) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2385239601135254) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= 0.5495872497558594) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.8887920379638672) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.611592411994934) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= 0.8680810928344727) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 13.6120467034021 AS `E` UNION ALL SELECT 4 AS nid, -0.9948407576948689 AS `E` UNION ALL SELECT 6 AS nid, -1.3137722426799754 AS `E` UNION ALL SELECT 7 AS nid, -4.870926422275086 AS `E` UNION ALL SELECT 10 AS nid, 3.479706009560154 AS `E` UNION ALL SELECT 11 AS nid, 9.293315128616154 AS `E` UNION ALL SELECT 13 AS nid, -6.464029502259475 AS `E` UNION ALL SELECT 14 AS nid, -2.726194547802579 AS `E`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.nid AS nid, `DT_node_data_9`.`E` AS `E` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.nid), 
`GB_Model_9_0` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`E` AS `Estimator` 
FROM `DT_Output_9`)
 SELECT `GB_B0`.`KEY`, `GB_B0`.`Estimator` 
FROM (SELECT `GB_esu_0`.`KEY` AS `KEY`, `GB_esu_0`.`Estimator` AS `Estimator` 
FROM (SELECT `GB_Model_0_0`.`KEY` AS `KEY`, `GB_Model_0_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_0_0` UNION ALL SELECT `GB_Model_1_0`.`KEY` AS `KEY`, `GB_Model_1_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_1_0` UNION ALL SELECT `GB_Model_2_0`.`KEY` AS `KEY`, `GB_Model_2_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_2_0` UNION ALL SELECT `GB_Model_3_0`.`KEY` AS `KEY`, `GB_Model_3_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_3_0` UNION ALL SELECT `GB_Model_4_0`.`KEY` AS `KEY`, `GB_Model_4_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_4_0` UNION ALL SELECT `GB_Model_5_0`.`KEY` AS `KEY`, `GB_Model_5_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_5_0` UNION ALL SELECT `GB_Model_6_0`.`KEY` AS `KEY`, `GB_Model_6_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_6_0` UNION ALL SELECT `GB_Model_7_0`.`KEY` AS `KEY`, `GB_Model_7_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_7_0` UNION ALL SELECT `GB_Model_8_0`.`KEY` AS `KEY`, `GB_Model_8_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_8_0` UNION ALL SELECT `GB_Model_9_0`.`KEY` AS `KEY`, `GB_Model_9_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_9_0`) AS `GB_esu_0`) AS `GB_B0`) AS `U`

-- Code For temporary table TMP_20180508183008_CODEGEN_BE70IT_GB_B1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508183008_CODEGEN_BE70IT_GB_B1` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508183008_CODEGEN_BE70IT_GB_B1 part 2. Populate

INSERT INTO `TMP_20180508183008_CODEGEN_BE70IT_GB_B1` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup_10` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.6894010305404663) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.1923537254333496) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1153733730316162) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= -1.481063961982727) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.9777689576148987) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.43248361349105835) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.8133034706115723) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 16.03042247150008 AS `E` UNION ALL SELECT 4 AS nid, 1.821409955429755 AS `E` UNION ALL SELECT 6 AS nid, 9.249655724557512 AS `E` UNION ALL SELECT 7 AS nid, 5.393094924998318 AS `E` UNION ALL SELECT 10 AS nid, -1.097192260753167 AS `E` UNION ALL SELECT 11 AS nid, 2.9672046090800324 AS `E` UNION ALL SELECT 13 AS nid, -2.320706273272657 AS `E` UNION ALL SELECT 14 AS nid, -5.920274456589774 AS `E`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`E` AS `E` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`GB_Model_10_0` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`E` AS `Estimator` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -1.0423617362976074) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.29253846406936646) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.5247904062271118) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.10675105452537537) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= 0.5726628303527832) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.2582729458808899) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2650361061096191) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 4.45893942446002 AS `E` UNION ALL SELECT 4 AS nid, 10.679274034730696 AS `E` UNION ALL SELECT 6 AS nid, 5.049649593801159 AS `E` UNION ALL SELECT 7 AS nid, 0.1548636905527001 AS `E` UNION ALL SELECT 10 AS nid, -0.34880846594333415 AS `E` UNION ALL SELECT 11 AS nid, 3.0415724083043774 AS `E` UNION ALL SELECT 13 AS nid, 7.66672001954712 AS `E` UNION ALL SELECT 14 AS nid, -2.588318526317513 AS `E`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`E` AS `E` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`GB_Model_11_0` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`E` AS `Estimator` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.7136284708976746) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.23345845937728882) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1631908416748047) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= 0.4803605079650879) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.8887920379638672) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.671787142753601) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.6066480278968811) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 9.963139704387164 AS `E` UNION ALL SELECT 4 AS nid, -0.08025550887970825 AS `E` UNION ALL SELECT 6 AS nid, -0.5914923147357894 AS `E` UNION ALL SELECT 7 AS nid, -3.2386349549117512 AS `E` UNION ALL SELECT 10 AS nid, 3.298261314433055 AS `E` UNION ALL SELECT 11 AS nid, 7.22979934684516 AS `E` UNION ALL SELECT 13 AS nid, -1.8596300631661944 AS `E` UNION ALL SELECT 14 AS nid, -5.822959015412992 AS `E`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`E` AS `E` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`GB_Model_12_0` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`E` AS `Estimator` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.4048003852367401) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.0981667041778564) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1153733730316162) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= -1.5272151231765747) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.8386189937591553) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_13 <= -3.643143653869629) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= -0.732110321521759) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 11.186096474641952 AS `E` UNION ALL SELECT 4 AS nid, 0.7950189600237958 AS `E` UNION ALL SELECT 6 AS nid, 6.685315566575873 AS `E` UNION ALL SELECT 7 AS nid, 3.8872203528188716 AS `E` UNION ALL SELECT 10 AS nid, -6.0146691120059375 AS `E` UNION ALL SELECT 11 AS nid, -2.638999622315692 AS `E` UNION ALL SELECT 13 AS nid, 0.7806885165178139 AS `E` UNION ALL SELECT 14 AS nid, -1.1256769388015495 AS `E`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`E` AS `E` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`GB_Model_13_0` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`E` AS `Estimator` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.32909029722213745) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.92124342918396) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2385239601135254) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.4142482876777649) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= 0.4803605079650879) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.671787142753601) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -1.1323456764221191) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 9.478965639279586 AS `E` UNION ALL SELECT 4 AS nid, -0.6499702953553841 AS `E` UNION ALL SELECT 6 AS nid, -1.233527298074414 AS `E` UNION ALL SELECT 7 AS nid, -3.676696947229039 AS `E` UNION ALL SELECT 10 AS nid, 2.5270905093722926 AS `E` UNION ALL SELECT 11 AS nid, 5.959944169144661 AS `E` UNION ALL SELECT 13 AS nid, 11.244529202974093 AS `E` UNION ALL SELECT 14 AS nid, -1.2220960075581273 AS `E`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`E` AS `E` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`GB_Model_14_0` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`E` AS `Estimator` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.7186981439590454) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= -1.0796067714691162) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= -0.23498252034187317) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 1.0077396631240845) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2385239601135254) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 1.0243759155273438) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508183008_CODEGEN_V9FB4T_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, 5.00442683276913 AS `E` UNION ALL SELECT 4 AS nid, 1.1985510005554418 AS `E` UNION ALL SELECT 6 AS nid, 5.943336196435719 AS `E` UNION ALL SELECT 7 AS nid, 0.7774532662097009 AS `E` UNION ALL SELECT 10 AS nid, 8.531069075351624 AS `E` UNION ALL SELECT 11 AS nid, -0.5351569767333489 AS `E` UNION ALL SELECT 13 AS nid, -1.4468251981974587 AS `E` UNION ALL SELECT 14 AS nid, -3.730065268370492 AS `E`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.nid AS nid, `DT_node_data_15`.`E` AS `E` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.nid), 
`GB_Model_15_0` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`E` AS `Estimator` 
FROM `DT_Output_15`)
 SELECT `GB_B1`.`KEY`, `GB_B1`.`Estimator` 
FROM (SELECT `GB_esu_1`.`KEY` AS `KEY`, `GB_esu_1`.`Estimator` AS `Estimator` 
FROM (SELECT `GB_Model_10_0`.`KEY` AS `KEY`, `GB_Model_10_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_10_0` UNION ALL SELECT `GB_Model_11_0`.`KEY` AS `KEY`, `GB_Model_11_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_11_0` UNION ALL SELECT `GB_Model_12_0`.`KEY` AS `KEY`, `GB_Model_12_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_12_0` UNION ALL SELECT `GB_Model_13_0`.`KEY` AS `KEY`, `GB_Model_13_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_13_0` UNION ALL SELECT `GB_Model_14_0`.`KEY` AS `KEY`, `GB_Model_14_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_14_0` UNION ALL SELECT `GB_Model_15_0`.`KEY` AS `KEY`, `GB_Model_15_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_15_0`) AS `GB_esu_1`) AS `GB_B1`) AS `U`

-- Code For temporary table TMP_20180508183008_CODEGEN_K9Y627_GB_Union part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508183008_CODEGEN_K9Y627_GB_Union` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508183008_CODEGEN_K9Y627_GB_Union part 2. Populate

INSERT INTO `TMP_20180508183008_CODEGEN_K9Y627_GB_Union` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (SELECT `GB_Union`.`KEY`, `GB_Union`.`Estimator` 
FROM (SELECT `GB_EnsembleUnion`.`KEY` AS `KEY`, `GB_EnsembleUnion`.`Estimator` AS `Estimator` 
FROM (SELECT `GB_B0`.`KEY` AS `KEY`, `GB_B0`.`Estimator` AS `Estimator` 
FROM `TMP_20180508183008_CODEGEN_N29A3F_GB_B0` AS `GB_B0` UNION ALL SELECT `GB_B1`.`KEY` AS `KEY`, `GB_B1`.`Estimator` AS `Estimator` 
FROM `TMP_20180508183008_CODEGEN_BE70IT_GB_B1` AS `GB_B1`) AS `GB_EnsembleUnion`) AS `GB_Union`) AS `U`

-- Code For temporary table TMP_20180508183008_CODEGEN_JOZRM3_GB_sum part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508183008_CODEGEN_JOZRM3_GB_sum` (
	`KEY` BIGINT NOT NULL, 
	`Estimator` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508183008_CODEGEN_JOZRM3_GB_sum part 2. Populate

INSERT INTO `TMP_20180508183008_CODEGEN_JOZRM3_GB_sum` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (SELECT `GB_sum`.`KEY`, `GB_sum`.`Estimator` 
FROM (SELECT `T`.`KEY` AS `KEY`, `T`.`Estimator` AS `Estimator` 
FROM (SELECT `GB_Union`.`KEY` AS `KEY`, sum(`GB_Union`.`Estimator`) AS `Estimator` 
FROM `TMP_20180508183008_CODEGEN_K9Y627_GB_Union` AS `GB_Union` GROUP BY `GB_Union`.`KEY`) AS `T`) AS `GB_sum`) AS `U`

-- Code For temporary table TMP_20180508183008_CODEGEN_JOZRM3_GB_sum part 3. Create Index 

CREATE INDEX `ix_TMP_20180508183008_CODEGEN_JOZRM3_GB_sum_KEY` ON `TMP_20180508183008_CODEGEN_JOZRM3_GB_sum` (`KEY`)

-- Model deployment code

SELECT `GB_sum`.`KEY` AS `KEY`, 22.5789603960396 + 0.1 * `GB_sum`.`Estimator` AS `Estimator` 
FROM `TMP_20180508183008_CODEGEN_JOZRM3_GB_sum` AS `GB_sum`