-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 43.7912812221 ELSE [ADS].[Feature_0] END AS imputer_output_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 945.967283308 ELSE [ADS].[Feature_1] END AS imputer_output_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.531000909998 ELSE [ADS].[Feature_2] END AS imputer_output_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 6.13996715205 ELSE [ADS].[Feature_3] END AS imputer_output_5 
FROM freidman3 AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].imputer_output_2 AS FLOAT) - 43.7912812221) / 26.0356235762 AS scaler_output_2, (CAST([ADS_imp_1_OUT].imputer_output_3 AS FLOAT) - 945.967283308) / 461.455276615 AS scaler_output_3, (CAST([ADS_imp_1_OUT].imputer_output_4 AS FLOAT) - 0.531000909998) / 0.290186328214 AS scaler_output_4, (CAST([ADS_imp_1_OUT].imputer_output_5 AS FLOAT) - 6.13996715205) / 3.07291724256 AS scaler_output_5 
FROM [ADS_imp_1_OUT]), 
dummy_class_reg_cte AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], 1.36123420303 AS [Constant] 
FROM [ADS_sca_2_OUT])
 SELECT dummy_class_reg_cte.[KEY] AS [KEY], dummy_class_reg_cte.[Constant] AS [Estimator] 
FROM dummy_class_reg_cte