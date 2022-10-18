-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : Ridge
-- Dataset : california_housing
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE) AS "Feature_7" 
FROM california_housing AS "ADS"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", 0.43444207414134023 * linear_input."Feature_0" + 0.009117333194144088 * linear_input."Feature_1" + -0.10514324981891313 * linear_input."Feature_2" + 0.621045218920498 * linear_input."Feature_3" + -7.970660749714229e-06 * linear_input."Feature_4" + -0.004782511237908847 * linear_input."Feature_5" + -0.422956008245201 * linear_input."Feature_6" + -0.43584643113706234 * linear_input."Feature_7" + -37.000452110488894 AS "Estimator" 
FROM linear_input)
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte