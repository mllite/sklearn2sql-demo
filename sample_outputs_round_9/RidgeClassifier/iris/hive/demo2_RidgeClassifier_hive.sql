-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `linear_model_cte` AS 
(SELECT `ADS`.`KEY` AS `KEY`, 0.17097403415527995 * `ADS`.`Feature_0` + 0.24032877300676633 * `ADS`.`Feature_1` + -0.4748174474511109 * `ADS`.`Feature_2` + -0.2746672600646318 * `ADS`.`Feature_3` + 0.00441688568446 AS `Score_0`, -0.5530429673410584 * `ADS`.`Feature_0` + -0.0014279770839973817 * `ADS`.`Feature_1` + 0.45729819279190215 * `ADS`.`Feature_2` + 0.13735322714813147 * `ADS`.`Feature_3` + 1.29200994798 AS `Score_1`, 0.3820689331857794 * `ADS`.`Feature_0` + -0.23890079592276878 * `ADS`.`Feature_1` + 0.017519254659209272 * `ADS`.`Feature_2` + 0.13731403291649782 * `ADS`.`Feature_3` + -2.29642683367 AS `Score_2` 
FROM `iris` AS `ADS`), 
`orig_cte` AS 
(SELECT `linear_model_cte`.`KEY` AS `KEY`, `linear_model_cte`.`Score_0` AS `Score_0`, `linear_model_cte`.`Score_1` AS `Score_1`, `linear_model_cte`.`Score_2` AS `Score_2`, CAST(NULL AS FLOAT) AS `Proba_0`, CAST(NULL AS FLOAT) AS `Proba_1`, CAST(NULL AS FLOAT) AS `Proba_2`, CAST(NULL AS FLOAT) AS `LogProba_0`, CAST(NULL AS FLOAT) AS `LogProba_1`, CAST(NULL AS FLOAT) AS `LogProba_2`, CAST(NULL AS INT) AS `Decision`, CAST(NULL AS FLOAT) AS `DecisionProba` 
FROM `linear_model_cte`), 
`score_class_union` AS 
(SELECT `scu`.`KEY_u` AS `KEY_u`, `scu`.`class` AS `class`, `scu`.`LogProba` AS `LogProba`, `scu`.`Proba` AS `Proba`, `scu`.`Score` AS `Score` 
FROM (SELECT `orig_cte`.`KEY` AS `KEY_u`, 0 AS `class`, `orig_cte`.`LogProba_0` AS `LogProba`, `orig_cte`.`Proba_0` AS `Proba`, `orig_cte`.`Score_0` AS `Score` 
FROM `orig_cte` UNION ALL SELECT `orig_cte`.`KEY` AS `KEY_u`, 1 AS `class`, `orig_cte`.`LogProba_1` AS `LogProba`, `orig_cte`.`Proba_1` AS `Proba`, `orig_cte`.`Score_1` AS `Score` 
FROM `orig_cte` UNION ALL SELECT `orig_cte`.`KEY` AS `KEY_u`, 2 AS `class`, `orig_cte`.`LogProba_2` AS `LogProba`, `orig_cte`.`Proba_2` AS `Proba`, `orig_cte`.`Score_2` AS `Score` 
FROM `orig_cte`) AS `scu`), 
`score_max` AS 
(SELECT `orig_cte`.`KEY` AS `KEY`, `orig_cte`.`Score_0` AS `Score_0`, `orig_cte`.`Score_1` AS `Score_1`, `orig_cte`.`Score_2` AS `Score_2`, `orig_cte`.`Proba_0` AS `Proba_0`, `orig_cte`.`Proba_1` AS `Proba_1`, `orig_cte`.`Proba_2` AS `Proba_2`, `orig_cte`.`LogProba_0` AS `LogProba_0`, `orig_cte`.`LogProba_1` AS `LogProba_1`, `orig_cte`.`LogProba_2` AS `LogProba_2`, `orig_cte`.`Decision` AS `Decision`, `orig_cte`.`DecisionProba` AS `DecisionProba`, `max_select`.`KEY_m` AS `KEY_m`, `max_select`.`max_Score` AS `max_Score` 
FROM `orig_cte` LEFT OUTER JOIN (SELECT `score_class_union`.`KEY_u` AS `KEY_m`, max(`score_class_union`.`Score`) AS `max_Score` 
FROM `score_class_union` GROUP BY `score_class_union`.`KEY_u`) AS `max_select` ON `orig_cte`.`KEY` = `max_select`.`KEY_m`), 
`union_with_max` AS 
(SELECT `score_class_union`.`KEY_u` AS `KEY_u`, `score_class_union`.`class` AS `class`, `score_class_union`.`LogProba` AS `LogProba`, `score_class_union`.`Proba` AS `Proba`, `score_class_union`.`Score` AS `Score`, `score_max`.`KEY` AS `KEY`, `score_max`.`Score_0` AS `Score_0`, `score_max`.`Score_1` AS `Score_1`, `score_max`.`Score_2` AS `Score_2`, `score_max`.`Proba_0` AS `Proba_0`, `score_max`.`Proba_1` AS `Proba_1`, `score_max`.`Proba_2` AS `Proba_2`, `score_max`.`LogProba_0` AS `LogProba_0`, `score_max`.`LogProba_1` AS `LogProba_1`, `score_max`.`LogProba_2` AS `LogProba_2`, `score_max`.`Decision` AS `Decision`, `score_max`.`DecisionProba` AS `DecisionProba`, `score_max`.`KEY_m` AS `KEY_m`, `score_max`.`max_Score` AS `max_Score` 
FROM `score_class_union` LEFT OUTER JOIN `score_max` ON `score_class_union`.`KEY_u` = `score_max`.`KEY`), 
`arg_max_cte` AS 
(SELECT `score_max`.`KEY` AS `KEY`, `score_max`.`Score_0` AS `Score_0`, `score_max`.`Score_1` AS `Score_1`, `score_max`.`Score_2` AS `Score_2`, `score_max`.`Proba_0` AS `Proba_0`, `score_max`.`Proba_1` AS `Proba_1`, `score_max`.`Proba_2` AS `Proba_2`, `score_max`.`LogProba_0` AS `LogProba_0`, `score_max`.`LogProba_1` AS `LogProba_1`, `score_max`.`LogProba_2` AS `LogProba_2`, `score_max`.`Decision` AS `Decision`, `score_max`.`DecisionProba` AS `DecisionProba`, `score_max`.`KEY_m` AS `KEY_m`, `score_max`.`max_Score` AS `max_Score`, `arg_max_t_Score`.`KEY_Score` AS `KEY_Score`, `arg_max_t_Score`.`arg_max_Score` AS `arg_max_Score` 
FROM `score_max` LEFT OUTER JOIN (SELECT `union_with_max`.`KEY` AS `KEY_Score`, min(`union_with_max`.`class`) AS `arg_max_Score` 
FROM `union_with_max` 
WHERE `union_with_max`.`max_Score` <= `union_with_max`.`Score` GROUP BY `union_with_max`.`KEY`) AS `arg_max_t_Score` ON `score_max`.`KEY` = `arg_max_t_Score`.`KEY_Score`)
 SELECT `arg_max_cte`.`KEY` AS `KEY`, `arg_max_cte`.`Score_0` AS `Score_0`, `arg_max_cte`.`Score_1` AS `Score_1`, `arg_max_cte`.`Score_2` AS `Score_2`, `arg_max_cte`.`Proba_0` AS `Proba_0`, `arg_max_cte`.`Proba_1` AS `Proba_1`, `arg_max_cte`.`Proba_2` AS `Proba_2`, CASE WHEN (`arg_max_cte`.`Proba_0` IS NULL OR `arg_max_cte`.`Proba_0` > 0.0) THEN log(`arg_max_cte`.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`arg_max_cte`.`Proba_1` IS NULL OR `arg_max_cte`.`Proba_1` > 0.0) THEN log(`arg_max_cte`.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`arg_max_cte`.`Proba_2` IS NULL OR `arg_max_cte`.`Proba_2` > 0.0) THEN log(`arg_max_cte`.`Proba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, `arg_max_cte`.`arg_max_Score` AS `Decision`, CASE WHEN (`arg_max_cte`.`arg_max_Score` = 0) THEN `arg_max_cte`.`Proba_0` WHEN (`arg_max_cte`.`arg_max_Score` = 1) THEN `arg_max_cte`.`Proba_1` WHEN (`arg_max_cte`.`arg_max_Score` = 2) THEN `arg_max_cte`.`Proba_2` END AS `DecisionProba` 
FROM `arg_max_cte`