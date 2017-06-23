-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH random_number_cte AS 
(SELECT "ADS"."KEY" AS "KEY", dbms_random.value AS uniform 
FROM "BinaryClass_500" "ADS"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.32) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 1 END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.32 AS "Proba_0", CASE WHEN (0.32 IS NULL OR 0.32 > 0.0) THEN ln(0.32) ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", 0.68 AS "Proba_1", CASE WHEN (0.68 IS NULL OR 0.68 > 0.0) THEN ln(0.68) ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."Decision" AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM dummy_class_reg_cte