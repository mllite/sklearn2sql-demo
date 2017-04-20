-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 6.802816309816383 * "ADS"."Feature_0" + 5.883875364426474 * "ADS"."Feature_1" + 0.0 * "ADS"."Feature_2" + 8.896590582388118 * "ADS"."Feature_3" + 4.251204622307531 * "ADS"."Feature_4" + -0.6806549779364386 * "ADS"."Feature_5" + 0.0 * "ADS"."Feature_6" + 0.0 * "ADS"."Feature_7" + 0.0 * "ADS"."Feature_8" + 0.0 * "ADS"."Feature_9" + 2.16611878932 AS "Estimator" 
FROM "INPUT_DATA" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte