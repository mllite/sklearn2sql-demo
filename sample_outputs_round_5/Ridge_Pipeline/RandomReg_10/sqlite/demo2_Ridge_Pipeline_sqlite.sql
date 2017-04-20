-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.167203446952 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.0037936286876 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -0.00477382137908 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.1599542957 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.222697457973 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.107021667841 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.138999503752 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0441771373979 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.0495227445294 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.134037963611 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - -0.167203446952) / 0.939885389242 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.0037936286876) / 1.0011431875 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - -0.00477382137908) / 0.831910980111 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - -0.1599542957) / 0.926766281857 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.222697457973) / 1.09273309237 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.107021667841) / 1.00529163226 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.138999503752) / 0.911910600553 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.0441771373979) / 1.05505105475 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.0495227445294) / 0.935749058559 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.134037963611) / 1.0392209387 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
linear_model_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 33.92124739379579 * "ADS_sca_2_OUT".scaler_2 + 74.0829833766836 * "ADS_sca_2_OUT".scaler_3 + 56.49258628573706 * "ADS_sca_2_OUT".scaler_4 + 85.08497574844552 * "ADS_sca_2_OUT".scaler_5 + 14.999204615515195 * "ADS_sca_2_OUT".scaler_6 + 84.72987541347554 * "ADS_sca_2_OUT".scaler_7 + 26.63315291854127 * "ADS_sca_2_OUT".scaler_8 + 81.38808686158534 * "ADS_sca_2_OUT".scaler_9 + 48.539177292640424 * "ADS_sca_2_OUT".scaler_10 + 90.0228259233711 * "ADS_sca_2_OUT".scaler_11 + -0.242903356854 AS "Estimator" 
FROM "ADS_sca_2_OUT")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte