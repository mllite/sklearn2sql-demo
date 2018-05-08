-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBRegressor
-- Dataset : RandomReg_10
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508182430_CODEGEN_0TY2SN_XGB_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508182430_CODEGEN_0TY2SN_XGB_B0` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508182430_CODEGEN_0TY2SN_XGB_B0 part 2. Populate

INSERT INTO `TMP_20180508182430_CODEGEN_0TY2SN_XGB_B0` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.48648887872695923) THEN CASE WHEN (`ADS`.`Feature_5` < -0.6670668125152588) THEN 3 ELSE CASE WHEN (`ADS`.`Feature_8` < -0.10979260504245758) THEN 7 ELSE 8 END END ELSE CASE WHEN (`ADS`.`Feature_1` < -0.5779649615287781) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_8` < -0.06810655444860458) THEN 9 ELSE 10 END END END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, -22.155038833618164 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.1371171921491623 AS `Estimator` UNION ALL SELECT 7 AS nid, -8.404426574707031 AS `Estimator` UNION ALL SELECT 8 AS nid, 13.90919017791748 AS `Estimator` UNION ALL SELECT 9 AS nid, 16.5261173248291 AS `Estimator` UNION ALL SELECT 10 AS nid, 26.465993881225586 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`XGB_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.48648887872695923) THEN CASE WHEN (`ADS`.`Feature_7` < 0.48319584131240845) THEN CASE WHEN (`ADS`.`Feature_5` < -0.6670668125152588) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` < -0.5779649615287781) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_8` < -0.06810655444860458) THEN 9 ELSE 10 END END END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 4 AS nid, 9.778855323791504 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.12465210258960724 AS `Estimator` UNION ALL SELECT 7 AS nid, -21.083234786987305 AS `Estimator` UNION ALL SELECT 8 AS nid, -5.810722351074219 AS `Estimator` UNION ALL SELECT 9 AS nid, 15.023741722106934 AS `Estimator` UNION ALL SELECT 10 AS nid, 24.059995651245117 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`XGB_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.7659631967544556) THEN CASE WHEN (`ADS`.`Feature_1` < -0.3098868131637573) THEN CASE WHEN (`ADS`.`Feature_5` < 0.26793915033340454) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_8` < -0.06810655444860458) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, 16.941801071166992 AS `Estimator` UNION ALL SELECT 5 AS nid, -20.199092864990234 AS `Estimator` UNION ALL SELECT 6 AS nid, -3.550792694091797 AS `Estimator` UNION ALL SELECT 7 AS nid, -4.642592906951904 AS `Estimator` UNION ALL SELECT 8 AS nid, 17.064096450805664 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`XGB_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < -0.3908981680870056) THEN CASE WHEN (`ADS`.`Feature_6` < -0.16602689027786255) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_5` < -0.6784075498580933) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_1` < -0.5763004422187805) THEN 7 ELSE 8 END END END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, -14.395660400390625 AS `Estimator` UNION ALL SELECT 4 AS nid, -2.301922082901001 AS `Estimator` UNION ALL SELECT 5 AS nid, -8.532238006591797 AS `Estimator` UNION ALL SELECT 7 AS nid, 2.0144879817962646 AS `Estimator` UNION ALL SELECT 8 AS nid, 16.57676124572754 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`XGB_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.7659631967544556) THEN CASE WHEN (`ADS`.`Feature_1` < -0.3098868131637573) THEN CASE WHEN (`ADS`.`Feature_5` < -0.39992862939834595) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_8` < -0.06810655444860458) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, 14.832307815551758 AS `Estimator` UNION ALL SELECT 5 AS nid, -19.02397918701172 AS `Estimator` UNION ALL SELECT 6 AS nid, -4.534415245056152 AS `Estimator` UNION ALL SELECT 7 AS nid, -3.971592426300049 AS `Estimator` UNION ALL SELECT 8 AS nid, 14.045598030090332 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`XGB_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`Estimator` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < -0.20833948254585266) THEN CASE WHEN (`ADS`.`Feature_3` < -0.0790497213602066) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_5` < -0.6784075498580933) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_0` < -0.3223276734352112) THEN 7 ELSE 8 END END END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, -11.284990310668945 AS `Estimator` UNION ALL SELECT 4 AS nid, -1.6324472427368164 AS `Estimator` UNION ALL SELECT 5 AS nid, -6.995410442352295 AS `Estimator` UNION ALL SELECT 7 AS nid, 3.276987075805664 AS `Estimator` UNION ALL SELECT 8 AS nid, 17.257299423217773 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`XGB_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`Estimator` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.7659631967544556) THEN CASE WHEN (`ADS`.`Feature_1` < -0.3098868131637573) THEN CASE WHEN (`ADS`.`Feature_5` < 0.26793915033340454) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_8` < -0.06810655444860458) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, 12.925868034362793 AS `Estimator` UNION ALL SELECT 5 AS nid, -15.253242492675781 AS `Estimator` UNION ALL SELECT 6 AS nid, -2.887866973876953 AS `Estimator` UNION ALL SELECT 7 AS nid, -3.274099826812744 AS `Estimator` UNION ALL SELECT 8 AS nid, 11.653290748596191 AS `Estimator`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`XGB_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`Estimator` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.48648887872695923) THEN CASE WHEN (`ADS`.`Feature_7` < 0.12788641452789307) THEN CASE WHEN (`ADS`.`Feature_6` < -0.19785264134407043) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_5` < 0.609578013420105) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_4` < -0.18378067016601562) THEN 5 ELSE 6 END END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 5 AS nid, -0.29980388283729553 AS `Estimator` UNION ALL SELECT 6 AS nid, 13.997415542602539 AS `Estimator` UNION ALL SELECT 7 AS nid, -14.787727355957031 AS `Estimator` UNION ALL SELECT 8 AS nid, -3.8101868629455566 AS `Estimator` UNION ALL SELECT 9 AS nid, -2.2124812602996826 AS `Estimator` UNION ALL SELECT 10 AS nid, 10.032784461975098 AS `Estimator`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`XGB_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`Estimator` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < 1.3158717155456543) THEN CASE WHEN (`ADS`.`Feature_1` < -0.10812132060527802) THEN CASE WHEN (`ADS`.`Feature_5` < -0.5290045142173767) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.5375064611434937) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, 15.438780784606934 AS `Estimator` UNION ALL SELECT 5 AS nid, -15.28858470916748 AS `Estimator` UNION ALL SELECT 6 AS nid, -1.8839603662490845 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.824749767780304 AS `Estimator` UNION ALL SELECT 8 AS nid, 13.91795825958252 AS `Estimator`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`XGB_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`Estimator` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_4` < -0.5162992477416992) THEN CASE WHEN (`ADS`.`Feature_6` < 0.8849396109580994) THEN CASE WHEN (`ADS`.`Feature_3` < -0.11357904970645905) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_8` < -0.5495923757553101) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_2` < 0.27253204584121704) THEN 9 ELSE 10 END END END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 4 AS nid, 3.2215232849121094 AS `Estimator` UNION ALL SELECT 5 AS nid, -3.3912010192871094 AS `Estimator` UNION ALL SELECT 7 AS nid, -14.086405754089355 AS `Estimator` UNION ALL SELECT 8 AS nid, -5.727645397186279 AS `Estimator` UNION ALL SELECT 9 AS nid, 2.9069461822509766 AS `Estimator` UNION ALL SELECT 10 AS nid, 13.076863288879395 AS `Estimator`) AS `Values`), 
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

-- Code For temporary table TMP_20180508182430_CODEGEN_PUSBRO_XGB_B1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508182430_CODEGEN_PUSBRO_XGB_B1` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508182430_CODEGEN_PUSBRO_XGB_B1 part 2. Populate

INSERT INTO `TMP_20180508182430_CODEGEN_PUSBRO_XGB_B1` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup_10` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_4` < -0.9727684259414673) THEN 1 ELSE CASE WHEN (`ADS`.`Feature_8` < -0.5495923757553101) THEN CASE WHEN (`ADS`.`Feature_7` < 0.0455145500600338) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_2` < -0.3419182002544403) THEN 7 ELSE 8 END END END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 1 AS nid, -8.471076011657715 AS `Estimator` UNION ALL SELECT 5 AS nid, -8.676445007324219 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.826964795589447 AS `Estimator` UNION ALL SELECT 7 AS nid, -0.7917702794075012 AS `Estimator` UNION ALL SELECT 8 AS nid, 10.364592552185059 AS `Estimator`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`XGB_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`Estimator` AS `Estimator` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` < -0.3098868131637573) THEN CASE WHEN (`ADS`.`Feature_5` < -0.5290045142173767) THEN 3 ELSE CASE WHEN (`ADS`.`Feature_8` < -0.12585143744945526) THEN 7 ELSE 8 END END ELSE CASE WHEN (`ADS`.`Feature_8` < -0.3908981680870056) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_0` < 0.7859629988670349) THEN 9 ELSE 10 END END END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 3 AS nid, -12.34475326538086 AS `Estimator` UNION ALL SELECT 5 AS nid, -2.3250603675842285 AS `Estimator` UNION ALL SELECT 7 AS nid, -4.43468713760376 AS `Estimator` UNION ALL SELECT 8 AS nid, 6.317233562469482 AS `Estimator` UNION ALL SELECT 9 AS nid, 4.707091808319092 AS `Estimator` UNION ALL SELECT 10 AS nid, 14.158080101013184 AS `Estimator`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`XGB_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`Estimator` AS `Estimator` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.9449615478515625) THEN CASE WHEN (`ADS`.`Feature_7` < 0.7779803276062012) THEN CASE WHEN (`ADS`.`Feature_4` < -1.0482118129730225) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, 9.931203842163086 AS `Estimator` UNION ALL SELECT 4 AS nid, 7.431036472320557 AS `Estimator` UNION ALL SELECT 5 AS nid, -12.575167655944824 AS `Estimator` UNION ALL SELECT 6 AS nid, -2.1470630168914795 AS `Estimator`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`XGB_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`Estimator` AS `Estimator` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < 1.3158717155456543) THEN CASE WHEN (`ADS`.`Feature_1` < -0.10812132060527802) THEN CASE WHEN (`ADS`.`Feature_5` < -0.5290045142173767) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.5375064611434937) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, 11.724964141845703 AS `Estimator` UNION ALL SELECT 5 AS nid, -11.475015640258789 AS `Estimator` UNION ALL SELECT 6 AS nid, -1.759722113609314 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.4656667709350586 AS `Estimator` UNION ALL SELECT 8 AS nid, 10.198412895202637 AS `Estimator`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`XGB_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`Estimator` AS `Estimator` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < 1.3158717155456543) THEN CASE WHEN (`ADS`.`Feature_1` < -0.10812132060527802) THEN CASE WHEN (`ADS`.`Feature_3` < 0.2472899854183197) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.5375064611434937) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS nid, 10.659058570861816 AS `Estimator` UNION ALL SELECT 5 AS nid, -8.06911563873291 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.42630884051322937 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.421124666929245 AS `Estimator` UNION ALL SELECT 8 AS nid, 9.271284103393555 AS `Estimator`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`XGB_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`Estimator` AS `Estimator` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < -0.4826481342315674) THEN 1 ELSE CASE WHEN (`ADS`.`Feature_8` < -0.1578926146030426) THEN CASE WHEN (`ADS`.`Feature_1` < -0.006160072982311249) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_5` < -0.3644486665725708) THEN 7 ELSE 8 END END END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 1 AS nid, -6.133334159851074 AS `Estimator` UNION ALL SELECT 5 AS nid, -4.635502338409424 AS `Estimator` UNION ALL SELECT 6 AS nid, 1.3295211791992188 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.3705681562423706 AS `Estimator` UNION ALL SELECT 8 AS nid, 9.8074369430542 AS `Estimator`) AS `Values`), 
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

-- Code For temporary table TMP_20180508182430_CODEGEN_F2K77U_XGB_Union part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508182430_CODEGEN_F2K77U_XGB_Union` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508182430_CODEGEN_F2K77U_XGB_Union part 2. Populate

INSERT INTO `TMP_20180508182430_CODEGEN_F2K77U_XGB_Union` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (SELECT `XGB_Union`.`KEY`, `XGB_Union`.`Estimator` 
FROM (SELECT `XGB_EnsembleUnion`.`KEY` AS `KEY`, `XGB_EnsembleUnion`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_B0`.`KEY` AS `KEY`, `XGB_B0`.`Estimator` AS `Estimator` 
FROM `TMP_20180508182430_CODEGEN_0TY2SN_XGB_B0` AS `XGB_B0` UNION ALL SELECT `XGB_B1`.`KEY` AS `KEY`, `XGB_B1`.`Estimator` AS `Estimator` 
FROM `TMP_20180508182430_CODEGEN_PUSBRO_XGB_B1` AS `XGB_B1`) AS `XGB_EnsembleUnion`) AS `XGB_Union`) AS `U`

-- Code For temporary table TMP_20180508182430_CODEGEN_857H69_XGB_sum part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508182430_CODEGEN_857H69_XGB_sum` (
	`KEY` BIGINT NOT NULL, 
	`Estimator` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508182430_CODEGEN_857H69_XGB_sum part 2. Populate

INSERT INTO `TMP_20180508182430_CODEGEN_857H69_XGB_sum` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (SELECT `XGB_sum`.`KEY`, `XGB_sum`.`Estimator` 
FROM (SELECT `T`.`KEY` AS `KEY`, `T`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_Union`.`KEY` AS `KEY`, sum(`XGB_Union`.`Estimator`) AS `Estimator` 
FROM `TMP_20180508182430_CODEGEN_F2K77U_XGB_Union` AS `XGB_Union` GROUP BY `XGB_Union`.`KEY`) AS `T`) AS `XGB_sum`) AS `U`

-- Code For temporary table TMP_20180508182430_CODEGEN_857H69_XGB_sum part 3. Create Index 

CREATE INDEX `ix_TMP_20180508182430_CODEGEN_857H69_XGB_sum_KEY` ON `TMP_20180508182430_CODEGEN_857H69_XGB_sum` (`KEY`)

-- Model deployment code

SELECT `XGB_sum`.`KEY` AS `KEY`, `XGB_sum`.`Estimator` + 0.5 AS `Estimator` 
FROM `TMP_20180508182430_CODEGEN_857H69_XGB_sum` AS `XGB_sum`