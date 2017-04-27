-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5216217041015625) THEN CASE WHEN ("ADS"."Feature_2" <= 0.22871947288513184) THEN CASE WHEN ("ADS"."Feature_1" <= 907.1722412109375) THEN CASE WHEN ("ADS"."Feature_0" <= 20.95691680908203) THEN CASE WHEN ("ADS"."Feature_0" <= 7.920477390289307) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.09331876784563065) THEN 8 ELSE 9 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.12777720391750336) THEN CASE WHEN ("ADS"."Feature_2" <= 0.07558494806289673) THEN 12 ELSE 13 END ELSE CASE WHEN ("ADS"."Feature_0" <= 53.427818298339844) THEN 15 ELSE 16 END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1466.168212890625) THEN CASE WHEN ("ADS"."Feature_1" <= 551.3322143554688) THEN CASE WHEN ("ADS"."Feature_3" <= 8.967630386352539) THEN 20 ELSE 21 END ELSE CASE WHEN ("ADS"."Feature_0" <= 17.995532989501953) THEN 23 ELSE 24 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.40417489409446716) THEN CASE WHEN ("ADS"."Feature_2" <= 0.2570640742778778) THEN 27 ELSE 28 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.46138834953308105) THEN 30 ELSE 31 END END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 876.4912109375) THEN CASE WHEN ("ADS"."Feature_1" <= 472.559326171875) THEN CASE WHEN ("ADS"."Feature_0" <= 80.1126937866211) THEN CASE WHEN ("ADS"."Feature_1" <= 233.342529296875) THEN 36 ELSE 37 END ELSE 38 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.6991801261901855) THEN 40 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.9009864330291748) THEN 42 ELSE 43 END END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.7274848222732544) THEN CASE WHEN ("ADS"."Feature_1" <= 1502.822509765625) THEN CASE WHEN ("ADS"."Feature_1" <= 1384.229736328125) THEN 47 ELSE 48 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1682.64501953125) THEN 50 ELSE 51 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1283.27197265625) THEN CASE WHEN ("ADS"."Feature_1" <= 973.7620239257812) THEN 54 ELSE 55 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1420.2559814453125) THEN 57 ELSE 58 END END END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_2' AS feature, 0.5216217041015625 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 505.50617914978517 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_2' AS feature, 0.22871947288513184 AS threshold, 38 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 233.37646523466483 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_1' AS feature, 907.1722412109375 AS threshold, 18 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 98.12553212736482 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'Feature_0' AS feature, 20.95691680908203 AS threshold, 12 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 70.19534140008308 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_0' AS feature, 7.920477390289307 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.197863644817543 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 7.014006945849284 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 19.3817203437858 AS "Estimator" UNION ALL SELECT 7 AS node_id, 'Feature_2' AS feature, 0.09331876784563065 AS threshold, 10 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 81.59483695113622 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 58.1384436534406 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 105.05123024883179 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'Feature_2' AS feature, 0.12777720391750336 AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 153.9859135819283 AS "Estimator" UNION ALL SELECT 11 AS node_id, 'Feature_2' AS feature, 0.07558494806289673 AS threshold, 3 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 102.41856188981035 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 89.32402513634165 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 128.60763539674775 AS "Estimator" UNION ALL SELECT 14 AS node_id, 'Feature_0' AS feature, 53.427818298339844 AS threshold, 3 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 205.55326527404625 AS "Estimator" UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 191.0431957618886 AS "Estimator" UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 212.80830003012508 AS "Estimator" UNION ALL SELECT 17 AS node_id, 'Feature_1' AS feature, 1466.168212890625 AS threshold, 20 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 355.10230503123483 AS "Estimator" UNION ALL SELECT 18 AS node_id, 'Feature_1' AS feature, 551.3322143554688 AS threshold, 14 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 273.0457332039338 AS "Estimator" UNION ALL SELECT 19 AS node_id, 'Feature_3' AS feature, 8.967630386352539 AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 175.5776112422315 AS "Estimator" UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 193.73085088085108 AS "Estimator" UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 121.11789232637284 AS "Estimator" UNION ALL SELECT 22 AS node_id, 'Feature_0' AS feature, 17.995532989501953 AS threshold, 10 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 312.0329819886148 AS "Estimator" UNION ALL SELECT 23 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 252.75881295322407 AS "Estimator" UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 337.4361972894964 AS "Estimator" UNION ALL SELECT 25 AS node_id, 'Feature_2' AS feature, 0.40417489409446716 AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 546.5676392949371 AS "Estimator" UNION ALL SELECT 26 AS node_id, 'Feature_2' AS feature, 0.2570640742778778 AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 453.8648903540872 AS "Estimator" UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 382.1374344234646 AS "Estimator" UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 525.5923462847098 AS "Estimator" UNION ALL SELECT 29 AS node_id, 'Feature_2' AS feature, 0.46138834953308105 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 731.9731371766368 AS "Estimator" UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 697.5841548257224 AS "Estimator" UNION ALL SELECT 31 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 766.362119527551 AS "Estimator" UNION ALL SELECT 32 AS node_id, 'Feature_1' AS feature, 876.4912109375 AS threshold, 29 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 862.0899422109776 AS "Estimator" UNION ALL SELECT 33 AS node_id, 'Feature_1' AS feature, 472.559326171875 AS threshold, 9 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 422.0561953789549 AS "Estimator" UNION ALL SELECT 34 AS node_id, 'Feature_0' AS feature, 80.1126937866211 AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 208.5837314754235 AS "Estimator" UNION ALL SELECT 35 AS node_id, 'Feature_1' AS feature, 233.342529296875 AS threshold, 3 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 184.56247745647272 AS "Estimator" UNION ALL SELECT 36 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 165.63594713592377 AS "Estimator" UNION ALL SELECT 37 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 194.02574261674718 AS "Estimator" UNION ALL SELECT 38 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 280.6474935322758 AS "Estimator" UNION ALL SELECT 39 AS node_id, 'Feature_2' AS feature, 0.6991801261901855 AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 592.83416650178 AS "Estimator" UNION ALL SELECT 40 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 390.4205538985135 AS "Estimator" UNION ALL SELECT 41 AS node_id, 'Feature_2' AS feature, 0.9009864330291748 AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 643.4375696525967 AS "Estimator" UNION ALL SELECT 42 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 665.4950576438131 AS "Estimator" UNION ALL SELECT 43 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 577.2651056789475 AS "Estimator" UNION ALL SELECT 44 AS node_id, 'Feature_2' AS feature, 0.7274848222732544 AS threshold, 20 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1060.1051282853878 AS "Estimator" UNION ALL SELECT 45 AS node_id, 'Feature_1' AS feature, 1502.822509765625 AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 835.1711941148701 AS "Estimator" UNION ALL SELECT 46 AS node_id, 'Feature_1' AS feature, 1384.229736328125 AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 758.9143289725744 AS "Estimator" UNION ALL SELECT 47 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 731.6407318700097 AS "Estimator" UNION ALL SELECT 48 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 840.7351202802685 AS "Estimator" UNION ALL SELECT 49 AS node_id, 'Feature_1' AS feature, 1682.64501953125 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 987.6849243994617 AS "Estimator" UNION ALL SELECT 50 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1005.9631728026966 AS "Estimator" UNION ALL SELECT 51 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 969.4066759962268 AS "Estimator" UNION ALL SELECT 52 AS node_id, 'Feature_1' AS feature, 1283.27197265625 AS threshold, 14 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1156.5053857870378 AS "Estimator" UNION ALL SELECT 53 AS node_id, 'Feature_1' AS feature, 973.7620239257812 AS threshold, 5 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 962.2945476764644 AS "Estimator" UNION ALL SELECT 54 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 848.324736124391 AS "Estimator" UNION ALL SELECT 55 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 990.7870005644828 AS "Estimator" UNION ALL SELECT 56 AS node_id, 'Feature_1' AS feature, 1420.2559814453125 AS threshold, 9 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1264.4002958484677 AS "Estimator" UNION ALL SELECT 57 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1175.608646408921 AS "Estimator" UNION ALL SELECT 58 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1335.4336154001053 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"