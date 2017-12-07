-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `IL` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CAST(`ADS`.`Feature_0` AS DOUBLE) AS `Feature_0`, CAST(`ADS`.`Feature_1` AS DOUBLE) AS `Feature_1`, CAST(`ADS`.`Feature_2` AS DOUBLE) AS `Feature_2`, CAST(`ADS`.`Feature_3` AS DOUBLE) AS `Feature_3`, CAST(`ADS`.`Feature_4` AS DOUBLE) AS `Feature_4`, CAST(`ADS`.`Feature_5` AS DOUBLE) AS `Feature_5`, CAST(`ADS`.`Feature_6` AS DOUBLE) AS `Feature_6`, CAST(`ADS`.`Feature_7` AS DOUBLE) AS `Feature_7`, CAST(`ADS`.`Feature_8` AS DOUBLE) AS `Feature_8`, CAST(`ADS`.`Feature_9` AS DOUBLE) AS `Feature_9`, CAST(`ADS`.`Feature_10` AS DOUBLE) AS `Feature_10`, CAST(`ADS`.`Feature_11` AS DOUBLE) AS `Feature_11`, CAST(`ADS`.`Feature_12` AS DOUBLE) AS `Feature_12` 
FROM boston AS `ADS`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, -0.0890157617065 * `IL`.`Feature_0` + -0.391118994054 * `IL`.`Feature_1` + -0.484414401106 * `IL`.`Feature_2` + -0.54174573411 * `IL`.`Feature_3` + 0.229911734273 * `IL`.`Feature_4` + 0.475738654042 * `IL`.`Feature_5` + -0.241359101906 * `IL`.`Feature_6` + -0.0490698891589 * `IL`.`Feature_7` + -0.0195107695906 * `IL`.`Feature_8` + -0.212873029679 * `IL`.`Feature_9` + -0.28660594347 * `IL`.`Feature_10` + -0.523703324126 * `IL`.`Feature_11` + 0.078552362261 * `IL`.`Feature_12` + 0.470354253878 AS `NEUR_1_1`, 0.118604553085 * `IL`.`Feature_0` + 0.00759704873403 * `IL`.`Feature_1` + -0.381461466236 * `IL`.`Feature_2` + 0.324772034834 * `IL`.`Feature_3` + 0.171021666093 * `IL`.`Feature_4` + 0.458798387293 * `IL`.`Feature_5` + -0.273488006511 * `IL`.`Feature_6` + -0.585024676704 * `IL`.`Feature_7` + 0.516204531615 * `IL`.`Feature_8` + -0.0865006664366 * `IL`.`Feature_9` + -0.37426484898 * `IL`.`Feature_10` + -0.105636962716 * `IL`.`Feature_11` + -0.439928084359 * `IL`.`Feature_12` + 0.32369164886 AS `NEUR_1_2`, 0.552402000091 * `IL`.`Feature_0` + -0.401788305032 * `IL`.`Feature_1` + 0.260461362575 * `IL`.`Feature_2` + 0.0870534610829 * `IL`.`Feature_3` + -0.394473651023 * `IL`.`Feature_4` + -0.235047707268 * `IL`.`Feature_5` + 0.0814234277105 * `IL`.`Feature_6` + -0.374973337895 * `IL`.`Feature_7` + -0.525410741127 * `IL`.`Feature_8` + -1.6471381764 * `IL`.`Feature_9` + -0.0778635764235 * `IL`.`Feature_10` + -0.487394625626 * `IL`.`Feature_11` + 0.342739007623 * `IL`.`Feature_12` + -0.360593353021 AS `NEUR_1_3` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_1`.`NEUR_1_1` >= 0.0) THEN `HL_BA_1`.`NEUR_1_1` ELSE 0.0 END AS `NEUR_1_1`, CASE WHEN (`HL_BA_1`.`NEUR_1_2` >= 0.0) THEN `HL_BA_1`.`NEUR_1_2` ELSE 0.0 END AS `NEUR_1_2`, CASE WHEN (`HL_BA_1`.`NEUR_1_3` >= 0.0) THEN `HL_BA_1`.`NEUR_1_3` ELSE 0.0 END AS `NEUR_1_3` 
FROM `HL_BA_1`), 
`HL_BA_2` AS 
(SELECT `HL_1_relu`.`KEY` AS `KEY`, 0.433212723896 * `HL_1_relu`.`NEUR_1_1` + -0.658876209843 * `HL_1_relu`.`NEUR_1_2` + -0.553791623629 * `HL_1_relu`.`NEUR_1_3` + -0.215618570657 AS `NEUR_2_1`, 0.0795450066065 * `HL_1_relu`.`NEUR_1_1` + -0.21492932515 * `HL_1_relu`.`NEUR_1_2` + -0.00176502226913 * `HL_1_relu`.`NEUR_1_3` + 4.75190966996 AS `NEUR_2_2`, -0.769798140477 * `HL_1_relu`.`NEUR_1_1` + 0.250696891752 * `HL_1_relu`.`NEUR_1_2` + -0.689078641231 * `HL_1_relu`.`NEUR_1_3` + -0.0994449027109 AS `NEUR_2_3`, 0.34924521698 * `HL_1_relu`.`NEUR_1_1` + 0.173467830161 * `HL_1_relu`.`NEUR_1_2` + -0.252251696099 * `HL_1_relu`.`NEUR_1_3` + -0.841304523746 AS `NEUR_2_4`, -0.406629703895 * `HL_1_relu`.`NEUR_1_1` + -0.796433036015 * `HL_1_relu`.`NEUR_1_2` + 0.171975852235 * `HL_1_relu`.`NEUR_1_3` + -0.866820343693 AS `NEUR_2_5` 
FROM `HL_1_relu`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_2`.`NEUR_2_1` >= 0.0) THEN `HL_BA_2`.`NEUR_2_1` ELSE 0.0 END AS `NEUR_2_1`, CASE WHEN (`HL_BA_2`.`NEUR_2_2` >= 0.0) THEN `HL_BA_2`.`NEUR_2_2` ELSE 0.0 END AS `NEUR_2_2`, CASE WHEN (`HL_BA_2`.`NEUR_2_3` >= 0.0) THEN `HL_BA_2`.`NEUR_2_3` ELSE 0.0 END AS `NEUR_2_3`, CASE WHEN (`HL_BA_2`.`NEUR_2_4` >= 0.0) THEN `HL_BA_2`.`NEUR_2_4` ELSE 0.0 END AS `NEUR_2_4`, CASE WHEN (`HL_BA_2`.`NEUR_2_5` >= 0.0) THEN `HL_BA_2`.`NEUR_2_5` ELSE 0.0 END AS `NEUR_2_5` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, -0.319194576453 * `HL_2_relu`.`NEUR_2_1` + 3.7239448096 * `HL_2_relu`.`NEUR_2_2` + -0.0186906796815 * `HL_2_relu`.`NEUR_2_3` + 0.344617734572 * `HL_2_relu`.`NEUR_2_4` + 0.289450053732 * `HL_2_relu`.`NEUR_2_5` + 4.88311102977 AS `NEUR_3_1` 
FROM `HL_2_relu`), 
`OL_identity` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, `OL_BA`.`NEUR_3_1` AS `NEUR_3_1` 
FROM `OL_BA`)
 SELECT `OL_identity`.`KEY` AS `KEY`, `OL_identity`.`NEUR_3_1` AS `Estimator` 
FROM `OL_identity`