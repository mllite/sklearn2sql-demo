-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.00587058434841 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 0.206310474688 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.0555958221574 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.0384701934716 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN -0.429944388318 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.204565353815 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.40838482592 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.0127764293619 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.21646556202 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN -0.052903813543 ELSE [ADS].[Feature_9] END AS impter_11 
FROM [BinaryClass_10] AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 0.00587058434841) / 1.36610141231 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - 0.206310474688) / 0.924614068395 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 0.0555958221574) / 1.27201752306 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - 0.0384701934716) / 1.11679928013 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - -0.429944388318) / 1.02812853106 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - 0.204565353815) / 1.42979903307 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 0.40838482592) / 1.06633430275 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - 0.0127764293619) / 0.54624498456 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - 0.21646556202) / 1.03979793567 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - -0.052903813543) / 1.44168001857 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
[IL] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CAST([ADS_sca_2_OUT].scaler_2 AS FLOAT) AS scaler_2, CAST([ADS_sca_2_OUT].scaler_3 AS FLOAT) AS scaler_3, CAST([ADS_sca_2_OUT].scaler_4 AS FLOAT) AS scaler_4, CAST([ADS_sca_2_OUT].scaler_5 AS FLOAT) AS scaler_5, CAST([ADS_sca_2_OUT].scaler_6 AS FLOAT) AS scaler_6, CAST([ADS_sca_2_OUT].scaler_7 AS FLOAT) AS scaler_7, CAST([ADS_sca_2_OUT].scaler_8 AS FLOAT) AS scaler_8, CAST([ADS_sca_2_OUT].scaler_9 AS FLOAT) AS scaler_9, CAST([ADS_sca_2_OUT].scaler_10 AS FLOAT) AS scaler_10, CAST([ADS_sca_2_OUT].scaler_11 AS FLOAT) AS scaler_11 
FROM [ADS_sca_2_OUT]), 
[HL_BA_1] AS 
(SELECT [IL].[KEY] AS [KEY], -1.00650396191 * [IL].scaler_2 + 0.639572299197 * [IL].scaler_3 + -2.44899276806 * [IL].scaler_4 + -0.030056313057 * [IL].scaler_5 + 0.148469611979 * [IL].scaler_6 + 1.16295361449 * [IL].scaler_7 + -1.22627444007 * [IL].scaler_8 + -0.870817140695 * [IL].scaler_9 + 1.33852639724 * [IL].scaler_10 + 0.506992759195 * [IL].scaler_11 + -0.79681839964 AS [NEUR_1_1], -0.140552999466 * [IL].scaler_2 + -0.196798555087 * [IL].scaler_3 + 2.84527382001 * [IL].scaler_4 + 0.806552136516 * [IL].scaler_5 + 0.196836836485 * [IL].scaler_6 + -0.225190338183 * [IL].scaler_7 + -0.425443801921 * [IL].scaler_8 + -1.01551706339 * [IL].scaler_9 + 0.158688704967 * [IL].scaler_10 + 0.336373141128 * [IL].scaler_11 + -0.905818141036 AS [NEUR_1_2], -1.57335264245 * [IL].scaler_2 + -0.117578180264 * [IL].scaler_3 + 1.48413734286 * [IL].scaler_4 + 0.138172623748 * [IL].scaler_5 + 1.51253901366 * [IL].scaler_6 + -0.640962685237 * [IL].scaler_7 + -2.29421744809 * [IL].scaler_8 + -2.660446659 * [IL].scaler_9 + -0.0125531645093 * [IL].scaler_10 + 2.82482389377 * [IL].scaler_11 + -0.502844433913 AS [NEUR_1_3] 
FROM [IL]), 
[HL_1_relu] AS 
(SELECT [HL_BA_1].[KEY] AS [KEY], CASE WHEN ([HL_BA_1].[NEUR_1_1] >= 0.0) THEN [HL_BA_1].[NEUR_1_1] ELSE 0.0 END AS [NEUR_1_1], CASE WHEN ([HL_BA_1].[NEUR_1_2] >= 0.0) THEN [HL_BA_1].[NEUR_1_2] ELSE 0.0 END AS [NEUR_1_2], CASE WHEN ([HL_BA_1].[NEUR_1_3] >= 0.0) THEN [HL_BA_1].[NEUR_1_3] ELSE 0.0 END AS [NEUR_1_3] 
FROM [HL_BA_1]), 
[HL_BA_2] AS 
(SELECT [HL_1_relu].[KEY] AS [KEY], -0.760027547868 * [HL_1_relu].[NEUR_1_1] + 0.0927454360165 * [HL_1_relu].[NEUR_1_2] + -0.0449545226907 * [HL_1_relu].[NEUR_1_3] + -0.423766067551 AS [NEUR_2_1], -3.63099047369 * [HL_1_relu].[NEUR_1_1] + -3.92132897812 * [HL_1_relu].[NEUR_1_2] + -1.41575014281 * [HL_1_relu].[NEUR_1_3] + 3.83757888834 AS [NEUR_2_2], 1.26299608684 * [HL_1_relu].[NEUR_1_1] + 0.0258803056005 * [HL_1_relu].[NEUR_1_2] + 0.796794959445 * [HL_1_relu].[NEUR_1_3] + -0.918870357594 AS [NEUR_2_3], 0.110847815325 * [HL_1_relu].[NEUR_1_1] + -0.503640662087 * [HL_1_relu].[NEUR_1_2] + -0.405743891918 * [HL_1_relu].[NEUR_1_3] + -0.796433042434 AS [NEUR_2_4], -0.620796951837 * [HL_1_relu].[NEUR_1_1] + 1.03045893207 * [HL_1_relu].[NEUR_1_2] + -0.541190697201 * [HL_1_relu].[NEUR_1_3] + -0.369361489558 AS [NEUR_2_5] 
FROM [HL_1_relu]), 
[HL_2_relu] AS 
(SELECT [HL_BA_2].[KEY] AS [KEY], CASE WHEN ([HL_BA_2].[NEUR_2_1] >= 0.0) THEN [HL_BA_2].[NEUR_2_1] ELSE 0.0 END AS [NEUR_2_1], CASE WHEN ([HL_BA_2].[NEUR_2_2] >= 0.0) THEN [HL_BA_2].[NEUR_2_2] ELSE 0.0 END AS [NEUR_2_2], CASE WHEN ([HL_BA_2].[NEUR_2_3] >= 0.0) THEN [HL_BA_2].[NEUR_2_3] ELSE 0.0 END AS [NEUR_2_3], CASE WHEN ([HL_BA_2].[NEUR_2_4] >= 0.0) THEN [HL_BA_2].[NEUR_2_4] ELSE 0.0 END AS [NEUR_2_4], CASE WHEN ([HL_BA_2].[NEUR_2_5] >= 0.0) THEN [HL_BA_2].[NEUR_2_5] ELSE 0.0 END AS [NEUR_2_5] 
FROM [HL_BA_2]), 
[OL_BA] AS 
(SELECT [HL_2_relu].[KEY] AS [KEY], 0.3026295938 * [HL_2_relu].[NEUR_2_1] + -1.91808247872 * [HL_2_relu].[NEUR_2_2] + 5.25761696047 * [HL_2_relu].[NEUR_2_3] + 0.6993117389 * [HL_2_relu].[NEUR_2_4] + -0.83564763992 * [HL_2_relu].[NEUR_2_5] + -6.10366119838 AS [NEUR_3_1] 
FROM [HL_2_relu]), 
[OL_logistic] AS 
(SELECT [OL_BA].[KEY] AS [KEY], 1.0 / (1.0 + exp(-[OL_BA].[NEUR_3_1])) AS [NEUR_3_1] 
FROM [OL_BA]), 
orig_cte AS 
(SELECT [OL_logistic].[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], 1.0 - [OL_logistic].[NEUR_3_1] AS [Proba_0], [OL_logistic].[NEUR_3_1] AS [Proba_1], CAST(NULL AS FLOAT) AS [LogProba_0], CAST(NULL AS FLOAT) AS [LogProba_1], CAST(NULL AS INTEGER) AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba] 
FROM [OL_logistic]), 
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