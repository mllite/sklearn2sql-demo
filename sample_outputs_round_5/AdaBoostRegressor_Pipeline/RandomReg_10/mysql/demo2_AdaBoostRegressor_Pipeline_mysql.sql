-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.0351652349975 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN -0.0803214719905 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN -0.10743632161 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN -0.0448438830455 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.116646057369 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.138044932934 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.0507619880321 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.182146201153 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.0455535134039 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.0516550680462 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `RandomReg_10` AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 0.0351652349975) / 1.05874743924 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - -0.0803214719905) / 0.940386545364 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - -0.10743632161) / 0.97370704372 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - -0.0448438830455) / 1.08753988607 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - 0.116646057369) / 0.981031751465 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - 0.138044932934) / 0.894327213943 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - -0.0507619880321) / 1.22960759084 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.182146201153) / 1.10241140819 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 0.0455535134039) / 0.840710960699 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.0516550680462) / 0.995477308128 AS scaler_11 
FROM `ADS_imp_1_OUT`), 
`DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= 0.5720152258872986) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 1.1847655773162842) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -0.17388826608657837) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.20342446863651276) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= -0.30391237139701843) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 1.485030174255371) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.43776944279670715) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'scaler_8' AS feature, 0.5720152258872986 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -32.5891656325067 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'scaler_10' AS feature, 1.1847655773162842 AS threshold, 46 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -108.45547893980655 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'scaler_2' AS feature, -0.17388826608657837 AS threshold, 40 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -152.7161007781443 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 23 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -226.0882721146253 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 17 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -53.447868969964205 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'scaler_2' AS feature, 0.20342446863651276 AS threshold, 6 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 186.61533331577834 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 37.745235006638595 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 335.48543162491814 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'scaler_11' AS feature, -0.30391237139701843 AS threshold, 21 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 133.59418732634066 AS `Estimator` UNION ALL SELECT 9 AS node_id, 'scaler_5' AS feature, 1.485030174255371 AS threshold, 4 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 323.43649112273926 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 292.367149968683 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 416.6445145849079 AS `Estimator` UNION ALL SELECT 12 AS node_id, 'scaler_4' AS feature, 0.43776944279670715 AS threshold, 17 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 88.9254099624822 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 24.144523493652905 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 146.5084201569971 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
`AdaBoost_Estim_0` AS 
(SELECT `DT_Output`.`KEY` AS join_key_0, `DT_Output`.`Estimator` AS `Estimator_0` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.3346976637840271) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.3918977975845337) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.9145227670669556) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.5012115240097046) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.2648073732852936) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= -0.1884535849094391) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.4097861051559448) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'scaler_9' AS feature, 0.3346976637840271 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 47.83504691190776 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'scaler_3' AS feature, -0.3918977975845337 AS threshold, 41 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -40.11157789886259 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'scaler_3' AS feature, -0.9145227670669556 AS threshold, 14 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -193.2663287580171 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -276.3421722547898 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -130.95944613543756 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'scaler_8' AS feature, -0.5012115240097046 AS threshold, 27 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 39.301996620698965 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -191.81503477986993 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 21 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 105.33543416371867 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'scaler_8' AS feature, -0.2648073732852936 AS threshold, 26 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 186.52010911350715 AS `Estimator` UNION ALL SELECT 9 AS node_id, 'scaler_11' AS feature, -0.1884535849094391 AS threshold, 7 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 37.75598660348261 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -122.64315349192483 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 101.91564264164559 AS `Estimator` UNION ALL SELECT 12 AS node_id, 'scaler_3' AS feature, -0.4097861051559448 AS threshold, 19 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 241.32794372246357 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 110.98251853953819 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 13 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 301.4873707299676 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.count AS count, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
`AdaBoost_Estim_1` AS 
(SELECT `DT_Output_1`.`KEY` AS join_key_1, `DT_Output_1`.`Estimator` AS `Estimator_1` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.6867867708206177) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -1.3210275173187256) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -0.4888914227485657) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= 1.043675422668457) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -1.5485496520996094) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.7492035627365112) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 1.541622281074524) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'scaler_7' AS feature, 0.6867867708206177 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 59.262502902028956 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'scaler_2' AS feature, -1.3210275173187256 AS threshold, 43 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -25.397193673688143 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'scaler_4' AS feature, -0.4888914227485657 AS threshold, 5 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -267.27927637481184 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -356.7282064880445 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -207.64665629932335 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'scaler_8' AS feature, 1.043675422668457 AS threshold, 38 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 6.429396155407083 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 27 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -40.06403126397655 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 11 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 120.54962709389419 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'scaler_4' AS feature, -1.5485496520996094 AS threshold, 24 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 210.9444592668555 AS `Estimator` UNION ALL SELECT 9 AS node_id, 'scaler_9' AS feature, 0.7492035627365112 AS threshold, 4 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -23.682379220115536 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -40.879979038381144 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -17.94984594736033 AS `Estimator` UNION ALL SELECT 12 AS node_id, 'scaler_10' AS feature, 1.541622281074524 AS threshold, 20 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 257.8698269642496 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 241.59328901896117 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 404.3586684718457 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.count AS count, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
`AdaBoost_Estim_2` AS 
(SELECT `DT_Output_2`.`KEY` AS join_key_2, `DT_Output_2`.`Estimator` AS `Estimator_2` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.09516480565071106) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -0.3568640649318695) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= 0.27487772703170776) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.9238330125808716) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.6936774849891663) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.0221818685531616) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.01974509283900261) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'scaler_2' AS feature, 0.09516480565071106 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 48.43482971170465 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'scaler_4' AS feature, -0.3568640649318695 AS threshold, 41 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -53.643011228788986 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'scaler_11' AS feature, 0.27487772703170776 AS threshold, 17 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -186.7584306743165 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -269.000829378992 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -94.23573213155659 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'scaler_3' AS feature, -0.9238330125808716 AS threshold, 24 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 40.647077545126365 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -196.95202957407722 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 19 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 103.17315836596939 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'scaler_9' AS feature, -0.6936774849891663 AS threshold, 26 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 209.40373273325227 AS `Estimator` UNION ALL SELECT 9 AS node_id, 'scaler_9' AS feature, -1.0221818685531616 AS threshold, 5 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -2.803080947506942 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -63.37660136531091 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 88.05719967919902 AS `Estimator` UNION ALL SELECT 12 AS node_id, 'scaler_4' AS feature, 0.01974509283900261 AS threshold, 21 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 259.9291645620044 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 115.15981134770307 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 14 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 332.31384116915524 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.count AS count, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
`AdaBoost_Estim_3` AS 
(SELECT `DT_Output_3`.`KEY` AS join_key_3, `DT_Output_3`.`Estimator` AS `Estimator_3` 
FROM `DT_Output_3`), 
`AdaBoost_Join_CTE` AS 
(SELECT `AdaBoost_Estim_0`.join_key_0 AS join_key_0, `AdaBoost_Estim_0`.`Estimator_0` AS `Estimator_0`, `AdaBoost_Estim_1`.join_key_1 AS join_key_1, `AdaBoost_Estim_1`.`Estimator_1` AS `Estimator_1`, `AdaBoost_Estim_2`.join_key_2 AS join_key_2, `AdaBoost_Estim_2`.`Estimator_2` AS `Estimator_2`, `AdaBoost_Estim_3`.join_key_3 AS join_key_3, `AdaBoost_Estim_3`.`Estimator_3` AS `Estimator_3` 
FROM `AdaBoost_Estim_0` LEFT OUTER JOIN `AdaBoost_Estim_1` ON `AdaBoost_Estim_0`.join_key_0 = `AdaBoost_Estim_1`.join_key_1 LEFT OUTER JOIN `AdaBoost_Estim_2` ON `AdaBoost_Estim_2`.join_key_2 = `AdaBoost_Estim_1`.join_key_1 LEFT OUTER JOIN `AdaBoost_Estim_3` ON `AdaBoost_Estim_3`.join_key_3 = `AdaBoost_Estim_2`.join_key_2), 
`WeightedEstimators` AS 
(SELECT `Values`.`Key` AS `Key`, `Values`.sub_estimator AS sub_estimator, `Values`.`Weight` AS `Weight`, `Values`.`Value` AS `Value` 
FROM (SELECT `AdaBoost_Join_CTE`.join_key_0 AS `Key`, 0 AS sub_estimator, 0.22743190229 AS `Weight`, `AdaBoost_Join_CTE`.`Estimator_0` AS `Value` 
FROM `AdaBoost_Join_CTE` UNION ALL SELECT `AdaBoost_Join_CTE`.join_key_0 AS `Key`, 1 AS sub_estimator, 0.208184497388 AS `Weight`, `AdaBoost_Join_CTE`.`Estimator_1` AS `Value` 
FROM `AdaBoost_Join_CTE` UNION ALL SELECT `AdaBoost_Join_CTE`.join_key_0 AS `Key`, 2 AS sub_estimator, 0.236999718332 AS `Weight`, `AdaBoost_Join_CTE`.`Estimator_2` AS `Value` 
FROM `AdaBoost_Join_CTE` UNION ALL SELECT `AdaBoost_Join_CTE`.join_key_0 AS `Key`, 3 AS sub_estimator, 0.32738388199 AS `Weight`, `AdaBoost_Join_CTE`.`Estimator_3` AS `Value` 
FROM `AdaBoost_Join_CTE`) AS `Values`), 
`Cumulative_Frequencies` AS 
(SELECT u1.`Key` AS `Key`, u1.sub_estimator AS sub_estimator, u1.`Weight` AS `Weight`, u1.`Value` AS `Value`, (SELECT sum(u2.`Weight`) AS sum_1 
FROM `WeightedEstimators` AS u2 
WHERE u1.`Key` = u2.`Key` AND u1.`Value` >= u2.`Value`) AS cum_weight 
FROM `WeightedEstimators` AS u1), 
`Quantiles` AS 
(SELECT `AdaBoost_Join_CTE`.join_key_0 AS join_key_0, `AdaBoost_Join_CTE`.`Estimator_0` AS `Estimator_0`, `AdaBoost_Join_CTE`.join_key_1 AS join_key_1, `AdaBoost_Join_CTE`.`Estimator_1` AS `Estimator_1`, `AdaBoost_Join_CTE`.join_key_2 AS join_key_2, `AdaBoost_Join_CTE`.`Estimator_2` AS `Estimator_2`, `AdaBoost_Join_CTE`.join_key_3 AS join_key_3, `AdaBoost_Join_CTE`.`Estimator_3` AS `Estimator_3`, (SELECT min(`Cumulative_Frequencies`.`Value`) AS min_1 
FROM `Cumulative_Frequencies` 
WHERE `AdaBoost_Join_CTE`.join_key_0 = `Cumulative_Frequencies`.`Key` AND `Cumulative_Frequencies`.cum_weight >= 0.5) AS `Median` 
FROM `AdaBoost_Join_CTE`)
 SELECT `Quantiles`.join_key_0 AS `KEY`, `Quantiles`.`Median` AS `Estimator` 
FROM `Quantiles`