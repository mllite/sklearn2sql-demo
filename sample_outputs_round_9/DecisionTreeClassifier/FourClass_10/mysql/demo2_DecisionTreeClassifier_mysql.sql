-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= -1.3104755878448486) THEN CASE WHEN (`ADS`.`Feature_8` <= 1.4978562593460083) THEN 2 ELSE 3 END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.05906938761472702) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.06951673328876495) THEN CASE WHEN (`ADS`.`Feature_1` <= -0.48304417729377747) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.8601733446121216) THEN 10 ELSE 11 END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 2.2470691204071045) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `FourClass_10` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Proba_2` AS `Proba_2`, `Values`.`LogProba_2` AS `LogProba_2`, `Values`.`Proba_3` AS `Proba_3`, `Values`.`LogProba_3` AS `LogProba_3`, `Values`.`Decision` AS `Decision`, `Values`.`DecisionProba` AS `DecisionProba` 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, -1.3104755878448486 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.24 AS `Proba_0`, -1.42711635564 AS `LogProba_0`, 0.2 AS `Proba_1`, -1.60943791243 AS `LogProba_1`, 0.24 AS `Proba_2`, -1.42711635564 AS `LogProba_2`, 0.32 AS `Proba_3`, -1.13943428319 AS `LogProba_3`, 3 AS `Decision`, 0.32 AS `DecisionProba` UNION ALL SELECT 1 AS node_id, 'Feature_8' AS feature, 1.4978562593460083 AS threshold, 7 AS count, 1 AS depth, 0 AS parent_id, 0.14285714285714285 AS `Proba_0`, -1.94591014906 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.8571428571428571 AS `Proba_2`, -0.154150679827 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 2 AS `Decision`, 0.857142857143 AS `DecisionProba` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 2 AS depth, 1 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 2 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, 1 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 4 AS node_id, 'Feature_4' AS feature, 0.05906938761472702 AS threshold, 18 AS count, 1 AS depth, 0 AS parent_id, 0.2777777777777778 AS `Proba_0`, -1.28093384546 AS `LogProba_0`, 0.2777777777777778 AS `Proba_1`, -1.28093384546 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.4444444444444444 AS `Proba_3`, -0.810930216216 AS `LogProba_3`, 3 AS `Decision`, 0.444444444444 AS `DecisionProba` UNION ALL SELECT 5 AS node_id, 'Feature_0' AS feature, 0.06951673328876495 AS threshold, 12 AS count, 2 AS depth, 4 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.3333333333333333 AS `Proba_1`, -1.09861228867 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.6666666666666666 AS `Proba_3`, -0.405465108108 AS `LogProba_3`, 3 AS `Decision`, 0.666666666667 AS `DecisionProba` UNION ALL SELECT 6 AS node_id, 'Feature_1' AS feature, -0.48304417729377747 AS threshold, 8 AS count, 3 AS depth, 5 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.125 AS `Proba_1`, -2.07944154168 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.875 AS `Proba_3`, -0.133531392625 AS `LogProba_3`, 3 AS `Decision`, 0.875 AS `DecisionProba` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 6 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 4 AS depth, 6 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1.0 AS `Proba_3`, 0.0 AS `LogProba_3`, 3 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 9 AS node_id, 'Feature_5' AS feature, -0.8601733446121216 AS threshold, 4 AS count, 3 AS depth, 5 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.75 AS `Proba_1`, -0.287682072452 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.25 AS `Proba_3`, -1.38629436112 AS `LogProba_3`, 1 AS `Decision`, 0.75 AS `DecisionProba` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 9 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 1.0 AS `Proba_3`, 0.0 AS `LogProba_3`, 3 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 4 AS depth, 9 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 12 AS node_id, 'Feature_3' AS feature, 2.2470691204071045 AS threshold, 6 AS count, 2 AS depth, 4 AS parent_id, 0.8333333333333334 AS `Proba_0`, -0.182321556794 AS `LogProba_0`, 0.16666666666666666 AS `Proba_1`, -1.79175946923 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0 AS `Decision`, 0.833333333333 AS `DecisionProba` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 3 AS depth, 12 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 12 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 1 AS `Decision`, 1.0 AS `DecisionProba`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Proba_0` AS `Proba_0`, `DT_node_data`.`LogProba_0` AS `LogProba_0`, `DT_node_data`.`Proba_1` AS `Proba_1`, `DT_node_data`.`LogProba_1` AS `LogProba_1`, `DT_node_data`.`Proba_2` AS `Proba_2`, `DT_node_data`.`LogProba_2` AS `LogProba_2`, `DT_node_data`.`Proba_3` AS `Proba_3`, `DT_node_data`.`LogProba_3` AS `LogProba_3`, `DT_node_data`.`Decision` AS `Decision`, `DT_node_data`.`DecisionProba` AS `DecisionProba` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id)
 SELECT `DT_Output`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, `DT_Output`.`Proba_0` AS `Proba_0`, `DT_Output`.`Proba_1` AS `Proba_1`, `DT_Output`.`Proba_2` AS `Proba_2`, `DT_Output`.`Proba_3` AS `Proba_3`, `DT_Output`.`LogProba_0` AS `LogProba_0`, `DT_Output`.`LogProba_1` AS `LogProba_1`, `DT_Output`.`LogProba_2` AS `LogProba_2`, `DT_Output`.`LogProba_3` AS `LogProba_3`, `DT_Output`.`Decision` AS `Decision`, `DT_Output`.`DecisionProba` AS `DecisionProba` 
FROM `DT_Output`