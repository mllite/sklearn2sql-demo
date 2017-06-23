-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` < 0.4881957471370697) THEN 1 ELSE 2 END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.4881957471370697 AS threshold, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Estimator` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.8979783058166504 AS `Estimator` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 1.5860077142715454 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
`XGB_Tree_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` < 0.4881957471370697) THEN 1 ELSE 2 END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.4881957471370697 AS threshold, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Estimator` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.8163439035415649 AS `Estimator` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 1.4373195171356201 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
`XGB_Tree_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` < 0.4881957471370697) THEN 1 ELSE 2 END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.4881957471370697 AS threshold, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Estimator` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.7421308159828186 AS `Estimator` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 1.3025708198547363 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
`XGB_Tree_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` < 0.37473800778388977) THEN 1 ELSE 2 END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_1' AS feature, 0.37473800778388977 AS threshold, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Estimator` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.7271498441696167 AS `Estimator` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 1.2406529188156128 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
`XGB_Tree_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` < 0.4881957471370697) THEN 1 ELSE 2 END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_4` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.4881957471370697 AS threshold, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Estimator` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.5852188467979431 AS `Estimator` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 1.0898187160491943 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.node_id AS node_id, `DT_node_data_4`.feature AS feature, `DT_node_data_4`.threshold AS threshold, `DT_node_data_4`.depth AS depth, `DT_node_data_4`.parent_id AS parent_id, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.node_id), 
`XGB_Tree_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`Estimator` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` < 0.4244970679283142) THEN 1 ELSE 2 END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_5` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_1' AS feature, 0.4244970679283142 AS threshold, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Estimator` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.6048890352249146 AS `Estimator` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 1.0887577533721924 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.node_id AS node_id, `DT_node_data_5`.feature AS feature, `DT_node_data_5`.threshold AS threshold, `DT_node_data_5`.depth AS depth, `DT_node_data_5`.parent_id AS parent_id, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.node_id), 
`XGB_Tree_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`Estimator` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` < 0.4881957471370697) THEN 1 ELSE 2 END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_6` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.4881957471370697 AS threshold, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Estimator` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.4594319462776184 AS `Estimator` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.9127947688102722 AS `Estimator`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.node_id AS node_id, `DT_node_data_6`.feature AS feature, `DT_node_data_6`.threshold AS threshold, `DT_node_data_6`.depth AS depth, `DT_node_data_6`.parent_id AS parent_id, `DT_node_data_6`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.node_id), 
`XGB_Tree_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`Estimator` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` < 0.4244970679283142) THEN 1 ELSE 2 END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_7` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_1' AS feature, 0.4244970679283142 AS threshold, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Estimator` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.4796072542667389 AS `Estimator` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.9232842326164246 AS `Estimator`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.node_id AS node_id, `DT_node_data_7`.feature AS feature, `DT_node_data_7`.threshold AS threshold, `DT_node_data_7`.depth AS depth, `DT_node_data_7`.parent_id AS parent_id, `DT_node_data_7`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.node_id), 
`XGB_Tree_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`Estimator` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_5` < 0.5037218928337097) THEN 1 ELSE 2 END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_8` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_5' AS feature, 0.5037218928337097 AS threshold, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Estimator` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.3806622326374054 AS `Estimator` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.8027527928352356 AS `Estimator`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.node_id AS node_id, `DT_node_data_8`.feature AS feature, `DT_node_data_8`.threshold AS threshold, `DT_node_data_8`.depth AS depth, `DT_node_data_8`.parent_id AS parent_id, `DT_node_data_8`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.node_id), 
`XGB_Tree_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`Estimator` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` < 0.4881957471370697) THEN 1 ELSE 2 END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_9` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.4881957471370697 AS threshold, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Estimator` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.307976633310318 AS `Estimator` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 0 AS parent_id, 0.7061895132064819 AS `Estimator`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.node_id AS node_id, `DT_node_data_9`.feature AS feature, `DT_node_data_9`.threshold AS threshold, `DT_node_data_9`.depth AS depth, `DT_node_data_9`.parent_id AS parent_id, `DT_node_data_9`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.node_id), 
`XGB_Tree_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`Estimator` AS `Estimator` 
FROM `DT_Output_9`), 
`Score_Union_CTE` AS 
(SELECT ensemble_score_union.`KEY` AS `KEY`, ensemble_score_union.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_Tree_0`.`KEY` AS `KEY`, `XGB_Tree_0`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_0` UNION ALL SELECT `XGB_Tree_1`.`KEY` AS `KEY`, `XGB_Tree_1`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_1` UNION ALL SELECT `XGB_Tree_2`.`KEY` AS `KEY`, `XGB_Tree_2`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_2` UNION ALL SELECT `XGB_Tree_3`.`KEY` AS `KEY`, `XGB_Tree_3`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_3` UNION ALL SELECT `XGB_Tree_4`.`KEY` AS `KEY`, `XGB_Tree_4`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_4` UNION ALL SELECT `XGB_Tree_5`.`KEY` AS `KEY`, `XGB_Tree_5`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_5` UNION ALL SELECT `XGB_Tree_6`.`KEY` AS `KEY`, `XGB_Tree_6`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_6` UNION ALL SELECT `XGB_Tree_7`.`KEY` AS `KEY`, `XGB_Tree_7`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_7` UNION ALL SELECT `XGB_Tree_8`.`KEY` AS `KEY`, `XGB_Tree_8`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_8` UNION ALL SELECT `XGB_Tree_9`.`KEY` AS `KEY`, `XGB_Tree_9`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_9`) AS ensemble_score_union), 
`XGB_Sum_Scores` AS 
(SELECT `T`.`KEY` AS `KEY`, `T`.`Estimator` AS `Estimator` 
FROM (SELECT `Score_Union_CTE`.`KEY` AS `KEY`, sum(`Score_Union_CTE`.`Estimator`) AS `Estimator` 
FROM `Score_Union_CTE` GROUP BY `Score_Union_CTE`.`KEY`) AS `T`)
 SELECT `XGB_Sum_Scores`.`KEY` AS `KEY`, `XGB_Sum_Scores`.`Estimator` + 0.5 AS `Estimator` 
FROM `XGB_Sum_Scores`