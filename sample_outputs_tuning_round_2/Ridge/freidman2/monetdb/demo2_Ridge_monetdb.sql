-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.946971914345613 * "ADS"."Feature_0" + 0.508725859002448 * "ADS"."Feature_1" + 812.7667142899859 * "ADS"."Feature_2" + 9.07512322642097 * "ADS"."Feature_3" + -510.915071149 AS "Estimator" 
FROM freidman2 AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte