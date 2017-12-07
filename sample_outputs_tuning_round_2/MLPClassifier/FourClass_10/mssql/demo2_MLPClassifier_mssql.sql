-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [IL] AS 
(SELECT [ADS].[KEY] AS [KEY], CAST([ADS].[Feature_0] AS FLOAT) AS [Feature_0], CAST([ADS].[Feature_1] AS FLOAT) AS [Feature_1], CAST([ADS].[Feature_2] AS FLOAT) AS [Feature_2], CAST([ADS].[Feature_3] AS FLOAT) AS [Feature_3], CAST([ADS].[Feature_4] AS FLOAT) AS [Feature_4], CAST([ADS].[Feature_5] AS FLOAT) AS [Feature_5], CAST([ADS].[Feature_6] AS FLOAT) AS [Feature_6], CAST([ADS].[Feature_7] AS FLOAT) AS [Feature_7], CAST([ADS].[Feature_8] AS FLOAT) AS [Feature_8], CAST([ADS].[Feature_9] AS FLOAT) AS [Feature_9] 
FROM [FourClass_10] AS [ADS]), 
[HL_BA_1] AS 
(SELECT [IL].[KEY] AS [KEY], -4.05786468925 * [IL].[Feature_0] + -3.18677796669 * [IL].[Feature_1] + -5.02458575277 * [IL].[Feature_2] + -5.17219531892 * [IL].[Feature_3] + -2.12314341013 * [IL].[Feature_4] + -4.15481681057 * [IL].[Feature_5] + 1.14295896288 * [IL].[Feature_6] + 2.27503930043 * [IL].[Feature_7] + 0.637783454238 * [IL].[Feature_8] + 0.476806786062 * [IL].[Feature_9] + -1.1610849911 AS [NEUR_1_1], -5.03041087237 * [IL].[Feature_0] + 1.79238496035 * [IL].[Feature_1] + 1.06560781948 * [IL].[Feature_2] + 2.14438878048 * [IL].[Feature_3] + -0.397807892451 * [IL].[Feature_4] + -0.0109150855812 * [IL].[Feature_5] + -0.779056580069 * [IL].[Feature_6] + -2.94093744366 * [IL].[Feature_7] + 1.95847461182 * [IL].[Feature_8] + 0.425254197032 * [IL].[Feature_9] + -1.145896604 AS [NEUR_1_2], -2.25331083063 * [IL].[Feature_0] + 0.882036358508 * [IL].[Feature_1] + -2.50988365039 * [IL].[Feature_2] + -1.26330531593 * [IL].[Feature_3] + -4.8444638619 * [IL].[Feature_4] + 1.27685881643 * [IL].[Feature_5] + 1.04627564296 * [IL].[Feature_6] + -2.23935513132 * [IL].[Feature_7] + -1.60276302459 * [IL].[Feature_8] + -0.540734432264 * [IL].[Feature_9] + -0.801694704799 AS [NEUR_1_3] 
FROM [IL]), 
[HL_1_relu] AS 
(SELECT [HL_BA_1].[KEY] AS [KEY], CASE WHEN ([HL_BA_1].[NEUR_1_1] >= 0.0) THEN [HL_BA_1].[NEUR_1_1] ELSE 0.0 END AS [NEUR_1_1], CASE WHEN ([HL_BA_1].[NEUR_1_2] >= 0.0) THEN [HL_BA_1].[NEUR_1_2] ELSE 0.0 END AS [NEUR_1_2], CASE WHEN ([HL_BA_1].[NEUR_1_3] >= 0.0) THEN [HL_BA_1].[NEUR_1_3] ELSE 0.0 END AS [NEUR_1_3] 
FROM [HL_BA_1]), 
[HL_BA_2] AS 
(SELECT [HL_1_relu].[KEY] AS [KEY], 0.787906984049 * [HL_1_relu].[NEUR_1_1] + 1.42229242372 * [HL_1_relu].[NEUR_1_2] + 2.33648742735 * [HL_1_relu].[NEUR_1_3] + -3.86082143495 AS [NEUR_2_1], -1.54113627303 * [HL_1_relu].[NEUR_1_1] + 1.46196554629 * [HL_1_relu].[NEUR_1_2] + -1.87604790475 * [HL_1_relu].[NEUR_1_3] + 0.203267344169 AS [NEUR_2_2], 6.66618268107 * [HL_1_relu].[NEUR_1_1] + -2.63960309572 * [HL_1_relu].[NEUR_1_2] + 0.461960884942 * [HL_1_relu].[NEUR_1_3] + -2.592748407 AS [NEUR_2_3], -0.246875239288 * [HL_1_relu].[NEUR_1_1] + -0.504709961314 * [HL_1_relu].[NEUR_1_2] + -0.40897299702 * [HL_1_relu].[NEUR_1_3] + -0.836543287123 AS [NEUR_2_4], -3.03230872488 * [HL_1_relu].[NEUR_1_1] + 2.33967538552 * [HL_1_relu].[NEUR_1_2] + -0.606322553328 * [HL_1_relu].[NEUR_1_3] + 1.5479040829 AS [NEUR_2_5] 
FROM [HL_1_relu]), 
[HL_2_relu] AS 
(SELECT [HL_BA_2].[KEY] AS [KEY], CASE WHEN ([HL_BA_2].[NEUR_2_1] >= 0.0) THEN [HL_BA_2].[NEUR_2_1] ELSE 0.0 END AS [NEUR_2_1], CASE WHEN ([HL_BA_2].[NEUR_2_2] >= 0.0) THEN [HL_BA_2].[NEUR_2_2] ELSE 0.0 END AS [NEUR_2_2], CASE WHEN ([HL_BA_2].[NEUR_2_3] >= 0.0) THEN [HL_BA_2].[NEUR_2_3] ELSE 0.0 END AS [NEUR_2_3], CASE WHEN ([HL_BA_2].[NEUR_2_4] >= 0.0) THEN [HL_BA_2].[NEUR_2_4] ELSE 0.0 END AS [NEUR_2_4], CASE WHEN ([HL_BA_2].[NEUR_2_5] >= 0.0) THEN [HL_BA_2].[NEUR_2_5] ELSE 0.0 END AS [NEUR_2_5] 
FROM [HL_BA_2]), 
[OL_BA] AS 
(SELECT [HL_2_relu].[KEY] AS [KEY], -2.22979877879 * [HL_2_relu].[NEUR_2_1] + -1.65429055872 * [HL_2_relu].[NEUR_2_2] + 2.56583100668 * [HL_2_relu].[NEUR_2_3] + 0.367436600146 * [HL_2_relu].[NEUR_2_4] + -2.27720215322 * [HL_2_relu].[NEUR_2_5] + 6.06003156443 AS [NEUR_3_1], 2.04092060963 * [HL_2_relu].[NEUR_2_1] + 1.79307710575 * [HL_2_relu].[NEUR_2_2] + -4.25253584659 * [HL_2_relu].[NEUR_2_3] + 0.410630497998 * [HL_2_relu].[NEUR_2_4] + -0.178914168927 * [HL_2_relu].[NEUR_2_5] + 0.853674595944 AS [NEUR_3_2], -2.09732794404 * [HL_2_relu].[NEUR_2_1] + -0.0204736074938 * [HL_2_relu].[NEUR_2_2] + 2.6395948872 * [HL_2_relu].[NEUR_2_3] + -0.593887952306 * [HL_2_relu].[NEUR_2_4] + 1.38044450385 * [HL_2_relu].[NEUR_2_5] + -2.98689739604 AS [NEUR_3_3], 2.25800363924 * [HL_2_relu].[NEUR_2_1] + -0.702545698544 * [HL_2_relu].[NEUR_2_2] + -1.42158866728 * [HL_2_relu].[NEUR_2_3] + -0.814044038828 * [HL_2_relu].[NEUR_2_4] + 1.3192060363 * [HL_2_relu].[NEUR_2_5] + -2.90205963609 AS [NEUR_3_4] 
FROM [HL_2_relu]), 
[OL_softmax] AS 
(SELECT [OL_BA].[KEY] AS [KEY], [OL_BA].[NEUR_3_1] AS [NEUR_3_1], [OL_BA].[NEUR_3_2] AS [NEUR_3_2], [OL_BA].[NEUR_3_3] AS [NEUR_3_3], [OL_BA].[NEUR_3_4] AS [NEUR_3_4] 
FROM [OL_BA]), 
orig_cte AS 
(SELECT [OL_softmax].[KEY] AS [KEY], [OL_softmax].[NEUR_3_1] AS [Score_0], [OL_softmax].[NEUR_3_2] AS [Score_1], [OL_softmax].[NEUR_3_3] AS [Score_2], [OL_softmax].[NEUR_3_4] AS [Score_3], CAST(NULL AS FLOAT) AS [Proba_0], CAST(NULL AS FLOAT) AS [Proba_1], CAST(NULL AS FLOAT) AS [Proba_2], CAST(NULL AS FLOAT) AS [Proba_3], CAST(NULL AS FLOAT) AS [LogProba_0], CAST(NULL AS FLOAT) AS [LogProba_1], CAST(NULL AS FLOAT) AS [LogProba_2], CAST(NULL AS FLOAT) AS [LogProba_3], CAST(NULL AS INTEGER) AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba] 
FROM [OL_softmax]), 
score_class_union AS 
(SELECT scu.[KEY_u] AS [KEY_u], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY_u], 0 AS class, orig_cte.[LogProba_0] AS [LogProba], orig_cte.[Proba_0] AS [Proba], orig_cte.[Score_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 1 AS class, orig_cte.[LogProba_1] AS [LogProba], orig_cte.[Proba_1] AS [Proba], orig_cte.[Score_1] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 2 AS class, orig_cte.[LogProba_2] AS [LogProba], orig_cte.[Proba_2] AS [Proba], orig_cte.[Score_2] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 3 AS class, orig_cte.[LogProba_3] AS [LogProba], orig_cte.[Proba_3] AS [Proba], orig_cte.[Score_3] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_0] AS [Score_0], orig_cte.[Score_1] AS [Score_1], orig_cte.[Score_2] AS [Score_2], orig_cte.[Score_3] AS [Score_3], orig_cte.[Proba_0] AS [Proba_0], orig_cte.[Proba_1] AS [Proba_1], orig_cte.[Proba_2] AS [Proba_2], orig_cte.[Proba_3] AS [Proba_3], orig_cte.[LogProba_0] AS [LogProba_0], orig_cte.[LogProba_1] AS [LogProba_1], orig_cte.[LogProba_2] AS [LogProba_2], orig_cte.[LogProba_3] AS [LogProba_3], orig_cte.[Decision] AS [Decision], orig_cte.[DecisionProba] AS [DecisionProba], max_select.[KEY_m] AS [KEY_m], max_select.[max_Score] AS [max_Score] 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.[KEY_u] AS [KEY_m], max(score_class_union.[Score]) AS [max_Score] 
FROM score_class_union GROUP BY score_class_union.[KEY_u]) AS max_select ON orig_cte.[KEY] = max_select.[KEY_m]), 
score_soft_max_deltas AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Score_3] AS [Score_3], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[Proba_3] AS [Proba_3], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[LogProba_3] AS [LogProba_3], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Score] AS [max_Score], exp(score_max.[Score_0] - score_max.[max_Score]) AS [exp_delta_Score_0], exp(score_max.[Score_1] - score_max.[max_Score]) AS [exp_delta_Score_1], exp(score_max.[Score_2] - score_max.[max_Score]) AS [exp_delta_Score_2], exp(score_max.[Score_3] - score_max.[max_Score]) AS [exp_delta_Score_3] 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.[KEY] AS [KEY], soft_scu.class AS class, soft_scu.[exp_delta_Score] AS [exp_delta_Score] 
FROM (SELECT score_soft_max_deltas.[KEY] AS [KEY], 0 AS class, score_soft_max_deltas.[exp_delta_Score_0] AS [exp_delta_Score] 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.[KEY] AS [KEY], 1 AS class, score_soft_max_deltas.[exp_delta_Score_1] AS [exp_delta_Score] 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.[KEY] AS [KEY], 2 AS class, score_soft_max_deltas.[exp_delta_Score_2] AS [exp_delta_Score] 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.[KEY] AS [KEY], 3 AS class, score_soft_max_deltas.[exp_delta_Score_3] AS [exp_delta_Score] 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas.[KEY] AS [KEY], score_soft_max_deltas.[Score_0] AS [Score_0], score_soft_max_deltas.[Score_1] AS [Score_1], score_soft_max_deltas.[Score_2] AS [Score_2], score_soft_max_deltas.[Score_3] AS [Score_3], score_soft_max_deltas.[Proba_0] AS [Proba_0], score_soft_max_deltas.[Proba_1] AS [Proba_1], score_soft_max_deltas.[Proba_2] AS [Proba_2], score_soft_max_deltas.[Proba_3] AS [Proba_3], score_soft_max_deltas.[LogProba_0] AS [LogProba_0], score_soft_max_deltas.[LogProba_1] AS [LogProba_1], score_soft_max_deltas.[LogProba_2] AS [LogProba_2], score_soft_max_deltas.[LogProba_3] AS [LogProba_3], score_soft_max_deltas.[Decision] AS [Decision], score_soft_max_deltas.[DecisionProba] AS [DecisionProba], score_soft_max_deltas.[KEY_m] AS [KEY_m], score_soft_max_deltas.[max_Score] AS [max_Score], score_soft_max_deltas.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max_deltas.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max_deltas.[exp_delta_Score_2] AS [exp_delta_Score_2], score_soft_max_deltas.[exp_delta_Score_3] AS [exp_delta_Score_3], sum_exp_t.[KEY_sum] AS [KEY_sum], sum_exp_t.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore] 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft.[KEY] AS [KEY_sum], sum(score_class_union_soft.[exp_delta_Score]) AS [sum_ExpDeltaScore] 
FROM score_class_union_soft GROUP BY score_class_union_soft.[KEY]) AS sum_exp_t ON score_soft_max_deltas.[KEY] = sum_exp_t.[KEY_sum]), 
union_with_max AS 
(SELECT score_class_union.[KEY_u] AS [KEY_u], score_class_union.class AS class, score_class_union.[LogProba] AS [LogProba], score_class_union.[Proba] AS [Proba], score_class_union.[Score] AS [Score], score_soft_max.[KEY] AS [KEY], score_soft_max.[Score_0] AS [Score_0], score_soft_max.[Score_1] AS [Score_1], score_soft_max.[Score_2] AS [Score_2], score_soft_max.[Score_3] AS [Score_3], score_soft_max.[Proba_0] AS [Proba_0], score_soft_max.[Proba_1] AS [Proba_1], score_soft_max.[Proba_2] AS [Proba_2], score_soft_max.[Proba_3] AS [Proba_3], score_soft_max.[LogProba_0] AS [LogProba_0], score_soft_max.[LogProba_1] AS [LogProba_1], score_soft_max.[LogProba_2] AS [LogProba_2], score_soft_max.[LogProba_3] AS [LogProba_3], score_soft_max.[Decision] AS [Decision], score_soft_max.[DecisionProba] AS [DecisionProba], score_soft_max.[KEY_m] AS [KEY_m], score_soft_max.[max_Score] AS [max_Score], score_soft_max.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max.[exp_delta_Score_2] AS [exp_delta_Score_2], score_soft_max.[exp_delta_Score_3] AS [exp_delta_Score_3], score_soft_max.[KEY_sum] AS [KEY_sum], score_soft_max.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore] 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union.[KEY_u] = score_soft_max.[KEY]), 
arg_max_cte AS 
(SELECT score_soft_max.[KEY] AS [KEY], score_soft_max.[Score_0] AS [Score_0], score_soft_max.[Score_1] AS [Score_1], score_soft_max.[Score_2] AS [Score_2], score_soft_max.[Score_3] AS [Score_3], score_soft_max.[Proba_0] AS [Proba_0], score_soft_max.[Proba_1] AS [Proba_1], score_soft_max.[Proba_2] AS [Proba_2], score_soft_max.[Proba_3] AS [Proba_3], score_soft_max.[LogProba_0] AS [LogProba_0], score_soft_max.[LogProba_1] AS [LogProba_1], score_soft_max.[LogProba_2] AS [LogProba_2], score_soft_max.[LogProba_3] AS [LogProba_3], score_soft_max.[Decision] AS [Decision], score_soft_max.[DecisionProba] AS [DecisionProba], score_soft_max.[KEY_m] AS [KEY_m], score_soft_max.[max_Score] AS [max_Score], score_soft_max.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max.[exp_delta_Score_2] AS [exp_delta_Score_2], score_soft_max.[exp_delta_Score_3] AS [exp_delta_Score_3], score_soft_max.[KEY_sum] AS [KEY_sum], score_soft_max.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore], [arg_max_t_Score].[KEY_Score] AS [KEY_Score], [arg_max_t_Score].[arg_max_Score] AS [arg_max_Score], soft_max_comp.[KEY_softmax] AS [KEY_softmax], soft_max_comp.[SoftProba_0] AS [SoftProba_0], soft_max_comp.[SoftProba_1] AS [SoftProba_1], soft_max_comp.[SoftProba_2] AS [SoftProba_2], soft_max_comp.[SoftProba_3] AS [SoftProba_3] 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max.[KEY] AS [KEY_Score], min(union_with_max.class) AS [arg_max_Score] 
FROM union_with_max 
WHERE union_with_max.[max_Score] <= union_with_max.[Score] GROUP BY union_with_max.[KEY]) AS [arg_max_t_Score] ON score_soft_max.[KEY] = [arg_max_t_Score].[KEY_Score] LEFT OUTER JOIN (SELECT score_soft_max.[KEY] AS [KEY_softmax], score_soft_max.[exp_delta_Score_0] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_0], score_soft_max.[exp_delta_Score_1] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_1], score_soft_max.[exp_delta_Score_2] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_2], score_soft_max.[exp_delta_Score_3] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_3] 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp.[KEY_softmax] = [arg_max_t_Score].[KEY_Score])
 SELECT arg_max_cte.[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], CAST(NULL AS FLOAT) AS [Score_2], CAST(NULL AS FLOAT) AS [Score_3], arg_max_cte.[SoftProba_0] AS [Proba_0], arg_max_cte.[SoftProba_1] AS [Proba_1], arg_max_cte.[SoftProba_2] AS [Proba_2], arg_max_cte.[SoftProba_3] AS [Proba_3], CASE WHEN (arg_max_cte.[SoftProba_0] IS NULL OR arg_max_cte.[SoftProba_0] > 0.0) THEN log(arg_max_cte.[SoftProba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[SoftProba_1] IS NULL OR arg_max_cte.[SoftProba_1] > 0.0) THEN log(arg_max_cte.[SoftProba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], CASE WHEN (arg_max_cte.[SoftProba_2] IS NULL OR arg_max_cte.[SoftProba_2] > 0.0) THEN log(arg_max_cte.[SoftProba_2]) ELSE -1.79769313486231e+308 END AS [LogProba_2], CASE WHEN (arg_max_cte.[SoftProba_3] IS NULL OR arg_max_cte.[SoftProba_3] > 0.0) THEN log(arg_max_cte.[SoftProba_3]) ELSE -1.79769313486231e+308 END AS [LogProba_3], arg_max_cte.[arg_max_Score] AS [Decision], CASE WHEN (arg_max_cte.[SoftProba_0] <= CASE WHEN (arg_max_cte.[SoftProba_1] <= CASE WHEN (arg_max_cte.[SoftProba_2] <= arg_max_cte.[SoftProba_3]) THEN arg_max_cte.[SoftProba_3] ELSE arg_max_cte.[SoftProba_2] END) THEN CASE WHEN (arg_max_cte.[SoftProba_2] <= arg_max_cte.[SoftProba_3]) THEN arg_max_cte.[SoftProba_3] ELSE arg_max_cte.[SoftProba_2] END ELSE arg_max_cte.[SoftProba_1] END) THEN CASE WHEN (arg_max_cte.[SoftProba_1] <= CASE WHEN (arg_max_cte.[SoftProba_2] <= arg_max_cte.[SoftProba_3]) THEN arg_max_cte.[SoftProba_3] ELSE arg_max_cte.[SoftProba_2] END) THEN CASE WHEN (arg_max_cte.[SoftProba_2] <= arg_max_cte.[SoftProba_3]) THEN arg_max_cte.[SoftProba_3] ELSE arg_max_cte.[SoftProba_2] END ELSE arg_max_cte.[SoftProba_1] END ELSE arg_max_cte.[SoftProba_0] END AS [DecisionProba] 
FROM arg_max_cte