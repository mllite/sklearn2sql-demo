-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -0.003022761772999859 * "ADS"."Feature_0" + 0.0001863322114275788 * "ADS"."Feature_1" + 0.259128880950165 * "ADS"."Feature_2" + 0.008685827555608575 * "ADS"."Feature_3" + 1.18029954621 AS "Estimator" 
FROM freidman3 AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte