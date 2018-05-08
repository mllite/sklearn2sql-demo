-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBRegressor
-- Dataset : freidman2
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508185032_CODEGEN_L5MQSE_XGB_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508185032_CODEGEN_L5MQSE_XGB_B0` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508185032_CODEGEN_L5MQSE_XGB_B0 part 2. Populate

INSERT INTO `TMP_20180508185032_CODEGEN_L5MQSE_XGB_B0` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.5361224412918091) THEN CASE WHEN (`ADS`.`Feature_2` < 0.1157732754945755) THEN 3 ELSE CASE WHEN (`ADS`.`Feature_1` < 876.18896484375) THEN 7 ELSE 8 END END ELSE CASE WHEN (`ADS`.`Feature_1` < 745.0648193359375) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_1` < 1031.63671875) THEN 9 ELSE 10 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, 5.259021282196045 AS `Estimator` UNION ALL SELECT 5 AS nid, 26.5679988861084 AS `Estimator` UNION ALL SELECT 7 AS nid, 15.483972549438477 AS `Estimator` UNION ALL SELECT 8 AS nid, 38.08768844604492 AS `Estimator` UNION ALL SELECT 9 AS nid, 61.972469329833984 AS `Estimator` UNION ALL SELECT 10 AS nid, 93.55223846435547 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`XGB_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.4144279360771179) THEN CASE WHEN (`ADS`.`Feature_2` < 0.1157732754945755) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` < 745.0648193359375) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_1` < 1094.2822265625) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, 4.780928611755371 AS `Estimator` UNION ALL SELECT 4 AS nid, 20.260730743408203 AS `Estimator` UNION ALL SELECT 5 AS nid, 22.574623107910156 AS `Estimator` UNION ALL SELECT 7 AS nid, 58.41529083251953 AS `Estimator` UNION ALL SELECT 8 AS nid, 84.34954071044922 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`XGB_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.5361224412918091) THEN CASE WHEN (`ADS`.`Feature_2` < 0.2454954981803894) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` < 815.79052734375) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_1` < 1191.3021240234375) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, 8.467768669128418 AS `Estimator` UNION ALL SELECT 4 AS nid, 26.712514877319336 AS `Estimator` UNION ALL SELECT 5 AS nid, 23.58084487915039 AS `Estimator` UNION ALL SELECT 7 AS nid, 57.88615036010742 AS `Estimator` UNION ALL SELECT 8 AS nid, 84.63152313232422 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`XGB_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.4144279360771179) THEN CASE WHEN (`ADS`.`Feature_2` < 0.1157732754945755) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` < 541.9518432617188) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_1` < 967.7061157226562) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, 3.5765016078948975 AS `Estimator` UNION ALL SELECT 4 AS nid, 16.533885955810547 AS `Estimator` UNION ALL SELECT 5 AS nid, 13.682024002075195 AS `Estimator` UNION ALL SELECT 7 AS nid, 41.46207809448242 AS `Estimator` UNION ALL SELECT 8 AS nid, 67.26363372802734 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`XGB_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.5361224412918091) THEN CASE WHEN (`ADS`.`Feature_2` < 0.2454954981803894) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` < 882.4659423828125) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_2` < 0.7988642454147339) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, 6.826356410980225 AS `Estimator` UNION ALL SELECT 4 AS nid, 21.607534408569336 AS `Estimator` UNION ALL SELECT 5 AS nid, 22.628299713134766 AS `Estimator` UNION ALL SELECT 7 AS nid, 49.021934509277344 AS `Estimator` UNION ALL SELECT 8 AS nid, 73.65652465820312 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`XGB_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`Estimator` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.5361224412918091) THEN CASE WHEN (`ADS`.`Feature_1` < 897.042724609375) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` < 541.9518432617188) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_1` < 1191.3021240234375) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, 5.80258321762085 AS `Estimator` UNION ALL SELECT 4 AS nid, 19.919614791870117 AS `Estimator` UNION ALL SELECT 5 AS nid, 10.882296562194824 AS `Estimator` UNION ALL SELECT 7 AS nid, 40.92027282714844 AS `Estimator` UNION ALL SELECT 8 AS nid, 65.1378402709961 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`XGB_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`Estimator` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.4144279360771179) THEN CASE WHEN (`ADS`.`Feature_2` < 0.1157732754945755) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` < 541.9518432617188) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_1` < 1191.3021240234375) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, 1.5899327993392944 AS `Estimator` UNION ALL SELECT 4 AS nid, 12.174163818359375 AS `Estimator` UNION ALL SELECT 5 AS nid, 9.440058708190918 AS `Estimator` UNION ALL SELECT 7 AS nid, 36.46533203125 AS `Estimator` UNION ALL SELECT 8 AS nid, 57.04753494262695 AS `Estimator`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`XGB_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`Estimator` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.6867678761482239) THEN CASE WHEN (`ADS`.`Feature_2` < 0.4144279360771179) THEN CASE WHEN (`ADS`.`Feature_2` < 0.1157732754945755) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_1` < 943.8363037109375) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_1` < 921.3046875) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 5 AS nid, 20.551504135131836 AS `Estimator` UNION ALL SELECT 6 AS nid, 53.802059173583984 AS `Estimator` UNION ALL SELECT 7 AS nid, 1.445393443107605 AS `Estimator` UNION ALL SELECT 8 AS nid, 11.024381637573242 AS `Estimator` UNION ALL SELECT 9 AS nid, 11.313101768493652 AS `Estimator` UNION ALL SELECT 10 AS nid, 32.20111846923828 AS `Estimator`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`XGB_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`Estimator` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.792053759098053) THEN CASE WHEN (`ADS`.`Feature_1` < 784.8369140625) THEN CASE WHEN (`ADS`.`Feature_1` < 476.31121826171875) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.288340300321579) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, 43.654998779296875 AS `Estimator` UNION ALL SELECT 5 AS nid, 1.0012569427490234 AS `Estimator` UNION ALL SELECT 6 AS nid, 9.976913452148438 AS `Estimator` UNION ALL SELECT 7 AS nid, 6.890918731689453 AS `Estimator` UNION ALL SELECT 8 AS nid, 29.832544326782227 AS `Estimator`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`XGB_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`Estimator` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` < 821.2744140625) THEN CASE WHEN (`ADS`.`Feature_1` < 329.4079284667969) THEN 3 ELSE CASE WHEN (`ADS`.`Feature_2` < 0.3653184175491333) THEN 7 ELSE 8 END END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.6275076270103455) THEN CASE WHEN (`ADS`.`Feature_2` < 0.25638625025749207) THEN 9 ELSE 10 END ELSE CASE WHEN (`ADS`.`Feature_1` < 1072.6767578125) THEN 11 ELSE 12 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, -0.025147248059511185 AS `Estimator` UNION ALL SELECT 7 AS nid, 3.8255436420440674 AS `Estimator` UNION ALL SELECT 8 AS nid, 15.561128616333008 AS `Estimator` UNION ALL SELECT 9 AS nid, 4.447967052459717 AS `Estimator` UNION ALL SELECT 10 AS nid, 22.06629753112793 AS `Estimator` UNION ALL SELECT 11 AS nid, 29.23740005493164 AS `Estimator` UNION ALL SELECT 12 AS nid, 48.71183395385742 AS `Estimator`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.nid AS nid, `DT_node_data_9`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.nid), 
`XGB_Model_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`Estimator` AS `Estimator` 
FROM `DT_Output_9`)
 SELECT `XGB_B0`.`KEY`, `XGB_B0`.`Estimator` 
FROM (SELECT `XGB_esu_0`.`KEY` AS `KEY`, `XGB_esu_0`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_Model_0`.`KEY` AS `KEY`, `XGB_Model_0`.`Estimator` AS `Estimator` 
FROM `XGB_Model_0` UNION ALL SELECT `XGB_Model_1`.`KEY` AS `KEY`, `XGB_Model_1`.`Estimator` AS `Estimator` 
FROM `XGB_Model_1` UNION ALL SELECT `XGB_Model_2`.`KEY` AS `KEY`, `XGB_Model_2`.`Estimator` AS `Estimator` 
FROM `XGB_Model_2` UNION ALL SELECT `XGB_Model_3`.`KEY` AS `KEY`, `XGB_Model_3`.`Estimator` AS `Estimator` 
FROM `XGB_Model_3` UNION ALL SELECT `XGB_Model_4`.`KEY` AS `KEY`, `XGB_Model_4`.`Estimator` AS `Estimator` 
FROM `XGB_Model_4` UNION ALL SELECT `XGB_Model_5`.`KEY` AS `KEY`, `XGB_Model_5`.`Estimator` AS `Estimator` 
FROM `XGB_Model_5` UNION ALL SELECT `XGB_Model_6`.`KEY` AS `KEY`, `XGB_Model_6`.`Estimator` AS `Estimator` 
FROM `XGB_Model_6` UNION ALL SELECT `XGB_Model_7`.`KEY` AS `KEY`, `XGB_Model_7`.`Estimator` AS `Estimator` 
FROM `XGB_Model_7` UNION ALL SELECT `XGB_Model_8`.`KEY` AS `KEY`, `XGB_Model_8`.`Estimator` AS `Estimator` 
FROM `XGB_Model_8` UNION ALL SELECT `XGB_Model_9`.`KEY` AS `KEY`, `XGB_Model_9`.`Estimator` AS `Estimator` 
FROM `XGB_Model_9`) AS `XGB_esu_0`) AS `XGB_B0`) AS `U`

-- Code For temporary table TMP_20180508185032_CODEGEN_86UZ4Q_XGB_B1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508185032_CODEGEN_86UZ4Q_XGB_B1` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508185032_CODEGEN_86UZ4Q_XGB_B1 part 2. Populate

INSERT INTO `TMP_20180508185032_CODEGEN_86UZ4Q_XGB_B1` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup_10` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.792053759098053) THEN CASE WHEN (`ADS`.`Feature_1` < 784.8369140625) THEN CASE WHEN (`ADS`.`Feature_1` < 476.31121826171875) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.288340300321579) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, 36.406124114990234 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.7167732119560242 AS `Estimator` UNION ALL SELECT 6 AS nid, 8.222705841064453 AS `Estimator` UNION ALL SELECT 7 AS nid, 5.59077787399292 AS `Estimator` UNION ALL SELECT 8 AS nid, 24.24737548828125 AS `Estimator`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`XGB_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`Estimator` AS `Estimator` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.6867678761482239) THEN CASE WHEN (`ADS`.`Feature_1` < 1164.32958984375) THEN CASE WHEN (`ADS`.`Feature_2` < 0.5157755017280579) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` < 966.9429931640625) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 4 AS nid, 17.29083251953125 AS `Estimator` UNION ALL SELECT 5 AS nid, 13.511589050292969 AS `Estimator` UNION ALL SELECT 6 AS nid, 38.966041564941406 AS `Estimator` UNION ALL SELECT 7 AS nid, 2.6149513721466064 AS `Estimator` UNION ALL SELECT 8 AS nid, 9.837066650390625 AS `Estimator`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`XGB_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`Estimator` AS `Estimator` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` < 821.2744140625) THEN CASE WHEN (`ADS`.`Feature_1` < 329.4079284667969) THEN 3 ELSE CASE WHEN (`ADS`.`Feature_2` < 0.3653184175491333) THEN 7 ELSE 8 END END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.3796338438987732) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_2` < 0.8147956132888794) THEN 9 ELSE 10 END END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, -1.1777454614639282 AS `Estimator` UNION ALL SELECT 5 AS nid, 5.64267110824585 AS `Estimator` UNION ALL SELECT 7 AS nid, 2.7211594581604004 AS `Estimator` UNION ALL SELECT 8 AS nid, 11.557232856750488 AS `Estimator` UNION ALL SELECT 9 AS nid, 21.083812713623047 AS `Estimator` UNION ALL SELECT 10 AS nid, 39.55588912963867 AS `Estimator`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`XGB_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`Estimator` AS `Estimator` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.5975654125213623) THEN CASE WHEN (`ADS`.`Feature_1` < 1164.32958984375) THEN CASE WHEN (`ADS`.`Feature_1` < 628.7957763671875) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` < 1075.94091796875) THEN CASE WHEN (`ADS`.`Feature_1` < 629.0123291015625) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 4 AS nid, 12.52935791015625 AS `Estimator` UNION ALL SELECT 6 AS nid, 34.3646125793457 AS `Estimator` UNION ALL SELECT 7 AS nid, 1.0546163320541382 AS `Estimator` UNION ALL SELECT 8 AS nid, 4.928728103637695 AS `Estimator` UNION ALL SELECT 9 AS nid, 5.411577224731445 AS `Estimator` UNION ALL SELECT 10 AS nid, 18.062278747558594 AS `Estimator`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`XGB_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`Estimator` AS `Estimator` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.792053759098053) THEN CASE WHEN (`ADS`.`Feature_1` < 1635.072021484375) THEN CASE WHEN (`ADS`.`Feature_1` < 505.9144287109375) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, 25.514925003051758 AS `Estimator` UNION ALL SELECT 4 AS nid, 20.060646057128906 AS `Estimator` UNION ALL SELECT 5 AS nid, -0.022940369322896004 AS `Estimator` UNION ALL SELECT 6 AS nid, 8.464066505432129 AS `Estimator`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`XGB_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`Estimator` AS `Estimator` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.4144279360771179) THEN CASE WHEN (`ADS`.`Feature_2` < 0.1157732754945755) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` < 1283.81982421875) THEN CASE WHEN (`ADS`.`Feature_1` < 505.9144287109375) THEN 7 ELSE 8 END ELSE 6 END END AS node_id_2 
FROM freidman2 AS `ADS`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, -2.2534339427948 AS `Estimator` UNION ALL SELECT 4 AS nid, 4.601406097412109 AS `Estimator` UNION ALL SELECT 6 AS nid, 30.499692916870117 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.7789820432662964 AS `Estimator` UNION ALL SELECT 8 AS nid, 14.180508613586426 AS `Estimator`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.nid AS nid, `DT_node_data_15`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.nid), 
`XGB_Model_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`Estimator` AS `Estimator` 
FROM `DT_Output_15`)
 SELECT `XGB_B1`.`KEY`, `XGB_B1`.`Estimator` 
FROM (SELECT `XGB_esu_1`.`KEY` AS `KEY`, `XGB_esu_1`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_Model_10`.`KEY` AS `KEY`, `XGB_Model_10`.`Estimator` AS `Estimator` 
FROM `XGB_Model_10` UNION ALL SELECT `XGB_Model_11`.`KEY` AS `KEY`, `XGB_Model_11`.`Estimator` AS `Estimator` 
FROM `XGB_Model_11` UNION ALL SELECT `XGB_Model_12`.`KEY` AS `KEY`, `XGB_Model_12`.`Estimator` AS `Estimator` 
FROM `XGB_Model_12` UNION ALL SELECT `XGB_Model_13`.`KEY` AS `KEY`, `XGB_Model_13`.`Estimator` AS `Estimator` 
FROM `XGB_Model_13` UNION ALL SELECT `XGB_Model_14`.`KEY` AS `KEY`, `XGB_Model_14`.`Estimator` AS `Estimator` 
FROM `XGB_Model_14` UNION ALL SELECT `XGB_Model_15`.`KEY` AS `KEY`, `XGB_Model_15`.`Estimator` AS `Estimator` 
FROM `XGB_Model_15`) AS `XGB_esu_1`) AS `XGB_B1`) AS `U`

