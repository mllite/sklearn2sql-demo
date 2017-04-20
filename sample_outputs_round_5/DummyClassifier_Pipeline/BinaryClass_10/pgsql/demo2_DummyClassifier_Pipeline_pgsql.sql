-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.0530205303458 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.1368044424 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -0.0822560977158 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.154390816058 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.138371756634 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.119135591183 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0506035704472 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.1393027742 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.15912798763 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.134021785665 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - -0.0530205303458) / 1.38984393033 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.1368044424) / 0.988447620625 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - -0.0822560977158) / 0.868764974331 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.154390816058) / 0.937721289695 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.138371756634) / 0.845316859629 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.119135591183) / 1.03628685652 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.0506035704472) / 1.21574700619 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.1393027742) / 1.36207024675 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.15912798763) / 0.81730539698 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.134021785665) / 1.01592507468 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
random_number_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", random() AS uniform 
FROM "ADS_sca_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.537313432836) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 1 END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.537313432836 AS "Proba_0", CASE WHEN (0.537313432836 IS NULL OR 0.537313432836 > 0.0) THEN ln(0.537313432836) ELSE -1.79769313486231e+308 END AS "LogProba_0", 0.462686567164 AS "Proba_1", CASE WHEN (0.462686567164 IS NULL OR 0.462686567164 > 0.0) THEN ln(0.462686567164) ELSE -1.79769313486231e+308 END AS "LogProba_1", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS FLOAT(53)) AS "Score_0", CAST(NULL AS FLOAT(53)) AS "Score_1", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."Decision" AS "Decision" 
FROM dummy_class_reg_cte