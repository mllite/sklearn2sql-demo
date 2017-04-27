-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_3] <= 0.4892005920410156) THEN CASE WHEN ([ADS].[Feature_1] <= 0.30514055490493774) THEN CASE WHEN ([ADS].[Feature_3] <= 0.37886130809783936) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_2] <= 0.39965885877609253) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_8] <= 0.5031172037124634) THEN CASE WHEN ([ADS].[Feature_2] <= 0.122545525431633) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.39421629905700684) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.4892005920410156 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.336715331666333 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.30514055490493774 AS threshold, 30 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.963851096828307 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_3' AS feature, 0.37886130809783936 AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 8.369804765607395 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 6.780861779903232 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.412731461512749 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_2' AS feature, 0.39965885877609253 AS threshold, 14 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.928475475366495 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.61313772297389 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.923567589655386 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_8' AS feature, 0.5031172037124634 AS threshold, 37 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.071470116670138 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_2' AS feature, 0.122545525431633 AS threshold, 21 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.071911280686098 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.48707436134462 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.317172817980309 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_1' AS feature, 0.39421629905700684 AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 19.69589108889919 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.135393479077706 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 20.74831361424261 AS [Estimator]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Estimator] AS [Estimator] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id), 
[AdaBoost_Estim_0] AS 
(SELECT [DT_Output].[KEY] AS join_key_0, [DT_Output].[Estimator] AS [Estimator_0] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_3] <= 0.5854187607765198) THEN CASE WHEN ([ADS].[Feature_1] <= 0.1115947812795639) THEN CASE WHEN ([ADS].[Feature_1] <= 0.013882286846637726) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_2] <= 0.8828637003898621) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.349639356136322) THEN CASE WHEN ([ADS].[Feature_1] <= 0.38437575101852417) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_8] <= 0.4744883179664612) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS [ADS]), 
[DT_node_data_1] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.5854187607765198 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.425156759579954 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.1115947812795639 AS threshold, 41 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.863771246480885 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_1' AS feature, 0.013882286846637726 AS threshold, 8 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 6.1364621965739055 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 4.315008777479614 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 7.229334248030481 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_2' AS feature, 0.8828637003898621 AS threshold, 33 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.252209804034093 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.24869526638567 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 16.97954951529966 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_0' AS feature, 0.349639356136322 AS threshold, 26 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.464264684082334 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_1' AS feature, 0.38437575101852417 AS threshold, 9 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.160996099559263 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.272600106672636 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.271491090667553 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_8' AS feature, 0.4744883179664612 AS threshold, 17 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 20.742465699418076 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.190285098847298 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 21.835444345747547 AS [Estimator]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].node_id AS node_id, [DT_node_data_1].feature AS feature, [DT_node_data_1].threshold AS threshold, [DT_node_data_1].count AS count, [DT_node_data_1].depth AS depth, [DT_node_data_1].parent_id AS parent_id, [DT_node_data_1].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].node_id), 
[AdaBoost_Estim_1] AS 
(SELECT [DT_Output_1].[KEY] AS join_key_1, [DT_Output_1].[Estimator] AS [Estimator_1] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] <= 0.49810856580734253) THEN CASE WHEN ([ADS].[Feature_3] <= 0.39240437746047974) THEN CASE WHEN ([ADS].[Feature_9] <= 0.5612988471984863) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_2] <= 0.09327845275402069) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.4358862340450287) THEN CASE WHEN ([ADS].[Feature_1] <= 0.037621986120939255) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_3] <= 0.6833713054656982) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS [ADS]), 
[DT_node_data_2] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_0' AS feature, 0.49810856580734253 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.866011382600815 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_3' AS feature, 0.39240437746047974 AS threshold, 32 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.757091559657047 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_9' AS feature, 0.5612988471984863 AS threshold, 11 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.096497274709575 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 8.426375376828794 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.797716253517388 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_2' AS feature, 0.09327845275402069 AS threshold, 21 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.674545708915243 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 19.51986604513892 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.866992319544632 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_1' AS feature, 0.4358862340450287 AS threshold, 35 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.70845236357798 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_1' AS feature, 0.037621986120939255 AS threshold, 11 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.978564366188504 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 4.315008777479614 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 16.04491992505939 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_3' AS feature, 0.6833713054656982 AS threshold, 24 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 20.417984362381475 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.697222147463425 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 22.13874657729954 AS [Estimator]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].node_id AS node_id, [DT_node_data_2].feature AS feature, [DT_node_data_2].threshold AS threshold, [DT_node_data_2].count AS count, [DT_node_data_2].depth AS depth, [DT_node_data_2].parent_id AS parent_id, [DT_node_data_2].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].node_id), 
[AdaBoost_Estim_2] AS 
(SELECT [DT_Output_2].[KEY] AS join_key_2, [DT_Output_2].[Estimator] AS [Estimator_2] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_3] <= 0.45315682888031006) THEN CASE WHEN ([ADS].[Feature_1] <= 0.3343847990036011) THEN CASE WHEN ([ADS].[Feature_3] <= 0.2236783802509308) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_5] <= 0.48527073860168457) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.44856390357017517) THEN CASE WHEN ([ADS].[Feature_4] <= 0.11072138696908951) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_9] <= 0.25368690490722656) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS [ADS]), 
[DT_node_data_3] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.45315682888031006 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.299750022499564 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.3343847990036011 AS threshold, 30 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.58442305938599 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_3' AS feature, 0.2236783802509308 AS threshold, 11 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 8.98357742125714 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 7.549688131050886 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.492883679118087 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_5' AS feature, 0.48527073860168457 AS threshold, 19 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.090175797250055 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.763118542783388 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.675794968879693 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_1' AS feature, 0.44856390357017517 AS threshold, 37 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.312177289888954 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_4' AS feature, 0.11072138696908951 AS threshold, 12 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.063388807502422 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.88321029235486 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.620659175464965 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_9' AS feature, 0.25368690490722656 AS threshold, 25 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 20.351595761434496 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.652384847008104 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 21.40128889482254 AS [Estimator]) AS [Values]), 
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
FROM (SELECT [AdaBoost_Join_CTE].join_key_0 AS [Key], 0 AS sub_estimator, 0.253200997483 AS [Weight], [AdaBoost_Join_CTE].[Estimator_0] AS [Value] 
FROM [AdaBoost_Join_CTE] UNION ALL SELECT [AdaBoost_Join_CTE].join_key_0 AS [Key], 1 AS sub_estimator, 0.191370946178 AS [Weight], [AdaBoost_Join_CTE].[Estimator_1] AS [Value] 
FROM [AdaBoost_Join_CTE] UNION ALL SELECT [AdaBoost_Join_CTE].join_key_0 AS [Key], 2 AS sub_estimator, 0.290928047327 AS [Weight], [AdaBoost_Join_CTE].[Estimator_2] AS [Value] 
FROM [AdaBoost_Join_CTE] UNION ALL SELECT [AdaBoost_Join_CTE].join_key_0 AS [Key], 3 AS sub_estimator, 0.264500009013 AS [Weight], [AdaBoost_Join_CTE].[Estimator_3] AS [Value] 
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