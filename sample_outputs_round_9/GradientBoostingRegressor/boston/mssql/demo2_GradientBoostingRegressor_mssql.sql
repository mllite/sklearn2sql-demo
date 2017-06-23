-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_12] <= 9.630000114440918) THEN CASE WHEN ([ADS].[Feature_5] <= 7.521999835968018) THEN CASE WHEN ([ADS].[Feature_0] <= 7.481729984283447) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_10] <= 16.049999237060547) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_12] <= 15.395000457763672) THEN CASE WHEN ([ADS].[Feature_5] <= 5.759500026702881) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_7] <= 2.7908499240875244) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_12' AS feature, 9.630000114440918 AS threshold, 126 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4802973661668755e-15 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_5' AS feature, 7.521999835968018 AS threshold, 56 AS count, 1 AS depth, 0 AS parent_id, 6.805952380952383 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 7.481729984283447 AS threshold, 49 AS count, 2 AS depth, 1 AS parent_id, 4.403401360544221 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 48 AS count, 3 AS depth, 2 AS parent_id, 3.9193452380952407 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 27.63809523809524 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_10' AS feature, 16.049999237060547 AS threshold, 7 AS count, 2 AS depth, 1 AS parent_id, 23.62380952380953 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 5 AS parent_id, 27.638095238095236 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 5 AS parent_id, 20.61309523809524 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_12' AS feature, 15.395000457763672 AS threshold, 70 AS count, 1 AS depth, 0 AS parent_id, -5.4447619047619025 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_5' AS feature, 5.759500026702881 AS threshold, 35 AS count, 2 AS depth, 8 AS parent_id, -2.0733333333333315 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 9 AS parent_id, -5.241904761904761 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 30 AS count, 3 AS depth, 9 AS parent_id, -1.545238095238094 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_7' AS feature, 2.7908499240875244 AS threshold, 35 AS count, 2 AS depth, 8 AS parent_id, -8.816190476190473 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 3 AS depth, 12 AS parent_id, -9.868801313628897 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 12 AS parent_id, -3.7285714285714273 AS [Estimator]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Estimator] AS [Estimator] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id), 
[GB_Tree_0_0] AS 
(SELECT [DT_Output].[KEY] AS [KEY], [DT_Output].[Estimator] AS [Estimator] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_12] <= 9.630000114440918) THEN CASE WHEN ([ADS].[Feature_5] <= 7.521999835968018) THEN CASE WHEN ([ADS].[Feature_0] <= 7.481729984283447) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_10] <= 16.049999237060547) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_12] <= 15.395000457763672) THEN CASE WHEN ([ADS].[Feature_5] <= 5.831000328063965) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_7] <= 2.7908499240875244) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS [ADS]), 
[DT_node_data_1] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_12' AS feature, 9.630000114440918 AS threshold, 126 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 5.21628595696899e-16 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_5' AS feature, 7.521999835968018 AS threshold, 56 AS count, 1 AS depth, 0 AS parent_id, 6.125357142857142 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 7.481729984283447 AS threshold, 49 AS count, 2 AS depth, 1 AS parent_id, 3.9630612244897963 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 48 AS count, 3 AS depth, 2 AS parent_id, 3.5274107142857143 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 24.874285714285715 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_10' AS feature, 16.049999237060547 AS threshold, 7 AS count, 2 AS depth, 1 AS parent_id, 21.261428571428574 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 5 AS parent_id, 24.874285714285715 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 5 AS parent_id, 18.551785714285717 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_12' AS feature, 15.395000457763672 AS threshold, 70 AS count, 1 AS depth, 0 AS parent_id, -4.900285714285715 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_5' AS feature, 5.831000328063965 AS threshold, 35 AS count, 2 AS depth, 8 AS parent_id, -1.8659999999999992 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 9 AS parent_id, -4.20047619047619 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS count, 3 AS depth, 9 AS parent_id, -1.2823809523809513 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_7' AS feature, 2.7908499240875244 AS threshold, 35 AS count, 2 AS depth, 8 AS parent_id, -7.93457142857143 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 3 AS depth, 12 AS parent_id, -8.88192118226601 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 12 AS parent_id, -3.3557142857142837 AS [Estimator]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].node_id AS node_id, [DT_node_data_1].feature AS feature, [DT_node_data_1].threshold AS threshold, [DT_node_data_1].count AS count, [DT_node_data_1].depth AS depth, [DT_node_data_1].parent_id AS parent_id, [DT_node_data_1].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].node_id), 
[GB_Tree_1_0] AS 
(SELECT [DT_Output_1].[KEY] AS [KEY], [DT_Output_1].[Estimator] AS [Estimator] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_5] <= 6.922999858856201) THEN CASE WHEN ([ADS].[Feature_12] <= 14.264999389648438) THEN CASE WHEN ([ADS].[Feature_7] <= 1.2910499572753906) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_7] <= 2.345900058746338) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_5] <= 7.521999835968018) THEN CASE WHEN ([ADS].[Feature_8] <= 16.0) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_10] <= 16.049999237060547) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS [ADS]), 
[DT_node_data_2] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_5' AS feature, 6.922999858856201 AS threshold, 126 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 8.881784197001252e-16 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_12' AS feature, 14.264999389648438 AS threshold, 111 AS count, 1 AS depth, 0 AS parent_id, -1.833282496782496 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_7' AS feature, 1.2910499572753906 AS threshold, 69 AS count, 2 AS depth, 1 AS parent_id, 1.0165993788819887 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 22.386857142857146 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 68 AS count, 3 AS depth, 2 AS parent_id, 0.7023308823529424 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_7' AS feature, 2.345900058746338 AS threshold, 42 AS count, 2 AS depth, 1 AS parent_id, -6.515231292517006 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, 5 AS parent_id, -8.198390236200579 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, 5 AS parent_id, -3.7800980090311977 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_5' AS feature, 7.521999835968018 AS threshold, 15 AS count, 1 AS depth, 0 AS parent_id, 13.566290476190476 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_8' AS feature, 16.0 AS threshold, 8 AS count, 2 AS depth, 8 AS parent_id, 8.693419642857142 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 9 AS parent_id, 9.664848214285714 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 9 AS parent_id, 1.8934196428571433 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_10' AS feature, 16.049999237060547 AS threshold, 7 AS count, 2 AS depth, 8 AS parent_id, 19.135285714285715 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 12 AS parent_id, 22.38685714285715 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 12 AS parent_id, 16.696607142857147 AS [Estimator]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].node_id AS node_id, [DT_node_data_2].feature AS feature, [DT_node_data_2].threshold AS threshold, [DT_node_data_2].count AS count, [DT_node_data_2].depth AS depth, [DT_node_data_2].parent_id AS parent_id, [DT_node_data_2].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].node_id), 
[GB_Tree_2_0] AS 
(SELECT [DT_Output_2].[KEY] AS [KEY], [DT_Output_2].[Estimator] AS [Estimator] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_12] <= 9.630000114440918) THEN CASE WHEN ([ADS].[Feature_5] <= 7.521999835968018) THEN CASE WHEN ([ADS].[Feature_7] <= 1.3911499977111816) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_10] <= 17.700000762939453) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_0] <= 7.084139823913574) THEN CASE WHEN ([ADS].[Feature_6] <= 91.55000305175781) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_12] <= 19.720001220703125) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS [ADS]), 
[DT_node_data_3] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_12' AS feature, 9.630000114440918 AS threshold, 126 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 5.780208763127799e-16 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_5' AS feature, 7.521999835968018 AS threshold, 56 AS count, 1 AS depth, 0 AS parent_id, 5.059295625750303 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_7' AS feature, 1.3911499977111816 AS threshold, 49 AS count, 2 AS depth, 1 AS parent_id, 3.3218011233064653 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 20.14817142857143 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 48 AS count, 3 AS depth, 2 AS parent_id, 2.9712517419467788 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_10' AS feature, 17.700000762939453 AS threshold, 7 AS count, 2 AS depth, 1 AS parent_id, 17.221757142857143 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 5 AS parent_id, 18.300058928571428 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 5 AS parent_id, 10.751946428571433 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_0' AS feature, 7.084139823913574 AS threshold, 70 AS count, 1 AS depth, 0 AS parent_id, -4.047436500600239 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_6' AS feature, 91.55000305175781 AS threshold, 46 AS count, 2 AS depth, 8 AS parent_id, -2.277727435248116 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 34 AS count, 3 AS depth, 9 AS parent_id, -1.2645953855403127 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, 9 AS parent_id, -5.148268242753556 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_12' AS feature, 19.720001220703125 AS threshold, 24 AS count, 2 AS depth, 8 AS parent_id, -7.439378875858478 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, 12 AS parent_id, -5.7521979697787 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, 12 AS parent_id, -8.866993488695211 AS [Estimator]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].node_id AS node_id, [DT_node_data_3].feature AS feature, [DT_node_data_3].threshold AS threshold, [DT_node_data_3].count AS count, [DT_node_data_3].depth AS depth, [DT_node_data_3].parent_id AS parent_id, [DT_node_data_3].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].node_id), 
[GB_Tree_3_0] AS 
(SELECT [DT_Output_3].[KEY] AS [KEY], [DT_Output_3].[Estimator] AS [Estimator] 
FROM [DT_Output_3]), 
[Score_Union_CTE] AS 
(SELECT ensemble_score_union.[KEY] AS [KEY], ensemble_score_union.[Estimator] AS [Estimator] 
FROM (SELECT [GB_Tree_0_0].[KEY] AS [KEY], [GB_Tree_0_0].[Estimator] AS [Estimator] 
FROM [GB_Tree_0_0] UNION ALL SELECT [GB_Tree_1_0].[KEY] AS [KEY], [GB_Tree_1_0].[Estimator] AS [Estimator] 
FROM [GB_Tree_1_0] UNION ALL SELECT [GB_Tree_2_0].[KEY] AS [KEY], [GB_Tree_2_0].[Estimator] AS [Estimator] 
FROM [GB_Tree_2_0] UNION ALL SELECT [GB_Tree_3_0].[KEY] AS [KEY], [GB_Tree_3_0].[Estimator] AS [Estimator] 
FROM [GB_Tree_3_0]) AS ensemble_score_union), 
[GradBoost_Sum_Scores] AS 
(SELECT [T].[KEY] AS [KEY], [T].[Estimator] AS [Estimator] 
FROM (SELECT [Score_Union_CTE].[KEY] AS [KEY], sum([Score_Union_CTE].[Estimator]) AS [Estimator] 
FROM [Score_Union_CTE] GROUP BY [Score_Union_CTE].[KEY]) AS [T])
 SELECT [GradBoost_Sum_Scores].[KEY] AS [KEY], 22.3619047619 + 0.1 * [GradBoost_Sum_Scores].[Estimator] AS [Estimator] 
FROM [GradBoost_Sum_Scores]