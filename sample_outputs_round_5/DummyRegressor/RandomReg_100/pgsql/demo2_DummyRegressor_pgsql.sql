-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH dummy_class_reg_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -2.33972644154 AS "Constant" 
FROM "RandomReg_100" AS "ADS")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte