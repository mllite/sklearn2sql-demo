-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.2975616455078125) THEN CASE WHEN ("ADS"."Feature_9" <= 0.8114693760871887) THEN CASE WHEN ("ADS"."Feature_0" <= -0.17560231685638428) THEN 3 ELSE CASE WHEN ("ADS"."Feature_1" <= 0.21538206934928894) THEN CASE WHEN ("ADS"."Feature_5" <= 0.7401158809661865) THEN CASE WHEN ("ADS"."Feature_0" <= 0.7632898092269897) THEN 7 ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_6" <= 1.3974907398223877) THEN CASE WHEN ("ADS"."Feature_2" <= -0.3545379042625427) THEN 12 ELSE 13 END ELSE 14 END END END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.14218562841415405) THEN 16 ELSE 17 END END ELSE CASE WHEN ("ADS"."Feature_6" <= 0.7963041067123413) THEN CASE WHEN ("ADS"."Feature_4" <= 0.48793745040893555) THEN CASE WHEN ("ADS"."Feature_4" <= 0.3165155351161957) THEN 21 ELSE 22 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.30533820390701294) THEN CASE WHEN ("ADS"."Feature_8" <= 0.6265273094177246) THEN 25 ELSE 26 END ELSE 27 END END ELSE 28 END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_2' AS feature, 0.2975616455078125 AS threshold, 15 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 55.67372738660818 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_9' AS feature, 0.8114693760871887 AS threshold, 9 AS count, 1 AS depth, 0 AS parent_id, -124.25620202652398 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, -0.17560231685638428 AS threshold, 7 AS count, 2 AS depth, 1 AS parent_id, -57.53459696454271 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -181.5117298102302 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_1' AS feature, 0.21538206934928894 AS threshold, 6 AS count, 3 AS depth, 2 AS parent_id, -43.759359981688554 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'Feature_5' AS feature, 0.7401158809661865 AS threshold, 3 AS count, 4 AS depth, 4 AS parent_id, -25.914391593610596 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'Feature_0' AS feature, 0.7632898092269897 AS threshold, 2 AS count, 5 AS depth, 5 AS parent_id, -33.162011695061665 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 6 AS parent_id, -33.10367734893197 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 6 AS parent_id, -33.337014733450744 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 5 AS parent_id, 3.0760888121936603 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'Feature_6' AS feature, 1.3974907398223877 AS threshold, 3 AS count, 4 AS depth, 4 AS parent_id, -66.06557046678597 AS "Estimator" UNION ALL SELECT 11 AS node_id, 'Feature_2' AS feature, -0.3545379042625427 AS threshold, 2 AS count, 5 AS depth, 10 AS parent_id, -51.764009207950075 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 11 AS parent_id, -53.55855810403281 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 11 AS parent_id, -49.96946031186734 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 10 AS parent_id, -80.36713172562187 AS "Estimator" UNION ALL SELECT 15 AS node_id, 'Feature_0' AS feature, -0.14218562841415405 AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, -291.0602146814771 AS "Estimator" UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 15 AS parent_id, -351.3842930876292 AS "Estimator" UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 15 AS parent_id, -230.736136275325 AS "Estimator" UNION ALL SELECT 18 AS node_id, 'Feature_6' AS feature, 0.7963041067123413 AS threshold, 6 AS count, 1 AS depth, 0 AS parent_id, 284.67545573059454 AS "Estimator" UNION ALL SELECT 19 AS node_id, 'Feature_4' AS feature, 0.48793745040893555 AS threshold, 5 AS count, 2 AS depth, 18 AS parent_id, 309.40833596226594 AS "Estimator" UNION ALL SELECT 20 AS node_id, 'Feature_4' AS feature, 0.3165155351161957 AS threshold, 2 AS count, 3 AS depth, 19 AS parent_id, 263.2704249925645 AS "Estimator" UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 20 AS parent_id, 277.9812845098006 AS "Estimator" UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 20 AS parent_id, 248.55956547532833 AS "Estimator" UNION ALL SELECT 23 AS node_id, 'Feature_3' AS feature, 0.30533820390701294 AS threshold, 3 AS count, 3 AS depth, 19 AS parent_id, 340.1669432754003 AS "Estimator" UNION ALL SELECT 24 AS node_id, 'Feature_8' AS feature, 0.6265273094177246 AS threshold, 2 AS count, 4 AS depth, 23 AS parent_id, 349.9090887476711 AS "Estimator" UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 24 AS parent_id, 349.4216823421892 AS "Estimator" UNION ALL SELECT 26 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 24 AS parent_id, 351.37130796411674 AS "Estimator" UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 23 AS parent_id, 320.6826523308587 AS "Estimator" UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 18 AS parent_id, 37.34665341388054 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" <= 1.3585671186447144) THEN CASE WHEN ("ADS"."Feature_1" <= -0.3098868131637573) THEN CASE WHEN ("ADS"."Feature_0" <= 0.2002788633108139) THEN CASE WHEN ("ADS"."Feature_0" <= -0.6716697216033936) THEN CASE WHEN ("ADS"."Feature_0" <= -1.019423246383667) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_5" <= -0.6718349456787109) THEN 8 ELSE 9 END END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.6354615092277527) THEN CASE WHEN ("ADS"."Feature_7" <= 0.014934420585632324) THEN 12 ELSE 13 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.38324737548828125) THEN 15 ELSE 16 END END END ELSE CASE WHEN ("ADS"."Feature_5" <= -0.055604010820388794) THEN CASE WHEN ("ADS"."Feature_7" <= -0.1510675847530365) THEN 19 ELSE 20 END ELSE CASE WHEN ("ADS"."Feature_9" <= 0.518115222454071) THEN 22 ELSE CASE WHEN ("ADS"."Feature_3" <= 0.30533820390701294) THEN 24 ELSE 25 END END END END ELSE CASE WHEN ("ADS"."Feature_7" <= 2.239776134490967) THEN CASE WHEN ("ADS"."Feature_8" <= 1.64232337474823) THEN 28 ELSE 29 END ELSE 30 END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_7' AS feature, 1.3585671186447144 AS threshold, 16 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 69.27784082810544 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, -0.3098868131637573 AS threshold, 13 AS count, 1 AS depth, 0 AS parent_id, 8.994307823657735 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 0.2002788633108139 AS threshold, 8 AS count, 2 AS depth, 1 AS parent_id, -65.91437362121154 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'Feature_0' AS feature, -0.6716697216033936 AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, -213.82862999143452 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_0' AS feature, -1.019423246383667 AS threshold, 2 AS count, 4 AS depth, 3 AS parent_id, -117.86989724477809 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 4 AS parent_id, -168.02760851528973 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 4 AS parent_id, -67.71218597426643 AS "Estimator" UNION ALL SELECT 7 AS node_id, 'Feature_5' AS feature, -0.6718349456787109 AS threshold, 2 AS count, 4 AS depth, 3 AS parent_id, -309.787362738091 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 7 AS parent_id, -351.3842930876292 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 7 AS parent_id, -268.1904323885528 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'Feature_7' AS feature, 0.6354615092277527 AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, -6.748671073122345 AS "Estimator" UNION ALL SELECT 11 AS node_id, 'Feature_7' AS feature, 0.014934420585632324 AS threshold, 2 AS count, 4 AS depth, 10 AS parent_id, -33.220346041191355 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 11 AS parent_id, -33.337014733450744 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 11 AS parent_id, -33.10367734893197 AS "Estimator" UNION ALL SELECT 14 AS node_id, 'Feature_0' AS feature, 0.38324737548828125 AS threshold, 2 AS count, 4 AS depth, 10 AS parent_id, -0.13075233110509288 AS "Estimator" UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 14 AS parent_id, -9.185160907179679 AS "Estimator" UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 14 AS parent_id, 8.923656244969493 AS "Estimator" UNION ALL SELECT 17 AS node_id, 'Feature_5' AS feature, -0.055604010820388794 AS threshold, 5 AS count, 2 AS depth, 1 AS parent_id, 158.81167071339632 AS "Estimator" UNION ALL SELECT 18 AS node_id, 'Feature_7' AS feature, -0.1510675847530365 AS threshold, 2 AS count, 3 AS depth, 17 AS parent_id, -52.362192173310994 AS "Estimator" UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 18 AS parent_id, -49.96946031186734 AS "Estimator" UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 18 AS parent_id, -53.55855810403281 AS "Estimator" UNION ALL SELECT 21 AS node_id, 'Feature_9' AS feature, 0.518115222454071 AS threshold, 3 AS count, 3 AS depth, 17 AS parent_id, 317.19206787842677 AS "Estimator" UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 21 AS parent_id, 277.9812845098006 AS "Estimator" UNION ALL SELECT 23 AS node_id, 'Feature_3' AS feature, 0.30533820390701294 AS threshold, 2 AS count, 4 AS depth, 21 AS parent_id, 330.2623290013022 AS "Estimator" UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 23 AS parent_id, 349.42168234218923 AS "Estimator" UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 23 AS parent_id, 320.6826523308587 AS "Estimator" UNION ALL SELECT 26 AS node_id, 'Feature_7' AS feature, 2.239776134490967 AS threshold, 3 AS count, 1 AS depth, 0 AS parent_id, 385.76638910145584 AS "Estimator" UNION ALL SELECT 27 AS node_id, 'Feature_8' AS feature, 1.64232337474823 AS threshold, 2 AS count, 2 AS depth, 26 AS parent_id, 354.45278012043826 AS "Estimator" UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 27 AS parent_id, 351.37130796411674 AS "Estimator" UNION ALL SELECT 29 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 27 AS parent_id, 360.61572443308125 AS "Estimator" UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 26 AS parent_id, 479.70721604450864 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 0.26793915033340454) THEN CASE WHEN ("ADS"."Feature_0" <= 0.3447108268737793) THEN CASE WHEN ("ADS"."Feature_7" <= -0.3865756094455719) THEN 3 ELSE CASE WHEN ("ADS"."Feature_7" <= 0.9987440705299377) THEN CASE WHEN ("ADS"."Feature_7" <= -0.08898747712373734) THEN CASE WHEN ("ADS"."Feature_4" <= 0.2101905345916748) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_5" <= -0.9286729097366333) THEN 10 ELSE 11 END END ELSE 12 END END ELSE CASE WHEN ("ADS"."Feature_1" <= -0.333740234375) THEN 14 ELSE CASE WHEN ("ADS"."Feature_4" <= 0.4510948061943054) THEN 16 ELSE 17 END END END ELSE CASE WHEN ("ADS"."Feature_3" <= 1.0282573699951172) THEN CASE WHEN ("ADS"."Feature_1" <= 0.1620359718799591) THEN CASE WHEN ("ADS"."Feature_6" <= 0.9776925444602966) THEN 21 ELSE 22 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.3337593078613281) THEN 24 ELSE 25 END END ELSE CASE WHEN ("ADS"."Feature_8" <= 0.10788589715957642) THEN CASE WHEN ("ADS"."Feature_1" <= -1.0695984363555908) THEN 28 ELSE 29 END ELSE 30 END END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_5' AS feature, 0.26793915033340454 AS threshold, 16 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -15.10220096472055 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.3447108268737793 AS threshold, 9 AS count, 1 AS depth, 0 AS parent_id, -162.1152249600922 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_7' AS feature, -0.3865756094455719 AS threshold, 6 AS count, 2 AS depth, 1 AS parent_id, -227.36880202483266 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -351.3842930876292 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_7' AS feature, 0.9987440705299377 AS threshold, 5 AS count, 3 AS depth, 2 AS parent_id, -191.93580457831936 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'Feature_7' AS feature, -0.08898747712373734 AS threshold, 4 AS count, 4 AS depth, 4 AS parent_id, -212.63974101232816 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'Feature_4' AS feature, 0.2101905345916748 AS threshold, 2 AS count, 5 AS depth, 5 AS parent_id, -182.0585803782554 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 6 AS parent_id, -181.5117298102302 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 6 AS parent_id, -182.332005662268 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'Feature_5' AS feature, -0.9286729097366333 AS threshold, 2 AS count, 5 AS depth, 5 AS parent_id, -243.2209016464009 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 9 AS parent_id, -230.736136275325 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 9 AS parent_id, -268.1904323885528 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 4 AS parent_id, -67.71218597426643 AS "Estimator" UNION ALL SELECT 13 AS node_id, 'Feature_1' AS feature, -0.333740234375 AS threshold, 3 AS count, 2 AS depth, 1 AS parent_id, -44.65878624355938 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 13 AS parent_id, -33.10367734893197 AS "Estimator" UNION ALL SELECT 15 AS node_id, 'Feature_4' AS feature, 0.4510948061943054 AS threshold, 2 AS count, 3 AS depth, 13 AS parent_id, -52.362192173310994 AS "Estimator" UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 15 AS parent_id, -53.55855810403281 AS "Estimator" UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 15 AS parent_id, -49.96946031186734 AS "Estimator" UNION ALL SELECT 18 AS node_id, 'Feature_3' AS feature, 1.0282573699951172 AS threshold, 7 AS count, 1 AS depth, 0 AS parent_id, 172.00528412029792 AS "Estimator" UNION ALL SELECT 19 AS node_id, 'Feature_1' AS feature, 0.1620359718799591 AS threshold, 4 AS count, 2 AS depth, 18 AS parent_id, 301.1812351942287 AS "Estimator" UNION ALL SELECT 20 AS node_id, 'Feature_6' AS feature, 0.9776925444602966 AS threshold, 2 AS count, 3 AS depth, 19 AS parent_id, 355.99351619859897 AS "Estimator" UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 20 AS parent_id, 351.37130796411674 AS "Estimator" UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 20 AS parent_id, 360.61572443308125 AS "Estimator" UNION ALL SELECT 23 AS node_id, 'Feature_0' AS feature, 0.3337593078613281 AS threshold, 2 AS count, 3 AS depth, 19 AS parent_id, 273.7750946920436 AS "Estimator" UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 23 AS parent_id, 248.55956547532833 AS "Estimator" UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 23 AS parent_id, 349.42168234218923 AS "Estimator" UNION ALL SELECT 26 AS node_id, 'Feature_8' AS feature, 0.10788589715957642 AS threshold, 3 AS count, 2 AS depth, 18 AS parent_id, 16.994142831580966 AS "Estimator" UNION ALL SELECT 27 AS node_id, 'Feature_1' AS feature, -1.0695984363555908 AS threshold, 2 AS count, 3 AS depth, 26 AS parent_id, 29.5769322228389 AS "Estimator" UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 27 AS parent_id, 26.98702515915835 AS "Estimator" UNION ALL SELECT 29 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 27 AS parent_id, 37.34665341388054 AS "Estimator" UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 26 AS parent_id, -33.337014733450744 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 0.31690624356269836) THEN CASE WHEN ("ADS"."Feature_9" <= 0.24260103702545166) THEN CASE WHEN ("ADS"."Feature_5" <= -0.14265917241573334) THEN CASE WHEN ("ADS"."Feature_4" <= 0.26695603132247925) THEN 4 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.12525315582752228) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.5039875507354736) THEN CASE WHEN ("ADS"."Feature_6" <= 0.18162071704864502) THEN 10 ELSE 11 END ELSE 12 END END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.24595269560813904) THEN 14 ELSE CASE WHEN ("ADS"."Feature_4" <= 0.345248281955719) THEN 16 ELSE 17 END END END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.6698598861694336) THEN CASE WHEN ("ADS"."Feature_0" <= 0.8514213562011719) THEN CASE WHEN ("ADS"."Feature_4" <= -0.6347807049751282) THEN 21 ELSE CASE WHEN ("ADS"."Feature_3" <= 1.2785651683807373) THEN 23 ELSE 24 END END ELSE 25 END ELSE CASE WHEN ("ADS"."Feature_7" <= 2.239776134490967) THEN CASE WHEN ("ADS"."Feature_8" <= 0.9230313301086426) THEN CASE WHEN ("ADS"."Feature_8" <= 0.04156115651130676) THEN 29 ELSE 30 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.7964087724685669) THEN 32 ELSE CASE WHEN ("ADS"."Feature_8" <= 1.64232337474823) THEN 34 ELSE 35 END END END ELSE 36 END END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_5' AS feature, 0.31690624356269836 AS threshold, 19 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 31.0372439950999 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_9' AS feature, 0.24260103702545166 AS threshold, 9 AS count, 1 AS depth, 0 AS parent_id, -176.23843223445783 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_5' AS feature, -0.14265917241573334 AS threshold, 6 AS count, 2 AS depth, 1 AS parent_id, -114.1457539967947 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'Feature_4' AS feature, 0.26695603132247925 AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, -53.35243242457213 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 3 AS parent_id, -80.36713172562187 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'Feature_2' AS feature, 0.12525315582752228 AS threshold, 2 AS count, 4 AS depth, 3 AS parent_id, -44.34753265755555 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 5 AS parent_id, -33.10367734893197 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 5 AS parent_id, -49.96946031186734 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'Feature_1' AS feature, 0.5039875507354736 AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, -174.93907556901723 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'Feature_6' AS feature, 0.18162071704864502 AS threshold, 2 AS count, 4 AS depth, 8 AS parent_id, -181.78515509424278 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 9 AS parent_id, -182.332005662268 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 9 AS parent_id, -181.5117298102302 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 8 AS parent_id, -154.40083699334056 AS "Estimator" UNION ALL SELECT 13 AS node_id, 'Feature_0' AS feature, -0.24595269560813904 AS threshold, 3 AS count, 2 AS depth, 1 AS parent_id, -300.42378870978405 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 13 AS parent_id, -351.3842930876292 AS "Estimator" UNION ALL SELECT 15 AS node_id, 'Feature_4' AS feature, 0.345248281955719 AS threshold, 2 AS count, 3 AS depth, 13 AS parent_id, -249.4632843319389 AS "Estimator" UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 15 AS parent_id, -268.1904323885528 AS "Estimator" UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 15 AS parent_id, -230.736136275325 AS "Estimator" UNION ALL SELECT 18 AS node_id, 'Feature_7' AS feature, 0.6698598861694336 AS threshold, 10 AS count, 1 AS depth, 0 AS parent_id, 222.36863743776854 AS "Estimator" UNION ALL SELECT 19 AS node_id, 'Feature_0' AS feature, 0.8514213562011719 AS threshold, 4 AS count, 2 AS depth, 18 AS parent_id, 8.518188162945451 AS "Estimator" UNION ALL SELECT 20 AS node_id, 'Feature_4' AS feature, -0.6347807049751282 AS threshold, 3 AS count, 3 AS depth, 19 AS parent_id, 22.469922461744186 AS "Estimator" UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 20 AS parent_id, 3.0760888121936603 AS "Estimator" UNION ALL SELECT 22 AS node_id, 'Feature_3' AS feature, 1.2785651683807373 AS threshold, 2 AS count, 4 AS depth, 20 AS parent_id, 32.16683928651945 AS "Estimator" UNION ALL SELECT 23 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 22 AS parent_id, 26.98702515915835 AS "Estimator" UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 22 AS parent_id, 37.34665341388054 AS "Estimator" UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 19 AS parent_id, -33.337014733450744 AS "Estimator" UNION ALL SELECT 26 AS node_id, 'Feature_7' AS feature, 2.239776134490967 AS threshold, 6 AS count, 2 AS depth, 18 AS parent_id, 317.41328155991215 AS "Estimator" UNION ALL SELECT 27 AS node_id, 'Feature_8' AS feature, 0.9230313301086426 AS threshold, 5 AS count, 3 AS depth, 26 AS parent_id, 297.1265397493376 AS "Estimator" UNION ALL SELECT 28 AS node_id, 'Feature_8' AS feature, 0.04156115651130676 AS threshold, 2 AS count, 4 AS depth, 27 AS parent_id, 255.9149952339464 AS "Estimator" UNION ALL SELECT 29 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 28 AS parent_id, 277.9812845098006 AS "Estimator" UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 28 AS parent_id, 248.55956547532833 AS "Estimator" UNION ALL SELECT 31 AS node_id, 'Feature_0' AS feature, -0.7964087724685669 AS threshold, 3 AS count, 4 AS depth, 27 AS parent_id, 338.3380842647288 AS "Estimator" UNION ALL SELECT 32 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 31 AS parent_id, 320.6826523308587 AS "Estimator" UNION ALL SELECT 33 AS node_id, 'Feature_8' AS feature, 1.64232337474823 AS threshold, 2 AS count, 5 AS depth, 31 AS parent_id, 355.99351619859897 AS "Estimator" UNION ALL SELECT 34 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 33 AS parent_id, 351.37130796411674 AS "Estimator" UNION ALL SELECT 35 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 33 AS parent_id, 360.61572443308125 AS "Estimator" UNION ALL SELECT 36 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 26 AS parent_id, 479.70721604450864 AS "Estimator") AS "Values"), 
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
FROM "RF_Tree_3") AS ensemble_score_union), 
"RF_AVG_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", avg("Score_Union_CTE"."Estimator") AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T")
 SELECT "RF_AVG_Scores"."KEY" AS "KEY", "RF_AVG_Scores"."Estimator" AS "Estimator" 
FROM "RF_AVG_Scores"