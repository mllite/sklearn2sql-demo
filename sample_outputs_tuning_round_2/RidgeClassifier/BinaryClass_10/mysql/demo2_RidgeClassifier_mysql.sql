-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, -0.24482111136698623 * `ADS`.`Feature_0` + -0.05480831949582958 * `ADS`.`Feature_1` + -0.09737399596765049 * `ADS`.`Feature_2` + 0.1130913181961909 * `ADS`.`Feature_3` + -0.05408153313166276 * `ADS`.`Feature_4` + -0.08073127045989169 * `ADS`.`Feature_5` + -0.10063247453666872 * `ADS`.`Feature_6` + -0.10132364116363528 * `ADS`.`Feature_7` + 0.015361834940902153 * `ADS`.`Feature_8` + 0.27093798289506943 * `ADS`.`Feature_9` + 0.0435089432936 AS lincomb 
FROM `BinaryClass_10` AS `ADS`)
 SELECT linear_model_cte.`KEY` AS `KEY`, -linear_model_cte.lincomb AS `Score_0`, linear_model_cte.lincomb AS `Score_1`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS `Decision`, NULL AS `DecisionProba` 
FROM linear_model_cte