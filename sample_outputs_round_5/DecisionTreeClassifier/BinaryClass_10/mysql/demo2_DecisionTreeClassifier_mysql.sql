-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` <= 0.31622999906539917) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.10404211282730103) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.5158463716506958) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.6846969127655029) THEN 7 ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.16539837419986725) THEN 9 ELSE CASE WHEN (`ADS`.`Feature_7` <= -0.7264847755432129) THEN 11 ELSE 12 END END END END AS node_id_2 
FROM `BinaryClass_10` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Decision` AS `Decision` 
FROM (SELECT 0 AS node_id, 'Feature_8' AS feature, 0.31622999906539917 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.5671641791044776 AS `Proba_0`, -0.567106459665 AS `LogProba_0`, 0.43283582089552236 AS `Proba_1`, -0.837396789404 AS `LogProba_1`, 0 AS `Decision` UNION ALL SELECT 1 AS node_id, 'Feature_3' AS feature, -0.10404211282730103 AS threshold, 39 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.9230769230769231 AS `Proba_0`, -0.0800427076735 AS `LogProba_0`, 0.07692307692307693 AS `Proba_1`, -2.56494935746 AS `LogProba_1`, 0 AS `Decision` UNION ALL SELECT 2 AS node_id, 'Feature_4' AS feature, -0.5158463716506958 AS threshold, 8 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.625 AS `Proba_0`, -0.470003629246 AS `LogProba_0`, 0.375 AS `Proba_1`, -0.980829253012 AS `LogProba_1`, 0 AS `Decision` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision` UNION ALL SELECT 5 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 31 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision` UNION ALL SELECT 6 AS node_id, 'Feature_4' AS feature, 0.6846969127655029 AS threshold, 28 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.07142857142857142 AS `Proba_0`, -2.63905732962 AS `LogProba_0`, 0.9285714285714286 AS `Proba_1`, -0.0741079721537 AS `LogProba_1`, 1 AS `Decision` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 21 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision` UNION ALL SELECT 8 AS node_id, 'Feature_6' AS feature, 0.16539837419986725 AS threshold, 7 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.2857142857142857 AS `Proba_0`, -1.2527629685 AS `LogProba_0`, 0.7142857142857143 AS `Proba_1`, -0.336472236621 AS `LogProba_1`, 1 AS `Decision` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision` UNION ALL SELECT 10 AS node_id, 'Feature_7' AS feature, -0.7264847755432129 AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.6666666666666666 AS `Proba_0`, -0.405465108108 AS `LogProba_0`, 0.3333333333333333 AS `Proba_1`, -1.09861228867 AS `LogProba_1`, 0 AS `Decision` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Proba_0` AS `Proba_0`, `DT_node_data`.`LogProba_0` AS `LogProba_0`, `DT_node_data`.`Proba_1` AS `Proba_1`, `DT_node_data`.`LogProba_1` AS `LogProba_1`, `DT_node_data`.`Decision` AS `Decision` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id)
 SELECT `DT_Output`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, `DT_Output`.`Proba_0` AS `Proba_0`, `DT_Output`.`Proba_1` AS `Proba_1`, `DT_Output`.`LogProba_0` AS `LogProba_0`, `DT_Output`.`LogProba_1` AS `LogProba_1`, `DT_Output`.`Decision` AS `Decision` 
FROM `DT_Output`