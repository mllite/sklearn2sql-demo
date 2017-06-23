-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.00587058434841 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 0.206310474688 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.0555958221574 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.0384701934716 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN -0.429944388318 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.204565353815 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.40838482592 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.0127764293619 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.21646556202 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN -0.052903813543 ELSE [ADS].[Feature_9] END AS impter_11 
FROM [BinaryClass_10] AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 0.00587058434841) / 1.36610141231 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - 0.206310474688) / 0.924614068395 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 0.0555958221574) / 1.27201752306 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - 0.0384701934716) / 1.11679928013 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - -0.429944388318) / 1.02812853106 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - 0.204565353815) / 1.42979903307 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 0.40838482592) / 1.06633430275 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - 0.0127764293619) / 0.54624498456 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - 0.21646556202) / 1.03979793567 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - -0.052903813543) / 1.44168001857 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
linear_model_cte AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], -0.17912682281252315 * [ADS_sca_2_OUT].scaler_2 + 0.06434000796106933 * [ADS_sca_2_OUT].scaler_3 + -0.33527296323293904 * [ADS_sca_2_OUT].scaler_4 + 0.137678459558525 * [ADS_sca_2_OUT].scaler_5 + 0.13504016695644405 * [ADS_sca_2_OUT].scaler_6 + 0.08350551754275713 * [ADS_sca_2_OUT].scaler_7 + -0.39110329283675815 * [ADS_sca_2_OUT].scaler_8 + -0.1666993519589642 * [ADS_sca_2_OUT].scaler_9 + 0.20634657138609475 * [ADS_sca_2_OUT].scaler_10 + 0.15605733742254368 * [ADS_sca_2_OUT].scaler_11 + -0.28 AS lincomb 
FROM [ADS_sca_2_OUT])
 SELECT linear_model_cte.[KEY] AS [KEY], -linear_model_cte.lincomb AS [Score_0], linear_model_cte.lincomb AS [Score_1], CAST(NULL AS FLOAT) AS [Proba_0], CAST(NULL AS FLOAT) AS [Proba_1], CAST(NULL AS FLOAT) AS [LogProba_0], CAST(NULL AS FLOAT) AS [LogProba_1], CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba] 
FROM linear_model_cte