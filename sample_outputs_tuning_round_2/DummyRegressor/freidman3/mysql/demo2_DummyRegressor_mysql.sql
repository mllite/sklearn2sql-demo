-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH dummy_class_reg_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, 1.36123420303 AS `Constant` 
FROM freidman3 AS `ADS`)
 SELECT dummy_class_reg_cte.`KEY` AS `KEY`, dummy_class_reg_cte.`Constant` AS `Estimator` 
FROM dummy_class_reg_cte