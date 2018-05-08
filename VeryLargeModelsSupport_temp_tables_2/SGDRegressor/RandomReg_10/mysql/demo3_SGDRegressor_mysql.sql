-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDRegressor
-- Dataset : RandomReg_10
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT `ADS`.`KEY` AS `KEY`, `ADS`.`Feature_0` AS `Feature_0`, `ADS`.`Feature_1` AS `Feature_1`, `ADS`.`Feature_2` AS `Feature_2`, `ADS`.`Feature_3` AS `Feature_3`, `ADS`.`Feature_4` AS `Feature_4`, `ADS`.`Feature_5` AS `Feature_5`, `ADS`.`Feature_6` AS `Feature_6`, `ADS`.`Feature_7` AS `Feature_7`, `ADS`.`Feature_8` AS `Feature_8`, `ADS`.`Feature_9` AS `Feature_9` 
FROM `RandomReg_10` AS `ADS`), 
linear_model_cte AS 
(SELECT linear_input.`KEY` AS `KEY`, 28.627661164978555 * linear_input.`Feature_0` + 53.461497286565745 * linear_input.`Feature_1` + 66.46934640103174 * linear_input.`Feature_2` + 32.69873075515514 * linear_input.`Feature_3` + 43.295031265800844 * linear_input.`Feature_4` + 57.09907059593139 * linear_input.`Feature_5` + 23.158123206983337 * linear_input.`Feature_6` + 31.616153072642767 * linear_input.`Feature_7` + 66.29004894491052 * linear_input.`Feature_8` + 29.958859784854912 * linear_input.`Feature_9` + 11.233413030334829 AS `Estimator` 
FROM linear_input)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte