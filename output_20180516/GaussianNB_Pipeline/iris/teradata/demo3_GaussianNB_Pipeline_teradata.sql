-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GaussianNB_Pipeline
-- Dataset : iris
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516122423_codegen_bmoog6_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516122423_codegen_bmoog6_ads_imp_1_out  (
	"KEY" BIGINT, 
	imputer_output_2 DOUBLE PRECISION, 
	imputer_output_3 DOUBLE PRECISION, 
	imputer_output_4 DOUBLE PRECISION, 
	imputer_output_5 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516122423_codegen_bmoog6_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516122423_codegen_bmoog6_ads_imp_1_out ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "U"."KEY", "U".imputer_output_2, "U".imputer_output_3, "U".imputer_output_4, "U".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.0366666666666657 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.8450000000000006 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM iris AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516122423_codegen_sutxjg_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516122423_codegen_sutxjg_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_output_2 DOUBLE PRECISION, 
	scaler_output_3 DOUBLE PRECISION, 
	scaler_output_4 DOUBLE PRECISION, 
	scaler_output_5 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516122423_codegen_sutxjg_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516122423_codegen_sutxjg_ads_sca_2_out ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "U"."KEY", "U".scaler_output_2, "U".scaler_output_3, "U".scaler_output_4, "U".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE PRECISION) - CAST(5.847499999999997 AS DOUBLE PRECISION)) / CAST(0.827039146594646 AS DOUBLE PRECISION) AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE PRECISION) - CAST(3.036666666666666 AS DOUBLE PRECISION)) / CAST(0.436259352016919 AS DOUBLE PRECISION) AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE PRECISION) - CAST(3.845 AS DOUBLE PRECISION)) / CAST(1.709817241695732 AS DOUBLE PRECISION) AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE PRECISION) - CAST(1.245 AS DOUBLE PRECISION)) / CAST(0.749872211335594 AS DOUBLE PRECISION) AS scaler_output_5 
FROM tmp_20180516122423_codegen_bmoog6_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table tmp_20180516122423_codegen_9v1qvg_naivebayes_scores part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516122423_codegen_9v1qvg_naivebayes_scores  (
	"KEY" BIGINT, 
	"Score_0" DOUBLE PRECISION, 
	"Score_1" DOUBLE PRECISION, 
	"Score_2" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516122423_codegen_9v1qvg_naivebayes_scores part 2. Populate

INSERT INTO tmp_20180516122423_codegen_9v1qvg_naivebayes_scores ("KEY", "Score_0", "Score_1", "Score_2") SELECT "U"."KEY", "U"."Score_0", "U"."Score_1", "U"."Score_2" 
FROM (WITH centered_data AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE PRECISION) - CAST(-1.073758774535724 AS DOUBLE PRECISION) AS scaler_output_2_0, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE PRECISION) - CAST(0.870008970111042 AS DOUBLE PRECISION) AS scaler_output_3_0, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE PRECISION) - CAST(-1.379395093229045 AS DOUBLE PRECISION) AS scaler_output_4_0, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE PRECISION) - CAST(-1.314277987158904 AS DOUBLE PRECISION) AS scaler_output_5_0, CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE PRECISION) - CAST(0.081616451020409 AS DOUBLE PRECISION) AS scaler_output_2_1, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE PRECISION) - CAST(-0.634179337102064 AS DOUBLE PRECISION) AS scaler_output_3_1, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE PRECISION) - CAST(0.233943131608203 AS DOUBLE PRECISION) AS scaler_output_4_1, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE PRECISION) - CAST(0.106684844151662 AS DOUBLE PRECISION) AS scaler_output_5_1, CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE PRECISION) - CAST(0.848009688767577 AS DOUBLE PRECISION) AS scaler_output_2_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE PRECISION) - CAST(-0.158678102558738 AS DOUBLE PRECISION) AS scaler_output_3_2, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE PRECISION) - CAST(0.969299841515035 AS DOUBLE PRECISION) AS scaler_output_4_2, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE PRECISION) - CAST(1.031648645553789 AS DOUBLE PRECISION) AS scaler_output_5_2 
FROM tmp_20180516122423_codegen_sutxjg_ads_sca_2_out AS "ADS_sca_2_OUT"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"NaiveBayes_data" AS 
(SELECT "Values"."KEY" AS "KEY", CAST("Values"."Feature" AS DOUBLE PRECISION) AS "Feature", CAST("Values".log_proba_0 AS DOUBLE PRECISION) AS log_proba_0, CAST("Values".log_proba_1 AS DOUBLE PRECISION) AS log_proba_1, CAST("Values".log_proba_2 AS DOUBLE PRECISION) AS log_proba_2 
FROM (SELECT centered_data."KEY" AS "KEY", 0 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(0.103972660985363 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data.scaler_output_2_0 * centered_data.scaler_output_2_0) / CAST(0.176593569296659 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(0.987623428488565 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data.scaler_output_2_1 * centered_data.scaler_output_2_1) / CAST(0.427306537061185 AS DOUBLE PRECISION) AS log_proba_1, CAST(-0.5 AS DOUBLE PRECISION) * CAST(1.191334081843338 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data.scaler_output_2_2 * centered_data.scaler_output_2_2) / CAST(0.523853620139306 AS DOUBLE PRECISION) AS log_proba_2 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 1 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(1.617699271286172 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data.scaler_output_3_0 * centered_data.scaler_output_3_0) / CAST(0.802376126717448 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(1.27036339826959 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data.scaler_output_3_1 * centered_data.scaler_output_3_1) / CAST(0.566933272060774 AS DOUBLE PRECISION) AS log_proba_1, CAST(-0.5 AS DOUBLE PRECISION) * CAST(1.188361783672836 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data.scaler_output_3_2 * centered_data.scaler_output_3_2) / CAST(0.522298882698798 AS DOUBLE PRECISION) AS log_proba_2 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 2 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-2.86271245298026 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data.scaler_output_4_0 * centered_data.scaler_output_4_0) / CAST(0.009089916839635 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-0.704680569700576 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data.scaler_output_4_1 * centered_data.scaler_output_4_1) / CAST(0.07866494597131 AS DOUBLE PRECISION) AS log_proba_1, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-0.66300427308024 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data.scaler_output_4_2 * centered_data.scaler_output_4_2) / CAST(0.082012685743888 AS DOUBLE PRECISION) AS log_proba_2 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 3 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-1.954085061593956 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data.scaler_output_5_0 * centered_data.scaler_output_5_0) / CAST(0.022551309855471 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-0.747614689892745 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data.scaler_output_5_1 * centered_data.scaler_output_5_1) / CAST(0.075359012218637 AS DOUBLE PRECISION) AS log_proba_1, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-0.128229841381387 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data.scaler_output_5_2 * centered_data.scaler_output_5_2) / CAST(0.140000832803971 AS DOUBLE PRECISION) AS log_proba_2 
FROM centered_data, dummy_cte) AS "Values")
 SELECT "NaiveBayes_Scores"."KEY", "NaiveBayes_Scores"."Score_0", "NaiveBayes_Scores"."Score_1", "NaiveBayes_Scores"."Score_2" 
FROM (SELECT nb_sums."KEY" AS "KEY", nb_sums."Score_0" AS "Score_0", nb_sums."Score_1" AS "Score_1", nb_sums."Score_2" AS "Score_2" 
FROM (SELECT "NaiveBayes_data"."KEY" AS "KEY", CAST(-1.176573830137822 AS DOUBLE PRECISION) + sum("NaiveBayes_data".log_proba_0) AS "Score_0", CAST(-1.09861228866811 AS DOUBLE PRECISION) + sum("NaiveBayes_data".log_proba_1) AS "Score_1", CAST(-1.026291627088484 AS DOUBLE PRECISION) + sum("NaiveBayes_data".log_proba_2) AS "Score_2" 
FROM "NaiveBayes_data" GROUP BY "NaiveBayes_data"."KEY") AS nb_sums) AS "NaiveBayes_Scores") AS "U"

-- Model deployment code

WITH orig_cte AS 
(SELECT "NaiveBayes_Scores"."KEY" AS "KEY", "NaiveBayes_Scores"."Score_0" AS "Score_0", "NaiveBayes_Scores"."Score_1" AS "Score_1", "NaiveBayes_Scores"."Score_2" AS "Score_2", CAST(NULL AS DOUBLE PRECISION) AS "Proba_0", CAST(NULL AS DOUBLE PRECISION) AS "Proba_1", CAST(NULL AS DOUBLE PRECISION) AS "Proba_2", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_2", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM tmp_20180516122423_codegen_9v1qvg_naivebayes_scores AS "NaiveBayes_Scores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu."class" AS "class", scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS "class", orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS "class", orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS "class", orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(greatest(CAST(-100.0 AS DOUBLE PRECISION), score_max."Score_0" - score_max."max_Score")) AS "exp_delta_Score_0", exp(greatest(CAST(-100.0 AS DOUBLE PRECISION), score_max."Score_1" - score_max."max_Score")) AS "exp_delta_Score_1", exp(greatest(CAST(-100.0 AS DOUBLE PRECISION), score_max."Score_2" - score_max."max_Score")) AS "exp_delta_Score_2" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu."class" AS "class", soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS "class", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS "class", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 2 AS "class", score_soft_max_deltas."exp_delta_Score_2" AS "exp_delta_Score" 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Score_2" AS "Score_2", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."Proba_2" AS "Proba_2", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."LogProba_2" AS "LogProba_2", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max_deltas."exp_delta_Score_2" AS "exp_delta_Score_2", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") AS sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union."class" AS "class", score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1", soft_max_comp."SoftProba_2" AS "SoftProba_2" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max."class") AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1", score_soft_max."exp_delta_Score_2" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_2" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", CAST(NULL AS DOUBLE PRECISION) AS "Score_2", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", arg_max_cte."SoftProba_2" AS "Proba_2", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."SoftProba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."SoftProba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."SoftProba_2" IS NULL OR arg_max_cte."SoftProba_2" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."SoftProba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", arg_max_cte."arg_max_Score" AS "Decision", greatest(arg_max_cte."SoftProba_0", arg_max_cte."SoftProba_1", arg_max_cte."SoftProba_2") AS "DecisionProba" 
FROM arg_max_cte