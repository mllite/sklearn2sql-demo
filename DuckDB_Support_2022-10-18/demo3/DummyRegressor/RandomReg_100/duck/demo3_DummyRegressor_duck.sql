-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyRegressor
-- Dataset : RandomReg_100
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH dummy_class_reg_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -11.471614782695335 AS "Constant" 
FROM "RandomReg_100" AS "ADS")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte