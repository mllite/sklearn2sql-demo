-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : Ridge
-- Dataset : freidman1
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE) AS "Feature_9" 
FROM "FREIDMAN1" AS "ADS"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", 4.299806045102462 * linear_input."Feature_0" + 8.993440870729417 * linear_input."Feature_1" + -0.20654279807667578 * linear_input."Feature_2" + 8.127827178822459 * linear_input."Feature_3" + 4.547780646205411 * linear_input."Feature_4" + 0.11673630744342195 * linear_input."Feature_5" + -0.19877248476425735 * linear_input."Feature_6" + 0.9405867043958552 * linear_input."Feature_7" + -0.016566233303403313 * linear_input."Feature_8" + -1.0311617812953653 * linear_input."Feature_9" + 2.5740381625685167 AS "Estimator" 
FROM linear_input)
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte