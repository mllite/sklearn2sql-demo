-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : RidgeClassifier_Pipeline
-- Dataset : iris_str_tgt
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602160503_u9q_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602160503_u9q_ads_imp_1_out  (
	"KEY" BIGINT, 
	imputer_output_2 DOUBLE PRECISION, 
	imputer_output_3 DOUBLE PRECISION, 
	imputer_output_4 DOUBLE PRECISION, 
	imputer_output_5 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602160503_u9q_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180602160503_u9q_ads_imp_1_out ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "U"."KEY", "U".imputer_output_2, "U".imputer_output_3, "U".imputer_output_4, "U".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.0366666666666657 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.8450000000000006 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM iris_str_tgt AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180602160503_o72_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602160503_o72_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_output_2 DOUBLE PRECISION, 
	scaler_output_3 DOUBLE PRECISION, 
	scaler_output_4 DOUBLE PRECISION, 
	scaler_output_5 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602160503_o72_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180602160503_o72_ads_sca_2_out ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "U"."KEY", "U".scaler_output_2, "U".scaler_output_3, "U".scaler_output_4, "U".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE PRECISION) - CAST(5.847499999999997 AS DOUBLE PRECISION)) / CAST(0.827039146594646 AS DOUBLE PRECISION) AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE PRECISION) - CAST(3.036666666666666 AS DOUBLE PRECISION)) / CAST(0.436259352016919 AS DOUBLE PRECISION) AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE PRECISION) - CAST(3.845 AS DOUBLE PRECISION)) / CAST(1.709817241695732 AS DOUBLE PRECISION) AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE PRECISION) - CAST(1.245 AS DOUBLE PRECISION)) / CAST(0.749872211335594 AS DOUBLE PRECISION) AS scaler_output_5 
FROM tmp_20180602160503_u9q_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH linear_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE PRECISION) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE PRECISION) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE PRECISION) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE PRECISION) AS scaler_output_5 
FROM tmp_20180602160503_o72_ads_sca_2_out AS "ADS_sca_2_OUT"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", CAST(0.049025265861861 AS DOUBLE PRECISION) * linear_input.scaler_output_2 + CAST(0.232582266572878 AS DOUBLE PRECISION) * linear_input.scaler_output_3 + CAST(-0.661792036546098 AS DOUBLE PRECISION) * linear_input.scaler_output_4 + CAST(-0.139574406777555 AS DOUBLE PRECISION) * linear_input.scaler_output_5 + CAST(-0.383333333333334 AS DOUBLE PRECISION) AS "Score_CLASS_0", CAST(0.088630670738594 AS DOUBLE PRECISION) * linear_input.scaler_output_2 + CAST(-0.411550387069844 AS DOUBLE PRECISION) * linear_input.scaler_output_3 + CAST(0.466081272857524 AS DOUBLE PRECISION) * linear_input.scaler_output_4 + CAST(-0.576381522875229 AS DOUBLE PRECISION) * linear_input.scaler_output_5 + CAST(-0.333333333333333 AS DOUBLE PRECISION) AS "Score_CLASS_1", CAST(-0.137655936600453 AS DOUBLE PRECISION) * linear_input.scaler_output_2 + CAST(0.178968120496965 AS DOUBLE PRECISION) * linear_input.scaler_output_3 + CAST(0.195710763688574 AS DOUBLE PRECISION) * linear_input.scaler_output_4 + CAST(0.715955929652782 AS DOUBLE PRECISION) * linear_input.scaler_output_5 + CAST(-0.283333333333333 AS DOUBLE PRECISION) AS "Score_CLASS_2" 
FROM linear_input), 
linear_model_cte_logistic AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_CLASS_0" AS "Score_CLASS_0", linear_model_cte."Score_CLASS_1" AS "Score_CLASS_1", linear_model_cte."Score_CLASS_2" AS "Score_CLASS_2" 
FROM linear_model_cte), 
orig_cte AS 
(SELECT linear_model_cte_logistic."KEY" AS "KEY", linear_model_cte_logistic."Score_CLASS_0" AS "Score_CLASS_0", linear_model_cte_logistic."Score_CLASS_1" AS "Score_CLASS_1", linear_model_cte_logistic."Score_CLASS_2" AS "Score_CLASS_2", CAST(NULL AS DOUBLE PRECISION) AS "Proba_CLASS_0", CAST(NULL AS DOUBLE PRECISION) AS "Proba_CLASS_1", CAST(NULL AS DOUBLE PRECISION) AS "Proba_CLASS_2", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_CLASS_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_CLASS_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_CLASS_2", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM linear_model_cte_logistic), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu."class" AS "class", scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_0' AS "class", orig_cte."LogProba_CLASS_0" AS "LogProba", orig_cte."Proba_CLASS_0" AS "Proba", orig_cte."Score_CLASS_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_1' AS "class", orig_cte."LogProba_CLASS_1" AS "LogProba", orig_cte."Proba_CLASS_1" AS "Proba", orig_cte."Score_CLASS_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_2' AS "class", orig_cte."LogProba_CLASS_2" AS "LogProba", orig_cte."Proba_CLASS_2" AS "Proba", orig_cte."Score_CLASS_2" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_CLASS_0" AS "Score_CLASS_0", orig_cte."Score_CLASS_1" AS "Score_CLASS_1", orig_cte."Score_CLASS_2" AS "Score_CLASS_2", orig_cte."Proba_CLASS_0" AS "Proba_CLASS_0", orig_cte."Proba_CLASS_1" AS "Proba_CLASS_1", orig_cte."Proba_CLASS_2" AS "Proba_CLASS_2", orig_cte."LogProba_CLASS_0" AS "LogProba_CLASS_0", orig_cte."LogProba_CLASS_1" AS "LogProba_CLASS_1", orig_cte."LogProba_CLASS_2" AS "LogProba_CLASS_2", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union."class" AS "class", score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_CLASS_0" AS "Score_CLASS_0", score_max."Score_CLASS_1" AS "Score_CLASS_1", score_max."Score_CLASS_2" AS "Score_CLASS_2", score_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_CLASS_0" AS "Score_CLASS_0", score_max."Score_CLASS_1" AS "Score_CLASS_1", score_max."Score_CLASS_2" AS "Score_CLASS_2", score_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max."class") AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_max."KEY" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_CLASS_0" AS "Score_CLASS_0", arg_max_cte."Score_CLASS_1" AS "Score_CLASS_1", arg_max_cte."Score_CLASS_2" AS "Score_CLASS_2", arg_max_cte."Proba_CLASS_0" AS "Proba_CLASS_0", arg_max_cte."Proba_CLASS_1" AS "Proba_CLASS_1", arg_max_cte."Proba_CLASS_2" AS "Proba_CLASS_2", CASE WHEN (arg_max_cte."Proba_CLASS_0" IS NULL OR arg_max_cte."Proba_CLASS_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_CLASS_0") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_0", CASE WHEN (arg_max_cte."Proba_CLASS_1" IS NULL OR arg_max_cte."Proba_CLASS_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_CLASS_1") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_1", CASE WHEN (arg_max_cte."Proba_CLASS_2" IS NULL OR arg_max_cte."Proba_CLASS_2" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_CLASS_2") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_2", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."arg_max_Score" = 'CLASS_0') THEN arg_max_cte."Proba_CLASS_0" WHEN (arg_max_cte."arg_max_Score" = 'CLASS_1') THEN arg_max_cte."Proba_CLASS_1" WHEN (arg_max_cte."arg_max_Score" = 'CLASS_2') THEN arg_max_cte."Proba_CLASS_2" END AS "DecisionProba" 
FROM arg_max_cte