-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_1] <= 150.6630859375) THEN CASE WHEN ([ADS].[Feature_2] <= 0.4354301691055298) THEN 2 ELSE 3 END ELSE CASE WHEN ([ADS].[Feature_2] <= 0.21123337745666504) THEN CASE WHEN ([ADS].[Feature_2] <= 0.02367911860346794) THEN 6 ELSE CASE WHEN ([ADS].[Feature_3] <= 7.421910285949707) THEN CASE WHEN ([ADS].[Feature_3] <= 2.606309413909912) THEN 9 ELSE 10 END ELSE CASE WHEN ([ADS].[Feature_2] <= 0.17211845517158508) THEN 12 ELSE 13 END END END ELSE CASE WHEN ([ADS].[Feature_1] <= 723.9319458007812) THEN CASE WHEN ([ADS].[Feature_0] <= 69.63314819335938) THEN CASE WHEN ([ADS].[Feature_0] <= 24.547710418701172) THEN 17 ELSE 18 END ELSE CASE WHEN ([ADS].[Feature_2] <= 0.47674766182899475) THEN 20 ELSE 21 END END ELSE CASE WHEN ([ADS].[Feature_2] <= 0.21594497561454773) THEN 23 ELSE CASE WHEN ([ADS].[Feature_0] <= 37.633270263671875) THEN 25 ELSE 26 END END END END END AS node_id_2 
FROM freidman3 AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_1' AS feature, 150.6630859375 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.3351358313260877 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_2' AS feature, 0.4354301691055298 AS threshold, 2 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5458285056365231 AS [Estimator] UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.4545667925647837 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6370902187082624 AS [Estimator] UNION ALL SELECT 4 AS node_id, 'Feature_2' AS feature, 0.21123337745666504 AS threshold, 65 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.3594222105780742 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_2' AS feature, 0.02367911860346794 AS threshold, 11 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0521931052073232 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.47538378557192634 AS [Estimator] UNION ALL SELECT 7 AS node_id, 'Feature_3' AS feature, 7.421910285949707 AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.109874037170863 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_3' AS feature, 2.606309413909912 AS threshold, 6 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.069332407665369 AS [Estimator] UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.1806629954119399 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0136671137920836 AS [Estimator] UNION ALL SELECT 11 AS node_id, 'Feature_2' AS feature, 0.17211845517158508 AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.170686481429104 AS [Estimator] UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.2102119500848276 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.1311610127733807 AS [Estimator] UNION ALL SELECT 14 AS node_id, 'Feature_1' AS feature, 723.9319458007812 AS threshold, 54 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.422005917227672 AS [Estimator] UNION ALL SELECT 15 AS node_id, 'Feature_0' AS feature, 69.63314819335938 AS threshold, 20 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.2940208292988578 AS [Estimator] UNION ALL SELECT 16 AS node_id, 'Feature_0' AS feature, 24.547710418701172 AS threshold, 12 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.3824868759137672 AS [Estimator] UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4876147626070022 AS [Estimator] UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.3299229325671496 AS [Estimator] UNION ALL SELECT 19 AS node_id, 'Feature_2' AS feature, 0.47674766182899475 AS threshold, 8 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.1613217593764942 AS [Estimator] UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9312774409431335 AS [Estimator] UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.2380031988542812 AS [Estimator] UNION ALL SELECT 22 AS node_id, 'Feature_2' AS feature, 0.21594497561454773 AS threshold, 34 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.49729126306815 AS [Estimator] UNION ALL SELECT 23 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.2849982219547267 AS [Estimator] UNION ALL SELECT 24 AS node_id, 'Feature_0' AS feature, 37.633270263671875 AS threshold, 33 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.5037243855261324 AS [Estimator] UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.5379224595886674 AS [Estimator] UNION ALL SELECT 26 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4785258046379492 AS [Estimator]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Estimator] AS [Estimator] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id)
 SELECT [DT_Output].[KEY] AS [KEY], [DT_Output].[Estimator] AS [Estimator] 
FROM [DT_Output]