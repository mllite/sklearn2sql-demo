-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, 425289290016.5988 * `ADS`.`Feature_0` + 233675151889.0061 * `ADS`.`Feature_1` + 2002956926.000725 * `ADS`.`Feature_2` + 370553580185.54034 * `ADS`.`Feature_3` + 35799265535.3 AS `Estimator` 
FROM freidman3 AS `ADS`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte