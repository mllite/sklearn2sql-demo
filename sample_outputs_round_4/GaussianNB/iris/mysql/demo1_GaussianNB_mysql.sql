-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `RawScores` AS 
(SELECT `ADS`.`KEY` AS `KEY`, NULL AS `LogProba_0`, NULL AS `Proba_0`, -1.09861228867 + (-0.5 * -0.267793442091 - (0.5 * (`ADS`.`Feature_0` - 5.006) * (`ADS`.`Feature_0` - 5.006)) / 0.121764003092) + (-0.5 * -0.112109357731 - (0.5 * (`ADS`.`Feature_1` - 3.418) * (`ADS`.`Feature_1` - 3.418)) / 0.142276003092) + (-0.5 * -1.68535226038 - (0.5 * (`ADS`.`Feature_2` - 1.464) * (`ADS`.`Feature_2` - 1.464)) / 0.0295040030924) + (-0.5 * -2.64826613862 - (0.5 * (`ADS`.`Feature_3` - 0.244) * (`ADS`.`Feature_3` - 0.244)) / 0.0112640030924) AS `Score_0`, NULL AS `LogProba_1`, NULL AS `Proba_1`, -1.09861228867 + (-0.5 * 0.495040594659 - (0.5 * (`ADS`.`Feature_0` - 5.936) * (`ADS`.`Feature_0` - 5.936)) / 0.261104003092) + (-0.5 * -0.500335172182 - (0.5 * (`ADS`.`Feature_1` - 2.77) * (`ADS`.`Feature_1` - 2.77)) / 0.0965000030924) + (-0.5 * 0.30725034869 - (0.5 * (`ADS`.`Feature_2` - 4.26) * (`ADS`.`Feature_2` - 4.26)) / 0.216400003092) + (-0.5 * -1.42380180009 - (0.5 * (`ADS`.`Feature_3` - 1.326) * (`ADS`.`Feature_3` - 1.326)) / 0.0383240030924) AS `Score_1`, NULL AS `LogProba_2`, NULL AS `Proba_2`, -1.09861228867 + (-0.5 * 0.912182262264 - (0.5 * (`ADS`.`Feature_0` - 6.588) * (`ADS`.`Feature_0` - 6.588)) / 0.396256003092) + (-0.5 * -0.445650744711 - (0.5 * (`ADS`.`Feature_1` - 2.974) * (`ADS`.`Feature_1` - 2.974)) / 0.101924003092) + (-0.5 * 0.628878330195 - (0.5 * (`ADS`.`Feature_2` - 5.552) * (`ADS`.`Feature_2` - 5.552)) / 0.298496003092) + (-0.5 * -0.766840632317 - (0.5 * (`ADS`.`Feature_3` - 2.026) * (`ADS`.`Feature_3` - 2.026)) / 0.0739240030924) AS `Score_2` 
FROM `INPUT_DATA` AS `ADS`), 
orig_cte AS 
(SELECT `RawScores`.`KEY` AS `KEY`, `RawScores`.`Score_0` AS `Score_0`, `RawScores`.`Score_1` AS `Score_1`, `RawScores`.`Score_2` AS `Score_2`, `RawScores`.`Proba_0` AS `Proba_0`, `RawScores`.`Proba_1` AS `Proba_1`, `RawScores`.`Proba_2` AS `Proba_2`, `RawScores`.`LogProba_0` AS `LogProba_0`, `RawScores`.`LogProba_1` AS `LogProba_1`, `RawScores`.`LogProba_2` AS `LogProba_2`, NULL AS `Decision` 
FROM `RawScores`), 
score_class_union AS 
(SELECT scu.`KEY` AS `KEY`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`Decision` AS `Decision`, (SELECT max(score_class_union.`LogProba`) AS max_1 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_LogProba`, (SELECT max(score_class_union.`Proba`) AS max_2 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_Proba`, (SELECT max(score_class_union.`Score`) AS max_3 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_Score` 
FROM orig_cte), 
score_soft_max_comp AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`Decision` AS `Decision`, score_max.`max_LogProba` AS `max_LogProba`, score_max.`max_Proba` AS `max_Proba`, score_max.`max_Score` AS `max_Score`, exp(score_max.`Score_0` - score_max.`max_Score`) AS `exp_delta_Score_0`, exp(score_max.`Score_1` - score_max.`max_Score`) AS `exp_delta_Score_1`, exp(score_max.`Score_2` - score_max.`max_Score`) AS `exp_delta_Score_2` 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.`KEY` AS `KEY`, soft_scu.class AS class, soft_scu.`LogProba` AS `LogProba`, soft_scu.`Proba` AS `Proba`, soft_scu.`Score` AS `Score`, soft_scu.`exp_delta_Score` AS `exp_delta_Score` 
FROM (SELECT score_soft_max_comp.`KEY` AS `KEY`, 0 AS class, score_soft_max_comp.`LogProba_0` AS `LogProba`, score_soft_max_comp.`Proba_0` AS `Proba`, score_soft_max_comp.`Score_0` AS `Score`, score_soft_max_comp.`exp_delta_Score_0` AS `exp_delta_Score` 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp.`KEY` AS `KEY`, 1 AS class, score_soft_max_comp.`LogProba_1` AS `LogProba`, score_soft_max_comp.`Proba_1` AS `Proba`, score_soft_max_comp.`Score_1` AS `Score`, score_soft_max_comp.`exp_delta_Score_1` AS `exp_delta_Score` 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp.`KEY` AS `KEY`, 2 AS class, score_soft_max_comp.`LogProba_2` AS `LogProba`, score_soft_max_comp.`Proba_2` AS `Proba`, score_soft_max_comp.`Score_2` AS `Score`, score_soft_max_comp.`exp_delta_Score_2` AS `exp_delta_Score` 
FROM score_soft_max_comp) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_comp.`KEY` AS `KEY`, score_soft_max_comp.`Score_0` AS `Score_0`, score_soft_max_comp.`Score_1` AS `Score_1`, score_soft_max_comp.`Score_2` AS `Score_2`, score_soft_max_comp.`Proba_0` AS `Proba_0`, score_soft_max_comp.`Proba_1` AS `Proba_1`, score_soft_max_comp.`Proba_2` AS `Proba_2`, score_soft_max_comp.`LogProba_0` AS `LogProba_0`, score_soft_max_comp.`LogProba_1` AS `LogProba_1`, score_soft_max_comp.`LogProba_2` AS `LogProba_2`, score_soft_max_comp.`Decision` AS `Decision`, score_soft_max_comp.`max_LogProba` AS `max_LogProba`, score_soft_max_comp.`max_Proba` AS `max_Proba`, score_soft_max_comp.`max_Score` AS `max_Score`, score_soft_max_comp.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max_comp.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max_comp.`exp_delta_Score_2` AS `exp_delta_Score_2`, (SELECT sum(score_class_union_soft.`exp_delta_Score`) AS sum_1 
FROM score_class_union_soft 
WHERE score_soft_max_comp.`KEY` = score_class_union_soft.`KEY`) AS `sum_ExpDeltaScore` 
FROM score_soft_max_comp), 
arg_max_cte AS 
(SELECT score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Score_2` AS `Score_2`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`Proba_2` AS `Proba_2`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`LogProba_2` AS `LogProba_2`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`max_LogProba` AS `max_LogProba`, score_soft_max.`max_Proba` AS `max_Proba`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore`, (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_soft_max.`max_LogProba` = score_class_union.`LogProba` AND score_soft_max.`KEY` = score_class_union.`KEY`) AS `arg_max_LogProba`, (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_soft_max.`max_Proba` = score_class_union.`Proba` AND score_soft_max.`KEY` = score_class_union.`KEY`) AS `arg_max_Proba`, (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_soft_max.`max_Score` = score_class_union.`Score` AND score_soft_max.`KEY` = score_class_union.`KEY`) AS `arg_max_Score`, score_soft_max.`exp_delta_Score_0` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_0`, score_soft_max.`exp_delta_Score_1` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_1`, score_soft_max.`exp_delta_Score_2` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_2` 
FROM score_soft_max)
 SELECT arg_max_cte.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, arg_max_cte.`SoftProba_0` AS `Proba_0`, arg_max_cte.`SoftProba_1` AS `Proba_1`, arg_max_cte.`SoftProba_2` AS `Proba_2`, CASE WHEN (arg_max_cte.`SoftProba_0` IS NULL OR arg_max_cte.`SoftProba_0` > 0.0) THEN ln(arg_max_cte.`SoftProba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`SoftProba_1` IS NULL OR arg_max_cte.`SoftProba_1` > 0.0) THEN ln(arg_max_cte.`SoftProba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`SoftProba_2` IS NULL OR arg_max_cte.`SoftProba_2` > 0.0) THEN ln(arg_max_cte.`SoftProba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, arg_max_cte.`arg_max_Score` AS `Decision` 
FROM arg_max_cte