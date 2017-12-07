-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8475 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.03666666667 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.845 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM iris AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 5.8475) / 0.827039146595 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 3.03666666667) / 0.436259352017 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 3.845) / 1.7098172417 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 1.245) / 0.749872211336 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
random_number_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", random AS uniform 
FROM "ADS_sca_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.308333333333) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.641666666667) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 2 END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.308333333333 AS "Proba_0", CASE WHEN (0.308333333333 IS NULL OR 0.308333333333 > 0.0) THEN ln(0.308333333333) ELSE -1.79769313486231e+308 END AS "LogProba_0", 0.333333333333 AS "Proba_1", CASE WHEN (0.333333333333 IS NULL OR 0.333333333333 > 0.0) THEN ln(0.333333333333) ELSE -1.79769313486231e+308 END AS "LogProba_1", 0.358333333333 AS "Proba_2", CASE WHEN (0.358333333333 IS NULL OR 0.358333333333 > 0.0) THEN ln(0.358333333333) ELSE -1.79769313486231e+308 END AS "LogProba_2", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."Proba_2" AS "Proba_2", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."LogProba_2" AS "LogProba_2", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM dummy_class_reg_cte