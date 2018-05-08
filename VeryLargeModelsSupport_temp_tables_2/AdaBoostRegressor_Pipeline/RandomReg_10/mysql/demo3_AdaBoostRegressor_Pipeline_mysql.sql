-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : AdaBoostRegressor_Pipeline
-- Dataset : RandomReg_10
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508182112_CODEGEN_PPEGOZ_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508182112_CODEGEN_PPEGOZ_ADS_imp_1_OUT` (
	`KEY` BIGINT NOT NULL, 
	impter_2 DOUBLE, 
	impter_3 DOUBLE, 
	impter_4 DOUBLE, 
	impter_5 DOUBLE, 
	impter_6 DOUBLE, 
	impter_7 DOUBLE, 
	impter_8 DOUBLE, 
	impter_9 DOUBLE, 
	impter_10 DOUBLE, 
	impter_11 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508182112_CODEGEN_PPEGOZ_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180508182112_CODEGEN_PPEGOZ_ADS_imp_1_OUT` (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT `U`.`KEY`, `U`.impter_2, `U`.impter_3, `U`.impter_4, `U`.impter_5, `U`.impter_6, `U`.impter_7, `U`.impter_8, `U`.impter_9, `U`.impter_10, `U`.impter_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.16680947298137394 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN -0.16351271994443456 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.19149292241003152 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.058384844753055345 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.09933205162122274 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.21293121660488037 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.047865568690029614 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.05078698959084227 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN -0.1913199225908187 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.19940405677473352 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `RandomReg_10` AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180508182112_CODEGEN_PPEGOZ_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508182112_CODEGEN_PPEGOZ_ADS_imp_1_OUT_KEY` ON `TMP_20180508182112_CODEGEN_PPEGOZ_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` (
	`KEY` BIGINT NOT NULL, 
	scaler_2 DOUBLE, 
	scaler_3 DOUBLE, 
	scaler_4 DOUBLE, 
	scaler_5 DOUBLE, 
	scaler_6 DOUBLE, 
	scaler_7 DOUBLE, 
	scaler_8 DOUBLE, 
	scaler_9 DOUBLE, 
	scaler_10 DOUBLE, 
	scaler_11 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT `U`.`KEY`, `U`.scaler_2, `U`.scaler_3, `U`.scaler_4, `U`.scaler_5, `U`.scaler_6, `U`.scaler_7, `U`.scaler_8, `U`.scaler_9, `U`.scaler_10, `U`.scaler_11 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.impter_2 - 0.16680947298137394) / 1.0289835997047314 AS scaler_2, (`ADS_imp_1_OUT`.impter_3 - -0.16351271994443456) / 0.9915812535046814 AS scaler_3, (`ADS_imp_1_OUT`.impter_4 - 0.19149292241003152) / 0.9321147629147756 AS scaler_4, (`ADS_imp_1_OUT`.impter_5 - 0.058384844753055345) / 1.0855729329506805 AS scaler_5, (`ADS_imp_1_OUT`.impter_6 - -0.09933205162122274) / 1.0743904412882828 AS scaler_6, (`ADS_imp_1_OUT`.impter_7 - 0.21293121660488037) / 0.9358074381886248 AS scaler_7, (`ADS_imp_1_OUT`.impter_8 - 0.047865568690029614) / 1.1363574090613386 AS scaler_8, (`ADS_imp_1_OUT`.impter_9 - 0.05078698959084227) / 0.9725457460098452 AS scaler_9, (`ADS_imp_1_OUT`.impter_10 - -0.1913199225908187) / 1.1415974677936562 AS scaler_10, (`ADS_imp_1_OUT`.impter_11 - 0.19940405677473352) / 0.882245682091319 AS scaler_11 
FROM `TMP_20180508182112_CODEGEN_PPEGOZ_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT_KEY` ON `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180508182112_CODEGEN_7J377U_WE_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508182112_CODEGEN_7J377U_WE_B0` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE, 
	`Weight` DOUBLE, 
	est_index BIGINT
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508182112_CODEGEN_7J377U_WE_B0 part 2. Populate

INSERT INTO `TMP_20180508182112_CODEGEN_7J377U_WE_B0` (`KEY`, `Estimator`, `Weight`, est_index) SELECT `U`.`KEY`, `U`.`Estimator`, `U`.`Weight`, `U`.est_index 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.9213013648986816) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.9911112785339355) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -1.0691639184951782) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.07575029134750366) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.7206276059150696) THEN 8 ELSE 9 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -1.0988624095916748) THEN 11 ELSE 12 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -258.78967128195916 AS `E` UNION ALL SELECT 4 AS nid, -459.030670753418 AS `E` UNION ALL SELECT 5 AS nid, 8.923656244969493 AS `E` UNION ALL SELECT 8 AS nid, -33.68318489379449 AS `E` UNION ALL SELECT 9 AS nid, 331.1703574482745 AS `E` UNION ALL SELECT 11 AS nid, -67.71218597426643 AS `E` UNION ALL SELECT 12 AS nid, 237.42844372247995 AS `E`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`E` AS `E` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`ADB_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`E` AS `Estimator`, 0.04446208770695428 AS `Weight`, 0 AS est_index 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.3164803087711334) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.15121608972549438) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 0.11104751378297806) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 1.3991467952728271) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.029281165450811386) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= 0.08869194984436035) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.4962504506111145) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -275.3140245822599 AS `E` UNION ALL SELECT 4 AS nid, -51.978296973080745 AS `E` UNION ALL SELECT 6 AS nid, -5.071250740277515 AS `E` UNION ALL SELECT 7 AS nid, 233.69717607109223 AS `E` UNION ALL SELECT 10 AS nid, -3.5129502029338977 AS `E` UNION ALL SELECT 11 AS nid, 188.04997667771173 AS `E` UNION ALL SELECT 13 AS nid, 140.41860719645143 AS `E` UNION ALL SELECT 14 AS nid, 315.516499408182 AS `E`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`E` AS `E` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`ADB_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`E` AS `Estimator`, 0.08664409729399586 AS `Weight`, 1 AS est_index 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.3088432848453522) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.7092622518539429) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 1.157738447189331) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= 0.43917304277420044) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= -0.05833066627383232) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.2454001009464264) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -0.5722590684890747) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -275.71317374560243 AS `E` UNION ALL SELECT 4 AS nid, -67.71218597426643 AS `E` UNION ALL SELECT 6 AS nid, 55.116699007890816 AS `E` UNION ALL SELECT 7 AS nid, -155.93422584455163 AS `E` UNION ALL SELECT 10 AS nid, -147.53184050315582 AS `E` UNION ALL SELECT 11 AS nid, 58.68288409772242 AS `E` UNION ALL SELECT 13 AS nid, 18.952518951698984 AS `E` UNION ALL SELECT 14 AS nid, 306.8298344890547 AS `E`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`E` AS `E` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`ADB_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`E` AS `Estimator`, 0.06582087696187752 AS `Weight`, 2 AS est_index 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= -0.17482367157936096) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.29165011644363403) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.9983952641487122) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= 0.07795177400112152) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.8952888250350952) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 1.7259516716003418) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.9687913656234741) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -372.6097926421876 AS `E` UNION ALL SELECT 4 AS nid, -179.49806119548728 AS `E` UNION ALL SELECT 6 AS nid, 0.03464252446700726 AS `E` UNION ALL SELECT 7 AS nid, 148.5689639947692 AS `E` UNION ALL SELECT 10 AS nid, -176.44474023597397 AS `E` UNION ALL SELECT 11 AS nid, 235.3201708856319 AS `E` UNION ALL SELECT 13 AS nid, 115.83390653339242 AS `E` UNION ALL SELECT 14 AS nid, 330.130452304522 AS `E`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`E` AS `E` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`ADB_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`E` AS `Estimator`, 0.06674897688970727 AS `Weight`, 3 AS est_index 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= -0.18856124579906464) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.1438620686531067) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= 0.05305185168981552) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -0.11842489242553711) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.1281489133834839) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.17468054592609406) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -0.6289709806442261) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -301.15376029685405 AS `E` UNION ALL SELECT 4 AS nid, -93.46844419820344 AS `E` UNION ALL SELECT 6 AS nid, -154.42942193202822 AS `E` UNION ALL SELECT 7 AS nid, 17.44341606264206 AS `E` UNION ALL SELECT 10 AS nid, -124.78009971471862 AS `E` UNION ALL SELECT 11 AS nid, 156.15648867007823 AS `E` UNION ALL SELECT 13 AS nid, -19.539222936443657 AS `E` UNION ALL SELECT 14 AS nid, 291.82620425110474 AS `E`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`E` AS `E` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`ADB_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`E` AS `Estimator`, 0.05282722213445535 AS `Weight`, 4 AS est_index 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.6720361113548279) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.7831640839576721) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.7314997315406799) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.07141511887311935) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= -0.6511744260787964) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.5487698316574097) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= -1.2757198810577393) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -362.55766377741224 AS `E` UNION ALL SELECT 4 AS nid, -123.46523883145976 AS `E` UNION ALL SELECT 6 AS nid, -83.13715970079957 AS `E` UNION ALL SELECT 7 AS nid, 159.17936544144126 AS `E` UNION ALL SELECT 10 AS nid, -9.185160907179679 AS `E` UNION ALL SELECT 11 AS nid, 38.71263785211542 AS `E` UNION ALL SELECT 13 AS nid, 447.6909835452225 AS `E` UNION ALL SELECT 14 AS nid, 303.7602778573214 AS `E`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`E` AS `E` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`ADB_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`E` AS `Estimator`, 0.042441299934227496 AS `Weight`, 5 AS est_index 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.0786014124751091) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.9847835302352905) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -0.7153770923614502) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= 1.4983563423156738) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.9687913656234741) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.1794796884059906) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 1.540496826171875) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -417.8058837771809 AS `E` UNION ALL SELECT 4 AS nid, -207.36981530703343 AS `E` UNION ALL SELECT 6 AS nid, -29.491925297145684 AS `E` UNION ALL SELECT 7 AS nid, 230.62947658635767 AS `E` UNION ALL SELECT 10 AS nid, -9.823581784704684 AS `E` UNION ALL SELECT 11 AS nid, 202.84876027465583 AS `E` UNION ALL SELECT 13 AS nid, 290.8432010120758 AS `E` UNION ALL SELECT 14 AS nid, 458.36306104498453 AS `E`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`E` AS `E` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`ADB_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`E` AS `Estimator`, 0.06829976727403611 AS `Weight`, 6 AS est_index 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 1.2706894874572754) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.7928295135498047) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.09228987991809845) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.03867048770189285) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -0.6283681988716125) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -0.3102629780769348) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= -1.9842617511749268) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -301.78584225936794 AS `E` UNION ALL SELECT 4 AS nid, -74.26631713904239 AS `E` UNION ALL SELECT 6 AS nid, -22.154561867405427 AS `E` UNION ALL SELECT 7 AS nid, 171.3986356876689 AS `E` UNION ALL SELECT 10 AS nid, 116.8891961793557 AS `E` UNION ALL SELECT 11 AS nid, 243.63801061508232 AS `E` UNION ALL SELECT 13 AS nid, 447.6909835452225 AS `E` UNION ALL SELECT 14 AS nid, 331.09987338331797 AS `E`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`E` AS `E` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`ADB_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`E` AS `Estimator`, 0.046873421003428055 AS `Weight`, 7 AS est_index 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.40778040885925293) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.8239620923995972) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.9847835302352905) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.6641252040863037) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.3550954759120941) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= 0.1158517375588417) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.4980769157409668) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -213.20347714113592 AS `E` UNION ALL SELECT 4 AS nid, -63.814558671282754 AS `E` UNION ALL SELECT 6 AS nid, 198.97164294103214 AS `E` UNION ALL SELECT 7 AS nid, 376.9384086101691 AS `E` UNION ALL SELECT 10 AS nid, 144.424454256417 AS `E` UNION ALL SELECT 11 AS nid, -32.93760686572384 AS `E` UNION ALL SELECT 13 AS nid, 212.77017134367168 AS `E` UNION ALL SELECT 14 AS nid, 376.7944341234486 AS `E`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`E` AS `E` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`ADB_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`E` AS `Estimator`, 0.05534587611829534 AS `Weight`, 8 AS est_index 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.8926389217376709) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.7732986211776733) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.509257435798645) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= 0.4057862162590027) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.4446532130241394) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.9403623342514038) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 1.6310184001922607) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -459.03067075341806 AS `E` UNION ALL SELECT 4 AS nid, -273.12284471942644 AS `E` UNION ALL SELECT 6 AS nid, -20.4235287408218 AS `E` UNION ALL SELECT 7 AS nid, 58.56592202346141 AS `E` UNION ALL SELECT 10 AS nid, -252.2686492152819 AS `E` UNION ALL SELECT 11 AS nid, 78.77562259059067 AS `E` UNION ALL SELECT 13 AS nid, 202.90753073398878 AS `E` UNION ALL SELECT 14 AS nid, 428.2582628618327 AS `E`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.nid AS nid, `DT_node_data_9`.`E` AS `E` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.nid), 
`ADB_Model_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`E` AS `Estimator`, 0.08723375290547038 AS `Weight`, 9 AS est_index 
FROM `DT_Output_9`)
 SELECT `WE_B0`.`KEY`, `WE_B0`.`Estimator`, `WE_B0`.`Weight`, `WE_B0`.est_index 
FROM (SELECT `WE_esu_0`.`KEY` AS `KEY`, `WE_esu_0`.`Estimator` AS `Estimator`, `WE_esu_0`.`Weight` AS `Weight`, `WE_esu_0`.est_index AS est_index 
FROM (SELECT `ADB_Model_0`.`KEY` AS `KEY`, `ADB_Model_0`.`Estimator` AS `Estimator`, `ADB_Model_0`.`Weight` AS `Weight`, `ADB_Model_0`.est_index AS est_index 
FROM `ADB_Model_0` UNION ALL SELECT `ADB_Model_1`.`KEY` AS `KEY`, `ADB_Model_1`.`Estimator` AS `Estimator`, `ADB_Model_1`.`Weight` AS `Weight`, `ADB_Model_1`.est_index AS est_index 
FROM `ADB_Model_1` UNION ALL SELECT `ADB_Model_2`.`KEY` AS `KEY`, `ADB_Model_2`.`Estimator` AS `Estimator`, `ADB_Model_2`.`Weight` AS `Weight`, `ADB_Model_2`.est_index AS est_index 
FROM `ADB_Model_2` UNION ALL SELECT `ADB_Model_3`.`KEY` AS `KEY`, `ADB_Model_3`.`Estimator` AS `Estimator`, `ADB_Model_3`.`Weight` AS `Weight`, `ADB_Model_3`.est_index AS est_index 
FROM `ADB_Model_3` UNION ALL SELECT `ADB_Model_4`.`KEY` AS `KEY`, `ADB_Model_4`.`Estimator` AS `Estimator`, `ADB_Model_4`.`Weight` AS `Weight`, `ADB_Model_4`.est_index AS est_index 
FROM `ADB_Model_4` UNION ALL SELECT `ADB_Model_5`.`KEY` AS `KEY`, `ADB_Model_5`.`Estimator` AS `Estimator`, `ADB_Model_5`.`Weight` AS `Weight`, `ADB_Model_5`.est_index AS est_index 
FROM `ADB_Model_5` UNION ALL SELECT `ADB_Model_6`.`KEY` AS `KEY`, `ADB_Model_6`.`Estimator` AS `Estimator`, `ADB_Model_6`.`Weight` AS `Weight`, `ADB_Model_6`.est_index AS est_index 
FROM `ADB_Model_6` UNION ALL SELECT `ADB_Model_7`.`KEY` AS `KEY`, `ADB_Model_7`.`Estimator` AS `Estimator`, `ADB_Model_7`.`Weight` AS `Weight`, `ADB_Model_7`.est_index AS est_index 
FROM `ADB_Model_7` UNION ALL SELECT `ADB_Model_8`.`KEY` AS `KEY`, `ADB_Model_8`.`Estimator` AS `Estimator`, `ADB_Model_8`.`Weight` AS `Weight`, `ADB_Model_8`.est_index AS est_index 
FROM `ADB_Model_8` UNION ALL SELECT `ADB_Model_9`.`KEY` AS `KEY`, `ADB_Model_9`.`Estimator` AS `Estimator`, `ADB_Model_9`.`Weight` AS `Weight`, `ADB_Model_9`.est_index AS est_index 
FROM `ADB_Model_9`) AS `WE_esu_0`) AS `WE_B0`) AS `U`

-- Code For temporary table TMP_20180508182112_CODEGEN_FR7U14_WE_B1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508182112_CODEGEN_FR7U14_WE_B1` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE, 
	`Weight` DOUBLE, 
	est_index BIGINT
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508182112_CODEGEN_FR7U14_WE_B1 part 2. Populate

INSERT INTO `TMP_20180508182112_CODEGEN_FR7U14_WE_B1` (`KEY`, `Estimator`, `Weight`, est_index) SELECT `U`.`KEY`, `U`.`Estimator`, `U`.`Weight`, `U`.est_index 
FROM (WITH `DT_node_lookup_10` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.9428368806838989) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.6926335096359253) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.4225664734840393) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.03867048770189285) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.9782909154891968) THEN 8 ELSE 9 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 1.2706894874572754) THEN 11 ELSE 12 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -375.1539668400623 AS `E` UNION ALL SELECT 4 AS nid, -189.8018001744999 AS `E` UNION ALL SELECT 5 AS nid, 325.0738816201826 AS `E` UNION ALL SELECT 8 AS nid, -74.16411287704308 AS `E` UNION ALL SELECT 9 AS nid, 215.34737912146102 AS `E` UNION ALL SELECT 11 AS nid, 153.17367712046337 AS `E` UNION ALL SELECT 12 AS nid, 358.7357714280424 AS `E`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`E` AS `E` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`ADB_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`E` AS `Estimator`, 0.038809907037760126 AS `Weight`, 10 AS est_index 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.014573076739907265) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.4523373246192932) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -1.0613932609558105) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.8048515319824219) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.0013421755284070969) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.29165011644363403) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.9415285587310791) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -319.80183820518755 AS `E` UNION ALL SELECT 4 AS nid, -446.8172118364044 AS `E` UNION ALL SELECT 6 AS nid, -266.8202258688374 AS `E` UNION ALL SELECT 7 AS nid, -154.01730507475207 AS `E` UNION ALL SELECT 10 AS nid, -155.09122813008221 AS `E` UNION ALL SELECT 11 AS nid, 101.90332661789155 AS `E` UNION ALL SELECT 13 AS nid, 183.70759149944826 AS `E` UNION ALL SELECT 14 AS nid, 409.420212416183 AS `E`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`E` AS `E` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`ADB_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`E` AS `Estimator`, 0.07764628429256809 AS `Weight`, 11 AS est_index 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.8831796050071716) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.5923108458518982) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.27474021911621094) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= 0.4057862162590027) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.9750680923461914) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.6163085699081421) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.12294009327888489) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -264.3179172951439 AS `E` UNION ALL SELECT 4 AS nid, -459.030670753418 AS `E` UNION ALL SELECT 6 AS nid, -26.880271737136272 AS `E` UNION ALL SELECT 7 AS nid, 58.56592202346141 AS `E` UNION ALL SELECT 10 AS nid, -47.128289538683944 AS `E` UNION ALL SELECT 11 AS nid, 216.12984346020096 AS `E` UNION ALL SELECT 13 AS nid, 260.80290006208634 AS `E` UNION ALL SELECT 14 AS nid, 462.9873729049727 AS `E`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`E` AS `E` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`ADB_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`E` AS `Estimator`, 0.06110622801176306 AS `Weight`, 12 AS est_index 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.14761683344841003) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.058781277388334274) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 0.5421498417854309) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 1.5048580169677734) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.70365309715271) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.09533122181892395) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 1.8639471530914307) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -326.10198511368253 AS `E` UNION ALL SELECT 4 AS nid, -181.5117298102302 AS `E` UNION ALL SELECT 6 AS nid, -8.897965018937406 AS `E` UNION ALL SELECT 7 AS nid, 351.37130796411674 AS `E` UNION ALL SELECT 10 AS nid, 19.841626270219137 AS `E` UNION ALL SELECT 11 AS nid, 259.01559019368403 AS `E` UNION ALL SELECT 13 AS nid, 314.2194981103516 AS `E` UNION ALL SELECT 14 AS nid, 479.70721604450864 AS `E`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`E` AS `E` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`ADB_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`E` AS `Estimator`, 0.08200998648424274 AS `Weight`, 13 AS est_index 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= -0.014908550307154655) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.29165011644363403) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.6156718730926514) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.7224338054656982) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 1.540496826171875) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -1.041670322418213) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= 0.42489510774612427) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -353.6403522160441 AS `E` UNION ALL SELECT 4 AS nid, -165.23670331580712 AS `E` UNION ALL SELECT 6 AS nid, -9.617958070006466 AS `E` UNION ALL SELECT 7 AS nid, 211.2028693831088 AS `E` UNION ALL SELECT 10 AS nid, -111.96115355506403 AS `E` UNION ALL SELECT 11 AS nid, 182.9121411176754 AS `E` UNION ALL SELECT 13 AS nid, 459.6970707324548 AS `E` UNION ALL SELECT 14 AS nid, 235.3201708856319 AS `E`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`E` AS `E` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`ADB_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`E` AS `Estimator`, 0.07665120690259909 AS `Weight`, 14 AS est_index 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.6936891078948975) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.8856448531150818) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.037589069455862045) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.029281165450811386) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.6542105674743652) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.16496342420578003) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.8514721989631653) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180508182112_CODEGEN_KI0L8K_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 3 AS nid, -350.4849793104147 AS `E` UNION ALL SELECT 4 AS nid, -136.46667135000865 AS `E` UNION ALL SELECT 6 AS nid, -85.8354336830041 AS `E` UNION ALL SELECT 7 AS nid, 184.7984725101791 AS `E` UNION ALL SELECT 10 AS nid, -24.728024071698115 AS `E` UNION ALL SELECT 11 AS nid, -101.20974879377152 AS `E` UNION ALL SELECT 13 AS nid, 60.83005801950535 AS `E` UNION ALL SELECT 14 AS nid, 361.888983724582 AS `E`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.nid AS nid, `DT_node_data_15`.`E` AS `E` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.nid), 
`ADB_Model_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`E` AS `Estimator`, 0.047079009048619315 AS `Weight`, 15 AS est_index 
FROM `DT_Output_15`)
 SELECT `WE_B1`.`KEY`, `WE_B1`.`Estimator`, `WE_B1`.`Weight`, `WE_B1`.est_index 
