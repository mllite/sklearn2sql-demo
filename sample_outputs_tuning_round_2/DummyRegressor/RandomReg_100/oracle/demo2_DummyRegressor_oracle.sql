-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH dummy_class_reg_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -11.4716147827 AS "Constant" 
FROM "RandomReg_100" "ADS")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte