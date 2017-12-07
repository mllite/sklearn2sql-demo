-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN -0.00390337446303 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.61522322157 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.0427962369143 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.77098195589 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.433007336249 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN -0.0424956965794 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.298090801198 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.146722415073 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.0174694238466 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.115073314156 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `FourClass_10` AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - -0.00390337446303) / 0.979506064018 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - 0.61522322157) / 1.39008072362 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 0.0427962369143) / 1.49626851359 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.77098195589) / 2.33335610601 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - -0.433007336249) / 1.40297577726 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - -0.0424956965794) / 0.955809107687 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - -0.298090801198) / 1.01701318072 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.146722415073) / 1.60079853993 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 0.0174694238466) / 1.14872963617 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.115073314156) / 0.969091185734 AS scaler_11 
FROM `ADS_imp_1_OUT`), 
linear_model_cte AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, 0.29528535484002044 * `ADS_sca_2_OUT`.scaler_2 + -0.5526759872623231 * `ADS_sca_2_OUT`.scaler_3 + -0.14989593625504063 * `ADS_sca_2_OUT`.scaler_4 + -0.30902498812095225 * `ADS_sca_2_OUT`.scaler_5 + 0.9661792392905004 * `ADS_sca_2_OUT`.scaler_6 + -0.31638203715111407 * `ADS_sca_2_OUT`.scaler_7 + 0.25095512612805715 * `ADS_sca_2_OUT`.scaler_8 + 0.5763833387115375 * `ADS_sca_2_OUT`.scaler_9 + 0.5673987481273651 * `ADS_sca_2_OUT`.scaler_10 + 0.1044368493440396 * `ADS_sca_2_OUT`.scaler_11 + -1.69000197554 AS `Score_0`, -0.047201699059280657 * `ADS_sca_2_OUT`.scaler_2 + 0.23868794550458178 * `ADS_sca_2_OUT`.scaler_3 + 0.47148153130485165 * `ADS_sca_2_OUT`.scaler_4 + 0.4637849169081291 * `ADS_sca_2_OUT`.scaler_5 + 0.4839694943314667 * `ADS_sca_2_OUT`.scaler_6 + -0.057581453557212024 * `ADS_sca_2_OUT`.scaler_7 + -0.42257590363691394 * `ADS_sca_2_OUT`.scaler_8 + 0.36059852873728815 * `ADS_sca_2_OUT`.scaler_9 + -0.30088387779501985 * `ADS_sca_2_OUT`.scaler_10 + 0.03964462319359139 * `ADS_sca_2_OUT`.scaler_11 + -1.48918288657 AS `Score_1`, -0.20991890390381052 * `ADS_sca_2_OUT`.scaler_2 + -0.6521332586221625 * `ADS_sca_2_OUT`.scaler_3 + -0.9667701205297338 * `ADS_sca_2_OUT`.scaler_4 + -0.503349164401245 * `ADS_sca_2_OUT`.scaler_5 + -0.9766760570776902 * `ADS_sca_2_OUT`.scaler_6 + 0.00933295766915345 * `ADS_sca_2_OUT`.scaler_7 + 0.26234313567699874 * `ADS_sca_2_OUT`.scaler_8 + 0.6326858137220698 * `ADS_sca_2_OUT`.scaler_9 + 0.4799923376955715 * `ADS_sca_2_OUT`.scaler_10 + -0.04031934817400002 * `ADS_sca_2_OUT`.scaler_11 + -1.56914587241 AS `Score_2`, -0.26704768543837215 * `ADS_sca_2_OUT`.scaler_2 + 1.4028871180826459 * `ADS_sca_2_OUT`.scaler_3 + 0.13161230508902794 * `ADS_sca_2_OUT`.scaler_4 + 0.34032768548506853 * `ADS_sca_2_OUT`.scaler_5 + -0.6207736114959244 * `ADS_sca_2_OUT`.scaler_6 + 0.36830754620146294 * `ADS_sca_2_OUT`.scaler_7 + -0.026038414457844265 * `ADS_sca_2_OUT`.scaler_8 + -1.4379752169385571 * `ADS_sca_2_OUT`.scaler_9 + -0.5121751476678849 * `ADS_sca_2_OUT`.scaler_10 + -0.09078059258946687 * `ADS_sca_2_OUT`.scaler_11 + -1.59962294216 AS `Score_3` 
FROM `ADS_sca_2_OUT`), 
orig_cte AS 
(SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Score_0` AS `Score_0`, linear_model_cte.`Score_1` AS `Score_1`, linear_model_cte.`Score_2` AS `Score_2`, linear_model_cte.`Score_3` AS `Score_3`, (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_0` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_0` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_0` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_0` END END))) / (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_0` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_0` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_0` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_0` END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_1` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_1` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_1` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_1` END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_2` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_2` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_2` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_2` END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_3` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_3` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_3` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_3` END END))) AS `Proba_0`, (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_1` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_1` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_1` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_1` END END))) / (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_0` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_0` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_0` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_0` END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_1` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_1` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_1` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_1` END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_2` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_2` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_2` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_2` END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_3` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_3` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_3` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_3` END END))) AS `Proba_1`, (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_2` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_2` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_2` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_2` END END))) / (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_0` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_0` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_0` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_0` END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_1` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_1` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_1` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_1` END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_2` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_2` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_2` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_2` END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_3` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_3` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_3` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_3` END END))) AS `Proba_2`, (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_3` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_3` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_3` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_3` END END))) / (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_0` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_0` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_0` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_0` END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_1` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_1` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_1` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_1` END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_2` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_2` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_2` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_2` END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.`Score_3` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_3` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.`Score_3` <= -100.0) THEN -100.0 ELSE -linear_model_cte.`Score_3` END END))) AS `Proba_3`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, NULL AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 3 AS class, orig_cte.`LogProba_3` AS `LogProba`, orig_cte.`Proba_3` AS `Proba`, orig_cte.`Score_3` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Score_3` AS `Score_3`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`Proba_3` AS `Proba_3`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`LogProba_3` AS `LogProba_3`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Proba` AS `max_Proba` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Proba`) AS `max_Proba` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Proba`, min(union_with_max.class) AS `arg_max_Proba` 
FROM union_with_max 
WHERE union_with_max.`max_Proba` <= union_with_max.`Proba` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Proba` ON score_max.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Score_2` AS `Score_2`, arg_max_cte.`Score_3` AS `Score_3`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, arg_max_cte.`Proba_2` AS `Proba_2`, arg_max_cte.`Proba_3` AS `Proba_3`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`Proba_2` IS NULL OR arg_max_cte.`Proba_2` > 0.0) THEN ln(arg_max_cte.`Proba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (arg_max_cte.`Proba_3` IS NULL OR arg_max_cte.`Proba_3` > 0.0) THEN ln(arg_max_cte.`Proba_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, arg_max_cte.`arg_max_Proba` AS `Decision`, arg_max_cte.`max_Proba` AS `DecisionProba` 
FROM arg_max_cte