-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_60` <= 2.5) THEN CASE WHEN (`ADS`.`Feature_17` <= 2.5) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_21` <= 2.5) THEN 4 ELSE CASE WHEN (`ADS`.`Feature_42` <= 3.0) THEN CASE WHEN (`ADS`.`Feature_35` <= 7.0) THEN 7 ELSE 8 END ELSE 9 END END END ELSE CASE WHEN (`ADS`.`Feature_19` <= 15.5) THEN CASE WHEN (`ADS`.`Feature_26` <= 3.5) THEN CASE WHEN (`ADS`.`Feature_43` <= 2.5) THEN CASE WHEN (`ADS`.`Feature_62` <= 9.0) THEN 14 ELSE 15 END ELSE CASE WHEN (`ADS`.`Feature_61` <= 1.5) THEN 17 ELSE 18 END END ELSE CASE WHEN (`ADS`.`Feature_42` <= 7.5) THEN CASE WHEN (`ADS`.`Feature_21` <= 5.5) THEN 21 ELSE 22 END ELSE CASE WHEN (`ADS`.`Feature_36` <= 3.5) THEN 24 ELSE 25 END END END ELSE CASE WHEN (`ADS`.`Feature_38` <= 1.0) THEN CASE WHEN (`ADS`.`Feature_57` <= 0.5) THEN CASE WHEN (`ADS`.`Feature_46` <= 1.5) THEN 29 ELSE 30 END ELSE CASE WHEN (`ADS`.`Feature_50` <= 14.5) THEN 32 ELSE 33 END END ELSE CASE WHEN (`ADS`.`Feature_44` <= 13.0) THEN CASE WHEN (`ADS`.`Feature_54` <= 9.5) THEN 36 ELSE 37 END ELSE 38 END END END END AS node_id_2 
FROM digits AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Proba_2` AS `Proba_2`, `Values`.`LogProba_2` AS `LogProba_2`, `Values`.`Proba_3` AS `Proba_3`, `Values`.`LogProba_3` AS `LogProba_3`, `Values`.`Proba_4` AS `Proba_4`, `Values`.`LogProba_4` AS `LogProba_4`, `Values`.`Proba_5` AS `Proba_5`, `Values`.`LogProba_5` AS `LogProba_5`, `Values`.`Proba_6` AS `Proba_6`, `Values`.`LogProba_6` AS `LogProba_6`, `Values`.`Proba_7` AS `Proba_7`, `Values`.`LogProba_7` AS `LogProba_7`, `Values`.`Proba_8` AS `Proba_8`, `Values`.`LogProba_8` AS `LogProba_8`, `Values`.`Proba_9` AS `Proba_9`, `Values`.`LogProba_9` AS `LogProba_9`, `Values`.`Decision` AS `Decision`, `Values`.`DecisionProba` AS `DecisionProba` 
FROM (SELECT 0 AS node_id, 'Feature_60' AS feature, 2.5 AS threshold, 449 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.08685968819599109 AS `Proba_0`, -2.44346124161 AS `LogProba_0`, 0.12472160356347439 AS `Proba_1`, -2.08167119701 AS `LogProba_1`, 0.1447661469933185 AS `Proba_2`, -1.93263561785 AS `LogProba_2`, 0.0935412026726058 AS `Proba_3`, -2.36935326946 AS `LogProba_3`, 0.0801781737193764 AS `Proba_4`, -2.52350394929 AS `LogProba_4`, 0.0779510022271715 AS `Proba_5`, -2.55167482625 AS `LogProba_5`, 0.08685968819599109 AS `Proba_6`, -2.44346124161 AS `LogProba_6`, 0.12026726057906459 AS `Proba_7`, -2.11803884118 AS `LogProba_7`, 0.10022271714922049 AS `Proba_8`, -2.30036039797 AS `LogProba_8`, 0.08463251670378619 AS `Proba_9`, -2.46943672802 AS `LogProba_9`, 2 AS `Decision`, 0.144766146993 AS `DecisionProba` UNION ALL SELECT 1 AS node_id, 'Feature_17' AS feature, 2.5 AS threshold, 45 AS count, 1 AS depth, 0 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.022222222222222223 AS `Proba_2`, -3.80666248977 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.022222222222222223 AS `Proba_4`, -3.80666248977 AS `LogProba_4`, 0.08888888888888889 AS `Proba_5`, -2.42036812865 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.8444444444444444 AS `Proba_7`, -0.169076330044 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.022222222222222223 AS `Proba_9`, -3.80666248977 AS `LogProba_9`, 7 AS `Decision`, 0.844444444444 AS `DecisionProba` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 35 AS count, 2 AS depth, 1 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 1.0 AS `Proba_7`, 0.0 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 7 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 3 AS node_id, 'Feature_21' AS feature, 2.5 AS threshold, 10 AS count, 2 AS depth, 1 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.1 AS `Proba_2`, -2.30258509299 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.1 AS `Proba_4`, -2.30258509299 AS `LogProba_4`, 0.4 AS `Proba_5`, -0.916290731874 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.3 AS `Proba_7`, -1.20397280433 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.1 AS `Proba_9`, -2.30258509299 AS `LogProba_9`, 5 AS `Decision`, 0.4 AS `DecisionProba` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 3 AS depth, 3 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 1.0 AS `Proba_5`, 0.0 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 5 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 5 AS node_id, 'Feature_42' AS feature, 3.0 AS threshold, 6 AS count, 3 AS depth, 3 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.16666666666666666 AS `Proba_2`, -1.79175946923 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.16666666666666666 AS `Proba_4`, -1.79175946923 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.5 AS `Proba_7`, -0.69314718056 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.16666666666666666 AS `Proba_9`, -1.79175946923 AS `LogProba_9`, 7 AS `Decision`, 0.5 AS `DecisionProba` UNION ALL SELECT 6 AS node_id, 'Feature_35' AS feature, 7.0 AS threshold, 3 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.3333333333333333 AS `Proba_2`, -1.09861228867 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.3333333333333333 AS `Proba_4`, -1.09861228867 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.3333333333333333 AS `Proba_9`, -1.09861228867 AS `LogProba_9`, 2 AS `Decision`, 0.333333333333 AS `DecisionProba` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 6 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 2 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 5 AS depth, 6 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.5 AS `Proba_4`, -0.69314718056 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.5 AS `Proba_9`, -0.69314718056 AS `LogProba_9`, 4 AS `Decision`, 0.5 AS `DecisionProba` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 1.0 AS `Proba_7`, 0.0 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 7 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 10 AS node_id, 'Feature_19' AS feature, 15.5 AS threshold, 404 AS count, 1 AS depth, 0 AS parent_id, 0.09653465346534654 AS `Proba_0`, -2.33785323183 AS `LogProba_0`, 0.13861386138613863 AS `Proba_1`, -1.97606318723 AS `LogProba_1`, 0.15841584158415842 AS `Proba_2`, -1.8425317946 AS `LogProba_2`, 0.10396039603960396 AS `Proba_3`, -2.26374525968 AS `LogProba_3`, 0.08663366336633663 AS `Proba_4`, -2.44606681647 AS `LogProba_4`, 0.07673267326732673 AS `Proba_5`, -2.56742767348 AS `LogProba_5`, 0.09653465346534654 AS `Proba_6`, -2.33785323183 AS `LogProba_6`, 0.039603960396039604 AS `Proba_7`, -3.22882615572 AS `LogProba_7`, 0.11138613861386139 AS `Proba_8`, -2.19475238819 AS `LogProba_8`, 0.09158415841584158 AS `Proba_9`, -2.39049696532 AS `LogProba_9`, 2 AS `Decision`, 0.158415841584 AS `DecisionProba` UNION ALL SELECT 11 AS node_id, 'Feature_26' AS feature, 3.5 AS threshold, 331 AS count, 2 AS depth, 10 AS parent_id, 0.11178247734138973 AS `Proba_0`, -2.19120046273 AS `LogProba_0`, 0.027190332326283987 AS `Proba_1`, -3.60489379804 AS `LogProba_1`, 0.18429003021148035 AS `Proba_2`, -1.6912445112 AS `LogProba_2`, 0.1268882175226586 AS `Proba_3`, -2.06444875709 AS `LogProba_3`, 0.09063444108761329 AS `Proba_4`, -2.40092099371 AS `LogProba_4`, 0.09063444108761329 AS `Proba_5`, -2.40092099371 AS `LogProba_5`, 0.09969788519637462 AS `Proba_6`, -2.30561081391 AS `LogProba_6`, 0.04833836858006042 AS `Proba_7`, -3.02952965314 AS `LogProba_7`, 0.11782477341389729 AS `Proba_8`, -2.13855672925 AS `LogProba_8`, 0.1027190332326284 AS `Proba_9`, -2.27575785076 AS `LogProba_9`, 2 AS `Decision`, 0.184290030211 AS `DecisionProba` UNION ALL SELECT 12 AS node_id, 'Feature_43' AS feature, 2.5 AS threshold, 112 AS count, 3 AS depth, 11 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.03571428571428571 AS `Proba_1`, -3.33220451018 AS `LogProba_1`, 0.4375 AS `Proba_2`, -0.826678573184 AS `LogProba_2`, 0.32142857142857145 AS `Proba_3`, -1.13497993284 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.008928571428571428 AS `Proba_6`, -4.7184988713 AS `LogProba_6`, 0.09821428571428571 AS `Proba_7`, -2.3206035985 AS `LogProba_7`, 0.08035714285714286 AS `Proba_8`, -2.52127429396 AS `LogProba_8`, 0.017857142857142856 AS `Proba_9`, -4.02535169074 AS `LogProba_9`, 2 AS `Decision`, 0.4375 AS `DecisionProba` UNION ALL SELECT 13 AS node_id, 'Feature_62' AS feature, 9.0 AS threshold, 38 AS count, 4 AS depth, 12 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.02631578947368421 AS `Proba_1`, -3.63758615973 AS `LogProba_1`, 0.05263157894736842 AS `Proba_2`, -2.94443897917 AS `LogProba_2`, 0.8421052631578947 AS `Proba_3`, -0.171850256927 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.02631578947368421 AS `Proba_7`, -3.63758615973 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.05263157894736842 AS `Proba_9`, -2.94443897917 AS `LogProba_9`, 3 AS `Decision`, 0.842105263158 AS `DecisionProba` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 35 AS count, 5 AS depth, 13 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.9142857142857143 AS `Proba_3`, -0.0896121586897 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.02857142857142857 AS `Proba_7`, -3.55534806149 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.05714285714285714 AS `Proba_9`, -2.86220088093 AS `LogProba_9`, 3 AS `Decision`, 0.914285714286 AS `DecisionProba` UNION ALL SELECT 15 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 5 AS depth, 13 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.3333333333333333 AS `Proba_1`, -1.09861228867 AS `LogProba_1`, 0.6666666666666666 AS `Proba_2`, -0.405465108108 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 2 AS `Decision`, 0.666666666667 AS `DecisionProba` UNION ALL SELECT 16 AS node_id, 'Feature_61' AS feature, 1.5 AS threshold, 74 AS count, 4 AS depth, 12 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.04054054054054054 AS `Proba_1`, -3.20545280454 AS `LogProba_1`, 0.6351351351351351 AS `Proba_2`, -0.453917491494 AS `LogProba_2`, 0.05405405405405406 AS `Proba_3`, -2.91777073208 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.013513513513513514 AS `Proba_6`, -4.3040650932 AS `LogProba_6`, 0.13513513513513514 AS `Proba_7`, -2.00148000021 AS `LogProba_7`, 0.12162162162162163 AS `Proba_8`, -2.10684051587 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 2 AS `Decision`, 0.635135135135 AS `DecisionProba` UNION ALL SELECT 17 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 19 AS count, 5 AS depth, 16 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.15789473684210525 AS `Proba_1`, -1.8458266905 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.10526315789473684 AS `Proba_3`, -2.25129179861 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.5263157894736842 AS `Proba_7`, -0.641853886172 AS `LogProba_7`, 0.21052631578947367 AS `Proba_8`, -1.55814461805 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 7 AS `Decision`, 0.526315789474 AS `DecisionProba` UNION ALL SELECT 18 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 55 AS count, 5 AS depth, 16 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.8545454545454545 AS `Proba_2`, -0.157185583522 AS `LogProba_2`, 0.03636363636363636 AS `Proba_3`, -3.31418600467 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.01818181818181818 AS `Proba_6`, -4.00733318523 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.09090909090909091 AS `Proba_8`, -2.3978952728 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 2 AS `Decision`, 0.854545454545 AS `DecisionProba` UNION ALL SELECT 19 AS node_id, 'Feature_42' AS feature, 7.5 AS threshold, 219 AS count, 3 AS depth, 11 AS parent_id, 0.1689497716894977 AS `Proba_0`, -1.77815381717 AS `LogProba_0`, 0.0228310502283105 AS `Proba_1`, -3.77963381738 AS `LogProba_1`, 0.0547945205479452 AS `Proba_2`, -2.90416508003 AS `LogProba_2`, 0.0273972602739726 AS `Proba_3`, -3.59731226059 AS `LogProba_3`, 0.136986301369863 AS `Proba_4`, -1.98787434815 AS `LogProba_4`, 0.136986301369863 AS `Proba_5`, -1.98787434815 AS `LogProba_5`, 0.1461187214611872 AS `Proba_6`, -1.92333582702 AS `LogProba_6`, 0.0228310502283105 AS `Proba_7`, -3.77963381738 AS `LogProba_7`, 0.136986301369863 AS `Proba_8`, -1.98787434815 AS `LogProba_8`, 0.1461187214611872 AS `Proba_9`, -1.92333582702 AS `LogProba_9`, 0 AS `Decision`, 0.168949771689 AS `DecisionProba` UNION ALL SELECT 20 AS node_id, 'Feature_21' AS feature, 5.5 AS threshold, 100 AS count, 4 AS depth, 19 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.05 AS `Proba_1`, -2.99573227355 AS `LogProba_1`, 0.1 AS `Proba_2`, -2.30258509299 AS `LogProba_2`, 0.06 AS `Proba_3`, -2.81341071676 AS `LogProba_3`, 0.03 AS `Proba_4`, -3.50655789732 AS `LogProba_4`, 0.29 AS `Proba_5`, -1.237874356 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.05 AS `Proba_7`, -2.99573227355 AS `LogProba_7`, 0.1 AS `Proba_8`, -2.30258509299 AS `LogProba_8`, 0.32 AS `Proba_9`, -1.13943428319 AS `LogProba_9`, 9 AS `Decision`, 0.32 AS `DecisionProba` UNION ALL SELECT 21 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 45 AS count, 5 AS depth, 20 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.022222222222222223 AS `Proba_1`, -3.80666248977 AS `LogProba_1`, 0.13333333333333333 AS `Proba_2`, -2.01490302054 AS `LogProba_2`, 0.06666666666666667 AS `Proba_3`, -2.7080502011 AS `LogProba_3`, 0.044444444444444446 AS `Proba_4`, -3.11351530921 AS `LogProba_4`, 0.6444444444444445 AS `Proba_5`, -0.439366659784 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.022222222222222223 AS `Proba_7`, -3.80666248977 AS `LogProba_7`, 0.044444444444444446 AS `Proba_8`, -3.11351530921 AS `LogProba_8`, 0.022222222222222223 AS `Proba_9`, -3.80666248977 AS `LogProba_9`, 5 AS `Decision`, 0.644444444444 AS `DecisionProba` UNION ALL SELECT 22 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 55 AS count, 5 AS depth, 20 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.07272727272727272 AS `Proba_1`, -2.62103882411 AS `LogProba_1`, 0.07272727272727272 AS `Proba_2`, -2.62103882411 AS `LogProba_2`, 0.05454545454545454 AS `Proba_3`, -2.90872089656 AS `LogProba_3`, 0.01818181818181818 AS `Proba_4`, -4.00733318523 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.07272727272727272 AS `Proba_7`, -2.62103882411 AS `LogProba_7`, 0.14545454545454545 AS `Proba_8`, -1.92789164355 AS `LogProba_8`, 0.5636363636363636 AS `Proba_9`, -0.573345980747 AS `LogProba_9`, 9 AS `Decision`, 0.563636363636 AS `DecisionProba` UNION ALL SELECT 23 AS node_id, 'Feature_36' AS feature, 3.5 AS threshold, 119 AS count, 4 AS depth, 19 AS parent_id, 0.31092436974789917 AS `Proba_0`, -1.16820558047 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.01680672268907563 AS `Proba_2`, -4.08597631255 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.226890756302521 AS `Proba_4`, -1.48328662711 AS `LogProba_4`, 0.008403361344537815 AS `Proba_5`, -4.77912349311 AS `LogProba_5`, 0.2689075630252101 AS `Proba_6`, -1.31338759031 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.16806722689075632 AS `Proba_8`, -1.78339121956 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 0 AS `Decision`, 0.310924369748 AS `DecisionProba` UNION ALL SELECT 24 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 43 AS count, 5 AS depth, 23 AS parent_id, 0.8604651162790697 AS `Proba_0`, -0.150282203049 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.06976744186046512 AS `Proba_4`, -2.66258782703 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.06976744186046512 AS `Proba_6`, -2.66258782703 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 0 AS `Decision`, 0.860465116279 AS `DecisionProba` UNION ALL SELECT 25 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 76 AS count, 5 AS depth, 23 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.02631578947368421 AS `Proba_2`, -3.63758615973 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.3157894736842105 AS `Proba_4`, -1.15267950994 AS `LogProba_4`, 0.013157894736842105 AS `Proba_5`, -4.33073334029 AS `LogProba_5`, 0.3815789473684211 AS `Proba_6`, -0.9634375103 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.2631578947368421 AS `Proba_8`, -1.33500106673 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 6 AS `Decision`, 0.381578947368 AS `DecisionProba` UNION ALL SELECT 26 AS node_id, 'Feature_38' AS feature, 1.0 AS threshold, 73 AS count, 2 AS depth, 10 AS parent_id, 0.0273972602739726 AS `Proba_0`, -3.59731226059 AS `LogProba_0`, 0.6438356164383562 AS `Proba_1`, -0.440311839438 AS `LogProba_1`, 0.0410958904109589 AS `Proba_2`, -3.19184715248 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0684931506849315 AS `Proba_4`, -2.68102152871 AS `LogProba_4`, 0.0136986301369863 AS `Proba_5`, -4.29045944115 AS `LogProba_5`, 0.0821917808219178 AS `Proba_6`, -2.49869997192 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.0821917808219178 AS `Proba_8`, -2.49869997192 AS `LogProba_8`, 0.0410958904109589 AS `Proba_9`, -3.19184715248 AS `LogProba_9`, 1 AS `Decision`, 0.643835616438 AS `DecisionProba` UNION ALL SELECT 27 AS node_id, 'Feature_57' AS feature, 0.5 AS threshold, 56 AS count, 3 AS depth, 26 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.8035714285714286 AS `Proba_1`, -0.218689200965 AS `LogProba_1`, 0.05357142857142857 AS `Proba_2`, -2.92673940207 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.017857142857142856 AS `Proba_5`, -4.02535169074 AS `LogProba_5`, 0.03571428571428571 AS `Proba_6`, -3.33220451018 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.08928571428571429 AS `Proba_8`, -2.4159137783 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 1 AS `Decision`, 0.803571428571 AS `DecisionProba` UNION ALL SELECT 28 AS node_id, 'Feature_46' AS feature, 1.5 AS threshold, 50 AS count, 4 AS depth, 27 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.9 AS `Proba_1`, -0.105360515658 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.04 AS `Proba_6`, -3.21887582487 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.06 AS `Proba_8`, -2.81341071676 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 1 AS `Decision`, 0.9 AS `DecisionProba` UNION ALL SELECT 29 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 47 AS count, 5 AS depth, 28 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.9574468085106383 AS `Proba_1`, -0.0434851119397 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.0425531914893617 AS `Proba_8`, -3.15700042115 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 1 AS `Decision`, 0.957446808511 AS `DecisionProba` UNION ALL SELECT 30 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 5 AS depth, 28 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.6666666666666666 AS `Proba_6`, -0.405465108108 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.3333333333333333 AS `Proba_8`, -1.09861228867 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 6 AS `Decision`, 0.666666666667 AS `DecisionProba` UNION ALL SELECT 31 AS node_id, 'Feature_50' AS feature, 14.5 AS threshold, 6 AS count, 4 AS depth, 27 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.5 AS `Proba_2`, -0.69314718056 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.16666666666666666 AS `Proba_5`, -1.79175946923 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.3333333333333333 AS `Proba_8`, -1.09861228867 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 2 AS `Decision`, 0.5 AS `DecisionProba` UNION ALL SELECT 32 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 5 AS depth, 31 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.3333333333333333 AS `Proba_5`, -1.09861228867 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.6666666666666666 AS `Proba_8`, -0.405465108108 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 8 AS `Decision`, 0.666666666667 AS `DecisionProba` UNION ALL SELECT 33 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 5 AS depth, 31 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 1.0 AS `Proba_2`, 0.0 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 2 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 34 AS node_id, 'Feature_44' AS feature, 13.0 AS threshold, 17 AS count, 3 AS depth, 26 AS parent_id, 0.11764705882352941 AS `Proba_0`, -2.1400661635 AS `LogProba_0`, 0.11764705882352941 AS `Proba_1`, -2.1400661635 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.29411764705882354 AS `Proba_4`, -1.22377543162 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.23529411764705882 AS `Proba_6`, -1.44691898294 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.058823529411764705 AS `Proba_8`, -2.83321334406 AS `LogProba_8`, 0.17647058823529413 AS `Proba_9`, -1.73460105539 AS `LogProba_9`, 4 AS `Decision`, 0.294117647059 AS `DecisionProba` UNION ALL SELECT 35 AS node_id, 'Feature_54' AS feature, 9.5 AS threshold, 12 AS count, 4 AS depth, 34 AS parent_id, 0.16666666666666666 AS `Proba_0`, -1.79175946923 AS `LogProba_0`, 0.16666666666666666 AS `Proba_1`, -1.79175946923 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.3333333333333333 AS `Proba_6`, -1.09861228867 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.08333333333333333 AS `Proba_8`, -2.48490664979 AS `LogProba_8`, 0.25 AS `Proba_9`, -1.38629436112 AS `LogProba_9`, 6 AS `Decision`, 0.333333333333 AS `DecisionProba` UNION ALL SELECT 36 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 8 AS count, 5 AS depth, 35 AS parent_id, 0.25 AS `Proba_0`, -1.38629436112 AS `LogProba_0`, 0.25 AS `Proba_1`, -1.38629436112 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.125 AS `Proba_8`, -2.07944154168 AS `LogProba_8`, 0.375 AS `Proba_9`, -0.980829253012 AS `LogProba_9`, 9 AS `Decision`, 0.375 AS `DecisionProba` UNION ALL SELECT 37 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 5 AS depth, 35 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 0.0 AS `Proba_4`, -1.79769313486231e+308 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 1.0 AS `Proba_6`, 0.0 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 6 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 38 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 4 AS depth, 34 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0.0 AS `Proba_2`, -1.79769313486231e+308 AS `LogProba_2`, 0.0 AS `Proba_3`, -1.79769313486231e+308 AS `LogProba_3`, 1.0 AS `Proba_4`, 0.0 AS `LogProba_4`, 0.0 AS `Proba_5`, -1.79769313486231e+308 AS `LogProba_5`, 0.0 AS `Proba_6`, -1.79769313486231e+308 AS `LogProba_6`, 0.0 AS `Proba_7`, -1.79769313486231e+308 AS `LogProba_7`, 0.0 AS `Proba_8`, -1.79769313486231e+308 AS `LogProba_8`, 0.0 AS `Proba_9`, -1.79769313486231e+308 AS `LogProba_9`, 4 AS `Decision`, 1.0 AS `DecisionProba`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Proba_0` AS `Proba_0`, `DT_node_data`.`LogProba_0` AS `LogProba_0`, `DT_node_data`.`Proba_1` AS `Proba_1`, `DT_node_data`.`LogProba_1` AS `LogProba_1`, `DT_node_data`.`Proba_2` AS `Proba_2`, `DT_node_data`.`LogProba_2` AS `LogProba_2`, `DT_node_data`.`Proba_3` AS `Proba_3`, `DT_node_data`.`LogProba_3` AS `LogProba_3`, `DT_node_data`.`Proba_4` AS `Proba_4`, `DT_node_data`.`LogProba_4` AS `LogProba_4`, `DT_node_data`.`Proba_5` AS `Proba_5`, `DT_node_data`.`LogProba_5` AS `LogProba_5`, `DT_node_data`.`Proba_6` AS `Proba_6`, `DT_node_data`.`LogProba_6` AS `LogProba_6`, `DT_node_data`.`Proba_7` AS `Proba_7`, `DT_node_data`.`LogProba_7` AS `LogProba_7`, `DT_node_data`.`Proba_8` AS `Proba_8`, `DT_node_data`.`LogProba_8` AS `LogProba_8`, `DT_node_data`.`Proba_9` AS `Proba_9`, `DT_node_data`.`LogProba_9` AS `LogProba_9`, `DT_node_data`.`Decision` AS `Decision`, `DT_node_data`.`DecisionProba` AS `DecisionProba` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id)
 SELECT `DT_Output`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, NULL AS `Score_4`, NULL AS `Score_5`, NULL AS `Score_6`, NULL AS `Score_7`, NULL AS `Score_8`, NULL AS `Score_9`, `DT_Output`.`Proba_0` AS `Proba_0`, `DT_Output`.`Proba_1` AS `Proba_1`, `DT_Output`.`Proba_2` AS `Proba_2`, `DT_Output`.`Proba_3` AS `Proba_3`, `DT_Output`.`Proba_4` AS `Proba_4`, `DT_Output`.`Proba_5` AS `Proba_5`, `DT_Output`.`Proba_6` AS `Proba_6`, `DT_Output`.`Proba_7` AS `Proba_7`, `DT_Output`.`Proba_8` AS `Proba_8`, `DT_Output`.`Proba_9` AS `Proba_9`, `DT_Output`.`LogProba_0` AS `LogProba_0`, `DT_Output`.`LogProba_1` AS `LogProba_1`, `DT_Output`.`LogProba_2` AS `LogProba_2`, `DT_Output`.`LogProba_3` AS `LogProba_3`, `DT_Output`.`LogProba_4` AS `LogProba_4`, `DT_Output`.`LogProba_5` AS `LogProba_5`, `DT_Output`.`LogProba_6` AS `LogProba_6`, `DT_Output`.`LogProba_7` AS `LogProba_7`, `DT_Output`.`LogProba_8` AS `LogProba_8`, `DT_Output`.`LogProba_9` AS `LogProba_9`, `DT_Output`.`Decision` AS `Decision`, `DT_Output`.`DecisionProba` AS `DecisionProba` 
FROM `DT_Output`