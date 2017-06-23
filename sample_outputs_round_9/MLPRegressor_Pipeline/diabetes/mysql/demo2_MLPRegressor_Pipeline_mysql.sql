-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.0047225988377 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN -0.0073794958196 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN -6.24253146871e-05 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN -0.00643221528123 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.00213184962584 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN -0.000838461125138 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.000444113651192 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN -0.0032531275266 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN -0.0029539764781 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN -0.000211620600092 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM diabetes AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 0.0047225988377) / 0.0488123078699 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - -0.0073794958196) / 0.0465126383467 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - -6.24253146871e-05) / 0.046971645538 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - -0.00643221528123) / 0.0474148680367 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - -0.00213184962584) / 0.0460146493101 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - -0.000838461125138) / 0.0459634748503 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - 0.000444113651192) / 0.0423673337055 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - -0.0032531275266) / 0.0441563504693 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - -0.0029539764781) / 0.044965109506 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - -0.000211620600092) / 0.0487263122756 AS scaler_11 
FROM `ADS_imp_1_OUT`), 
`IL` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CAST(`ADS_sca_2_OUT`.scaler_2 AS DOUBLE) AS scaler_2, CAST(`ADS_sca_2_OUT`.scaler_3 AS DOUBLE) AS scaler_3, CAST(`ADS_sca_2_OUT`.scaler_4 AS DOUBLE) AS scaler_4, CAST(`ADS_sca_2_OUT`.scaler_5 AS DOUBLE) AS scaler_5, CAST(`ADS_sca_2_OUT`.scaler_6 AS DOUBLE) AS scaler_6, CAST(`ADS_sca_2_OUT`.scaler_7 AS DOUBLE) AS scaler_7, CAST(`ADS_sca_2_OUT`.scaler_8 AS DOUBLE) AS scaler_8, CAST(`ADS_sca_2_OUT`.scaler_9 AS DOUBLE) AS scaler_9, CAST(`ADS_sca_2_OUT`.scaler_10 AS DOUBLE) AS scaler_10, CAST(`ADS_sca_2_OUT`.scaler_11 AS DOUBLE) AS scaler_11 
FROM `ADS_sca_2_OUT`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, -0.823137993696 * `IL`.scaler_2 + 2.62839484518 * `IL`.scaler_3 + -5.05520388253 * `IL`.scaler_4 + -1.87810227392 * `IL`.scaler_5 + 2.09954666979 * `IL`.scaler_6 + 2.71681259947 * `IL`.scaler_7 + 2.04927418179 * `IL`.scaler_8 + 2.4057939494 * `IL`.scaler_9 + -2.40859578779 * `IL`.scaler_10 + 8.39599108533 * `IL`.scaler_11 + -3.42640094209 AS `NEUR_1_1`, -2.91593116101 * `IL`.scaler_2 + -2.28389090065 * `IL`.scaler_3 + -1.95992023293 * `IL`.scaler_4 + 0.499109677774 * `IL`.scaler_5 + -0.783729536142 * `IL`.scaler_6 + 1.30316712107 * `IL`.scaler_7 + -2.23821550182 * `IL`.scaler_8 + -8.62466182876 * `IL`.scaler_9 + 1.51835011027 * `IL`.scaler_10 + -0.829043309389 * `IL`.scaler_11 + -3.94634083341 AS `NEUR_1_2`, 0.773283812914 * `IL`.scaler_2 + 0.260270897985 * `IL`.scaler_3 + 3.76726274504 * `IL`.scaler_4 + 0.679025144832 * `IL`.scaler_5 + -6.86605617535 * `IL`.scaler_6 + 3.7555837842 * `IL`.scaler_7 + 2.99170759466 * `IL`.scaler_8 + 2.01953347281 * `IL`.scaler_9 + 5.20976592967 * `IL`.scaler_10 + -0.174250663076 * `IL`.scaler_11 + 4.64996229986 AS `NEUR_1_3` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_1`.`NEUR_1_1` >= 0.0) THEN `HL_BA_1`.`NEUR_1_1` ELSE 0.0 END AS `NEUR_1_1`, CASE WHEN (`HL_BA_1`.`NEUR_1_2` >= 0.0) THEN `HL_BA_1`.`NEUR_1_2` ELSE 0.0 END AS `NEUR_1_2`, CASE WHEN (`HL_BA_1`.`NEUR_1_3` >= 0.0) THEN `HL_BA_1`.`NEUR_1_3` ELSE 0.0 END AS `NEUR_1_3` 
FROM `HL_BA_1`), 
`HL_BA_2` AS 
(SELECT `HL_1_relu`.`KEY` AS `KEY`, -1.81292221147 * `HL_1_relu`.`NEUR_1_1` + 0.959965964733 * `HL_1_relu`.`NEUR_1_2` + -0.291287236696 * `HL_1_relu`.`NEUR_1_3` + -0.959813140985 AS `NEUR_2_1`, -1.35030208575 * `HL_1_relu`.`NEUR_1_1` + -0.954823012854 * `HL_1_relu`.`NEUR_1_2` + -1.03956066011 * `HL_1_relu`.`NEUR_1_3` + -5.27848384212 AS `NEUR_2_2`, 0.766647606212 * `HL_1_relu`.`NEUR_1_1` + 4.10738078733 * `HL_1_relu`.`NEUR_1_2` + 1.81957962261 * `HL_1_relu`.`NEUR_1_3` + 3.54403076009 AS `NEUR_2_3`, -0.0972218113016 * `HL_1_relu`.`NEUR_1_1` + -0.488856064229 * `HL_1_relu`.`NEUR_1_2` + -0.645378690498 * `HL_1_relu`.`NEUR_1_3` + -0.849347679177 AS `NEUR_2_4`, -5.70460441193 * `HL_1_relu`.`NEUR_1_1` + 3.49316679051 * `HL_1_relu`.`NEUR_1_2` + -1.06749250464 * `HL_1_relu`.`NEUR_1_3` + -3.44836779755 AS `NEUR_2_5` 
FROM `HL_1_relu`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_2`.`NEUR_2_1` >= 0.0) THEN `HL_BA_2`.`NEUR_2_1` ELSE 0.0 END AS `NEUR_2_1`, CASE WHEN (`HL_BA_2`.`NEUR_2_2` >= 0.0) THEN `HL_BA_2`.`NEUR_2_2` ELSE 0.0 END AS `NEUR_2_2`, CASE WHEN (`HL_BA_2`.`NEUR_2_3` >= 0.0) THEN `HL_BA_2`.`NEUR_2_3` ELSE 0.0 END AS `NEUR_2_3`, CASE WHEN (`HL_BA_2`.`NEUR_2_4` >= 0.0) THEN `HL_BA_2`.`NEUR_2_4` ELSE 0.0 END AS `NEUR_2_4`, CASE WHEN (`HL_BA_2`.`NEUR_2_5` >= 0.0) THEN `HL_BA_2`.`NEUR_2_5` ELSE 0.0 END AS `NEUR_2_5` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, -2.34405037683 * `HL_2_relu`.`NEUR_2_1` + 1.76140050549 * `HL_2_relu`.`NEUR_2_2` + 7.32645666335 * `HL_2_relu`.`NEUR_2_3` + 0.735606932072 * `HL_2_relu`.`NEUR_2_4` + -7.39187705521 * `HL_2_relu`.`NEUR_2_5` + 17.1154127309 AS `NEUR_3_1` 
FROM `HL_2_relu`), 
`OL_identity` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, `OL_BA`.`NEUR_3_1` AS `NEUR_3_1` 
FROM `OL_BA`)
 SELECT `OL_identity`.`KEY` AS `KEY`, `OL_identity`.`NEUR_3_1` AS `Estimator` 
FROM `OL_identity`