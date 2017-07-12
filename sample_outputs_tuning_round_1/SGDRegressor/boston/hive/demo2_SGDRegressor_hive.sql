-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `linear_model_cte` AS 
(SELECT `ADS`.`KEY` AS `KEY`, 250585901463.87347 * `ADS`.`Feature_0` + 404745612451.04346 * `ADS`.`Feature_1` + -40468695827.640495 * `ADS`.`Feature_2` + -7537839966.562785 * `ADS`.`Feature_3` + -7764506324.419846 * `ADS`.`Feature_4` + -136253672213.85345 * `ADS`.`Feature_5` + 302353828763.93726 * `ADS`.`Feature_6` + -149190278455.34793 * `ADS`.`Feature_7` + 199482184986.93237 * `ADS`.`Feature_8` + 827013112213.3176 * `ADS`.`Feature_9` + -179797457441.392 * `ADS`.`Feature_10` + 41922598156.593254 * `ADS`.`Feature_11` + 286440752689.985 * `ADS`.`Feature_12` + -12675235224.1 AS `Estimator` 
FROM `boston` AS `ADS`)
 SELECT `linear_model_cte`.`KEY` AS `KEY`, `linear_model_cte`.`Estimator` AS `Estimator` 
FROM `linear_model_cte`