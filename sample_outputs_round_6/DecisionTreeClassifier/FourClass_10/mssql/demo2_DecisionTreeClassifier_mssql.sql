-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] <= 0.6387731432914734) THEN CASE WHEN ([ADS].[Feature_1] <= -0.017944686114788055) THEN CASE WHEN ([ADS].[Feature_4] <= 0.293008029460907) THEN CASE WHEN ([ADS].[Feature_8] <= 0.8049970865249634) THEN 4 ELSE 5 END ELSE CASE WHEN ([ADS].[Feature_9] <= 0.12875036895275116) THEN CASE WHEN ([ADS].[Feature_5] <= 1.5417304039001465) THEN 8 ELSE 9 END ELSE CASE WHEN ([ADS].[Feature_7] <= 0.3054918944835663) THEN 11 ELSE 12 END END END ELSE CASE WHEN ([ADS].[Feature_9] <= -0.20740845799446106) THEN CASE WHEN ([ADS].[Feature_6] <= -1.1267757415771484) THEN 15 ELSE CASE WHEN ([ADS].[Feature_2] <= -1.1813368797302246) THEN 17 ELSE 18 END END ELSE CASE WHEN ([ADS].[Feature_8] <= -3.1563596725463867) THEN 20 ELSE CASE WHEN ([ADS].[Feature_1] <= 0.8301854133605957) THEN 22 ELSE 23 END END END END ELSE CASE WHEN ([ADS].[Feature_0] <= -0.07147485762834549) THEN CASE WHEN ([ADS].[Feature_7] <= -0.3703620433807373) THEN CASE WHEN ([ADS].[Feature_7] <= -2.784426212310791) THEN 27 ELSE 28 END ELSE 29 END ELSE CASE WHEN ([ADS].[Feature_2] <= 1.1121513843536377) THEN CASE WHEN ([ADS].[Feature_8] <= 1.3320112228393555) THEN 32 ELSE 33 END ELSE 34 END END END AS node_id_2 
FROM [FourClass_10] AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Proba_0] AS [Proba_0], [Values].[LogProba_0] AS [LogProba_0], [Values].[Proba_1] AS [Proba_1], [Values].[LogProba_1] AS [LogProba_1], [Values].[Proba_2] AS [Proba_2], [Values].[LogProba_2] AS [LogProba_2], [Values].[Proba_3] AS [Proba_3], [Values].[LogProba_3] AS [LogProba_3], [Values].[Decision] AS [Decision] 
FROM (SELECT 0 AS node_id, 'Feature_2' AS feature, 0.6387731432914734 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.208955223880597 AS [Proba_0], -1.56563528978 AS [LogProba_0], 0.2537313432835821 AS [Proba_1], -1.37147927533 AS [LogProba_1], 0.23880597014925373 AS [Proba_2], -1.43210389715 AS [LogProba_2], 0.29850746268656714 AS [Proba_3], -1.20896034584 AS [LogProba_3], 3 AS [Decision] UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, -0.017944686114788055 AS threshold, 44 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3181818181818182 AS [Proba_0], -1.1451323043 AS [LogProba_0], 0.20454545454545456 AS [Proba_1], -1.58696505658 AS [LogProba_1], 0.3181818181818182 AS [Proba_2], -1.1451323043 AS [LogProba_2], 0.1590909090909091 AS [Proba_3], -1.83827948486 AS [LogProba_3], 0 AS [Decision] UNION ALL SELECT 2 AS node_id, 'Feature_4' AS feature, 0.293008029460907 AS threshold, 24 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5 AS [Proba_0], -0.69314718056 AS [LogProba_0], 0.375 AS [Proba_1], -0.980829253012 AS [LogProba_1], 0.08333333333333333 AS [Proba_2], -2.48490664979 AS [LogProba_2], 0.041666666666666664 AS [Proba_3], -3.17805383035 AS [LogProba_3], 0 AS [Decision] UNION ALL SELECT 3 AS node_id, 'Feature_8' AS feature, 0.8049970865249634 AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7777777777777778 AS [Proba_0], -0.251314428281 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.2222222222222222 AS [Proba_2], -1.50407739678 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 0 AS [Decision] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 0 AS [Decision] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 1.0 AS [Proba_2], 0.0 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 2 AS [Decision] UNION ALL SELECT 6 AS node_id, 'Feature_9' AS feature, 0.12875036895275116 AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3333333333333333 AS [Proba_0], -1.09861228867 AS [LogProba_0], 0.6 AS [Proba_1], -0.510825623766 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 0.06666666666666667 AS [Proba_3], -2.7080502011 AS [LogProba_3], 1 AS [Decision] UNION ALL SELECT 7 AS node_id, 'Feature_5' AS feature, 1.5417304039001465 AS threshold, 9 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.1111111111111111 AS [Proba_0], -2.19722457734 AS [LogProba_0], 0.8888888888888888 AS [Proba_1], -0.117783035656 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 1 AS [Decision] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 1 AS [Decision] UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 0 AS [Decision] UNION ALL SELECT 10 AS node_id, 'Feature_7' AS feature, 0.3054918944835663 AS threshold, 6 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6666666666666666 AS [Proba_0], -0.405465108108 AS [LogProba_0], 0.16666666666666666 AS [Proba_1], -1.79175946923 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 0.16666666666666666 AS [Proba_3], -1.79175946923 AS [LogProba_3], 0 AS [Decision] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 0 AS [Decision] UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.5 AS [Proba_1], -0.69314718056 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 0.5 AS [Proba_3], -0.69314718056 AS [LogProba_3], 1 AS [Decision] UNION ALL SELECT 13 AS node_id, 'Feature_9' AS feature, -0.20740845799446106 AS threshold, 20 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.1 AS [Proba_0], -2.30258509299 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.6 AS [Proba_2], -0.510825623766 AS [LogProba_2], 0.3 AS [Proba_3], -1.20397280433 AS [LogProba_3], 2 AS [Decision] UNION ALL SELECT 14 AS node_id, 'Feature_6' AS feature, -1.1267757415771484 AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.3333333333333333 AS [Proba_2], -1.09861228867 AS [LogProba_2], 0.6666666666666666 AS [Proba_3], -0.405465108108 AS [LogProba_3], 3 AS [Decision] UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 1.0 AS [Proba_2], 0.0 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 2 AS [Decision] UNION ALL SELECT 16 AS node_id, 'Feature_2' AS feature, -1.1813368797302246 AS threshold, 7 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.14285714285714285 AS [Proba_2], -1.94591014906 AS [LogProba_2], 0.8571428571428571 AS [Proba_3], -0.154150679827 AS [LogProba_3], 3 AS [Decision] UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 1.0 AS [Proba_2], 0.0 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 2 AS [Decision] UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 1.0 AS [Proba_3], 0.0 AS [LogProba_3], 3 AS [Decision] UNION ALL SELECT 19 AS node_id, 'Feature_8' AS feature, -3.1563596725463867 AS threshold, 11 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.18181818181818182 AS [Proba_0], -1.70474809224 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.8181818181818182 AS [Proba_2], -0.200670695462 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 2 AS [Decision] UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 0 AS [Decision] UNION ALL SELECT 21 AS node_id, 'Feature_1' AS feature, 0.8301854133605957 AS threshold, 10 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.1 AS [Proba_0], -2.30258509299 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.9 AS [Proba_2], -0.105360515658 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 2 AS [Decision] UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3333333333333333 AS [Proba_0], -1.09861228867 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.6666666666666666 AS [Proba_2], -0.405465108108 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 2 AS [Decision] UNION ALL SELECT 23 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 1.0 AS [Proba_2], 0.0 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 2 AS [Decision] UNION ALL SELECT 24 AS node_id, 'Feature_0' AS feature, -0.07147485762834549 AS threshold, 23 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.34782608695652173 AS [Proba_1], -1.05605267425 AS [LogProba_1], 0.08695652173913043 AS [Proba_2], -2.44234703537 AS [LogProba_2], 0.5652173913043478 AS [Proba_3], -0.570544858468 AS [LogProba_3], 3 AS [Decision] UNION ALL SELECT 25 AS node_id, 'Feature_7' AS feature, -0.3703620433807373 AS threshold, 14 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.5714285714285714 AS [Proba_1], -0.559615787935 AS [LogProba_1], 0.07142857142857142 AS [Proba_2], -2.63905732962 AS [LogProba_2], 0.35714285714285715 AS [Proba_3], -1.02961941718 AS [LogProba_3], 1 AS [Decision] UNION ALL SELECT 26 AS node_id, 'Feature_7' AS feature, -2.784426212310791 AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.8888888888888888 AS [Proba_1], -0.117783035656 AS [LogProba_1], 0.1111111111111111 AS [Proba_2], -2.19722457734 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 1 AS [Decision] UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 1.0 AS [Proba_2], 0.0 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 2 AS [Decision] UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 1 AS [Decision] UNION ALL SELECT 29 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 1.0 AS [Proba_3], 0.0 AS [LogProba_3], 3 AS [Decision] UNION ALL SELECT 30 AS node_id, 'Feature_2' AS feature, 1.1121513843536377 AS threshold, 9 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.1111111111111111 AS [Proba_2], -2.19722457734 AS [LogProba_2], 0.8888888888888888 AS [Proba_3], -0.117783035656 AS [LogProba_3], 3 AS [Decision] UNION ALL SELECT 31 AS node_id, 'Feature_8' AS feature, 1.3320112228393555 AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.5 AS [Proba_2], -0.69314718056 AS [LogProba_2], 0.5 AS [Proba_3], -0.69314718056 AS [LogProba_3], 2 AS [Decision] UNION ALL SELECT 32 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 1.0 AS [Proba_2], 0.0 AS [LogProba_2], 0.0 AS [Proba_3], -1.79769313486231e+308 AS [LogProba_3], 2 AS [Decision] UNION ALL SELECT 33 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 1.0 AS [Proba_3], 0.0 AS [LogProba_3], 3 AS [Decision] UNION ALL SELECT 34 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 1.0 AS [Proba_3], 0.0 AS [LogProba_3], 3 AS [Decision]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Proba_0] AS [Proba_0], [DT_node_data].[LogProba_0] AS [LogProba_0], [DT_node_data].[Proba_1] AS [Proba_1], [DT_node_data].[LogProba_1] AS [LogProba_1], [DT_node_data].[Proba_2] AS [Proba_2], [DT_node_data].[LogProba_2] AS [LogProba_2], [DT_node_data].[Proba_3] AS [Proba_3], [DT_node_data].[LogProba_3] AS [LogProba_3], [DT_node_data].[Decision] AS [Decision] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id)
 SELECT [DT_Output].[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], CAST(NULL AS FLOAT) AS [Score_2], CAST(NULL AS FLOAT) AS [Score_3], [DT_Output].[Proba_0] AS [Proba_0], [DT_Output].[Proba_1] AS [Proba_1], [DT_Output].[Proba_2] AS [Proba_2], [DT_Output].[Proba_3] AS [Proba_3], [DT_Output].[LogProba_0] AS [LogProba_0], [DT_Output].[LogProba_1] AS [LogProba_1], [DT_Output].[LogProba_2] AS [LogProba_2], [DT_Output].[LogProba_3] AS [LogProba_3], [DT_Output].[Decision] AS [Decision] 
FROM [DT_Output]