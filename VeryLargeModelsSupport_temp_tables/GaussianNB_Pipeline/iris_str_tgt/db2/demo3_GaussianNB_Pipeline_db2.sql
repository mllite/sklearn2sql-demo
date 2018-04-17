-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GaussianNB_Pipeline
-- Dataset : iris_str_tgt
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180417051009_jv4m05_ads_imp_1_out part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417051009_jv4m05_ads_imp_1_out (
	"KEY" BIGINT, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417051009_jv4m05_ads_imp_1_out part 2/2. Populate

INSERT INTO tmp_20180417051009_jv4m05_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.0366666666666657 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.8450000000000006 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM "IRIS_STR_TGT" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180417051009_u7z03e_ads_sca_2_out part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417051009_u7z03e_ads_sca_2_out (
	"KEY" BIGINT, 
	scaler_output_2 FLOAT, 
	scaler_output_3 FLOAT, 
	scaler_output_4 FLOAT, 
	scaler_output_5 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417051009_u7z03e_ads_sca_2_out part 2/2. Populate

INSERT INTO tmp_20180417051009_u7z03e_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM tmp_20180417051009_jv4m05_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Model deployment code

WITH "RawScores" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "LogProba_CLASS_0", CAST(NULL AS DOUBLE) AS "Proba_CLASS_0", -1.1765738301378215 + (-0.5 * 0.10397266098536322 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) - -1.0737587745357238) * (CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) - -1.0737587745357238)) / 0.17659356929665943) + (-0.5 * 1.6176992712861724 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) - 0.870008970111042) * (CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) - 0.870008970111042)) / 0.8023761267174477) + (-0.5 * -2.8627124529802606 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) - -1.3793950932290453) * (CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) - -1.3793950932290453)) / 0.009089916839634978) + (-0.5 * -1.9540850615939565 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) - -1.3142779871589043) * (CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) - -1.3142779871589043)) / 0.022551309855470963) AS "Score_CLASS_0", CAST(NULL AS DOUBLE) AS "LogProba_CLASS_1", CAST(NULL AS DOUBLE) AS "Proba_CLASS_1", -1.0986122886681098 + (-0.5 * 0.9876234284885649 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) - 0.08161645102040865) * (CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) - 0.08161645102040865)) / 0.4273065370611847) + (-0.5 * 1.2703633982695903 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) - -0.6341793371020635) * (CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) - -0.6341793371020635)) / 0.566933272060774) + (-0.5 * -0.704680569700576 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) - 0.23394313160820315) * (CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) - 0.23394313160820315)) / 0.0786649459713098) + (-0.5 * -0.7476146898927448 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) - 0.10668484415166186) * (CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) - 0.10668484415166186)) / 0.07535901221863746) AS "Score_CLASS_1", CAST(NULL AS DOUBLE) AS "LogProba_CLASS_2", CAST(NULL AS DOUBLE) AS "Proba_CLASS_2", -1.0262916270884836 + (-0.5 * 1.1913340818433376 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) - 0.8480096887675768) * (CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) - 0.8480096887675768)) / 0.5238536201393055) + (-0.5 * 1.188361783672836 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) - -0.15867810255873832) * (CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) - -0.15867810255873832)) / 0.5222988826987977) + (-0.5 * -0.6630042730802398 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) - 0.9692998415150353) * (CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) - 0.9692998415150353)) / 0.08201268574388819) + (-0.5 * -0.1282298413813872 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) - 1.0316486455537892) * (CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) - 1.0316486455537892)) / 0.14000083280397102) AS "Score_CLASS_2" 
FROM tmp_20180417051009_u7z03e_ads_sca_2_out AS "ADS_sca_2_OUT"), 
orig_cte AS 
(SELECT "RawScores"."KEY" AS "KEY", "RawScores"."Score_CLASS_0" AS "Score_CLASS_0", "RawScores"."Score_CLASS_1" AS "Score_CLASS_1", "RawScores"."Score_CLASS_2" AS "Score_CLASS_2", "RawScores"."Proba_CLASS_0" AS "Proba_CLASS_0", "RawScores"."Proba_CLASS_1" AS "Proba_CLASS_1", "RawScores"."Proba_CLASS_2" AS "Proba_CLASS_2", "RawScores"."LogProba_CLASS_0" AS "LogProba_CLASS_0", "RawScores"."LogProba_CLASS_1" AS "LogProba_CLASS_1", "RawScores"."LogProba_CLASS_2" AS "LogProba_CLASS_2", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM "RawScores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_0' AS class, orig_cte."LogProba_CLASS_0" AS "LogProba", orig_cte."Proba_CLASS_0" AS "Proba", orig_cte."Score_CLASS_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_1' AS class, orig_cte."LogProba_CLASS_1" AS "LogProba", orig_cte."Proba_CLASS_1" AS "Proba", orig_cte."Score_CLASS_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_2' AS class, orig_cte."LogProba_CLASS_2" AS "LogProba", orig_cte."Proba_CLASS_2" AS "Proba", orig_cte."Score_CLASS_2" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_CLASS_0" AS "Score_CLASS_0", orig_cte."Score_CLASS_1" AS "Score_CLASS_1", orig_cte."Score_CLASS_2" AS "Score_CLASS_2", orig_cte."Proba_CLASS_0" AS "Proba_CLASS_0", orig_cte."Proba_CLASS_1" AS "Proba_CLASS_1", orig_cte."Proba_CLASS_2" AS "Proba_CLASS_2", orig_cte."LogProba_CLASS_0" AS "LogProba_CLASS_0", orig_cte."LogProba_CLASS_1" AS "LogProba_CLASS_1", orig_cte."LogProba_CLASS_2" AS "LogProba_CLASS_2", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_CLASS_0" AS "Score_CLASS_0", score_max."Score_CLASS_1" AS "Score_CLASS_1", score_max."Score_CLASS_2" AS "Score_CLASS_2", score_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(score_max."Score_CLASS_0" - score_max."max_Score") AS "exp_delta_Score_CLASS_0", exp(score_max."Score_CLASS_1" - score_max."max_Score") AS "exp_delta_Score_CLASS_1", exp(score_max."Score_CLASS_2" - score_max."max_Score") AS "exp_delta_Score_CLASS_2" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 'CLASS_0' AS class, score_soft_max_deltas."exp_delta_Score_CLASS_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 'CLASS_1' AS class, score_soft_max_deltas."exp_delta_Score_CLASS_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 'CLASS_2' AS class, score_soft_max_deltas."exp_delta_Score_CLASS_2" AS "exp_delta_Score" 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_CLASS_0" AS "Score_CLASS_0", score_soft_max_deltas."Score_CLASS_1" AS "Score_CLASS_1", score_soft_max_deltas."Score_CLASS_2" AS "Score_CLASS_2", score_soft_max_deltas."Proba_CLASS_0" AS "Proba_CLASS_0", score_soft_max_deltas."Proba_CLASS_1" AS "Proba_CLASS_1", score_soft_max_deltas."Proba_CLASS_2" AS "Proba_CLASS_2", score_soft_max_deltas."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_soft_max_deltas."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_soft_max_deltas."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_CLASS_0" AS "exp_delta_Score_CLASS_0", score_soft_max_deltas."exp_delta_Score_CLASS_1" AS "exp_delta_Score_CLASS_1", score_soft_max_deltas."exp_delta_Score_CLASS_2" AS "exp_delta_Score_CLASS_2", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") AS sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_CLASS_0" AS "Score_CLASS_0", score_soft_max."Score_CLASS_1" AS "Score_CLASS_1", score_soft_max."Score_CLASS_2" AS "Score_CLASS_2", score_soft_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_soft_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_soft_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_soft_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_soft_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_soft_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_CLASS_0" AS "exp_delta_Score_CLASS_0", score_soft_max."exp_delta_Score_CLASS_1" AS "exp_delta_Score_CLASS_1", score_soft_max."exp_delta_Score_CLASS_2" AS "exp_delta_Score_CLASS_2", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_CLASS_0" AS "Score_CLASS_0", score_soft_max."Score_CLASS_1" AS "Score_CLASS_1", score_soft_max."Score_CLASS_2" AS "Score_CLASS_2", score_soft_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_soft_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_soft_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_soft_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_soft_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_soft_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_CLASS_0" AS "exp_delta_Score_CLASS_0", score_soft_max."exp_delta_Score_CLASS_1" AS "exp_delta_Score_CLASS_1", score_soft_max."exp_delta_Score_CLASS_2" AS "exp_delta_Score_CLASS_2", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_CLASS_0" AS "SoftProba_CLASS_0", soft_max_comp."SoftProba_CLASS_1" AS "SoftProba_CLASS_1", soft_max_comp."SoftProba_CLASS_2" AS "SoftProba_CLASS_2" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_CLASS_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_CLASS_0", score_soft_max."exp_delta_Score_CLASS_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_CLASS_1", score_soft_max."exp_delta_Score_CLASS_2" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_CLASS_2" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_CLASS_0", CAST(NULL AS DOUBLE) AS "Score_CLASS_1", CAST(NULL AS DOUBLE) AS "Score_CLASS_2", arg_max_cte."SoftProba_CLASS_0" AS "Proba_CLASS_0", arg_max_cte."SoftProba_CLASS_1" AS "Proba_CLASS_1", arg_max_cte."SoftProba_CLASS_2" AS "Proba_CLASS_2", CASE WHEN (arg_max_cte."SoftProba_CLASS_0" IS NULL OR arg_max_cte."SoftProba_CLASS_0" > 0.0) THEN ln(arg_max_cte."SoftProba_CLASS_0") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_0", CASE WHEN (arg_max_cte."SoftProba_CLASS_1" IS NULL OR arg_max_cte."SoftProba_CLASS_1" > 0.0) THEN ln(arg_max_cte."SoftProba_CLASS_1") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_1", CASE WHEN (arg_max_cte."SoftProba_CLASS_2" IS NULL OR arg_max_cte."SoftProba_CLASS_2" > 0.0) THEN ln(arg_max_cte."SoftProba_CLASS_2") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_2", arg_max_cte."arg_max_Score" AS "Decision", greatest(arg_max_cte."SoftProba_CLASS_0", arg_max_cte."SoftProba_CLASS_1", arg_max_cte."SoftProba_CLASS_2") AS "DecisionProba" 
FROM arg_max_cte