-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.0387349368045 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN -0.144343772798 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN -0.0154364163142 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN -0.0889413652031 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.220501602516 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.0187876263658 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.0156706892673 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN -0.0983313999227 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN -0.206799244043 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN -0.0536683685827 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `BinaryClass_10` AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 0.0387349368045) / 0.953423759349 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - -0.144343772798) / 0.908427014572 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - -0.0154364163142) / 1.21118530448 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - -0.0889413652031) / 0.949526345504 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - -0.220501602516) / 1.03027130081 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - 0.0187876263658) / 0.852995894199 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - -0.0156706892673) / 1.08198662085 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - -0.0983313999227) / 1.0636220525 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - -0.206799244043) / 0.950840237856 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - -0.0536683685827) / 1.18472636735 AS scaler_11 
FROM `ADS_imp_1_OUT`), 
linear_model_cte AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, -1.0751794429159311 * `ADS_sca_2_OUT`.scaler_2 + 0.4099480860450562 * `ADS_sca_2_OUT`.scaler_3 + 0.7200612634010953 * `ADS_sca_2_OUT`.scaler_4 + 0.1858472650388483 * `ADS_sca_2_OUT`.scaler_5 + 0.07926105131474503 * `ADS_sca_2_OUT`.scaler_6 + -0.3690421716093861 * `ADS_sca_2_OUT`.scaler_7 + -0.109175097496086 * `ADS_sca_2_OUT`.scaler_8 + 0.13803041709043515 * `ADS_sca_2_OUT`.scaler_9 + -0.023780040162189743 * `ADS_sca_2_OUT`.scaler_10 + 1.3135959128137757 * `ADS_sca_2_OUT`.scaler_11 + -0.0627987773329 AS linear_combination 
FROM `ADS_sca_2_OUT`)
 SELECT linear_model_cte.`KEY` AS `KEY`, -linear_model_cte.linear_combination AS `Score_0`, linear_model_cte.linear_combination AS `Score_1`, 1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination))) AS `Proba_0`, 1.0 - 1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination))) AS `Proba_1`, CASE WHEN (1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination))) IS NULL OR 1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination))) > 0.0) THEN ln(1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination)))) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (1.0 - 1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination)))) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (linear_model_cte.linear_combination >= 0.0) THEN 1 ELSE 0 END AS `Decision` 
FROM linear_model_cte