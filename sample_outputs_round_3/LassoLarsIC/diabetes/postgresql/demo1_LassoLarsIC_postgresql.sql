-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.0 * "ADS"."Feature_0" + -197.75650113515468 * "ADS"."Feature_1" + 522.26484701812 * "ADS"."Feature_2" + 297.15973688909213 * "ADS"."Feature_3" + -103.94624876691087 * "ADS"."Feature_4" + 0.0 * "ADS"."Feature_5" + -223.92603333530468 * "ADS"."Feature_6" + 0.0 * "ADS"."Feature_7" + 514.7494808475553 * "ADS"."Feature_8" + 54.76768063024772 * "ADS"."Feature_9" + 152.133484163 AS "Estimator" 
FROM "INPUT_DATA" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte