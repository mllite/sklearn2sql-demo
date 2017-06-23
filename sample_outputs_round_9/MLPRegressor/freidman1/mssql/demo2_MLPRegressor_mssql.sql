-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [IL] AS 
(SELECT [ADS].[KEY] AS [KEY], CAST([ADS].[Feature_0] AS FLOAT) AS [Feature_0], CAST([ADS].[Feature_1] AS FLOAT) AS [Feature_1], CAST([ADS].[Feature_2] AS FLOAT) AS [Feature_2], CAST([ADS].[Feature_3] AS FLOAT) AS [Feature_3], CAST([ADS].[Feature_4] AS FLOAT) AS [Feature_4], CAST([ADS].[Feature_5] AS FLOAT) AS [Feature_5], CAST([ADS].[Feature_6] AS FLOAT) AS [Feature_6], CAST([ADS].[Feature_7] AS FLOAT) AS [Feature_7], CAST([ADS].[Feature_8] AS FLOAT) AS [Feature_8], CAST([ADS].[Feature_9] AS FLOAT) AS [Feature_9] 
FROM freidman1 AS [ADS]), 
[HL_BA_1] AS 
(SELECT [IL].[KEY] AS [KEY], -0.098752807528 * [IL].[Feature_0] + -0.433901794468 * [IL].[Feature_1] + -0.537402379074 * [IL].[Feature_2] + -0.601004936475 * [IL].[Feature_3] + 0.255060775843 * [IL].[Feature_4] + 0.527777629889 * [IL].[Feature_5] + -0.267760321079 * [IL].[Feature_6] + -0.0544374302554 * [IL].[Feature_7] + -0.021644967556 * [IL].[Feature_8] + -0.236158281688 * [IL].[Feature_9] + -0.317960748727 AS [NEUR_1_1], -0.0453407555827 * [IL].[Feature_0] + -0.110932194715 * [IL].[Feature_1] + -0.531820909369 * [IL].[Feature_2] + 0.232728682713 * [IL].[Feature_3] + 0.0931905026293 * [IL].[Feature_4] + 0.344286390429 * [IL].[Feature_5] + -0.373354169131 * [IL].[Feature_6] + -0.68236391809 * [IL].[Feature_7] + 0.408718247434 * [IL].[Feature_8] + -0.204317692868 * [IL].[Feature_9] + -0.650441279234 AS [NEUR_1_2], 1.44790500298 * [IL].[Feature_0] + 3.91236270401 * [IL].[Feature_1] + -0.138529320236 * [IL].[Feature_2] + 3.47909128684 * [IL].[Feature_3] + 1.77187727511 * [IL].[Feature_4] + 0.631972369655 * [IL].[Feature_5] + -0.0631102822133 * [IL].[Feature_6] + -0.0536343925899 * [IL].[Feature_7] + -0.440329133602 * [IL].[Feature_8] + 0.268996445072 * [IL].[Feature_9] + 0.273949169338 AS [NEUR_1_3] 
FROM [IL]), 
[HL_1_relu] AS 
(SELECT [HL_BA_1].[KEY] AS [KEY], CASE WHEN ([HL_BA_1].[NEUR_1_1] >= 0.0) THEN [HL_BA_1].[NEUR_1_1] ELSE 0.0 END AS [NEUR_1_1], CASE WHEN ([HL_BA_1].[NEUR_1_2] >= 0.0) THEN [HL_BA_1].[NEUR_1_2] ELSE 0.0 END AS [NEUR_1_2], CASE WHEN ([HL_BA_1].[NEUR_1_3] >= 0.0) THEN [HL_BA_1].[NEUR_1_3] ELSE 0.0 END AS [NEUR_1_3] 
FROM [HL_BA_1]), 
[HL_BA_2] AS 
(SELECT [HL_1_relu].[KEY] AS [KEY], -0.740618493179 * [HL_1_relu].[NEUR_1_1] + 0.587989893802 * [HL_1_relu].[NEUR_1_2] + -0.178990133037 * [HL_1_relu].[NEUR_1_3] + -0.246867295352 AS [NEUR_2_1], -0.14939123841 * [HL_1_relu].[NEUR_1_1] + 0.598348475656 * [HL_1_relu].[NEUR_1_2] + -0.915666564994 * [HL_1_relu].[NEUR_1_3] + -0.633802723842 AS [NEUR_2_2], 0.0033450810384 * [HL_1_relu].[NEUR_1_1] + 0.457493938659 * [HL_1_relu].[NEUR_1_2] + 3.12126512165 * [HL_1_relu].[NEUR_1_3] + -0.6216743077 AS [NEUR_2_3], 0.111088338556 * [HL_1_relu].[NEUR_1_1] + -0.504733487227 * [HL_1_relu].[NEUR_1_2] + -0.406624295664 * [HL_1_relu].[NEUR_1_3] + -0.796433042434 AS [NEUR_2_4], -0.622143988658 * [HL_1_relu].[NEUR_1_1] + 0.433206962107 * [HL_1_relu].[NEUR_1_2] + -0.658867446698 * [HL_1_relu].[NEUR_1_3] + -0.553791628092 AS [NEUR_2_5] 
FROM [HL_1_relu]), 
[HL_2_relu] AS 
(SELECT [HL_BA_2].[KEY] AS [KEY], CASE WHEN ([HL_BA_2].[NEUR_2_1] >= 0.0) THEN [HL_BA_2].[NEUR_2_1] ELSE 0.0 END AS [NEUR_2_1], CASE WHEN ([HL_BA_2].[NEUR_2_2] >= 0.0) THEN [HL_BA_2].[NEUR_2_2] ELSE 0.0 END AS [NEUR_2_2], CASE WHEN ([HL_BA_2].[NEUR_2_3] >= 0.0) THEN [HL_BA_2].[NEUR_2_3] ELSE 0.0 END AS [NEUR_2_3], CASE WHEN ([HL_BA_2].[NEUR_2_4] >= 0.0) THEN [HL_BA_2].[NEUR_2_4] ELSE 0.0 END AS [NEUR_2_4], CASE WHEN ([HL_BA_2].[NEUR_2_5] >= 0.0) THEN [HL_BA_2].[NEUR_2_5] ELSE 0.0 END AS [NEUR_2_5] 
FROM [HL_BA_2]), 
[OL_BA] AS 
(SELECT [HL_2_relu].[KEY] AS [KEY], 0.0629707051899 * [HL_2_relu].[NEUR_2_1] + -0.602260317327 * [HL_2_relu].[NEUR_2_2] + 1.00876301118 * [HL_2_relu].[NEUR_2_3] + 0.700829141101 * [HL_2_relu].[NEUR_2_4] + -0.248971566216 * [HL_2_relu].[NEUR_2_5] + -1.27052402577 AS [NEUR_3_1] 
FROM [HL_2_relu]), 
[OL_identity] AS 
(SELECT [OL_BA].[KEY] AS [KEY], [OL_BA].[NEUR_3_1] AS [NEUR_3_1] 
FROM [OL_BA])
 SELECT [OL_identity].[KEY] AS [KEY], [OL_identity].[NEUR_3_1] AS [Estimator] 
FROM [OL_identity]