-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [IL] AS 
(SELECT [ADS].[KEY] AS [KEY], CAST([ADS].[Feature_0] AS FLOAT) AS [Feature_0], CAST([ADS].[Feature_1] AS FLOAT) AS [Feature_1], CAST([ADS].[Feature_2] AS FLOAT) AS [Feature_2], CAST([ADS].[Feature_3] AS FLOAT) AS [Feature_3], CAST([ADS].[Feature_4] AS FLOAT) AS [Feature_4], CAST([ADS].[Feature_5] AS FLOAT) AS [Feature_5], CAST([ADS].[Feature_6] AS FLOAT) AS [Feature_6], CAST([ADS].[Feature_7] AS FLOAT) AS [Feature_7], CAST([ADS].[Feature_8] AS FLOAT) AS [Feature_8], CAST([ADS].[Feature_9] AS FLOAT) AS [Feature_9] 
FROM diabetes AS [ADS]), 
[HL_BA_1] AS 
(SELECT [IL].[KEY] AS [KEY], -0.0987539662401 * [IL].[Feature_0] + -0.433906885637 * [IL].[Feature_1] + -0.537408684664 * [IL].[Feature_2] + -0.601011988342 * [IL].[Feature_3] + 0.255063768588 * [IL].[Feature_4] + 0.527783822547 * [IL].[Feature_5] + -0.267763462834 * [IL].[Feature_6] + -0.0544380689948 * [IL].[Feature_7] + -0.0216452215263 * [IL].[Feature_8] + -0.236161052642 * [IL].[Feature_9] + -0.317960748727 AS [NEUR_1_1], 0.131579731574 * [IL].[Feature_0] + 0.00842815564145 * [IL].[Feature_1] + -0.423192837273 * [IL].[Feature_2] + 0.360301658367 * [IL].[Feature_3] + 0.189731206203 * [IL].[Feature_4] + 0.508990313414 * [IL].[Feature_5] + -0.303407226364 * [IL].[Feature_6] + -0.649025589012 * [IL].[Feature_7] + 0.572676612668 * [IL].[Feature_8] + -0.0959637229325 * [IL].[Feature_9] + -0.415209573684 AS [NEUR_1_2], 0.0160149280605 * [IL].[Feature_0] + -7.47581666421 * [IL].[Feature_1] + 50.6542511977 * [IL].[Feature_2] + 19.290001707 * [IL].[Feature_3] + -7.74903863008 * [IL].[Feature_4] + -25.9831812717 * [IL].[Feature_5] + -7.14853197581 * [IL].[Feature_6] + 12.2557273582 * [IL].[Feature_7] + 43.9801374802 * [IL].[Feature_8] + 19.0830963788 * [IL].[Feature_9] + 15.316412029 AS [NEUR_1_3] 
FROM [IL]), 
[HL_1_relu] AS 
(SELECT [HL_BA_1].[KEY] AS [KEY], CASE WHEN ([HL_BA_1].[NEUR_1_1] >= 0.0) THEN [HL_BA_1].[NEUR_1_1] ELSE 0.0 END AS [NEUR_1_1], CASE WHEN ([HL_BA_1].[NEUR_1_2] >= 0.0) THEN [HL_BA_1].[NEUR_1_2] ELSE 0.0 END AS [NEUR_1_2], CASE WHEN ([HL_BA_1].[NEUR_1_3] >= 0.0) THEN [HL_BA_1].[NEUR_1_3] ELSE 0.0 END AS [NEUR_1_3] 
FROM [HL_BA_1]), 
[HL_BA_2] AS 
(SELECT [HL_1_relu].[KEY] AS [KEY], -0.740627183196 * [HL_1_relu].[NEUR_1_1] + 0.591462903487 * [HL_1_relu].[NEUR_1_2] + -0.243096758685 * [HL_1_relu].[NEUR_1_3] + -0.267483117094 AS [NEUR_2_1], -0.149392991287 * [HL_1_relu].[NEUR_1_1] + 0.665180317364 * [HL_1_relu].[NEUR_1_2] + -1.43665098209 * [HL_1_relu].[NEUR_1_3] + 6.24158245602 AS [NEUR_2_2], 0.00334512028778 * [HL_1_relu].[NEUR_1_1] + 0.457768398908 * [HL_1_relu].[NEUR_1_2] + 16.875743843 * [HL_1_relu].[NEUR_1_3] + -1.73069327507 AS [NEUR_2_3], 0.111089642007 * [HL_1_relu].[NEUR_1_1] + -0.504739409498 * [HL_1_relu].[NEUR_1_2] + -0.406629066774 * [HL_1_relu].[NEUR_1_3] + -0.796433042434 AS [NEUR_2_4], -0.622151288559 * [HL_1_relu].[NEUR_1_1] + 0.433212045123 * [HL_1_relu].[NEUR_1_2] + -0.658875177493 * [HL_1_relu].[NEUR_1_3] + -0.553791628092 AS [NEUR_2_5] 
FROM [HL_1_relu]), 
[HL_2_relu] AS 
(SELECT [HL_BA_2].[KEY] AS [KEY], CASE WHEN ([HL_BA_2].[NEUR_2_1] >= 0.0) THEN [HL_BA_2].[NEUR_2_1] ELSE 0.0 END AS [NEUR_2_1], CASE WHEN ([HL_BA_2].[NEUR_2_2] >= 0.0) THEN [HL_BA_2].[NEUR_2_2] ELSE 0.0 END AS [NEUR_2_2], CASE WHEN ([HL_BA_2].[NEUR_2_3] >= 0.0) THEN [HL_BA_2].[NEUR_2_3] ELSE 0.0 END AS [NEUR_2_3], CASE WHEN ([HL_BA_2].[NEUR_2_4] >= 0.0) THEN [HL_BA_2].[NEUR_2_4] ELSE 0.0 END AS [NEUR_2_4], CASE WHEN ([HL_BA_2].[NEUR_2_5] >= 0.0) THEN [HL_BA_2].[NEUR_2_5] ELSE 0.0 END AS [NEUR_2_5] 
FROM [HL_BA_2]), 
[OL_BA] AS 
(SELECT [HL_2_relu].[KEY] AS [KEY], 0.0285943367359 * [HL_2_relu].[NEUR_2_1] + -2.57707126169 * [HL_2_relu].[NEUR_2_2] + 0.655086565601 * [HL_2_relu].[NEUR_2_3] + 0.700837364252 * [HL_2_relu].[NEUR_2_4] + -0.248974487514 * [HL_2_relu].[NEUR_2_5] + -16.9990116456 AS [NEUR_3_1] 
FROM [HL_2_relu]), 
[OL_identity] AS 
(SELECT [OL_BA].[KEY] AS [KEY], [OL_BA].[NEUR_3_1] AS [NEUR_3_1] 
FROM [OL_BA])
 SELECT [OL_identity].[KEY] AS [KEY], [OL_identity].[NEUR_3_1] AS [Estimator] 
FROM [OL_identity]