-- Code For temporary table TMP_20180508185032_CODEGEN_56KAWR_XGB_Union part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508185032_CODEGEN_56KAWR_XGB_Union` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508185032_CODEGEN_56KAWR_XGB_Union part 2. Populate

INSERT INTO `TMP_20180508185032_CODEGEN_56KAWR_XGB_Union` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (SELECT `XGB_Union`.`KEY`, `XGB_Union`.`Estimator` 
FROM (SELECT `XGB_EnsembleUnion`.`KEY` AS `KEY`, `XGB_EnsembleUnion`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_B0`.`KEY` AS `KEY`, `XGB_B0`.`Estimator` AS `Estimator` 
FROM `TMP_20180508185032_CODEGEN_L5MQSE_XGB_B0` AS `XGB_B0` UNION ALL SELECT `XGB_B1`.`KEY` AS `KEY`, `XGB_B1`.`Estimator` AS `Estimator` 
FROM `TMP_20180508185032_CODEGEN_86UZ4Q_XGB_B1` AS `XGB_B1`) AS `XGB_EnsembleUnion`) AS `XGB_Union`) AS `U`

-- Code For temporary table TMP_20180508185032_CODEGEN_GV1OPM_XGB_sum part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508185032_CODEGEN_GV1OPM_XGB_sum` (
	`KEY` BIGINT NOT NULL, 
	`Estimator` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508185032_CODEGEN_GV1OPM_XGB_sum part 2. Populate

INSERT INTO `TMP_20180508185032_CODEGEN_GV1OPM_XGB_sum` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (SELECT `XGB_sum`.`KEY`, `XGB_sum`.`Estimator` 
FROM (SELECT `T`.`KEY` AS `KEY`, `T`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_Union`.`KEY` AS `KEY`, sum(`XGB_Union`.`Estimator`) AS `Estimator` 
FROM `TMP_20180508185032_CODEGEN_56KAWR_XGB_Union` AS `XGB_Union` GROUP BY `XGB_Union`.`KEY`) AS `T`) AS `XGB_sum`) AS `U`

-- Code For temporary table TMP_20180508185032_CODEGEN_GV1OPM_XGB_sum part 3. Create Index 

CREATE INDEX `ix_TMP_20180508185032_CODEGEN_GV1OPM_XGB_sum_KEY` ON `TMP_20180508185032_CODEGEN_GV1OPM_XGB_sum` (`KEY`)

-- Model deployment code

SELECT `XGB_sum`.`KEY` AS `KEY`, `XGB_sum`.`Estimator` + 0.5 AS `Estimator` 
FROM `TMP_20180508185032_CODEGEN_GV1OPM_XGB_sum` AS `XGB_sum`