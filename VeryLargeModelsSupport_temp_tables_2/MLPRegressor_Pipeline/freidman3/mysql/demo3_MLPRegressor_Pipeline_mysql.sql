-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : freidman3
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508185229_CODEGEN_0L7CCF_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508185229_CODEGEN_0L7CCF_ADS_imp_1_OUT` (
	`KEY` BIGINT NOT NULL, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508185229_CODEGEN_0L7CCF_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180508185229_CODEGEN_0L7CCF_ADS_imp_1_OUT` (`KEY`, imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT `U`.`KEY`, `U`.imputer_output_2, `U`.imputer_output_3, `U`.imputer_output_4, `U`.imputer_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.imputer_output_2, `ADS_imp_1_OUT`.imputer_output_3, `ADS_imp_1_OUT`.imputer_output_4, `ADS_imp_1_OUT`.imputer_output_5 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 43.79128122207401 ELSE `ADS`.`Feature_0` END AS imputer_output_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 945.9672833084396 ELSE `ADS`.`Feature_1` END AS imputer_output_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.5310009099975209 ELSE `ADS`.`Feature_2` END AS imputer_output_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 6.139967152050499 ELSE `ADS`.`Feature_3` END AS imputer_output_5 
FROM freidman3 AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180508185229_CODEGEN_0L7CCF_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508185229_CODEGEN_0L7CCF_ADS_imp_1_OUT_KEY` ON `TMP_20180508185229_CODEGEN_0L7CCF_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180508185229_CODEGEN_6O8BTV_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508185229_CODEGEN_6O8BTV_ADS_sca_2_OUT` (
	`KEY` BIGINT NOT NULL, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508185229_CODEGEN_6O8BTV_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180508185229_CODEGEN_6O8BTV_ADS_sca_2_OUT` (`KEY`, scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT `U`.`KEY`, `U`.scaler_output_2, `U`.scaler_output_3, `U`.scaler_output_4, `U`.scaler_output_5 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_output_2, `ADS_sca_2_OUT`.scaler_output_3, `ADS_sca_2_OUT`.scaler_output_4, `ADS_sca_2_OUT`.scaler_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.imputer_output_2 - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (`ADS_imp_1_OUT`.imputer_output_3 - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (`ADS_imp_1_OUT`.imputer_output_4 - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (`ADS_imp_1_OUT`.imputer_output_5 - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM `TMP_20180508185229_CODEGEN_0L7CCF_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180508185229_CODEGEN_6O8BTV_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508185229_CODEGEN_6O8BTV_ADS_sca_2_OUT_KEY` ON `TMP_20180508185229_CODEGEN_6O8BTV_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180508185229_CODEGEN_A2XSZU_HL_1_relu_1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508185229_CODEGEN_A2XSZU_HL_1_relu_1` (
	`KEY` BIGINT NOT NULL, 
	`NEUR_1_1` DOUBLE, 
	`NEUR_1_2` DOUBLE, 
	`NEUR_1_3` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508185229_CODEGEN_A2XSZU_HL_1_relu_1 part 2. Populate

INSERT INTO `TMP_20180508185229_CODEGEN_A2XSZU_HL_1_relu_1` (`KEY`, `NEUR_1_1`, `NEUR_1_2`, `NEUR_1_3`) SELECT `U`.`KEY`, `U`.`NEUR_1_1`, `U`.`NEUR_1_2`, `U`.`NEUR_1_3` 
FROM (WITH `IL` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, `ADS_sca_2_OUT`.scaler_output_2 AS scaler_output_2, `ADS_sca_2_OUT`.scaler_output_3 AS scaler_output_3, `ADS_sca_2_OUT`.scaler_output_4 AS scaler_output_4, `ADS_sca_2_OUT`.scaler_output_5 AS scaler_output_5 
FROM `TMP_20180508185229_CODEGEN_6O8BTV_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, 0.7354225804663967 * `IL`.scaler_output_2 + -1.0717872290831125 * `IL`.scaler_output_3 + -1.2199651489515457 * `IL`.scaler_output_4 + -0.3939547215443926 * `IL`.scaler_output_5 + -0.05707316363912278 AS `NEUR_1_1`, -0.012935746985150948 * `IL`.scaler_output_2 + 0.3383384532774338 * `IL`.scaler_output_3 + -1.675771034250372 * `IL`.scaler_output_4 + 0.09460633851264162 * `IL`.scaler_output_5 + -1.568217107580389 AS `NEUR_1_2`, -0.014045652622483081 * `IL`.scaler_output_2 + -0.9345228492721701 * `IL`.scaler_output_3 + 0.9542731717969175 * `IL`.scaler_output_4 + 0.5401900735586265 * `IL`.scaler_output_5 + -0.6652512469255111 AS `NEUR_1_3` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, greatest(`HL_BA_1`.`NEUR_1_1`, 0) AS `NEUR_1_1`, greatest(`HL_BA_1`.`NEUR_1_2`, 0) AS `NEUR_1_2`, greatest(`HL_BA_1`.`NEUR_1_3`, 0) AS `NEUR_1_3` 
FROM `HL_BA_1`)
 SELECT `HL_1_relu_1`.`KEY`, `HL_1_relu_1`.`NEUR_1_1`, `HL_1_relu_1`.`NEUR_1_2`, `HL_1_relu_1`.`NEUR_1_3` 
FROM (SELECT `HL_1_relu`.`KEY` AS `KEY`, `HL_1_relu`.`NEUR_1_1` AS `NEUR_1_1`, `HL_1_relu`.`NEUR_1_2` AS `NEUR_1_2`, `HL_1_relu`.`NEUR_1_3` AS `NEUR_1_3` 
FROM `HL_1_relu`) AS `HL_1_relu_1`) AS `U`

-- Code For temporary table TMP_20180508185229_CODEGEN_A2XSZU_HL_1_relu_1 part 3. Create Index 

CREATE INDEX `ix_TMP_20180508185229_CODEGEN_A2XSZU_HL_1_relu_1_KEY` ON `TMP_20180508185229_CODEGEN_A2XSZU_HL_1_relu_1` (`KEY`)

-- Code For temporary table TMP_20180508185229_CODEGEN_OV8C42_OL_identity_1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508185229_CODEGEN_OV8C42_OL_identity_1` (
	`KEY` BIGINT NOT NULL, 
	`NEUR_3_1` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508185229_CODEGEN_OV8C42_OL_identity_1 part 2. Populate

INSERT INTO `TMP_20180508185229_CODEGEN_OV8C42_OL_identity_1` (`KEY`, `NEUR_3_1`) SELECT `U`.`KEY`, `U`.`NEUR_3_1` 
FROM (WITH `HL_BA_2` AS 
(SELECT `HL_1_relu_1`.`KEY` AS `KEY`, 0.41282073786843115 * `HL_1_relu_1`.`NEUR_1_1` + 1.1796598351106002 * `HL_1_relu_1`.`NEUR_1_2` + 0.8548732972026325 * `HL_1_relu_1`.`NEUR_1_3` + -1.7624619054718624 AS `NEUR_2_1`, 1.0369597790607004 * `HL_1_relu_1`.`NEUR_1_1` + 0.5110700159940192 * `HL_1_relu_1`.`NEUR_1_2` + -0.23776588945185728 * `HL_1_relu_1`.`NEUR_1_3` + -0.2821036543378194 AS `NEUR_2_2`, -0.30064798951688704 * `HL_1_relu_1`.`NEUR_1_1` + -0.8271477144718902 * `HL_1_relu_1`.`NEUR_1_2` + -0.3009743810527 * `HL_1_relu_1`.`NEUR_1_3` + -0.010394282503777497 AS `NEUR_2_3`, -0.3412499292043877 * `HL_1_relu_1`.`NEUR_1_1` + -0.5187758749794728 * `HL_1_relu_1`.`NEUR_1_2` + -0.12230053088772282 * `HL_1_relu_1`.`NEUR_1_3` + -0.7406283496068888 AS `NEUR_2_4`, -0.2796655286609097 * `HL_1_relu_1`.`NEUR_1_1` + 0.08424479598655256 * `HL_1_relu_1`.`NEUR_1_2` + 0.0003500686022732635 * `HL_1_relu_1`.`NEUR_1_3` + -0.6513285138753321 AS `NEUR_2_5` 
FROM `TMP_20180508185229_CODEGEN_A2XSZU_HL_1_relu_1` AS `HL_1_relu_1`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, greatest(`HL_BA_2`.`NEUR_2_1`, 0) AS `NEUR_2_1`, greatest(`HL_BA_2`.`NEUR_2_2`, 0) AS `NEUR_2_2`, greatest(`HL_BA_2`.`NEUR_2_3`, 0) AS `NEUR_2_3`, greatest(`HL_BA_2`.`NEUR_2_4`, 0) AS `NEUR_2_4`, greatest(`HL_BA_2`.`NEUR_2_5`, 0) AS `NEUR_2_5` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, -1.1130209803638205 * `HL_2_relu`.`NEUR_2_1` + -0.1470100170972413 * `HL_2_relu`.`NEUR_2_2` + -0.7182240518567016 * `HL_2_relu`.`NEUR_2_3` + 0.6827967584043649 * `HL_2_relu`.`NEUR_2_4` + 0.41176977743182674 * `HL_2_relu`.`NEUR_2_5` + 1.5171405225898926 AS `NEUR_3_1` 
FROM `HL_2_relu`), 
`OL_identity` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, `OL_BA`.`NEUR_3_1` AS `NEUR_3_1` 
FROM `OL_BA`)
 SELECT `OL_identity_1`.`KEY`, `OL_identity_1`.`NEUR_3_1` 
FROM (SELECT `OL_identity`.`KEY` AS `KEY`, `OL_identity`.`NEUR_3_1` AS `NEUR_3_1` 
FROM `OL_identity`) AS `OL_identity_1`) AS `U`

-- Code For temporary table TMP_20180508185229_CODEGEN_OV8C42_OL_identity_1 part 3. Create Index 

CREATE INDEX `ix_TMP_20180508185229_CODEGEN_OV8C42_OL_identity_1_KEY` ON `TMP_20180508185229_CODEGEN_OV8C42_OL_identity_1` (`KEY`)

-- Model deployment code

SELECT `OL_identity_1`.`KEY` AS `KEY`, `OL_identity_1`.`NEUR_3_1` AS `Estimator` 
FROM `TMP_20180508185229_CODEGEN_OV8C42_OL_identity_1` AS `OL_identity_1`