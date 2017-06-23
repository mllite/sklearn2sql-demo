-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 5.72972972973 ELSE [ADS].[Feature_0] END AS imputer_output_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 3.00810810811 ELSE [ADS].[Feature_1] END AS imputer_output_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 3.50540540541 ELSE [ADS].[Feature_2] END AS imputer_output_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 1.04054054054 ELSE [ADS].[Feature_3] END AS imputer_output_5 
FROM iris AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].imputer_output_2 AS FLOAT) - 5.72972972973) / 0.86863199836 AS scaler_output_2, (CAST([ADS_imp_1_OUT].imputer_output_3 AS FLOAT) - 3.00810810811) / 0.481202535534 AS scaler_output_3, (CAST([ADS_imp_1_OUT].imputer_output_4 AS FLOAT) - 3.50540540541) / 1.71068912082 AS scaler_output_4, (CAST([ADS_imp_1_OUT].imputer_output_5 AS FLOAT) - 1.04054054054) / 0.669997765006 AS scaler_output_5 
FROM [ADS_imp_1_OUT]), 
[SV_data_0_1] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 1.0 AS dual_coeff, -1.53083208107 AS sv_0, -0.224662382521 AS sv_1, -1.23073525153 AS sv_2, -1.25454230513 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.421023783098 AS dual_coeff, -1.07033787782 AS sv_0, -0.0168496786891 AS sv_1, -1.23073525153 AS sv_2, -1.1052880759 AS sv_3 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, -1.41570853025 AS sv_0, -1.47153860551 AS sv_1, -1.28919122625 AS sv_2, -1.1052880759 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 0.0 AS dual_coeff, -0.0342259205116 AS sv_0, 2.89252817495 AS sv_1, -1.17227927681 AS sv_2, -0.956033846672 AS sv_3 UNION ALL SELECT 4 AS sv_idx, -0.0 AS dual_coeff, 0.196021181112 AS sv_0, 0.398775728974 AS sv_1, 0.756767888941 AS sv_2, 1.13352536251 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -0.421023783098 AS dual_coeff, -0.264473022135 AS sv_0, -1.26372590168 AS sv_1, 0.113752167022 AS sv_2, -0.0605084713084 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -0.0 AS dual_coeff, 1.11700958761 AS sv_0, 0.190963025143 AS sv_1, 0.698311914221 AS sv_2, 0.685762674828 AS sv_3 UNION ALL SELECT 7 AS sv_idx, -0.0 AS dual_coeff, 0.656515384359 AS sv_0, -1.05591319785 AS sv_1, 0.815223863661 AS sv_2, 0.685762674828 AS sv_3 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, -0.840090776194 AS sv_0, -2.09497671701 AS sv_1, -0.00315978241729 AS sv_2, -0.0605084713084 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -0.0 AS dual_coeff, 0.426268282736 AS sv_0, -0.224662382521 AS sv_1, 0.698311914221 AS sv_2, 0.536508445601 AS sv_3 UNION ALL SELECT 10 AS sv_idx, -0.0 AS dual_coeff, 1.11700958761 AS sv_0, -0.0168496786891 AS sv_1, 0.873679838381 AS sv_2, 0.984271133283 AS sv_3 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, -0.0342259205116 AS sv_0, -0.848100494016 AS sv_1, -0.00315978241729 AS sv_2, -0.0605084713084 AS sv_3 UNION ALL SELECT 12 AS sv_idx, -0.0 AS dual_coeff, 0.426268282736 AS sv_0, -0.432475086352 AS sv_1, 0.698311914221 AS sv_2, 0.237999987146 AS sv_3 UNION ALL SELECT 13 AS sv_idx, -0.0 AS dual_coeff, 0.541391833547 AS sv_0, -0.224662382521 AS sv_1, 0.464488015342 AS sv_2, 0.387254216374 AS sv_3 UNION ALL SELECT 14 AS sv_idx, -0.0 AS dual_coeff, 1.34725668923 AS sv_0, 0.190963025143 AS sv_1, 0.815223863661 AS sv_2, 0.685762674828 AS sv_3) AS [Values]), 
kernel_dp_0_1 AS 
(SELECT t.[KEY] AS [KEY], t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.[KEY] AS [KEY], sum(full_join_data_sv.dot_prod1) + -0.623297628786 AS dot_product 
FROM (SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], [SV_data_0_1].dual_coeff * ((exp(0.25 * ([ADS_sca_2_OUT].scaler_output_2 * [SV_data_0_1].sv_0 + [ADS_sca_2_OUT].scaler_output_3 * [SV_data_0_1].sv_1 + [ADS_sca_2_OUT].scaler_output_4 * [SV_data_0_1].sv_2 + [ADS_sca_2_OUT].scaler_output_5 * [SV_data_0_1].sv_3) + 0.0) - exp(-(0.25 * ([ADS_sca_2_OUT].scaler_output_2 * [SV_data_0_1].sv_0 + [ADS_sca_2_OUT].scaler_output_3 * [SV_data_0_1].sv_1 + [ADS_sca_2_OUT].scaler_output_4 * [SV_data_0_1].sv_2 + [ADS_sca_2_OUT].scaler_output_5 * [SV_data_0_1].sv_3) + 0.0))) / (exp(0.25 * ([ADS_sca_2_OUT].scaler_output_2 * [SV_data_0_1].sv_0 + [ADS_sca_2_OUT].scaler_output_3 * [SV_data_0_1].sv_1 + [ADS_sca_2_OUT].scaler_output_4 * [SV_data_0_1].sv_2 + [ADS_sca_2_OUT].scaler_output_5 * [SV_data_0_1].sv_3) + 0.0) + exp(-(0.25 * ([ADS_sca_2_OUT].scaler_output_2 * [SV_data_0_1].sv_0 + [ADS_sca_2_OUT].scaler_output_3 * [SV_data_0_1].sv_1 + [ADS_sca_2_OUT].scaler_output_4 * [SV_data_0_1].sv_2 + [ADS_sca_2_OUT].scaler_output_5 * [SV_data_0_1].sv_3) + 0.0)))) AS dot_prod1 
FROM [ADS_sca_2_OUT], [SV_data_0_1]) AS full_join_data_sv GROUP BY full_join_data_sv.[KEY]) AS t), 
kernel_cte_0_1 AS 
(SELECT kernel_dp_0_1.[KEY] AS [KEY], 0 AS [OVO_Class1], 1 AS [OVO_Class2], CASE WHEN (-kernel_dp_0_1.dot_product > 0.0) THEN 1 ELSE 0 END AS [OVO_Decision], coalesce(-kernel_dp_0_1.dot_product, 1.0 / (1.0 + exp((-kernel_dp_0_1.dot_product) * -2.14020105382 + -0.0100824636796))) AS [OVO_Confidence] 
FROM kernel_dp_0_1), 
[SV_data_0_2] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.0 AS dual_coeff, -1.53083208107 AS sv_0, -0.224662382521 AS sv_1, -1.23073525153 AS sv_2, -1.25454230513 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.0 AS dual_coeff, -1.07033787782 AS sv_0, -0.0168496786891 AS sv_1, -1.23073525153 AS sv_2, -1.1052880759 AS sv_3 UNION ALL SELECT 2 AS sv_idx, 0.878942966913 AS dual_coeff, -1.41570853025 AS sv_0, -1.47153860551 AS sv_1, -1.28919122625 AS sv_2, -1.1052880759 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 0.143501468732 AS dual_coeff, -0.0342259205116 AS sv_0, 2.89252817495 AS sv_1, -1.17227927681 AS sv_2, -0.956033846672 AS sv_3 UNION ALL SELECT 15 AS sv_idx, -0.0 AS dual_coeff, 1.69262734167 AS sv_0, -0.0168496786891 AS sv_1, 1.34132763614 AS sv_2, 0.835016904055 AS sv_3 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.311144731924 AS sv_0, -1.67935130934 AS sv_1, 0.873679838381 AS sv_2, 0.685762674828 AS sv_3 UNION ALL SELECT 17 AS sv_idx, -0.0 AS dual_coeff, 1.34725668923 AS sv_0, 0.398775728974 AS sv_1, 1.28287166142 AS sv_2, 1.87979650865 AS sv_3 UNION ALL SELECT 18 AS sv_idx, -0.0 AS dual_coeff, 1.92287444329 AS sv_0, -0.432475086352 AS sv_1, 1.5166955603 AS sv_2, 1.28277959174 AS sv_3 UNION ALL SELECT 19 AS sv_idx, -0.0 AS dual_coeff, 1.80775089248 AS sv_0, -0.224662382521 AS sv_1, 1.63360750974 AS sv_2, 1.13352536251 AS sv_3 UNION ALL SELECT 20 AS sv_idx, -0.0 AS dual_coeff, 0.771638935171 AS sv_0, -0.640287790184 AS sv_1, 1.04904776254 AS sv_2, 1.28277959174 AS sv_3 UNION ALL SELECT 21 AS sv_idx, -0.0224444356449 AS dual_coeff, 0.656515384359 AS sv_0, -1.05591319785 AS sv_1, 0.873679838381 AS sv_2, 1.28277959174 AS sv_3) AS [Values]), 
kernel_dp_0_2 AS 
(SELECT t_1.[KEY] AS [KEY], t_1.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_1.[KEY] AS [KEY], sum(full_join_data_sv_1.dot_prod1) + 0.25303900576 AS dot_product 
FROM (SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], [SV_data_0_2].dual_coeff * ((exp(0.25 * ([ADS_sca_2_OUT].scaler_output_2 * [SV_data_0_2].sv_0 + [ADS_sca_2_OUT].scaler_output_3 * [SV_data_0_2].sv_1 + [ADS_sca_2_OUT].scaler_output_4 * [SV_data_0_2].sv_2 + [ADS_sca_2_OUT].scaler_output_5 * [SV_data_0_2].sv_3) + 0.0) - exp(-(0.25 * ([ADS_sca_2_OUT].scaler_output_2 * [SV_data_0_2].sv_0 + [ADS_sca_2_OUT].scaler_output_3 * [SV_data_0_2].sv_1 + [ADS_sca_2_OUT].scaler_output_4 * [SV_data_0_2].sv_2 + [ADS_sca_2_OUT].scaler_output_5 * [SV_data_0_2].sv_3) + 0.0))) / (exp(0.25 * ([ADS_sca_2_OUT].scaler_output_2 * [SV_data_0_2].sv_0 + [ADS_sca_2_OUT].scaler_output_3 * [SV_data_0_2].sv_1 + [ADS_sca_2_OUT].scaler_output_4 * [SV_data_0_2].sv_2 + [ADS_sca_2_OUT].scaler_output_5 * [SV_data_0_2].sv_3) + 0.0) + exp(-(0.25 * ([ADS_sca_2_OUT].scaler_output_2 * [SV_data_0_2].sv_0 + [ADS_sca_2_OUT].scaler_output_3 * [SV_data_0_2].sv_1 + [ADS_sca_2_OUT].scaler_output_4 * [SV_data_0_2].sv_2 + [ADS_sca_2_OUT].scaler_output_5 * [SV_data_0_2].sv_3) + 0.0)))) AS dot_prod1 
FROM [ADS_sca_2_OUT], [SV_data_0_2]) AS full_join_data_sv_1 GROUP BY full_join_data_sv_1.[KEY]) AS t_1), 
kernel_cte_0_2 AS 
(SELECT kernel_dp_0_2.[KEY] AS [KEY], 0 AS [OVO_Class1], 2 AS [OVO_Class2], CASE WHEN (-kernel_dp_0_2.dot_product > 0.0) THEN 1 ELSE 0 END AS [OVO_Decision], coalesce(-kernel_dp_0_2.dot_product, 1.0 / (1.0 + exp((-kernel_dp_0_2.dot_product) * -1.87690321848 + -0.0105216977313))) AS [OVO_Confidence] 
FROM kernel_dp_0_2), 
[SV_data_1_2] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3 
FROM (SELECT 4 AS sv_idx, 0.952840416893 AS dual_coeff, 0.196021181112 AS sv_0, 0.398775728974 AS sv_1, 0.756767888941 AS sv_2, 1.13352536251 AS sv_3 UNION ALL SELECT 5 AS sv_idx, 0.0 AS dual_coeff, -0.264473022135 AS sv_0, -1.26372590168 AS sv_1, 0.113752167022 AS sv_2, -0.0605084713084 AS sv_3 UNION ALL SELECT 6 AS sv_idx, 1.0 AS dual_coeff, 1.11700958761 AS sv_0, 0.190963025143 AS sv_1, 0.698311914221 AS sv_2, 0.685762674828 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, 0.656515384359 AS sv_0, -1.05591319785 AS sv_1, 0.815223863661 AS sv_2, 0.685762674828 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 0.0 AS dual_coeff, -0.840090776194 AS sv_0, -2.09497671701 AS sv_1, -0.00315978241729 AS sv_2, -0.0605084713084 AS sv_3 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, 0.426268282736 AS sv_0, -0.224662382521 AS sv_1, 0.698311914221 AS sv_2, 0.536508445601 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 1.11700958761 AS sv_0, -0.0168496786891 AS sv_1, 0.873679838381 AS sv_2, 0.984271133283 AS sv_3 UNION ALL SELECT 11 AS sv_idx, 0.0 AS dual_coeff, -0.0342259205116 AS sv_0, -0.848100494016 AS sv_1, -0.00315978241729 AS sv_2, -0.0605084713084 AS sv_3 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, 0.426268282736 AS sv_0, -0.432475086352 AS sv_1, 0.698311914221 AS sv_2, 0.237999987146 AS sv_3 UNION ALL SELECT 13 AS sv_idx, 0.0471595831065 AS dual_coeff, 0.541391833547 AS sv_0, -0.224662382521 AS sv_1, 0.464488015342 AS sv_2, 0.387254216374 AS sv_3 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, 1.34725668923 AS sv_0, 0.190963025143 AS sv_1, 0.815223863661 AS sv_2, 0.685762674828 AS sv_3 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 1.69262734167 AS sv_0, -0.0168496786891 AS sv_1, 1.34132763614 AS sv_2, 0.835016904055 AS sv_3 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.311144731924 AS sv_0, -1.67935130934 AS sv_1, 0.873679838381 AS sv_2, 0.685762674828 AS sv_3 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 1.34725668923 AS sv_0, 0.398775728974 AS sv_1, 1.28287166142 AS sv_2, 1.87979650865 AS sv_3 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, 1.92287444329 AS sv_0, -0.432475086352 AS sv_1, 1.5166955603 AS sv_2, 1.28277959174 AS sv_3 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, 1.80775089248 AS sv_0, -0.224662382521 AS sv_1, 1.63360750974 AS sv_2, 1.13352536251 AS sv_3 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, 0.771638935171 AS sv_0, -0.640287790184 AS sv_1, 1.04904776254 AS sv_2, 1.28277959174 AS sv_3 UNION ALL SELECT 21 AS sv_idx, -1.0 AS dual_coeff, 0.656515384359 AS sv_0, -1.05591319785 AS sv_1, 0.873679838381 AS sv_2, 1.28277959174 AS sv_3) AS [Values]), 
kernel_dp_1_2 AS 
(SELECT t_2.[KEY] AS [KEY], t_2.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_2.[KEY] AS [KEY], sum(full_join_data_sv_2.dot_prod1) + 2.12415915489 AS dot_product 
FROM (SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], [SV_data_1_2].dual_coeff * ((exp(0.25 * ([ADS_sca_2_OUT].scaler_output_2 * [SV_data_1_2].sv_0 + [ADS_sca_2_OUT].scaler_output_3 * [SV_data_1_2].sv_1 + [ADS_sca_2_OUT].scaler_output_4 * [SV_data_1_2].sv_2 + [ADS_sca_2_OUT].scaler_output_5 * [SV_data_1_2].sv_3) + 0.0) - exp(-(0.25 * ([ADS_sca_2_OUT].scaler_output_2 * [SV_data_1_2].sv_0 + [ADS_sca_2_OUT].scaler_output_3 * [SV_data_1_2].sv_1 + [ADS_sca_2_OUT].scaler_output_4 * [SV_data_1_2].sv_2 + [ADS_sca_2_OUT].scaler_output_5 * [SV_data_1_2].sv_3) + 0.0))) / (exp(0.25 * ([ADS_sca_2_OUT].scaler_output_2 * [SV_data_1_2].sv_0 + [ADS_sca_2_OUT].scaler_output_3 * [SV_data_1_2].sv_1 + [ADS_sca_2_OUT].scaler_output_4 * [SV_data_1_2].sv_2 + [ADS_sca_2_OUT].scaler_output_5 * [SV_data_1_2].sv_3) + 0.0) + exp(-(0.25 * ([ADS_sca_2_OUT].scaler_output_2 * [SV_data_1_2].sv_0 + [ADS_sca_2_OUT].scaler_output_3 * [SV_data_1_2].sv_1 + [ADS_sca_2_OUT].scaler_output_4 * [SV_data_1_2].sv_2 + [ADS_sca_2_OUT].scaler_output_5 * [SV_data_1_2].sv_3) + 0.0)))) AS dot_prod1 
FROM [ADS_sca_2_OUT], [SV_data_1_2]) AS full_join_data_sv_2 GROUP BY full_join_data_sv_2.[KEY]) AS t_2), 
kernel_cte_1_2 AS 
(SELECT kernel_dp_1_2.[KEY] AS [KEY], 1 AS [OVO_Class1], 2 AS [OVO_Class2], CASE WHEN (-kernel_dp_1_2.dot_product > 0.0) THEN 1 ELSE 0 END AS [OVO_Decision], coalesce(-kernel_dp_1_2.dot_product, 1.0 / (1.0 + exp((-kernel_dp_1_2.dot_product) * 0.611252472697 + -1.3421821394))) AS [OVO_Confidence] 
FROM kernel_dp_1_2), 
[OVO_Score_Union_CTE] AS 
(SELECT ensemble_score_union.[KEY] AS [KEY], ensemble_score_union.[OVO_Class1] AS [OVO_Class1], ensemble_score_union.[OVO_Class2] AS [OVO_Class2], ensemble_score_union.[OVO_Decision] AS [OVO_Decision], ensemble_score_union.[OVO_Confidence] AS [OVO_Confidence] 
FROM (SELECT kernel_cte_0_1.[KEY] AS [KEY], kernel_cte_0_1.[OVO_Class1] AS [OVO_Class1], kernel_cte_0_1.[OVO_Class2] AS [OVO_Class2], kernel_cte_0_1.[OVO_Decision] AS [OVO_Decision], kernel_cte_0_1.[OVO_Confidence] AS [OVO_Confidence] 
FROM kernel_cte_0_1 UNION ALL SELECT kernel_cte_0_2.[KEY] AS [KEY], kernel_cte_0_2.[OVO_Class1] AS [OVO_Class1], kernel_cte_0_2.[OVO_Class2] AS [OVO_Class2], kernel_cte_0_2.[OVO_Decision] AS [OVO_Decision], kernel_cte_0_2.[OVO_Confidence] AS [OVO_Confidence] 
FROM kernel_cte_0_2 UNION ALL SELECT kernel_cte_1_2.[KEY] AS [KEY], kernel_cte_1_2.[OVO_Class1] AS [OVO_Class1], kernel_cte_1_2.[OVO_Class2] AS [OVO_Class2], kernel_cte_1_2.[OVO_Decision] AS [OVO_Decision], kernel_cte_1_2.[OVO_Confidence] AS [OVO_Confidence] 
FROM kernel_cte_1_2) AS ensemble_score_union), 
[OVO_Votes] AS 
(SELECT [Votes_Sel].[KEY] AS [KEY], [Votes_Sel].[OVO_Vote_0] AS [OVO_Vote_0], [Votes_Sel].[OVO_SumConfidence_0] AS [OVO_SumConfidence_0], [Votes_Sel].[OVO_Vote_1] AS [OVO_Vote_1], [Votes_Sel].[OVO_SumConfidence_1] AS [OVO_SumConfidence_1], [Votes_Sel].[OVO_Vote_2] AS [OVO_Vote_2], [Votes_Sel].[OVO_SumConfidence_2] AS [OVO_SumConfidence_2] 
FROM (SELECT [OVO_Score_Union_CTE].[KEY] AS [KEY], sum(CASE WHEN ([OVO_Score_Union_CTE].[OVO_Class1] = 0 OR [OVO_Score_Union_CTE].[OVO_Class2] = 0) THEN 1 ELSE 0 END * (CASE WHEN ([OVO_Score_Union_CTE].[OVO_Decision] = 0 AND [OVO_Score_Union_CTE].[OVO_Class1] = 0) THEN 1 ELSE 0 END + CASE WHEN ([OVO_Score_Union_CTE].[OVO_Decision] = 1 AND [OVO_Score_Union_CTE].[OVO_Class2] = 0) THEN 1 ELSE 0 END)) AS [OVO_Vote_0], sum(CASE WHEN ([OVO_Score_Union_CTE].[OVO_Class1] = 0 OR [OVO_Score_Union_CTE].[OVO_Class2] = 0) THEN 1 ELSE 0 END * [OVO_Score_Union_CTE].[OVO_Confidence] * (-CASE WHEN ([OVO_Score_Union_CTE].[OVO_Class1] = 0) THEN 1 ELSE 0 END + CASE WHEN ([OVO_Score_Union_CTE].[OVO_Class2] = 0) THEN 1 ELSE 0 END)) AS [OVO_SumConfidence_0], sum(CASE WHEN ([OVO_Score_Union_CTE].[OVO_Class1] = 1 OR [OVO_Score_Union_CTE].[OVO_Class2] = 1) THEN 1 ELSE 0 END * (CASE WHEN ([OVO_Score_Union_CTE].[OVO_Decision] = 0 AND [OVO_Score_Union_CTE].[OVO_Class1] = 1) THEN 1 ELSE 0 END + CASE WHEN ([OVO_Score_Union_CTE].[OVO_Decision] = 1 AND [OVO_Score_Union_CTE].[OVO_Class2] = 1) THEN 1 ELSE 0 END)) AS [OVO_Vote_1], sum(CASE WHEN ([OVO_Score_Union_CTE].[OVO_Class1] = 1 OR [OVO_Score_Union_CTE].[OVO_Class2] = 1) THEN 1 ELSE 0 END * [OVO_Score_Union_CTE].[OVO_Confidence] * (-CASE WHEN ([OVO_Score_Union_CTE].[OVO_Class1] = 1) THEN 1 ELSE 0 END + CASE WHEN ([OVO_Score_Union_CTE].[OVO_Class2] = 1) THEN 1 ELSE 0 END)) AS [OVO_SumConfidence_1], sum(CASE WHEN ([OVO_Score_Union_CTE].[OVO_Class1] = 2 OR [OVO_Score_Union_CTE].[OVO_Class2] = 2) THEN 1 ELSE 0 END * (CASE WHEN ([OVO_Score_Union_CTE].[OVO_Decision] = 0 AND [OVO_Score_Union_CTE].[OVO_Class1] = 2) THEN 1 ELSE 0 END + CASE WHEN ([OVO_Score_Union_CTE].[OVO_Decision] = 1 AND [OVO_Score_Union_CTE].[OVO_Class2] = 2) THEN 1 ELSE 0 END)) AS [OVO_Vote_2], sum(CASE WHEN ([OVO_Score_Union_CTE].[OVO_Class1] = 2 OR [OVO_Score_Union_CTE].[OVO_Class2] = 2) THEN 1 ELSE 0 END * [OVO_Score_Union_CTE].[OVO_Confidence] * (-CASE WHEN ([OVO_Score_Union_CTE].[OVO_Class1] = 2) THEN 1 ELSE 0 END + CASE WHEN ([OVO_Score_Union_CTE].[OVO_Class2] = 2) THEN 1 ELSE 0 END)) AS [OVO_SumConfidence_2] 
FROM [OVO_Score_Union_CTE] GROUP BY [OVO_Score_Union_CTE].[KEY]) AS [Votes_Sel]), 
[OVO_SumConf_CTE] AS 
(SELECT [Values].[KEY] AS [KEY], [Values].[OVO_SumConfidence] AS [OVO_SumConfidence] 
FROM (SELECT [OVO_Votes].[KEY] AS [KEY], [OVO_Votes].[OVO_SumConfidence_0] AS [OVO_SumConfidence] 
FROM [OVO_Votes] UNION ALL SELECT [OVO_Votes].[KEY] AS [KEY], [OVO_Votes].[OVO_SumConfidence_1] AS [OVO_SumConfidence] 
FROM [OVO_Votes] UNION ALL SELECT [OVO_Votes].[KEY] AS [KEY], [OVO_Votes].[OVO_SumConfidence_2] AS [OVO_SumConfidence] 
FROM [OVO_Votes]) AS [Values]), 
[MinMaxConf] AS 
(SELECT min([OVO_SumConf_CTE].[OVO_SumConfidence]) AS [OVO_min_conf], max([OVO_SumConf_CTE].[OVO_SumConfidence]) AS [OVO_max_conf] 
FROM [OVO_SumConf_CTE]), 
[OVO_Votes_WithScale] AS 
(SELECT [OVO_Votes].[KEY] AS [KEY], [OVO_Votes].[OVO_Vote_0] AS [OVO_Vote_0], [OVO_Votes].[OVO_SumConfidence_0] AS [OVO_SumConfidence_0], [OVO_Votes].[OVO_Vote_1] AS [OVO_Vote_1], [OVO_Votes].[OVO_SumConfidence_1] AS [OVO_SumConfidence_1], [OVO_Votes].[OVO_Vote_2] AS [OVO_Vote_2], [OVO_Votes].[OVO_SumConfidence_2] AS [OVO_SumConfidence_2], CASE WHEN (abs([MinMaxConf].[OVO_min_conf]) >= abs([MinMaxConf].[OVO_max_conf])) THEN abs([MinMaxConf].[OVO_min_conf]) ELSE abs([MinMaxConf].[OVO_max_conf]) END AS max_abs_confidence, CASE WHEN ([MinMaxConf].[OVO_max_conf] - [MinMaxConf].[OVO_min_conf] <= 0.0) THEN 0.0 ELSE 0.4999999999999998 / CASE WHEN (abs([MinMaxConf].[OVO_min_conf]) >= abs([MinMaxConf].[OVO_max_conf])) THEN abs([MinMaxConf].[OVO_min_conf]) ELSE abs([MinMaxConf].[OVO_max_conf]) END END AS [OVO_Scale] 
FROM [OVO_Votes], [MinMaxConf]), 
[KernAggregate_CTE] AS 
(SELECT [OVO_Votes_WithScale].[KEY] AS [KEY], [OVO_Votes_WithScale].[OVO_Vote_0] AS [OVO_Vote_0], [OVO_Votes_WithScale].[OVO_SumConfidence_0] AS [OVO_SumConfidence_0], [OVO_Votes_WithScale].[OVO_Vote_1] AS [OVO_Vote_1], [OVO_Votes_WithScale].[OVO_SumConfidence_1] AS [OVO_SumConfidence_1], [OVO_Votes_WithScale].[OVO_Vote_2] AS [OVO_Vote_2], [OVO_Votes_WithScale].[OVO_SumConfidence_2] AS [OVO_SumConfidence_2], [OVO_Votes_WithScale].max_abs_confidence AS max_abs_confidence, [OVO_Votes_WithScale].[OVO_Scale] AS [OVO_Scale], [OVO_Votes_WithScale].[OVO_Vote_0] + [OVO_Votes_WithScale].[OVO_Scale] * [OVO_Votes_WithScale].[OVO_SumConfidence_0] AS [Score_0], [OVO_Votes_WithScale].[OVO_Vote_1] + [OVO_Votes_WithScale].[OVO_Scale] * [OVO_Votes_WithScale].[OVO_SumConfidence_1] AS [Score_1], [OVO_Votes_WithScale].[OVO_Vote_2] + [OVO_Votes_WithScale].[OVO_Scale] * [OVO_Votes_WithScale].[OVO_SumConfidence_2] AS [Score_2] 
FROM [OVO_Votes_WithScale]), 
orig_cte AS 
(SELECT [KernAggregate_CTE].[KEY] AS [KEY], [KernAggregate_CTE].[Score_0] AS [Score_0], [KernAggregate_CTE].[Score_1] AS [Score_1], [KernAggregate_CTE].[Score_2] AS [Score_2], CAST(NULL AS FLOAT) AS [Proba_0], CAST(NULL AS FLOAT) AS [Proba_1], CAST(NULL AS FLOAT) AS [Proba_2], CAST(NULL AS FLOAT) AS [LogProba_0], CAST(NULL AS FLOAT) AS [LogProba_1], CAST(NULL AS FLOAT) AS [LogProba_2], CAST(NULL AS INTEGER) AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba] 
FROM [KernAggregate_CTE]), 
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
union_with_max AS 
(SELECT score_class_union.[KEY_u] AS [KEY_u], score_class_union.class AS class, score_class_union.[LogProba] AS [LogProba], score_class_union.[Proba] AS [Proba], score_class_union.[Score] AS [Score], score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Score] AS [max_Score] 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.[KEY_u] = score_max.[KEY]), 
arg_max_cte AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Score] AS [max_Score], [arg_max_t_Score].[KEY_Score] AS [KEY_Score], [arg_max_t_Score].[arg_max_Score] AS [arg_max_Score] 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.[KEY] AS [KEY_Score], min(union_with_max.class) AS [arg_max_Score] 
FROM union_with_max 
WHERE union_with_max.[max_Score] <= union_with_max.[Score] GROUP BY union_with_max.[KEY]) AS [arg_max_t_Score] ON score_max.[KEY] = [arg_max_t_Score].[KEY_Score])
 SELECT arg_max_cte.[KEY] AS [KEY], arg_max_cte.[Score_0] AS [Score_0], arg_max_cte.[Score_1] AS [Score_1], arg_max_cte.[Score_2] AS [Score_2], arg_max_cte.[Proba_0] AS [Proba_0], arg_max_cte.[Proba_1] AS [Proba_1], arg_max_cte.[Proba_2] AS [Proba_2], CASE WHEN (arg_max_cte.[Proba_0] IS NULL OR arg_max_cte.[Proba_0] > 0.0) THEN log(arg_max_cte.[Proba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[Proba_1] IS NULL OR arg_max_cte.[Proba_1] > 0.0) THEN log(arg_max_cte.[Proba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], CASE WHEN (arg_max_cte.[Proba_2] IS NULL OR arg_max_cte.[Proba_2] > 0.0) THEN log(arg_max_cte.[Proba_2]) ELSE -1.79769313486231e+308 END AS [LogProba_2], arg_max_cte.[arg_max_Score] AS [Decision], CASE WHEN (arg_max_cte.[arg_max_Score] = 0) THEN arg_max_cte.[Proba_0] WHEN (arg_max_cte.[arg_max_Score] = 1) THEN arg_max_cte.[Proba_1] WHEN (arg_max_cte.[arg_max_Score] = 2) THEN arg_max_cte.[Proba_2] END AS [DecisionProba] 
FROM arg_max_cte