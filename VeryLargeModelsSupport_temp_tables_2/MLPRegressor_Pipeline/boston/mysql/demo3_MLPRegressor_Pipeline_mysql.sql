-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : boston
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508183036_CODEGEN_V6LSNW_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508183036_CODEGEN_V6LSNW_ADS_imp_1_OUT` (
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

-- Code For temporary table TMP_20180508183036_CODEGEN_V6LSNW_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180508183036_CODEGEN_V6LSNW_ADS_imp_1_OUT` (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14) SELECT `U`.`KEY`, `U`.impter_2, `U`.impter_3, `U`.impter_4, `U`.impter_5, `U`.impter_6, `U`.impter_7, `U`.impter_8, `U`.impter_9, `U`.impter_10, `U`.impter_11, `U`.impter_12, `U`.impter_13, `U`.impter_14 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11, `ADS_imp_1_OUT`.impter_12, `ADS_imp_1_OUT`.impter_13, `ADS_imp_1_OUT`.impter_14 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 3.3688565346534656 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 12.113861386138614 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 10.983613861386127 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.07178217821782178 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.5541153465346542 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 6.299148514851482 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 67.85049504950491 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 3.8198420792079233 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 9.55940594059406 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 405.8019801980198 ELSE `ADS`.`Feature_9` END AS impter_11, CASE WHEN (`ADS`.`Feature_10` IS NULL) THEN 18.40915841584154 ELSE `ADS`.`Feature_10` END AS impter_12, CASE WHEN (`ADS`.`Feature_11` IS NULL) THEN 358.3797277227715 ELSE `ADS`.`Feature_11` END AS impter_13, CASE WHEN (`ADS`.`Feature_12` IS NULL) THEN 12.626584158415856 ELSE `ADS`.`Feature_12` END AS impter_14 
FROM boston AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180508183036_CODEGEN_V6LSNW_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508183036_CODEGEN_V6LSNW_ADS_imp_1_OUT_KEY` ON `TMP_20180508183036_CODEGEN_V6LSNW_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180508183036_CODEGEN_SJOQZX_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508183036_CODEGEN_SJOQZX_ADS_sca_2_OUT` (
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

-- Code For temporary table TMP_20180508183036_CODEGEN_SJOQZX_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180508183036_CODEGEN_SJOQZX_ADS_sca_2_OUT` (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14) SELECT `U`.`KEY`, `U`.scaler_2, `U`.scaler_3, `U`.scaler_4, `U`.scaler_5, `U`.scaler_6, `U`.scaler_7, `U`.scaler_8, `U`.scaler_9, `U`.scaler_10, `U`.scaler_11, `U`.scaler_12, `U`.scaler_13, `U`.scaler_14 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11, `ADS_sca_2_OUT`.scaler_12, `ADS_sca_2_OUT`.scaler_13, `ADS_sca_2_OUT`.scaler_14 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.impter_2 - 3.3688565346534656) / 7.9935268095335426 AS scaler_2, (`ADS_imp_1_OUT`.impter_3 - 12.113861386138614) / 24.187656534977855 AS scaler_3, (`ADS_imp_1_OUT`.impter_4 - 10.983613861386127) / 6.8177472477399235 AS scaler_4, (`ADS_imp_1_OUT`.impter_5 - 0.07178217821782178) / 0.2581269011709685 AS scaler_5, (`ADS_imp_1_OUT`.impter_6 - 0.5541153465346542) / 0.11800809760824685 AS scaler_6, (`ADS_imp_1_OUT`.impter_7 - 6.299148514851482) / 0.7060417397996938 AS scaler_7, (`ADS_imp_1_OUT`.impter_8 - 67.85049504950491) / 28.107403181658597 AS scaler_8, (`ADS_imp_1_OUT`.impter_9 - 3.8198420792079233) / 2.0933726902675627 AS scaler_9, (`ADS_imp_1_OUT`.impter_10 - 9.55940594059406) / 8.728803783375893 AS scaler_10, (`ADS_imp_1_OUT`.impter_11 - 405.8019801980198) / 169.7858592930543 AS scaler_11, (`ADS_imp_1_OUT`.impter_12 - 18.40915841584154) / 2.166792648327246 AS scaler_12, (`ADS_imp_1_OUT`.impter_13 - 358.3797277227715) / 90.64691624336051 AS scaler_13, (`ADS_imp_1_OUT`.impter_14 - 12.626584158415856) / 7.167938324035357 AS scaler_14 
FROM `TMP_20180508183036_CODEGEN_V6LSNW_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180508183036_CODEGEN_SJOQZX_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508183036_CODEGEN_SJOQZX_ADS_sca_2_OUT_KEY` ON `TMP_20180508183036_CODEGEN_SJOQZX_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180508183036_CODEGEN_KVI512_HL_1_relu_1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508183036_CODEGEN_KVI512_HL_1_relu_1` (
	`KEY` BIGINT NOT NULL, 
	`NEUR_1_1` DOUBLE, 
	`NEUR_1_2` DOUBLE, 
	`NEUR_1_3` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508183036_CODEGEN_KVI512_HL_1_relu_1 part 2. Populate

INSERT INTO `TMP_20180508183036_CODEGEN_KVI512_HL_1_relu_1` (`KEY`, `NEUR_1_1`, `NEUR_1_2`, `NEUR_1_3`) SELECT `U`.`KEY`, `U`.`NEUR_1_1`, `U`.`NEUR_1_2`, `U`.`NEUR_1_3` 
FROM (WITH `IL` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, `ADS_sca_2_OUT`.scaler_2 AS scaler_2, `ADS_sca_2_OUT`.scaler_3 AS scaler_3, `ADS_sca_2_OUT`.scaler_4 AS scaler_4, `ADS_sca_2_OUT`.scaler_5 AS scaler_5, `ADS_sca_2_OUT`.scaler_6 AS scaler_6, `ADS_sca_2_OUT`.scaler_7 AS scaler_7, `ADS_sca_2_OUT`.scaler_8 AS scaler_8, `ADS_sca_2_OUT`.scaler_9 AS scaler_9, `ADS_sca_2_OUT`.scaler_10 AS scaler_10, `ADS_sca_2_OUT`.scaler_11 AS scaler_11, `ADS_sca_2_OUT`.scaler_12 AS scaler_12, `ADS_sca_2_OUT`.scaler_13 AS scaler_13, `ADS_sca_2_OUT`.scaler_14 AS scaler_14 
FROM `TMP_20180508183036_CODEGEN_SJOQZX_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, -1.4856664295273128 * `IL`.scaler_2 + -0.20410539468097985 * `IL`.scaler_3 + 0.007591175642356889 * `IL`.scaler_4 + -0.33187044152702727 * `IL`.scaler_5 + 0.3561438750610232 * `IL`.scaler_6 + 0.9794318645978862 * `IL`.scaler_7 + -0.500001630103773 * `IL`.scaler_8 + 0.21050389348264426 * `IL`.scaler_9 + -1.5698430439215436 * `IL`.scaler_10 + -0.2877542321309605 * `IL`.scaler_11 + -0.2478680229958258 * `IL`.scaler_12 + 0.2535880897730282 * `IL`.scaler_13 + -0.02667480259039404 * `IL`.scaler_14 + 0.8546537229954408 AS `NEUR_1_1`, -0.6056527806777255 * `IL`.scaler_2 + 0.3344462060449844 * `IL`.scaler_3 + 0.36410374059970757 * `IL`.scaler_4 + -0.07432681963760412 * `IL`.scaler_5 + -0.6867861969685324 * `IL`.scaler_6 + 0.8638612475585904 * `IL`.scaler_7 + -0.17028134020488972 * `IL`.scaler_8 + -1.00726937411895 * `IL`.scaler_9 + 2.8962737775926826 * `IL`.scaler_10 + 0.11077197617098662 * `IL`.scaler_11 + -0.13681147265415128 * `IL`.scaler_12 + 0.3136933267290882 * `IL`.scaler_13 + -2.237318041586123 * `IL`.scaler_14 + -0.8222707055144254 AS `NEUR_1_2`, -0.11557014010181747 * `IL`.scaler_2 + 0.145501704911903 * `IL`.scaler_3 + -0.35991298527682497 * `IL`.scaler_4 + 0.9794694667283736 * `IL`.scaler_5 + -2.077969126563855 * `IL`.scaler_6 + -0.782110655232133 * `IL`.scaler_7 + 0.9149212599734994 * `IL`.scaler_8 + -3.1145295450397024 * `IL`.scaler_9 + 0.588044385891882 * `IL`.scaler_10 + -0.1631919951431198 * `IL`.scaler_11 + -0.9088394961786566 * `IL`.scaler_12 + 0.044962223348402726 * `IL`.scaler_13 + -0.41935909695518087 * `IL`.scaler_14 + -1.2094627846758605 AS `NEUR_1_3` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, greatest(`HL_BA_1`.`NEUR_1_1`, 0) AS `NEUR_1_1`, greatest(`HL_BA_1`.`NEUR_1_2`, 0) AS `NEUR_1_2`, greatest(`HL_BA_1`.`NEUR_1_3`, 0) AS `NEUR_1_3` 
FROM `HL_BA_1`)
 SELECT `HL_1_relu_1`.`KEY`, `HL_1_relu_1`.`NEUR_1_1`, `HL_1_relu_1`.`NEUR_1_2`, `HL_1_relu_1`.`NEUR_1_3` 
FROM (SELECT `HL_1_relu`.`KEY` AS `KEY`, `HL_1_relu`.`NEUR_1_1` AS `NEUR_1_1`, `HL_1_relu`.`NEUR_1_2` AS `NEUR_1_2`, `HL_1_relu`.`NEUR_1_3` AS `NEUR_1_3` 
FROM `HL_1_relu`) AS `HL_1_relu_1`) AS `U`

-- Code For temporary table TMP_20180508183036_CODEGEN_KVI512_HL_1_relu_1 part 3. Create Index 

CREATE INDEX `ix_TMP_20180508183036_CODEGEN_KVI512_HL_1_relu_1_KEY` ON `TMP_20180508183036_CODEGEN_KVI512_HL_1_relu_1` (`KEY`)

-- Code For temporary table TMP_20180508183036_CODEGEN_JLS8MO_OL_identity_1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508183036_CODEGEN_JLS8MO_OL_identity_1` (
	`KEY` BIGINT NOT NULL, 
	`NEUR_3_1` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508183036_CODEGEN_JLS8MO_OL_identity_1 part 2. Populate

INSERT INTO `TMP_20180508183036_CODEGEN_JLS8MO_OL_identity_1` (`KEY`, `NEUR_3_1`) SELECT `U`.`KEY`, `U`.`NEUR_3_1` 
FROM (WITH `HL_BA_2` AS 
(SELECT `HL_1_relu_1`.`KEY` AS `KEY`, 0.37816414109992424 * `HL_1_relu_1`.`NEUR_1_1` + -1.0093198525746685 * `HL_1_relu_1`.`NEUR_1_2` + -0.4520904285935851 * `HL_1_relu_1`.`NEUR_1_3` + -0.6507499901911786 AS `NEUR_2_1`, 2.365650922798578 * `HL_1_relu_1`.`NEUR_1_1` + 2.3986824734651173 * `HL_1_relu_1`.`NEUR_1_2` + 1.2256442865852404 * `HL_1_relu_1`.`NEUR_1_3` + 3.6296563792209433 AS `NEUR_2_2`, -1.1432704990895086 * `HL_1_relu_1`.`NEUR_1_1` + 0.8632867864663158 * `HL_1_relu_1`.`NEUR_1_2` + -2.287155815710403 * `HL_1_relu_1`.`NEUR_1_3` + -0.5492199077262419 AS `NEUR_2_3`, 0.8292273087341283 * `HL_1_relu_1`.`NEUR_1_1` + 0.6792464227717212 * `HL_1_relu_1`.`NEUR_1_2` + 0.4603112596799152 * `HL_1_relu_1`.`NEUR_1_3` + -0.5069486408710743 AS `NEUR_2_4`, -0.30755214768041406 * `HL_1_relu_1`.`NEUR_1_1` + -1.159736644159397 * `HL_1_relu_1`.`NEUR_1_2` + -0.33791028738534945 * `HL_1_relu_1`.`NEUR_1_3` + -0.8754044398485946 AS `NEUR_2_5` 
FROM `TMP_20180508183036_CODEGEN_KVI512_HL_1_relu_1` AS `HL_1_relu_1`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, greatest(`HL_BA_2`.`NEUR_2_1`, 0) AS `NEUR_2_1`, greatest(`HL_BA_2`.`NEUR_2_2`, 0) AS `NEUR_2_2`, greatest(`HL_BA_2`.`NEUR_2_3`, 0) AS `NEUR_2_3`, greatest(`HL_BA_2`.`NEUR_2_4`, 0) AS `NEUR_2_4`, greatest(`HL_BA_2`.`NEUR_2_5`, 0) AS `NEUR_2_5` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, -0.9785217030559817 * `HL_2_relu`.`NEUR_2_1` + 1.8191213038673901 * `HL_2_relu`.`NEUR_2_2` + -2.8645865163639113 * `HL_2_relu`.`NEUR_2_3` + -0.18723803124117971 * `HL_2_relu`.`NEUR_2_4` + -0.275962482922718 * `HL_2_relu`.`NEUR_2_5` + 3.6859515198712396 AS `NEUR_3_1` 
FROM `HL_2_relu`), 
`OL_identity` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, `OL_BA`.`NEUR_3_1` AS `NEUR_3_1` 
FROM `OL_BA`)
 SELECT `OL_identity_1`.`KEY`, `OL_identity_1`.`NEUR_3_1` 
FROM (SELECT `OL_identity`.`KEY` AS `KEY`, `OL_identity`.`NEUR_3_1` AS `NEUR_3_1` 
FROM `OL_identity`) AS `OL_identity_1`) AS `U`

-- Code For temporary table TMP_20180508183036_CODEGEN_JLS8MO_OL_identity_1 part 3. Create Index 

CREATE INDEX `ix_TMP_20180508183036_CODEGEN_JLS8MO_OL_identity_1_KEY` ON `TMP_20180508183036_CODEGEN_JLS8MO_OL_identity_1` (`KEY`)

-- Model deployment code

SELECT `OL_identity_1`.`KEY` AS `KEY`, `OL_identity_1`.`NEUR_3_1` AS `Estimator` 
FROM `TMP_20180508183036_CODEGEN_JLS8MO_OL_identity_1` AS `OL_identity_1`