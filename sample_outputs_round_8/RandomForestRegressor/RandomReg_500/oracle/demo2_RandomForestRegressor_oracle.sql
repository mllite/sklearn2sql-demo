-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_50" <= 0.8576238751411438) THEN CASE WHEN ("ADS"."Feature_425" <= 0.5799283981323242) THEN CASE WHEN ("ADS"."Feature_295" <= -0.21699929237365723) THEN CASE WHEN ("ADS"."Feature_375" <= 0.5587524175643921) THEN CASE WHEN ("ADS"."Feature_216" <= 1.1367955207824707) THEN 5 ELSE 6 END ELSE 7 END ELSE CASE WHEN ("ADS"."Feature_442" <= 0.09813284873962402) THEN CASE WHEN ("ADS"."Feature_285" <= 0.18924982845783234) THEN CASE WHEN ("ADS"."Feature_181" <= -0.7790212035179138) THEN 11 ELSE 12 END ELSE 13 END ELSE CASE WHEN ("ADS"."Feature_452" <= 0.31004029512405396) THEN CASE WHEN ("ADS"."Feature_448" <= 0.0674084946513176) THEN 16 ELSE CASE WHEN ("ADS"."Feature_394" <= -0.4905550181865692) THEN 18 ELSE 19 END END ELSE 20 END END END ELSE CASE WHEN ("ADS"."Feature_97" <= -1.349935531616211) THEN 22 ELSE CASE WHEN ("ADS"."Feature_72" <= -0.44285935163497925) THEN 24 ELSE 25 END END END ELSE CASE WHEN ("ADS"."Feature_309" <= -0.10676257312297821) THEN 27 ELSE 28 END END AS node_id_2 
FROM "RandomReg_500" "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_50' AS feature, 0.8576238751411438 AS threshold, 15 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 27.39829552714639 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_425' AS feature, 0.5799283981323242 AS threshold, 13 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -95.30405633942925 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_295' AS feature, -0.21699929237365723 AS threshold, 10 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -5.516356540993172 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, 'Feature_375' AS feature, 0.5587524175643921 AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 123.90822887443551 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_216' AS feature, 1.1367955207824707 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 110.15960302287728 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 111.5244595742472 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 107.42988992013744 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 144.53116765177282 AS "Estimator" FROM DUAL UNION ALL SELECT 8 AS node_id, 'Feature_442' AS feature, 0.09813284873962402 AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -70.22864924870751 AS "Estimator" FROM DUAL UNION ALL SELECT 9 AS node_id, 'Feature_285' AS feature, 0.18924982845783234 AS threshold, 3 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -6.361226851971866 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, 'Feature_181' AS feature, -0.7790212035179138 AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 6.252193429556464 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, 16.16477089946954 AS "Estimator" FROM DUAL UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.2959046945999262 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -25.281357274264362 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, 'Feature_452' AS feature, 0.31004029512405396 AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -134.09607164544315 AS "Estimator" FROM DUAL UNION ALL SELECT 15 AS node_id, 'Feature_448' AS feature, 0.0674084946513176 AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -101.09877466722794 AS "Estimator" FROM DUAL UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, -91.77495374584726 AS "Estimator" FROM DUAL UNION ALL SELECT 17 AS node_id, 'Feature_394' AS feature, -0.4905550181865692 AS threshold, 2 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, -105.76068512791832 AS "Estimator" FROM DUAL UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, CAST(NULL AS INTEGER) AS parent_id, -106.66368761576486 AS "Estimator" FROM DUAL UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, CAST(NULL AS INTEGER) AS parent_id, -104.85768264007177 AS "Estimator" FROM DUAL UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -183.59201711276592 AS "Estimator" FROM DUAL UNION ALL SELECT 21 AS node_id, 'Feature_97' AS feature, -1.349935531616211 AS threshold, 3 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -364.6671557347375 AS "Estimator" FROM DUAL UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -415.6958459005518 AS "Estimator" FROM DUAL UNION ALL SELECT 23 AS node_id, 'Feature_72' AS feature, -0.44285935163497925 AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -351.9099831932839 AS "Estimator" FROM DUAL UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -358.0319456028181 AS "Estimator" FROM DUAL UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -333.5440959646813 AS "Estimator" FROM DUAL UNION ALL SELECT 26 AS node_id, 'Feature_309' AS feature, -0.10676257312297821 AS threshold, 2 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 518.207702993449 AS "Estimator" FROM DUAL UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 605.6206481037917 AS "Estimator" FROM DUAL UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 459.9324062532205 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_90" <= -0.11421652883291245) THEN CASE WHEN ("ADS"."Feature_229" <= 0.5069829821586609) THEN CASE WHEN ("ADS"."Feature_230" <= 0.6402956247329712) THEN CASE WHEN ("ADS"."Feature_379" <= 0.14455930888652802) THEN CASE WHEN ("ADS"."Feature_310" <= 0.8679289817810059) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_201" <= 0.3733344078063965) THEN 8 ELSE 9 END END ELSE CASE WHEN ("ADS"."Feature_328" <= 0.8286647796630859) THEN 11 ELSE CASE WHEN ("ADS"."Feature_164" <= 0.6589291095733643) THEN 13 ELSE 14 END END END ELSE 15 END ELSE CASE WHEN ("ADS"."Feature_161" <= -0.33825504779815674) THEN CASE WHEN ("ADS"."Feature_468" <= -0.17097151279449463) THEN CASE WHEN ("ADS"."Feature_179" <= 0.31389033794403076) THEN 19 ELSE 20 END ELSE 21 END ELSE CASE WHEN ("ADS"."Feature_108" <= -0.3270791172981262) THEN CASE WHEN ("ADS"."Feature_489" <= -0.8573000431060791) THEN 24 ELSE CASE WHEN ("ADS"."Feature_91" <= 0.17777690291404724) THEN 26 ELSE 27 END END ELSE CASE WHEN ("ADS"."Feature_161" <= 0.7474112510681152) THEN 29 ELSE 30 END END END END AS node_id_2 
FROM "RandomReg_500" "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_90' AS feature, -0.11421652883291245 AS threshold, 16 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -59.00914700720041 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_229' AS feature, 0.5069829821586609 AS threshold, 8 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 108.05534148323893 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_230' AS feature, 0.6402956247329712 AS threshold, 7 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 76.06651741324059 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, 'Feature_379' AS feature, 0.14455930888652802 AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 138.13988576151428 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_310' AS feature, 0.8679289817810059 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 95.67277452526946 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 111.5244595742472 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 79.82108947629173 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, 'Feature_201' AS feature, 0.3733344078063965 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 155.1267302560122 AS "Estimator" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 157.77562090707207 AS "Estimator" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 144.53116765177282 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, 'Feature_328' AS feature, 0.8286647796630859 AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -32.561877196238356 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -145.75578079259012 AS "Estimator" FROM DUAL UNION ALL SELECT 12 AS node_id, 'Feature_164' AS feature, 0.6589291095733643 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 5.169424002545561 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 16.16477089946954 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -16.8212697913024 AS "Estimator" FROM DUAL UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 459.9324062532205 AS "Estimator" FROM DUAL UNION ALL SELECT 16 AS node_id, 'Feature_161' AS feature, -0.33825504779815674 AS threshold, 8 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -213.2225209983752 AS "Estimator" FROM DUAL UNION ALL SELECT 17 AS node_id, 'Feature_468' AS feature, -0.17097151279449463 AS threshold, 3 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -380.7419333421508 AS "Estimator" FROM DUAL UNION ALL SELECT 18 AS node_id, 'Feature_179' AS feature, 0.31389033794403076 AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -345.78802078374974 AS "Estimator" FROM DUAL UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -333.5440959646813 AS "Estimator" FROM DUAL UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -358.03194560281815 AS "Estimator" FROM DUAL UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -415.6958459005518 AS "Estimator" FROM DUAL UNION ALL SELECT 22 AS node_id, 'Feature_108' AS feature, -0.3270791172981262 AS threshold, 5 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -138.76944884558603 AS "Estimator" FROM DUAL UNION ALL SELECT 23 AS node_id, 'Feature_489' AS feature, -0.8573000431060791 AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -113.12021716002619 AS "Estimator" FROM DUAL UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -91.77495374584726 AS "Estimator" FROM DUAL UNION ALL SELECT 25 AS node_id, 'Feature_91' AS feature, 0.17777690291404724 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -117.38926984286195 AS "Estimator" FROM DUAL UNION ALL SELECT 26 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -117.48376250475526 AS "Estimator" FROM DUAL UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -117.01129919528873 AS "Estimator" FROM DUAL UNION ALL SELECT 28 AS node_id, 'Feature_161' AS feature, 0.7474112510681152 AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -190.06791221670574 AS "Estimator" FROM DUAL UNION ALL SELECT 29 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -183.59201711276592 AS "Estimator" FROM DUAL UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -203.01970242458535 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_173" <= 1.4986541271209717) THEN CASE WHEN ("ADS"."Feature_98" <= 0.17276418209075928) THEN CASE WHEN ("ADS"."Feature_456" <= 0.004461526870727539) THEN CASE WHEN ("ADS"."Feature_483" <= 0.8632863163948059) THEN CASE WHEN ("ADS"."Feature_314" <= 0.7213665843009949) THEN CASE WHEN ("ADS"."Feature_205" <= 0.7145581245422363) THEN CASE WHEN ("ADS"."Feature_327" <= 0.14272873103618622) THEN 7 ELSE 8 END ELSE 9 END ELSE 10 END ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_118" <= -0.4961686134338379) THEN 13 ELSE CASE WHEN ("ADS"."Feature_58" <= -0.1004260927438736) THEN 15 ELSE CASE WHEN ("ADS"."Feature_26" <= 0.9947439432144165) THEN CASE WHEN ("ADS"."Feature_345" <= 0.3319248557090759) THEN 18 ELSE 19 END ELSE 20 END END END END ELSE CASE WHEN ("ADS"."Feature_403" <= 1.1505200862884521) THEN CASE WHEN ("ADS"."Feature_238" <= 0.24030913412570953) THEN CASE WHEN ("ADS"."Feature_487" <= -0.6873887181282043) THEN 24 ELSE 25 END ELSE 26 END ELSE 27 END END ELSE CASE WHEN ("ADS"."Feature_67" <= 0.12076133489608765) THEN 29 ELSE 30 END END AS node_id_2 
FROM "RandomReg_500" "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_173' AS feature, 1.4986541271209717 AS threshold, 16 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 27.485262139512816 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_98' AS feature, 0.17276418209075928 AS threshold, 14 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -102.4797601664998 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_456' AS feature, 0.004461526870727539 AS threshold, 10 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -37.06163346633435 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, 'Feature_483' AS feature, 0.8632863163948059 AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -124.6654651243116 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_314' AS feature, 0.7213665843009949 AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -105.07690579924315 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, 'Feature_205' AS feature, 0.7145581245422363 AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -109.51088981704179 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, 'Feature_327' AS feature, 0.14272873103618622 AS threshold, 2 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, -105.76068512791832 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, CAST(NULL AS INTEGER) AS parent_id, -106.66368761576486 AS "Estimator" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, CAST(NULL AS INTEGER) AS parent_id, -104.85768264007177 AS "Estimator" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, -117.01129919528873 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -91.77495374584726 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -203.01970242458535 AS "Estimator" FROM DUAL UNION ALL SELECT 12 AS node_id, 'Feature_118' AS feature, -0.4961686134338379 AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 6.740282362654261 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 111.5244595742472 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, 'Feature_58' AS feature, -0.1004260927438736 AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -19.455761940243974 AS "Estimator" FROM DUAL UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 16.16477089946954 AS "Estimator" FROM DUAL UNION ALL SELECT 16 AS node_id, 'Feature_26' AS feature, 0.9947439432144165 AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -31.329272886815147 AS "Estimator" FROM DUAL UNION ALL SELECT 17 AS node_id, 'Feature_345' AS feature, 0.3319248557090759 AS threshold, 2 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, -22.461328113277045 AS "Estimator" FROM DUAL UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, CAST(NULL AS INTEGER) AS parent_id, -16.8212697913024 AS "Estimator" FROM DUAL UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, CAST(NULL AS INTEGER) AS parent_id, -25.281357274264362 AS "Estimator" FROM DUAL UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, -40.197217660353246 AS "Estimator" FROM DUAL UNION ALL SELECT 21 AS node_id, 'Feature_403' AS feature, 1.1505200862884521 AS threshold, 4 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -298.734140266996 AS "Estimator" FROM DUAL UNION ALL SELECT 22 AS node_id, 'Feature_238' AS feature, 0.24030913412570953 AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -369.0906291560171 AS "Estimator" FROM DUAL UNION ALL SELECT 23 AS node_id, 'Feature_487' AS feature, -0.6873887181282043 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -345.78802078374974 AS "Estimator" FROM DUAL UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -333.5440959646813 AS "Estimator" FROM DUAL UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -358.03194560281815 AS "Estimator" FROM DUAL UNION ALL SELECT 26 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -415.6958459005518 AS "Estimator" FROM DUAL UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -193.19940693346453 AS "Estimator" FROM DUAL UNION ALL SELECT 28 AS node_id, 'Feature_67' AS feature, 0.12076133489608765 AS threshold, 2 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 547.3453513635633 AS "Estimator" FROM DUAL UNION ALL SELECT 29 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 605.6206481037917 AS "Estimator" FROM DUAL UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 459.9324062532205 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_354" <= 1.402106761932373) THEN CASE WHEN ("ADS"."Feature_339" <= 0.9294003248214722) THEN CASE WHEN ("ADS"."Feature_473" <= -1.087221622467041) THEN CASE WHEN ("ADS"."Feature_245" <= 0.8873288035392761) THEN CASE WHEN ("ADS"."Feature_111" <= -0.2767271399497986) THEN CASE WHEN ("ADS"."Feature_288" <= -0.012450188398361206) THEN 6 ELSE 7 END ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_291" <= 0.21577684581279755) THEN CASE WHEN ("ADS"."Feature_169" <= 0.5482785701751709) THEN CASE WHEN ("ADS"."Feature_265" <= 0.9032887816429138) THEN CASE WHEN ("ADS"."Feature_19" <= 0.7075278162956238) THEN CASE WHEN ("ADS"."Feature_74" <= -0.4437256157398224) THEN 15 ELSE 16 END ELSE 17 END ELSE 18 END ELSE 19 END ELSE CASE WHEN ("ADS"."Feature_56" <= -0.3592982590198517) THEN CASE WHEN ("ADS"."Feature_363" <= -0.11905360221862793) THEN 22 ELSE 23 END ELSE CASE WHEN ("ADS"."Feature_167" <= 1.1935865879058838) THEN 25 ELSE 26 END END END END ELSE CASE WHEN ("ADS"."Feature_235" <= 0.13112522661685944) THEN CASE WHEN ("ADS"."Feature_115" <= -0.17556515336036682) THEN 29 ELSE 30 END ELSE CASE WHEN ("ADS"."Feature_73" <= 0.3998635709285736) THEN 32 ELSE 33 END END END ELSE CASE WHEN ("ADS"."Feature_404" <= 0.36256587505340576) THEN 35 ELSE 36 END END AS node_id_2 
FROM "RandomReg_500" "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_354' AS feature, 1.402106761932373 AS threshold, 19 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.119165758778868 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_339' AS feature, 0.9294003248214722 AS threshold, 17 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -90.41977174262499 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_473' AS feature, -1.087221622467041 AS threshold, 13 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -17.043181840414245 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, 'Feature_245' AS feature, 0.8873288035392761 AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 110.96621323933928 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_111' AS feature, -0.2767271399497986 AS threshold, 3 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 102.57497463623089 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, 'Feature_288' AS feature, -0.012450188398361206 AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 110.15960302287728 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, 107.42988992013744 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, 111.5244595742472 AS "Estimator" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 79.82108947629173 AS "Estimator" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 144.53116765177282 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, 'Feature_291' AS feature, 0.21577684581279755 AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -81.047879380291 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, 'Feature_169' AS feature, 0.5482785701751709 AS threshold, 5 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -121.579142295265 AS "Estimator" FROM DUAL UNION ALL SELECT 12 AS node_id, 'Feature_265' AS feature, 0.9032887816429138 AS threshold, 4 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -105.39426216254749 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, 'Feature_19' AS feature, 0.7075278162956238 AS threshold, 3 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, -108.79908926672255 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, 'Feature_74' AS feature, -0.4437256157398224 AS threshold, 2 AS count, 7 AS depth, CAST(NULL AS INTEGER) AS parent_id, -106.0616859572005 AS "Estimator" FROM DUAL UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 8 AS depth, CAST(NULL AS INTEGER) AS parent_id, -106.66368761576486 AS "Estimator" FROM DUAL UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 8 AS depth, CAST(NULL AS INTEGER) AS parent_id, -104.85768264007177 AS "Estimator" FROM DUAL UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, CAST(NULL AS INTEGER) AS parent_id, -117.01129919528873 AS "Estimator" FROM DUAL UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, -91.77495374584726 AS "Estimator" FROM DUAL UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -202.50354295885256 AS "Estimator" FROM DUAL UNION ALL SELECT 20 AS node_id, 'Feature_56' AS feature, -0.3592982590198517 AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -20.25098500783002 AS "Estimator" FROM DUAL UNION ALL SELECT 21 AS node_id, 'Feature_363' AS feature, -0.11905360221862793 AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -7.762682548351236 AS "Estimator" FROM DUAL UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, -16.8212697913024 AS "Estimator" FROM DUAL UNION ALL SELECT 23 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.2959046945999262 AS "Estimator" FROM DUAL UNION ALL SELECT 24 AS node_id, 'Feature_167' AS feature, 1.1935865879058838 AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, -32.739287467308806 AS "Estimator" FROM DUAL UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, -25.281357274264362 AS "Estimator" FROM DUAL UNION ALL SELECT 26 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, -40.197217660353246 AS "Estimator" FROM DUAL UNION ALL SELECT 27 AS node_id, 'Feature_235' AS feature, 0.13112522661685944 AS threshold, 4 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -273.8612464981518 AS "Estimator" FROM DUAL UNION ALL SELECT 28 AS node_id, 'Feature_115' AS feature, -0.17556515336036682 AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -360.9280126099714 AS "Estimator" FROM DUAL UNION ALL SELECT 29 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -333.5440959646813 AS "Estimator" FROM DUAL UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -415.6958459005518 AS "Estimator" FROM DUAL UNION ALL SELECT 31 AS node_id, 'Feature_73' AS feature, 0.3998635709285736 AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -186.7944803863321 AS "Estimator" FROM DUAL UNION ALL SELECT 32 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -193.19940693346453 AS "Estimator" FROM DUAL UNION ALL SELECT 33 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, -183.59201711276592 AS "Estimator" FROM DUAL UNION ALL SELECT 34 AS node_id, 'Feature_404' AS feature, 0.36256587505340576 AS threshold, 2 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 569.198587641149 AS "Estimator" FROM DUAL UNION ALL SELECT 35 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 605.6206481037917 AS "Estimator" FROM DUAL UNION ALL SELECT 36 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 459.9324062532205 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"RF_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator" 
FROM (SELECT "RF_Tree_0"."KEY" AS "KEY", "RF_Tree_0"."Estimator" AS "Estimator" 
FROM "RF_Tree_0" UNION ALL SELECT "RF_Tree_1"."KEY" AS "KEY", "RF_Tree_1"."Estimator" AS "Estimator" 
FROM "RF_Tree_1" UNION ALL SELECT "RF_Tree_2"."KEY" AS "KEY", "RF_Tree_2"."Estimator" AS "Estimator" 
FROM "RF_Tree_2" UNION ALL SELECT "RF_Tree_3"."KEY" AS "KEY", "RF_Tree_3"."Estimator" AS "Estimator" 
FROM "RF_Tree_3") ensemble_score_union), 
"RF_AVG_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", avg("Score_Union_CTE"."Estimator") AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") "T")
 SELECT "RF_AVG_Scores"."KEY" AS "KEY", "RF_AVG_Scores"."Estimator" AS "Estimator" 
FROM "RF_AVG_Scores"