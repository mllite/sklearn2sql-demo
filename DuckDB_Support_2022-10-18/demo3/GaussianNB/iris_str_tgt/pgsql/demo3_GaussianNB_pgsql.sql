-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GaussianNB
-- Dataset : iris_str_tgt
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190629_Y36B9T3_NaiveBayes_Scores part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190629_Y36B9T3_NaiveBayes_Scores" (
	"KEY" BIGINT NOT NULL, 
	"Score_CLASS_0" FLOAT, 
	"Score_CLASS_1" FLOAT, 
	"Score_CLASS_2" FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190629_Y36B9T3_NaiveBayes_Scores part 2. Populate

WITH centered_data AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) - 4.95945945945946 AS "Feature_0_CLASS_0", CAST("ADS"."Feature_1" AS FLOAT) - 3.42972972972973 AS "Feature_1_CLASS_0", CAST("ADS"."Feature_2" AS FLOAT) - 1.4837837837837833 AS "Feature_2_CLASS_0", CAST("ADS"."Feature_3" AS FLOAT) - 0.26216216216216226 AS "Feature_3_CLASS_0", CAST("ADS"."Feature_0" AS FLOAT) - 5.914999999999999 AS "Feature_0_CLASS_1", CAST("ADS"."Feature_1" AS FLOAT) - 2.7600000000000007 AS "Feature_1_CLASS_1", CAST("ADS"."Feature_2" AS FLOAT) - 4.245 AS "Feature_2_CLASS_1", CAST("ADS"."Feature_3" AS FLOAT) - 1.325 AS "Feature_3_CLASS_1", CAST("ADS"."Feature_0" AS FLOAT) - 6.548837209302325 AS "Feature_0_CLASS_2", CAST("ADS"."Feature_1" AS FLOAT) - 2.9674418604651165 AS "Feature_1_CLASS_2", CAST("ADS"."Feature_2" AS FLOAT) - 5.502325581395348 AS "Feature_2_CLASS_2", CAST("ADS"."Feature_3" AS FLOAT) - 2.01860465116279 AS "Feature_3_CLASS_2" 
FROM iris_str_tgt AS "ADS"), 
"NaiveBayes_data" AS 
(SELECT "Values"."KEY" AS "KEY", "Values"."Feature" AS "Feature", "Values"."log_proba_CLASS_0" AS "log_proba_CLASS_0", "Values"."log_proba_CLASS_1" AS "log_proba_CLASS_1", "Values"."log_proba_CLASS_2" AS "log_proba_CLASS_2" 
FROM (SELECT centered_data."KEY" AS "KEY", 0 AS "Feature", -0.5 * -0.2758338192693733 - (0.5 * centered_data."Feature_0_CLASS_0" * centered_data."Feature_0_CLASS_0") / 0.12078889993257921 AS "log_proba_CLASS_0", -0.5 * 0.6078169373362268 - (0.5 * centered_data."Feature_0_CLASS_1" * centered_data."Feature_0_CLASS_1") / 0.2922750029274661 AS "log_proba_CLASS_1", -0.5 * 0.8115275892763195 - (0.5 * centered_data."Feature_0_CLASS_2" * centered_data."Feature_0_CLASS_2") / 0.35831260433363155 AS "log_proba_CLASS_2" 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 1 AS "Feature", -0.5 * -0.05433652308173497 - (0.5 * centered_data."Feature_1_CLASS_0" * centered_data."Feature_1_CLASS_0") / 0.15073776771928485 AS "log_proba_CLASS_0", -0.5 * -0.388673313177415 - (0.5 * centered_data."Feature_1_CLASS_1" * centered_data."Feature_1_CLASS_1") / 0.10790000292746597 AS "log_proba_CLASS_1", -0.5 * -0.4706749256063316 - (0.5 * centered_data."Feature_1_CLASS_2" * centered_data."Feature_1_CLASS_2") / 0.09940508675656276 AS "log_proba_CLASS_2" 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 2 AS "Feature", -0.5 * -1.7828181096926965 - (0.5 * centered_data."Feature_2_CLASS_0" * centered_data."Feature_2_CLASS_0") / 0.026764064286121922 AS "log_proba_CLASS_0", -0.5 * 0.3680924075199263 - (0.5 * centered_data."Feature_2_CLASS_1" * centered_data."Feature_2_CLASS_1") / 0.22997500292746606 AS "log_proba_CLASS_1", -0.5 * 0.40976870413955446 - (0.5 * centered_data."Feature_2_CLASS_2" * centered_data."Feature_2_CLASS_2") / 0.23976203645910477 AS "log_proba_CLASS_2" 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 3 AS "Feature", -0.5 * -2.578176826980025 - (0.5 * centered_data."Feature_3_CLASS_0" * centered_data."Feature_3_CLASS_0") / 0.012081814468736983 AS "log_proba_CLASS_0", -0.5 * -1.3233195777874367 - (0.5 * centered_data."Feature_3_CLASS_1" * centered_data."Feature_3_CLASS_1") / 0.04237500292746598 AS "log_proba_CLASS_1", -0.5 * -0.7039347550471999 - (0.5 * centered_data."Feature_3_CLASS_2" * centered_data."Feature_3_CLASS_2") / 0.0787236373244373 AS "log_proba_CLASS_2" 
FROM centered_data) AS "Values")
 INSERT INTO "TMP_20221018190629_Y36B9T3_NaiveBayes_Scores" ("KEY", "Score_CLASS_0", "Score_CLASS_1", "Score_CLASS_2") SELECT "T"."KEY", "T"."Score_CLASS_0", "T"."Score_CLASS_1", "T"."Score_CLASS_2" 
