-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_12] <= 9.630000114440918) THEN CASE WHEN ([ADS].[Feature_5] <= 7.521999835968018) THEN CASE WHEN ([ADS].[Feature_6] <= 97.80000305175781) THEN CASE WHEN ([ADS].[Feature_5] <= 6.722499847412109) THEN CASE WHEN ([ADS].[Feature_6] <= 85.19999694824219) THEN 5 ELSE 6 END ELSE CASE WHEN ([ADS].[Feature_10] <= 17.75) THEN 8 ELSE 9 END END ELSE 10 END ELSE CASE WHEN ([ADS].[Feature_10] <= 16.049999237060547) THEN 12 ELSE CASE WHEN ([ADS].[Feature_11] <= 385.47998046875) THEN CASE WHEN ([ADS].[Feature_6] <= 47.650001525878906) THEN 15 ELSE 16 END ELSE CASE WHEN ([ADS].[Feature_6] <= 74.6500015258789) THEN 18 ELSE 19 END END END END ELSE CASE WHEN ([ADS].[Feature_12] <= 15.395000457763672) THEN CASE WHEN ([ADS].[Feature_5] <= 5.759500026702881) THEN CASE WHEN ([ADS].[Feature_2] <= 9.795000076293945) THEN CASE WHEN ([ADS].[Feature_10] <= 19.450000762939453) THEN 24 ELSE 25 END ELSE CASE WHEN ([ADS].[Feature_9] <= 485.0) THEN 27 ELSE 28 END END ELSE CASE WHEN ([ADS].[Feature_6] <= 88.19999694824219) THEN CASE WHEN ([ADS].[Feature_7] <= 4.2485504150390625) THEN 31 ELSE 32 END ELSE CASE WHEN ([ADS].[Feature_12] <= 13.854999542236328) THEN 34 ELSE 35 END END END ELSE CASE WHEN ([ADS].[Feature_7] <= 2.7908499240875244) THEN CASE WHEN ([ADS].[Feature_0] <= 10.379525184631348) THEN CASE WHEN ([ADS].[Feature_4] <= 0.7064999938011169) THEN 39 ELSE 40 END ELSE CASE WHEN ([ADS].[Feature_11] <= 68.66999816894531) THEN 42 ELSE 43 END END ELSE CASE WHEN ([ADS].[Feature_7] <= 3.422950029373169) THEN CASE WHEN ([ADS].[Feature_0] <= 7.991704940795898) THEN 46 ELSE 47 END ELSE CASE WHEN ([ADS].[Feature_11] <= 381.6000061035156) THEN 49 ELSE 50 END END END END END AS node_id_2 
FROM boston AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_12' AS feature, 9.630000114440918 AS threshold, 126 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 22.361904761904757 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_5' AS feature, 7.521999835968018 AS threshold, 56 AS count, 1 AS depth, 0 AS parent_id, 29.167857142857144 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_6' AS feature, 97.80000305175781 AS threshold, 49 AS count, 2 AS depth, 1 AS parent_id, 26.76530612244898 AS [Estimator] UNION ALL SELECT 3 AS node_id, 'Feature_5' AS feature, 6.722499847412109 AS threshold, 48 AS count, 3 AS depth, 2 AS parent_id, 26.281249999999996 AS [Estimator] UNION ALL SELECT 4 AS node_id, 'Feature_6' AS feature, 85.19999694824219 AS threshold, 32 AS count, 4 AS depth, 3 AS parent_id, 24.381250000000005 AS [Estimator] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 5 AS depth, 4 AS parent_id, 23.903448275862072 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, 4 AS parent_id, 29.0 AS [Estimator] UNION ALL SELECT 7 AS node_id, 'Feature_10' AS feature, 17.75 AS threshold, 16 AS count, 4 AS depth, 3 AS parent_id, 30.08125 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 5 AS depth, 7 AS parent_id, 31.681818181818183 AS [Estimator] UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 5 AS depth, 7 AS parent_id, 26.560000000000002 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 50.0 AS [Estimator] UNION ALL SELECT 11 AS node_id, 'Feature_10' AS feature, 16.049999237060547 AS threshold, 7 AS count, 2 AS depth, 1 AS parent_id, 45.98571428571428 AS [Estimator] UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 11 AS parent_id, 50.0 AS [Estimator] UNION ALL SELECT 13 AS node_id, 'Feature_11' AS feature, 385.47998046875 AS threshold, 4 AS count, 3 AS depth, 11 AS parent_id, 42.974999999999994 AS [Estimator] UNION ALL SELECT 14 AS node_id, 'Feature_6' AS feature, 47.650001525878906 AS threshold, 2 AS count, 4 AS depth, 13 AS parent_id, 45.75 AS [Estimator] UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 14 AS parent_id, 46.7 AS [Estimator] UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 14 AS parent_id, 44.8 AS [Estimator] UNION ALL SELECT 17 AS node_id, 'Feature_6' AS feature, 74.6500015258789 AS threshold, 2 AS count, 4 AS depth, 13 AS parent_id, 40.2 AS [Estimator] UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 17 AS parent_id, 41.7 AS [Estimator] UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 17 AS parent_id, 38.7 AS [Estimator] UNION ALL SELECT 20 AS node_id, 'Feature_12' AS feature, 15.395000457763672 AS threshold, 70 AS count, 1 AS depth, 0 AS parent_id, 16.91714285714286 AS [Estimator] UNION ALL SELECT 21 AS node_id, 'Feature_5' AS feature, 5.759500026702881 AS threshold, 35 AS count, 2 AS depth, 20 AS parent_id, 20.288571428571426 AS [Estimator] UNION ALL SELECT 22 AS node_id, 'Feature_2' AS feature, 9.795000076293945 AS threshold, 5 AS count, 3 AS depth, 21 AS parent_id, 17.12 AS [Estimator] UNION ALL SELECT 23 AS node_id, 'Feature_10' AS feature, 19.450000762939453 AS threshold, 3 AS count, 4 AS depth, 22 AS parent_id, 18.133333333333336 AS [Estimator] UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 23 AS parent_id, 17.5 AS [Estimator] UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, 23 AS parent_id, 18.45 AS [Estimator] UNION ALL SELECT 26 AS node_id, 'Feature_9' AS feature, 485.0 AS threshold, 2 AS count, 4 AS depth, 22 AS parent_id, 15.6 AS [Estimator] UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 26 AS parent_id, 16.2 AS [Estimator] UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 26 AS parent_id, 15.0 AS [Estimator] UNION ALL SELECT 29 AS node_id, 'Feature_6' AS feature, 88.19999694824219 AS threshold, 30 AS count, 3 AS depth, 21 AS parent_id, 20.816666666666666 AS [Estimator] UNION ALL SELECT 30 AS node_id, 'Feature_7' AS feature, 4.2485504150390625 AS threshold, 24 AS count, 4 AS depth, 29 AS parent_id, 21.395833333333332 AS [Estimator] UNION ALL SELECT 31 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 5 AS depth, 30 AS parent_id, 22.041176470588233 AS [Estimator] UNION ALL SELECT 32 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 5 AS depth, 30 AS parent_id, 19.82857142857143 AS [Estimator] UNION ALL SELECT 33 AS node_id, 'Feature_12' AS feature, 13.854999542236328 AS threshold, 6 AS count, 4 AS depth, 29 AS parent_id, 18.500000000000004 AS [Estimator] UNION ALL SELECT 34 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, 33 AS parent_id, 20.166666666666668 AS [Estimator] UNION ALL SELECT 35 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, 33 AS parent_id, 16.833333333333332 AS [Estimator] UNION ALL SELECT 36 AS node_id, 'Feature_7' AS feature, 2.7908499240875244 AS threshold, 35 AS count, 2 AS depth, 20 AS parent_id, 13.545714285714288 AS [Estimator] UNION ALL SELECT 37 AS node_id, 'Feature_0' AS feature, 10.379525184631348 AS threshold, 29 AS count, 3 AS depth, 36 AS parent_id, 12.493103448275864 AS [Estimator] UNION ALL SELECT 38 AS node_id, 'Feature_4' AS feature, 0.7064999938011169 AS threshold, 18 AS count, 4 AS depth, 37 AS parent_id, 13.666666666666666 AS [Estimator] UNION ALL SELECT 39 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 5 AS depth, 38 AS parent_id, 12.5125 AS [Estimator] UNION ALL SELECT 40 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 5 AS depth, 38 AS parent_id, 14.59 AS [Estimator] UNION ALL SELECT 41 AS node_id, 'Feature_11' AS feature, 68.66999816894531 AS threshold, 11 AS count, 4 AS depth, 37 AS parent_id, 10.572727272727272 AS [Estimator] UNION ALL SELECT 42 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 5 AS depth, 41 AS parent_id, 8.86 AS [Estimator] UNION ALL SELECT 43 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 5 AS depth, 41 AS parent_id, 12.0 AS [Estimator] UNION ALL SELECT 44 AS node_id, 'Feature_7' AS feature, 3.422950029373169 AS threshold, 6 AS count, 3 AS depth, 36 AS parent_id, 18.63333333333333 AS [Estimator] UNION ALL SELECT 45 AS node_id, 'Feature_0' AS feature, 7.991704940795898 AS threshold, 3 AS count, 4 AS depth, 44 AS parent_id, 21.3 AS [Estimator] UNION ALL SELECT 46 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, 45 AS parent_id, 22.4 AS [Estimator] UNION ALL SELECT 47 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 45 AS parent_id, 19.1 AS [Estimator] UNION ALL SELECT 48 AS node_id, 'Feature_11' AS feature, 381.6000061035156 AS threshold, 3 AS count, 4 AS depth, 44 AS parent_id, 15.966666666666667 AS [Estimator] UNION ALL SELECT 49 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 48 AS parent_id, 13.6 AS [Estimator] UNION ALL SELECT 50 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, 48 AS parent_id, 17.15 AS [Estimator]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Estimator] AS [Estimator] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id)
 SELECT [DT_Output].[KEY] AS [KEY], [DT_Output].[Estimator] AS [Estimator] 
FROM [DT_Output]