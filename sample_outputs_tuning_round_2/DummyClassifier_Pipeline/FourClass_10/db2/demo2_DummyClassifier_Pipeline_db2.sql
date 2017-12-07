-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.00390337446303 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.61522322157 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0427962369143 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.77098195589 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.433007336249 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.0424956965794 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.298090801198 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.146722415073 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.0174694238466 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.115073314156 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "FourClass_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - -0.00390337446303) / 0.979506064018 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 0.61522322157) / 1.39008072362 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.0427962369143) / 1.49626851359 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.77098195589) / 2.33335610601 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - -0.433007336249) / 1.40297577726 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - -0.0424956965794) / 0.955809107687 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - -0.298090801198) / 1.01701318072 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.146722415073) / 1.60079853993 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - 0.0174694238466) / 1.14872963617 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - 0.115073314156) / 0.969091185734 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
random_number_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", random() AS uniform 
FROM "ADS_sca_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.225) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.475) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 0.725) THEN 2 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 3 END END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.225 AS "Proba_0", CASE WHEN (0.225 IS NULL OR 0.225 > 0.0) THEN ln(0.225) ELSE -1.79769313486231e+308 END AS "LogProba_0", 0.25 AS "Proba_1", CASE WHEN (0.25 IS NULL OR 0.25 > 0.0) THEN ln(0.25) ELSE -1.79769313486231e+308 END AS "LogProba_1", 0.25 AS "Proba_2", CASE WHEN (0.25 IS NULL OR 0.25 > 0.0) THEN ln(0.25) ELSE -1.79769313486231e+308 END AS "LogProba_2", 0.275 AS "Proba_3", CASE WHEN (0.275 IS NULL OR 0.275 > 0.0) THEN ln(0.275) ELSE -1.79769313486231e+308 END AS "LogProba_3", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", CAST(NULL AS DOUBLE) AS "Score_2", CAST(NULL AS DOUBLE) AS "Score_3", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."Proba_2" AS "Proba_2", dummy_class_reg_cte."Proba_3" AS "Proba_3", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."LogProba_2" AS "LogProba_2", dummy_class_reg_cte."LogProba_3" AS "LogProba_3", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM dummy_class_reg_cte