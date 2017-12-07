-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.562984648481 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.456064424234 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.471138174815 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.533968020095 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.478093626237 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.568284922417 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.479143747143 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.459415247722 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.490110699681 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.537880693371 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM freidman1 AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 0.562984648481) / 0.25837146834 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - 0.456064424234) / 0.287872173071 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 0.471138174815) / 0.310921679155 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.533968020095) / 0.28261998674 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - 0.478093626237) / 0.286140491318 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - 0.568284922417) / 0.297674081065 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - 0.479143747143) / 0.273531497143 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.459415247722) / 0.28721149347 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 0.490110699681) / 0.279048671732 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.537880693371) / 0.295819229654 AS scaler_11 
FROM `ADS_imp_1_OUT`), 
linear_model_cte AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, 1.330197201127085 * `ADS_sca_2_OUT`.scaler_2 + 2.9562224500975205 * `ADS_sca_2_OUT`.scaler_3 + -0.06084437405583016 * `ADS_sca_2_OUT`.scaler_4 + 2.64012520749016 * `ADS_sca_2_OUT`.scaler_5 + 1.56522313449759 * `ADS_sca_2_OUT`.scaler_6 + -0.06590957613661459 * `ADS_sca_2_OUT`.scaler_7 + -0.12567685254658906 * `ADS_sca_2_OUT`.scaler_8 + 0.20625639016150557 * `ADS_sca_2_OUT`.scaler_9 + 0.014178452170998251 * `ADS_sca_2_OUT`.scaler_10 + -0.3177356466107832 * `ADS_sca_2_OUT`.scaler_11 + 15.3537633819 AS `Estimator` 
FROM `ADS_sca_2_OUT`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte