-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.475205975162 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.481829516294 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.489628636578 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.499388069345 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.48991122186 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.433631083094 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.485135795726 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.465433133618 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.511111421369 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.423515718572 ELSE "ADS"."Feature_9" END AS impter_11 
FROM freidman1 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.475205975162) / 0.284192013193 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.481829516294) / 0.291518728428 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.489628636578) / 0.275386050451 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.499388069345) / 0.278916735453 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.48991122186) / 0.277417561822 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.433631083094) / 0.268070648648 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.485135795726) / 0.284759640282 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.465433133618) / 0.276590187383 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.511111421369) / 0.281241165978 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.423515718572) / 0.263850196704 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
linear_model_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 1.844693715038148 * "ADS_sca_2_OUT".scaler_2 + 2.5936083962019914 * "ADS_sca_2_OUT".scaler_3 + -0.18374874801874264 * "ADS_sca_2_OUT".scaler_4 + 2.640424645998057 * "ADS_sca_2_OUT".scaler_5 + 0.5596426609432629 * "ADS_sca_2_OUT".scaler_6 + -0.12667545059632426 * "ADS_sca_2_OUT".scaler_7 + -0.2682639129188917 * "ADS_sca_2_OUT".scaler_8 + 0.03430119770638464 * "ADS_sca_2_OUT".scaler_9 + -0.04224570243748343 * "ADS_sca_2_OUT".scaler_10 + -0.5259930783613553 * "ADS_sca_2_OUT".scaler_11 + 13.9769442876 AS "Estimator" 
FROM "ADS_sca_2_OUT")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte