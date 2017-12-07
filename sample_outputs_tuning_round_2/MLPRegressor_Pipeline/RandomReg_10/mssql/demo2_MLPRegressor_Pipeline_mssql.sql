-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.166809472981 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN -0.163512719944 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.19149292241 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.0583848447531 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN -0.0993320516212 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.212931216605 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.04786556869 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.0507869895908 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN -0.191319922591 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.199404056775 ELSE [ADS].[Feature_9] END AS impter_11 
FROM [RandomReg_10] AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 0.166809472981) / 1.0289835997 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - -0.163512719944) / 0.991581253505 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 0.19149292241) / 0.932114762915 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - 0.0583848447531) / 1.08557293295 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - -0.0993320516212) / 1.07439044129 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - 0.212931216605) / 0.935807438189 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 0.04786556869) / 1.13635740906 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - 0.0507869895908) / 0.97254574601 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - -0.191319922591) / 1.14159746779 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - 0.199404056775) / 0.882245682091 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
[IL] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CAST([ADS_sca_2_OUT].scaler_2 AS FLOAT) AS scaler_2, CAST([ADS_sca_2_OUT].scaler_3 AS FLOAT) AS scaler_3, CAST([ADS_sca_2_OUT].scaler_4 AS FLOAT) AS scaler_4, CAST([ADS_sca_2_OUT].scaler_5 AS FLOAT) AS scaler_5, CAST([ADS_sca_2_OUT].scaler_6 AS FLOAT) AS scaler_6, CAST([ADS_sca_2_OUT].scaler_7 AS FLOAT) AS scaler_7, CAST([ADS_sca_2_OUT].scaler_8 AS FLOAT) AS scaler_8, CAST([ADS_sca_2_OUT].scaler_9 AS FLOAT) AS scaler_9, CAST([ADS_sca_2_OUT].scaler_10 AS FLOAT) AS scaler_10, CAST([ADS_sca_2_OUT].scaler_11 AS FLOAT) AS scaler_11 
FROM [ADS_sca_2_OUT]), 
[HL_BA_1] AS 
(SELECT [IL].[KEY] AS [KEY], -1.26526283838 * [IL].scaler_2 + -2.66818046433 * [IL].scaler_3 + -3.15823791206 * [IL].scaler_4 + -1.33854818886 * [IL].scaler_5 + -2.05776554863 * [IL].scaler_6 + -2.84417541907 * [IL].scaler_7 + -1.37926506718 * [IL].scaler_8 + -1.4114816588 * [IL].scaler_9 + -3.356484044 * [IL].scaler_10 + -1.91724377026 * [IL].scaler_11 + -0.649728152587 AS [NEUR_1_1], -0.0413328514239 * [IL].scaler_2 + -0.949721922509 * [IL].scaler_3 + -1.51080688774 * [IL].scaler_4 + 0.60725311813 * [IL].scaler_5 + -0.105302069351 * [IL].scaler_6 + -0.0162593538253 * [IL].scaler_7 + -0.686702996745 * [IL].scaler_8 + -0.659594957728 * [IL].scaler_9 + -0.421846267721 * [IL].scaler_10 + -0.446347841509 * [IL].scaler_11 + -0.772021708502 AS [NEUR_1_2], 1.71462687885 * [IL].scaler_2 + 3.61581964617 * [IL].scaler_3 + 4.27984376011 * [IL].scaler_4 + 1.81403777515 * [IL].scaler_5 + 2.78865104928 * [IL].scaler_6 + 3.8542759479 * [IL].scaler_7 + 1.86906803615 * [IL].scaler_8 + 1.91274435561 * [IL].scaler_9 + 4.54856554413 * [IL].scaler_10 + 2.59820887072 * [IL].scaler_11 + 1.0975270096 AS [NEUR_1_3] 
FROM [IL]), 
[HL_1_relu] AS 
(SELECT [HL_BA_1].[KEY] AS [KEY], CASE WHEN ([HL_BA_1].[NEUR_1_1] >= 0.0) THEN [HL_BA_1].[NEUR_1_1] ELSE 0.0 END AS [NEUR_1_1], CASE WHEN ([HL_BA_1].[NEUR_1_2] >= 0.0) THEN [HL_BA_1].[NEUR_1_2] ELSE 0.0 END AS [NEUR_1_2], CASE WHEN ([HL_BA_1].[NEUR_1_3] >= 0.0) THEN [HL_BA_1].[NEUR_1_3] ELSE 0.0 END AS [NEUR_1_3] 
FROM [HL_BA_1]), 
[HL_BA_2] AS 
(SELECT [HL_1_relu].[KEY] AS [KEY], -0.741714792318 * [HL_1_relu].[NEUR_1_1] + 0.440055458908 * [HL_1_relu].[NEUR_1_2] + 0.43005225427 * [HL_1_relu].[NEUR_1_3] + -0.254512596532 AS [NEUR_2_1], 4.99564515351 * [HL_1_relu].[NEUR_1_1] + 8.20757835303e-06 * [HL_1_relu].[NEUR_1_2] + -0.506498415217 * [HL_1_relu].[NEUR_1_3] + -0.672026054695 AS [NEUR_2_2], -1.99638740106 * [HL_1_relu].[NEUR_1_1] + -1.01660123541 * [HL_1_relu].[NEUR_1_2] + 4.95939745363 * [HL_1_relu].[NEUR_1_3] + -0.16279527468 AS [NEUR_2_3], -2.24694890854 * [HL_1_relu].[NEUR_1_1] + -0.50474009865 * [HL_1_relu].[NEUR_1_2] + -0.40662962197 * [HL_1_relu].[NEUR_1_3] + -1.106754443 AS [NEUR_2_4], -0.632700414721 * [HL_1_relu].[NEUR_1_1] + 0.552007705104 * [HL_1_relu].[NEUR_1_2] + -0.590170837065 * [HL_1_relu].[NEUR_1_3] + -0.480908036421 AS [NEUR_2_5] 
FROM [HL_1_relu]), 
[HL_2_relu] AS 
(SELECT [HL_BA_2].[KEY] AS [KEY], CASE WHEN ([HL_BA_2].[NEUR_2_1] >= 0.0) THEN [HL_BA_2].[NEUR_2_1] ELSE 0.0 END AS [NEUR_2_1], CASE WHEN ([HL_BA_2].[NEUR_2_2] >= 0.0) THEN [HL_BA_2].[NEUR_2_2] ELSE 0.0 END AS [NEUR_2_2], CASE WHEN ([HL_BA_2].[NEUR_2_3] >= 0.0) THEN [HL_BA_2].[NEUR_2_3] ELSE 0.0 END AS [NEUR_2_3], CASE WHEN ([HL_BA_2].[NEUR_2_4] >= 0.0) THEN [HL_BA_2].[NEUR_2_4] ELSE 0.0 END AS [NEUR_2_4], CASE WHEN ([HL_BA_2].[NEUR_2_5] >= 0.0) THEN [HL_BA_2].[NEUR_2_5] ELSE 0.0 END AS [NEUR_2_5] 
FROM [HL_BA_2]), 
[OL_BA] AS 
(SELECT [HL_2_relu].[KEY] AS [KEY], 0.175779371682 * [HL_2_relu].[NEUR_2_1] + -5.59058366988 * [HL_2_relu].[NEUR_2_2] + 4.14036676385 * [HL_2_relu].[NEUR_2_3] + 0.679715195707 * [HL_2_relu].[NEUR_2_4] + -0.298931698269 * [HL_2_relu].[NEUR_2_5] + 4.50280932894 AS [NEUR_3_1] 
FROM [HL_2_relu]), 
[OL_identity] AS 
(SELECT [OL_BA].[KEY] AS [KEY], [OL_BA].[NEUR_3_1] AS [NEUR_3_1] 
FROM [OL_BA])
 SELECT [OL_identity].[KEY] AS [KEY], [OL_identity].[NEUR_3_1] AS [Estimator] 
FROM [OL_identity]