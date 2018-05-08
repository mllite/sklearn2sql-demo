-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDClassifier
-- Dataset : BreastCancer
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT `ADS`.`KEY` AS `KEY`, `ADS`.`Feature_0` AS `Feature_0`, `ADS`.`Feature_1` AS `Feature_1`, `ADS`.`Feature_2` AS `Feature_2`, `ADS`.`Feature_3` AS `Feature_3`, `ADS`.`Feature_4` AS `Feature_4`, `ADS`.`Feature_5` AS `Feature_5`, `ADS`.`Feature_6` AS `Feature_6`, `ADS`.`Feature_7` AS `Feature_7`, `ADS`.`Feature_8` AS `Feature_8`, `ADS`.`Feature_9` AS `Feature_9`, `ADS`.`Feature_10` AS `Feature_10`, `ADS`.`Feature_11` AS `Feature_11`, `ADS`.`Feature_12` AS `Feature_12`, `ADS`.`Feature_13` AS `Feature_13`, `ADS`.`Feature_14` AS `Feature_14`, `ADS`.`Feature_15` AS `Feature_15`, `ADS`.`Feature_16` AS `Feature_16`, `ADS`.`Feature_17` AS `Feature_17`, `ADS`.`Feature_18` AS `Feature_18`, `ADS`.`Feature_19` AS `Feature_19`, `ADS`.`Feature_20` AS `Feature_20`, `ADS`.`Feature_21` AS `Feature_21`, `ADS`.`Feature_22` AS `Feature_22`, `ADS`.`Feature_23` AS `Feature_23`, `ADS`.`Feature_24` AS `Feature_24`, `ADS`.`Feature_25` AS `Feature_25`, `ADS`.`Feature_26` AS `Feature_26`, `ADS`.`Feature_27` AS `Feature_27`, `ADS`.`Feature_28` AS `Feature_28`, `ADS`.`Feature_29` AS `Feature_29` 
FROM `BreastCancer` AS `ADS`), 
linear_model_cte AS 
(SELECT linear_input.`KEY` AS `KEY`, 3987.6847892486117 * linear_input.`Feature_0` + 6593.555284056178 * linear_input.`Feature_1` + 23808.857666462936 * linear_input.`Feature_2` + 14943.494196701227 * linear_input.`Feature_3` + 40.15354306658507 * linear_input.`Feature_4` + 0.8249236408063375 * linear_input.`Feature_5` + -45.330113011606564 * linear_input.`Feature_6` + -20.662791692119697 * linear_input.`Feature_7` + 71.67501527183852 * linear_input.`Feature_8` + 30.126237018937022 * linear_input.`Feature_9` + -0.6432498472816263 * linear_input.`Feature_10` + 424.02107513744477 * linear_input.`Feature_11` + -156.50335980452041 * linear_input.`Feature_12` + -11477.846670739124 * linear_input.`Feature_13` + 3.0792638973732345 * linear_input.`Feature_14` + 2.600983506414158 * linear_input.`Feature_15` + 1.1878588882101269 * linear_input.`Feature_16` + 1.2874557116676775 * linear_input.`Feature_17` + 7.156768478924836 * linear_input.`Feature_18` + 1.1705733048258988 * linear_input.`Feature_19` + 4084.893097128887 * linear_input.`Feature_20` + 8614.202810018298 * linear_input.`Feature_21` + 23888.54612095291 * linear_input.`Feature_22` + -16381.490531459913 * linear_input.`Feature_23` + 53.3777031154549 * linear_input.`Feature_24` + -9.65791081246186 * linear_input.`Feature_25` + -66.89678985949895 * linear_input.`Feature_26` + -14.927089187538158 * linear_input.`Feature_27` + 102.92089187538143 * linear_input.`Feature_28` + 32.59514355528398 * linear_input.`Feature_29` + 994.4132503163574 AS lincomb 
FROM linear_input), 
dot_prod_logistic AS 
(SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.lincomb AS dot_prod, NULL AS logistic 
FROM linear_model_cte)
 SELECT dot_prod_logistic.`KEY` AS `KEY`, -dot_prod_logistic.dot_prod AS `Score_0`, dot_prod_logistic.dot_prod AS `Score_1`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, CASE WHEN (dot_prod_logistic.dot_prod > 0.0) THEN 1 ELSE 0 END AS `Decision`, greatest(NULL, NULL) AS `DecisionProba` 
FROM dot_prod_logistic