FROM (SELECT `WE_esu_1`.`KEY` AS `KEY`, `WE_esu_1`.`Estimator` AS `Estimator`, `WE_esu_1`.`Weight` AS `Weight`, `WE_esu_1`.est_index AS est_index 
FROM (SELECT `ADB_Model_10`.`KEY` AS `KEY`, `ADB_Model_10`.`Estimator` AS `Estimator`, `ADB_Model_10`.`Weight` AS `Weight`, `ADB_Model_10`.est_index AS est_index 
FROM `ADB_Model_10` UNION ALL SELECT `ADB_Model_11`.`KEY` AS `KEY`, `ADB_Model_11`.`Estimator` AS `Estimator`, `ADB_Model_11`.`Weight` AS `Weight`, `ADB_Model_11`.est_index AS est_index 
FROM `ADB_Model_11` UNION ALL SELECT `ADB_Model_12`.`KEY` AS `KEY`, `ADB_Model_12`.`Estimator` AS `Estimator`, `ADB_Model_12`.`Weight` AS `Weight`, `ADB_Model_12`.est_index AS est_index 
FROM `ADB_Model_12` UNION ALL SELECT `ADB_Model_13`.`KEY` AS `KEY`, `ADB_Model_13`.`Estimator` AS `Estimator`, `ADB_Model_13`.`Weight` AS `Weight`, `ADB_Model_13`.est_index AS est_index 
FROM `ADB_Model_13` UNION ALL SELECT `ADB_Model_14`.`KEY` AS `KEY`, `ADB_Model_14`.`Estimator` AS `Estimator`, `ADB_Model_14`.`Weight` AS `Weight`, `ADB_Model_14`.est_index AS est_index 
FROM `ADB_Model_14` UNION ALL SELECT `ADB_Model_15`.`KEY` AS `KEY`, `ADB_Model_15`.`Estimator` AS `Estimator`, `ADB_Model_15`.`Weight` AS `Weight`, `ADB_Model_15`.est_index AS est_index 
FROM `ADB_Model_15`) AS `WE_esu_1`) AS `WE_B1`) AS `U`

