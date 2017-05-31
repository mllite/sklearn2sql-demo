-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 2.0230816883883542 * "ADS"."Feature_0" + 1.5736130911542952 * "ADS"."Feature_1" + 1.8295949605387338 * "ADS"."Feature_2" + 2.1156497485836843 * "ADS"."Feature_3" + 1.6658521733799845 * "ADS"."Feature_4" + 1.7963989071567037 * "ADS"."Feature_5" + 1.6504022791231958 * "ADS"."Feature_6" + 1.377614593291605 * "ADS"."Feature_7" + 1.6098615836489514 * "ADS"."Feature_8" + 2.0319342534114884 * "ADS"."Feature_9" + 3.30122630482 AS "Estimator" 
FROM freidman1 "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte