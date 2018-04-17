-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : RidgeClassifier_Pipeline
-- Dataset : iris
-- Database : oracle


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table 42314_O3RIL0_ADS_IMP_1_OUT part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE "42314_O3RIL0_ADS_IMP_1_OUT" (
	"KEY" NUMBER(19) NOT NULL, 
	imputer_output_2 BINARY_DOUBLE, 
	imputer_output_3 BINARY_DOUBLE, 
	imputer_output_4 BINARY_DOUBLE, 
	imputer_output_5 BINARY_DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table 42314_O3RIL0_ADS_IMP_1_OUT part 2/2. Populate

INSERT INTO "42314_O3RIL0_ADS_IMP_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "U"."KEY", "U".imputer_output_2, "U".imputer_output_3, "U".imputer_output_4, "U".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.0366666666666657 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.8450000000000006 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM "IRIS" "ADS") "ADS_imp_1_OUT") "U"

-- Code For temporary table 42314_R2T7A0_ADS_SCA_2_OUT part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE "42314_R2T7A0_ADS_SCA_2_OUT" (
	"KEY" NUMBER(19) NOT NULL, 
	scaler_output_2 BINARY_DOUBLE, 
	scaler_output_3 BINARY_DOUBLE, 
	scaler_output_4 BINARY_DOUBLE, 
	scaler_output_5 BINARY_DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table 42314_R2T7A0_ADS_SCA_2_OUT part 2/2. Populate

INSERT INTO "42314_R2T7A0_ADS_SCA_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "U"."KEY", "U".scaler_output_2, "U".scaler_output_3, "U".scaler_output_4, "U".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS BINARY_DOUBLE) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS BINARY_DOUBLE) - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS BINARY_DOUBLE) - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS BINARY_DOUBLE) - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM "42314_O3RIL0_ADS_IMP_1_OUT" "ADS_imp_1_OUT") "ADS_sca_2_OUT") "U"

-- Model deployment code

WITH linear_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS BINARY_DOUBLE) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS BINARY_DOUBLE) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS BINARY_DOUBLE) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS BINARY_DOUBLE) AS scaler_output_5 
FROM "42314_R2T7A0_ADS_SCA_2_OUT" "ADS_sca_2_OUT"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", 0.04902526586186135 * linear_input.scaler_output_2 + 0.23258226657287756 * linear_input.scaler_output_3 + -0.6617920365460979 * linear_input.scaler_output_4 + -0.13957440677755487 * linear_input.scaler_output_5 + -0.38333333333333425 AS "Score_0", 0.0886306707385939 * linear_input.scaler_output_2 + -0.4115503870698435 * linear_input.scaler_output_3 + 0.4660812728575237 * linear_input.scaler_output_4 + -0.5763815228752289 * linear_input.scaler_output_5 + -0.33333333333333265 AS "Score_1", -0.13765593660045333 * linear_input.scaler_output_2 + 0.17896812049696517 * linear_input.scaler_output_3 + 0.19571076368857368 * linear_input.scaler_output_4 + 0.7159559296527818 * linear_input.scaler_output_5 + -0.28333333333333305 AS "Score_2" 
FROM linear_input), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", CAST(NULL AS BINARY_DOUBLE) AS "Proba_0", CAST(NULL AS BINARY_DOUBLE) AS "Proba_1", CAST(NULL AS BINARY_DOUBLE) AS "Proba_2", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_0", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_1", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_2", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba" 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") "arg_max_t_Score" ON score_max."KEY" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_2", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0" WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1" WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2" END AS "DecisionProba" 
FROM arg_max_cte