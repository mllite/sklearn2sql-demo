-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8475 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.03666666667 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.845 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM iris "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 5.8475) / 0.827039146595 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 3.03666666667) / 0.436259352017 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 3.845) / 1.7098172417 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 1.245) / 0.749872211336 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
linear_model_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", -0.7667782391215096 * "ADS_sca_2_OUT".scaler_output_2 + 1.3448861681776636 * "ADS_sca_2_OUT".scaler_output_3 + -1.580922603723415 * "ADS_sca_2_OUT".scaler_output_4 + -1.3558479456697266 * "ADS_sca_2_OUT".scaler_output_5 + -1.68281227056 AS "Score_0", 0.25942149562528954 * "ADS_sca_2_OUT".scaler_output_2 + -1.1816960057816397 * "ADS_sca_2_OUT".scaler_output_3 + 0.5915514647222258 * "ADS_sca_2_OUT".scaler_output_4 + -0.8653085151586484 * "ADS_sca_2_OUT".scaler_output_5 + -0.857494023366 AS "Score_1", -0.0016242729026995305 * "ADS_sca_2_OUT".scaler_output_2 + -0.20888723156912375 * "ADS_sca_2_OUT".scaler_output_3 + 1.8774175353437146 * "ADS_sca_2_OUT".scaler_output_4 + 2.521926697400801 * "ADS_sca_2_OUT".scaler_output_5 + -2.35048100398 AS "Score_2" 
FROM "ADS_sca_2_OUT"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END END))) / (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END END))) AS "Proba_0", (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END END))) / (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END END))) AS "Proba_1", (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END END))) / (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END END))) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_2", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte