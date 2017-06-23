-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH random_number_cte AS 
(SELECT "ADS"."KEY" AS "KEY", random() AS uniform 
FROM "FourClass_500" AS "ADS"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.32) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.64) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 0.76) THEN 2 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 3 END END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.32 AS "Proba_0", CASE WHEN (0.32 IS NULL OR 0.32 > 0.0) THEN ln(0.32) ELSE -1.79769313486231e+308 END AS "LogProba_0", 0.32 AS "Proba_1", CASE WHEN (0.32 IS NULL OR 0.32 > 0.0) THEN ln(0.32) ELSE -1.79769313486231e+308 END AS "LogProba_1", 0.12 AS "Proba_2", CASE WHEN (0.12 IS NULL OR 0.12 > 0.0) THEN ln(0.12) ELSE -1.79769313486231e+308 END AS "LogProba_2", 0.24 AS "Proba_3", CASE WHEN (0.24 IS NULL OR 0.24 > 0.0) THEN ln(0.24) ELSE -1.79769313486231e+308 END AS "LogProba_3", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", CAST(NULL AS DOUBLE) AS "Score_2", CAST(NULL AS DOUBLE) AS "Score_3", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."Proba_2" AS "Proba_2", dummy_class_reg_cte."Proba_3" AS "Proba_3", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."LogProba_2" AS "LogProba_2", dummy_class_reg_cte."LogProba_3" AS "LogProba_3", dummy_class_reg_cte."Decision" AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM dummy_class_reg_cte