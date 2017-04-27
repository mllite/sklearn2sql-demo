-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 1.9642603445865976 * "ADS"."Feature_0" + 0.1851550336785802 * "ADS"."Feature_1" + 5.873662779504676 * "ADS"."Feature_2" + 4.895538252264191 * "ADS"."Feature_3" + 2.6422447510327887 * "ADS"."Feature_4" + 2.4640701829065956 * "ADS"."Feature_5" + -4.120421672174107 * "ADS"."Feature_6" + 4.973826441863683 * "ADS"."Feature_7" + 5.648652446040128 * "ADS"."Feature_8" + 4.513155364476248 * "ADS"."Feature_9" + 143.906199505 AS "Estimator" 
FROM diabetes "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte