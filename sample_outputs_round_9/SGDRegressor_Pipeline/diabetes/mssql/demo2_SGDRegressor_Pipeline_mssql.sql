-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.0047225988377 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN -0.0073794958196 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN -6.24253146871e-05 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN -0.00643221528123 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN -0.00213184962584 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN -0.000838461125138 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.000444113651192 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN -0.0032531275266 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN -0.0029539764781 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN -0.000211620600092 ELSE [ADS].[Feature_9] END AS impter_11 
FROM diabetes AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 0.0047225988377) / 0.0488123078699 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - -0.0073794958196) / 0.0465126383467 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - -6.24253146871e-05) / 0.046971645538 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - -0.00643221528123) / 0.0474148680367 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - -0.00213184962584) / 0.0460146493101 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - -0.000838461125138) / 0.0459634748503 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 0.000444113651192) / 0.0423673337055 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - -0.0032531275266) / 0.0441563504693 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - -0.0029539764781) / 0.044965109506 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - -0.000211620600092) / 0.0487263122756 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
linear_model_cte AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], 0.8925413164715418 * [ADS_sca_2_OUT].scaler_2 + -3.6807397287821417 * [ADS_sca_2_OUT].scaler_3 + 19.538530836461803 * [ADS_sca_2_OUT].scaler_4 + 10.741382512351665 * [ADS_sca_2_OUT].scaler_5 + -2.9407347353603694 * [ADS_sca_2_OUT].scaler_6 + -8.069982747489705 * [ADS_sca_2_OUT].scaler_7 + -7.031210825621645 * [ADS_sca_2_OUT].scaler_8 + 5.914764313960358 * [ADS_sca_2_OUT].scaler_9 + 17.569611370343253 * [ADS_sca_2_OUT].scaler_10 + 10.990150744367533 * [ADS_sca_2_OUT].scaler_11 + 116.623242729 AS [Estimator] 
FROM [ADS_sca_2_OUT])
 SELECT linear_model_cte.[KEY] AS [KEY], linear_model_cte.[Estimator] AS [Estimator] 
FROM linear_model_cte