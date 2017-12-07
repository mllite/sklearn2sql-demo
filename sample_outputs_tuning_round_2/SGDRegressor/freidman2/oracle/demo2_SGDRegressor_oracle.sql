-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 1782675969739.3997 * "ADS"."Feature_0" + -464992977270.3436 * "ADS"."Feature_1" + 19746795462.62453 * "ADS"."Feature_2" + -141920526452.2302 * "ADS"."Feature_3" + -18864259785.1 AS "Estimator" 
FROM freidman2 "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte