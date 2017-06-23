-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.571437811354 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.382666238013 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.572691272422 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.49696190088 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.451024542384 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.481756971335 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.500052942379 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.479198857297 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.507387853051 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.628661567941 ELSE "ADS"."Feature_9" END AS impter_11 
FROM freidman1 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.571437811354) / 0.271926055138 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.382666238013) / 0.24530412971 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.572691272422) / 0.305022968027 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.49696190088) / 0.312889400468 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.451024542384) / 0.24602253009 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.481756971335) / 0.286861434558 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.500052942379) / 0.284593201265 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.479198857297) / 0.318231552426 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.507387853051) / 0.213964399112 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.628661567941) / 0.260134905409 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS FLOAT) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS FLOAT) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS FLOAT) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS FLOAT) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS FLOAT) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS FLOAT) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS FLOAT) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS FLOAT) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS FLOAT) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS FLOAT) AS scaler_11 
FROM "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", 0.377224400671 * "IL".scaler_2 + 0.713615807605 * "IL".scaler_3 + -0.581511666908 * "IL".scaler_4 + -0.246548806349 * "IL".scaler_5 + 0.103198750303 * "IL".scaler_6 + 0.935874567138 * "IL".scaler_7 + -1.55262211552 * "IL".scaler_8 + 0.639229092545 * "IL".scaler_9 + 0.947696459863 * "IL".scaler_10 + -0.459852517811 * "IL".scaler_11 + 0.0873158781677 AS "NEUR_1_1", 0.752151362815 * "IL".scaler_2 + 0.235411666764 * "IL".scaler_3 + -0.711744763722 * "IL".scaler_4 + 0.162502373672 * "IL".scaler_5 + -0.751477454851 * "IL".scaler_6 + 0.716426381145 * "IL".scaler_7 + -0.988419076474 * "IL".scaler_8 + -0.855864103768 * "IL".scaler_9 + -0.012069050361 * "IL".scaler_10 + 0.317099150754 * "IL".scaler_11 + -1.27487244596 AS "NEUR_1_2", 0.368672540138 * "IL".scaler_2 + 1.06159008936 * "IL".scaler_3 + 0.434906802418 * "IL".scaler_4 + 1.57065814435 * "IL".scaler_5 + 0.589546603267 * "IL".scaler_6 + -0.264842768488 * "IL".scaler_7 + 0.72058997149 * "IL".scaler_8 + -0.186966541022 * "IL".scaler_9 + -0.815725377998 * "IL".scaler_10 + -0.103697191529 * "IL".scaler_11 + 2.63768801998 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", -0.765254665082 * "HL_1_relu"."NEUR_1_1" + 0.418648939121 * "HL_1_relu"."NEUR_1_2" + -0.181272814557 * "HL_1_relu"."NEUR_1_3" + -0.29430698653 AS "NEUR_2_1", -0.614456852992 * "HL_1_relu"."NEUR_1_1" + -0.15018486905 * "HL_1_relu"."NEUR_1_2" + -0.876042819024 * "HL_1_relu"."NEUR_1_3" + -1.06207254109 AS "NEUR_2_2", 1.22674787935 * "HL_1_relu"."NEUR_1_1" + 1.25747262704 * "HL_1_relu"."NEUR_1_2" + 1.84504993773 * "HL_1_relu"."NEUR_1_3" + 0.86691471051 AS "NEUR_2_3", 0.111081833968 * "HL_1_relu"."NEUR_1_1" + -0.504703933421 * "HL_1_relu"."NEUR_1_2" + -0.406600486474 * "HL_1_relu"."NEUR_1_3" + -0.796433042434 AS "NEUR_2_4", -0.622107560081 * "HL_1_relu"."NEUR_1_1" + 0.300544941847 * "HL_1_relu"."NEUR_1_2" + -0.658828867841 * "HL_1_relu"."NEUR_1_3" + -0.620601039482 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.190941035032 * "HL_2_relu"."NEUR_2_1" + 0.0771666526505 * "HL_2_relu"."NEUR_2_2" + 1.36939396637 * "HL_2_relu"."NEUR_2_3" + 0.70078810525 * "HL_2_relu"."NEUR_2_4" + -0.169728698403 * "HL_2_relu"."NEUR_2_5" + 3.48748790895 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"