-- Code For temporary table TMP_20180508182112_CODEGEN_KVL6CT_WE_Union part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508182112_CODEGEN_KVL6CT_WE_Union` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE, 
	`Weight` DOUBLE, 
	est_index BIGINT
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508182112_CODEGEN_KVL6CT_WE_Union part 2. Populate

INSERT INTO `TMP_20180508182112_CODEGEN_KVL6CT_WE_Union` (`KEY`, `Estimator`, `Weight`, est_index) SELECT `U`.`KEY`, `U`.`Estimator`, `U`.`Weight`, `U`.est_index 
FROM (SELECT `WE_Union`.`KEY`, `WE_Union`.`Estimator`, `WE_Union`.`Weight`, `WE_Union`.est_index 
FROM (SELECT `WE_EnsembleUnion`.`KEY` AS `KEY`, `WE_EnsembleUnion`.`Estimator` AS `Estimator`, `WE_EnsembleUnion`.`Weight` AS `Weight`, `WE_EnsembleUnion`.est_index AS est_index 
FROM (SELECT `WE_B0`.`KEY` AS `KEY`, `WE_B0`.`Estimator` AS `Estimator`, `WE_B0`.`Weight` AS `Weight`, `WE_B0`.est_index AS est_index 
FROM `TMP_20180508182112_CODEGEN_7J377U_WE_B0` AS `WE_B0` UNION ALL SELECT `WE_B1`.`KEY` AS `KEY`, `WE_B1`.`Estimator` AS `Estimator`, `WE_B1`.`Weight` AS `Weight`, `WE_B1`.est_index AS est_index 
FROM `TMP_20180508182112_CODEGEN_FR7U14_WE_B1` AS `WE_B1`) AS `WE_EnsembleUnion`) AS `WE_Union`) AS `U`

-- Code For temporary table TMP_20180508182112_CODEGEN_299FTX_Quantiles part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508182112_CODEGEN_299FTX_Quantiles` (
	`KEY` BIGINT, 
	`Quantile` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508182112_CODEGEN_299FTX_Quantiles part 2. Populate

INSERT INTO `TMP_20180508182112_CODEGEN_299FTX_Quantiles` (`KEY`, `Quantile`) SELECT `U`.`KEY`, `U`.`Quantile` 
FROM (WITH `Cumulative_Frequencies` AS 
(SELECT `CW`.`KEY` AS `KEY`, `CW`.`Estimator` AS `Estimator`, `CW`.`Weight` AS `Weight`, `CW`.est_index AS est_index, `CW`.cum_weight AS cum_weight 
FROM (SELECT u1.`KEY` AS `KEY`, u1.`Estimator` AS `Estimator`, u1.`Weight` AS `Weight`, u1.est_index AS est_index, sum(u2.`Weight`) AS cum_weight 
FROM `TMP_20180508182112_CODEGEN_KVL6CT_WE_Union` AS u1, `TMP_20180508182112_CODEGEN_KVL6CT_WE_Union` AS u2 
WHERE u1.`Estimator` >= u2.`Estimator` AND u1.`KEY` = u2.`KEY` GROUP BY u1.`KEY`, u1.est_index, u1.`Estimator`, u1.`Weight`) AS `CW`)
 SELECT `Quantiles`.`KEY`, `Quantiles`.`Quantile` 
FROM (SELECT `CW2`.`KEY` AS `KEY`, `CW2`.`Quantile` AS `Quantile` 
FROM (SELECT `Cumulative_Frequencies`.`KEY` AS `KEY`, min(`Cumulative_Frequencies`.`Estimator`) AS `Quantile` 
FROM `Cumulative_Frequencies` 
WHERE `Cumulative_Frequencies`.cum_weight >= 0.5 GROUP BY `Cumulative_Frequencies`.`KEY`) AS `CW2`) AS `Quantiles`) AS `U`

-- Model deployment code

SELECT `Quantiles`.`KEY` AS `KEY`, `Quantiles`.`Quantile` AS `Estimator` 
FROM `TMP_20180508182112_CODEGEN_299FTX_Quantiles` AS `Quantiles`