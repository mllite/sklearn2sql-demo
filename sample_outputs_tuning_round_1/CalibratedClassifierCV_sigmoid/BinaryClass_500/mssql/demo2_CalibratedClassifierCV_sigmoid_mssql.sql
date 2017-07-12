-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_387] <= 0.011339515447616577) THEN 1 ELSE CASE WHEN ([ADS].[Feature_131] <= -0.6738607883453369) THEN 3 ELSE 4 END END AS node_id_2 
FROM [BinaryClass_500] AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Proba_0] AS [Proba_0], [Values].[LogProba_0] AS [LogProba_0], [Values].[Proba_1] AS [Proba_1], [Values].[LogProba_1] AS [LogProba_1], [Values].[Decision] AS [Decision], [Values].[DecisionProba] AS [DecisionProba] 
FROM (SELECT 0 AS node_id, 'Feature_387' AS feature, 0.011339515447616577 AS threshold, 18 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3333333333333333 AS [Proba_0], -1.09861228867 AS [LogProba_0], 0.6666666666666666 AS [Proba_1], -0.405465108108 AS [LogProba_1], 1 AS [Decision], 0.666666666667 AS [DecisionProba] UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 1 AS depth, 0 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 1 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 2 AS node_id, 'Feature_131' AS feature, -0.6738607883453369 AS threshold, 8 AS count, 1 AS depth, 0 AS parent_id, 0.75 AS [Proba_0], -0.287682072452 AS [LogProba_0], 0.25 AS [Proba_1], -1.38629436112 AS [LogProba_1], 0 AS [Decision], 0.75 AS [DecisionProba] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 2 AS depth, 2 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 1 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 2 AS depth, 2 AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0 AS [Decision], 1.0 AS [DecisionProba]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Proba_0] AS [Proba_0], [DT_node_data].[LogProba_0] AS [LogProba_0], [DT_node_data].[Proba_1] AS [Proba_1], [DT_node_data].[LogProba_1] AS [LogProba_1], [DT_node_data].[Decision] AS [Decision], [DT_node_data].[DecisionProba] AS [DecisionProba] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id), 
calibration_base_estimator_0 AS 
(SELECT [DT_Output].[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], [DT_Output].[Proba_0] AS [Proba_0], [DT_Output].[Proba_1] AS [Proba_1], [DT_Output].[LogProba_0] AS [LogProba_0], [DT_Output].[LogProba_1] AS [LogProba_1], CAST(NULL AS INTEGER) AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba], coalesce(CAST(NULL AS FLOAT), [DT_Output].[Proba_0]) AS [ScoreOrProba_0], coalesce(CAST(NULL AS FLOAT), [DT_Output].[Proba_1]) AS [ScoreOrProba_1] 
FROM [DT_Output]), 
sigmoid_calibration_0 AS 
(SELECT calibration_base_estimator_0.[KEY] AS [KEY], 1.0 / (1.0 + exp(1.3263965402 * calibration_base_estimator_0.[ScoreOrProba_1] + -1.79175967179)) AS [Proba_1], 1.0 - 1.0 / (1.0 + exp(1.3263965402 * calibration_base_estimator_0.[ScoreOrProba_1] + -1.79175967179)) AS [Proba_0] 
FROM calibration_base_estimator_0), 
[Normalized_Probas] AS 
(SELECT sigmoid_calibration_0.[KEY] AS [KEY], sigmoid_calibration_0.[Proba_1] / (sigmoid_calibration_0.[Proba_0] + sigmoid_calibration_0.[Proba_1]) AS [Proba_1], sigmoid_calibration_0.[Proba_0] / (sigmoid_calibration_0.[Proba_0] + sigmoid_calibration_0.[Proba_1]) AS [Proba_0] 
FROM sigmoid_calibration_0), 
[DT_node_lookup_1] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_244] <= 0.03440605849027634) THEN CASE WHEN ([ADS].[Feature_487] <= 0.8958919644355774) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM [BinaryClass_500] AS [ADS]), 
[DT_node_data_1] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Proba_0] AS [Proba_0], [Values].[LogProba_0] AS [LogProba_0], [Values].[Proba_1] AS [Proba_1], [Values].[LogProba_1] AS [LogProba_1], [Values].[Decision] AS [Decision], [Values].[DecisionProba] AS [DecisionProba] 
FROM (SELECT 0 AS node_id, 'Feature_244' AS feature, 0.03440605849027634 AS threshold, 19 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3157894736842105 AS [Proba_0], -1.15267950994 AS [LogProba_0], 0.6842105263157895 AS [Proba_1], -0.379489621705 AS [LogProba_1], 1 AS [Decision], 0.684210526316 AS [DecisionProba] UNION ALL SELECT 1 AS node_id, 'Feature_487' AS feature, 0.8958919644355774 AS threshold, 7 AS count, 1 AS depth, 0 AS parent_id, 0.8571428571428571 AS [Proba_0], -0.154150679827 AS [LogProba_0], 0.14285714285714285 AS [Proba_1], -1.94591014906 AS [LogProba_1], 0 AS [Decision], 0.857142857143 AS [DecisionProba] UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 2 AS depth, 1 AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 1 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 1 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 1 AS depth, 0 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 1 AS [Decision], 1.0 AS [DecisionProba]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].node_id AS node_id, [DT_node_data_1].feature AS feature, [DT_node_data_1].threshold AS threshold, [DT_node_data_1].count AS count, [DT_node_data_1].depth AS depth, [DT_node_data_1].parent_id AS parent_id, [DT_node_data_1].[Proba_0] AS [Proba_0], [DT_node_data_1].[LogProba_0] AS [LogProba_0], [DT_node_data_1].[Proba_1] AS [Proba_1], [DT_node_data_1].[LogProba_1] AS [LogProba_1], [DT_node_data_1].[Decision] AS [Decision], [DT_node_data_1].[DecisionProba] AS [DecisionProba] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].node_id), 
calibration_base_estimator_1 AS 
(SELECT [DT_Output_1].[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], [DT_Output_1].[Proba_0] AS [Proba_0], [DT_Output_1].[Proba_1] AS [Proba_1], [DT_Output_1].[LogProba_0] AS [LogProba_0], [DT_Output_1].[LogProba_1] AS [LogProba_1], CAST(NULL AS INTEGER) AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba], coalesce(CAST(NULL AS FLOAT), [DT_Output_1].[Proba_0]) AS [ScoreOrProba_0], coalesce(CAST(NULL AS FLOAT), [DT_Output_1].[Proba_1]) AS [ScoreOrProba_1] 
FROM [DT_Output_1]), 
sigmoid_calibration_1 AS 
(SELECT calibration_base_estimator_1.[KEY] AS [KEY], 1.0 / (1.0 + exp(8.34045514236e-07 * calibration_base_estimator_1.[ScoreOrProba_1] + -0.570543525324)) AS [Proba_1], 1.0 - 1.0 / (1.0 + exp(8.34045514236e-07 * calibration_base_estimator_1.[ScoreOrProba_1] + -0.570543525324)) AS [Proba_0] 
FROM calibration_base_estimator_1), 
[Normalized_Probas_1] AS 
(SELECT sigmoid_calibration_1.[KEY] AS [KEY], sigmoid_calibration_1.[Proba_1] / (sigmoid_calibration_1.[Proba_0] + sigmoid_calibration_1.[Proba_1]) AS [Proba_1], sigmoid_calibration_1.[Proba_0] / (sigmoid_calibration_1.[Proba_0] + sigmoid_calibration_1.[Proba_1]) AS [Proba_0] 
FROM sigmoid_calibration_1), 
[DT_node_lookup_2] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_297] <= 1.1252272129058838) THEN 1 ELSE 2 END AS node_id_2 
FROM [BinaryClass_500] AS [ADS]), 
[DT_node_data_2] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Proba_0] AS [Proba_0], [Values].[LogProba_0] AS [LogProba_0], [Values].[Proba_1] AS [Proba_1], [Values].[LogProba_1] AS [LogProba_1], [Values].[Decision] AS [Decision], [Values].[DecisionProba] AS [DecisionProba] 
FROM (SELECT 0 AS node_id, 'Feature_297' AS feature, 1.1252272129058838 AS threshold, 19 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3157894736842105 AS [Proba_0], -1.15267950994 AS [LogProba_0], 0.6842105263157895 AS [Proba_1], -0.379489621705 AS [LogProba_1], 1 AS [Decision], 0.684210526316 AS [DecisionProba] UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 1 AS depth, 0 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 1 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 1 AS depth, 0 AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0 AS [Decision], 1.0 AS [DecisionProba]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].node_id AS node_id, [DT_node_data_2].feature AS feature, [DT_node_data_2].threshold AS threshold, [DT_node_data_2].count AS count, [DT_node_data_2].depth AS depth, [DT_node_data_2].parent_id AS parent_id, [DT_node_data_2].[Proba_0] AS [Proba_0], [DT_node_data_2].[LogProba_0] AS [LogProba_0], [DT_node_data_2].[Proba_1] AS [Proba_1], [DT_node_data_2].[LogProba_1] AS [LogProba_1], [DT_node_data_2].[Decision] AS [Decision], [DT_node_data_2].[DecisionProba] AS [DecisionProba] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].node_id), 
calibration_base_estimator_2 AS 
(SELECT [DT_Output_2].[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], [DT_Output_2].[Proba_0] AS [Proba_0], [DT_Output_2].[Proba_1] AS [Proba_1], [DT_Output_2].[LogProba_0] AS [LogProba_0], [DT_Output_2].[LogProba_1] AS [LogProba_1], CAST(NULL AS INTEGER) AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba], coalesce(CAST(NULL AS FLOAT), [DT_Output_2].[Proba_0]) AS [ScoreOrProba_0], coalesce(CAST(NULL AS FLOAT), [DT_Output_2].[Proba_1]) AS [ScoreOrProba_1] 
FROM [DT_Output_2]), 
sigmoid_calibration_2 AS 
(SELECT calibration_base_estimator_2.[KEY] AS [KEY], 1.0 / (1.0 + exp(-0.621406194492 * calibration_base_estimator_2.[ScoreOrProba_1] + -0.167052221837)) AS [Proba_1], 1.0 - 1.0 / (1.0 + exp(-0.621406194492 * calibration_base_estimator_2.[ScoreOrProba_1] + -0.167052221837)) AS [Proba_0] 
FROM calibration_base_estimator_2), 
[Normalized_Probas_2] AS 
(SELECT sigmoid_calibration_2.[KEY] AS [KEY], sigmoid_calibration_2.[Proba_1] / (sigmoid_calibration_2.[Proba_0] + sigmoid_calibration_2.[Proba_1]) AS [Proba_1], sigmoid_calibration_2.[Proba_0] / (sigmoid_calibration_2.[Proba_0] + sigmoid_calibration_2.[Proba_1]) AS [Proba_0] 
FROM sigmoid_calibration_2), 
[DT_node_lookup_3] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_356] <= 0.3198471665382385) THEN 1 ELSE CASE WHEN ([ADS].[Feature_296] <= -0.1586720198392868) THEN 3 ELSE 4 END END AS node_id_2 
FROM [BinaryClass_500] AS [ADS]), 
[DT_node_data_3] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Proba_0] AS [Proba_0], [Values].[LogProba_0] AS [LogProba_0], [Values].[Proba_1] AS [Proba_1], [Values].[LogProba_1] AS [LogProba_1], [Values].[Decision] AS [Decision], [Values].[DecisionProba] AS [DecisionProba] 
FROM (SELECT 0 AS node_id, 'Feature_356' AS feature, 0.3198471665382385 AS threshold, 19 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3157894736842105 AS [Proba_0], -1.15267950994 AS [LogProba_0], 0.6842105263157895 AS [Proba_1], -0.379489621705 AS [LogProba_1], 1 AS [Decision], 0.684210526316 AS [DecisionProba] UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 1 AS depth, 0 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 1 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 2 AS node_id, 'Feature_296' AS feature, -0.1586720198392868 AS threshold, 8 AS count, 1 AS depth, 0 AS parent_id, 0.75 AS [Proba_0], -0.287682072452 AS [LogProba_0], 0.25 AS [Proba_1], -1.38629436112 AS [LogProba_1], 0 AS [Decision], 0.75 AS [DecisionProba] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 2 AS depth, 2 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 1 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 2 AS depth, 2 AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0 AS [Decision], 1.0 AS [DecisionProba]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].node_id AS node_id, [DT_node_data_3].feature AS feature, [DT_node_data_3].threshold AS threshold, [DT_node_data_3].count AS count, [DT_node_data_3].depth AS depth, [DT_node_data_3].parent_id AS parent_id, [DT_node_data_3].[Proba_0] AS [Proba_0], [DT_node_data_3].[LogProba_0] AS [LogProba_0], [DT_node_data_3].[Proba_1] AS [Proba_1], [DT_node_data_3].[LogProba_1] AS [LogProba_1], [DT_node_data_3].[Decision] AS [Decision], [DT_node_data_3].[DecisionProba] AS [DecisionProba] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].node_id), 
calibration_base_estimator_3 AS 
(SELECT [DT_Output_3].[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], [DT_Output_3].[Proba_0] AS [Proba_0], [DT_Output_3].[Proba_1] AS [Proba_1], [DT_Output_3].[LogProba_0] AS [LogProba_0], [DT_Output_3].[LogProba_1] AS [LogProba_1], CAST(NULL AS INTEGER) AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba], coalesce(CAST(NULL AS FLOAT), [DT_Output_3].[Proba_0]) AS [ScoreOrProba_0], coalesce(CAST(NULL AS FLOAT), [DT_Output_3].[Proba_1]) AS [ScoreOrProba_1] 
FROM [DT_Output_3]), 
sigmoid_calibration_3 AS 
(SELECT calibration_base_estimator_3.[KEY] AS [KEY], 1.0 / (1.0 + exp(1.20397539848 * calibration_base_estimator_3.[ScoreOrProba_1] + -1.60943989711)) AS [Proba_1], 1.0 - 1.0 / (1.0 + exp(1.20397539848 * calibration_base_estimator_3.[ScoreOrProba_1] + -1.60943989711)) AS [Proba_0] 
FROM calibration_base_estimator_3), 
[Normalized_Probas_3] AS 
(SELECT sigmoid_calibration_3.[KEY] AS [KEY], sigmoid_calibration_3.[Proba_1] / (sigmoid_calibration_3.[Proba_0] + sigmoid_calibration_3.[Proba_1]) AS [Proba_1], sigmoid_calibration_3.[Proba_0] / (sigmoid_calibration_3.[Proba_0] + sigmoid_calibration_3.[Proba_1]) AS [Proba_0] 
FROM sigmoid_calibration_3), 
[Score_Union_CTE] AS 
(SELECT ensemble_score_union.[KEY] AS [KEY], ensemble_score_union.[Proba_1] AS [Proba_1], ensemble_score_union.[Proba_0] AS [Proba_0] 
FROM (SELECT [Normalized_Probas].[KEY] AS [KEY], [Normalized_Probas].[Proba_1] AS [Proba_1], [Normalized_Probas].[Proba_0] AS [Proba_0] 
FROM [Normalized_Probas] UNION ALL SELECT [Normalized_Probas_1].[KEY] AS [KEY], [Normalized_Probas_1].[Proba_1] AS [Proba_1], [Normalized_Probas_1].[Proba_0] AS [Proba_0] 
FROM [Normalized_Probas_1] UNION ALL SELECT [Normalized_Probas_2].[KEY] AS [KEY], [Normalized_Probas_2].[Proba_1] AS [Proba_1], [Normalized_Probas_2].[Proba_0] AS [Proba_0] 
FROM [Normalized_Probas_2] UNION ALL SELECT [Normalized_Probas_3].[KEY] AS [KEY], [Normalized_Probas_3].[Proba_1] AS [Proba_1], [Normalized_Probas_3].[Proba_0] AS [Proba_0] 
FROM [Normalized_Probas_3]) AS ensemble_score_union), 
[Calibrate_AVG_Proba] AS 
(SELECT [T].[KEY] AS [KEY], [T].[Proba_1] AS [Proba_1], [T].[Proba_0] AS [Proba_0] 
FROM (SELECT [Score_Union_CTE].[KEY] AS [KEY], avg([Score_Union_CTE].[Proba_1]) AS [Proba_1], avg([Score_Union_CTE].[Proba_0]) AS [Proba_0] 
FROM [Score_Union_CTE] GROUP BY [Score_Union_CTE].[KEY]) AS [T]), 
orig_cte AS 
(SELECT [Calibrate_AVG_Proba].[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], [Calibrate_AVG_Proba].[Proba_0] AS [Proba_0], [Calibrate_AVG_Proba].[Proba_1] AS [Proba_1], CAST(NULL AS FLOAT) AS [LogProba_0], CAST(NULL AS FLOAT) AS [LogProba_1], CAST(NULL AS INTEGER) AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba] 
FROM [Calibrate_AVG_Proba]), 
score_class_union AS 
(SELECT scu.[KEY_u] AS [KEY_u], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY_u], 0 AS class, orig_cte.[LogProba_0] AS [LogProba], orig_cte.[Proba_0] AS [Proba], orig_cte.[Score_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 1 AS class, orig_cte.[LogProba_1] AS [LogProba], orig_cte.[Proba_1] AS [Proba], orig_cte.[Score_1] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_0] AS [Score_0], orig_cte.[Score_1] AS [Score_1], orig_cte.[Proba_0] AS [Proba_0], orig_cte.[Proba_1] AS [Proba_1], orig_cte.[LogProba_0] AS [LogProba_0], orig_cte.[LogProba_1] AS [LogProba_1], orig_cte.[Decision] AS [Decision], orig_cte.[DecisionProba] AS [DecisionProba], max_select.[KEY_m] AS [KEY_m], max_select.[max_Proba] AS [max_Proba] 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.[KEY_u] AS [KEY_m], max(score_class_union.[Proba]) AS [max_Proba] 
FROM score_class_union GROUP BY score_class_union.[KEY_u]) AS max_select ON orig_cte.[KEY] = max_select.[KEY_m]), 
union_with_max AS 
(SELECT score_class_union.[KEY_u] AS [KEY_u], score_class_union.class AS class, score_class_union.[LogProba] AS [LogProba], score_class_union.[Proba] AS [Proba], score_class_union.[Score] AS [Score], score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Proba] AS [max_Proba] 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.[KEY_u] = score_max.[KEY]), 
arg_max_cte AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Proba] AS [max_Proba], [arg_max_t_Proba].[KEY_Proba] AS [KEY_Proba], [arg_max_t_Proba].[arg_max_Proba] AS [arg_max_Proba] 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.[KEY] AS [KEY_Proba], min(union_with_max.class) AS [arg_max_Proba] 
FROM union_with_max 
WHERE union_with_max.[max_Proba] <= union_with_max.[Proba] GROUP BY union_with_max.[KEY]) AS [arg_max_t_Proba] ON score_max.[KEY] = [arg_max_t_Proba].[KEY_Proba])
 SELECT arg_max_cte.[KEY] AS [KEY], arg_max_cte.[Score_0] AS [Score_0], arg_max_cte.[Score_1] AS [Score_1], arg_max_cte.[Proba_0] AS [Proba_0], arg_max_cte.[Proba_1] AS [Proba_1], CASE WHEN (arg_max_cte.[Proba_0] IS NULL OR arg_max_cte.[Proba_0] > 0.0) THEN log(arg_max_cte.[Proba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[Proba_1] IS NULL OR arg_max_cte.[Proba_1] > 0.0) THEN log(arg_max_cte.[Proba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], arg_max_cte.[arg_max_Proba] AS [Decision], arg_max_cte.[max_Proba] AS [DecisionProba] 
FROM arg_max_cte