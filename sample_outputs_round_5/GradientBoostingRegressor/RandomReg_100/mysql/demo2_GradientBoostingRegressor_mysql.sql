-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_97` <= 0.04803818464279175) THEN CASE WHEN (`ADS`.`Feature_7` <= -0.011611069552600384) THEN CASE WHEN (`ADS`.`Feature_54` <= 0.5917251706123352) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_75` <= 0.44111061096191406) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_16` <= 0.09674320369958878) THEN CASE WHEN (`ADS`.`Feature_86` <= -0.318033367395401) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_26` <= -0.7374029159545898) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `RandomReg_100` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_97' AS feature, 0.04803818464279175 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 4.666250802006628e-15 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_7' AS feature, -0.011611069552600384 AS threshold, 38 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -90.3165757163873 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_54' AS feature, 0.5917251706123352 AS threshold, 24 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -167.31805826610344 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -229.36678766225927 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 18.828129922364045 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_75' AS feature, 0.44111061096191406 AS threshold, 14 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 41.68596579741183 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -77.07641161435787 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 160.4483432091815 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_16' AS feature, 0.09674320369958878 AS threshold, 29 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 118.34585783526617 AS `Estimator` UNION ALL SELECT 9 AS node_id, 'Feature_86' AS feature, -0.318033367395401 AS threshold, 18 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 31.127747946457177 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -56.81082118631072 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 101.4786032526715 AS `Estimator` UNION ALL SELECT 12 AS node_id, 'Feature_26' AS feature, -0.7374029159545898 AS threshold, 11 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 261.0664012896808 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 463.6624392148513 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 216.0450595285318 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
`RF_Tree_0_0` AS 
(SELECT `DT_Output`.`KEY` AS join_key_0_0, `DT_Output`.`Estimator` AS `Estimator_0_0` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_97` <= 0.04803818464279175) THEN CASE WHEN (`ADS`.`Feature_36` <= 1.349487543106079) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.18872874975204468) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_69` <= -0.22533246874809265) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_16` <= -0.08410608023405075) THEN CASE WHEN (`ADS`.`Feature_33` <= 0.36249566078186035) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_41` <= 0.23211640119552612) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `RandomReg_100` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_97' AS feature, 0.04803818464279175 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 5.514660038735106e-15 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_36' AS feature, 1.349487543106079 AS threshold, 38 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -81.28491814474857 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_3' AS feature, -0.18872874975204468 AS threshold, 34 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -112.54989399865903 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 12 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -218.16928848024986 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 22 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -54.93931519051852 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_69' AS feature, -0.22533246874809265 AS threshold, 4 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 184.46737661348993 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 17.780353135084958 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 240.0297177729582 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_16' AS feature, -0.08410608023405075 AS threshold, 29 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 106.51127205173952 AS `Estimator` UNION ALL SELECT 9 AS node_id, 'Feature_33' AS feature, 0.36249566078186035 AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 15.717550340083811 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 81.62080368594785 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -94.12120523635623 AS `Estimator` UNION ALL SELECT 12 AS node_id, 'Feature_41' AS feature, 0.23211640119552612 AS threshold, 13 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 218.25739108146965 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 290.3794712776924 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 102.86206276751318 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.count AS count, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
`RF_Tree_1_0` AS 
(SELECT `DT_Output_1`.`KEY` AS join_key_1_0, `DT_Output_1`.`Estimator` AS `Estimator_1_0` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_97` <= 0.04803818464279175) THEN CASE WHEN (`ADS`.`Feature_7` <= -0.011611069552600384) THEN CASE WHEN (`ADS`.`Feature_54` <= 0.5917251706123352) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_75` <= 0.44111061096191406) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_16` <= -0.08410608023405075) THEN CASE WHEN (`ADS`.`Feature_33` <= 0.36249566078186035) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_41` <= -0.05050898715853691) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `RandomReg_100` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_97' AS feature, 0.04803818464279175 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 8.484092367284778e-16 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_7' AS feature, -0.011611069552600384 AS threshold, 38 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -73.15642633027372 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_54' AS feature, 0.5917251706123352 AS threshold, 24 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -138.83998478200976 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -190.96101234260908 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 17.52309789978821 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_75' AS feature, 0.44111061096191406 AS threshold, 14 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 39.443959586988036 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -62.58183457723983 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 141.46975375121588 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_16' AS feature, -0.08410608023405075 AS threshold, 29 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 95.86014484656557 AS `Estimator` UNION ALL SELECT 9 AS node_id, 'Feature_33' AS feature, 0.36249566078186035 AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 14.145795306075431 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 73.45872331735305 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -84.70908471272061 AS `Estimator` UNION ALL SELECT 12 AS node_id, 'Feature_41' AS feature, -0.05050898715853691 AS threshold, 13 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 196.43165197332266 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 287.2994227559938 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 118.5449913024617 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.count AS count, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
`RF_Tree_2_0` AS 
(SELECT `DT_Output_2`.`KEY` AS join_key_2_0, `DT_Output_2`.`Estimator` AS `Estimator_2_0` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_97` <= 0.04803818464279175) THEN CASE WHEN (`ADS`.`Feature_36` <= 1.349487543106079) THEN CASE WHEN (`ADS`.`Feature_18` <= 1.6318986415863037) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_77` <= -0.7886593341827393) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_20` <= -0.6188685297966003) THEN CASE WHEN (`ADS`.`Feature_11` <= 0.3075856566429138) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_21` <= -0.7250475883483887) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `RandomReg_100` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_97' AS feature, 0.04803818464279175 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 7.211478512192062e-15 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_36' AS feature, 1.349487543106079 AS threshold, 38 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -65.84078369724634 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_18' AS feature, 1.6318986415863037 AS threshold, 34 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -92.41894880063018 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 33 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -79.55951821907168 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -516.780157992061 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_77' AS feature, -0.7886593341827393 AS threshold, 4 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 160.07361968151645 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 22.260501279300442 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 206.0113258155884 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_20' AS feature, -0.6188685297966003 AS threshold, 29 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 86.27413036190902 AS `Estimator` UNION ALL SELECT 9 AS node_id, 'Feature_11' AS feature, 0.3075856566429138 AS threshold, 8 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -46.94575755168145 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 2.437132773353791 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -129.2505747600735 AS `Estimator` UNION ALL SELECT 12 AS node_id, 'Feature_21' AS feature, -0.7250475883483887 AS threshold, 21 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 137.02456385280058 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 283.2557454794754 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 17 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 102.61722699946539 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.count AS count, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
`RF_Tree_3_0` AS 
(SELECT `DT_Output_3`.`KEY` AS join_key_3_0, `DT_Output_3`.`Estimator` AS `Estimator_3_0` 
FROM `DT_Output_3`), 
`RF_Join_CTE` AS 
(SELECT `RF_Tree_0_0`.join_key_0_0 AS join_key_0_0, `RF_Tree_0_0`.`Estimator_0_0` AS `Estimator_0_0`, `RF_Tree_1_0`.join_key_1_0 AS join_key_1_0, `RF_Tree_1_0`.`Estimator_1_0` AS `Estimator_1_0`, `RF_Tree_2_0`.join_key_2_0 AS join_key_2_0, `RF_Tree_2_0`.`Estimator_2_0` AS `Estimator_2_0`, `RF_Tree_3_0`.join_key_3_0 AS join_key_3_0, `RF_Tree_3_0`.`Estimator_3_0` AS `Estimator_3_0` 
FROM `RF_Tree_0_0` LEFT OUTER JOIN `RF_Tree_1_0` ON `RF_Tree_0_0`.join_key_0_0 = `RF_Tree_1_0`.join_key_1_0 LEFT OUTER JOIN `RF_Tree_2_0` ON `RF_Tree_2_0`.join_key_2_0 = `RF_Tree_1_0`.join_key_1_0 LEFT OUTER JOIN `RF_Tree_3_0` ON `RF_Tree_3_0`.join_key_3_0 = `RF_Tree_2_0`.join_key_2_0), 
`RF_AVG_Scores` AS 
(SELECT `RF_Join_CTE`.join_key_0_0 AS `KEY`, -25.2366905831 + 0.1 * `RF_Join_CTE`.`Estimator_0_0` + 0.1 * `RF_Join_CTE`.`Estimator_1_0` + 0.1 * `RF_Join_CTE`.`Estimator_2_0` + 0.1 * `RF_Join_CTE`.`Estimator_3_0` AS `Estimator` 
FROM `RF_Join_CTE`)
 SELECT `RF_AVG_Scores`.`KEY` AS `KEY`, `RF_AVG_Scores`.`Estimator` AS `Estimator` 
FROM `RF_AVG_Scores`