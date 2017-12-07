-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0618292052381 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.177024637672 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.041383850049 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.130606468058 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.0595581047198 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.0489290898701 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.191017978617 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0220495967327 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.0577298140341 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.052549592052 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.0618292052381) / 1.22838395621 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 0.177024637672) / 0.940821656314 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.041383850049) / 1.07418248888 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.130606468058) / 1.07922445597 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - -0.0595581047198) / 1.10958911905 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - -0.0489290898701) / 1.3781871812 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.191017978617) / 0.97352852463 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.0220495967327) / 0.474603012038 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - -0.0577298140341) / 1.06460752484 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - -0.052549592052) / 1.22453288966 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"RawScores" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "Proba_0", -0.69314718056 + (-0.5 * 0.754542993524 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) - 0.660888552299) * (CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) - 0.660888552299)) / 0.338465174794) + (-0.5 * 1.75598550375 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) - 0.0501195898681) * (CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) - 0.0501195898681)) / 0.921371864392) + (-0.5 * 1.58955578338 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) - 0.0102371354939) * (CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) - 0.0102371354939)) / 0.780109267142) + (-0.5 * 1.97200687567 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) - -0.113426058193) * (CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) - -0.113426058193)) / 1.14354125226) + (-0.5 * 1.90284158239 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) - 0.0919319020731) * (CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) - 0.0919319020731)) / 1.06712115796) + (-0.5 * 1.74745238671 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) - 0.0269579931393) * (CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) - 0.0269579931393)) / 0.913543139654) + (-0.5 * 1.75680162841 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) - 0.199310345653) * (CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) - 0.199310345653)) / 0.922124125621) + (-0.5 * 0.466535739692 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) - 0.683130667227) * (CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) - 0.683130667227)) / 0.253766347586) + (-0.5 * 1.66984391643 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) - -0.0529018107268) * (CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) - -0.0529018107268)) / 0.845325811688) + (-0.5 * 0.259643314471 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) - -0.690570715313) * (CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) - -0.690570715313)) / 0.206339222795) AS "Score_0", CAST(NULL AS DOUBLE) AS "LogProba_1", CAST(NULL AS DOUBLE) AS "Proba_1", -0.69314718056 + (-0.5 * 1.59960397625 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) - -0.660888552299) * (CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) - -0.660888552299)) / 0.787987470088) + (-0.5 * 1.90889845735 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) - -0.0501195898681) * (CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) - -0.0501195898681)) / 1.07360419103) + (-0.5 * 2.03646652786 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) - -0.0102371354939) * (CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) - -0.0102371354939)) / 1.21968113697) + (-0.5 * 1.65242398156 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) - 0.113426058193) * (CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) - 0.113426058193)) / 0.83072780839) + (-0.5 * 1.75011183603 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) - -0.0919319020731) * (CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) - -0.0919319020731)) / 0.915975894798) + (-0.5 * 1.91946018294 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) - -0.0269579931393) * (CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) - -0.0269579931393)) / 1.08500339556) + (-0.5 * 1.836302476 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) - -0.199310345653) * (CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) - -0.199310345653)) / 0.99842664861) + (-0.5 * 1.63072821196 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) - -0.683130667227) * (CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) - -0.683130667227)) / 0.812898637402) + (-0.5 * 1.97683606665 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) - 0.0529018107268) * (CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) - 0.0529018107268)) / 1.14907698716) + (-0.5 * 1.66338670978 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) - 0.690570715313) * (CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) - 0.690570715313)) / 0.839884953508) AS "Score_1" 
FROM "ADS_sca_2_OUT"), 
orig_cte AS 
(SELECT "RawScores"."KEY" AS "KEY", "RawScores"."Score_0" AS "Score_0", "RawScores"."Score_1" AS "Score_1", "RawScores"."Proba_0" AS "Proba_0", "RawScores"."Proba_1" AS "Proba_1", "RawScores"."LogProba_0" AS "LogProba_0", "RawScores"."LogProba_1" AS "LogProba_1", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM "RawScores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(score_max."Score_0" - score_max."max_Score") AS "exp_delta_Score_0", exp(score_max."Score_1" - score_max."max_Score") AS "exp_delta_Score_1" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS class, score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS class, score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") AS sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."SoftProba_0" <= arg_max_cte."SoftProba_1") THEN arg_max_cte."SoftProba_1" ELSE arg_max_cte."SoftProba_0" END AS "DecisionProba" 
FROM arg_max_cte