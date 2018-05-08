-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier
-- Dataset : FourClass_100
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_44` <= -2.1092634201049805) THEN CASE WHEN (`ADS`.`Feature_99` <= -2.1945834159851074) THEN 2 ELSE 3 END ELSE CASE WHEN (`ADS`.`Feature_78` <= -0.6111561059951782) THEN CASE WHEN (`ADS`.`Feature_41` <= 0.3993445336818695) THEN CASE WHEN (`ADS`.`Feature_19` <= -0.5326353907585144) THEN CASE WHEN (`ADS`.`Feature_71` <= -0.6677910685539246) THEN 8 ELSE 9 END ELSE CASE WHEN (`ADS`.`Feature_89` <= 0.6845816969871521) THEN CASE WHEN (`ADS`.`Feature_3` <= -1.372584581375122) THEN CASE WHEN (`ADS`.`Feature_92` <= 0.7921336889266968) THEN 13 ELSE 14 END ELSE 15 END ELSE 16 END END ELSE 17 END ELSE CASE WHEN (`ADS`.`Feature_48` <= -0.5433159470558167) THEN CASE WHEN (`ADS`.`Feature_44` <= 2.606260061264038) THEN CASE WHEN (`ADS`.`Feature_18` <= -2.5712974071502686) THEN 21 ELSE 22 END ELSE 23 END ELSE CASE WHEN (`ADS`.`Feature_19` <= -0.23827314376831055) THEN CASE WHEN (`ADS`.`Feature_29` <= 2.2401788234710693) THEN CASE WHEN (`ADS`.`Feature_12` <= 2.2410643100738525) THEN 27 ELSE 28 END ELSE CASE WHEN (`ADS`.`Feature_23` <= 0.1785137951374054) THEN 30 ELSE 31 END END ELSE CASE WHEN (`ADS`.`Feature_71` <= 0.6362936496734619) THEN CASE WHEN (`ADS`.`Feature_38` <= -0.24872900545597076) THEN CASE WHEN (`ADS`.`Feature_28` <= -1.3533482551574707) THEN 35 ELSE 36 END ELSE 37 END ELSE 38 END END END END END AS node_id_2 
FROM `FourClass_100` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_0` AS `P_0`, `Values`.`P_1` AS `P_1`, `Values`.`P_2` AS `P_2`, `Values`.`P_3` AS `P_3`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 2 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 3 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 14 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 15 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 17 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 21 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 22 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 23 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 27 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 28 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 30 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 31 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 35 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 36 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 37 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 38 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`P_0` AS `P_0`, `DT_node_data`.`P_1` AS `P_1`, `DT_node_data`.`P_2` AS `P_2`, `DT_node_data`.`P_3` AS `P_3`, `DT_node_data`.`D` AS `D`, `DT_node_data`.`DP` AS `DP` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid)
 SELECT `DT_Output`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, `DT_Output`.`P_0` AS `Proba_0`, `DT_Output`.`P_1` AS `Proba_1`, `DT_Output`.`P_2` AS `Proba_2`, `DT_Output`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output`.`P_0` IS NULL OR `DT_Output`.`P_0` > 0.0) THEN ln(`DT_Output`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output`.`P_1` IS NULL OR `DT_Output`.`P_1` > 0.0) THEN ln(`DT_Output`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output`.`P_2` IS NULL OR `DT_Output`.`P_2` > 0.0) THEN ln(`DT_Output`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output`.`P_3` IS NULL OR `DT_Output`.`P_3` > 0.0) THEN ln(`DT_Output`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, `DT_Output`.`D` AS `Decision`, `DT_Output`.`DP` AS `DecisionProba` 
FROM `DT_Output`