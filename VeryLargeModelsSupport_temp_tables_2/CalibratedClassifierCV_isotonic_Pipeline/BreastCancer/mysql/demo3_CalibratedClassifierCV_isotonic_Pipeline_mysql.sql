-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_isotonic_Pipeline
-- Dataset : BreastCancer
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508180656_CODEGEN_SOR6C5_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508180656_CODEGEN_SOR6C5_ADS_imp_1_OUT` (
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
	impter_12 DOUBLE, 
	impter_13 DOUBLE, 
	impter_14 DOUBLE, 
	impter_15 DOUBLE, 
	impter_16 DOUBLE, 
	impter_17 DOUBLE, 
	impter_18 DOUBLE, 
	impter_19 DOUBLE, 
	impter_20 DOUBLE, 
	impter_21 DOUBLE, 
	impter_22 DOUBLE, 
	impter_23 DOUBLE, 
	impter_24 DOUBLE, 
	impter_25 DOUBLE, 
	impter_26 DOUBLE, 
	impter_27 DOUBLE, 
	impter_28 DOUBLE, 
	impter_29 DOUBLE, 
	impter_30 DOUBLE, 
	impter_31 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508180656_CODEGEN_SOR6C5_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180508180656_CODEGEN_SOR6C5_ADS_imp_1_OUT` (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14, impter_15, impter_16, impter_17, impter_18, impter_19, impter_20, impter_21, impter_22, impter_23, impter_24, impter_25, impter_26, impter_27, impter_28, impter_29, impter_30, impter_31) SELECT `U`.`KEY`, `U`.impter_2, `U`.impter_3, `U`.impter_4, `U`.impter_5, `U`.impter_6, `U`.impter_7, `U`.impter_8, `U`.impter_9, `U`.impter_10, `U`.impter_11, `U`.impter_12, `U`.impter_13, `U`.impter_14, `U`.impter_15, `U`.impter_16, `U`.impter_17, `U`.impter_18, `U`.impter_19, `U`.impter_20, `U`.impter_21, `U`.impter_22, `U`.impter_23, `U`.impter_24, `U`.impter_25, `U`.impter_26, `U`.impter_27, `U`.impter_28, `U`.impter_29, `U`.impter_30, `U`.impter_31 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11, `ADS_imp_1_OUT`.impter_12, `ADS_imp_1_OUT`.impter_13, `ADS_imp_1_OUT`.impter_14, `ADS_imp_1_OUT`.impter_15, `ADS_imp_1_OUT`.impter_16, `ADS_imp_1_OUT`.impter_17, `ADS_imp_1_OUT`.impter_18, `ADS_imp_1_OUT`.impter_19, `ADS_imp_1_OUT`.impter_20, `ADS_imp_1_OUT`.impter_21, `ADS_imp_1_OUT`.impter_22, `ADS_imp_1_OUT`.impter_23, `ADS_imp_1_OUT`.impter_24, `ADS_imp_1_OUT`.impter_25, `ADS_imp_1_OUT`.impter_26, `ADS_imp_1_OUT`.impter_27, `ADS_imp_1_OUT`.impter_28, `ADS_imp_1_OUT`.impter_29, `ADS_imp_1_OUT`.impter_30, `ADS_imp_1_OUT`.impter_31 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 14.077712087912083 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 19.03905494505495 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 91.66178021978023 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 650.9676923076925 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.09642184615384615 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.10441613186813191 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.08826232681318694 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.048516399999999966 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.1815885714285715 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.06294030769230768 ELSE `ADS`.`Feature_9` END AS impter_11, CASE WHEN (`ADS`.`Feature_10` IS NULL) THEN 0.4099173626373627 ELSE `ADS`.`Feature_10` END AS impter_12, CASE WHEN (`ADS`.`Feature_11` IS NULL) THEN 1.2170694505494501 ELSE `ADS`.`Feature_11` END AS impter_13, CASE WHEN (`ADS`.`Feature_12` IS NULL) THEN 2.90524901098901 ELSE `ADS`.`Feature_12` END AS impter_14, CASE WHEN (`ADS`.`Feature_13` IS NULL) THEN 40.87988571428572 ELSE `ADS`.`Feature_13` END AS impter_15, CASE WHEN (`ADS`.`Feature_14` IS NULL) THEN 0.007055971428571433 ELSE `ADS`.`Feature_14` END AS impter_16, CASE WHEN (`ADS`.`Feature_15` IS NULL) THEN 0.025567830769230776 ELSE `ADS`.`Feature_15` END AS impter_17, CASE WHEN (`ADS`.`Feature_16` IS NULL) THEN 0.03199925626373623 ELSE `ADS`.`Feature_16` END AS impter_18, CASE WHEN (`ADS`.`Feature_17` IS NULL) THEN 0.011972369230769237 ELSE `ADS`.`Feature_17` END AS impter_19, CASE WHEN (`ADS`.`Feature_18` IS NULL) THEN 0.020896200000000014 ELSE `ADS`.`Feature_18` END AS impter_20, CASE WHEN (`ADS`.`Feature_19` IS NULL) THEN 0.0038465518681318647 ELSE `ADS`.`Feature_19` END AS impter_21, CASE WHEN (`ADS`.`Feature_20` IS NULL) THEN 16.17776483516484 ELSE `ADS`.`Feature_20` END AS impter_22, CASE WHEN (`ADS`.`Feature_21` IS NULL) THEN 25.26505494505494 ELSE `ADS`.`Feature_21` END AS impter_23, CASE WHEN (`ADS`.`Feature_22` IS NULL) THEN 106.68156043956041 ELSE `ADS`.`Feature_22` END AS impter_24, CASE WHEN (`ADS`.`Feature_23` IS NULL) THEN 870.8639560439567 ELSE `ADS`.`Feature_23` END AS impter_25, CASE WHEN (`ADS`.`Feature_24` IS NULL) THEN 0.1318275604395605 ELSE `ADS`.`Feature_24` END AS impter_26, CASE WHEN (`ADS`.`Feature_25` IS NULL) THEN 0.24991806593406582 ELSE `ADS`.`Feature_25` END AS impter_27, CASE WHEN (`ADS`.`Feature_26` IS NULL) THEN 0.2654615934065932 ELSE `ADS`.`Feature_26` END AS impter_28, CASE WHEN (`ADS`.`Feature_27` IS NULL) THEN 0.11348798021978022 ELSE `ADS`.`Feature_27` END AS impter_29, CASE WHEN (`ADS`.`Feature_28` IS NULL) THEN 0.2897881318681319 ELSE `ADS`.`Feature_28` END AS impter_30, CASE WHEN (`ADS`.`Feature_29` IS NULL) THEN 0.08364145054945049 ELSE `ADS`.`Feature_29` END AS impter_31 
