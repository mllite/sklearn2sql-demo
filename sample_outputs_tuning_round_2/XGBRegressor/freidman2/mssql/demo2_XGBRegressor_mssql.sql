-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] < 0.5361224412918091) THEN CASE WHEN ([ADS].[Feature_2] < 0.1157732754945755) THEN 3 ELSE CASE WHEN ([ADS].[Feature_1] < 876.18896484375) THEN 7 ELSE 8 END END ELSE CASE WHEN ([ADS].[Feature_1] < 745.0648193359375) THEN 5 ELSE CASE WHEN ([ADS].[Feature_1] < 1031.63671875) THEN 9 ELSE 10 END END END AS node_id_2 
FROM freidman2 AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 5.259021282196045 AS [Estimator] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 26.5679988861084 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 15.483972549438477 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 38.08768844604492 AS [Estimator] UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 61.972469329833984 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 93.55223846435547 AS [Estimator]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Estimator] AS [Estimator] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id), 
[XGB_Tree_0] AS 
(SELECT [DT_Output].[KEY] AS [KEY], [DT_Output].[Estimator] AS [Estimator] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] < 0.4144279360771179) THEN CASE WHEN ([ADS].[Feature_2] < 0.1157732754945755) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_1] < 745.0648193359375) THEN 5 ELSE CASE WHEN ([ADS].[Feature_1] < 1094.2822265625) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman2 AS [ADS]), 
[DT_node_data_1] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 4.780928611755371 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 20.260730743408203 AS [Estimator] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 22.574623107910156 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 58.41529083251953 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 84.34954071044922 AS [Estimator]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].node_id AS node_id, [DT_node_data_1].feature AS feature, [DT_node_data_1].threshold AS threshold, [DT_node_data_1].depth AS depth, [DT_node_data_1].parent_id AS parent_id, [DT_node_data_1].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].node_id), 
[XGB_Tree_1] AS 
(SELECT [DT_Output_1].[KEY] AS [KEY], [DT_Output_1].[Estimator] AS [Estimator] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] < 0.5361224412918091) THEN CASE WHEN ([ADS].[Feature_2] < 0.2454954981803894) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_1] < 815.79052734375) THEN 5 ELSE CASE WHEN ([ADS].[Feature_1] < 1191.3021240234375) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman2 AS [ADS]), 
[DT_node_data_2] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 8.467768669128418 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 26.712514877319336 AS [Estimator] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 23.58084487915039 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 57.88615036010742 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 84.63152313232422 AS [Estimator]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].node_id AS node_id, [DT_node_data_2].feature AS feature, [DT_node_data_2].threshold AS threshold, [DT_node_data_2].depth AS depth, [DT_node_data_2].parent_id AS parent_id, [DT_node_data_2].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].node_id), 
[XGB_Tree_2] AS 
(SELECT [DT_Output_2].[KEY] AS [KEY], [DT_Output_2].[Estimator] AS [Estimator] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] < 0.4144279360771179) THEN CASE WHEN ([ADS].[Feature_2] < 0.1157732754945755) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_1] < 541.9518432617188) THEN 5 ELSE CASE WHEN ([ADS].[Feature_1] < 967.7061157226562) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman2 AS [ADS]), 
[DT_node_data_3] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 3.5765016078948975 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 16.533885955810547 AS [Estimator] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 13.682024002075195 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 41.46207809448242 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 67.26363372802734 AS [Estimator]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].node_id AS node_id, [DT_node_data_3].feature AS feature, [DT_node_data_3].threshold AS threshold, [DT_node_data_3].depth AS depth, [DT_node_data_3].parent_id AS parent_id, [DT_node_data_3].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].node_id), 
[XGB_Tree_3] AS 
(SELECT [DT_Output_3].[KEY] AS [KEY], [DT_Output_3].[Estimator] AS [Estimator] 
FROM [DT_Output_3]), 
[DT_node_lookup_4] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] < 0.5361224412918091) THEN CASE WHEN ([ADS].[Feature_2] < 0.2454954981803894) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_1] < 882.4659423828125) THEN 5 ELSE CASE WHEN ([ADS].[Feature_2] < 0.7988642454147339) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman2 AS [ADS]), 
[DT_node_data_4] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 6.826356410980225 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 21.607534408569336 AS [Estimator] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 22.628299713134766 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 49.021934509277344 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 73.65652465820312 AS [Estimator]) AS [Values]), 
[DT_Output_4] AS 
(SELECT [DT_node_lookup_4].[KEY] AS [KEY], [DT_node_lookup_4].node_id_2 AS node_id_2, [DT_node_data_4].node_id AS node_id, [DT_node_data_4].feature AS feature, [DT_node_data_4].threshold AS threshold, [DT_node_data_4].depth AS depth, [DT_node_data_4].parent_id AS parent_id, [DT_node_data_4].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_4] LEFT OUTER JOIN [DT_node_data_4] ON [DT_node_lookup_4].node_id_2 = [DT_node_data_4].node_id), 
[XGB_Tree_4] AS 
(SELECT [DT_Output_4].[KEY] AS [KEY], [DT_Output_4].[Estimator] AS [Estimator] 
FROM [DT_Output_4]), 
[DT_node_lookup_5] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] < 0.5361224412918091) THEN CASE WHEN ([ADS].[Feature_1] < 897.042724609375) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_1] < 541.9518432617188) THEN 5 ELSE CASE WHEN ([ADS].[Feature_1] < 1191.3021240234375) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman2 AS [ADS]), 
[DT_node_data_5] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 5.80258321762085 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 19.919614791870117 AS [Estimator] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 10.882296562194824 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 40.92027282714844 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 65.1378402709961 AS [Estimator]) AS [Values]), 
[DT_Output_5] AS 
(SELECT [DT_node_lookup_5].[KEY] AS [KEY], [DT_node_lookup_5].node_id_2 AS node_id_2, [DT_node_data_5].node_id AS node_id, [DT_node_data_5].feature AS feature, [DT_node_data_5].threshold AS threshold, [DT_node_data_5].depth AS depth, [DT_node_data_5].parent_id AS parent_id, [DT_node_data_5].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_5] LEFT OUTER JOIN [DT_node_data_5] ON [DT_node_lookup_5].node_id_2 = [DT_node_data_5].node_id), 
[XGB_Tree_5] AS 
(SELECT [DT_Output_5].[KEY] AS [KEY], [DT_Output_5].[Estimator] AS [Estimator] 
FROM [DT_Output_5]), 
[DT_node_lookup_6] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] < 0.4144279360771179) THEN CASE WHEN ([ADS].[Feature_2] < 0.1157732754945755) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_1] < 541.9518432617188) THEN 5 ELSE CASE WHEN ([ADS].[Feature_1] < 1191.3021240234375) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman2 AS [ADS]), 
[DT_node_data_6] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 1.5899327993392944 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 12.174163818359375 AS [Estimator] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 9.440058708190918 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 36.46533203125 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 57.04753494262695 AS [Estimator]) AS [Values]), 
[DT_Output_6] AS 
(SELECT [DT_node_lookup_6].[KEY] AS [KEY], [DT_node_lookup_6].node_id_2 AS node_id_2, [DT_node_data_6].node_id AS node_id, [DT_node_data_6].feature AS feature, [DT_node_data_6].threshold AS threshold, [DT_node_data_6].depth AS depth, [DT_node_data_6].parent_id AS parent_id, [DT_node_data_6].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_6] LEFT OUTER JOIN [DT_node_data_6] ON [DT_node_lookup_6].node_id_2 = [DT_node_data_6].node_id), 
[XGB_Tree_6] AS 
(SELECT [DT_Output_6].[KEY] AS [KEY], [DT_Output_6].[Estimator] AS [Estimator] 
FROM [DT_Output_6]), 
[DT_node_lookup_7] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] < 0.6867678761482239) THEN CASE WHEN ([ADS].[Feature_2] < 0.4144279360771179) THEN CASE WHEN ([ADS].[Feature_2] < 0.1157732754945755) THEN 7 ELSE 8 END ELSE CASE WHEN ([ADS].[Feature_1] < 943.8363037109375) THEN 9 ELSE 10 END END ELSE CASE WHEN ([ADS].[Feature_1] < 921.3046875) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman2 AS [ADS]), 
[DT_node_data_7] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 20.551504135131836 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 53.802059173583984 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 1.445393443107605 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 11.024381637573242 AS [Estimator] UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 11.313101768493652 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 32.20111846923828 AS [Estimator]) AS [Values]), 
[DT_Output_7] AS 
(SELECT [DT_node_lookup_7].[KEY] AS [KEY], [DT_node_lookup_7].node_id_2 AS node_id_2, [DT_node_data_7].node_id AS node_id, [DT_node_data_7].feature AS feature, [DT_node_data_7].threshold AS threshold, [DT_node_data_7].depth AS depth, [DT_node_data_7].parent_id AS parent_id, [DT_node_data_7].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_7] LEFT OUTER JOIN [DT_node_data_7] ON [DT_node_lookup_7].node_id_2 = [DT_node_data_7].node_id), 
[XGB_Tree_7] AS 
(SELECT [DT_Output_7].[KEY] AS [KEY], [DT_Output_7].[Estimator] AS [Estimator] 
FROM [DT_Output_7]), 
[DT_node_lookup_8] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] < 0.792053759098053) THEN CASE WHEN ([ADS].[Feature_1] < 784.8369140625) THEN CASE WHEN ([ADS].[Feature_1] < 476.31121826171875) THEN 5 ELSE 6 END ELSE CASE WHEN ([ADS].[Feature_2] < 0.288340300321579) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM freidman2 AS [ADS]), 
[DT_node_data_8] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 43.654998779296875 AS [Estimator] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 1.0012569427490234 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 9.976913452148438 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 6.890918731689453 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 29.832544326782227 AS [Estimator]) AS [Values]), 
[DT_Output_8] AS 
(SELECT [DT_node_lookup_8].[KEY] AS [KEY], [DT_node_lookup_8].node_id_2 AS node_id_2, [DT_node_data_8].node_id AS node_id, [DT_node_data_8].feature AS feature, [DT_node_data_8].threshold AS threshold, [DT_node_data_8].depth AS depth, [DT_node_data_8].parent_id AS parent_id, [DT_node_data_8].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_8] LEFT OUTER JOIN [DT_node_data_8] ON [DT_node_lookup_8].node_id_2 = [DT_node_data_8].node_id), 
[XGB_Tree_8] AS 
(SELECT [DT_Output_8].[KEY] AS [KEY], [DT_Output_8].[Estimator] AS [Estimator] 
FROM [DT_Output_8]), 
[DT_node_lookup_9] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_1] < 821.2744140625) THEN CASE WHEN ([ADS].[Feature_1] < 329.4079284667969) THEN 3 ELSE CASE WHEN ([ADS].[Feature_2] < 0.3653184175491333) THEN 7 ELSE 8 END END ELSE CASE WHEN ([ADS].[Feature_2] < 0.6275076270103455) THEN CASE WHEN ([ADS].[Feature_2] < 0.25638625025749207) THEN 9 ELSE 10 END ELSE CASE WHEN ([ADS].[Feature_1] < 1072.6767578125) THEN 11 ELSE 12 END END END AS node_id_2 
FROM freidman2 AS [ADS]), 
[DT_node_data_9] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, -0.025147248059511185 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 3.8255436420440674 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 15.561128616333008 AS [Estimator] UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 4.447967052459717 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 22.06629753112793 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 29.23740005493164 AS [Estimator] UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 48.71183395385742 AS [Estimator]) AS [Values]), 
[DT_Output_9] AS 
(SELECT [DT_node_lookup_9].[KEY] AS [KEY], [DT_node_lookup_9].node_id_2 AS node_id_2, [DT_node_data_9].node_id AS node_id, [DT_node_data_9].feature AS feature, [DT_node_data_9].threshold AS threshold, [DT_node_data_9].depth AS depth, [DT_node_data_9].parent_id AS parent_id, [DT_node_data_9].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_9] LEFT OUTER JOIN [DT_node_data_9] ON [DT_node_lookup_9].node_id_2 = [DT_node_data_9].node_id), 
[XGB_Tree_9] AS 
(SELECT [DT_Output_9].[KEY] AS [KEY], [DT_Output_9].[Estimator] AS [Estimator] 
FROM [DT_Output_9]), 
[Score_Union_CTE] AS 
(SELECT ensemble_score_union.[KEY] AS [KEY], ensemble_score_union.[Estimator] AS [Estimator] 
FROM (SELECT [XGB_Tree_0].[KEY] AS [KEY], [XGB_Tree_0].[Estimator] AS [Estimator] 
FROM [XGB_Tree_0] UNION ALL SELECT [XGB_Tree_1].[KEY] AS [KEY], [XGB_Tree_1].[Estimator] AS [Estimator] 
FROM [XGB_Tree_1] UNION ALL SELECT [XGB_Tree_2].[KEY] AS [KEY], [XGB_Tree_2].[Estimator] AS [Estimator] 
FROM [XGB_Tree_2] UNION ALL SELECT [XGB_Tree_3].[KEY] AS [KEY], [XGB_Tree_3].[Estimator] AS [Estimator] 
FROM [XGB_Tree_3] UNION ALL SELECT [XGB_Tree_4].[KEY] AS [KEY], [XGB_Tree_4].[Estimator] AS [Estimator] 
FROM [XGB_Tree_4] UNION ALL SELECT [XGB_Tree_5].[KEY] AS [KEY], [XGB_Tree_5].[Estimator] AS [Estimator] 
FROM [XGB_Tree_5] UNION ALL SELECT [XGB_Tree_6].[KEY] AS [KEY], [XGB_Tree_6].[Estimator] AS [Estimator] 
FROM [XGB_Tree_6] UNION ALL SELECT [XGB_Tree_7].[KEY] AS [KEY], [XGB_Tree_7].[Estimator] AS [Estimator] 
FROM [XGB_Tree_7] UNION ALL SELECT [XGB_Tree_8].[KEY] AS [KEY], [XGB_Tree_8].[Estimator] AS [Estimator] 
FROM [XGB_Tree_8] UNION ALL SELECT [XGB_Tree_9].[KEY] AS [KEY], [XGB_Tree_9].[Estimator] AS [Estimator] 
FROM [XGB_Tree_9]) AS ensemble_score_union), 
[XGB_Sum_Scores] AS 
(SELECT [T].[KEY] AS [KEY], [T].[Estimator] AS [Estimator] 
FROM (SELECT [Score_Union_CTE].[KEY] AS [KEY], sum([Score_Union_CTE].[Estimator]) AS [Estimator] 
FROM [Score_Union_CTE] GROUP BY [Score_Union_CTE].[KEY]) AS [T])
 SELECT [XGB_Sum_Scores].[KEY] AS [KEY], [XGB_Sum_Scores].[Estimator] + 0.5 AS [Estimator] 
FROM [XGB_Sum_Scores]