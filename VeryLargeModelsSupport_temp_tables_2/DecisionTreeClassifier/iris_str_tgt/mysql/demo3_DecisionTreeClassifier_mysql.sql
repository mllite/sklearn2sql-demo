-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier
-- Dataset : iris_str_tgt
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.800000011920929) THEN 1 ELSE CASE WHEN (`ADS`.`Feature_2` <= 4.850000381469727) THEN CASE WHEN (`ADS`.`Feature_3` <= 1.6500000953674316) THEN 4 ELSE CASE WHEN (`ADS`.`Feature_1` <= 3.0999999046325684) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 1.75) THEN CASE WHEN (`ADS`.`Feature_2` <= 5.050000190734863) THEN CASE WHEN (`ADS`.`Feature_1` <= 2.3499999046325684) THEN 11 ELSE 12 END ELSE 13 END ELSE 14 END END END AS node_id_2 
FROM iris_str_tgt AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_CLASS_0` AS `P_CLASS_0`, `Values`.`P_CLASS_1` AS `P_CLASS_1`, `Values`.`P_CLASS_2` AS `P_CLASS_2`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 1 AS nid, 1.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_0' AS `D`, 1.0 AS `DP` UNION ALL SELECT 4 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_CLASS_0`, 1.0 AS `P_CLASS_1`, 0.0 AS `P_CLASS_2`, 'CLASS_1' AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP` UNION ALL SELECT 14 AS nid, 0.0 AS `P_CLASS_0`, 0.0 AS `P_CLASS_1`, 1.0 AS `P_CLASS_2`, 'CLASS_2' AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`P_CLASS_0` AS `P_CLASS_0`, `DT_node_data`.`P_CLASS_1` AS `P_CLASS_1`, `DT_node_data`.`P_CLASS_2` AS `P_CLASS_2`, `DT_node_data`.`D` AS `D`, `DT_node_data`.`DP` AS `DP` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid)
 SELECT `DT_Output`.`KEY` AS `KEY`, NULL AS `Score_CLASS_0`, NULL AS `Score_CLASS_1`, NULL AS `Score_CLASS_2`, `DT_Output`.`P_CLASS_0` AS `Proba_CLASS_0`, `DT_Output`.`P_CLASS_1` AS `Proba_CLASS_1`, `DT_Output`.`P_CLASS_2` AS `Proba_CLASS_2`, CASE WHEN (`DT_Output`.`P_CLASS_0` IS NULL OR `DT_Output`.`P_CLASS_0` > 0.0) THEN ln(`DT_Output`.`P_CLASS_0`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_0`, CASE WHEN (`DT_Output`.`P_CLASS_1` IS NULL OR `DT_Output`.`P_CLASS_1` > 0.0) THEN ln(`DT_Output`.`P_CLASS_1`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_1`, CASE WHEN (`DT_Output`.`P_CLASS_2` IS NULL OR `DT_Output`.`P_CLASS_2` > 0.0) THEN ln(`DT_Output`.`P_CLASS_2`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_2`, `DT_Output`.`D` AS `Decision`, `DT_Output`.`DP` AS `DecisionProba` 
FROM `DT_Output`