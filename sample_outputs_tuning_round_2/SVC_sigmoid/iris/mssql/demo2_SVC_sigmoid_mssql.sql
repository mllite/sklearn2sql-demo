-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [SV_data_0_1] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.7 AS sv_1, 1.5 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, 4.7 AS sv_0, 3.2 AS sv_1, 1.3 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, 4.9 AS sv_0, 3.1 AS sv_1, 1.5 AS sv_2, 0.1 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, 4.6 AS sv_0, 3.4 AS sv_1, 1.4 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 4.6 AS sv_0, 3.1 AS sv_1, 1.5 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, 5.0 AS sv_0, 3.5 AS sv_1, 1.6 AS sv_2, 0.6 AS sv_3 UNION ALL SELECT 6 AS sv_idx, 1.0 AS dual_coeff, 5.0 AS sv_0, 3.5 AS sv_1, 1.3 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, 5.2 AS sv_0, 3.4 AS sv_1, 1.4 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 5.5 AS sv_0, 4.2 AS sv_1, 1.4 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, 4.8 AS sv_0, 3.1 AS sv_1, 1.6 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 4.8 AS sv_0, 3.4 AS sv_1, 1.9 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 11 AS sv_idx, 1.0 AS dual_coeff, 5.0 AS sv_0, 3.4 AS sv_1, 1.6 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, 5.4 AS sv_0, 3.4 AS sv_1, 1.5 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.3 AS sv_1, 1.7 AS sv_2, 0.5 AS sv_3 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, 5.0 AS sv_0, 3.6 AS sv_1, 1.4 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 5.0 AS sv_0, 3.4 AS sv_1, 1.5 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.5 AS sv_1, 1.4 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.8 AS sv_1, 1.5 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, 5.7 AS sv_0, 3.8 AS sv_1, 1.7 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, 4.6 AS sv_0, 3.2 AS sv_1, 1.4 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 4.8 AS sv_0, 3.4 AS sv_1, 1.6 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.4 AS sv_1, 1.5 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, 5.2 AS sv_0, 4.1 AS sv_1, 1.5 AS sv_2, 0.1 AS sv_3 UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, 4.4 AS sv_0, 2.9 AS sv_1, 1.4 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, 4.4 AS sv_0, 3.0 AS sv_1, 1.3 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.8 AS sv_1, 1.6 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 4.7 AS sv_0, 3.2 AS sv_1, 1.6 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.8 AS sv_1, 1.9 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 4.4 AS sv_0, 3.2 AS sv_1, 1.3 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, 4.8 AS sv_0, 3.0 AS sv_1, 1.4 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, 4.5 AS sv_0, 2.3 AS sv_1, 1.3 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.5 AS sv_1, 1.4 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, 5.7 AS sv_0, 4.4 AS sv_1, 1.5 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, 5.4 AS sv_0, 3.4 AS sv_1, 1.7 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, 5.4 AS sv_0, 3.9 AS sv_1, 1.3 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, 4.9 AS sv_0, 3.1 AS sv_1, 1.5 AS sv_2, 0.1 AS sv_3 UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, 4.3 AS sv_0, 3.0 AS sv_1, 1.1 AS sv_2, 0.1 AS sv_3 UNION ALL SELECT 37 AS sv_idx, -1.0 AS dual_coeff, 6.1 AS sv_0, 2.8 AS sv_1, 4.0 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 38 AS sv_idx, -1.0 AS dual_coeff, 6.0 AS sv_0, 2.9 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 39 AS sv_idx, -1.0 AS dual_coeff, 6.8 AS sv_0, 2.8 AS sv_1, 4.8 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 40 AS sv_idx, -1.0 AS dual_coeff, 5.5 AS sv_0, 2.5 AS sv_1, 4.0 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, 5.6 AS sv_0, 2.5 AS sv_1, 3.9 AS sv_2, 1.1 AS sv_3 UNION ALL SELECT 42 AS sv_idx, -1.0 AS dual_coeff, 5.8 AS sv_0, 2.6 AS sv_1, 4.0 AS sv_2, 1.2 AS sv_3 UNION ALL SELECT 43 AS sv_idx, -1.0 AS dual_coeff, 5.6 AS sv_0, 3.0 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 44 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 3.3 AS sv_1, 4.7 AS sv_2, 1.6 AS sv_3 UNION ALL SELECT 45 AS sv_idx, -1.0 AS dual_coeff, 5.1 AS sv_0, 2.5 AS sv_1, 3.0 AS sv_2, 1.1 AS sv_3 UNION ALL SELECT 46 AS sv_idx, -1.0 AS dual_coeff, 5.6 AS sv_0, 2.7 AS sv_1, 4.2 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 47 AS sv_idx, -1.0 AS dual_coeff, 5.8 AS sv_0, 2.7 AS sv_1, 4.1 AS sv_2, 1.0 AS sv_3 UNION ALL SELECT 48 AS sv_idx, -1.0 AS dual_coeff, 7.0 AS sv_0, 3.2 AS sv_1, 4.7 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 49 AS sv_idx, -1.0 AS dual_coeff, 6.6 AS sv_0, 3.0 AS sv_1, 4.4 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 50 AS sv_idx, -1.0 AS dual_coeff, 5.5 AS sv_0, 2.3 AS sv_1, 4.0 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 51 AS sv_idx, -1.0 AS dual_coeff, 5.8 AS sv_0, 2.7 AS sv_1, 3.9 AS sv_2, 1.2 AS sv_3 UNION ALL SELECT 52 AS sv_idx, -1.0 AS dual_coeff, 5.5 AS sv_0, 2.6 AS sv_1, 4.4 AS sv_2, 1.2 AS sv_3 UNION ALL SELECT 53 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 3.1 AS sv_1, 4.4 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 54 AS sv_idx, -1.0 AS dual_coeff, 5.2 AS sv_0, 2.7 AS sv_1, 3.9 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 55 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 2.3 AS sv_1, 4.4 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 56 AS sv_idx, -0.0 AS dual_coeff, 5.0 AS sv_0, 2.3 AS sv_1, 3.3 AS sv_2, 1.0 AS sv_3 UNION ALL SELECT 57 AS sv_idx, -1.0 AS dual_coeff, 5.7 AS sv_0, 3.0 AS sv_1, 4.2 AS sv_2, 1.2 AS sv_3 UNION ALL SELECT 58 AS sv_idx, -1.0 AS dual_coeff, 5.7 AS sv_0, 2.8 AS sv_1, 4.5 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 59 AS sv_idx, -1.0 AS dual_coeff, 6.2 AS sv_0, 2.2 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 60 AS sv_idx, -0.0 AS dual_coeff, 4.9 AS sv_0, 2.4 AS sv_1, 3.3 AS sv_2, 1.0 AS sv_3 UNION ALL SELECT 61 AS sv_idx, -1.0 AS dual_coeff, 5.5 AS sv_0, 2.4 AS sv_1, 3.8 AS sv_2, 1.1 AS sv_3 UNION ALL SELECT 62 AS sv_idx, -1.0 AS dual_coeff, 5.9 AS sv_0, 3.2 AS sv_1, 4.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 63 AS sv_idx, -1.0 AS dual_coeff, 6.0 AS sv_0, 3.4 AS sv_1, 4.5 AS sv_2, 1.6 AS sv_3 UNION ALL SELECT 64 AS sv_idx, -1.0 AS dual_coeff, 5.5 AS sv_0, 2.4 AS sv_1, 3.7 AS sv_2, 1.0 AS sv_3 UNION ALL SELECT 65 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 3.1 AS sv_1, 4.7 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 66 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 2.5 AS sv_1, 4.9 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 67 AS sv_idx, -0.0 AS dual_coeff, 5.0 AS sv_0, 2.0 AS sv_1, 3.5 AS sv_2, 1.0 AS sv_3 UNION ALL SELECT 68 AS sv_idx, -1.0 AS dual_coeff, 6.1 AS sv_0, 2.9 AS sv_1, 4.7 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 69 AS sv_idx, -1.0 AS dual_coeff, 5.4 AS sv_0, 3.0 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 70 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 3.0 AS sv_1, 5.0 AS sv_2, 1.7 AS sv_3 UNION ALL SELECT 71 AS sv_idx, -1.0 AS dual_coeff, 5.7 AS sv_0, 2.6 AS sv_1, 3.5 AS sv_2, 1.0 AS sv_3 UNION ALL SELECT 72 AS sv_idx, -1.0 AS dual_coeff, 5.9 AS sv_0, 3.0 AS sv_1, 4.2 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 73 AS sv_idx, -1.0 AS dual_coeff, 6.1 AS sv_0, 2.8 AS sv_1, 4.7 AS sv_2, 1.2 AS sv_3 UNION ALL SELECT 74 AS sv_idx, -1.0 AS dual_coeff, 6.2 AS sv_0, 2.9 AS sv_1, 4.3 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 75 AS sv_idx, -1.0 AS dual_coeff, 6.4 AS sv_0, 3.2 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 76 AS sv_idx, -1.0 AS dual_coeff, 6.9 AS sv_0, 3.1 AS sv_1, 4.9 AS sv_2, 1.5 AS sv_3) AS [Values]), 
kernel_dp_0_1 AS 
(SELECT t.[KEY] AS [KEY], t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.[KEY] AS [KEY], sum(full_join_data_sv.dot_prod1) + -0.99999922514 AS dot_product 
FROM (SELECT [ADS].[KEY] AS [KEY], [SV_data_0_1].dual_coeff * ((exp(0.25 * ([ADS].[Feature_0] * [SV_data_0_1].sv_0 + [ADS].[Feature_1] * [SV_data_0_1].sv_1 + [ADS].[Feature_2] * [SV_data_0_1].sv_2 + [ADS].[Feature_3] * [SV_data_0_1].sv_3) + 0.0) - exp(-(0.25 * ([ADS].[Feature_0] * [SV_data_0_1].sv_0 + [ADS].[Feature_1] * [SV_data_0_1].sv_1 + [ADS].[Feature_2] * [SV_data_0_1].sv_2 + [ADS].[Feature_3] * [SV_data_0_1].sv_3) + 0.0))) / (exp(0.25 * ([ADS].[Feature_0] * [SV_data_0_1].sv_0 + [ADS].[Feature_1] * [SV_data_0_1].sv_1 + [ADS].[Feature_2] * [SV_data_0_1].sv_2 + [ADS].[Feature_3] * [SV_data_0_1].sv_3) + 0.0) + exp(-(0.25 * ([ADS].[Feature_0] * [SV_data_0_1].sv_0 + [ADS].[Feature_1] * [SV_data_0_1].sv_1 + [ADS].[Feature_2] * [SV_data_0_1].sv_2 + [ADS].[Feature_3] * [SV_data_0_1].sv_3) + 0.0)))) AS dot_prod1 
FROM iris AS [ADS], [SV_data_0_1]) AS full_join_data_sv GROUP BY full_join_data_sv.[KEY]) AS t), 
kernel_cte_0_1 AS 
(SELECT kernel_dp_0_1.[KEY] AS [KEY], 0 AS [OVO_Class1], 1 AS [OVO_Class2], CASE WHEN (-kernel_dp_0_1.dot_product >= 0.0) THEN 1 ELSE 0 END AS [OVO_Decision], coalesce(-kernel_dp_0_1.dot_product, 1.0 / (1.0 + exp((-kernel_dp_0_1.dot_product) * 0.408061410738 + 0.162528109268))) AS [OVO_Confidence] 
FROM kernel_dp_0_1), 
[SV_data_0_2] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.7 AS sv_1, 1.5 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, 4.7 AS sv_0, 3.2 AS sv_1, 1.3 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, 4.9 AS sv_0, 3.1 AS sv_1, 1.5 AS sv_2, 0.1 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, 4.6 AS sv_0, 3.4 AS sv_1, 1.4 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 4.6 AS sv_0, 3.1 AS sv_1, 1.5 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, 5.0 AS sv_0, 3.5 AS sv_1, 1.6 AS sv_2, 0.6 AS sv_3 UNION ALL SELECT 6 AS sv_idx, 1.0 AS dual_coeff, 5.0 AS sv_0, 3.5 AS sv_1, 1.3 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, 5.2 AS sv_0, 3.4 AS sv_1, 1.4 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 5.5 AS sv_0, 4.2 AS sv_1, 1.4 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, 4.8 AS sv_0, 3.1 AS sv_1, 1.6 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 4.8 AS sv_0, 3.4 AS sv_1, 1.9 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 11 AS sv_idx, 1.0 AS dual_coeff, 5.0 AS sv_0, 3.4 AS sv_1, 1.6 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, 5.4 AS sv_0, 3.4 AS sv_1, 1.5 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.3 AS sv_1, 1.7 AS sv_2, 0.5 AS sv_3 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, 5.0 AS sv_0, 3.6 AS sv_1, 1.4 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 5.0 AS sv_0, 3.4 AS sv_1, 1.5 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.5 AS sv_1, 1.4 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.8 AS sv_1, 1.5 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, 5.7 AS sv_0, 3.8 AS sv_1, 1.7 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, 4.6 AS sv_0, 3.2 AS sv_1, 1.4 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 4.8 AS sv_0, 3.4 AS sv_1, 1.6 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.4 AS sv_1, 1.5 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, 5.2 AS sv_0, 4.1 AS sv_1, 1.5 AS sv_2, 0.1 AS sv_3 UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, 4.4 AS sv_0, 2.9 AS sv_1, 1.4 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, 4.4 AS sv_0, 3.0 AS sv_1, 1.3 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.8 AS sv_1, 1.6 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 4.7 AS sv_0, 3.2 AS sv_1, 1.6 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.8 AS sv_1, 1.9 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 4.4 AS sv_0, 3.2 AS sv_1, 1.3 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, 4.8 AS sv_0, 3.0 AS sv_1, 1.4 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, 4.5 AS sv_0, 2.3 AS sv_1, 1.3 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 3.5 AS sv_1, 1.4 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, 5.7 AS sv_0, 4.4 AS sv_1, 1.5 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, 5.4 AS sv_0, 3.4 AS sv_1, 1.7 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, 5.4 AS sv_0, 3.9 AS sv_1, 1.3 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, 4.9 AS sv_0, 3.1 AS sv_1, 1.5 AS sv_2, 0.1 AS sv_3 UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, 4.3 AS sv_0, 3.0 AS sv_1, 1.1 AS sv_2, 0.1 AS sv_3 UNION ALL SELECT 77 AS sv_idx, -0.0 AS dual_coeff, 6.5 AS sv_0, 3.0 AS sv_1, 5.2 AS sv_2, 2.0 AS sv_3 UNION ALL SELECT 78 AS sv_idx, -0.0 AS dual_coeff, 6.8 AS sv_0, 3.0 AS sv_1, 5.5 AS sv_2, 2.1 AS sv_3 UNION ALL SELECT 79 AS sv_idx, -1.0 AS dual_coeff, 5.8 AS sv_0, 2.7 AS sv_1, 5.1 AS sv_2, 1.9 AS sv_3 UNION ALL SELECT 80 AS sv_idx, -1.0 AS dual_coeff, 6.1 AS sv_0, 3.0 AS sv_1, 4.9 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 81 AS sv_idx, -1.0 AS dual_coeff, 7.7 AS sv_0, 3.0 AS sv_1, 6.1 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 82 AS sv_idx, -1.0 AS dual_coeff, 6.8 AS sv_0, 3.2 AS sv_1, 5.9 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 83 AS sv_idx, -0.0 AS dual_coeff, 4.9 AS sv_0, 2.5 AS sv_1, 4.5 AS sv_2, 1.7 AS sv_3 UNION ALL SELECT 84 AS sv_idx, -1.0 AS dual_coeff, 6.9 AS sv_0, 3.1 AS sv_1, 5.1 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 85 AS sv_idx, -1.0 AS dual_coeff, 7.7 AS sv_0, 2.6 AS sv_1, 6.9 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 86 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 2.5 AS sv_1, 5.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 87 AS sv_idx, -1.0 AS dual_coeff, 6.4 AS sv_0, 2.8 AS sv_1, 5.6 AS sv_2, 2.1 AS sv_3 UNION ALL SELECT 88 AS sv_idx, -1.0 AS dual_coeff, 5.7 AS sv_0, 2.5 AS sv_1, 5.0 AS sv_2, 2.0 AS sv_3 UNION ALL SELECT 89 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 3.4 AS sv_1, 5.6 AS sv_2, 2.4 AS sv_3 UNION ALL SELECT 90 AS sv_idx, -1.0 AS dual_coeff, 6.5 AS sv_0, 3.2 AS sv_1, 5.1 AS sv_2, 2.0 AS sv_3 UNION ALL SELECT 91 AS sv_idx, -1.0 AS dual_coeff, 6.9 AS sv_0, 3.1 AS sv_1, 5.4 AS sv_2, 2.1 AS sv_3 UNION ALL SELECT 92 AS sv_idx, -1.0 AS dual_coeff, 6.4 AS sv_0, 3.2 AS sv_1, 5.3 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 93 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 2.7 AS sv_1, 4.9 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 94 AS sv_idx, -1.0 AS dual_coeff, 7.2 AS sv_0, 3.2 AS sv_1, 6.0 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 95 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 3.1 AS sv_1, 5.6 AS sv_2, 2.4 AS sv_3 UNION ALL SELECT 96 AS sv_idx, -1.0 AS dual_coeff, 5.9 AS sv_0, 3.0 AS sv_1, 5.1 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 97 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 2.9 AS sv_1, 5.6 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 98 AS sv_idx, -1.0 AS dual_coeff, 6.0 AS sv_0, 3.0 AS sv_1, 4.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 99 AS sv_idx, -1.0 AS dual_coeff, 6.1 AS sv_0, 2.6 AS sv_1, 5.6 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 100 AS sv_idx, -1.0 AS dual_coeff, 5.6 AS sv_0, 2.8 AS sv_1, 4.9 AS sv_2, 2.0 AS sv_3 UNION ALL SELECT 101 AS sv_idx, -1.0 AS dual_coeff, 6.2 AS sv_0, 3.4 AS sv_1, 5.4 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 102 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 2.8 AS sv_1, 5.1 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 103 AS sv_idx, -1.0 AS dual_coeff, 6.5 AS sv_0, 3.0 AS sv_1, 5.5 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 104 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 3.3 AS sv_1, 5.7 AS sv_2, 2.1 AS sv_3 UNION ALL SELECT 105 AS sv_idx, -1.0 AS dual_coeff, 5.8 AS sv_0, 2.7 AS sv_1, 5.1 AS sv_2, 1.9 AS sv_3 UNION ALL SELECT 106 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 3.0 AS sv_1, 5.2 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 107 AS sv_idx, -1.0 AS dual_coeff, 6.5 AS sv_0, 3.0 AS sv_1, 5.8 AS sv_2, 2.2 AS sv_3 UNION ALL SELECT 108 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 3.3 AS sv_1, 5.7 AS sv_2, 2.5 AS sv_3 UNION ALL SELECT 109 AS sv_idx, -1.0 AS dual_coeff, 7.2 AS sv_0, 3.6 AS sv_1, 6.1 AS sv_2, 2.5 AS sv_3 UNION ALL SELECT 110 AS sv_idx, -1.0 AS dual_coeff, 7.2 AS sv_0, 3.0 AS sv_1, 5.8 AS sv_2, 1.6 AS sv_3 UNION ALL SELECT 111 AS sv_idx, -1.0 AS dual_coeff, 6.0 AS sv_0, 2.2 AS sv_1, 5.0 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 112 AS sv_idx, -1.0 AS dual_coeff, 6.9 AS sv_0, 3.2 AS sv_1, 5.7 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 113 AS sv_idx, -1.0 AS dual_coeff, 7.4 AS sv_0, 2.8 AS sv_1, 6.1 AS sv_2, 1.9 AS sv_3 UNION ALL SELECT 114 AS sv_idx, -1.0 AS dual_coeff, 7.3 AS sv_0, 2.9 AS sv_1, 6.3 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 115 AS sv_idx, -1.0 AS dual_coeff, 6.4 AS sv_0, 2.7 AS sv_1, 5.3 AS sv_2, 1.9 AS sv_3 UNION ALL SELECT 116 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 2.5 AS sv_1, 5.0 AS sv_2, 1.9 AS sv_3) AS [Values]), 
kernel_dp_0_2 AS 
(SELECT t_1.[KEY] AS [KEY], t_1.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_1.[KEY] AS [KEY], sum(full_join_data_sv_1.dot_prod1) + -1.0 AS dot_product 
FROM (SELECT [ADS].[KEY] AS [KEY], [SV_data_0_2].dual_coeff * ((exp(0.25 * ([ADS].[Feature_0] * [SV_data_0_2].sv_0 + [ADS].[Feature_1] * [SV_data_0_2].sv_1 + [ADS].[Feature_2] * [SV_data_0_2].sv_2 + [ADS].[Feature_3] * [SV_data_0_2].sv_3) + 0.0) - exp(-(0.25 * ([ADS].[Feature_0] * [SV_data_0_2].sv_0 + [ADS].[Feature_1] * [SV_data_0_2].sv_1 + [ADS].[Feature_2] * [SV_data_0_2].sv_2 + [ADS].[Feature_3] * [SV_data_0_2].sv_3) + 0.0))) / (exp(0.25 * ([ADS].[Feature_0] * [SV_data_0_2].sv_0 + [ADS].[Feature_1] * [SV_data_0_2].sv_1 + [ADS].[Feature_2] * [SV_data_0_2].sv_2 + [ADS].[Feature_3] * [SV_data_0_2].sv_3) + 0.0) + exp(-(0.25 * ([ADS].[Feature_0] * [SV_data_0_2].sv_0 + [ADS].[Feature_1] * [SV_data_0_2].sv_1 + [ADS].[Feature_2] * [SV_data_0_2].sv_2 + [ADS].[Feature_3] * [SV_data_0_2].sv_3) + 0.0)))) AS dot_prod1 
FROM iris AS [ADS], [SV_data_0_2]) AS full_join_data_sv_1 GROUP BY full_join_data_sv_1.[KEY]) AS t_1), 
kernel_cte_0_2 AS 
(SELECT kernel_dp_0_2.[KEY] AS [KEY], 0 AS [OVO_Class1], 2 AS [OVO_Class2], CASE WHEN (-kernel_dp_0_2.dot_product >= 0.0) THEN 1 ELSE 0 END AS [OVO_Decision], coalesce(-kernel_dp_0_2.dot_product, 1.0 / (1.0 + exp((-kernel_dp_0_2.dot_product) * 0.748023358895 + 0.754859925212))) AS [OVO_Confidence] 
FROM kernel_dp_0_2), 
[SV_data_1_2] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3 
FROM (SELECT 37 AS sv_idx, 1.0 AS dual_coeff, 6.1 AS sv_0, 2.8 AS sv_1, 4.0 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, 6.0 AS sv_0, 2.9 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, 6.8 AS sv_0, 2.8 AS sv_1, 4.8 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, 5.5 AS sv_0, 2.5 AS sv_1, 4.0 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 41 AS sv_idx, 1.0 AS dual_coeff, 5.6 AS sv_0, 2.5 AS sv_1, 3.9 AS sv_2, 1.1 AS sv_3 UNION ALL SELECT 42 AS sv_idx, 1.0 AS dual_coeff, 5.8 AS sv_0, 2.6 AS sv_1, 4.0 AS sv_2, 1.2 AS sv_3 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, 5.6 AS sv_0, 3.0 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 44 AS sv_idx, 1.0 AS dual_coeff, 6.3 AS sv_0, 3.3 AS sv_1, 4.7 AS sv_2, 1.6 AS sv_3 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, 5.1 AS sv_0, 2.5 AS sv_1, 3.0 AS sv_2, 1.1 AS sv_3 UNION ALL SELECT 46 AS sv_idx, 1.0 AS dual_coeff, 5.6 AS sv_0, 2.7 AS sv_1, 4.2 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, 5.8 AS sv_0, 2.7 AS sv_1, 4.1 AS sv_2, 1.0 AS sv_3 UNION ALL SELECT 48 AS sv_idx, 1.0 AS dual_coeff, 7.0 AS sv_0, 3.2 AS sv_1, 4.7 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 49 AS sv_idx, 1.0 AS dual_coeff, 6.6 AS sv_0, 3.0 AS sv_1, 4.4 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 50 AS sv_idx, 1.0 AS dual_coeff, 5.5 AS sv_0, 2.3 AS sv_1, 4.0 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 51 AS sv_idx, 1.0 AS dual_coeff, 5.8 AS sv_0, 2.7 AS sv_1, 3.9 AS sv_2, 1.2 AS sv_3 UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, 5.5 AS sv_0, 2.6 AS sv_1, 4.4 AS sv_2, 1.2 AS sv_3 UNION ALL SELECT 53 AS sv_idx, 1.0 AS dual_coeff, 6.7 AS sv_0, 3.1 AS sv_1, 4.4 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 54 AS sv_idx, 1.0 AS dual_coeff, 5.2 AS sv_0, 2.7 AS sv_1, 3.9 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 55 AS sv_idx, 1.0 AS dual_coeff, 6.3 AS sv_0, 2.3 AS sv_1, 4.4 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 56 AS sv_idx, 1.0 AS dual_coeff, 5.0 AS sv_0, 2.3 AS sv_1, 3.3 AS sv_2, 1.0 AS sv_3 UNION ALL SELECT 57 AS sv_idx, 1.0 AS dual_coeff, 5.7 AS sv_0, 3.0 AS sv_1, 4.2 AS sv_2, 1.2 AS sv_3 UNION ALL SELECT 58 AS sv_idx, 1.0 AS dual_coeff, 5.7 AS sv_0, 2.8 AS sv_1, 4.5 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 59 AS sv_idx, 1.0 AS dual_coeff, 6.2 AS sv_0, 2.2 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 60 AS sv_idx, 1.0 AS dual_coeff, 4.9 AS sv_0, 2.4 AS sv_1, 3.3 AS sv_2, 1.0 AS sv_3 UNION ALL SELECT 61 AS sv_idx, 1.0 AS dual_coeff, 5.5 AS sv_0, 2.4 AS sv_1, 3.8 AS sv_2, 1.1 AS sv_3 UNION ALL SELECT 62 AS sv_idx, 1.0 AS dual_coeff, 5.9 AS sv_0, 3.2 AS sv_1, 4.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 63 AS sv_idx, 1.0 AS dual_coeff, 6.0 AS sv_0, 3.4 AS sv_1, 4.5 AS sv_2, 1.6 AS sv_3 UNION ALL SELECT 64 AS sv_idx, 1.0 AS dual_coeff, 5.5 AS sv_0, 2.4 AS sv_1, 3.7 AS sv_2, 1.0 AS sv_3 UNION ALL SELECT 65 AS sv_idx, 1.0 AS dual_coeff, 6.7 AS sv_0, 3.1 AS sv_1, 4.7 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 66 AS sv_idx, 1.0 AS dual_coeff, 6.3 AS sv_0, 2.5 AS sv_1, 4.9 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 67 AS sv_idx, 1.0 AS dual_coeff, 5.0 AS sv_0, 2.0 AS sv_1, 3.5 AS sv_2, 1.0 AS sv_3 UNION ALL SELECT 68 AS sv_idx, 1.0 AS dual_coeff, 6.1 AS sv_0, 2.9 AS sv_1, 4.7 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 69 AS sv_idx, 1.0 AS dual_coeff, 5.4 AS sv_0, 3.0 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 70 AS sv_idx, 1.0 AS dual_coeff, 6.7 AS sv_0, 3.0 AS sv_1, 5.0 AS sv_2, 1.7 AS sv_3 UNION ALL SELECT 71 AS sv_idx, 1.0 AS dual_coeff, 5.7 AS sv_0, 2.6 AS sv_1, 3.5 AS sv_2, 1.0 AS sv_3 UNION ALL SELECT 72 AS sv_idx, 1.0 AS dual_coeff, 5.9 AS sv_0, 3.0 AS sv_1, 4.2 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 73 AS sv_idx, 1.0 AS dual_coeff, 6.1 AS sv_0, 2.8 AS sv_1, 4.7 AS sv_2, 1.2 AS sv_3 UNION ALL SELECT 74 AS sv_idx, 1.0 AS dual_coeff, 6.2 AS sv_0, 2.9 AS sv_1, 4.3 AS sv_2, 1.3 AS sv_3 UNION ALL SELECT 75 AS sv_idx, 1.0 AS dual_coeff, 6.4 AS sv_0, 3.2 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 76 AS sv_idx, 1.0 AS dual_coeff, 6.9 AS sv_0, 3.1 AS sv_1, 4.9 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 77 AS sv_idx, -1.0 AS dual_coeff, 6.5 AS sv_0, 3.0 AS sv_1, 5.2 AS sv_2, 2.0 AS sv_3 UNION ALL SELECT 78 AS sv_idx, -1.0 AS dual_coeff, 6.8 AS sv_0, 3.0 AS sv_1, 5.5 AS sv_2, 2.1 AS sv_3 UNION ALL SELECT 79 AS sv_idx, -1.0 AS dual_coeff, 5.8 AS sv_0, 2.7 AS sv_1, 5.1 AS sv_2, 1.9 AS sv_3 UNION ALL SELECT 80 AS sv_idx, -1.0 AS dual_coeff, 6.1 AS sv_0, 3.0 AS sv_1, 4.9 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 81 AS sv_idx, -1.0 AS dual_coeff, 7.7 AS sv_0, 3.0 AS sv_1, 6.1 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 82 AS sv_idx, -1.0 AS dual_coeff, 6.8 AS sv_0, 3.2 AS sv_1, 5.9 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 83 AS sv_idx, -1.0 AS dual_coeff, 4.9 AS sv_0, 2.5 AS sv_1, 4.5 AS sv_2, 1.7 AS sv_3 UNION ALL SELECT 84 AS sv_idx, -1.0 AS dual_coeff, 6.9 AS sv_0, 3.1 AS sv_1, 5.1 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 85 AS sv_idx, -1.0 AS dual_coeff, 7.7 AS sv_0, 2.6 AS sv_1, 6.9 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 86 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 2.5 AS sv_1, 5.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 87 AS sv_idx, -1.0 AS dual_coeff, 6.4 AS sv_0, 2.8 AS sv_1, 5.6 AS sv_2, 2.1 AS sv_3 UNION ALL SELECT 88 AS sv_idx, -1.0 AS dual_coeff, 5.7 AS sv_0, 2.5 AS sv_1, 5.0 AS sv_2, 2.0 AS sv_3 UNION ALL SELECT 89 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 3.4 AS sv_1, 5.6 AS sv_2, 2.4 AS sv_3 UNION ALL SELECT 90 AS sv_idx, -1.0 AS dual_coeff, 6.5 AS sv_0, 3.2 AS sv_1, 5.1 AS sv_2, 2.0 AS sv_3 UNION ALL SELECT 91 AS sv_idx, -1.0 AS dual_coeff, 6.9 AS sv_0, 3.1 AS sv_1, 5.4 AS sv_2, 2.1 AS sv_3 UNION ALL SELECT 92 AS sv_idx, -1.0 AS dual_coeff, 6.4 AS sv_0, 3.2 AS sv_1, 5.3 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 93 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 2.7 AS sv_1, 4.9 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 94 AS sv_idx, -1.0 AS dual_coeff, 7.2 AS sv_0, 3.2 AS sv_1, 6.0 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 95 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 3.1 AS sv_1, 5.6 AS sv_2, 2.4 AS sv_3 UNION ALL SELECT 96 AS sv_idx, -1.0 AS dual_coeff, 5.9 AS sv_0, 3.0 AS sv_1, 5.1 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 97 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 2.9 AS sv_1, 5.6 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 98 AS sv_idx, -1.0 AS dual_coeff, 6.0 AS sv_0, 3.0 AS sv_1, 4.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 99 AS sv_idx, -1.0 AS dual_coeff, 6.1 AS sv_0, 2.6 AS sv_1, 5.6 AS sv_2, 1.4 AS sv_3 UNION ALL SELECT 100 AS sv_idx, -1.0 AS dual_coeff, 5.6 AS sv_0, 2.8 AS sv_1, 4.9 AS sv_2, 2.0 AS sv_3 UNION ALL SELECT 101 AS sv_idx, -1.0 AS dual_coeff, 6.2 AS sv_0, 3.4 AS sv_1, 5.4 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 102 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 2.8 AS sv_1, 5.1 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 103 AS sv_idx, -1.0 AS dual_coeff, 6.5 AS sv_0, 3.0 AS sv_1, 5.5 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 104 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 3.3 AS sv_1, 5.7 AS sv_2, 2.1 AS sv_3 UNION ALL SELECT 105 AS sv_idx, -1.0 AS dual_coeff, 5.8 AS sv_0, 2.7 AS sv_1, 5.1 AS sv_2, 1.9 AS sv_3 UNION ALL SELECT 106 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 3.0 AS sv_1, 5.2 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 107 AS sv_idx, -1.0 AS dual_coeff, 6.5 AS sv_0, 3.0 AS sv_1, 5.8 AS sv_2, 2.2 AS sv_3 UNION ALL SELECT 108 AS sv_idx, -1.0 AS dual_coeff, 6.7 AS sv_0, 3.3 AS sv_1, 5.7 AS sv_2, 2.5 AS sv_3 UNION ALL SELECT 109 AS sv_idx, -1.0 AS dual_coeff, 7.2 AS sv_0, 3.6 AS sv_1, 6.1 AS sv_2, 2.5 AS sv_3 UNION ALL SELECT 110 AS sv_idx, -1.0 AS dual_coeff, 7.2 AS sv_0, 3.0 AS sv_1, 5.8 AS sv_2, 1.6 AS sv_3 UNION ALL SELECT 111 AS sv_idx, -1.0 AS dual_coeff, 6.0 AS sv_0, 2.2 AS sv_1, 5.0 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 112 AS sv_idx, -1.0 AS dual_coeff, 6.9 AS sv_0, 3.2 AS sv_1, 5.7 AS sv_2, 2.3 AS sv_3 UNION ALL SELECT 113 AS sv_idx, -1.0 AS dual_coeff, 7.4 AS sv_0, 2.8 AS sv_1, 6.1 AS sv_2, 1.9 AS sv_3 UNION ALL SELECT 114 AS sv_idx, -1.0 AS dual_coeff, 7.3 AS sv_0, 2.9 AS sv_1, 6.3 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 115 AS sv_idx, -1.0 AS dual_coeff, 6.4 AS sv_0, 2.7 AS sv_1, 5.3 AS sv_2, 1.9 AS sv_3 UNION ALL SELECT 116 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 2.5 AS sv_1, 5.0 AS sv_2, 1.9 AS sv_3) AS [Values]), 
kernel_dp_1_2 AS 
(SELECT t_2.[KEY] AS [KEY], t_2.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_2.[KEY] AS [KEY], sum(full_join_data_sv_2.dot_prod1) + -1.0 AS dot_product 
FROM (SELECT [ADS].[KEY] AS [KEY], [SV_data_1_2].dual_coeff * ((exp(0.25 * ([ADS].[Feature_0] * [SV_data_1_2].sv_0 + [ADS].[Feature_1] * [SV_data_1_2].sv_1 + [ADS].[Feature_2] * [SV_data_1_2].sv_2 + [ADS].[Feature_3] * [SV_data_1_2].sv_3) + 0.0) - exp(-(0.25 * ([ADS].[Feature_0] * [SV_data_1_2].sv_0 + [ADS].[Feature_1] * [SV_data_1_2].sv_1 + [ADS].[Feature_2] * [SV_data_1_2].sv_2 + [ADS].[Feature_3] * [SV_data_1_2].sv_3) + 0.0))) / (exp(0.25 * ([ADS].[Feature_0] * [SV_data_1_2].sv_0 + [ADS].[Feature_1] * [SV_data_1_2].sv_1 + [ADS].[Feature_2] * [SV_data_1_2].sv_2 + [ADS].[Feature_3] * [SV_data_1_2].sv_3) + 0.0) + exp(-(0.25 * ([ADS].[Feature_0] * [SV_data_1_2].sv_0 + [ADS].[Feature_1] * [SV_data_1_2].sv_1 + [ADS].[Feature_2] * [SV_data_1_2].sv_2 + [ADS].[Feature_3] * [SV_data_1_2].sv_3) + 0.0)))) AS dot_prod1 
FROM iris AS [ADS], [SV_data_1_2]) AS full_join_data_sv_2 GROUP BY full_join_data_sv_2.[KEY]) AS t_2), 
kernel_cte_1_2 AS 
(SELECT kernel_dp_1_2.[KEY] AS [KEY], 1 AS [OVO_Class1], 2 AS [OVO_Class2], CASE WHEN (-kernel_dp_1_2.dot_product >= 0.0) THEN 1 ELSE 0 END AS [OVO_Decision], coalesce(-kernel_dp_1_2.dot_product, 1.0 / (1.0 + exp((-kernel_dp_1_2.dot_product) * 1.02881404228 + 0.774334159385))) AS [OVO_Confidence] 
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