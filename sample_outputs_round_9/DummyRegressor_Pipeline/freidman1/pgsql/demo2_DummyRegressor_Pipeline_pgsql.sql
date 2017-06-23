-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.571437811354 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.382666238013 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.572691272422 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.49696190088 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.451024542384 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.481756971335 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.500052942379 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.479198857297 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.507387853051 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.628661567941 ELSE "ADS"."Feature_9" END AS impter_11 
FROM freidman1 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.571437811354) / 0.271926055138 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.382666238013) / 0.24530412971 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.572691272422) / 0.305022968027 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.49696190088) / 0.312889400468 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.451024542384) / 0.24602253009 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.481756971335) / 0.286861434558 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.500052942379) / 0.284593201265 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.479198857297) / 0.318231552426 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.507387853051) / 0.213964399112 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.628661567941) / 0.260134905409 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
dummy_class_reg_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 14.6015539014 AS "Constant" 
FROM "ADS_sca_2_OUT")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte