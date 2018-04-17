-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH random_number_cte AS 
(SELECT "ADS"."KEY" AS "KEY", random() AS uniform 
FROM "BINARYCLASS_500" AS "ADS"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.4875) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 1 END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.4875 AS "Proba_0", CASE WHEN (0.4875 IS NULL OR 0.4875 > 0.0) THEN ln(0.4875) ELSE -1.79769313486231e+308 END AS "LogProba_0", 0.5125 AS "Proba_1", CASE WHEN (0.5125 IS NULL OR 0.5125 > 0.0) THEN ln(0.5125) ELSE -1.79769313486231e+308 END AS "LogProba_1", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM dummy_class_reg_cte