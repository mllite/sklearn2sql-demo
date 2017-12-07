-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 33.995127705742 * "ADS"."Feature_0" + 74.27149691595135 * "ADS"."Feature_1" + 93.46619498786532 * "ADS"."Feature_2" + 34.27298880225485 * "ADS"."Feature_3" + 53.03396721690206 * "ADS"."Feature_4" + 83.71233951181253 * "ADS"."Feature_5" + 33.4484690010958 * "ADS"."Feature_6" + 40.102710378726684 * "ADS"."Feature_7" + 81.37088972564806 * "ADS"."Feature_8" + 59.42534354923733 * "ADS"."Feature_9" + 0.503834205546 AS "Estimator" 
FROM "RandomReg_10" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte