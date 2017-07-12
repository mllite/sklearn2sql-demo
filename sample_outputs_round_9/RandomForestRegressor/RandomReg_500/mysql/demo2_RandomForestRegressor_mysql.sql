-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_354` <= 1.402106761932373) THEN CASE WHEN (`ADS`.`Feature_168` <= 0.15048067271709442) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.1239587813615799) THEN CASE WHEN (`ADS`.`Feature_466` <= -1.2035801410675049) THEN 4 ELSE 5 END ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_71` <= 0.2675558030605316) THEN CASE WHEN (`ADS`.`Feature_442` <= 0.09813284873962402) THEN CASE WHEN (`ADS`.`Feature_285` <= 0.18924982845783234) THEN CASE WHEN (`ADS`.`Feature_181` <= -0.7790212035179138) THEN 11 ELSE 12 END ELSE 13 END ELSE CASE WHEN (`ADS`.`Feature_452` <= 0.31004029512405396) THEN CASE WHEN (`ADS`.`Feature_133` <= 0.9548184871673584) THEN CASE WHEN (`ADS`.`Feature_394` <= -0.4905550181865692) THEN 17 ELSE 18 END ELSE 19 END ELSE 20 END END ELSE CASE WHEN (`ADS`.`Feature_402` <= -0.3905944526195526) THEN CASE WHEN (`ADS`.`Feature_72` <= 0.18490655720233917) THEN 23 ELSE 24 END ELSE 25 END END END ELSE CASE WHEN (`ADS`.`Feature_309` <= -0.10676257312297821) THEN 27 ELSE 28 END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_354' AS feature, 1.402106761932373 AS threshold, 15 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 27.398295527146402 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_168' AS feature, 0.15048067271709442 AS threshold, 13 AS count, 1 AS depth, 0 AS parent_id, -95.30405633942922 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 0.1239587813615799 AS threshold, 3 AS count, 2 AS depth, 1 AS parent_id, -364.6671557347375 AS `Estimator` UNION ALL SELECT 3 AS node_id, 'Feature_466' AS feature, -1.2035801410675049 AS threshold, 2 AS count, 3 AS depth, 2 AS parent_id, -351.9099831932839 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 3 AS parent_id, -333.5440959646812 AS `Estimator` UNION ALL SELECT 5 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 3 AS parent_id, -358.0319456028181 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -415.6958459005518 AS `Estimator` UNION ALL SELECT 7 AS node_id, 'Feature_71' AS feature, 0.2675558030605316 AS threshold, 10 AS count, 2 AS depth, 1 AS parent_id, -5.516356540993168 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_442' AS feature, 0.09813284873962402 AS threshold, 7 AS count, 3 AS depth, 7 AS parent_id, -70.22864924870751 AS `Estimator` UNION ALL SELECT 9 AS node_id, 'Feature_285' AS feature, 0.18924982845783234 AS threshold, 3 AS count, 4 AS depth, 8 AS parent_id, -6.361226851971862 AS `Estimator` UNION ALL SELECT 10 AS node_id, 'Feature_181' AS feature, -0.7790212035179138 AS threshold, 2 AS count, 5 AS depth, 9 AS parent_id, 6.252193429556475 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 10 AS parent_id, 16.16477089946953 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 10 AS parent_id, 1.2959046945999475 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 9 AS parent_id, -25.28135727426437 AS `Estimator` UNION ALL SELECT 14 AS node_id, 'Feature_452' AS feature, 0.31004029512405396 AS threshold, 4 AS count, 4 AS depth, 8 AS parent_id, -134.09607164544315 AS `Estimator` UNION ALL SELECT 15 AS node_id, 'Feature_133' AS feature, 0.9548184871673584 AS threshold, 3 AS count, 5 AS depth, 14 AS parent_id, -101.09877466722794 AS `Estimator` UNION ALL SELECT 16 AS node_id, 'Feature_394' AS feature, -0.4905550181865692 AS threshold, 2 AS count, 6 AS depth, 15 AS parent_id, -105.76068512791832 AS `Estimator` UNION ALL SELECT 17 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 16 AS parent_id, -106.66368761576487 AS `Estimator` UNION ALL SELECT 18 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 16 AS parent_id, -104.85768264007177 AS `Estimator` UNION ALL SELECT 19 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 15 AS parent_id, -91.77495374584724 AS `Estimator` UNION ALL SELECT 20 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 14 AS parent_id, -183.59201711276592 AS `Estimator` UNION ALL SELECT 21 AS node_id, 'Feature_402' AS feature, -0.3905944526195526 AS threshold, 3 AS count, 3 AS depth, 7 AS parent_id, 123.90822887443551 AS `Estimator` UNION ALL SELECT 22 AS node_id, 'Feature_72' AS feature, 0.18490655720233917 AS threshold, 2 AS count, 4 AS depth, 21 AS parent_id, 110.15960302287728 AS `Estimator` UNION ALL SELECT 23 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 22 AS parent_id, 107.42988992013741 AS `Estimator` UNION ALL SELECT 24 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 22 AS parent_id, 111.52445957424722 AS `Estimator` UNION ALL SELECT 25 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 21 AS parent_id, 144.53116765177285 AS `Estimator` UNION ALL SELECT 26 AS node_id, 'Feature_309' AS feature, -0.10676257312297821 AS threshold, 2 AS count, 1 AS depth, 0 AS parent_id, 518.207702993449 AS `Estimator` UNION ALL SELECT 27 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, 26 AS parent_id, 605.6206481037917 AS `Estimator` UNION ALL SELECT 28 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, 26 AS parent_id, 459.9324062532205 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
`RF_Tree_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_90` <= -0.11421652883291245) THEN CASE WHEN (`ADS`.`Feature_229` <= 0.5069829821586609) THEN CASE WHEN (`ADS`.`Feature_230` <= 0.6402956247329712) THEN CASE WHEN (`ADS`.`Feature_379` <= 0.14455930888652802) THEN CASE WHEN (`ADS`.`Feature_310` <= 0.8679289817810059) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_66` <= -0.013639520853757858) THEN 8 ELSE 9 END END ELSE CASE WHEN (`ADS`.`Feature_328` <= 0.8286647796630859) THEN 11 ELSE CASE WHEN (`ADS`.`Feature_164` <= 0.6589291095733643) THEN 13 ELSE 14 END END END ELSE 15 END ELSE CASE WHEN (`ADS`.`Feature_20` <= 0.7184655070304871) THEN CASE WHEN (`ADS`.`Feature_214` <= -0.7653027772903442) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.4764198064804077) THEN 19 ELSE 20 END ELSE CASE WHEN (`ADS`.`Feature_197` <= 0.45052409172058105) THEN 22 ELSE CASE WHEN (`ADS`.`Feature_489` <= 0.08243842422962189) THEN 24 ELSE 25 END END END ELSE CASE WHEN (`ADS`.`Feature_91` <= -1.2824974060058594) THEN 27 ELSE CASE WHEN (`ADS`.`Feature_24` <= -0.7971706986427307) THEN 29 ELSE 30 END END END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_90' AS feature, -0.11421652883291245 AS threshold, 16 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -59.0091470072004 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_229' AS feature, 0.5069829821586609 AS threshold, 8 AS count, 1 AS depth, 0 AS parent_id, 108.05534148323892 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_230' AS feature, 0.6402956247329712 AS threshold, 7 AS count, 2 AS depth, 1 AS parent_id, 76.06651741324059 AS `Estimator` UNION ALL SELECT 3 AS node_id, 'Feature_379' AS feature, 0.14455930888652802 AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, 138.13988576151428 AS `Estimator` UNION ALL SELECT 4 AS node_id, 'Feature_310' AS feature, 0.8679289817810059 AS threshold, 2 AS count, 4 AS depth, 3 AS parent_id, 95.67277452526946 AS `Estimator` UNION ALL SELECT 5 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 4 AS parent_id, 111.52445957424722 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 4 AS parent_id, 79.82108947629172 AS `Estimator` UNION ALL SELECT 7 AS node_id, 'Feature_66' AS feature, -0.013639520853757858 AS threshold, 2 AS count, 4 AS depth, 3 AS parent_id, 155.1267302560122 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 7 AS parent_id, 144.53116765177285 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 7 AS parent_id, 157.77562090707204 AS `Estimator` UNION ALL SELECT 10 AS node_id, 'Feature_328' AS feature, 0.8286647796630859 AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, -32.561877196238356 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 10 AS parent_id, -145.7557807925901 AS `Estimator` UNION ALL SELECT 12 AS node_id, 'Feature_164' AS feature, 0.6589291095733643 AS threshold, 2 AS count, 4 AS depth, 10 AS parent_id, 5.169424002545559 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 12 AS parent_id, 16.16477089946953 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 12 AS parent_id, -16.821269791302385 AS `Estimator` UNION ALL SELECT 15 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, 1 AS parent_id, 459.9324062532205 AS `Estimator` UNION ALL SELECT 16 AS node_id, 'Feature_20' AS feature, 0.7184655070304871 AS threshold, 8 AS count, 1 AS depth, 0 AS parent_id, -213.2225209983752 AS `Estimator` UNION ALL SELECT 17 AS node_id, 'Feature_214' AS feature, -0.7653027772903442 AS threshold, 5 AS count, 2 AS depth, 16 AS parent_id, -138.769448845586 AS `Estimator` UNION ALL SELECT 18 AS node_id, 'Feature_1' AS feature, 0.4764198064804077 AS threshold, 2 AS count, 3 AS depth, 17 AS parent_id, -190.06791221670574 AS `Estimator` UNION ALL SELECT 19 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 18 AS parent_id, -183.59201711276592 AS `Estimator` UNION ALL SELECT 20 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 18 AS parent_id, -203.01970242458535 AS `Estimator` UNION ALL SELECT 21 AS node_id, 'Feature_197' AS feature, 0.45052409172058105 AS threshold, 3 AS count, 3 AS depth, 17 AS parent_id, -113.12021716002617 AS `Estimator` UNION ALL SELECT 22 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 21 AS parent_id, -91.77495374584724 AS `Estimator` UNION ALL SELECT 23 AS node_id, 'Feature_489' AS feature, 0.08243842422962189 AS threshold, 2 AS count, 4 AS depth, 21 AS parent_id, -117.38926984286195 AS `Estimator` UNION ALL SELECT 24 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 23 AS parent_id, -117.48376250475525 AS `Estimator` UNION ALL SELECT 25 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 23 AS parent_id, -117.01129919528874 AS `Estimator` UNION ALL SELECT 26 AS node_id, 'Feature_91' AS feature, -1.2824974060058594 AS threshold, 3 AS count, 2 AS depth, 16 AS parent_id, -380.7419333421508 AS `Estimator` UNION ALL SELECT 27 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 26 AS parent_id, -415.6958459005518 AS `Estimator` UNION ALL SELECT 28 AS node_id, 'Feature_24' AS feature, -0.7971706986427307 AS threshold, 2 AS count, 3 AS depth, 26 AS parent_id, -345.7880207837497 AS `Estimator` UNION ALL SELECT 29 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 28 AS parent_id, -358.03194560281815 AS `Estimator` UNION ALL SELECT 30 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 28 AS parent_id, -333.5440959646812 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.count AS count, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
`RF_Tree_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_274` <= 1.2415075302124023) THEN CASE WHEN (`ADS`.`Feature_98` <= 0.17276418209075928) THEN CASE WHEN (`ADS`.`Feature_456` <= 0.004461526870727539) THEN CASE WHEN (`ADS`.`Feature_483` <= 0.8632863163948059) THEN CASE WHEN (`ADS`.`Feature_314` <= 0.7213665843009949) THEN CASE WHEN (`ADS`.`Feature_205` <= 0.7145581245422363) THEN CASE WHEN (`ADS`.`Feature_327` <= 0.14272873103618622) THEN 7 ELSE 8 END ELSE 9 END ELSE 10 END ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_487` <= 0.8059232234954834) THEN CASE WHEN (`ADS`.`Feature_191` <= 1.6176466941833496) THEN CASE WHEN (`ADS`.`Feature_26` <= 0.9947439432144165) THEN CASE WHEN (`ADS`.`Feature_345` <= 0.3319248557090759) THEN 16 ELSE 17 END ELSE 18 END ELSE 19 END ELSE 20 END END ELSE CASE WHEN (`ADS`.`Feature_235` <= 0.20665524899959564) THEN CASE WHEN (`ADS`.`Feature_238` <= 0.24030913412570953) THEN CASE WHEN (`ADS`.`Feature_415` <= 0.7252121567726135) THEN 24 ELSE 25 END ELSE 26 END ELSE 27 END END ELSE CASE WHEN (`ADS`.`Feature_67` <= 0.12076133489608765) THEN 29 ELSE 30 END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_274' AS feature, 1.2415075302124023 AS threshold, 16 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 27.485262139512834 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_98' AS feature, 0.17276418209075928 AS threshold, 14 AS count, 1 AS depth, 0 AS parent_id, -102.47976016649977 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_456' AS feature, 0.004461526870727539 AS threshold, 10 AS count, 2 AS depth, 1 AS parent_id, -37.06163346633435 AS `Estimator` UNION ALL SELECT 3 AS node_id, 'Feature_483' AS feature, 0.8632863163948059 AS threshold, 5 AS count, 3 AS depth, 2 AS parent_id, -124.6654651243116 AS `Estimator` UNION ALL SELECT 4 AS node_id, 'Feature_314' AS feature, 0.7213665843009949 AS threshold, 4 AS count, 4 AS depth, 3 AS parent_id, -105.07690579924315 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_205' AS feature, 0.7145581245422363 AS threshold, 3 AS count, 5 AS depth, 4 AS parent_id, -109.51088981704179 AS `Estimator` UNION ALL SELECT 6 AS node_id, 'Feature_327' AS feature, 0.14272873103618622 AS threshold, 2 AS count, 6 AS depth, 5 AS parent_id, -105.76068512791832 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 6 AS parent_id, -106.66368761576487 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 6 AS parent_id, -104.85768264007177 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 5 AS parent_id, -117.01129919528874 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 4 AS parent_id, -91.77495374584724 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 3 AS parent_id, -203.01970242458535 AS `Estimator` UNION ALL SELECT 12 AS node_id, 'Feature_487' AS feature, 0.8059232234954834 AS threshold, 5 AS count, 3 AS depth, 2 AS parent_id, 6.7402823626542645 AS `Estimator` UNION ALL SELECT 13 AS node_id, 'Feature_191' AS feature, 1.6176466941833496 AS threshold, 4 AS count, 4 AS depth, 12 AS parent_id, -19.455761940243974 AS `Estimator` UNION ALL SELECT 14 AS node_id, 'Feature_26' AS feature, 0.9947439432144165 AS threshold, 3 AS count, 5 AS depth, 13 AS parent_id, -31.329272886815144 AS `Estimator` UNION ALL SELECT 15 AS node_id, 'Feature_345' AS feature, 0.3319248557090759 AS threshold, 2 AS count, 6 AS depth, 14 AS parent_id, -22.461328113277045 AS `Estimator` UNION ALL SELECT 16 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 15 AS parent_id, -16.821269791302385 AS `Estimator` UNION ALL SELECT 17 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 15 AS parent_id, -25.28135727426437 AS `Estimator` UNION ALL SELECT 18 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 14 AS parent_id, -40.197217660353246 AS `Estimator` UNION ALL SELECT 19 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 13 AS parent_id, 16.16477089946953 AS `Estimator` UNION ALL SELECT 20 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 12 AS parent_id, 111.52445957424722 AS `Estimator` UNION ALL SELECT 21 AS node_id, 'Feature_235' AS feature, 0.20665524899959564 AS threshold, 4 AS count, 2 AS depth, 1 AS parent_id, -298.734140266996 AS `Estimator` UNION ALL SELECT 22 AS node_id, 'Feature_238' AS feature, 0.24030913412570953 AS threshold, 3 AS count, 3 AS depth, 21 AS parent_id, -369.0906291560171 AS `Estimator` UNION ALL SELECT 23 AS node_id, 'Feature_415' AS feature, 0.7252121567726135 AS threshold, 2 AS count, 4 AS depth, 22 AS parent_id, -345.7880207837497 AS `Estimator` UNION ALL SELECT 24 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 23 AS parent_id, -358.03194560281815 AS `Estimator` UNION ALL SELECT 25 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 23 AS parent_id, -333.5440959646812 AS `Estimator` UNION ALL SELECT 26 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 22 AS parent_id, -415.6958459005518 AS `Estimator` UNION ALL SELECT 27 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 21 AS parent_id, -193.1994069334645 AS `Estimator` UNION ALL SELECT 28 AS node_id, 'Feature_67' AS feature, 0.12076133489608765 AS threshold, 2 AS count, 1 AS depth, 0 AS parent_id, 547.3453513635633 AS `Estimator` UNION ALL SELECT 29 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, 28 AS parent_id, 605.6206481037917 AS `Estimator` UNION ALL SELECT 30 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, 28 AS parent_id, 459.9324062532205 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.count AS count, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
`RF_Tree_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_354` <= 1.402106761932373) THEN CASE WHEN (`ADS`.`Feature_339` <= 0.9294003248214722) THEN CASE WHEN (`ADS`.`Feature_473` <= -1.087221622467041) THEN CASE WHEN (`ADS`.`Feature_442` <= -0.10053686052560806) THEN CASE WHEN (`ADS`.`Feature_111` <= -0.2767271399497986) THEN CASE WHEN (`ADS`.`Feature_288` <= -0.012450188398361206) THEN 6 ELSE 7 END ELSE 8 END ELSE 9 END ELSE CASE WHEN (`ADS`.`Feature_291` <= 0.21577684581279755) THEN CASE WHEN (`ADS`.`Feature_472` <= -1.3796429634094238) THEN 12 ELSE CASE WHEN (`ADS`.`Feature_265` <= 0.9032887816429138) THEN CASE WHEN (`ADS`.`Feature_19` <= 0.7075278162956238) THEN CASE WHEN (`ADS`.`Feature_74` <= -0.4437256157398224) THEN 16 ELSE 17 END ELSE 18 END ELSE 19 END END ELSE CASE WHEN (`ADS`.`Feature_311` <= -0.7476339340209961) THEN CASE WHEN (`ADS`.`Feature_363` <= -0.7646300792694092) THEN 22 ELSE 23 END ELSE CASE WHEN (`ADS`.`Feature_167` <= -0.5365700125694275) THEN 25 ELSE 26 END END END END ELSE CASE WHEN (`ADS`.`Feature_235` <= 0.13112522661685944) THEN CASE WHEN (`ADS`.`Feature_115` <= -0.17556515336036682) THEN 29 ELSE 30 END ELSE CASE WHEN (`ADS`.`Feature_73` <= 0.3998635709285736) THEN 32 ELSE 33 END END END ELSE CASE WHEN (`ADS`.`Feature_404` <= 0.36256587505340576) THEN 35 ELSE 36 END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_354' AS feature, 1.402106761932373 AS threshold, 19 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 15.119165758778855 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_339' AS feature, 0.9294003248214722 AS threshold, 17 AS count, 1 AS depth, 0 AS parent_id, -90.41977174262497 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_473' AS feature, -1.087221622467041 AS threshold, 13 AS count, 2 AS depth, 1 AS parent_id, -17.043181840414253 AS `Estimator` UNION ALL SELECT 3 AS node_id, 'Feature_442' AS feature, -0.10053686052560806 AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, 110.96621323933928 AS `Estimator` UNION ALL SELECT 4 AS node_id, 'Feature_111' AS feature, -0.2767271399497986 AS threshold, 3 AS count, 4 AS depth, 3 AS parent_id, 102.57497463623088 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_288' AS feature, -0.012450188398361206 AS threshold, 2 AS count, 5 AS depth, 4 AS parent_id, 110.15960302287728 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 5 AS parent_id, 107.42988992013741 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 5 AS parent_id, 111.52445957424722 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 4 AS parent_id, 79.82108947629172 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 3 AS parent_id, 144.53116765177285 AS `Estimator` UNION ALL SELECT 10 AS node_id, 'Feature_291' AS feature, 0.21577684581279755 AS threshold, 9 AS count, 3 AS depth, 2 AS parent_id, -81.04787938029101 AS `Estimator` UNION ALL SELECT 11 AS node_id, 'Feature_472' AS feature, -1.3796429634094238 AS threshold, 5 AS count, 4 AS depth, 10 AS parent_id, -121.57914229526502 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 11 AS parent_id, -202.50354295885262 AS `Estimator` UNION ALL SELECT 13 AS node_id, 'Feature_265' AS feature, 0.9032887816429138 AS threshold, 4 AS count, 5 AS depth, 11 AS parent_id, -105.39426216254749 AS `Estimator` UNION ALL SELECT 14 AS node_id, 'Feature_19' AS feature, 0.7075278162956238 AS threshold, 3 AS count, 6 AS depth, 13 AS parent_id, -108.79908926672258 AS `Estimator` UNION ALL SELECT 15 AS node_id, 'Feature_74' AS feature, -0.4437256157398224 AS threshold, 2 AS count, 7 AS depth, 14 AS parent_id, -106.06168595720051 AS `Estimator` UNION ALL SELECT 16 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 15 AS parent_id, -106.66368761576487 AS `Estimator` UNION ALL SELECT 17 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 15 AS parent_id, -104.85768264007177 AS `Estimator` UNION ALL SELECT 18 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 14 AS parent_id, -117.01129919528874 AS `Estimator` UNION ALL SELECT 19 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 13 AS parent_id, -91.77495374584724 AS `Estimator` UNION ALL SELECT 20 AS node_id, 'Feature_311' AS feature, -0.7476339340209961 AS threshold, 4 AS count, 4 AS depth, 10 AS parent_id, -20.25098500783001 AS `Estimator` UNION ALL SELECT 21 AS node_id, 'Feature_363' AS feature, -0.7646300792694092 AS threshold, 2 AS count, 5 AS depth, 20 AS parent_id, -32.739287467308806 AS `Estimator` UNION ALL SELECT 22 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 21 AS parent_id, -25.28135727426437 AS `Estimator` UNION ALL SELECT 23 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 21 AS parent_id, -40.197217660353246 AS `Estimator` UNION ALL SELECT 24 AS node_id, 'Feature_167' AS feature, -0.5365700125694275 AS threshold, 2 AS count, 5 AS depth, 20 AS parent_id, -7.7626825483512185 AS `Estimator` UNION ALL SELECT 25 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 24 AS parent_id, -16.821269791302385 AS `Estimator` UNION ALL SELECT 26 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 24 AS parent_id, 1.2959046945999475 AS `Estimator` UNION ALL SELECT 27 AS node_id, 'Feature_235' AS feature, 0.13112522661685944 AS threshold, 4 AS count, 2 AS depth, 1 AS parent_id, -273.8612464981518 AS `Estimator` UNION ALL SELECT 28 AS node_id, 'Feature_115' AS feature, -0.17556515336036682 AS threshold, 2 AS count, 3 AS depth, 27 AS parent_id, -360.9280126099714 AS `Estimator` UNION ALL SELECT 29 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 28 AS parent_id, -333.5440959646812 AS `Estimator` UNION ALL SELECT 30 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 28 AS parent_id, -415.6958459005518 AS `Estimator` UNION ALL SELECT 31 AS node_id, 'Feature_73' AS feature, 0.3998635709285736 AS threshold, 2 AS count, 3 AS depth, 27 AS parent_id, -186.7944803863321 AS `Estimator` UNION ALL SELECT 32 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 31 AS parent_id, -193.1994069334645 AS `Estimator` UNION ALL SELECT 33 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 31 AS parent_id, -183.59201711276592 AS `Estimator` UNION ALL SELECT 34 AS node_id, 'Feature_404' AS feature, 0.36256587505340576 AS threshold, 2 AS count, 1 AS depth, 0 AS parent_id, 569.198587641149 AS `Estimator` UNION ALL SELECT 35 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, 34 AS parent_id, 605.6206481037917 AS `Estimator` UNION ALL SELECT 36 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, 34 AS parent_id, 459.9324062532205 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.count AS count, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
`RF_Tree_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`Score_Union_CTE` AS 
(SELECT ensemble_score_union.`KEY` AS `KEY`, ensemble_score_union.`Estimator` AS `Estimator` 
FROM (SELECT `RF_Tree_0`.`KEY` AS `KEY`, `RF_Tree_0`.`Estimator` AS `Estimator` 
FROM `RF_Tree_0` UNION ALL SELECT `RF_Tree_1`.`KEY` AS `KEY`, `RF_Tree_1`.`Estimator` AS `Estimator` 
FROM `RF_Tree_1` UNION ALL SELECT `RF_Tree_2`.`KEY` AS `KEY`, `RF_Tree_2`.`Estimator` AS `Estimator` 
FROM `RF_Tree_2` UNION ALL SELECT `RF_Tree_3`.`KEY` AS `KEY`, `RF_Tree_3`.`Estimator` AS `Estimator` 
FROM `RF_Tree_3`) AS ensemble_score_union), 
`RF_AVG_Scores` AS 
(SELECT `T`.`KEY` AS `KEY`, `T`.`Estimator` AS `Estimator` 
FROM (SELECT `Score_Union_CTE`.`KEY` AS `KEY`, avg(`Score_Union_CTE`.`Estimator`) AS `Estimator` 
FROM `Score_Union_CTE` GROUP BY `Score_Union_CTE`.`KEY`) AS `T`)
 SELECT `RF_AVG_Scores`.`KEY` AS `KEY`, `RF_AVG_Scores`.`Estimator` AS `Estimator` 
FROM `RF_AVG_Scores`