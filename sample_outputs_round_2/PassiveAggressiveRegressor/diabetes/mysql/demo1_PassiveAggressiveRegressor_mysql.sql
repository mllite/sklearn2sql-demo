-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM (SELECT `ADS`.`KEY` AS `KEY`, 12.265598220061097 * `ADS`.`Feature_0` + -0.1376524232332207 * `ADS`.`Feature_1` + 43.53750063677303 * `ADS`.`Feature_2` + 34.251569031142004 * `ADS`.`Feature_3` + 13.27407458476717 * `ADS`.`Feature_4` + 10.6493779740677 * `ADS`.`Feature_5` + -33.54799072071453 * `ADS`.`Feature_6` + 32.7775948717879 * `ADS`.`Feature_7` + 45.80836476163436 * `ADS`.`Feature_8` + 27.599163708666893 * `ADS`.`Feature_9` + 149.275581457 AS `Estimator` 
FROM `INPUT_DATA` AS `ADS`) AS linear_model_cte