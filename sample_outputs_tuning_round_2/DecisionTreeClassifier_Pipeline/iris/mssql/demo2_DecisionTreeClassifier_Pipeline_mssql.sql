-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 5.8475 ELSE [ADS].[Feature_0] END AS imputer_output_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 3.03666666667 ELSE [ADS].[Feature_1] END AS imputer_output_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 3.845 ELSE [ADS].[Feature_2] END AS imputer_output_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 1.245 ELSE [ADS].[Feature_3] END AS imputer_output_5 
FROM iris AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].imputer_output_2 AS FLOAT) - 5.8475) / 0.827039146595 AS scaler_output_2, (CAST([ADS_imp_1_OUT].imputer_output_3 AS FLOAT) - 3.03666666667) / 0.436259352017 AS scaler_output_3, (CAST([ADS_imp_1_OUT].imputer_output_4 AS FLOAT) - 3.845) / 1.7098172417 AS scaler_output_4, (CAST([ADS_imp_1_OUT].imputer_output_5 AS FLOAT) - 1.245) / 0.749872211336 AS scaler_output_5 
FROM [ADS_imp_1_OUT]), 
[DT_node_lookup] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_4 <= 0.5877821445465088) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_output_5 <= 0.5400919914245605) THEN 4 ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_3 <= 0.1451735943555832) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_5 <= 0.6734480857849121) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_output_4 <= 0.7047536373138428) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_output_3 <= -1.5739872455596924) THEN 11 ELSE 12 END ELSE 13 END ELSE 14 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Proba_0] AS [Proba_0], [Values].[LogProba_0] AS [LogProba_0], [Values].[Proba_1] AS [Proba_1], [Values].[LogProba_1] AS [LogProba_1], [Values].[Proba_2] AS [Proba_2], [Values].[LogProba_2] AS [LogProba_2], [Values].[Decision] AS [Decision], [Values].[DecisionProba] AS [DecisionProba] 
FROM (SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 37 AS count, 1 AS depth, 0 AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 0 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 36 AS count, 3 AS depth, 3 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 1 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 1.0 AS [Proba_2], 0.0 AS [LogProba_2], 2 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 1 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 10 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 1.0 AS [Proba_2], 0.0 AS [LogProba_2], 2 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, 10 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 0.0 AS [Proba_2], -1.79769313486231e+308 AS [LogProba_2], 1 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 4 AS depth, 9 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 1.0 AS [Proba_2], 0.0 AS [LogProba_2], 2 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 37 AS count, 3 AS depth, 8 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 1.0 AS [Proba_2], 0.0 AS [LogProba_2], 2 AS [Decision], 1.0 AS [DecisionProba]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Proba_0] AS [Proba_0], [DT_node_data].[LogProba_0] AS [LogProba_0], [DT_node_data].[Proba_1] AS [Proba_1], [DT_node_data].[LogProba_1] AS [LogProba_1], [DT_node_data].[Proba_2] AS [Proba_2], [DT_node_data].[LogProba_2] AS [LogProba_2], [DT_node_data].[Decision] AS [Decision], [DT_node_data].[DecisionProba] AS [DecisionProba] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id)
 SELECT [DT_Output].[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], CAST(NULL AS FLOAT) AS [Score_2], [DT_Output].[Proba_0] AS [Proba_0], [DT_Output].[Proba_1] AS [Proba_1], [DT_Output].[Proba_2] AS [Proba_2], [DT_Output].[LogProba_0] AS [LogProba_0], [DT_Output].[LogProba_1] AS [LogProba_1], [DT_Output].[LogProba_2] AS [LogProba_2], [DT_Output].[Decision] AS [Decision], [DT_Output].[DecisionProba] AS [DecisionProba] 
FROM [DT_Output]