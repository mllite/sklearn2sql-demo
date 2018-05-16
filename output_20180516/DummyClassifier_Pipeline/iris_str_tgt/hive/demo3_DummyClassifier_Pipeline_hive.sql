-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier_Pipeline
-- Dataset : iris_str_tgt
-- Database : hive


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516130542_codegen_5dum85_ads_imp_1_out part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516130542_codegen_5dum85_ads_imp_1_out` STORED AS ORC AS SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.`imputer_output_2`, `ADS_imp_1_OUT`.`imputer_output_3`, `ADS_imp_1_OUT`.`imputer_output_4`, `ADS_imp_1_OUT`.`imputer_output_5` 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 5.8474999999999975 ELSE `ADS`.`Feature_0` END AS `imputer_output_2`, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 3.0366666666666657 ELSE `ADS`.`Feature_1` END AS `imputer_output_3`, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 3.8450000000000006 ELSE `ADS`.`Feature_2` END AS `imputer_output_4`, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 1.245 ELSE `ADS`.`Feature_3` END AS `imputer_output_5` 
FROM `iris_str_tgt` AS `ADS`) AS `ADS_imp_1_OUT`

-- Code For temporary table tmp_20180516130542_codegen_5dum85_ads_imp_1_out part 2. Populate

SELECT * FROM `tmp_20180516130542_codegen_5dum85_ads_imp_1_out`

-- Code For temporary table tmp_20180516130542_codegen_ekj6al_ads_sca_2_out part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516130542_codegen_ekj6al_ads_sca_2_out` STORED AS ORC AS SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.`scaler_output_2`, `ADS_sca_2_OUT`.`scaler_output_3`, `ADS_sca_2_OUT`.`scaler_output_4`, `ADS_sca_2_OUT`.`scaler_output_5` 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.`imputer_output_2` AS DOUBLE) - 5.8474999999999975) / 0.827039146594646 AS `scaler_output_2`, (CAST(`ADS_imp_1_OUT`.`imputer_output_3` AS DOUBLE) - 3.0366666666666657) / 0.43625935201691934 AS `scaler_output_3`, (CAST(`ADS_imp_1_OUT`.`imputer_output_4` AS DOUBLE) - 3.8450000000000006) / 1.709817241695732 AS `scaler_output_4`, (CAST(`ADS_imp_1_OUT`.`imputer_output_5` AS DOUBLE) - 1.245) / 0.7498722113355939 AS `scaler_output_5` 
FROM `tmp_20180516130542_codegen_5dum85_ads_imp_1_out` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`

-- Code For temporary table tmp_20180516130542_codegen_ekj6al_ads_sca_2_out part 2. Populate

SELECT * FROM `tmp_20180516130542_codegen_ekj6al_ads_sca_2_out`

-- Model deployment code

WITH `random_number_cte` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, rand() AS `uniform` 
FROM `tmp_20180516130542_codegen_ekj6al_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`multinomial_cte` AS 
(SELECT `random_number_cte`.`KEY` AS `KEY`, CASE WHEN (`random_number_cte`.`uniform` <= 0.30833333333333335) THEN CLASS_0 ELSE CASE WHEN (`random_number_cte`.`uniform` <= 0.6416666666666666) THEN CLASS_1 ELSE CASE WHEN (`random_number_cte`.`uniform` <= 1.0) THEN CLASS_2 END END END AS `multinomial_expr` 
FROM `random_number_cte`), 
`dummy_class_reg_cte` AS 
(SELECT `multinomial_cte`.`KEY` AS `KEY`, 0.30833333333333335 AS `Proba_CLASS_0`, CASE WHEN (0.30833333333333335 IS NULL OR 0.30833333333333335 > 0.0) THEN log(0.30833333333333335) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_0`, 0.3333333333333333 AS `Proba_CLASS_1`, CASE WHEN (0.3333333333333333 IS NULL OR 0.3333333333333333 > 0.0) THEN log(0.3333333333333333) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_1`, 0.35833333333333334 AS `Proba_CLASS_2`, CASE WHEN (0.35833333333333334 IS NULL OR 0.35833333333333334 > 0.0) THEN log(0.35833333333333334) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_2`, `multinomial_cte`.`multinomial_expr` AS `Decision` 
FROM `multinomial_cte`)
 SELECT `dummy_class_reg_cte`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_CLASS_0`, CAST(NULL AS DOUBLE) AS `Score_CLASS_1`, CAST(NULL AS DOUBLE) AS `Score_CLASS_2`, `dummy_class_reg_cte`.`Proba_CLASS_0` AS `Proba_CLASS_0`, `dummy_class_reg_cte`.`Proba_CLASS_1` AS `Proba_CLASS_1`, `dummy_class_reg_cte`.`Proba_CLASS_2` AS `Proba_CLASS_2`, `dummy_class_reg_cte`.`LogProba_CLASS_0` AS `LogProba_CLASS_0`, `dummy_class_reg_cte`.`LogProba_CLASS_1` AS `LogProba_CLASS_1`, `dummy_class_reg_cte`.`LogProba_CLASS_2` AS `LogProba_CLASS_2`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba` 
FROM `dummy_class_reg_cte`