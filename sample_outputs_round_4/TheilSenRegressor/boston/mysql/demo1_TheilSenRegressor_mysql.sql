-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, -0.14101656061111426 * `ADS`.`Feature_0` + 0.02222570075245956 * `ADS`.`Feature_1` + -0.05806990000031432 * `ADS`.`Feature_2` + 1.7579930467679048 * `ADS`.`Feature_3` + -8.428002935533824 * `ADS`.`Feature_4` + 5.80144973726521 * `ADS`.`Feature_5` + -0.0419737609903043 * `ADS`.`Feature_6` + -1.1185201113505743 * `ADS`.`Feature_7` + 0.19388621304467266 * `ADS`.`Feature_8` + -0.010095727897938802 * `ADS`.`Feature_9` + -0.6653477056385795 * `ADS`.`Feature_10` + 0.0025273284501299022 * `ADS`.`Feature_11` + -0.26350204109886893 * `ADS`.`Feature_12` + 14.8292017256 AS `Estimator` 
FROM `INPUT_DATA` AS `ADS`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte