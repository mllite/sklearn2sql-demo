-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `Score_Union_CTE_0` AS 
(WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.5361224412918091) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.2454954981803894) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.1157732754945755) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 1455.501708984375) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 967.7061157226562) THEN CASE WHEN (`ADS`.`Feature_1` <= 541.9518432617188) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.8147956132888794) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, 2 AS parent_id, -440.7436530554128 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 3 AS depth, 2 AS parent_id, -300.4881185327728 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 14 AS count, 3 AS depth, 5 AS parent_id, -252.2198116624816 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 3 AS depth, 5 AS parent_id, 185.22544338794856 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, 9 AS parent_id, -269.85383485627165 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 12 AS count, 3 AS depth, 9 AS parent_id, 99.6071474783419 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 3 AS depth, 12 AS parent_id, 361.14063776512046 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 8 AS count, 3 AS depth, 12 AS parent_id, 673.3964952940365 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
`GB_Tree_0_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.5361224412918091) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.2454954981803894) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.1157732754945755) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 1455.501708984375) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 882.4659423828125) THEN CASE WHEN (`ADS`.`Feature_1` <= 541.9518432617188) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 1191.3021240234375) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, 2 AS parent_id, -396.6692877498715 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 3 AS depth, 2 AS parent_id, -270.4393066794955 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 14 AS count, 3 AS depth, 5 AS parent_id, -226.99783049623343 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 3 AS depth, 5 AS parent_id, 166.70289904915367 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, 9 AS parent_id, -242.86845137064444 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 3 AS depth, 9 AS parent_id, 39.58261290399929 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 16 AS count, 3 AS depth, 12 AS parent_id, 245.43746079172746 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 12 AS count, 3 AS depth, 12 AS parent_id, 549.6277421430539 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.count AS count, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
`GB_Tree_1_0` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.5361224412918091) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.2454954981803894) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.1157732754945755) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 1455.501708984375) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 967.7061157226562) THEN CASE WHEN (`ADS`.`Feature_1` <= 541.9518432617188) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.8147956132888794) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, 2 AS parent_id, -357.0023589748843 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 3 AS depth, 2 AS parent_id, -243.39537601154595 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 14 AS count, 3 AS depth, 5 AS parent_id, -204.2980474466101 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 3 AS depth, 5 AS parent_id, 150.03260914423825 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, 9 AS parent_id, -218.58160623357998 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 12 AS count, 3 AS depth, 9 AS parent_id, 77.11088611145244 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 3 AS depth, 12 AS parent_id, 284.259346237365 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 8 AS count, 3 AS depth, 12 AS parent_id, 566.3035856178938 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.count AS count, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
`GB_Tree_2_0` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.5361224412918091) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.2454954981803894) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.1157732754945755) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 956.167724609375) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 815.79052734375) THEN CASE WHEN (`ADS`.`Feature_1` <= 329.4079284667969) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 1191.3021240234375) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, 2 AS parent_id, -321.30212307739595 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 3 AS depth, 2 AS parent_id, -219.05583841039137 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 9 AS count, 3 AS depth, 5 AS parent_id, -246.0121888664979 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 9 AS count, 3 AS depth, 5 AS parent_id, 20.007966098939093 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, 9 AS parent_id, -253.1177525169952 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 8 AS count, 3 AS depth, 9 AS parent_id, -65.05519982719866 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 19 AS count, 3 AS depth, 12 AS parent_id, 175.6603954929661 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 12 AS count, 3 AS depth, 12 AS parent_id, 456.8375586589945 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.count AS count, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
`GB_Tree_3_0` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`)
 SELECT `Score_Union_CTE_esu_0`.`KEY`, `Score_Union_CTE_esu_0`.`Estimator` 
FROM (SELECT `GB_Tree_0_0`.`KEY` AS `KEY`, `GB_Tree_0_0`.`Estimator` AS `Estimator` 
FROM `GB_Tree_0_0` UNION ALL SELECT `GB_Tree_1_0`.`KEY` AS `KEY`, `GB_Tree_1_0`.`Estimator` AS `Estimator` 
FROM `GB_Tree_1_0` UNION ALL SELECT `GB_Tree_2_0`.`KEY` AS `KEY`, `GB_Tree_2_0`.`Estimator` AS `Estimator` 
FROM `GB_Tree_2_0` UNION ALL SELECT `GB_Tree_3_0`.`KEY` AS `KEY`, `GB_Tree_3_0`.`Estimator` AS `Estimator` 
FROM `GB_Tree_3_0`) AS `Score_Union_CTE_esu_0`), 
`Score_Union_CTE` AS 
(SELECT `Score_Union_CTEbig_esu`.`KEY` AS `KEY`, `Score_Union_CTEbig_esu`.`Estimator` AS `Estimator` 
FROM (SELECT `Score_Union_CTE_0`.`KEY` AS `KEY`, `Score_Union_CTE_0`.`Estimator` AS `Estimator` 
FROM `Score_Union_CTE_0`) AS `Score_Union_CTEbig_esu`), 
`GradBoost_Sum_Scores` AS 
(SELECT `T`.`KEY` AS `KEY`, `T`.`Estimator` AS `Estimator` 
FROM (SELECT `Score_Union_CTE`.`KEY` AS `KEY`, sum(`Score_Union_CTE`.`Estimator`) AS `Estimator` 
FROM `Score_Union_CTE` GROUP BY `Score_Union_CTE`.`KEY`) AS `T`)
 SELECT `GradBoost_Sum_Scores`.`KEY` AS `KEY`, 499.092884465 + 0.1 * `GradBoost_Sum_Scores`.`Estimator` AS `Estimator` 
FROM `GradBoost_Sum_Scores`