-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] <= 0.005111072678118944) THEN CASE WHEN ([ADS].[Feature_8] <= -0.009431487880647182) THEN CASE WHEN ([ADS].[Feature_3] <= 0.11827273666858673) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_4] <= 0.06378880143165588) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_9] <= 0.03413021191954613) THEN CASE WHEN ([ADS].[Feature_3] <= 0.027610473334789276) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_5] <= 0.17733731865882874) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_2' AS feature, 0.005111072678118944 AS threshold, 296 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 149.27027027027026 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_8' AS feature, -0.009431487880647182 AS threshold, 179 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 111.2122905027933 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_3' AS feature, 0.11827273666858673 AS threshold, 121 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 91.58677685950413 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 119 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 89.49579831932773 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 216.0 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_4' AS feature, 0.06378880143165588 AS threshold, 58 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 152.1551724137931 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 42 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 138.9047619047619 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 186.9375 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_9' AS feature, 0.03413021191954613 AS threshold, 117 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 207.4957264957265 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_3' AS feature, 0.027610473334789276 AS threshold, 73 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 173.4931506849315 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 44 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 151.1818181818182 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 207.3448275862069 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_5' AS feature, 0.17733731865882874 AS threshold, 44 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 263.90909090909093 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 43 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 268.09302325581393 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 84.0 AS [Estimator]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Estimator] AS [Estimator] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id), 
[AdaBoost_Estim_0] AS 
(SELECT [DT_Output].[KEY] AS join_key_0, [DT_Output].[Estimator] AS [Estimator_0] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_8] <= -0.0019564833492040634) THEN CASE WHEN ([ADS].[Feature_3] <= 0.04597245156764984) THEN CASE WHEN ([ADS].[Feature_2] <= -0.05901874601840973) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_9] <= -0.00314875110052526) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_2] <= -0.02291204035282135) THEN CASE WHEN ([ADS].[Feature_6] <= -0.01578856259584427) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_3] <= 0.058022499084472656) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS [ADS]), 
[DT_node_data_1] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_8' AS feature, -0.0019564833492040634 AS threshold, 296 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 154.73986486486487 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_3' AS feature, 0.04597245156764984 AS threshold, 146 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 115.92465753424658 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_2' AS feature, -0.05901874601840973 AS threshold, 119 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 107.78151260504201 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 27 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 81.07407407407408 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 92 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 115.6195652173913 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_9' AS feature, -0.00314875110052526 AS threshold, 27 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 151.8148148148148 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 208.3846153846154 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 99.28571428571429 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_2' AS feature, -0.02291204035282135 AS threshold, 150 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 192.52 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_6' AS feature, -0.01578856259584427 AS threshold, 34 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 140.05882352941177 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 167.8095238095238 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 95.23076923076923 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_3' AS feature, 0.058022499084472656 AS threshold, 116 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 207.89655172413794 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 94 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 196.67021276595744 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 255.86363636363637 AS [Estimator]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].node_id AS node_id, [DT_node_data_1].feature AS feature, [DT_node_data_1].threshold AS threshold, [DT_node_data_1].count AS count, [DT_node_data_1].depth AS depth, [DT_node_data_1].parent_id AS parent_id, [DT_node_data_1].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].node_id), 
[AdaBoost_Estim_1] AS 
(SELECT [DT_Output_1].[KEY] AS join_key_1, [DT_Output_1].[Estimator] AS [Estimator_1] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_8] <= 0.016671042889356613) THEN CASE WHEN ([ADS].[Feature_9] <= 0.03827231749892235) THEN CASE WHEN ([ADS].[Feature_5] <= 0.09858047962188721) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_8] <= 0.00025462679332122207) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_2] <= 0.047145746648311615) THEN CASE WHEN ([ADS].[Feature_3] <= 0.061465367674827576) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_6] <= -0.045241665095090866) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS [ADS]), 
[DT_node_data_2] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_8' AS feature, 0.016671042889356613 AS threshold, 296 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 154.3310810810811 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_9' AS feature, 0.03827231749892235 AS threshold, 187 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 124.22459893048128 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_5' AS feature, 0.09858047962188721 AS threshold, 163 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 114.11042944785277 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 157 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 110.30573248407643 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 213.66666666666666 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_8' AS feature, 0.00025462679332122207 AS threshold, 24 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 192.91666666666666 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 151.6153846153846 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 241.72727272727272 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_2' AS feature, 0.047145746648311615 AS threshold, 109 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 205.9816513761468 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_3' AS feature, 0.061465367674827576 AS threshold, 70 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 175.05714285714285 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 65 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 167.43076923076924 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 274.2 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_6' AS feature, -0.045241665095090866 AS threshold, 39 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 261.4871794871795 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 313.4375 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 225.34782608695653 AS [Estimator]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].node_id AS node_id, [DT_node_data_2].feature AS feature, [DT_node_data_2].threshold AS threshold, [DT_node_data_2].count AS count, [DT_node_data_2].depth AS depth, [DT_node_data_2].parent_id AS parent_id, [DT_node_data_2].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].node_id), 
[AdaBoost_Estim_2] AS 
(SELECT [DT_Output_2].[KEY] AS join_key_2, [DT_Output_2].[Estimator] AS [Estimator_2] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_8] <= -0.009431487880647182) THEN CASE WHEN ([ADS].[Feature_2] <= 0.0061888848431408405) THEN CASE WHEN ([ADS].[Feature_0] <= -0.09087920188903809) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.014464406296610832) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_9] <= 0.03827231749892235) THEN CASE WHEN ([ADS].[Feature_2] <= 0.08648588508367538) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_2] <= -0.009439390152692795) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS [ADS]), 
[DT_node_data_3] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_8' AS feature, -0.009431487880647182 AS threshold, 296 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 159.29054054054055 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_2' AS feature, 0.0061888848431408405 AS threshold, 120 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 106.61666666666666 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, -0.09087920188903809 AS threshold, 95 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 88.73684210526316 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 190.0 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 90 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 83.11111111111111 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_0' AS feature, 0.014464406296610832 AS threshold, 25 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 174.56 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 203.41176470588235 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 113.25 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_9' AS feature, 0.03827231749892235 AS threshold, 176 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 195.20454545454547 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_2' AS feature, 0.08648588508367538 AS threshold, 124 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 177.76612903225808 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 115 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 169.34782608695653 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 285.3333333333333 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_2' AS feature, -0.009439390152692795 AS threshold, 52 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 236.78846153846155 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 128.5 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 48 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 245.8125 AS [Estimator]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].node_id AS node_id, [DT_node_data_3].feature AS feature, [DT_node_data_3].threshold AS threshold, [DT_node_data_3].count AS count, [DT_node_data_3].depth AS depth, [DT_node_data_3].parent_id AS parent_id, [DT_node_data_3].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].node_id), 
[AdaBoost_Estim_3] AS 
(SELECT [DT_Output_3].[KEY] AS join_key_3, [DT_Output_3].[Estimator] AS [Estimator_3] 
FROM [DT_Output_3]), 
[AdaBoost_Join_CTE] AS 
(SELECT [AdaBoost_Estim_0].join_key_0 AS join_key_0, [AdaBoost_Estim_0].[Estimator_0] AS [Estimator_0], [AdaBoost_Estim_1].join_key_1 AS join_key_1, [AdaBoost_Estim_1].[Estimator_1] AS [Estimator_1], [AdaBoost_Estim_2].join_key_2 AS join_key_2, [AdaBoost_Estim_2].[Estimator_2] AS [Estimator_2], [AdaBoost_Estim_3].join_key_3 AS join_key_3, [AdaBoost_Estim_3].[Estimator_3] AS [Estimator_3] 
FROM [AdaBoost_Estim_0] LEFT OUTER JOIN [AdaBoost_Estim_1] ON [AdaBoost_Estim_0].join_key_0 = [AdaBoost_Estim_1].join_key_1 LEFT OUTER JOIN [AdaBoost_Estim_2] ON [AdaBoost_Estim_2].join_key_2 = [AdaBoost_Estim_1].join_key_1 LEFT OUTER JOIN [AdaBoost_Estim_3] ON [AdaBoost_Estim_3].join_key_3 = [AdaBoost_Estim_2].join_key_2), 
[WeightedEstimators] AS 
(SELECT [Values].[Key] AS [Key], [Values].sub_estimator AS sub_estimator, [Values].[Weight] AS [Weight], [Values].[Value] AS [Value] 
FROM (SELECT [AdaBoost_Join_CTE].join_key_0 AS [Key], 0 AS sub_estimator, 0.305198776561 AS [Weight], [AdaBoost_Join_CTE].[Estimator_0] AS [Value] 
FROM [AdaBoost_Join_CTE] UNION ALL SELECT [AdaBoost_Join_CTE].join_key_0 AS [Key], 1 AS sub_estimator, 0.294994364965 AS [Weight], [AdaBoost_Join_CTE].[Estimator_1] AS [Value] 
FROM [AdaBoost_Join_CTE] UNION ALL SELECT [AdaBoost_Join_CTE].join_key_0 AS [Key], 2 AS sub_estimator, 0.220003964788 AS [Weight], [AdaBoost_Join_CTE].[Estimator_2] AS [Value] 
FROM [AdaBoost_Join_CTE] UNION ALL SELECT [AdaBoost_Join_CTE].join_key_0 AS [Key], 3 AS sub_estimator, 0.179802893687 AS [Weight], [AdaBoost_Join_CTE].[Estimator_3] AS [Value] 
FROM [AdaBoost_Join_CTE]) AS [Values]), 
[Cumulative_Frequencies] AS 
(SELECT u1.[Key] AS [Key], u1.sub_estimator AS sub_estimator, u1.[Weight] AS [Weight], u1.[Value] AS [Value], (SELECT sum(u2.[Weight]) AS sum_1 
FROM [WeightedEstimators] AS u2 
WHERE u1.[Key] = u2.[Key] AND u1.[Value] >= u2.[Value]) AS cum_weight 
FROM [WeightedEstimators] AS u1), 
[Quantiles] AS 
(SELECT [AdaBoost_Join_CTE].join_key_0 AS join_key_0, [AdaBoost_Join_CTE].[Estimator_0] AS [Estimator_0], [AdaBoost_Join_CTE].join_key_1 AS join_key_1, [AdaBoost_Join_CTE].[Estimator_1] AS [Estimator_1], [AdaBoost_Join_CTE].join_key_2 AS join_key_2, [AdaBoost_Join_CTE].[Estimator_2] AS [Estimator_2], [AdaBoost_Join_CTE].join_key_3 AS join_key_3, [AdaBoost_Join_CTE].[Estimator_3] AS [Estimator_3], (SELECT min([Cumulative_Frequencies].[Value]) AS min_1 
FROM [Cumulative_Frequencies] 
WHERE [AdaBoost_Join_CTE].join_key_0 = [Cumulative_Frequencies].[Key] AND [Cumulative_Frequencies].cum_weight >= 0.5) AS [Median] 
FROM [AdaBoost_Join_CTE])
 SELECT [Quantiles].join_key_0 AS [KEY], [Quantiles].[Median] AS [Estimator] 
FROM [Quantiles]