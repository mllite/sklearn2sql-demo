-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LogisticRegression
-- Dataset : BreastCancer
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."Feature_8" AS FLOAT) AS "Feature_8", CAST("ADS"."Feature_9" AS FLOAT) AS "Feature_9", CAST("ADS"."Feature_10" AS FLOAT) AS "Feature_10", CAST("ADS"."Feature_11" AS FLOAT) AS "Feature_11", CAST("ADS"."Feature_12" AS FLOAT) AS "Feature_12", CAST("ADS"."Feature_13" AS FLOAT) AS "Feature_13", CAST("ADS"."Feature_14" AS FLOAT) AS "Feature_14", CAST("ADS"."Feature_15" AS FLOAT) AS "Feature_15", CAST("ADS"."Feature_16" AS FLOAT) AS "Feature_16", CAST("ADS"."Feature_17" AS FLOAT) AS "Feature_17", CAST("ADS"."Feature_18" AS FLOAT) AS "Feature_18", CAST("ADS"."Feature_19" AS FLOAT) AS "Feature_19", CAST("ADS"."Feature_20" AS FLOAT) AS "Feature_20", CAST("ADS"."Feature_21" AS FLOAT) AS "Feature_21", CAST("ADS"."Feature_22" AS FLOAT) AS "Feature_22", CAST("ADS"."Feature_23" AS FLOAT) AS "Feature_23", CAST("ADS"."Feature_24" AS FLOAT) AS "Feature_24", CAST("ADS"."Feature_25" AS FLOAT) AS "Feature_25", CAST("ADS"."Feature_26" AS FLOAT) AS "Feature_26", CAST("ADS"."Feature_27" AS FLOAT) AS "Feature_27", CAST("ADS"."Feature_28" AS FLOAT) AS "Feature_28", CAST("ADS"."Feature_29" AS FLOAT) AS "Feature_29" 
FROM "BreastCancer" AS "ADS"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", 1.7192357757926076 * linear_input."Feature_0" + 0.11158764674542397 * linear_input."Feature_1" + 0.012246538230596269 * linear_input."Feature_2" + -0.0022114751606257792 * linear_input."Feature_3" + -0.07575926256444056 * linear_input."Feature_4" + -0.32259188790986354 * linear_input."Feature_5" + -0.44984711704362434 * linear_input."Feature_6" + -0.20400316323656031 * linear_input."Feature_7" + -0.109088547162812 * linear_input."Feature_8" + -0.022092638926747735 * linear_input."Feature_9" + 0.05042342539813522 * linear_input."Feature_10" + 0.7882442855252038 * linear_input."Feature_11" + 0.3100804632181373 * linear_input."Feature_12" + -0.12145645827390357 * linear_input."Feature_13" + -0.004881580758322223 * linear_input."Feature_14" + -0.04595711675143334 * linear_input."Feature_15" + -0.06648576025046228 * linear_input."Feature_16" + -0.02232587536940481 * linear_input."Feature_17" + -0.02749291135502888 * linear_input."Feature_18" + -0.003452205127589516 * linear_input."Feature_19" + 1.6384659381236344 * linear_input."Feature_20" + -0.2812854834301384 * linear_input."Feature_21" + -0.22845781523989084 * linear_input."Feature_22" + -0.02183308005298946 * linear_input."Feature_23" + -0.13302124599010248 * linear_input."Feature_24" + -0.9428400572580603 * linear_input."Feature_25" + -1.1459092364246177 * linear_input."Feature_26" + -0.3901611750582034 * linear_input."Feature_27" + -0.34322383019293956 * linear_input."Feature_28" + -0.08834058912357691 * linear_input."Feature_29" + 0.31800433392640104 AS lincomb 
FROM linear_input), 
dot_prod_logistic AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte.lincomb AS dot_prod, 1.0 / (1.0 + exp(min(100.0, max(-100.0, -linear_model_cte.lincomb)))) AS logistic 
FROM linear_model_cte)
 SELECT dot_prod_logistic."KEY" AS "KEY", -dot_prod_logistic.dot_prod AS "Score_0", dot_prod_logistic.dot_prod AS "Score_1", 1.0 - dot_prod_logistic.logistic AS "Proba_0", dot_prod_logistic.logistic AS "Proba_1", CASE WHEN (1.0 - dot_prod_logistic.logistic IS NULL OR 1.0 - dot_prod_logistic.logistic > 0.0) THEN ln(1.0 - dot_prod_logistic.logistic) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (dot_prod_logistic.logistic IS NULL OR dot_prod_logistic.logistic > 0.0) THEN ln(dot_prod_logistic.logistic) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (dot_prod_logistic.dot_prod > 0.0) THEN 1 ELSE 0 END AS "Decision", max(1.0 - dot_prod_logistic.logistic, dot_prod_logistic.logistic) AS "DecisionProba" 
FROM dot_prod_logistic