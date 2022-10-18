-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDRegressor
-- Dataset : freidman3
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3" 
FROM freidman3 AS "ADS"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", -624958015133.2701 * linear_input."Feature_0" + -1317695992432.5093 * linear_input."Feature_1" + -64588437409.74149 * linear_input."Feature_2" + 587285836477.814 * linear_input."Feature_3" + 41029333373.82739 AS "Estimator" 
FROM linear_input)
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte