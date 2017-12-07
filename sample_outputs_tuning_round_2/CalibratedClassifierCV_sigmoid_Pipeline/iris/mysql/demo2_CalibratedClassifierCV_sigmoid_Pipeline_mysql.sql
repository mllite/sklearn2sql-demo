-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `Score_Union_CTE_0` AS 
(WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 5.8475 ELSE `ADS`.`Feature_0` END AS imputer_output_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 3.03666666667 ELSE `ADS`.`Feature_1` END AS imputer_output_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 3.845 ELSE `ADS`.`Feature_2` END AS imputer_output_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 1.245 ELSE `ADS`.`Feature_3` END AS imputer_output_5 
FROM iris AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.imputer_output_2 AS DOUBLE) - 5.8475) / 0.827039146595 AS scaler_output_2, (CAST(`ADS_imp_1_OUT`.imputer_output_3 AS DOUBLE) - 3.03666666667) / 0.436259352017 AS scaler_output_3, (CAST(`ADS_imp_1_OUT`.imputer_output_4 AS DOUBLE) - 3.845) / 1.7098172417 AS scaler_output_4, (CAST(`ADS_imp_1_OUT`.imputer_output_5 AS DOUBLE) - 1.245) / 0.749872211336 AS scaler_output_5 
FROM `ADS_imp_1_OUT`), 
`DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.6601125001907349) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.529296338558197) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.7047536373138428) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.030562859028577805) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.6734480857849121) THEN 7 ELSE 8 END ELSE 9 END ELSE 10 END END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Proba_2` AS `Proba_2`, `Values`.`LogProba_2` AS `LogProba_2`, `Values`.`Decision` AS `Decision`, `Values`.`DecisionProba` AS `DecisionProba` 
FROM (SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 27 AS count, 1 AS depth, 0 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 26 AS count, 2 AS depth, 2 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 5 AS depth, 6 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.6666666666666666 AS `Proba_1`, -0.405465108108 AS `LogProba_1`, 0.3333333333333333 AS `Proba_2`, -1.09861228867 AS `LogProba_2`, 1 AS `Decision`, 0.666666666667 AS `DecisionProba` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 5 AS depth, 6 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 26 AS count, 3 AS depth, 4 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Proba_0` AS `Proba_0`, `DT_node_data`.`LogProba_0` AS `LogProba_0`, `DT_node_data`.`Proba_1` AS `Proba_1`, `DT_node_data`.`LogProba_1` AS `LogProba_1`, `DT_node_data`.`Proba_2` AS `Proba_2`, `DT_node_data`.`LogProba_2` AS `LogProba_2`, `DT_node_data`.`Decision` AS `Decision`, `DT_node_data`.`DecisionProba` AS `DecisionProba` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
calibration_base_estimator_0 AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, `DT_Output`.`Proba_0` AS `Proba_0`, `DT_Output`.`Proba_1` AS `Proba_1`, `DT_Output`.`Proba_2` AS `Proba_2`, `DT_Output`.`LogProba_0` AS `LogProba_0`, `DT_Output`.`LogProba_1` AS `LogProba_1`, `DT_Output`.`LogProba_2` AS `LogProba_2`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output`.`Proba_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output`.`Proba_1`) AS `ScoreOrProba_1`, coalesce(NULL, `DT_Output`.`Proba_2`) AS `ScoreOrProba_2` 
FROM `DT_Output`), 
sigmoid_calibration_0 AS 
(SELECT calibration_base_estimator_0.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-5.48893733478 * calibration_base_estimator_0.`ScoreOrProba_0` + 3.09104249396)) AS `Proba_0`, 1.0 / (1.0 + exp(-4.71812147847 * calibration_base_estimator_0.`ScoreOrProba_1` + 2.95244363386)) AS `Proba_1`, 1.0 / (1.0 + exp(-4.80195558452 * calibration_base_estimator_0.`ScoreOrProba_2` + 2.43232009336)) AS `Proba_2` 
FROM calibration_base_estimator_0), 
`Normalized_Probas` AS 
(SELECT sigmoid_calibration_0.`KEY` AS `KEY`, sigmoid_calibration_0.`Proba_0` / (sigmoid_calibration_0.`Proba_0` + sigmoid_calibration_0.`Proba_1` + sigmoid_calibration_0.`Proba_2`) AS `Proba_0`, sigmoid_calibration_0.`Proba_1` / (sigmoid_calibration_0.`Proba_0` + sigmoid_calibration_0.`Proba_1` + sigmoid_calibration_0.`Proba_2`) AS `Proba_1`, sigmoid_calibration_0.`Proba_2` / (sigmoid_calibration_0.`Proba_0` + sigmoid_calibration_0.`Proba_1` + sigmoid_calibration_0.`Proba_2`) AS `Proba_2` 
FROM sigmoid_calibration_0), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.6462678909301758) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.5400919914245605) THEN 4 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.1451735943555832) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.7047536373138428) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= 0.7889590263366699) THEN 10 ELSE 11 END ELSE 12 END END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Proba_2` AS `Proba_2`, `Values`.`LogProba_2` AS `LogProba_2`, `Values`.`Decision` AS `Decision`, `Values`.`DecisionProba` AS `DecisionProba` 
FROM (SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 28 AS count, 1 AS depth, 0 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 28 AS count, 3 AS depth, 3 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 4 AS depth, 9 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 9 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 26 AS count, 3 AS depth, 8 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.count AS count, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Proba_0` AS `Proba_0`, `DT_node_data_1`.`LogProba_0` AS `LogProba_0`, `DT_node_data_1`.`Proba_1` AS `Proba_1`, `DT_node_data_1`.`LogProba_1` AS `LogProba_1`, `DT_node_data_1`.`Proba_2` AS `Proba_2`, `DT_node_data_1`.`LogProba_2` AS `LogProba_2`, `DT_node_data_1`.`Decision` AS `Decision`, `DT_node_data_1`.`DecisionProba` AS `DecisionProba` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
calibration_base_estimator_1 AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, `DT_Output_1`.`Proba_0` AS `Proba_0`, `DT_Output_1`.`Proba_1` AS `Proba_1`, `DT_Output_1`.`Proba_2` AS `Proba_2`, `DT_Output_1`.`LogProba_0` AS `LogProba_0`, `DT_Output_1`.`LogProba_1` AS `LogProba_1`, `DT_Output_1`.`LogProba_2` AS `LogProba_2`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_1`.`Proba_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_1`.`Proba_1`) AS `ScoreOrProba_1`, coalesce(NULL, `DT_Output_1`.`Proba_2`) AS `ScoreOrProba_2` 
FROM `DT_Output_1`), 
sigmoid_calibration_1 AS 
(SELECT calibration_base_estimator_1.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-5.39362632212 * calibration_base_estimator_1.`ScoreOrProba_0` + 3.0910455173)) AS `Proba_0`, 1.0 / (1.0 + exp(-5.44241734252 * calibration_base_estimator_1.`ScoreOrProba_1` + 3.04452248782)) AS `Proba_1`, 1.0 / (1.0 + exp(-5.48063825978 * calibration_base_estimator_1.`ScoreOrProba_2` + 2.99573259424)) AS `Proba_2` 
FROM calibration_base_estimator_1), 
`Normalized_Probas_1` AS 
(SELECT sigmoid_calibration_1.`KEY` AS `KEY`, sigmoid_calibration_1.`Proba_0` / (sigmoid_calibration_1.`Proba_0` + sigmoid_calibration_1.`Proba_1` + sigmoid_calibration_1.`Proba_2`) AS `Proba_0`, sigmoid_calibration_1.`Proba_1` / (sigmoid_calibration_1.`Proba_0` + sigmoid_calibration_1.`Proba_1` + sigmoid_calibration_1.`Proba_2`) AS `Proba_1`, sigmoid_calibration_1.`Proba_2` / (sigmoid_calibration_1.`Proba_0` + sigmoid_calibration_1.`Proba_1` + sigmoid_calibration_1.`Proba_2`) AS `Proba_2` 
FROM sigmoid_calibration_1), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.6734480857849121) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.6462678909301758) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= -1.0851964950561523) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.5400919914245605) THEN 8 ELSE 9 END END ELSE 10 END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Proba_2` AS `Proba_2`, `Values`.`LogProba_2` AS `LogProba_2`, `Values`.`Decision` AS `Decision`, `Values`.`DecisionProba` AS `DecisionProba` 
FROM (SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 28 AS count, 1 AS depth, 0 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 5 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 4 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 29 AS count, 4 AS depth, 4 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 4 AS depth, 7 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 7 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 29 AS count, 2 AS depth, 2 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.count AS count, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Proba_0` AS `Proba_0`, `DT_node_data_2`.`LogProba_0` AS `LogProba_0`, `DT_node_data_2`.`Proba_1` AS `Proba_1`, `DT_node_data_2`.`LogProba_1` AS `LogProba_1`, `DT_node_data_2`.`Proba_2` AS `Proba_2`, `DT_node_data_2`.`LogProba_2` AS `LogProba_2`, `DT_node_data_2`.`Decision` AS `Decision`, `DT_node_data_2`.`DecisionProba` AS `DecisionProba` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
calibration_base_estimator_2 AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, `DT_Output_2`.`Proba_0` AS `Proba_0`, `DT_Output_2`.`Proba_1` AS `Proba_1`, `DT_Output_2`.`Proba_2` AS `Proba_2`, `DT_Output_2`.`LogProba_0` AS `LogProba_0`, `DT_Output_2`.`LogProba_1` AS `LogProba_1`, `DT_Output_2`.`LogProba_2` AS `LogProba_2`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_2`.`Proba_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_2`.`Proba_1`) AS `ScoreOrProba_1`, coalesce(NULL, `DT_Output_2`.`Proba_2`) AS `ScoreOrProba_2` 
FROM `DT_Output_2`), 
sigmoid_calibration_2 AS 
(SELECT calibration_base_estimator_2.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-5.39362632212 * calibration_base_estimator_2.`ScoreOrProba_0` + 3.0910455173)) AS `Proba_0`, 1.0 / (1.0 + exp(-4.3469582632 * calibration_base_estimator_2.`ScoreOrProba_1` + 1.94906250202)) AS `Proba_1`, 1.0 / (1.0 + exp(-4.31098782549 * calibration_base_estimator_2.`ScoreOrProba_2` + 2.99573583626)) AS `Proba_2` 
FROM calibration_base_estimator_2), 
`Normalized_Probas_2` AS 
(SELECT sigmoid_calibration_2.`KEY` AS `KEY`, sigmoid_calibration_2.`Proba_0` / (sigmoid_calibration_2.`Proba_0` + sigmoid_calibration_2.`Proba_1` + sigmoid_calibration_2.`Proba_2`) AS `Proba_0`, sigmoid_calibration_2.`Proba_1` / (sigmoid_calibration_2.`Proba_0` + sigmoid_calibration_2.`Proba_1` + sigmoid_calibration_2.`Proba_2`) AS `Proba_1`, sigmoid_calibration_2.`Proba_2` / (sigmoid_calibration_2.`Proba_0` + sigmoid_calibration_2.`Proba_1` + sigmoid_calibration_2.`Proba_2`) AS `Proba_2` 
FROM sigmoid_calibration_2), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.5877821445465088) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.5400919914245605) THEN 4 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.1451735943555832) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -1.115544319152832) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.6462678909301758) THEN 10 ELSE 11 END ELSE 12 END END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Proba_2` AS `Proba_2`, `Values`.`LogProba_2` AS `LogProba_2`, `Values`.`Decision` AS `Decision`, `Values`.`DecisionProba` AS `DecisionProba` 
FROM (SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 28 AS count, 1 AS depth, 0 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 28 AS count, 3 AS depth, 3 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 9 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 4 AS depth, 9 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 29 AS count, 3 AS depth, 8 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.count AS count, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Proba_0` AS `Proba_0`, `DT_node_data_3`.`LogProba_0` AS `LogProba_0`, `DT_node_data_3`.`Proba_1` AS `Proba_1`, `DT_node_data_3`.`LogProba_1` AS `LogProba_1`, `DT_node_data_3`.`Proba_2` AS `Proba_2`, `DT_node_data_3`.`LogProba_2` AS `LogProba_2`, `DT_node_data_3`.`Decision` AS `Decision`, `DT_node_data_3`.`DecisionProba` AS `DecisionProba` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
calibration_base_estimator_3 AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, `DT_Output_3`.`Proba_0` AS `Proba_0`, `DT_Output_3`.`Proba_1` AS `Proba_1`, `DT_Output_3`.`Proba_2` AS `Proba_2`, `DT_Output_3`.`LogProba_0` AS `LogProba_0`, `DT_Output_3`.`LogProba_1` AS `LogProba_1`, `DT_Output_3`.`LogProba_2` AS `LogProba_2`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_3`.`Proba_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_3`.`Proba_1`) AS `ScoreOrProba_1`, coalesce(NULL, `DT_Output_3`.`Proba_2`) AS `ScoreOrProba_2` 
FROM `DT_Output_3`), 
sigmoid_calibration_3 AS 
(SELECT calibration_base_estimator_3.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-5.34710662413 * calibration_base_estimator_3.`ScoreOrProba_0` + 3.04452581042)) AS `Proba_0`, 1.0 / (1.0 + exp(-4.29545070178 * calibration_base_estimator_3.`ScoreOrProba_1` + 1.89755492762)) AS `Proba_1`, 1.0 / (1.0 + exp(-4.21437979515 * calibration_base_estimator_3.`ScoreOrProba_2` + 2.99573366824)) AS `Proba_2` 
FROM calibration_base_estimator_3), 
`Normalized_Probas_3` AS 
(SELECT sigmoid_calibration_3.`KEY` AS `KEY`, sigmoid_calibration_3.`Proba_0` / (sigmoid_calibration_3.`Proba_0` + sigmoid_calibration_3.`Proba_1` + sigmoid_calibration_3.`Proba_2`) AS `Proba_0`, sigmoid_calibration_3.`Proba_1` / (sigmoid_calibration_3.`Proba_0` + sigmoid_calibration_3.`Proba_1` + sigmoid_calibration_3.`Proba_2`) AS `Proba_1`, sigmoid_calibration_3.`Proba_2` / (sigmoid_calibration_3.`Proba_0` + sigmoid_calibration_3.`Proba_1` + sigmoid_calibration_3.`Proba_2`) AS `Proba_2` 
FROM sigmoid_calibration_3)
 SELECT `Score_Union_CTE_esu_0`.`KEY`, `Score_Union_CTE_esu_0`.`Proba_0`, `Score_Union_CTE_esu_0`.`Proba_1`, `Score_Union_CTE_esu_0`.`Proba_2` 
FROM (SELECT `Normalized_Probas`.`KEY` AS `KEY`, `Normalized_Probas`.`Proba_0` AS `Proba_0`, `Normalized_Probas`.`Proba_1` AS `Proba_1`, `Normalized_Probas`.`Proba_2` AS `Proba_2` 
FROM `Normalized_Probas` UNION ALL SELECT `Normalized_Probas_1`.`KEY` AS `KEY`, `Normalized_Probas_1`.`Proba_0` AS `Proba_0`, `Normalized_Probas_1`.`Proba_1` AS `Proba_1`, `Normalized_Probas_1`.`Proba_2` AS `Proba_2` 
FROM `Normalized_Probas_1` UNION ALL SELECT `Normalized_Probas_2`.`KEY` AS `KEY`, `Normalized_Probas_2`.`Proba_0` AS `Proba_0`, `Normalized_Probas_2`.`Proba_1` AS `Proba_1`, `Normalized_Probas_2`.`Proba_2` AS `Proba_2` 
FROM `Normalized_Probas_2` UNION ALL SELECT `Normalized_Probas_3`.`KEY` AS `KEY`, `Normalized_Probas_3`.`Proba_0` AS `Proba_0`, `Normalized_Probas_3`.`Proba_1` AS `Proba_1`, `Normalized_Probas_3`.`Proba_2` AS `Proba_2` 
FROM `Normalized_Probas_3`) AS `Score_Union_CTE_esu_0`), 
`Score_Union_CTE` AS 
(SELECT `Score_Union_CTEbig_esu`.`KEY` AS `KEY`, `Score_Union_CTEbig_esu`.`Proba_0` AS `Proba_0`, `Score_Union_CTEbig_esu`.`Proba_1` AS `Proba_1`, `Score_Union_CTEbig_esu`.`Proba_2` AS `Proba_2` 
FROM (SELECT `Score_Union_CTE_0`.`KEY` AS `KEY`, `Score_Union_CTE_0`.`Proba_0` AS `Proba_0`, `Score_Union_CTE_0`.`Proba_1` AS `Proba_1`, `Score_Union_CTE_0`.`Proba_2` AS `Proba_2` 
FROM `Score_Union_CTE_0`) AS `Score_Union_CTEbig_esu`), 
`Calibrate_AVG_Proba` AS 
(SELECT `T`.`KEY` AS `KEY`, `T`.`Proba_0` AS `Proba_0`, `T`.`Proba_1` AS `Proba_1`, `T`.`Proba_2` AS `Proba_2` 
FROM (SELECT `Score_Union_CTE`.`KEY` AS `KEY`, avg(`Score_Union_CTE`.`Proba_0`) AS `Proba_0`, avg(`Score_Union_CTE`.`Proba_1`) AS `Proba_1`, avg(`Score_Union_CTE`.`Proba_2`) AS `Proba_2` 
FROM `Score_Union_CTE` GROUP BY `Score_Union_CTE`.`KEY`) AS `T`), 
orig_cte AS 
(SELECT `Calibrate_AVG_Proba`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, `Calibrate_AVG_Proba`.`Proba_0` AS `Proba_0`, `Calibrate_AVG_Proba`.`Proba_1` AS `Proba_1`, `Calibrate_AVG_Proba`.`Proba_2` AS `Proba_2`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM `Calibrate_AVG_Proba`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Proba` AS `max_Proba` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Proba`) AS `max_Proba` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Proba`, min(union_with_max.class) AS `arg_max_Proba` 
FROM union_with_max 
WHERE union_with_max.`max_Proba` <= union_with_max.`Proba` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Proba` ON score_max.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Score_2` AS `Score_2`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, arg_max_cte.`Proba_2` AS `Proba_2`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`Proba_2` IS NULL OR arg_max_cte.`Proba_2` > 0.0) THEN ln(arg_max_cte.`Proba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, arg_max_cte.`arg_max_Proba` AS `Decision`, arg_max_cte.`max_Proba` AS `DecisionProba` 
FROM arg_max_cte