-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 1.3073489468104258 * "ADS"."Feature_0" + -207.19481363268739 * "ADS"."Feature_1" + 489.6910800850081 * "ADS"."Feature_2" + 301.7694373160282 * "ADS"."Feature_3" + -83.46607377280448 * "ADS"."Feature_4" + -70.82809550532917 * "ADS"."Feature_5" + -188.68016350975725 * "ADS"."Feature_6" + 115.7127025041538 * "ADS"."Feature_7" + 443.8140541197288 * "ADS"."Feature_8" + 86.7485394427211 * "ADS"."Feature_9" + 152.133484163 AS "Estimator" 
FROM "INPUT_DATA" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte