-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH dummy_class_reg_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 499.092884465 AS "Constant" 
FROM freidman2 AS "ADS")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte