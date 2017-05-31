-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `SV_data_0` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.00226455961707 AS dual_coeff, 5.1 AS sv_0, 3.8 AS sv_1, 1.9 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.00273521240728 AS dual_coeff, 4.5 AS sv_0, 2.3 AS sv_1, 1.3 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 2 AS sv_idx, 0.000138948014128 AS dual_coeff, 5.4 AS sv_0, 3.4 AS sv_1, 1.7 AS sv_2, 0.2 AS sv_3) AS `Values`), 
kernel_cte_0 AS 
(SELECT t_1.`KEY` AS `KEY_0`, t_1.dot_product AS `Score_0` 
FROM (SELECT full_join_data_sv_1.`KEY` AS `KEY`, sum(full_join_data_sv_1.dot_prod1) + 1.23345083318 AS dot_product 
FROM (SELECT `ADS`.`KEY` AS `KEY`, `SV_data_0`.dual_coeff * power(0.25 * (`ADS`.`Feature_0` * `SV_data_0`.sv_0 + `ADS`.`Feature_1` * `SV_data_0`.sv_1 + `ADS`.`Feature_2` * `SV_data_0`.sv_2 + `ADS`.`Feature_3` * `SV_data_0`.sv_3) + 0.0, 3) AS dot_prod1 
FROM iris AS `ADS`, `SV_data_0`) AS full_join_data_sv_1 GROUP BY full_join_data_sv_1.`KEY`) AS t_1), 
`SV_data_1` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, -0.0 AS dual_coeff, 6.3 AS sv_0, 2.5 AS sv_1, 4.9 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 1 AS sv_idx, -0.00513872003847 AS dual_coeff, 5.0 AS sv_0, 2.0 AS sv_1, 3.5 AS sv_2, 1.0 AS sv_3) AS `Values`), 
kernel_cte_1 AS 
(SELECT t_2.`KEY` AS `KEY_1`, t_2.dot_product AS `Score_1` 
FROM (SELECT full_join_data_sv_2.`KEY` AS `KEY`, sum(full_join_data_sv_2.dot_prod1) + 1.38091632856 AS dot_product 
FROM (SELECT `ADS`.`KEY` AS `KEY`, `SV_data_1`.dual_coeff * power(0.25 * (`ADS`.`Feature_0` * `SV_data_1`.sv_0 + `ADS`.`Feature_1` * `SV_data_1`.sv_1 + `ADS`.`Feature_2` * `SV_data_1`.sv_2 + `ADS`.`Feature_3` * `SV_data_1`.sv_3) + 0.0, 3) AS dot_prod1 
FROM iris AS `ADS`, `SV_data_1`) AS full_join_data_sv_2 GROUP BY full_join_data_sv_2.`KEY`) AS t_2), 
`SV_data_2` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, -0.0 AS dual_coeff, 7.2 AS sv_0, 3.0 AS sv_1, 5.8 AS sv_2, 1.6 AS sv_3 UNION ALL SELECT 1 AS sv_idx, -0.000771145367011 AS dual_coeff, 6.0 AS sv_0, 2.2 AS sv_1, 5.0 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -0.0 AS dual_coeff, 6.3 AS sv_0, 2.5 AS sv_1, 5.0 AS sv_2, 1.9 AS sv_3) AS `Values`), 
kernel_cte_2 AS 
(SELECT t_3.`KEY` AS `KEY_2`, t_3.dot_product AS `Score_2` 
FROM (SELECT full_join_data_sv_3.`KEY` AS `KEY`, sum(full_join_data_sv_3.dot_prod1) + 4.53219328975 AS dot_product 
FROM (SELECT `ADS`.`KEY` AS `KEY`, `SV_data_2`.dual_coeff * power(0.25 * (`ADS`.`Feature_0` * `SV_data_2`.sv_0 + `ADS`.`Feature_1` * `SV_data_2`.sv_1 + `ADS`.`Feature_2` * `SV_data_2`.sv_2 + `ADS`.`Feature_3` * `SV_data_2`.sv_3) + 0.0, 3) AS dot_prod1 
FROM iris AS `ADS`, `SV_data_2`) AS full_join_data_sv_3 GROUP BY full_join_data_sv_3.`KEY`) AS t_3), 
`OVR_Join_CTE` AS 
(SELECT kernel_cte_0.`KEY_0` AS `KEY_0`, kernel_cte_0.`Score_0` AS `Score_0`, kernel_cte_1.`KEY_1` AS `KEY_1`, kernel_cte_1.`Score_1` AS `Score_1`, kernel_cte_2.`KEY_2` AS `KEY_2`, kernel_cte_2.`Score_2` AS `Score_2` 
FROM kernel_cte_0 LEFT OUTER JOIN kernel_cte_1 ON kernel_cte_0.`KEY_0` = kernel_cte_1.`KEY_1` LEFT OUTER JOIN kernel_cte_2 ON kernel_cte_2.`KEY_2` = kernel_cte_1.`KEY_1`), 
orig_cte AS 
(SELECT `OVR_Join_CTE`.`KEY_0` AS `KEY`, `OVR_Join_CTE`.`Score_0` AS `Score_0`, `OVR_Join_CTE`.`Score_1` AS `Score_1`, `OVR_Join_CTE`.`Score_2` AS `Score_2`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `Proba_2`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, CAST(NULL AS SIGNED INTEGER) AS `Decision` 
FROM `OVR_Join_CTE`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`Decision` AS `Decision`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Score` AS `max_Score` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Score`) AS `max_Score` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`Decision` AS `Decision`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Score` AS `max_Score` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`Decision` AS `Decision`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Score` AS `max_Score`, `arg_max_t_Score`.`KEY_Score` AS `KEY_Score`, `arg_max_t_Score`.`arg_max_Score` AS `arg_max_Score` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Score`, min(union_with_max.class) AS `arg_max_Score` 
FROM union_with_max 
WHERE union_with_max.`max_Score` <= union_with_max.`Score` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Score` ON score_max.`KEY` = `arg_max_t_Score`.`KEY_Score`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Score_2` AS `Score_2`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, arg_max_cte.`Proba_2` AS `Proba_2`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`Proba_2` IS NULL OR arg_max_cte.`Proba_2` > 0.0) THEN ln(arg_max_cte.`Proba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CAST(arg_max_cte.`arg_max_Score` AS SIGNED INTEGER) AS `Decision` 
FROM arg_max_cte