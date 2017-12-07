-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `Score_Union_CTE_0` AS 
(WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.000268693206665 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.000723958058064 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.000728071982559 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.00101356522108 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.000976358073288 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.00176438082423 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.00165128154506 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.00139055019834 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.00127264825481 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.00103442500568 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM diabetes AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 0.000268693206665) / 0.0472420958365 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - 0.000723958058064) / 0.047605576685 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 0.000728071982559) / 0.0469359114394 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.00101356522108) / 0.048335271949 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - 0.000976358073288) / 0.0480507620097 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - 0.00176438082423) / 0.0480608087315 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - -0.00165128154506) / 0.0462024037804 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.00139055019834) / 0.0473630930405 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 0.00127264825481) / 0.0458928613136 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.00103442500568) / 0.0477615851957 AS scaler_11 
FROM `ADS_imp_1_OUT`), 
`DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < -0.012311428785324097) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.11634615063667297) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 < 0.4908640384674072) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.9889585971832275) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < -0.4807044267654419) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 1 AS parent_id, 15.776923179626465 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 2 AS parent_id, 24.05500030517578 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 10.930405616760254 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 8.347762107849121 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 13.62121295928955 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 18.598438262939453 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
`XGB_Tree_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < -0.23324185609817505) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.11634615063667297) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 < 0.4908640384674072) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 1.4482282400131226) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 < 0.752074122428894) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 1 AS parent_id, 14.003450393676758 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 2 AS parent_id, 23.286762237548828 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 9.415186882019043 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 7.198849678039551 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 14.533350944519043 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 19.064584732055664 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
`XGB_Tree_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < -0.012311428785324097) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.11634615063667297) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < -0.9707697629928589) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_11 < -0.434483140707016) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 1.1726664304733276) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < -0.4807044267654419) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 2 AS parent_id, 20.29665184020996 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 6.414662837982178 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 8.630793571472168 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 9.850298881530762 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 14.109347343444824 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 10.822417259216309 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 15.3329439163208 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
`XGB_Tree_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < -0.0314108207821846) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.11634615063667297) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 < 0.4908640384674072) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_11 < -0.434483140707016) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.9889585971832275) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_2 < -0.2762012183666229) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 < 0.77745521068573) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 8.028899192810059 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 5.990607738494873 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 8.930937767028809 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 12.754850387573242 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 9.25925064086914 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 13.668062210083008 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 6 AS parent_id, 19.54034996032715 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 6 AS parent_id, 13.672558784484863 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
`XGB_Tree_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < -0.23324185609817505) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.11634615063667297) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 < 0.4908640384674072) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 < 0.5311645865440369) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 < 0.7402026653289795) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_11 < 0.6062126755714417) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.2656087875366211) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_4` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 6.921077728271484 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 5.144952297210693 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 11.345939636230469 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 7.35351037979126 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 9.932232856750488 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 13.648144721984863 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 6 AS parent_id, 11.720587730407715 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 6 AS parent_id, 16.95893669128418 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.node_id AS node_id, `DT_node_data_4`.feature AS feature, `DT_node_data_4`.threshold AS threshold, `DT_node_data_4`.depth AS depth, `DT_node_data_4`.parent_id AS parent_id, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.node_id), 
`XGB_Tree_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`Estimator` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < -0.23324185609817505) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.11634615063667297) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < -0.26255133748054504) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_8 < 0.29165154695510864) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 1.4482282400131226) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 < -1.0167781114578247) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_5` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 2 AS parent_id, 15.905003547668457 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 5.828351974487305 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 3.6082522869110107 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 10.483193397521973 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 6.575033664703369 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 5.92445707321167 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 11.060623168945312 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.node_id AS node_id, `DT_node_data_5`.feature AS feature, `DT_node_data_5`.threshold AS threshold, `DT_node_data_5`.depth AS depth, `DT_node_data_5`.parent_id AS parent_id, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.node_id), 
`XGB_Tree_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`Estimator` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < 0.4441823661327362) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.09338267147541046) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 < 0.6326913833618164) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 < 0.32470041513442993) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 < 1.2388052940368652) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 < -0.9434657096862793) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_6` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 2 AS parent_id, 14.899293899536133 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 5.037124156951904 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 8.110381126403809 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 7.3873162269592285 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 11.648924827575684 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 13.217264175415039 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 8.917932510375977 AS `Estimator`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.node_id AS node_id, `DT_node_data_6`.feature AS feature, `DT_node_data_6`.threshold AS threshold, `DT_node_data_6`.depth AS depth, `DT_node_data_6`.parent_id AS parent_id, `DT_node_data_6`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.node_id), 
`XGB_Tree_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`Estimator` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < -0.23324185609817505) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.11634615063667297) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 < 0.4908640384674072) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 < 0.3004886507987976) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 < 0.7758171558380127) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < -0.515149712562561) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.2656087875366211) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_7` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 5.168146133422852 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 3.6053311824798584 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 8.7820405960083 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 5.390221118927002 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 5.32416296005249 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 8.763245582580566 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 6 AS parent_id, 8.623435974121094 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 6 AS parent_id, 12.895909309387207 AS `Estimator`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.node_id AS node_id, `DT_node_data_7`.feature AS feature, `DT_node_data_7`.threshold AS threshold, `DT_node_data_7`.depth AS depth, `DT_node_data_7`.parent_id AS parent_id, `DT_node_data_7`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.node_id), 
`XGB_Tree_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`Estimator` AS `Estimator` 
FROM `DT_Output_7`)
 SELECT `Score_Union_CTE_esu_0`.`KEY`, `Score_Union_CTE_esu_0`.`Estimator` 
FROM (SELECT `XGB_Tree_0`.`KEY` AS `KEY`, `XGB_Tree_0`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_0` UNION ALL SELECT `XGB_Tree_1`.`KEY` AS `KEY`, `XGB_Tree_1`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_1` UNION ALL SELECT `XGB_Tree_2`.`KEY` AS `KEY`, `XGB_Tree_2`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_2` UNION ALL SELECT `XGB_Tree_3`.`KEY` AS `KEY`, `XGB_Tree_3`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_3` UNION ALL SELECT `XGB_Tree_4`.`KEY` AS `KEY`, `XGB_Tree_4`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_4` UNION ALL SELECT `XGB_Tree_5`.`KEY` AS `KEY`, `XGB_Tree_5`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_5` UNION ALL SELECT `XGB_Tree_6`.`KEY` AS `KEY`, `XGB_Tree_6`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_6` UNION ALL SELECT `XGB_Tree_7`.`KEY` AS `KEY`, `XGB_Tree_7`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_7`) AS `Score_Union_CTE_esu_0`), 
`Score_Union_CTE_1` AS 
(WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.000268693206665 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.000723958058064 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.000728071982559 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.00101356522108 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.000976358073288 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.00176438082423 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.00165128154506 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.00139055019834 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.00127264825481 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.00103442500568 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM diabetes AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 0.000268693206665) / 0.0472420958365 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - 0.000723958058064) / 0.047605576685 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 0.000728071982559) / 0.0469359114394 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.00101356522108) / 0.048335271949 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - 0.000976358073288) / 0.0480507620097 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - 0.00176438082423) / 0.0480608087315 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - -0.00165128154506) / 0.0462024037804 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.00139055019834) / 0.0473630930405 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 0.00127264825481) / 0.0458928613136 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.00103442500568) / 0.0477615851957 AS scaler_11 
FROM `ADS_imp_1_OUT`), 
`DT_node_lookup_8` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < 0.4441823661327362) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.09338267147541046) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 < 0.6326913833618164) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 < 0.46715831756591797) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 < 1.2744197845458984) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 < 0.7299189567565918) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_8` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 2 AS parent_id, 12.363444328308105 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 4.04940938949585 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 6.651192665100098 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 6.120324611663818 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 4 AS parent_id, 10.08482551574707 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 8.969040870666504 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 3.548654317855835 AS `Estimator`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.node_id AS node_id, `DT_node_data_8`.feature AS feature, `DT_node_data_8`.threshold AS threshold, `DT_node_data_8`.depth AS depth, `DT_node_data_8`.parent_id AS parent_id, `DT_node_data_8`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.node_id), 
`XGB_Tree_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`Estimator` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < -0.23324185609817505) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 0.9315498471260071) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < -0.9707697629928589) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 < 1.4482282400131226) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_10 < 0.9365731477737427) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_9` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 1 AS parent_id, 7.961431980133057 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 2 AS parent_id, 11.157633781433105 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 2.6931638717651367 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 3 AS parent_id, 4.346072673797607 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 6.031167030334473 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS depth, 5 AS parent_id, 8.75991439819336 AS `Estimator`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.node_id AS node_id, `DT_node_data_9`.feature AS feature, `DT_node_data_9`.threshold AS threshold, `DT_node_data_9`.depth AS depth, `DT_node_data_9`.parent_id AS parent_id, `DT_node_data_9`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.node_id), 
`XGB_Tree_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`Estimator` AS `Estimator` 
FROM `DT_Output_9`)
 SELECT `Score_Union_CTE_esu_1`.`KEY`, `Score_Union_CTE_esu_1`.`Estimator` 
FROM (SELECT `XGB_Tree_8`.`KEY` AS `KEY`, `XGB_Tree_8`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_8` UNION ALL SELECT `XGB_Tree_9`.`KEY` AS `KEY`, `XGB_Tree_9`.`Estimator` AS `Estimator` 
FROM `XGB_Tree_9`) AS `Score_Union_CTE_esu_1`), 
`Score_Union_CTE` AS 
(SELECT `Score_Union_CTEbig_esu`.`KEY` AS `KEY`, `Score_Union_CTEbig_esu`.`Estimator` AS `Estimator` 
FROM (SELECT `Score_Union_CTE_0`.`KEY` AS `KEY`, `Score_Union_CTE_0`.`Estimator` AS `Estimator` 
FROM `Score_Union_CTE_0` UNION ALL SELECT `Score_Union_CTE_1`.`KEY` AS `KEY`, `Score_Union_CTE_1`.`Estimator` AS `Estimator` 
FROM `Score_Union_CTE_1`) AS `Score_Union_CTEbig_esu`), 
`XGB_Sum_Scores` AS 
(SELECT `T`.`KEY` AS `KEY`, `T`.`Estimator` AS `Estimator` 
FROM (SELECT `Score_Union_CTE`.`KEY` AS `KEY`, sum(`Score_Union_CTE`.`Estimator`) AS `Estimator` 
FROM `Score_Union_CTE` GROUP BY `Score_Union_CTE`.`KEY`) AS `T`)
 SELECT `XGB_Sum_Scores`.`KEY` AS `KEY`, `XGB_Sum_Scores`.`Estimator` + 0.5 AS `Estimator` 
FROM `XGB_Sum_Scores`