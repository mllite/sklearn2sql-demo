-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN -0.00390337446303 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.61522322157 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.0427962369143 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.77098195589 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.433007336249 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN -0.0424956965794 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.298090801198 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.146722415073 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.0174694238466 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.115073314156 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `FourClass_10` AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - -0.00390337446303) / 0.979506064018 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - 0.61522322157) / 1.39008072362 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 0.0427962369143) / 1.49626851359 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.77098195589) / 2.33335610601 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - -0.433007336249) / 1.40297577726 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - -0.0424956965794) / 0.955809107687 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - -0.298090801198) / 1.01701318072 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.146722415073) / 1.60079853993 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 0.0174694238466) / 1.14872963617 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.115073314156) / 0.969091185734 AS scaler_11 
FROM `ADS_imp_1_OUT`), 
linear_model_cte AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, 0.859964417740931 * `ADS_sca_2_OUT`.scaler_2 + -7.550391959605404 * `ADS_sca_2_OUT`.scaler_3 + -8.937428754942879 * `ADS_sca_2_OUT`.scaler_4 + -10.890562081899631 * `ADS_sca_2_OUT`.scaler_5 + 55.23378110358883 * `ADS_sca_2_OUT`.scaler_6 + -19.363648785377926 * `ADS_sca_2_OUT`.scaler_7 + 12.91242542328279 * `ADS_sca_2_OUT`.scaler_8 + 19.32286828269792 * `ADS_sca_2_OUT`.scaler_9 + -4.456440679354909 * `ADS_sca_2_OUT`.scaler_10 + 12.394615827405165 * `ADS_sca_2_OUT`.scaler_11 + -58.090597104 AS `Score_0`, 1.7692966376398824 * `ADS_sca_2_OUT`.scaler_2 + 2.4816785808984934 * `ADS_sca_2_OUT`.scaler_3 + 8.030898648965254 * `ADS_sca_2_OUT`.scaler_4 + 5.080534675958886 * `ADS_sca_2_OUT`.scaler_5 + 0.9926768205793448 * `ADS_sca_2_OUT`.scaler_6 + 10.74811366192622 * `ADS_sca_2_OUT`.scaler_7 + -4.510252649882861 * `ADS_sca_2_OUT`.scaler_8 + -2.13090081089852 * `ADS_sca_2_OUT`.scaler_9 + -8.990980370281147 * `ADS_sca_2_OUT`.scaler_10 + 26.322065417040605 * `ADS_sca_2_OUT`.scaler_11 + -47.4184168626 AS `Score_1`, -22.704036441268062 * `ADS_sca_2_OUT`.scaler_2 + -24.012804677588516 * `ADS_sca_2_OUT`.scaler_3 + -30.837869514121657 * `ADS_sca_2_OUT`.scaler_4 + -10.648518229552476 * `ADS_sca_2_OUT`.scaler_5 + -40.3962594930462 * `ADS_sca_2_OUT`.scaler_6 + 11.156475073125907 * `ADS_sca_2_OUT`.scaler_7 + 0.24015602544657585 * `ADS_sca_2_OUT`.scaler_8 + 34.35516225664873 * `ADS_sca_2_OUT`.scaler_9 + 13.507350112151777 * `ADS_sca_2_OUT`.scaler_10 + -5.409035409716997 * `ADS_sca_2_OUT`.scaler_11 + -50.6171691212 AS `Score_2`, -14.02427426059403 * `ADS_sca_2_OUT`.scaler_2 + 45.31004583332808 * `ADS_sca_2_OUT`.scaler_3 + 13.618899416135603 * `ADS_sca_2_OUT`.scaler_4 + 21.673885896148963 * `ADS_sca_2_OUT`.scaler_5 + -30.499020128436296 * `ADS_sca_2_OUT`.scaler_6 + 19.653566646399504 * `ADS_sca_2_OUT`.scaler_7 + -13.443000533357383 * `ADS_sca_2_OUT`.scaler_8 + -37.85986003928377 * `ADS_sca_2_OUT`.scaler_9 + -24.815482498920325 * `ADS_sca_2_OUT`.scaler_10 + -1.8050413915878403 * `ADS_sca_2_OUT`.scaler_11 + -56.5721386518 AS `Score_3` 
FROM `ADS_sca_2_OUT`), 
orig_cte AS 
(SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Score_0` AS `Score_0`, linear_model_cte.`Score_1` AS `Score_1`, linear_model_cte.`Score_2` AS `Score_2`, linear_model_cte.`Score_3` AS `Score_3`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `Proba_2`, NULL AS `Proba_3`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, NULL AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 3 AS class, orig_cte.`LogProba_3` AS `LogProba`, orig_cte.`Proba_3` AS `Proba`, orig_cte.`Score_3` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Score_3` AS `Score_3`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`Proba_3` AS `Proba_3`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`LogProba_3` AS `LogProba_3`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Score` AS `max_Score` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Score`) AS `max_Score` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Score` AS `max_Score` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Score` AS `max_Score`, `arg_max_t_Score`.`KEY_Score` AS `KEY_Score`, `arg_max_t_Score`.`arg_max_Score` AS `arg_max_Score` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Score`, min(union_with_max.class) AS `arg_max_Score` 
FROM union_with_max 
WHERE union_with_max.`max_Score` <= union_with_max.`Score` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Score` ON score_max.`KEY` = `arg_max_t_Score`.`KEY_Score`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Score_2` AS `Score_2`, arg_max_cte.`Score_3` AS `Score_3`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, arg_max_cte.`Proba_2` AS `Proba_2`, arg_max_cte.`Proba_3` AS `Proba_3`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`Proba_2` IS NULL OR arg_max_cte.`Proba_2` > 0.0) THEN ln(arg_max_cte.`Proba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (arg_max_cte.`Proba_3` IS NULL OR arg_max_cte.`Proba_3` > 0.0) THEN ln(arg_max_cte.`Proba_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, arg_max_cte.`arg_max_Score` AS `Decision`, CASE WHEN (arg_max_cte.`arg_max_Score` = 0) THEN arg_max_cte.`Proba_0` WHEN (arg_max_cte.`arg_max_Score` = 1) THEN arg_max_cte.`Proba_1` WHEN (arg_max_cte.`arg_max_Score` = 2) THEN arg_max_cte.`Proba_2` WHEN (arg_max_cte.`arg_max_Score` = 3) THEN arg_max_cte.`Proba_3` END AS `DecisionProba` 
FROM arg_max_cte