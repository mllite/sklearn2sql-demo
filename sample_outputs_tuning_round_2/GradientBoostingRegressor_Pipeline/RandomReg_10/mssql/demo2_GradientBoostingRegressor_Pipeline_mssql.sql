-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.166809472981 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN -0.163512719944 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.19149292241 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.0583848447531 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN -0.0993320516212 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.212931216605 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.04786556869 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.0507869895908 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN -0.191319922591 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.199404056775 ELSE [ADS].[Feature_9] END AS impter_11 
FROM [RandomReg_10] AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 0.166809472981) / 1.0289835997 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - -0.163512719944) / 0.991581253505 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 0.19149292241) / 0.932114762915 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - 0.0583848447531) / 1.08557293295 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - -0.0993320516212) / 1.07439044129 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - 0.212931216605) / 0.935807438189 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 0.04786556869) / 1.13635740906 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - 0.0507869895908) / 0.97254574601 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - -0.191319922591) / 1.14159746779 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - 0.199404056775) / 0.882245682091 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
[DT_node_lookup] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.3164803087711334) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -0.9403623342514038) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -1.1683640480041504) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 0.07141511887311935) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_6 <= -1.0221788883209229) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -0.11237061023712158) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -0.463795930147171) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, 2 AS parent_id, -208.7780451708557 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, -437.3409386784606 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, 5 AS parent_id, -113.60421644601387 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, 5 AS parent_id, 122.45884789399581 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -309.90060671962567 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -32.15578897857857 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, 12 AS parent_id, 61.439924831450156 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, 12 AS parent_id, 231.09071528701512 AS [Estimator]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Estimator] AS [Estimator] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id), 
[GB_Tree_0_0] AS 
(SELECT [DT_Output].[KEY] AS [KEY], [DT_Output].[Estimator] AS [Estimator] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.3164803087711334) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_9 <= 0.4446154236793518) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_3 <= -0.9983952641487122) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 0.04722323268651962) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_6 <= -1.0221788883209229) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -0.11237061023712158) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -0.463795930147171) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data_1] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 2 AS parent_id, -326.5091064084041 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 31 AS count, 3 AS depth, 2 AS parent_id, -98.85523416498395 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 5 AS parent_id, -87.44714659587862 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, 5 AS parent_id, 173.77310999517758 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -278.9105460476631 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -28.94021008072071 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, 12 AS parent_id, 55.29593234830514 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, 12 AS parent_id, 207.98164375831354 AS [Estimator]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].node_id AS node_id, [DT_node_data_1].feature AS feature, [DT_node_data_1].threshold AS threshold, [DT_node_data_1].count AS count, [DT_node_data_1].depth AS depth, [DT_node_data_1].parent_id AS parent_id, [DT_node_data_1].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].node_id), 
[GB_Tree_1_0] AS 
(SELECT [DT_Output_1].[KEY] AS [KEY], [DT_Output_1].[Estimator] AS [Estimator] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.3164803087711334) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -0.9403623342514038) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -1.1683640480041504) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 0.0062407031655311584) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_6 <= -1.0221788883209229) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -0.11237061023712158) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_3 <= -0.031761933118104935) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data_2] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, 2 AS parent_id, -176.11170265107646 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, -368.5443965778881 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 3 AS depth, 5 AS parent_id, -96.0390013850018 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, 5 AS parent_id, 99.38716020637538 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -251.0194914428968 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -26.04618907264864 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, 12 AS parent_id, 75.1277990616216 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, 12 AS parent_id, 204.70712521807272 AS [Estimator]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].node_id AS node_id, [DT_node_data_2].feature AS feature, [DT_node_data_2].threshold AS threshold, [DT_node_data_2].count AS count, [DT_node_data_2].depth AS depth, [DT_node_data_2].parent_id AS parent_id, [DT_node_data_2].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].node_id), 
[GB_Tree_2_0] AS 
(SELECT [DT_Output_2].[KEY] AS [KEY], [DT_Output_2].[Estimator] AS [Estimator] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 1.3744688034057617) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -0.9428368806838989) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_3 <= 0.08440186083316803) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 0.029281165450811386) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -1.6898996829986572) THEN 9 ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 1.8215601444244385) THEN 11 ELSE 12 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data_3] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, 2 AS parent_id, -219.68151785911093 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, 1.5378845252896032 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 31 AS count, 3 AS depth, 5 AS parent_id, -63.12781904445371 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, 5 AS parent_id, 105.11332453399308 AS [Estimator] UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 8 AS parent_id, 50.921431639148395 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 10 AS parent_id, 228.02920133836216 AS [Estimator] UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 10 AS parent_id, 332.2565374483745 AS [Estimator]) AS [Values]), 
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
 SELECT [GradBoost_Sum_Scores].[KEY] AS [KEY], 26.4058527307 + 0.1 * [GradBoost_Sum_Scores].[Estimator] AS [Estimator] 
FROM [GradBoost_Sum_Scores]