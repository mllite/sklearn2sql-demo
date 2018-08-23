-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier
-- Dataset : iris_date_tgt
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH random_number_cte AS 
(SELECT "ADS"."KEY" AS "KEY", random() AS uniform 
FROM iris_date_tgt AS "ADS"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= CAST(0.308333333333333 AS DOUBLE PRECISION)) THEN 1789-07-14T00:00:00.000000000 ELSE CASE WHEN (random_number_cte.uniform <= CAST(0.641666666666667 AS DOUBLE PRECISION)) THEN 1789-08-14T00:00:00.000000000 ELSE CASE WHEN (random_number_cte.uniform <= CAST(1.0 AS DOUBLE PRECISION)) THEN 1789-09-14T00:00:00.000000000 END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", CAST(0.308333333333333 AS DOUBLE PRECISION) AS "Proba_1789-07-14T00:00:00.000000000", CASE WHEN (CAST(0.308333333333333 AS DOUBLE PRECISION) IS NULL OR CAST(0.308333333333333 AS DOUBLE PRECISION) > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(CAST(0.308333333333333 AS DOUBLE PRECISION)) ELSE -1.79769313486231e+308 END AS "LogProba_1789-07-14T00:00:00.000000000", CAST(0.333333333333333 AS DOUBLE PRECISION) AS "Proba_1789-08-14T00:00:00.000000000", CASE WHEN (CAST(0.333333333333333 AS DOUBLE PRECISION) IS NULL OR CAST(0.333333333333333 AS DOUBLE PRECISION) > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(CAST(0.333333333333333 AS DOUBLE PRECISION)) ELSE -1.79769313486231e+308 END AS "LogProba_1789-08-14T00:00:00.000000000", CAST(0.358333333333333 AS DOUBLE PRECISION) AS "Proba_1789-09-14T00:00:00.000000000", CASE WHEN (CAST(0.358333333333333 AS DOUBLE PRECISION) IS NULL OR CAST(0.358333333333333 AS DOUBLE PRECISION) > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(CAST(0.358333333333333 AS DOUBLE PRECISION)) ELSE -1.79769313486231e+308 END AS "LogProba_1789-09-14T00:00:00.000000000", multinomial_cte.multinomial_expr AS "Decision", CASE WHEN (multinomial_cte.multinomial_expr = '1789-07-14T00:00:00.000000000') THEN NULL WHEN (multinomial_cte.multinomial_expr = '1789-08-14T00:00:00.000000000') THEN NULL WHEN (multinomial_cte.multinomial_expr = '1789-09-14T00:00:00.000000000') THEN NULL END AS "DecisionProba" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_1789-07-14T00:00:00.000000000", CAST(NULL AS DOUBLE PRECISION) AS "Score_1789-08-14T00:00:00.000000000", CAST(NULL AS DOUBLE PRECISION) AS "Score_1789-09-14T00:00:00.000000000", dummy_class_reg_cte."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", dummy_class_reg_cte."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", dummy_class_reg_cte."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", dummy_class_reg_cte."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", dummy_class_reg_cte."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", dummy_class_reg_cte."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", dummy_class_reg_cte."Decision" AS "Decision", dummy_class_reg_cte."DecisionProba" AS "DecisionProba" 
FROM dummy_class_reg_cte