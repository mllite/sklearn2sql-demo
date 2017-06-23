-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT [ADS].[KEY] AS [KEY], -0.1710014720068837 * [ADS].[Feature_0] + 0.06723872556087195 * [ADS].[Feature_1] + -0.2708233257506368 * [ADS].[Feature_2] + 0.12655934432846747 * [ADS].[Feature_3] + 0.13290897952961914 * [ADS].[Feature_4] + 0.05914515641317186 * [ADS].[Feature_5] + -0.3726043070527132 * [ADS].[Feature_6] + -0.06487258960630224 * [ADS].[Feature_7] + 0.19875673360131202 * [ADS].[Feature_8] + 0.1627834386994291 * [ADS].[Feature_9] + -0.119053209997 AS lincomb 
FROM [BinaryClass_10] AS [ADS])
 SELECT linear_model_cte.[KEY] AS [KEY], -linear_model_cte.lincomb AS [Score_0], linear_model_cte.lincomb AS [Score_1], CAST(NULL AS FLOAT) AS [Proba_0], CAST(NULL AS FLOAT) AS [Proba_1], CAST(NULL AS FLOAT) AS [LogProba_0], CAST(NULL AS FLOAT) AS [LogProba_1], CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba] 
FROM linear_model_cte