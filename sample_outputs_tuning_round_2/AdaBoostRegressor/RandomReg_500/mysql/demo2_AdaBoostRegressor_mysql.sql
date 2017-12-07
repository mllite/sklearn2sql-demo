-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `WeightedEstimators_0` AS 
(WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_214` <= -0.3106366991996765) THEN CASE WHEN (`ADS`.`Feature_148` <= -0.7332937121391296) THEN CASE WHEN (`ADS`.`Feature_282` <= 0.22478950023651123) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_74` <= 0.9486258029937744) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_234` <= 1.871979832649231) THEN CASE WHEN (`ADS`.`Feature_72` <= -1.693315863609314) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.2401905208826065) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 3 AS depth, 2 AS parent_id, -292.5717599917406 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, 2 AS parent_id, -436.6829083244863 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 22 AS count, 3 AS depth, 5 AS parent_id, -172.94377827444993 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 3 AS depth, 5 AS parent_id, 36.42271297521469 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 3 AS depth, 9 AS parent_id, -316.82381093547974 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 34 AS count, 3 AS depth, 9 AS parent_id, 54.67523089990926 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, 12 AS parent_id, 459.9324062532205 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, 12 AS parent_id, 533.6514679619586 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
`AdaBoost_Estim_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator`, 0.266328234862 AS `Weight`, 0 AS est_index 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_234` <= 2.185091972351074) THEN CASE WHEN (`ADS`.`Feature_423` <= 1.5801342725753784) THEN CASE WHEN (`ADS`.`Feature_395` <= -1.3533828258514404) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_415` <= -0.02258443832397461) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_287` <= -0.804470419883728) THEN 9 ELSE CASE WHEN (`ADS`.`Feature_443` <= 0.36134564876556396) THEN 11 ELSE 12 END END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 12 AS count, 3 AS depth, 2 AS parent_id, -275.46265593292514 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 59 AS count, 3 AS depth, 2 AS parent_id, -10.321209388214706 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, 5 AS parent_id, 605.6206481037917 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 5 AS parent_id, 286.61850436114156 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 2 AS depth, 8 AS parent_id, 390.42475711953045 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, 10 AS parent_id, 547.3010428702067 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, 10 AS parent_id, 533.6514679619586 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.count AS count, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
`AdaBoost_Estim_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator`, 0.189140608549 AS `Weight`, 1 AS est_index 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_312` <= -0.06107860803604126) THEN CASE WHEN (`ADS`.`Feature_193` <= 0.3991851806640625) THEN CASE WHEN (`ADS`.`Feature_217` <= -0.20940937101840973) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_185` <= 0.6638951301574707) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_173` <= 1.4333395957946777) THEN CASE WHEN (`ADS`.`Feature_413` <= 0.682715654373169) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_281` <= -0.47266721725463867) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 16 AS count, 3 AS depth, 2 AS parent_id, -158.80289479999584 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, 2 AS parent_id, 6.541085657009523 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, 5 AS parent_id, -360.57907541538725 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, 5 AS parent_id, -132.90865099818024 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 28 AS count, 3 AS depth, 9 AS parent_id, 153.48864321717843 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 11 AS count, 3 AS depth, 9 AS parent_id, -97.49237073981854 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 12 AS parent_id, 459.9324062532205 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, 12 AS parent_id, 605.6206481037917 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.count AS count, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
`AdaBoost_Estim_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator`, 0.327754887001 AS `Weight`, 2 AS est_index 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_234` <= 1.871979832649231) THEN CASE WHEN (`ADS`.`Feature_353` <= 0.4308563768863678) THEN CASE WHEN (`ADS`.`Feature_66` <= -1.2630743980407715) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_277` <= 0.0377010852098465) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_222` <= 0.435407817363739) THEN CASE WHEN (`ADS`.`Feature_379` <= -0.3329782783985138) THEN 10 ELSE 11 END ELSE 12 END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 9 AS count, 3 AS depth, 2 AS parent_id, 87.32915112232553 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 40 AS count, 3 AS depth, 2 AS parent_id, -136.10166548939523 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, 5 AS parent_id, -1.8660356769965933 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 14 AS count, 3 AS depth, 5 AS parent_id, 223.72492753707 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 3 AS depth, 9 AS parent_id, 541.8412129069075 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 3 AS depth, 9 AS parent_id, 404.32628694626845 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, 8 AS parent_id, 85.4281804923287 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.count AS count, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
`AdaBoost_Estim_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator`, 0.216776269587 AS `Weight`, 3 AS est_index 
FROM `DT_Output_3`)
 SELECT `WeightedEstimators_esu_0`.`KEY`, `WeightedEstimators_esu_0`.`Estimator`, `WeightedEstimators_esu_0`.`Weight`, `WeightedEstimators_esu_0`.est_index 
FROM (SELECT `AdaBoost_Estim_0`.`KEY` AS `KEY`, `AdaBoost_Estim_0`.`Estimator` AS `Estimator`, `AdaBoost_Estim_0`.`Weight` AS `Weight`, `AdaBoost_Estim_0`.est_index AS est_index 
FROM `AdaBoost_Estim_0` UNION ALL SELECT `AdaBoost_Estim_1`.`KEY` AS `KEY`, `AdaBoost_Estim_1`.`Estimator` AS `Estimator`, `AdaBoost_Estim_1`.`Weight` AS `Weight`, `AdaBoost_Estim_1`.est_index AS est_index 
FROM `AdaBoost_Estim_1` UNION ALL SELECT `AdaBoost_Estim_2`.`KEY` AS `KEY`, `AdaBoost_Estim_2`.`Estimator` AS `Estimator`, `AdaBoost_Estim_2`.`Weight` AS `Weight`, `AdaBoost_Estim_2`.est_index AS est_index 
FROM `AdaBoost_Estim_2` UNION ALL SELECT `AdaBoost_Estim_3`.`KEY` AS `KEY`, `AdaBoost_Estim_3`.`Estimator` AS `Estimator`, `AdaBoost_Estim_3`.`Weight` AS `Weight`, `AdaBoost_Estim_3`.est_index AS est_index 
FROM `AdaBoost_Estim_3`) AS `WeightedEstimators_esu_0`), 
`WeightedEstimators` AS 
(SELECT `WeightedEstimatorsbig_esu`.`KEY` AS `KEY`, `WeightedEstimatorsbig_esu`.`Estimator` AS `Estimator`, `WeightedEstimatorsbig_esu`.`Weight` AS `Weight`, `WeightedEstimatorsbig_esu`.est_index AS est_index 
FROM (SELECT `WeightedEstimators_0`.`KEY` AS `KEY`, `WeightedEstimators_0`.`Estimator` AS `Estimator`, `WeightedEstimators_0`.`Weight` AS `Weight`, `WeightedEstimators_0`.est_index AS est_index 
FROM `WeightedEstimators_0`) AS `WeightedEstimatorsbig_esu`), 
`Cumulative_Frequencies` AS 
(SELECT `CW`.`KEY` AS `KEY`, `CW`.`Estimator` AS `Estimator`, `CW`.`Weight` AS `Weight`, `CW`.est_index AS est_index, `CW`.cum_weight AS cum_weight 
FROM (SELECT u1.`KEY` AS `KEY`, u1.`Estimator` AS `Estimator`, u1.`Weight` AS `Weight`, u1.est_index AS est_index, sum(u2.`Weight`) AS cum_weight 
FROM `WeightedEstimators` AS u1, `WeightedEstimators` AS u2 
WHERE u1.`Estimator` >= u2.`Estimator` AND u1.`KEY` = u2.`KEY` GROUP BY u1.`KEY`, u1.est_index, u1.`Estimator`, u1.`Weight`) AS `CW`), 
`Quantiles` AS 
(SELECT `CW2`.`KEY` AS `KEY`, `CW2`.`Quantile` AS `Quantile` 
FROM (SELECT `Cumulative_Frequencies`.`KEY` AS `KEY`, min(`Cumulative_Frequencies`.`Estimator`) AS `Quantile` 
FROM `Cumulative_Frequencies` 
WHERE `Cumulative_Frequencies`.cum_weight >= 0.5 GROUP BY `Cumulative_Frequencies`.`KEY`) AS `CW2`)
 SELECT `Quantiles`.`KEY` AS `KEY`, `Quantiles`.`Quantile` AS `Estimator` 
FROM `Quantiles`