FROM `BreastCancer` AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180508180656_CODEGEN_SOR6C5_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508180656_CODEGEN_SOR6C5_ADS_imp_1_OUT_KEY` ON `TMP_20180508180656_CODEGEN_SOR6C5_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180508180656_CODEGEN_DI3CP4_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508180656_CODEGEN_DI3CP4_ADS_sca_2_OUT` (
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
	scaler_12 DOUBLE, 
	scaler_13 DOUBLE, 
	scaler_14 DOUBLE, 
	scaler_15 DOUBLE, 
	scaler_16 DOUBLE, 
	scaler_17 DOUBLE, 
	scaler_18 DOUBLE, 
	scaler_19 DOUBLE, 
	scaler_20 DOUBLE, 
	scaler_21 DOUBLE, 
	scaler_22 DOUBLE, 
	scaler_23 DOUBLE, 
	scaler_24 DOUBLE, 
	scaler_25 DOUBLE, 
	scaler_26 DOUBLE, 
	scaler_27 DOUBLE, 
	scaler_28 DOUBLE, 
	scaler_29 DOUBLE, 
	scaler_30 DOUBLE, 
	scaler_31 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508180656_CODEGEN_DI3CP4_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180508180656_CODEGEN_DI3CP4_ADS_sca_2_OUT` (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14, scaler_15, scaler_16, scaler_17, scaler_18, scaler_19, scaler_20, scaler_21, scaler_22, scaler_23, scaler_24, scaler_25, scaler_26, scaler_27, scaler_28, scaler_29, scaler_30, scaler_31) SELECT `U`.`KEY`, `U`.scaler_2, `U`.scaler_3, `U`.scaler_4, `U`.scaler_5, `U`.scaler_6, `U`.scaler_7, `U`.scaler_8, `U`.scaler_9, `U`.scaler_10, `U`.scaler_11, `U`.scaler_12, `U`.scaler_13, `U`.scaler_14, `U`.scaler_15, `U`.scaler_16, `U`.scaler_17, `U`.scaler_18, `U`.scaler_19, `U`.scaler_20, `U`.scaler_21, `U`.scaler_22, `U`.scaler_23, `U`.scaler_24, `U`.scaler_25, `U`.scaler_26, `U`.scaler_27, `U`.scaler_28, `U`.scaler_29, `U`.scaler_30, `U`.scaler_31 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11, `ADS_sca_2_OUT`.scaler_12, `ADS_sca_2_OUT`.scaler_13, `ADS_sca_2_OUT`.scaler_14, `ADS_sca_2_OUT`.scaler_15, `ADS_sca_2_OUT`.scaler_16, `ADS_sca_2_OUT`.scaler_17, `ADS_sca_2_OUT`.scaler_18, `ADS_sca_2_OUT`.scaler_19, `ADS_sca_2_OUT`.scaler_20, `ADS_sca_2_OUT`.scaler_21, `ADS_sca_2_OUT`.scaler_22, `ADS_sca_2_OUT`.scaler_23, `ADS_sca_2_OUT`.scaler_24, `ADS_sca_2_OUT`.scaler_25, `ADS_sca_2_OUT`.scaler_26, `ADS_sca_2_OUT`.scaler_27, `ADS_sca_2_OUT`.scaler_28, `ADS_sca_2_OUT`.scaler_29, `ADS_sca_2_OUT`.scaler_30, `ADS_sca_2_OUT`.scaler_31 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.impter_2 - 14.077712087912083) / 3.5451492987000814 AS scaler_2, (`ADS_imp_1_OUT`.impter_3 - 19.03905494505495) / 4.1622971504218205 AS scaler_3, (`ADS_imp_1_OUT`.impter_4 - 91.66178021978023) / 24.503971943475648 AS scaler_4, (`ADS_imp_1_OUT`.impter_5 - 650.9676923076925) / 355.702823163891 AS scaler_5, (`ADS_imp_1_OUT`.impter_6 - 0.09642184615384615) / 0.014197819663072304 AS scaler_6, (`ADS_imp_1_OUT`.impter_7 - 0.10441613186813191) / 0.05340369466973436 AS scaler_7, (`ADS_imp_1_OUT`.impter_8 - 0.08826232681318694) / 0.08191200162631372 AS scaler_8, (`ADS_imp_1_OUT`.impter_9 - 0.048516399999999966) / 0.039373117396730245 AS scaler_9, (`ADS_imp_1_OUT`.impter_10 - 0.1815885714285715) / 0.02779005832874822 AS scaler_10, (`ADS_imp_1_OUT`.impter_11 - 0.06294030769230768) / 0.007019354586172742 AS scaler_11, (`ADS_imp_1_OUT`.impter_12 - 0.4099173626373627) / 0.29120400836827026 AS scaler_12, (`ADS_imp_1_OUT`.impter_13 - 1.2170694505494501) / 0.5363896396336265 AS scaler_13, (`ADS_imp_1_OUT`.impter_14 - 2.90524901098901) / 2.1424944299808626 AS scaler_14, (`ADS_imp_1_OUT`.impter_15 - 40.87988571428572) / 48.224754479577314 AS scaler_15, (`ADS_imp_1_OUT`.impter_16 - 0.007055971428571433) / 0.002863651656569403 AS scaler_16, (`ADS_imp_1_OUT`.impter_17 - 0.025567830769230776) / 0.017947013631032318 AS scaler_17, (`ADS_imp_1_OUT`.impter_18 - 0.03199925626373623) / 0.03166493672136351 AS scaler_18, (`ADS_imp_1_OUT`.impter_19 - 0.011972369230769237) / 0.006392005589396607 AS scaler_19, (`ADS_imp_1_OUT`.impter_20 - 0.020896200000000014) / 0.008582910079869234 AS scaler_20, (`ADS_imp_1_OUT`.impter_21 - 0.0038465518681318647) / 0.0027436075866190575 AS scaler_21, (`ADS_imp_1_OUT`.impter_22 - 16.17776483516484) / 4.817458816201383 AS scaler_22, (`ADS_imp_1_OUT`.impter_23 - 25.26505494505494) / 5.92332412866667 AS scaler_23, (`ADS_imp_1_OUT`.impter_24 - 106.68156043956041) / 33.70385837605481 AS scaler_24, (`ADS_imp_1_OUT`.impter_25 - 870.8639560439567) / 566.9950559872813 AS scaler_25, (`ADS_imp_1_OUT`.impter_26 - 0.1318275604395605) / 0.02274820752228878 AS scaler_26, (`ADS_imp_1_OUT`.impter_27 - 0.24991806593406582) / 0.15246893644279044 AS scaler_27, (`ADS_imp_1_OUT`.impter_28 - 0.2654615934065932) / 0.20692568678204093 AS scaler_28, (`ADS_imp_1_OUT`.impter_29 - 0.11348798021978022) / 0.06638141278520703 AS scaler_29, (`ADS_imp_1_OUT`.impter_30 - 0.2897881318681319) / 0.06220470665051894 AS scaler_30, (`ADS_imp_1_OUT`.impter_31 - 0.08364145054945049) / 0.01706514580694785 AS scaler_31 
FROM `TMP_20180508180656_CODEGEN_SOR6C5_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180508180656_CODEGEN_DI3CP4_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508180656_CODEGEN_DI3CP4_ADS_sca_2_OUT_KEY` ON `TMP_20180508180656_CODEGEN_DI3CP4_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180508180656_CODEGEN_445K4O_CalProb_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508180656_CODEGEN_445K4O_CalProb_B0` (
	`KEY` BIGINT, 
	`Proba_1` DOUBLE, 
	`Proba_0` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508180656_CODEGEN_445K4O_CalProb_B0 part 2. Populate

INSERT INTO `TMP_20180508180656_CODEGEN_445K4O_CalProb_B0` (`KEY`, `Proba_1`, `Proba_0`) SELECT `U`.`KEY`, `U`.`Proba_1`, `U`.`Proba_0` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_29 <= 0.5040872097015381) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_25 <= 0.14653751254081726) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_29 <= 0.1327483057975769) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= 0.8007535338401794) THEN 4 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.024999402463436127) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= -0.020663734525442123) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_23 <= 1.4603193998336792) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.520878255367279) THEN 13 ELSE 14 END END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_28 <= -0.3612968325614929) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_24 <= 0.45598456263542175) THEN 17 ELSE 18 END ELSE 19 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -1.0358413457870483) THEN 21 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_28 <= -0.2999221384525299) THEN 23 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.1987040936946869) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.1609880030155182) THEN 26 ELSE 27 END ELSE 28 END END END END AS node_id_2 
FROM `TMP_20180508180656_CODEGEN_DI3CP4_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_0` AS `P_0`, `Values`.`P_1` AS `P_1`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 4 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 14 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 17 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 19 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 21 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 23 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 26 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 27 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 28 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`P_0` AS `P_0`, `DT_node_data`.`P_1` AS `P_1`, `DT_node_data`.`D` AS `D`, `DT_node_data`.`DP` AS `DP` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`Calibrated_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, `DT_Output`.`P_0` AS `Proba_0`, `DT_Output`.`P_1` AS `Proba_1`, CASE WHEN (`DT_Output`.`P_0` IS NULL OR `DT_Output`.`P_0` > 0.0) THEN ln(`DT_Output`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output`.`P_1` IS NULL OR `DT_Output`.`P_1` > 0.0) THEN ln(`DT_Output`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output`.`P_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output`.`P_1`) AS `ScoreOrProba_1` 
FROM `DT_Output`), 
isotonic_cte_0 AS 
(SELECT `Calibrated_Model_0`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_1` < 0.0) THEN 0.05 WHEN (`Calibrated_Model_0`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_0`.`ScoreOrProba_1` - 0.0) * 0.922972972972973 + 0.05 ELSE 0.972972972972973 END AS `Proba_1`, 1.0 - CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_1` < 0.0) THEN 0.05 WHEN (`Calibrated_Model_0`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_0`.`ScoreOrProba_1` - 0.0) * 0.922972972972973 + 0.05 ELSE 0.972972972972973 END AS `Proba_0` 
FROM `Calibrated_Model_0`), 
`Normalized_Probas` AS 
(SELECT isotonic_cte_0.`KEY` AS `KEY`, isotonic_cte_0.`Proba_1` / (isotonic_cte_0.`Proba_0` + isotonic_cte_0.`Proba_1`) AS `Proba_1`, isotonic_cte_0.`Proba_0` / (isotonic_cte_0.`Proba_0` + isotonic_cte_0.`Proba_1`) AS `Proba_0` 
FROM isotonic_cte_0), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_29 <= 0.4536212682723999) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_25 <= 0.15994150936603546) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_20 <= -1.419763207435608) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_29 <= 0.27661389112472534) THEN 5 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_25 <= -0.16069620847702026) THEN 7 ELSE 8 END END END ELSE 9 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_18 <= 3.273360252380371) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.0018596397712826729) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_30 <= 0.2992035448551178) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_22 <= 0.4093932509422302) THEN 14 ELSE 15 END ELSE 16 END ELSE 17 END ELSE 18 END END AS node_id_2 
FROM `TMP_20180508180656_CODEGEN_DI3CP4_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_0` AS `P_0`, `Values`.`P_1` AS `P_1`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 3 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS nid, 0.6666666666666666 AS `P_0`, 0.3333333333333333 AS `P_1`, 0 AS `D`, 0.6666666666666666 AS `DP` UNION ALL SELECT 9 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 14 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 15 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 17 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`P_0` AS `P_0`, `DT_node_data_1`.`P_1` AS `P_1`, `DT_node_data_1`.`D` AS `D`, `DT_node_data_1`.`DP` AS `DP` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`Calibrated_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, `DT_Output_1`.`P_0` AS `Proba_0`, `DT_Output_1`.`P_1` AS `Proba_1`, CASE WHEN (`DT_Output_1`.`P_0` IS NULL OR `DT_Output_1`.`P_0` > 0.0) THEN ln(`DT_Output_1`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_1`.`P_1` IS NULL OR `DT_Output_1`.`P_1` > 0.0) THEN ln(`DT_Output_1`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_1`.`P_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_1`.`P_1`) AS `ScoreOrProba_1` 
FROM `DT_Output_1`), 
isotonic_cte_1 AS 
(SELECT `Calibrated_Model_1`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_1` < 0.0) THEN 0.07692307692307693 WHEN (`Calibrated_Model_1`.`ScoreOrProba_1` < 0.3333333333333333) THEN (`Calibrated_Model_1`.`ScoreOrProba_1` - 0.0) * 2.6858974358974357 + 0.07692307692307693 WHEN (`Calibrated_Model_1`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_1` - 0.3333333333333333) * 0.0 + 0.9722222222222222 ELSE 0.9722222222222222 END AS `Proba_1`, 1.0 - CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_1` < 0.0) THEN 0.07692307692307693 WHEN (`Calibrated_Model_1`.`ScoreOrProba_1` < 0.3333333333333333) THEN (`Calibrated_Model_1`.`ScoreOrProba_1` - 0.0) * 2.6858974358974357 + 0.07692307692307693 WHEN (`Calibrated_Model_1`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_1` - 0.3333333333333333) * 0.0 + 0.9722222222222222 ELSE 0.9722222222222222 END AS `Proba_0` 
FROM `Calibrated_Model_1`), 
`Normalized_Probas_1` AS 
(SELECT isotonic_cte_1.`KEY` AS `KEY`, isotonic_cte_1.`Proba_1` / (isotonic_cte_1.`Proba_0` + isotonic_cte_1.`Proba_1`) AS `Proba_1`, isotonic_cte_1.`Proba_0` / (isotonic_cte_1.`Proba_0` + isotonic_cte_1.`Proba_1`) AS `Proba_0` 
FROM isotonic_cte_1), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_29 <= 0.43554389476776123) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_25 <= 0.3300487995147705) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_15 <= 0.1621597558259964) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_29 <= 0.13048863410949707) THEN 4 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= 0.010242432355880737) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.4016001224517822) THEN 9 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_23 <= -0.7428354620933533) THEN 11 ELSE 12 END END END ELSE 13 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_18 <= 2.9780807495117188) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.7779479026794434) THEN 16 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.8875038623809814) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.4802413582801819) THEN 19 ELSE 20 END ELSE 21 END END ELSE 22 END END AS node_id_2 
FROM `TMP_20180508180656_CODEGEN_DI3CP4_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_0` AS `P_0`, `Values`.`P_1` AS `P_1`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 4 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS nid, 0.06666666666666667 AS `P_0`, 0.9333333333333333 AS `P_1`, 1 AS `D`, 0.9333333333333333 AS `DP` UNION ALL SELECT 7 AS nid, 0.75 AS `P_0`, 0.25 AS `P_1`, 0 AS `D`, 0.75 AS `DP` UNION ALL SELECT 9 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 19 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 20 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 21 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 22 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`P_0` AS `P_0`, `DT_node_data_2`.`P_1` AS `P_1`, `DT_node_data_2`.`D` AS `D`, `DT_node_data_2`.`DP` AS `DP` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`Calibrated_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, `DT_Output_2`.`P_0` AS `Proba_0`, `DT_Output_2`.`P_1` AS `Proba_1`, CASE WHEN (`DT_Output_2`.`P_0` IS NULL OR `DT_Output_2`.`P_0` > 0.0) THEN ln(`DT_Output_2`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_2`.`P_1` IS NULL OR `DT_Output_2`.`P_1` > 0.0) THEN ln(`DT_Output_2`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_2`.`P_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_2`.`P_1`) AS `ScoreOrProba_1` 
FROM `DT_Output_2`), 
isotonic_cte_2 AS 
(SELECT `Calibrated_Model_2`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_1` < 0.0) THEN 0.07317073170731707 WHEN (`Calibrated_Model_2`.`ScoreOrProba_1` < 0.9333333333333333) THEN (`Calibrated_Model_2`.`ScoreOrProba_1` - 0.0) * 0.9779408156254601 + 0.07317073170731707 WHEN (`Calibrated_Model_2`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_1` - 0.9333333333333333) * 0.0 + 0.9859154929577465 ELSE 0.9859154929577465 END AS `Proba_1`, 1.0 - CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_1` < 0.0) THEN 0.07317073170731707 WHEN (`Calibrated_Model_2`.`ScoreOrProba_1` < 0.9333333333333333) THEN (`Calibrated_Model_2`.`ScoreOrProba_1` - 0.0) * 0.9779408156254601 + 0.07317073170731707 WHEN (`Calibrated_Model_2`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_1` - 0.9333333333333333) * 0.0 + 0.9859154929577465 ELSE 0.9859154929577465 END AS `Proba_0` 
FROM `Calibrated_Model_2`), 
`Normalized_Probas_2` AS 
(SELECT isotonic_cte_2.`KEY` AS `KEY`, isotonic_cte_2.`Proba_1` / (isotonic_cte_2.`Proba_0` + isotonic_cte_2.`Proba_1`) AS `Proba_1`, isotonic_cte_2.`Proba_0` / (isotonic_cte_2.`Proba_0` + isotonic_cte_2.`Proba_1`) AS `Proba_0` 
FROM isotonic_cte_2), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_29 <= 0.4837501645088196) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_25 <= 0.3300487995147705) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_20 <= -1.2299091815948486) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.46316879987716675) THEN 4 ELSE 5 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_15 <= -0.16371023654937744) THEN 7 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_23 <= 0.6609371900558472) THEN 9 ELSE 10 END END END ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_18 <= 3.273360252380371) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_28 <= -0.2999221384525299) THEN 14 ELSE 15 END ELSE 16 END END AS node_id_2 
FROM `TMP_20180508180656_CODEGEN_DI3CP4_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, `Values`.`P_0` AS `P_0`, `Values`.`P_1` AS `P_1`, `Values`.`D` AS `D`, `Values`.`DP` AS `DP` 
FROM (SELECT 4 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS nid, 0.047619047619047616 AS `P_0`, 0.9523809523809523 AS `P_1`, 1 AS `D`, 0.9523809523809523 AS `DP` UNION ALL SELECT 10 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 14 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 15 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`P_0` AS `P_0`, `DT_node_data_3`.`P_1` AS `P_1`, `DT_node_data_3`.`D` AS `D`, `DT_node_data_3`.`DP` AS `DP` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`Calibrated_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, `DT_Output_3`.`P_0` AS `Proba_0`, `DT_Output_3`.`P_1` AS `Proba_1`, CASE WHEN (`DT_Output_3`.`P_0` IS NULL OR `DT_Output_3`.`P_0` > 0.0) THEN ln(`DT_Output_3`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_3`.`P_1` IS NULL OR `DT_Output_3`.`P_1` > 0.0) THEN ln(`DT_Output_3`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_3`.`P_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_3`.`P_1`) AS `ScoreOrProba_1` 
FROM `DT_Output_3`), 
isotonic_cte_3 AS 
(SELECT `Calibrated_Model_3`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_1` < 0.0) THEN 0.0975609756097561 WHEN (`Calibrated_Model_3`.`ScoreOrProba_1` < 0.9523809523809523) THEN (`Calibrated_Model_3`.`ScoreOrProba_1` - 0.0) * 0.5975609756097561 + 0.0975609756097561 WHEN (`Calibrated_Model_3`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_3`.`ScoreOrProba_1` - 0.9523809523809523) * 6.681818181818175 + 0.6666666666666666 ELSE 0.9848484848484849 END AS `Proba_1`, 1.0 - CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_1` < 0.0) THEN 0.0975609756097561 WHEN (`Calibrated_Model_3`.`ScoreOrProba_1` < 0.9523809523809523) THEN (`Calibrated_Model_3`.`ScoreOrProba_1` - 0.0) * 0.5975609756097561 + 0.0975609756097561 WHEN (`Calibrated_Model_3`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_3`.`ScoreOrProba_1` - 0.9523809523809523) * 6.681818181818175 + 0.6666666666666666 ELSE 0.9848484848484849 END AS `Proba_0` 
FROM `Calibrated_Model_3`), 
`Normalized_Probas_3` AS 
(SELECT isotonic_cte_3.`KEY` AS `KEY`, isotonic_cte_3.`Proba_1` / (isotonic_cte_3.`Proba_0` + isotonic_cte_3.`Proba_1`) AS `Proba_1`, isotonic_cte_3.`Proba_0` / (isotonic_cte_3.`Proba_0` + isotonic_cte_3.`Proba_1`) AS `Proba_0` 
FROM isotonic_cte_3)
 SELECT `CalProb_B0`.`KEY`, `CalProb_B0`.`Proba_1`, `CalProb_B0`.`Proba_0` 
FROM (SELECT `CalProb_esu_0`.`KEY` AS `KEY`, `CalProb_esu_0`.`Proba_1` AS `Proba_1`, `CalProb_esu_0`.`Proba_0` AS `Proba_0` 
FROM (SELECT `Normalized_Probas`.`KEY` AS `KEY`, `Normalized_Probas`.`Proba_1` AS `Proba_1`, `Normalized_Probas`.`Proba_0` AS `Proba_0` 
FROM `Normalized_Probas` UNION ALL SELECT `Normalized_Probas_1`.`KEY` AS `KEY`, `Normalized_Probas_1`.`Proba_1` AS `Proba_1`, `Normalized_Probas_1`.`Proba_0` AS `Proba_0` 
FROM `Normalized_Probas_1` UNION ALL SELECT `Normalized_Probas_2`.`KEY` AS `KEY`, `Normalized_Probas_2`.`Proba_1` AS `Proba_1`, `Normalized_Probas_2`.`Proba_0` AS `Proba_0` 
FROM `Normalized_Probas_2` UNION ALL SELECT `Normalized_Probas_3`.`KEY` AS `KEY`, `Normalized_Probas_3`.`Proba_1` AS `Proba_1`, `Normalized_Probas_3`.`Proba_0` AS `Proba_0` 
FROM `Normalized_Probas_3`) AS `CalProb_esu_0`) AS `CalProb_B0`) AS `U`

-- Code For temporary table TMP_20180508180656_CODEGEN_06AXI9_CalProb_Union part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508180656_CODEGEN_06AXI9_CalProb_Union` (
	`KEY` BIGINT, 
	`Proba_1` DOUBLE, 
	`Proba_0` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508180656_CODEGEN_06AXI9_CalProb_Union part 2. Populate

INSERT INTO `TMP_20180508180656_CODEGEN_06AXI9_CalProb_Union` (`KEY`, `Proba_1`, `Proba_0`) SELECT `U`.`KEY`, `U`.`Proba_1`, `U`.`Proba_0` 
FROM (SELECT `CalProb_Union`.`KEY`, `CalProb_Union`.`Proba_1`, `CalProb_Union`.`Proba_0` 
FROM (SELECT `CalProb_EnsembleUnion`.`KEY` AS `KEY`, `CalProb_EnsembleUnion`.`Proba_1` AS `Proba_1`, `CalProb_EnsembleUnion`.`Proba_0` AS `Proba_0` 
FROM (SELECT `CalProb_B0`.`KEY` AS `KEY`, `CalProb_B0`.`Proba_1` AS `Proba_1`, `CalProb_B0`.`Proba_0` AS `Proba_0` 
FROM `TMP_20180508180656_CODEGEN_445K4O_CalProb_B0` AS `CalProb_B0`) AS `CalProb_EnsembleUnion`) AS `CalProb_Union`) AS `U`

-- Code For temporary table TMP_20180508180656_CODEGEN_W8RLPG_CalProb_avg part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508180656_CODEGEN_W8RLPG_CalProb_avg` (
	`KEY` BIGINT NOT NULL, 
	`Proba_1` DOUBLE, 
	`Proba_0` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508180656_CODEGEN_W8RLPG_CalProb_avg part 2. Populate

INSERT INTO `TMP_20180508180656_CODEGEN_W8RLPG_CalProb_avg` (`KEY`, `Proba_1`, `Proba_0`) SELECT `U`.`KEY`, `U`.`Proba_1`, `U`.`Proba_0` 
FROM (SELECT `CalProb_avg`.`KEY`, `CalProb_avg`.`Proba_1`, `CalProb_avg`.`Proba_0` 
FROM (SELECT `T`.`KEY` AS `KEY`, `T`.`Proba_1` AS `Proba_1`, `T`.`Proba_0` AS `Proba_0` 
FROM (SELECT `CalProb_Union`.`KEY` AS `KEY`, avg(`CalProb_Union`.`Proba_1`) AS `Proba_1`, avg(`CalProb_Union`.`Proba_0`) AS `Proba_0` 
FROM `TMP_20180508180656_CODEGEN_06AXI9_CalProb_Union` AS `CalProb_Union` GROUP BY `CalProb_Union`.`KEY`) AS `T`) AS `CalProb_avg`) AS `U`

-- Code For temporary table TMP_20180508180656_CODEGEN_W8RLPG_CalProb_avg part 3. Create Index 

CREATE INDEX `ix_TMP_20180508180656_CODEGEN_W8RLPG_CalProb_avg_KEY` ON `TMP_20180508180656_CODEGEN_W8RLPG_CalProb_avg` (`KEY`)

-- Model deployment code

WITH orig_cte AS 
(SELECT `CalProb_avg`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, `CalProb_avg`.`Proba_0` AS `Proba_0`, `CalProb_avg`.`Proba_1` AS `Proba_1`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM `TMP_20180508180656_CODEGEN_W8RLPG_CalProb_avg` AS `CalProb_avg`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Proba` AS `max_Proba` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Proba`) AS `max_Proba` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Proba`, min(union_with_max.class) AS `arg_max_Proba` 
FROM union_with_max 
WHERE union_with_max.`Proba` >= union_with_max.`max_Proba` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Proba` ON score_max.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, arg_max_cte.`arg_max_Proba` AS `Decision`, arg_max_cte.`max_Proba` AS `DecisionProba` 
FROM arg_max_cte