-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [IL] AS 
(SELECT [ADS].[KEY] AS [KEY], CAST([ADS].[Feature_0] AS FLOAT) AS [Feature_0], CAST([ADS].[Feature_1] AS FLOAT) AS [Feature_1], CAST([ADS].[Feature_2] AS FLOAT) AS [Feature_2], CAST([ADS].[Feature_3] AS FLOAT) AS [Feature_3], CAST([ADS].[Feature_4] AS FLOAT) AS [Feature_4], CAST([ADS].[Feature_5] AS FLOAT) AS [Feature_5], CAST([ADS].[Feature_6] AS FLOAT) AS [Feature_6], CAST([ADS].[Feature_7] AS FLOAT) AS [Feature_7], CAST([ADS].[Feature_8] AS FLOAT) AS [Feature_8], CAST([ADS].[Feature_9] AS FLOAT) AS [Feature_9], CAST([ADS].[Feature_10] AS FLOAT) AS [Feature_10], CAST([ADS].[Feature_11] AS FLOAT) AS [Feature_11], CAST([ADS].[Feature_12] AS FLOAT) AS [Feature_12], CAST([ADS].[Feature_13] AS FLOAT) AS [Feature_13], CAST([ADS].[Feature_14] AS FLOAT) AS [Feature_14], CAST([ADS].[Feature_15] AS FLOAT) AS [Feature_15], CAST([ADS].[Feature_16] AS FLOAT) AS [Feature_16], CAST([ADS].[Feature_17] AS FLOAT) AS [Feature_17], CAST([ADS].[Feature_18] AS FLOAT) AS [Feature_18], CAST([ADS].[Feature_19] AS FLOAT) AS [Feature_19], CAST([ADS].[Feature_20] AS FLOAT) AS [Feature_20], CAST([ADS].[Feature_21] AS FLOAT) AS [Feature_21], CAST([ADS].[Feature_22] AS FLOAT) AS [Feature_22], CAST([ADS].[Feature_23] AS FLOAT) AS [Feature_23], CAST([ADS].[Feature_24] AS FLOAT) AS [Feature_24], CAST([ADS].[Feature_25] AS FLOAT) AS [Feature_25], CAST([ADS].[Feature_26] AS FLOAT) AS [Feature_26], CAST([ADS].[Feature_27] AS FLOAT) AS [Feature_27], CAST([ADS].[Feature_28] AS FLOAT) AS [Feature_28], CAST([ADS].[Feature_29] AS FLOAT) AS [Feature_29] 
FROM [BreastCancer] AS [ADS]), 
[HL_BA_1] AS 
(SELECT [IL].[KEY] AS [KEY], -0.0619826033528 * [IL].[Feature_0] + -0.272340235116 * [IL].[Feature_1] + -0.337302800162 * [IL].[Feature_2] + -0.377223205326 * [IL].[Feature_3] + 0.160089938663 * [IL].[Feature_4] + 0.331261786989 * [IL].[Feature_5] + -0.168060860147 * [IL].[Feature_6] + -0.0341678756435 * [IL].[Feature_7] + -0.0135855523725 * [IL].[Feature_8] + -0.148225710932 * [IL].[Feature_9] + -0.199566707874 * [IL].[Feature_10] + -0.364660087063 * [IL].[Feature_11] + 0.0546968291807 * [IL].[Feature_12] + 0.327512570354 * [IL].[Feature_13] + 0.213299141154 * [IL].[Feature_14] + 0.171956410154 * [IL].[Feature_15] + -0.105823854967 * [IL].[Feature_16] + -0.392136410587 * [IL].[Feature_17] + -0.339278775195 * [IL].[Feature_18] + -0.106163215046 * [IL].[Feature_19] + -0.413591098108 * [IL].[Feature_20] + 0.325176973826 * [IL].[Feature_21] + 0.214457572292 * [IL].[Feature_22] + -0.353817646975 * [IL].[Feature_23] + 0.248174909673 * [IL].[Feature_24] + -0.00754947034377 * [IL].[Feature_25] + 0.226456992711 * [IL].[Feature_26] + 0.00151597573273 * [IL].[Feature_27] + -0.24920572085 * [IL].[Feature_28] + 0.203360667657 * [IL].[Feature_29] + 0.259260350984 AS [NEUR_1_1], 0.0848252054514 * [IL].[Feature_0] + 0.00864494184563 * [IL].[Feature_1] + -0.25129530378 * [IL].[Feature_2] + 0.305569856635 * [IL].[Feature_3] + 0.119101670918 * [IL].[Feature_4] + 0.319479809408 * [IL].[Feature_5] + -0.190426545844 * [IL].[Feature_6] + -0.407355373875 * [IL].[Feature_7] + 0.359471497207 * [IL].[Feature_8] + -0.0602192701665 * [IL].[Feature_9] + -0.260557494069 * [IL].[Feature_10] + -0.0733307958338 * [IL].[Feature_11] + -0.305999685238 * [IL].[Feature_12] + 0.228427341613 * [IL].[Feature_13] + 0.0391665931272 * [IL].[Feature_14] + -0.200206836962 * [IL].[Feature_15] + 0.123439107092 * [IL].[Feature_16] + -0.272666350969 * [IL].[Feature_17] + 0.0680979939171 * [IL].[Feature_18] + 0.263594452406 * [IL].[Feature_19] + -0.423442482547 * [IL].[Feature_20] + -0.00356837195007 * [IL].[Feature_21] + -0.298514098131 * [IL].[Feature_22] + 0.0914381647849 * [IL].[Feature_23] + 0.194638592408 * [IL].[Feature_24] + -0.0666476032764 * [IL].[Feature_25] + 0.0916579559427 * [IL].[Feature_26] + 0.250496108831 * [IL].[Feature_27] + -0.0488267484579 * [IL].[Feature_28] + -0.37272140159 * [IL].[Feature_29] + -0.0432452368257 AS [NEUR_1_2], 0.402633645509 * [IL].[Feature_0] + -0.278901898956 * [IL].[Feature_1] + 0.216788070226 * [IL].[Feature_2] + 0.00986699509382 * [IL].[Feature_3] + -0.272902233376 * [IL].[Feature_4] + -0.148073733556 * [IL].[Feature_5] + 0.272651533516 * [IL].[Feature_6] + -0.255492108973 * [IL].[Feature_7] + -0.318057352627 * [IL].[Feature_8] + 0.357095917316 * [IL].[Feature_9] + -0.00514786270458 * [IL].[Feature_10] + 0.00150292476906 * [IL].[Feature_11] + 0.29100756162 * [IL].[Feature_12] + -0.25045937829 * [IL].[Feature_13] + -0.379023161673 * [IL].[Feature_14] + -0.324410517802 * [IL].[Feature_15] + 0.0854067380706 * [IL].[Feature_16] + -0.0423840765315 * [IL].[Feature_17] + 0.298835996167 * [IL].[Feature_18] + -0.0489637003839 * [IL].[Feature_19] + -0.137668151274 * [IL].[Feature_20] + 0.19321719865 * [IL].[Feature_21] + -0.4352411545 * [IL].[Feature_22] + 0.175056581231 * [IL].[Feature_23] + 0.414755578981 * [IL].[Feature_24] + 0.0933011284681 * [IL].[Feature_25] + 0.166992353208 * [IL].[Feature_26] + 0.398993145925 * [IL].[Feature_27] + 0.141533675898 * [IL].[Feature_28] + 0.134249894992 * [IL].[Feature_29] + -0.369974167605 AS [NEUR_1_3] 
FROM [IL]), 
[HL_1_relu] AS 
(SELECT [HL_BA_1].[KEY] AS [KEY], CASE WHEN ([HL_BA_1].[NEUR_1_1] >= 0.0) THEN [HL_BA_1].[NEUR_1_1] ELSE 0.0 END AS [NEUR_1_1], CASE WHEN ([HL_BA_1].[NEUR_1_2] >= 0.0) THEN [HL_BA_1].[NEUR_1_2] ELSE 0.0 END AS [NEUR_1_2], CASE WHEN ([HL_BA_1].[NEUR_1_3] >= 0.0) THEN [HL_BA_1].[NEUR_1_3] ELSE 0.0 END AS [NEUR_1_3] 
FROM [HL_BA_1]), 
[HL_BA_2] AS 
(SELECT [HL_1_relu].[KEY] AS [KEY], 0.557001797217 * [HL_1_relu].[NEUR_1_1] + -0.631851209981 * [HL_1_relu].[NEUR_1_2] + -0.60279421635 * [HL_1_relu].[NEUR_1_3] + -0.088584894897 AS [NEUR_2_1], -0.611714751299 * [HL_1_relu].[NEUR_1_1] + -0.780145564938 * [HL_1_relu].[NEUR_1_2] + -0.203528212741 * [HL_1_relu].[NEUR_1_3] + 0.726167810184 AS [NEUR_2_2], 0.318166556433 * [HL_1_relu].[NEUR_1_1] + 0.245207445992 * [HL_1_relu].[NEUR_1_2] + -0.855166210104 * [HL_1_relu].[NEUR_1_3] + 0.56392377333 AS [NEUR_2_3], -0.842190224649 * [HL_1_relu].[NEUR_1_1] + -0.422382209976 * [HL_1_relu].[NEUR_1_2] + 0.198672153051 * [HL_1_relu].[NEUR_1_3] + 0.703329432275 AS [NEUR_2_4], -0.694808378024 * [HL_1_relu].[NEUR_1_1] + -0.269531648052 * [HL_1_relu].[NEUR_1_2] + -0.661736510015 * [HL_1_relu].[NEUR_1_3] + -0.815750113658 AS [NEUR_2_5] 
FROM [HL_1_relu]), 
[HL_2_relu] AS 
(SELECT [HL_BA_2].[KEY] AS [KEY], CASE WHEN ([HL_BA_2].[NEUR_2_1] >= 0.0) THEN [HL_BA_2].[NEUR_2_1] ELSE 0.0 END AS [NEUR_2_1], CASE WHEN ([HL_BA_2].[NEUR_2_2] >= 0.0) THEN [HL_BA_2].[NEUR_2_2] ELSE 0.0 END AS [NEUR_2_2], CASE WHEN ([HL_BA_2].[NEUR_2_3] >= 0.0) THEN [HL_BA_2].[NEUR_2_3] ELSE 0.0 END AS [NEUR_2_3], CASE WHEN ([HL_BA_2].[NEUR_2_4] >= 0.0) THEN [HL_BA_2].[NEUR_2_4] ELSE 0.0 END AS [NEUR_2_4], CASE WHEN ([HL_BA_2].[NEUR_2_5] >= 0.0) THEN [HL_BA_2].[NEUR_2_5] ELSE 0.0 END AS [NEUR_2_5] 
FROM [HL_BA_2]), 
[OL_BA] AS 
(SELECT [HL_2_relu].[KEY] AS [KEY], 0.178018546456 * [HL_2_relu].[NEUR_2_1] + -0.137536229532 * [HL_2_relu].[NEUR_2_2] + 0.811744115312 * [HL_2_relu].[NEUR_2_3] + -0.0151166777836 * [HL_2_relu].[NEUR_2_4] + 0.379375855321 * [HL_2_relu].[NEUR_2_5] + 0.611787688081 AS [NEUR_3_1] 
FROM [HL_2_relu]), 
[OL_logistic] AS 
(SELECT [OL_BA].[KEY] AS [KEY], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-[OL_BA].[NEUR_3_1] <= -100.0) THEN -100.0 ELSE -[OL_BA].[NEUR_3_1] END >= 100.0) THEN 100.0 ELSE CASE WHEN (-[OL_BA].[NEUR_3_1] <= -100.0) THEN -100.0 ELSE -[OL_BA].[NEUR_3_1] END END)) AS [NEUR_3_1] 
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