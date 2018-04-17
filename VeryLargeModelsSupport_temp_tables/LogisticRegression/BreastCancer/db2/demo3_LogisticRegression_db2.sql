-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LogisticRegression
-- Dataset : BreastCancer
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE) AS "Feature_9", CAST("ADS"."Feature_10" AS DOUBLE) AS "Feature_10", CAST("ADS"."Feature_11" AS DOUBLE) AS "Feature_11", CAST("ADS"."Feature_12" AS DOUBLE) AS "Feature_12", CAST("ADS"."Feature_13" AS DOUBLE) AS "Feature_13", CAST("ADS"."Feature_14" AS DOUBLE) AS "Feature_14", CAST("ADS"."Feature_15" AS DOUBLE) AS "Feature_15", CAST("ADS"."Feature_16" AS DOUBLE) AS "Feature_16", CAST("ADS"."Feature_17" AS DOUBLE) AS "Feature_17", CAST("ADS"."Feature_18" AS DOUBLE) AS "Feature_18", CAST("ADS"."Feature_19" AS DOUBLE) AS "Feature_19", CAST("ADS"."Feature_20" AS DOUBLE) AS "Feature_20", CAST("ADS"."Feature_21" AS DOUBLE) AS "Feature_21", CAST("ADS"."Feature_22" AS DOUBLE) AS "Feature_22", CAST("ADS"."Feature_23" AS DOUBLE) AS "Feature_23", CAST("ADS"."Feature_24" AS DOUBLE) AS "Feature_24", CAST("ADS"."Feature_25" AS DOUBLE) AS "Feature_25", CAST("ADS"."Feature_26" AS DOUBLE) AS "Feature_26", CAST("ADS"."Feature_27" AS DOUBLE) AS "Feature_27", CAST("ADS"."Feature_28" AS DOUBLE) AS "Feature_28", CAST("ADS"."Feature_29" AS DOUBLE) AS "Feature_29" 
FROM "BREASTCANCER" AS "ADS"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", 1.8677344761122225 * linear_input."Feature_0" + 0.11846706415994021 * linear_input."Feature_1" + 0.03582985547705383 * linear_input."Feature_2" + -0.007729827334257059 * linear_input."Feature_3" + -0.13348593146544122 * linear_input."Feature_4" + -0.38636479577926797 * linear_input."Feature_5" + -0.5737615145855843 * linear_input."Feature_6" + -0.3132583264417675 * linear_input."Feature_7" + -0.2047242459029569 * linear_input."Feature_8" + -0.02768930162977015 * linear_input."Feature_9" + -0.036940963733305104 * linear_input."Feature_10" + 1.0202492015498312 * linear_input."Feature_11" + -0.009633585710444712 * linear_input."Feature_12" + -0.10035644730130544 * linear_input."Feature_13" + -0.00924831756243455 * linear_input."Feature_14" + 0.012542593515701148 * linear_input."Feature_15" + -0.007819277270791812 * linear_input."Feature_16" + -0.028770927359456907 * linear_input."Feature_17" + -0.04556490487881816 * linear_input."Feature_18" + 0.00846740180208767 * linear_input."Feature_19" + 1.0133835184691553 * linear_input."Feature_20" + -0.2933304258155087 * linear_input."Feature_21" + -0.16157501831282578 * linear_input."Feature_22" + -0.018696511352502734 * linear_input."Feature_23" + -0.24075825263496323 * linear_input."Feature_24" + -1.1399643700070425 * linear_input."Feature_25" + -1.4156856426718467 * linear_input."Feature_26" + -0.6124960099385571 * linear_input."Feature_27" + -0.6850027867349076 * linear_input."Feature_28" + -0.10359866276919873 * linear_input."Feature_29" + 0.3349764874212817 AS lincomb 
FROM linear_input)
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) IS NULL OR 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) > 0.0) THEN ln(1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", greatest(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))), 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0)))) AS "DecisionProba" 
FROM linear_model_cte