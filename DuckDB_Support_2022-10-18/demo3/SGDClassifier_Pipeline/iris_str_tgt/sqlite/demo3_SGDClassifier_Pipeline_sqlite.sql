-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDClassifier_Pipeline
-- Dataset : iris_str_tgt
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190656_19X9WNW_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190656_19X9WNW_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 FLOAT, 
	imputer_output_3 FLOAT, 
	imputer_output_4 FLOAT, 
	imputer_output_5 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018190656_19X9WNW_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018190656_19X9WNW_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.040833333333332 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.844166666666667 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.2458333333333336 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM iris_str_tgt AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018190656_19X9WNW_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190656_19X9WNW_ADS_imp_1_OUT_KEY" ON "TMP_20221018190656_19X9WNW_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018190656_QJV36GU_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190656_QJV36GU_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 FLOAT, 
	scaler_output_3 FLOAT, 
	scaler_output_4 FLOAT, 
	scaler_output_5 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018190656_QJV36GU_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018190656_QJV36GU_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 3.040833333333332) / 0.43922200789830873 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 3.844166666666667) / 1.7109839193347847 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 1.2458333333333336) / 0.7486538845747673 AS scaler_output_5 
FROM "TMP_20221018190656_19X9WNW_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018190656_QJV36GU_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190656_QJV36GU_ADS_sca_2_OUT_KEY" ON "TMP_20221018190656_QJV36GU_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH linear_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS FLOAT) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS FLOAT) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS FLOAT) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS FLOAT) AS scaler_output_5 
FROM "TMP_20221018190656_QJV36GU_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", -3.320347835200699 * linear_input.scaler_output_2 + 9.677334885030758 * linear_input.scaler_output_3 + -11.79617779060231 * linear_input.scaler_output_4 + -10.95555837356936 * linear_input.scaler_output_5 + -19.65670811397497 AS "Score_CLASS_0", -0.3983457653377626 * linear_input.scaler_output_2 + -2.2373902624652473 * linear_input.scaler_output_3 + 5.9360920125331225 * linear_input.scaler_output_4 + -7.428248556575141 * linear_input.scaler_output_5 + -1.6456561290829006 AS "Score_CLASS_1", -9.071879587519737 * linear_input.scaler_output_2 + -1.1614641128009788 * linear_input.scaler_output_3 + 33.32805436806505 * linear_input.scaler_output_4 + 27.339517872047768 * linear_input.scaler_output_5 + -36.438169442817234 AS "Score_CLASS_2" 
FROM linear_input), 
linear_model_cte_logistic AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_CLASS_0" AS "Score_CLASS_0", linear_model_cte."Score_CLASS_1" AS "Score_CLASS_1", linear_model_cte."Score_CLASS_2" AS "Score_CLASS_2" 
FROM linear_model_cte), 
orig_cte AS 
(SELECT linear_model_cte_logistic."KEY" AS "KEY", linear_model_cte_logistic."Score_CLASS_0" AS "Score_CLASS_0", linear_model_cte_logistic."Score_CLASS_1" AS "Score_CLASS_1", linear_model_cte_logistic."Score_CLASS_2" AS "Score_CLASS_2", CAST(NULL AS FLOAT) AS "Proba_CLASS_0", CAST(NULL AS FLOAT) AS "Proba_CLASS_1", CAST(NULL AS FLOAT) AS "Proba_CLASS_2", CAST(NULL AS FLOAT) AS "LogProba_CLASS_0", CAST(NULL AS FLOAT) AS "LogProba_CLASS_1", CAST(NULL AS FLOAT) AS "LogProba_CLASS_2", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM linear_model_cte_logistic), 
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
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_CLASS_0" AS "Score_CLASS_0", score_max."Score_CLASS_1" AS "Score_CLASS_1", score_max."Score_CLASS_2" AS "Score_CLASS_2", score_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_CLASS_0" AS "Score_CLASS_0", score_max."Score_CLASS_1" AS "Score_CLASS_1", score_max."Score_CLASS_2" AS "Score_CLASS_2", score_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", max(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_max."KEY" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_CLASS_0" AS "Score_CLASS_0", arg_max_cte."Score_CLASS_1" AS "Score_CLASS_1", arg_max_cte."Score_CLASS_2" AS "Score_CLASS_2", arg_max_cte."Proba_CLASS_0" AS "Proba_CLASS_0", arg_max_cte."Proba_CLASS_1" AS "Proba_CLASS_1", arg_max_cte."Proba_CLASS_2" AS "Proba_CLASS_2", CASE WHEN (arg_max_cte."Proba_CLASS_0" IS NULL OR arg_max_cte."Proba_CLASS_0" > 0.0) THEN ln(arg_max_cte."Proba_CLASS_0") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_0", CASE WHEN (arg_max_cte."Proba_CLASS_1" IS NULL OR arg_max_cte."Proba_CLASS_1" > 0.0) THEN ln(arg_max_cte."Proba_CLASS_1") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_1", CASE WHEN (arg_max_cte."Proba_CLASS_2" IS NULL OR arg_max_cte."Proba_CLASS_2" > 0.0) THEN ln(arg_max_cte."Proba_CLASS_2") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_2", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."arg_max_Score" = 'CLASS_0') THEN arg_max_cte."Proba_CLASS_0" WHEN (arg_max_cte."arg_max_Score" = 'CLASS_1') THEN arg_max_cte."Proba_CLASS_1" WHEN (arg_max_cte."arg_max_Score" = 'CLASS_2') THEN arg_max_cte."Proba_CLASS_2" END AS "DecisionProba" 
FROM arg_max_cte