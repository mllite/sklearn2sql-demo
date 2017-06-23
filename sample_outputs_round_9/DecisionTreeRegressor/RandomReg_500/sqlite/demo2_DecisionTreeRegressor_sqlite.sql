-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_354" <= 1.444242238998413) THEN CASE WHEN ("ADS"."Feature_0" <= 0.34087520837783813) THEN CASE WHEN ("ADS"."Feature_196" <= 0.05917667597532272) THEN CASE WHEN ("ADS"."Feature_317" <= -1.0741442441940308) THEN CASE WHEN ("ADS"."Feature_477" <= 0.16146917641162872) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_181" <= -0.11778631806373596) THEN 8 ELSE 9 END END ELSE CASE WHEN ("ADS"."Feature_96" <= 0.10786598920822144) THEN 11 ELSE CASE WHEN ("ADS"."Feature_480" <= 0.2688346803188324) THEN 13 ELSE 14 END END END ELSE CASE WHEN ("ADS"."Feature_213" <= 0.4496297538280487) THEN CASE WHEN ("ADS"."Feature_402" <= -0.6685476899147034) THEN CASE WHEN ("ADS"."Feature_35" <= 0.8904517292976379) THEN 18 ELSE 19 END ELSE CASE WHEN ("ADS"."Feature_433" <= -0.4327208399772644) THEN 21 ELSE 22 END END ELSE CASE WHEN ("ADS"."Feature_16" <= 0.4003069996833801) THEN CASE WHEN ("ADS"."Feature_192" <= 0.5060771703720093) THEN 25 ELSE 26 END ELSE CASE WHEN ("ADS"."Feature_283" <= 0.26710137724876404) THEN 28 ELSE 29 END END END END ELSE CASE WHEN ("ADS"."Feature_410" <= -0.6985568404197693) THEN 31 ELSE 32 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_354' AS feature, 1.444242238998413 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -38.85350442549418 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.34087520837783813 AS threshold, 23 AS count, 1 AS depth, 0 AS parent_id, -88.56046369540724 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_196' AS feature, 0.05917667597532272 AS threshold, 9 AS count, 2 AS depth, 1 AS parent_id, -225.69749289922993 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'Feature_317' AS feature, -1.0741442441940308 AS threshold, 6 AS count, 3 AS depth, 2 AS parent_id, -154.00092477083632 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_477' AS feature, 0.16146917641162872 AS threshold, 3 AS count, 4 AS depth, 3 AS parent_id, -193.27037549027193 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 4 AS parent_id, -203.01970242458535 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, 4 AS parent_id, -188.3957120231152 AS "Estimator" UNION ALL SELECT 7 AS node_id, 'Feature_181' AS feature, -0.11778631806373596 AS threshold, 3 AS count, 4 AS depth, 3 AS parent_id, -114.73147405140075 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 7 AS parent_id, -145.7557807925901 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, 7 AS parent_id, -99.21932068080605 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'Feature_96' AS feature, 0.10786598920822144 AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, -369.09062915601703 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 10 AS parent_id, -415.6958459005518 AS "Estimator" UNION ALL SELECT 12 AS node_id, 'Feature_480' AS feature, 0.2688346803188324 AS threshold, 2 AS count, 4 AS depth, 10 AS parent_id, -345.7880207837497 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 12 AS parent_id, -333.5440959646812 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 12 AS parent_id, -358.03194560281815 AS "Estimator" UNION ALL SELECT 15 AS node_id, 'Feature_213' AS feature, 0.4496297538280487 AS threshold, 14 AS count, 2 AS depth, 1 AS parent_id, -0.4009449215212594 AS "Estimator" UNION ALL SELECT 16 AS node_id, 'Feature_402' AS feature, -0.6685476899147034 AS threshold, 9 AS count, 3 AS depth, 15 AS parent_id, -67.410606270091 AS "Estimator" UNION ALL SELECT 17 AS node_id, 'Feature_35' AS feature, 0.8904517292976379 AS threshold, 5 AS count, 4 AS depth, 16 AS parent_id, -12.967833826370105 AS "Estimator" UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, 17 AS parent_id, 8.730337797034739 AS "Estimator" UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, 17 AS parent_id, -27.433281575306665 AS "Estimator" UNION ALL SELECT 20 AS node_id, 'Feature_433' AS feature, -0.4327208399772644 AS threshold, 4 AS count, 4 AS depth, 16 AS parent_id, -135.4640718247421 AS "Estimator" UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 20 AS parent_id, -202.50354295885262 AS "Estimator" UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, 20 AS parent_id, -113.11758144670527 AS "Estimator" UNION ALL SELECT 23 AS node_id, 'Feature_16' AS feature, 0.4003069996833801 AS threshold, 5 AS count, 3 AS depth, 15 AS parent_id, 120.21644550590425 AS "Estimator" UNION ALL SELECT 24 AS node_id, 'Feature_192' AS feature, 0.5060771703720093 AS threshold, 3 AS count, 4 AS depth, 23 AS parent_id, 99.59181299022543 AS "Estimator" UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, 24 AS parent_id, 109.47717474719232 AS "Estimator" UNION ALL SELECT 26 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 24 AS parent_id, 79.82108947629172 AS "Estimator" UNION ALL SELECT 27 AS node_id, 'Feature_283' AS feature, 0.26710137724876404 AS threshold, 2 AS count, 4 AS depth, 23 AS parent_id, 151.15339427942246 AS "Estimator" UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 27 AS parent_id, 157.77562090707204 AS "Estimator" UNION ALL SELECT 29 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 27 AS parent_id, 144.53116765177285 AS "Estimator" UNION ALL SELECT 30 AS node_id, 'Feature_410' AS feature, -0.6985568404197693 AS threshold, 2 AS count, 1 AS depth, 0 AS parent_id, 532.7765271785061 AS "Estimator" UNION ALL SELECT 31 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 30 AS parent_id, 605.6206481037917 AS "Estimator" UNION ALL SELECT 32 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 30 AS parent_id, 459.9324062532205 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"