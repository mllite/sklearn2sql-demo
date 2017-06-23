-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.699999988079071) THEN 1 ELSE CASE WHEN (`ADS`.`Feature_2` <= 4.949999809265137) THEN 3 ELSE CASE WHEN (`ADS`.`Feature_2` <= 5.150000095367432) THEN CASE WHEN (`ADS`.`Feature_1` <= 2.75) THEN 6 ELSE 7 END ELSE 8 END END END AS `node_id_2` 
FROM `iris` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.`node_id` AS `node_id`, `Values`.`feature` AS `feature`, `Values`.`threshold` AS `threshold`, `Values`.`count` AS `count`, `Values`.`depth` AS `depth`, `Values`.`parent_id` AS `parent_id`, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Proba_2` AS `Proba_2`, `Values`.`LogProba_2` AS `LogProba_2`, `Values`.`Decision` AS `Decision`, `Values`.`DecisionProba` AS `DecisionProba` 
FROM (SELECT 0 AS `node_id`, 'Feature_3' AS `feature`, 0.699999988079071 AS `threshold`, 37 AS `count`, 0 AS `depth`, CAST(NULL AS INT) AS `parent_id`, 0.3783783783783784 AS `Proba_0`, -0.971860583029 AS `LogProba_0`, 0.43243243243243246 AS `Proba_1`, -0.838329190404 AS `LogProba_1`, 0.1891891891891892 AS `Proba_2`, -1.66500776359 AS `LogProba_2`, 1 AS `Decision`, 0.432432432432 AS `DecisionProba` UNION ALL SELECT 1 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 14 AS `count`, 1 AS `depth`, 0 AS `parent_id`, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 2 AS `node_id`, 'Feature_2' AS `feature`, 4.949999809265137 AS `threshold`, 23 AS `count`, 1 AS `depth`, 0 AS `parent_id`, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.6956521739130435 AS `Proba_1`, -0.362905493689 AS `LogProba_1`, 0.30434782608695654 AS `Proba_2`, -1.18958406687 AS `LogProba_2`, 1 AS `Decision`, 0.695652173913 AS `DecisionProba` UNION ALL SELECT 3 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 15 AS `count`, 2 AS `depth`, 2 AS `parent_id`, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 4 AS `node_id`, 'Feature_2' AS `feature`, 5.150000095367432 AS `threshold`, 8 AS `count`, 2 AS `depth`, 2 AS `parent_id`, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.125 AS `Proba_1`, -2.07944154168 AS `LogProba_1`, 0.875 AS `Proba_2`, -0.133531392625 AS `LogProba_2`, 2 AS `Decision`, 0.875 AS `DecisionProba` UNION ALL SELECT 5 AS `node_id`, 'Feature_1' AS `feature`, 2.75 AS `threshold`, 3 AS `count`, 3 AS `depth`, 4 AS `parent_id`, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.3333333333333333 AS `Proba_1`, -1.09861228867 AS `LogProba_1`, 0.6666666666666666 AS `Proba_2`, -0.405465108108 AS `LogProba_2`, 2 AS `Decision`, 0.666666666667 AS `DecisionProba` UNION ALL SELECT 6 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 2 AS `count`, 4 AS `depth`, 5 AS `parent_id`, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 7 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 1 AS `count`, 4 AS `depth`, 5 AS `parent_id`, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 8 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 5 AS `count`, 3 AS `depth`, 4 AS `parent_id`, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 2 AS `Decision`, 1.0 AS `DecisionProba`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.`node_id_2` AS `node_id_2`, `DT_node_data`.`node_id` AS `node_id`, `DT_node_data`.`feature` AS `feature`, `DT_node_data`.`threshold` AS `threshold`, `DT_node_data`.`count` AS `count`, `DT_node_data`.`depth` AS `depth`, `DT_node_data`.`parent_id` AS `parent_id`, `DT_node_data`.`Proba_0` AS `Proba_0`, `DT_node_data`.`LogProba_0` AS `LogProba_0`, `DT_node_data`.`Proba_1` AS `Proba_1`, `DT_node_data`.`LogProba_1` AS `LogProba_1`, `DT_node_data`.`Proba_2` AS `Proba_2`, `DT_node_data`.`LogProba_2` AS `LogProba_2`, `DT_node_data`.`Decision` AS `Decision`, `DT_node_data`.`DecisionProba` AS `DecisionProba` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.`node_id_2` = `DT_node_data`.`node_id`)
 SELECT `DT_Output`.`KEY` AS `KEY`, CAST(NULL AS FLOAT) AS `Score_0`, CAST(NULL AS FLOAT) AS `Score_1`, CAST(NULL AS FLOAT) AS `Score_2`, `DT_Output`.`Proba_0` AS `Proba_0`, `DT_Output`.`Proba_1` AS `Proba_1`, `DT_Output`.`Proba_2` AS `Proba_2`, `DT_Output`.`LogProba_0` AS `LogProba_0`, `DT_Output`.`LogProba_1` AS `LogProba_1`, `DT_Output`.`LogProba_2` AS `LogProba_2`, `DT_Output`.`Decision` AS `Decision`, `DT_Output`.`DecisionProba` AS `DecisionProba` 
FROM `DT_Output`