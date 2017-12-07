-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH random_number_cte AS 
(SELECT "ADS"."KEY" AS "KEY", rand() AS uniform 
FROM "BinaryClass_100" AS "ADS"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.525) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 1 END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.525 AS "Proba_0", CASE WHEN (0.525 IS NULL) THEN 0.525 ELSE CASE WHEN (0.525 > 0.0) THEN log(0.525) ELSE -1.79769313486231e+308 END END AS "LogProba_0", 0.475 AS "Proba_1", CASE WHEN (0.475 IS NULL) THEN 0.475 ELSE CASE WHEN (0.475 > 0.0) THEN log(0.475) ELSE -1.79769313486231e+308 END END AS "LogProba_1", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM dummy_class_reg_cte