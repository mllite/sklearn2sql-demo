-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -808297167921.4402 * "ADS"."Feature_0" + -634015970954.684 * "ADS"."Feature_1" + 147232503402.33084 * "ADS"."Feature_2" + 7667852869.739894 * "ADS"."Feature_3" + -2158022545.766962 * "ADS"."Feature_4" + -50692385371.66679 * "ADS"."Feature_5" + -49414133194.80807 * "ADS"."Feature_6" + 80431427887.77673 * "ADS"."Feature_7" + -128867867316.45996 * "ADS"."Feature_8" + 230719371113.34622 * "ADS"."Feature_9" + 176391770102.4424 * "ADS"."Feature_10" + 369428667699.1467 * "ADS"."Feature_11" + -534119829614.8543 * "ADS"."Feature_12" + -3546894512.39 AS "Estimator" 
FROM boston AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte