-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier
-- Dataset : FourClass_10
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH random_number_cte AS 
(SELECT "ADS"."KEY" AS "KEY", random() AS uniform 
FROM "FourClass_10" AS "ADS"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= CAST(0.225 AS DOUBLE PRECISION)) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= CAST(0.475 AS DOUBLE PRECISION)) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= CAST(0.725 AS DOUBLE PRECISION)) THEN 2 ELSE CASE WHEN (random_number_cte.uniform <= CAST(1.0 AS DOUBLE PRECISION)) THEN 3 END END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", CAST(0.225 AS DOUBLE PRECISION) AS "Proba_0", CASE WHEN (CAST(0.225 AS DOUBLE PRECISION) IS NULL OR CAST(0.225 AS DOUBLE PRECISION) > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(CAST(0.225 AS DOUBLE PRECISION)) ELSE -1.79769313486231e+308 END AS "LogProba_0", CAST(0.25 AS DOUBLE PRECISION) AS "Proba_1", CASE WHEN (CAST(0.25 AS DOUBLE PRECISION) IS NULL OR CAST(0.25 AS DOUBLE PRECISION) > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(CAST(0.25 AS DOUBLE PRECISION)) ELSE -1.79769313486231e+308 END AS "LogProba_1", CAST(0.25 AS DOUBLE PRECISION) AS "Proba_2", CASE WHEN (CAST(0.25 AS DOUBLE PRECISION) IS NULL OR CAST(0.25 AS DOUBLE PRECISION) > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(CAST(0.25 AS DOUBLE PRECISION)) ELSE -1.79769313486231e+308 END AS "LogProba_2", CAST(0.275 AS DOUBLE PRECISION) AS "Proba_3", CASE WHEN (CAST(0.275 AS DOUBLE PRECISION) IS NULL OR CAST(0.275 AS DOUBLE PRECISION) > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(CAST(0.275 AS DOUBLE PRECISION)) ELSE -1.79769313486231e+308 END AS "LogProba_3", multinomial_cte.multinomial_expr AS "Decision", CASE WHEN (multinomial_cte.multinomial_expr = 0) THEN NULL WHEN (multinomial_cte.multinomial_expr = 1) THEN NULL WHEN (multinomial_cte.multinomial_expr = 2) THEN NULL WHEN (multinomial_cte.multinomial_expr = 3) THEN NULL END AS "DecisionProba" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", CAST(NULL AS DOUBLE PRECISION) AS "Score_2", CAST(NULL AS DOUBLE PRECISION) AS "Score_3", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."Proba_2" AS "Proba_2", dummy_class_reg_cte."Proba_3" AS "Proba_3", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."LogProba_2" AS "LogProba_2", dummy_class_reg_cte."LogProba_3" AS "LogProba_3", dummy_class_reg_cte."Decision" AS "Decision", dummy_class_reg_cte."DecisionProba" AS "DecisionProba" 
FROM dummy_class_reg_cte