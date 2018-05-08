-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDClassifier_Pipeline
-- Dataset : BinaryClass_10
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508175958_CODEGEN_RIQUPW_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508175958_CODEGEN_RIQUPW_ADS_imp_1_OUT` (
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

-- Code For temporary table TMP_20180508175958_CODEGEN_RIQUPW_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180508175958_CODEGEN_RIQUPW_ADS_imp_1_OUT` (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT `U`.`KEY`, `U`.impter_2, `U`.impter_3, `U`.impter_4, `U`.impter_5, `U`.impter_6, `U`.impter_7, `U`.impter_8, `U`.impter_9, `U`.impter_10, `U`.impter_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.061829205238134496 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.17702463767183324 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.04138385004903454 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.13060646805847148 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.05955810471983082 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN -0.04892908987010584 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.19101797861713127 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.02204959673267471 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN -0.057729814034140035 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN -0.05254959205203237 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `BinaryClass_10` AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180508175958_CODEGEN_RIQUPW_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508175958_CODEGEN_RIQUPW_ADS_imp_1_OUT_KEY` ON `TMP_20180508175958_CODEGEN_RIQUPW_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180508175958_CODEGEN_XMVYVD_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508175958_CODEGEN_XMVYVD_ADS_sca_2_OUT` (
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

-- Code For temporary table TMP_20180508175958_CODEGEN_XMVYVD_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180508175958_CODEGEN_XMVYVD_ADS_sca_2_OUT` (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT `U`.`KEY`, `U`.scaler_2, `U`.scaler_3, `U`.scaler_4, `U`.scaler_5, `U`.scaler_6, `U`.scaler_7, `U`.scaler_8, `U`.scaler_9, `U`.scaler_10, `U`.scaler_11 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.impter_2 - 0.061829205238134496) / 1.2283839562090673 AS scaler_2, (`ADS_imp_1_OUT`.impter_3 - 0.17702463767183324) / 0.940821656314017 AS scaler_3, (`ADS_imp_1_OUT`.impter_4 - 0.04138385004903454) / 1.0741824888811282 AS scaler_4, (`ADS_imp_1_OUT`.impter_5 - 0.13060646805847148) / 1.0792244559733761 AS scaler_5, (`ADS_imp_1_OUT`.impter_6 - -0.05955810471983082) / 1.1095891190508123 AS scaler_6, (`ADS_imp_1_OUT`.impter_7 - -0.04892908987010584) / 1.3781871812029047 AS scaler_7, (`ADS_imp_1_OUT`.impter_8 - 0.19101797861713127) / 0.9735285246303208 AS scaler_8, (`ADS_imp_1_OUT`.impter_9 - 0.02204959673267471) / 0.47460301203797095 AS scaler_9, (`ADS_imp_1_OUT`.impter_10 - -0.057729814034140035) / 1.064607524840552 AS scaler_10, (`ADS_imp_1_OUT`.impter_11 - -0.05254959205203237) / 1.2245328896554564 AS scaler_11 
FROM `TMP_20180508175958_CODEGEN_RIQUPW_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180508175958_CODEGEN_XMVYVD_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508175958_CODEGEN_XMVYVD_ADS_sca_2_OUT_KEY` ON `TMP_20180508175958_CODEGEN_XMVYVD_ADS_sca_2_OUT` (`KEY`)

-- Model deployment code

WITH linear_input AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, `ADS_sca_2_OUT`.scaler_2 AS scaler_2, `ADS_sca_2_OUT`.scaler_3 AS scaler_3, `ADS_sca_2_OUT`.scaler_4 AS scaler_4, `ADS_sca_2_OUT`.scaler_5 AS scaler_5, `ADS_sca_2_OUT`.scaler_6 AS scaler_6, `ADS_sca_2_OUT`.scaler_7 AS scaler_7, `ADS_sca_2_OUT`.scaler_8 AS scaler_8, `ADS_sca_2_OUT`.scaler_9 AS scaler_9, `ADS_sca_2_OUT`.scaler_10 AS scaler_10, `ADS_sca_2_OUT`.scaler_11 AS scaler_11 
FROM `TMP_20180508175958_CODEGEN_XMVYVD_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
linear_model_cte AS 
(SELECT linear_input.`KEY` AS `KEY`, -21.78574054934336 * linear_input.scaler_2 + -10.807086657251478 * linear_input.scaler_3 + -4.734282043027131 * linear_input.scaler_4 + 15.935251785009955 * linear_input.scaler_5 + -6.557543684072431 * linear_input.scaler_6 + -20.847132826267295 * linear_input.scaler_7 + 1.841125273039636 * linear_input.scaler_8 + -25.47836512251739 * linear_input.scaler_9 + 14.941745646926668 * linear_input.scaler_10 + 27.908723945686997 * linear_input.scaler_11 + 32.006600049546634 AS lincomb 
FROM linear_input), 
dot_prod_logistic AS 
(SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.lincomb AS dot_prod, NULL AS logistic 
FROM linear_model_cte)
 SELECT dot_prod_logistic.`KEY` AS `KEY`, -dot_prod_logistic.dot_prod AS `Score_0`, dot_prod_logistic.dot_prod AS `Score_1`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, CASE WHEN (dot_prod_logistic.dot_prod > 0.0) THEN 1 ELSE 0 END AS `Decision`, greatest(NULL, NULL) AS `DecisionProba` 
FROM dot_prod_logistic