-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 3.36885653465 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 12.1138613861 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 10.9836138614 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.0717821782178 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN 0.554115346535 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 6.29914851485 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 67.8504950495 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 3.81984207921 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 9.55940594059 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 405.801980198 ELSE [ADS].[Feature_9] END AS impter_11, CASE WHEN ([ADS].[Feature_10] IS NULL) THEN 18.4091584158 ELSE [ADS].[Feature_10] END AS impter_12, CASE WHEN ([ADS].[Feature_11] IS NULL) THEN 358.379727723 ELSE [ADS].[Feature_11] END AS impter_13, CASE WHEN ([ADS].[Feature_12] IS NULL) THEN 12.6265841584 ELSE [ADS].[Feature_12] END AS impter_14 
FROM boston AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 3.36885653465) / 7.99352680953 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - 12.1138613861) / 24.187656535 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 10.9836138614) / 6.81774724774 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - 0.0717821782178) / 0.258126901171 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - 0.554115346535) / 0.118008097608 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - 6.29914851485) / 0.7060417398 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 67.8504950495) / 28.1074031817 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - 3.81984207921) / 2.09337269027 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - 9.55940594059) / 8.72880378338 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - 405.801980198) / 169.785859293 AS scaler_11, (CAST([ADS_imp_1_OUT].impter_12 AS FLOAT) - 18.4091584158) / 2.16679264833 AS scaler_12, (CAST([ADS_imp_1_OUT].impter_13 AS FLOAT) - 358.379727723) / 90.6469162434 AS scaler_13, (CAST([ADS_imp_1_OUT].impter_14 AS FLOAT) - 12.6265841584) / 7.16793832404 AS scaler_14 
FROM [ADS_imp_1_OUT]), 
[DT_node_lookup] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 1.0075204372406006) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_14 <= 0.3004233241081238) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 0.3439619541168213) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_6 <= 0.4142482876777649) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 1.611592411994934) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 0.7378552556037903) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 0.7378552556037903) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 170 AS count, 3 AS depth, 2 AS parent_id, -0.8483721607454837 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 57 AS count, 3 AS depth, 2 AS parent_id, 5.778934340802502 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 47 AS count, 3 AS depth, 5 AS parent_id, -4.564066779018324 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 80 AS count, 3 AS depth, 5 AS parent_id, -9.700210396039603 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 3 AS depth, 9 AS parent_id, 11.0210396039604 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 9 AS parent_id, -3.3122937293729344 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 25 AS count, 3 AS depth, 12 AS parent_id, 23.381039603960392 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 12 AS parent_id, -0.6789603960396029 AS [Estimator]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Estimator] AS [Estimator] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id), 
[GB_Tree_0_0] AS 
(SELECT [DT_Output].[KEY] AS [KEY], [DT_Output].[Estimator] AS [Estimator] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 0.7447880506515503) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_14 <= 0.30391108989715576) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_9 <= -1.1631908416748047) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= 0.30187469720840454) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 1.611592411994934) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_6 <= 0.8887920379638672) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -0.07839112728834152) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data_1] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, 21.815194157496244 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 204 AS count, 3 AS depth, 2 AS parent_id, -0.2396463855716492 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 64 AS count, 3 AS depth, 5 AS parent_id, -4.805447210491492 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 60 AS count, 3 AS depth, 5 AS parent_id, -9.581208416719333 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 43 AS count, 3 AS depth, 9 AS parent_id, 7.94163458537708 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 9 AS parent_id, -7.634800467546751 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 25 AS count, 3 AS depth, 12 AS parent_id, 21.04293564356436 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 12 AS parent_id, -0.6110643564356408 AS [Estimator]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].node_id AS node_id, [DT_node_data_1].feature AS feature, [DT_node_data_1].threshold AS threshold, [DT_node_data_1].count AS count, [DT_node_data_1].depth AS depth, [DT_node_data_1].parent_id AS parent_id, [DT_node_data_1].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].node_id), 
[GB_Tree_1_0] AS 
(SELECT [DT_Output_1].[KEY] AS [KEY], [DT_Output_1].[Estimator] AS [Estimator] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_14 <= -0.4048003852367401) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 1.1923537254333496) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_9 <= -1.1153733730316162) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 1.611592411994934) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_14 <= 1.0077396631240845) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_13 <= -2.0305681228637695) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_6 <= 0.4142482876777649) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data_2] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, 25.103447187567056 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 125 AS count, 3 AS depth, 2 AS parent_id, 2.484205273659576 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, 5 AS parent_id, 10.139057899312366 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, 5 AS parent_id, 18.18908054074639 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, 9 AS parent_id, -7.359879756146922 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 160 AS count, 3 AS depth, 9 AS parent_id, -2.4218652961991904 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 3 AS depth, 12 AS parent_id, -4.342721902787801 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 43 AS count, 3 AS depth, 12 AS parent_id, -9.80502580423983 AS [Estimator]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].node_id AS node_id, [DT_node_data_2].feature AS feature, [DT_node_data_2].threshold AS threshold, [DT_node_data_2].count AS count, [DT_node_data_2].depth AS depth, [DT_node_data_2].parent_id AS parent_id, [DT_node_data_2].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].node_id), 
[GB_Tree_2_0] AS 
(SELECT [DT_Output_2].[KEY] AS [KEY], [DT_Output_2].[Estimator] AS [Estimator] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_14 <= -0.6642892360687256) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 1.611592411994934) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 0.3439619541168213) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_13 <= 0.03911078721284866) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_14 <= 0.30391108989715576) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_9 <= -1.2385239601135254) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= 0.30187469720840454) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data_3] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 40 AS count, 3 AS depth, 2 AS parent_id, 0.9564209312261512 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 60 AS count, 3 AS depth, 2 AS parent_id, 6.484731479394312 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 5 AS parent_id, -2.3688659748667185 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 25 AS count, 3 AS depth, 5 AS parent_id, 17.119734025133283 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, 22.814012685528617 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 149 AS count, 3 AS depth, 9 AS parent_id, -1.1245083937503437 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 64 AS count, 3 AS depth, 12 AS parent_id, -3.8619717533611166 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 63 AS count, 3 AS depth, 12 AS parent_id, -7.680560208782768 AS [Estimator]) AS [Values]), 
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
 SELECT [GradBoost_Sum_Scores].[KEY] AS [KEY], 22.578960396 + 0.1 * [GradBoost_Sum_Scores].[Estimator] AS [Estimator] 
FROM [GradBoost_Sum_Scores]