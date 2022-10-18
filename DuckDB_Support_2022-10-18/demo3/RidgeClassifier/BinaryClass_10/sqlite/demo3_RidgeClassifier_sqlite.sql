-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : RidgeClassifier
-- Dataset : BinaryClass_10
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."Feature_8" AS FLOAT) AS "Feature_8", CAST("ADS"."Feature_9" AS FLOAT) AS "Feature_9" 
FROM "BinaryClass_10" AS "ADS"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", -0.24482111136698623 * linear_input."Feature_0" + -0.05480831949582958 * linear_input."Feature_1" + -0.09737399596765049 * linear_input."Feature_2" + 0.1130913181961909 * linear_input."Feature_3" + -0.05408153313166276 * linear_input."Feature_4" + -0.08073127045989169 * linear_input."Feature_5" + -0.10063247453666872 * linear_input."Feature_6" + -0.10132364116363528 * linear_input."Feature_7" + 0.015361834940902153 * linear_input."Feature_8" + 0.27093798289506943 * linear_input."Feature_9" + 0.04350894329356039 AS lincomb 
FROM linear_input), 
dot_prod_logistic AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte.lincomb AS dot_prod, CAST(NULL AS FLOAT) AS logistic 
FROM linear_model_cte)
 SELECT dot_prod_logistic."KEY" AS "KEY", -dot_prod_logistic.dot_prod AS "Score_0", dot_prod_logistic.dot_prod AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (dot_prod_logistic.dot_prod > 0.0) THEN 1 ELSE 0 END AS "Decision", max(CAST(NULL AS FLOAT), CAST(NULL AS FLOAT)) AS "DecisionProba" 
FROM dot_prod_logistic