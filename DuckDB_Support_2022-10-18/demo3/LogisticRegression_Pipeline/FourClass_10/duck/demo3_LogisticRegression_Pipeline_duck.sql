-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LogisticRegression_Pipeline
-- Dataset : FourClass_10
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018185207_WC01ZAG_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185207_WC01ZAG_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE, 
	imputer_output_6 DOUBLE, 
	imputer_output_7 DOUBLE, 
	imputer_output_8 DOUBLE, 
	imputer_output_9 DOUBLE, 
	imputer_output_10 DOUBLE, 
	imputer_output_11 DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185207_WC01ZAG_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018185207_WC01ZAG_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9, imputer_output_10, imputer_output_11) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9, "T".imputer_output_10, "T".imputer_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9, "ADS_imp_1_OUT".imputer_output_10 AS imputer_output_10, "ADS_imp_1_OUT".imputer_output_11 AS imputer_output_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.003903374463034205 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.6152232215702322 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.042796236914291665 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.7709819558904074 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.43300733624893334 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.0424956965794036 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.29809080119845455 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.14672241507251663 ELSE "ADS"."Feature_7" END AS imputer_output_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.01746942384662034 ELSE "ADS"."Feature_8" END AS imputer_output_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.11507331415602866 ELSE "ADS"."Feature_9" END AS imputer_output_11 
FROM "FourClass_10" AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018185207_WC01ZAG_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185207_WC01ZAG_ADS_imp_1_OUT_KEY" ON "TMP_20221018185207_WC01ZAG_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018185207_ZXAKM9Q_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185207_ZXAKM9Q_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE, 
	scaler_output_6 DOUBLE, 
	scaler_output_7 DOUBLE, 
	scaler_output_8 DOUBLE, 
	scaler_output_9 DOUBLE, 
	scaler_output_10 DOUBLE, 
	scaler_output_11 DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185207_ZXAKM9Q_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018185207_ZXAKM9Q_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9, scaler_output_10, scaler_output_11) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9, "T".scaler_output_10, "T".scaler_output_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9, "ADS_sca_2_OUT".scaler_output_10 AS scaler_output_10, "ADS_sca_2_OUT".scaler_output_11 AS scaler_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - -0.003903374463034205) / 0.9795060640183997 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 0.6152232215702322) / 1.3900807236205235 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 0.042796236914291665) / 1.4962685135870766 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 0.7709819558904074) / 2.3333561060111743 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS DOUBLE) - -0.43300733624893334) / 1.4029757772648748 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS DOUBLE) - -0.0424956965794036) / 0.9558091076873229 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS DOUBLE) - -0.29809080119845455) / 1.017013180721433 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS DOUBLE) - 0.14672241507251663) / 1.600798539929603 AS scaler_output_9, (CAST("ADS_imp_1_OUT".imputer_output_10 AS DOUBLE) - 0.01746942384662034) / 1.1487296361671415 AS scaler_output_10, (CAST("ADS_imp_1_OUT".imputer_output_11 AS DOUBLE) - 0.11507331415602866) / 0.9690911857336224 AS scaler_output_11 
FROM "TMP_20221018185207_WC01ZAG_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018185207_ZXAKM9Q_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185207_ZXAKM9Q_ADS_sca_2_OUT_KEY" ON "TMP_20221018185207_ZXAKM9Q_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH linear_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) AS scaler_output_5, CAST("ADS_sca_2_OUT".scaler_output_6 AS DOUBLE) AS scaler_output_6, CAST("ADS_sca_2_OUT".scaler_output_7 AS DOUBLE) AS scaler_output_7, CAST("ADS_sca_2_OUT".scaler_output_8 AS DOUBLE) AS scaler_output_8, CAST("ADS_sca_2_OUT".scaler_output_9 AS DOUBLE) AS scaler_output_9, CAST("ADS_sca_2_OUT".scaler_output_10 AS DOUBLE) AS scaler_output_10, CAST("ADS_sca_2_OUT".scaler_output_11 AS DOUBLE) AS scaler_output_11 
FROM "TMP_20221018185207_ZXAKM9Q_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", 0.4420277442707269 * linear_input.scaler_output_2 + -0.8225768642942349 * linear_input.scaler_output_3 + -0.13508851864600313 * linear_input.scaler_output_4 + -0.3837114092304977 * linear_input.scaler_output_5 + 0.9513482045985 * linear_input.scaler_output_6 + -0.24467714394986223 * linear_input.scaler_output_7 + 0.26599501852634994 * linear_input.scaler_output_8 + 0.7100954839478039 * linear_input.scaler_output_9 + 0.48791524154039145 * linear_input.scaler_output_10 + 0.10319204977530179 * linear_input.scaler_output_11 + -0.03621978604050488 AS "Score_0", -0.03670642596023691 * linear_input.scaler_output_2 + 0.35095923719244243 * linear_input.scaler_output_3 + 0.5978417322256979 * linear_input.scaler_output_4 + 0.49401724833246247 * linear_input.scaler_output_5 + 0.42864330559645586 * linear_input.scaler_output_6 + -0.027751564803972836 * linear_input.scaler_output_7 + -0.41370152051977843 * linear_input.scaler_output_8 + 0.07254304138707501 * linear_input.scaler_output_9 + -0.5046866319847316 * linear_input.scaler_output_10 + 0.027906141156136516 * linear_input.scaler_output_11 + 0.13950902144600236 AS "Score_1", 0.02843763124860056 * linear_input.scaler_output_2 + -0.8383199196220222 * linear_input.scaler_output_3 + -0.7256845198368639 * linear_input.scaler_output_4 + -0.5373467553152994 * linear_input.scaler_output_5 + -0.6603541332787636 * linear_input.scaler_output_6 + -0.008790561245728634 * linear_input.scaler_output_7 + 0.2968391394980367 * linear_input.scaler_output_8 + 0.5544963478276154 * linear_input.scaler_output_9 + 0.5175855153144066 * linear_input.scaler_output_10 + -0.1599783566358823 * linear_input.scaler_output_11 + 0.11963120672682055 AS "Score_2", -0.43375894955909017 * linear_input.scaler_output_2 + 1.3099375467238141 * linear_input.scaler_output_3 + 0.2629313062571694 * linear_input.scaler_output_4 + 0.4270409162133338 * linear_input.scaler_output_5 + -0.719637376916192 * linear_input.scaler_output_6 + 0.28121926999956376 * linear_input.scaler_output_7 + -0.14913263750460792 * linear_input.scaler_output_8 + -1.337134873162495 * linear_input.scaler_output_9 + -0.500814124870066 * linear_input.scaler_output_10 + 0.02888016570444376 * linear_input.scaler_output_11 + -0.22292044213231763 AS "Score_3" 
FROM linear_input), 
linear_model_cte_logistic AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -linear_model_cte."Score_0")))) AS "Logistic_0", linear_model_cte."Score_1" AS "Score_1", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -linear_model_cte."Score_1")))) AS "Logistic_1", linear_model_cte."Score_2" AS "Score_2", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -linear_model_cte."Score_2")))) AS "Logistic_2", linear_model_cte."Score_3" AS "Score_3", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -linear_model_cte."Score_3")))) AS "Logistic_3" 
FROM linear_model_cte), 
orig_cte AS 
(SELECT linear_model_cte_logistic."KEY" AS "KEY", linear_model_cte_logistic."Score_0" AS "Score_0", linear_model_cte_logistic."Score_1" AS "Score_1", linear_model_cte_logistic."Score_2" AS "Score_2", linear_model_cte_logistic."Score_3" AS "Score_3", linear_model_cte_logistic."Logistic_0" / (linear_model_cte_logistic."Logistic_0" + linear_model_cte_logistic."Logistic_1" + linear_model_cte_logistic."Logistic_2" + linear_model_cte_logistic."Logistic_3") AS "Proba_0", linear_model_cte_logistic."Logistic_1" / (linear_model_cte_logistic."Logistic_0" + linear_model_cte_logistic."Logistic_1" + linear_model_cte_logistic."Logistic_2" + linear_model_cte_logistic."Logistic_3") AS "Proba_1", linear_model_cte_logistic."Logistic_2" / (linear_model_cte_logistic."Logistic_0" + linear_model_cte_logistic."Logistic_1" + linear_model_cte_logistic."Logistic_2" + linear_model_cte_logistic."Logistic_3") AS "Proba_2", linear_model_cte_logistic."Logistic_3" / (linear_model_cte_logistic."Logistic_0" + linear_model_cte_logistic."Logistic_1" + linear_model_cte_logistic."Logistic_2" + linear_model_cte_logistic."Logistic_3") AS "Proba_3", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", CAST(NULL AS DOUBLE) AS "LogProba_2", CAST(NULL AS DOUBLE) AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM linear_model_cte_logistic), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", max(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE '-Infinity'::float8 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE '-Infinity'::float8 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE '-Infinity'::float8 END AS "LogProba_3", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte