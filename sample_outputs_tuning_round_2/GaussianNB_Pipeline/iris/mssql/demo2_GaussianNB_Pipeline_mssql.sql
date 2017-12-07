-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 5.8475 ELSE [ADS].[Feature_0] END AS imputer_output_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 3.03666666667 ELSE [ADS].[Feature_1] END AS imputer_output_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 3.845 ELSE [ADS].[Feature_2] END AS imputer_output_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 1.245 ELSE [ADS].[Feature_3] END AS imputer_output_5 
FROM iris AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].imputer_output_2 AS FLOAT) - 5.8475) / 0.827039146595 AS scaler_output_2, (CAST([ADS_imp_1_OUT].imputer_output_3 AS FLOAT) - 3.03666666667) / 0.436259352017 AS scaler_output_3, (CAST([ADS_imp_1_OUT].imputer_output_4 AS FLOAT) - 3.845) / 1.7098172417 AS scaler_output_4, (CAST([ADS_imp_1_OUT].imputer_output_5 AS FLOAT) - 1.245) / 0.749872211336 AS scaler_output_5 
FROM [ADS_imp_1_OUT]), 
[RawScores] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [LogProba_0], CAST(NULL AS FLOAT) AS [Proba_0], -1.17657383014 + (-0.5 * 0.103972660985 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_output_2 AS FLOAT) - -1.07375877454) * (CAST([ADS_sca_2_OUT].scaler_output_2 AS FLOAT) - -1.07375877454)) / 0.176593569297) + (-0.5 * 1.61769927129 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_output_3 AS FLOAT) - 0.870008970111) * (CAST([ADS_sca_2_OUT].scaler_output_3 AS FLOAT) - 0.870008970111)) / 0.802376126717) + (-0.5 * -2.86271245298 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_output_4 AS FLOAT) - -1.37939509323) * (CAST([ADS_sca_2_OUT].scaler_output_4 AS FLOAT) - -1.37939509323)) / 0.00908991683963) + (-0.5 * -1.95408506159 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_output_5 AS FLOAT) - -1.31427798716) * (CAST([ADS_sca_2_OUT].scaler_output_5 AS FLOAT) - -1.31427798716)) / 0.0225513098555) AS [Score_0], CAST(NULL AS FLOAT) AS [LogProba_1], CAST(NULL AS FLOAT) AS [Proba_1], -1.09861228867 + (-0.5 * 0.987623428489 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_output_2 AS FLOAT) - 0.0816164510204) * (CAST([ADS_sca_2_OUT].scaler_output_2 AS FLOAT) - 0.0816164510204)) / 0.427306537061) + (-0.5 * 1.27036339827 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_output_3 AS FLOAT) - -0.634179337102) * (CAST([ADS_sca_2_OUT].scaler_output_3 AS FLOAT) - -0.634179337102)) / 0.566933272061) + (-0.5 * -0.704680569701 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_output_4 AS FLOAT) - 0.233943131608) * (CAST([ADS_sca_2_OUT].scaler_output_4 AS FLOAT) - 0.233943131608)) / 0.0786649459713) + (-0.5 * -0.747614689893 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_output_5 AS FLOAT) - 0.106684844152) * (CAST([ADS_sca_2_OUT].scaler_output_5 AS FLOAT) - 0.106684844152)) / 0.0753590122186) AS [Score_1], CAST(NULL AS FLOAT) AS [LogProba_2], CAST(NULL AS FLOAT) AS [Proba_2], -1.02629162709 + (-0.5 * 1.19133408184 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_output_2 AS FLOAT) - 0.848009688768) * (CAST([ADS_sca_2_OUT].scaler_output_2 AS FLOAT) - 0.848009688768)) / 0.523853620139) + (-0.5 * 1.18836178367 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_output_3 AS FLOAT) - -0.158678102559) * (CAST([ADS_sca_2_OUT].scaler_output_3 AS FLOAT) - -0.158678102559)) / 0.522298882699) + (-0.5 * -0.66300427308 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_output_4 AS FLOAT) - 0.969299841515) * (CAST([ADS_sca_2_OUT].scaler_output_4 AS FLOAT) - 0.969299841515)) / 0.0820126857439) + (-0.5 * -0.128229841381 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_output_5 AS FLOAT) - 1.03164864555) * (CAST([ADS_sca_2_OUT].scaler_output_5 AS FLOAT) - 1.03164864555)) / 0.140000832804) AS [Score_2] 
FROM [ADS_sca_2_OUT]), 
orig_cte AS 
(SELECT [RawScores].[KEY] AS [KEY], [RawScores].[Score_0] AS [Score_0], [RawScores].[Score_1] AS [Score_1], [RawScores].[Score_2] AS [Score_2], [RawScores].[Proba_0] AS [Proba_0], [RawScores].[Proba_1] AS [Proba_1], [RawScores].[Proba_2] AS [Proba_2], [RawScores].[LogProba_0] AS [LogProba_0], [RawScores].[LogProba_1] AS [LogProba_1], [RawScores].[LogProba_2] AS [LogProba_2], CAST(NULL AS INTEGER) AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba] 
FROM [RawScores]), 
score_class_union AS 
(SELECT scu.[KEY_u] AS [KEY_u], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY_u], 0 AS class, orig_cte.[LogProba_0] AS [LogProba], orig_cte.[Proba_0] AS [Proba], orig_cte.[Score_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 1 AS class, orig_cte.[LogProba_1] AS [LogProba], orig_cte.[Proba_1] AS [Proba], orig_cte.[Score_1] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 2 AS class, orig_cte.[LogProba_2] AS [LogProba], orig_cte.[Proba_2] AS [Proba], orig_cte.[Score_2] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_0] AS [Score_0], orig_cte.[Score_1] AS [Score_1], orig_cte.[Score_2] AS [Score_2], orig_cte.[Proba_0] AS [Proba_0], orig_cte.[Proba_1] AS [Proba_1], orig_cte.[Proba_2] AS [Proba_2], orig_cte.[LogProba_0] AS [LogProba_0], orig_cte.[LogProba_1] AS [LogProba_1], orig_cte.[LogProba_2] AS [LogProba_2], orig_cte.[Decision] AS [Decision], orig_cte.[DecisionProba] AS [DecisionProba], max_select.[KEY_m] AS [KEY_m], max_select.[max_Score] AS [max_Score] 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.[KEY_u] AS [KEY_m], max(score_class_union.[Score]) AS [max_Score] 
FROM score_class_union GROUP BY score_class_union.[KEY_u]) AS max_select ON orig_cte.[KEY] = max_select.[KEY_m]), 
score_soft_max_deltas AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Score] AS [max_Score], exp(score_max.[Score_0] - score_max.[max_Score]) AS [exp_delta_Score_0], exp(score_max.[Score_1] - score_max.[max_Score]) AS [exp_delta_Score_1], exp(score_max.[Score_2] - score_max.[max_Score]) AS [exp_delta_Score_2] 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.[KEY] AS [KEY], soft_scu.class AS class, soft_scu.[exp_delta_Score] AS [exp_delta_Score] 
FROM (SELECT score_soft_max_deltas.[KEY] AS [KEY], 0 AS class, score_soft_max_deltas.[exp_delta_Score_0] AS [exp_delta_Score] 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.[KEY] AS [KEY], 1 AS class, score_soft_max_deltas.[exp_delta_Score_1] AS [exp_delta_Score] 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.[KEY] AS [KEY], 2 AS class, score_soft_max_deltas.[exp_delta_Score_2] AS [exp_delta_Score] 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas.[KEY] AS [KEY], score_soft_max_deltas.[Score_0] AS [Score_0], score_soft_max_deltas.[Score_1] AS [Score_1], score_soft_max_deltas.[Score_2] AS [Score_2], score_soft_max_deltas.[Proba_0] AS [Proba_0], score_soft_max_deltas.[Proba_1] AS [Proba_1], score_soft_max_deltas.[Proba_2] AS [Proba_2], score_soft_max_deltas.[LogProba_0] AS [LogProba_0], score_soft_max_deltas.[LogProba_1] AS [LogProba_1], score_soft_max_deltas.[LogProba_2] AS [LogProba_2], score_soft_max_deltas.[Decision] AS [Decision], score_soft_max_deltas.[DecisionProba] AS [DecisionProba], score_soft_max_deltas.[KEY_m] AS [KEY_m], score_soft_max_deltas.[max_Score] AS [max_Score], score_soft_max_deltas.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max_deltas.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max_deltas.[exp_delta_Score_2] AS [exp_delta_Score_2], sum_exp_t.[KEY_sum] AS [KEY_sum], sum_exp_t.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore] 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft.[KEY] AS [KEY_sum], sum(score_class_union_soft.[exp_delta_Score]) AS [sum_ExpDeltaScore] 
FROM score_class_union_soft GROUP BY score_class_union_soft.[KEY]) AS sum_exp_t ON score_soft_max_deltas.[KEY] = sum_exp_t.[KEY_sum]), 
union_with_max AS 
(SELECT score_class_union.[KEY_u] AS [KEY_u], score_class_union.class AS class, score_class_union.[LogProba] AS [LogProba], score_class_union.[Proba] AS [Proba], score_class_union.[Score] AS [Score], score_soft_max.[KEY] AS [KEY], score_soft_max.[Score_0] AS [Score_0], score_soft_max.[Score_1] AS [Score_1], score_soft_max.[Score_2] AS [Score_2], score_soft_max.[Proba_0] AS [Proba_0], score_soft_max.[Proba_1] AS [Proba_1], score_soft_max.[Proba_2] AS [Proba_2], score_soft_max.[LogProba_0] AS [LogProba_0], score_soft_max.[LogProba_1] AS [LogProba_1], score_soft_max.[LogProba_2] AS [LogProba_2], score_soft_max.[Decision] AS [Decision], score_soft_max.[DecisionProba] AS [DecisionProba], score_soft_max.[KEY_m] AS [KEY_m], score_soft_max.[max_Score] AS [max_Score], score_soft_max.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max.[exp_delta_Score_2] AS [exp_delta_Score_2], score_soft_max.[KEY_sum] AS [KEY_sum], score_soft_max.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore] 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union.[KEY_u] = score_soft_max.[KEY]), 
arg_max_cte AS 
(SELECT score_soft_max.[KEY] AS [KEY], score_soft_max.[Score_0] AS [Score_0], score_soft_max.[Score_1] AS [Score_1], score_soft_max.[Score_2] AS [Score_2], score_soft_max.[Proba_0] AS [Proba_0], score_soft_max.[Proba_1] AS [Proba_1], score_soft_max.[Proba_2] AS [Proba_2], score_soft_max.[LogProba_0] AS [LogProba_0], score_soft_max.[LogProba_1] AS [LogProba_1], score_soft_max.[LogProba_2] AS [LogProba_2], score_soft_max.[Decision] AS [Decision], score_soft_max.[DecisionProba] AS [DecisionProba], score_soft_max.[KEY_m] AS [KEY_m], score_soft_max.[max_Score] AS [max_Score], score_soft_max.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max.[exp_delta_Score_2] AS [exp_delta_Score_2], score_soft_max.[KEY_sum] AS [KEY_sum], score_soft_max.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore], [arg_max_t_Score].[KEY_Score] AS [KEY_Score], [arg_max_t_Score].[arg_max_Score] AS [arg_max_Score], soft_max_comp.[KEY_softmax] AS [KEY_softmax], soft_max_comp.[SoftProba_0] AS [SoftProba_0], soft_max_comp.[SoftProba_1] AS [SoftProba_1], soft_max_comp.[SoftProba_2] AS [SoftProba_2] 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max.[KEY] AS [KEY_Score], min(union_with_max.class) AS [arg_max_Score] 
FROM union_with_max 
WHERE union_with_max.[max_Score] <= union_with_max.[Score] GROUP BY union_with_max.[KEY]) AS [arg_max_t_Score] ON score_soft_max.[KEY] = [arg_max_t_Score].[KEY_Score] LEFT OUTER JOIN (SELECT score_soft_max.[KEY] AS [KEY_softmax], score_soft_max.[exp_delta_Score_0] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_0], score_soft_max.[exp_delta_Score_1] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_1], score_soft_max.[exp_delta_Score_2] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_2] 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp.[KEY_softmax] = [arg_max_t_Score].[KEY_Score])
 SELECT arg_max_cte.[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], CAST(NULL AS FLOAT) AS [Score_2], arg_max_cte.[SoftProba_0] AS [Proba_0], arg_max_cte.[SoftProba_1] AS [Proba_1], arg_max_cte.[SoftProba_2] AS [Proba_2], CASE WHEN (arg_max_cte.[SoftProba_0] IS NULL OR arg_max_cte.[SoftProba_0] > 0.0) THEN log(arg_max_cte.[SoftProba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[SoftProba_1] IS NULL OR arg_max_cte.[SoftProba_1] > 0.0) THEN log(arg_max_cte.[SoftProba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], CASE WHEN (arg_max_cte.[SoftProba_2] IS NULL OR arg_max_cte.[SoftProba_2] > 0.0) THEN log(arg_max_cte.[SoftProba_2]) ELSE -1.79769313486231e+308 END AS [LogProba_2], arg_max_cte.[arg_max_Score] AS [Decision], CASE WHEN (arg_max_cte.[SoftProba_0] <= CASE WHEN (arg_max_cte.[SoftProba_1] <= arg_max_cte.[SoftProba_2]) THEN arg_max_cte.[SoftProba_2] ELSE arg_max_cte.[SoftProba_1] END) THEN CASE WHEN (arg_max_cte.[SoftProba_1] <= arg_max_cte.[SoftProba_2]) THEN arg_max_cte.[SoftProba_2] ELSE arg_max_cte.[SoftProba_1] END ELSE arg_max_cte.[SoftProba_0] END AS [DecisionProba] 
FROM arg_max_cte