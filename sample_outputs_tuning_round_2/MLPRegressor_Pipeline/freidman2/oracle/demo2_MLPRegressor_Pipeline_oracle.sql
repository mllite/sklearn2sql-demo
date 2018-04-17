-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.7912812221 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.967283308 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.531000909998 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.13996715205 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman2 "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 43.7912812221) / 26.0356235762 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 945.967283308) / 461.455276615 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.531000909998) / 0.290186328214 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.13996715205) / 3.07291724256 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS FLOAT) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS FLOAT) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS FLOAT) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS FLOAT) AS scaler_output_5 
FROM "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -4.61618381512 * "IL".scaler_output_2 + 0.703196767971 * "IL".scaler_output_3 + 2.47466042844 * "IL".scaler_output_4 + -1.71363551649 * "IL".scaler_output_5 + -0.126403545542 AS "NEUR_1_1", -5.27104503451 * "IL".scaler_output_2 + 4.77231761038 * "IL".scaler_output_3 + 7.72031630144 * "IL".scaler_output_4 + -1.19356739346 * "IL".scaler_output_5 + 3.83888703305 AS "NEUR_1_2", 7.79497026568 * "IL".scaler_output_2 + 13.0023744548 * "IL".scaler_output_3 + 10.8907569204 * "IL".scaler_output_4 + 2.80582401933 * "IL".scaler_output_5 + 8.89350205189 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", -4.96601270437 * "HL_1_relu"."NEUR_1_1" + 2.35844873097 * "HL_1_relu"."NEUR_1_2" + -0.87400903991 * "HL_1_relu"."NEUR_1_3" + 4.58002067621 AS "NEUR_2_1", -0.0382702822112 * "HL_1_relu"."NEUR_1_1" + -1.10035296468 * "HL_1_relu"."NEUR_1_2" + -2.28421625324 * "HL_1_relu"."NEUR_1_3" + -1.14818662041 AS "NEUR_2_2", -0.300721438359 * "HL_1_relu"."NEUR_1_1" + -0.827349788139 * "HL_1_relu"."NEUR_1_2" + -0.301047909633 * "HL_1_relu"."NEUR_1_3" + -0.0103942825038 AS "NEUR_2_3", -0.341333297173 * "HL_1_relu"."NEUR_1_1" + -0.518902612854 * "HL_1_relu"."NEUR_1_2" + -0.122330409126 * "HL_1_relu"."NEUR_1_3" + -0.740628349607 AS "NEUR_2_4", -0.061924106673 * "HL_1_relu"."NEUR_1_1" + 10.9050650458 * "HL_1_relu"."NEUR_1_2" + 8.05916449503 * "HL_1_relu"."NEUR_1_3" + 7.61939128038 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 14.9775479409 * "HL_2_relu"."NEUR_2_1" + 1.50793319358 * "HL_2_relu"."NEUR_2_2" + -0.718399515278 * "HL_2_relu"."NEUR_2_3" + 0.682963566875 * "HL_2_relu"."NEUR_2_4" + 2.37966161218 * "HL_2_relu"."NEUR_2_5" + 54.9634443147 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"