FROM (SELECT "NaiveBayes_Scores"."KEY" AS "KEY", "NaiveBayes_Scores"."Score_CLASS_0" AS "Score_CLASS_0", "NaiveBayes_Scores"."Score_CLASS_1" AS "Score_CLASS_1", "NaiveBayes_Scores"."Score_CLASS_2" AS "Score_CLASS_2" 
FROM (SELECT nb_sums."KEY" AS "KEY", nb_sums."Score_CLASS_0" AS "Score_CLASS_0", nb_sums."Score_CLASS_1" AS "Score_CLASS_1", nb_sums."Score_CLASS_2" AS "Score_CLASS_2" 
FROM (SELECT "NaiveBayes_data"."KEY" AS "KEY", -1.1765738301378215 + sum("NaiveBayes_data"."log_proba_CLASS_0") AS "Score_CLASS_0", -1.0986122886681098 + sum("NaiveBayes_data"."log_proba_CLASS_1") AS "Score_CLASS_1", -1.0262916270884836 + sum("NaiveBayes_data"."log_proba_CLASS_2") AS "Score_CLASS_2" 
FROM "NaiveBayes_data" GROUP BY "NaiveBayes_data"."KEY") AS nb_sums) AS "NaiveBayes_Scores") AS "T"

-- Code For temporary table TMP_20221018190629_Y36B9T3_NaiveBayes_Scores part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190629_Y36B9T3_NaiveBayes_Scores_KEY" ON "TMP_20221018190629_Y36B9T3_NaiveBayes_Scores" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "NaiveBayes_Scores"."KEY" AS "KEY", "NaiveBayes_Scores"."Score_CLASS_0" AS "Score_CLASS_0", "NaiveBayes_Scores"."Score_CLASS_1" AS "Score_CLASS_1", "NaiveBayes_Scores"."Score_CLASS_2" AS "Score_CLASS_2", CAST(NULL AS FLOAT) AS "Proba_CLASS_0", CAST(NULL AS FLOAT) AS "Proba_CLASS_1", CAST(NULL AS FLOAT) AS "Proba_CLASS_2", CAST(NULL AS FLOAT) AS "LogProba_CLASS_0", CAST(NULL AS FLOAT) AS "LogProba_CLASS_1", CAST(NULL AS FLOAT) AS "LogProba_CLASS_2", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "TMP_20221018190629_Y36B9T3_NaiveBayes_Scores" AS "NaiveBayes_Scores"), 
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
(SELECT score_max."KEY" AS "KEY", score_max."Score_CLASS_0" AS "Score_CLASS_0", score_max."Score_CLASS_1" AS "Score_CLASS_1", score_max."Score_CLASS_2" AS "Score_CLASS_2", score_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(greatest(-100.0, score_max."Score_CLASS_0" - score_max."max_Score")) AS "exp_delta_Score_CLASS_0", exp(greatest(-100.0, score_max."Score_CLASS_1" - score_max."max_Score")) AS "exp_delta_Score_CLASS_1", exp(greatest(-100.0, score_max."Score_CLASS_2" - score_max."max_Score")) AS "exp_delta_Score_CLASS_2" 
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
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", max(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_CLASS_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_CLASS_0", score_soft_max."exp_delta_Score_CLASS_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_CLASS_1", score_soft_max."exp_delta_Score_CLASS_2" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_CLASS_2" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_CLASS_0", CAST(NULL AS FLOAT) AS "Score_CLASS_1", CAST(NULL AS FLOAT) AS "Score_CLASS_2", arg_max_cte."SoftProba_CLASS_0" AS "Proba_CLASS_0", arg_max_cte."SoftProba_CLASS_1" AS "Proba_CLASS_1", arg_max_cte."SoftProba_CLASS_2" AS "Proba_CLASS_2", CASE WHEN (arg_max_cte."SoftProba_CLASS_0" IS NULL OR arg_max_cte."SoftProba_CLASS_0" > 0.0) THEN ln(arg_max_cte."SoftProba_CLASS_0") ELSE '-Infinity'::float8 END AS "LogProba_CLASS_0", CASE WHEN (arg_max_cte."SoftProba_CLASS_1" IS NULL OR arg_max_cte."SoftProba_CLASS_1" > 0.0) THEN ln(arg_max_cte."SoftProba_CLASS_1") ELSE '-Infinity'::float8 END AS "LogProba_CLASS_1", CASE WHEN (arg_max_cte."SoftProba_CLASS_2" IS NULL OR arg_max_cte."SoftProba_CLASS_2" > 0.0) THEN ln(arg_max_cte."SoftProba_CLASS_2") ELSE '-Infinity'::float8 END AS "LogProba_CLASS_2", arg_max_cte."arg_max_Score" AS "Decision", greatest(arg_max_cte."SoftProba_CLASS_0", arg_max_cte."SoftProba_CLASS_1", arg_max_cte."SoftProba_CLASS_2") AS "DecisionProba" 
FROM arg_max_cte