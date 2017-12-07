-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.166809472981 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN -0.163512719944 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.19149292241 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.0583848447531 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.0993320516212 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.212931216605 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.04786556869 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.0507869895908 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN -0.191319922591 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.199404056775 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `RandomReg_10` AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 0.166809472981) / 1.0289835997 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - -0.163512719944) / 0.991581253505 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 0.19149292241) / 0.932114762915 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.0583848447531) / 1.08557293295 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - -0.0993320516212) / 1.07439044129 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - 0.212931216605) / 0.935807438189 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - 0.04786556869) / 1.13635740906 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.0507869895908) / 0.97254574601 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - -0.191319922591) / 1.14159746779 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.199404056775) / 0.882245682091 AS scaler_11 
FROM `ADS_imp_1_OUT`), 
dummy_class_reg_cte AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, 26.4058527307 AS `Constant` 
FROM `ADS_sca_2_OUT`)
 SELECT dummy_class_reg_cte.`KEY` AS `KEY`, dummy_class_reg_cte.`Constant` AS `Estimator` 
FROM dummy_class_reg_cte