-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.6794176527226704 * "ADS"."Feature_0" + 0.44684405070493327 * "ADS"."Feature_1" + 859.9730939978742 * "ADS"."Feature_2" + 6.152857197777787 * "ADS"."Feature_3" + -470.788183665 AS "Estimator" 
FROM freidman2 AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte