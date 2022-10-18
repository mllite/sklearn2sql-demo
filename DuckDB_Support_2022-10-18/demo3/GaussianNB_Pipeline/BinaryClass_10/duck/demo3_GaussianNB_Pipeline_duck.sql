-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GaussianNB_Pipeline
-- Dataset : BinaryClass_10
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018184822_QKDR1B5_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184822_QKDR1B5_ADS_imp_1_OUT" (
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

-- Code For temporary table TMP_20221018184822_QKDR1B5_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018184822_QKDR1B5_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9, imputer_output_10, imputer_output_11) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9, "T".imputer_output_10, "T".imputer_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9, "ADS_imp_1_OUT".imputer_output_10 AS imputer_output_10, "ADS_imp_1_OUT".imputer_output_11 AS imputer_output_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS imputer_output_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS imputer_output_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS imputer_output_11 
FROM "BinaryClass_10" AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018184822_QKDR1B5_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018184822_QKDR1B5_ADS_imp_1_OUT_KEY" ON "TMP_20221018184822_QKDR1B5_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018184822_636MBJG_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184822_636MBJG_ADS_sca_2_OUT" (
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

-- Code For temporary table TMP_20221018184822_636MBJG_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018184822_636MBJG_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9, scaler_output_10, scaler_output_11) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9, "T".scaler_output_10, "T".scaler_output_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9, "ADS_sca_2_OUT".scaler_output_10 AS scaler_output_10, "ADS_sca_2_OUT".scaler_output_11 AS scaler_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 0.061829205238134496) / 1.2283839562090673 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 0.17702463767183324) / 0.940821656314017 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 0.04138385004903454) / 1.0741824888811282 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 0.13060646805847148) / 1.0792244559733761 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS DOUBLE) - -0.05955810471983082) / 1.1095891190508123 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS DOUBLE) - -0.04892908987010584) / 1.3781871812029047 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS DOUBLE) - 0.19101797861713127) / 0.9735285246303208 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS DOUBLE) - 0.02204959673267471) / 0.47460301203797095 AS scaler_output_9, (CAST("ADS_imp_1_OUT".imputer_output_10 AS DOUBLE) - -0.057729814034140035) / 1.064607524840552 AS scaler_output_10, (CAST("ADS_imp_1_OUT".imputer_output_11 AS DOUBLE) - -0.05254959205203237) / 1.2245328896554564 AS scaler_output_11 
FROM "TMP_20221018184822_QKDR1B5_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018184822_636MBJG_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018184822_636MBJG_ADS_sca_2_OUT_KEY" ON "TMP_20221018184822_636MBJG_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20221018184822_M26NRIT_NaiveBayes_Scores part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184822_M26NRIT_NaiveBayes_Scores" (
	"KEY" BIGINT NOT NULL, 
	"Score_0" DOUBLE, 
	"Score_1" DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018184822_M26NRIT_NaiveBayes_Scores part 2. Populate

WITH centered_data AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) - 0.6608885522985145 AS scaler_output_2_0, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) - 0.05011958986810387 AS scaler_output_3_0, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) - 0.010237135493869304 AS scaler_output_4_0, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) - -0.1134260581927905 AS scaler_output_5_0, CAST("ADS_sca_2_OUT".scaler_output_6 AS DOUBLE) - 0.091931902073065 AS scaler_output_6_0, CAST("ADS_sca_2_OUT".scaler_output_7 AS DOUBLE) - 0.026957993139275754 AS scaler_output_7_0, CAST("ADS_sca_2_OUT".scaler_output_8 AS DOUBLE) - 0.19931034565274267 AS scaler_output_8_0, CAST("ADS_sca_2_OUT".scaler_output_9 AS DOUBLE) - 0.6831306672271085 AS scaler_output_9_0, CAST("ADS_sca_2_OUT".scaler_output_10 AS DOUBLE) - -0.05290181072678812 AS scaler_output_10_0, CAST("ADS_sca_2_OUT".scaler_output_11 AS DOUBLE) - -0.6905707153132041 AS scaler_output_11_0, CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) - -0.6608885522985144 AS scaler_output_2_1, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) - -0.05011958986810381 AS scaler_output_3_1, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) - -0.010237135493869402 AS scaler_output_4_1, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) - 0.11342605819279053 AS scaler_output_5_1, CAST("ADS_sca_2_OUT".scaler_output_6 AS DOUBLE) - -0.09193190207306502 AS scaler_output_6_1, CAST("ADS_sca_2_OUT".scaler_output_7 AS DOUBLE) - -0.02695799313927582 AS scaler_output_7_1, CAST("ADS_sca_2_OUT".scaler_output_8 AS DOUBLE) - -0.19931034565274264 AS scaler_output_8_1, CAST("ADS_sca_2_OUT".scaler_output_9 AS DOUBLE) - -0.6831306672271085 AS scaler_output_9_1, CAST("ADS_sca_2_OUT".scaler_output_10 AS DOUBLE) - 0.05290181072678807 AS scaler_output_10_1, CAST("ADS_sca_2_OUT".scaler_output_11 AS DOUBLE) - 0.6905707153132041 AS scaler_output_11_1 
FROM "TMP_20221018184822_636MBJG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"NaiveBayes_data" AS 
(SELECT "Values"."KEY" AS "KEY", "Values"."Feature" AS "Feature", "Values".log_proba_0 AS log_proba_0, "Values".log_proba_1 AS log_proba_1 
FROM (SELECT centered_data."KEY" AS "KEY", 0 AS "Feature", -0.5 * 0.7545429935238454 - (0.5 * centered_data.scaler_output_2_0 * centered_data.scaler_output_2_0) / 0.33846517479399624 AS log_proba_0, -0.5 * 1.599603976254543 - (0.5 * centered_data.scaler_output_2_1 * centered_data.scaler_output_2_1) / 0.7879874700875505 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 1 AS "Feature", -0.5 * 1.755985503747587 - (0.5 * centered_data.scaler_output_3_0 * centered_data.scaler_output_3_0) / 0.9213718643920022 AS log_proba_0, -0.5 * 1.9088984573543164 - (0.5 * centered_data.scaler_output_3_1 * centered_data.scaler_output_3_1) / 1.0736041910309042 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 2 AS "Feature", -0.5 * 1.5895557833789096 - (0.5 * centered_data.scaler_output_4_0 * centered_data.scaler_output_4_0) / 0.7801092671417778 AS log_proba_0, -0.5 * 2.0364665278554943 - (0.5 * centered_data.scaler_output_4_1 * centered_data.scaler_output_4_1) / 1.2196811369719827 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 3 AS "Feature", -0.5 * 1.9720068756709808 - (0.5 * centered_data.scaler_output_5_0 * centered_data.scaler_output_5_0) / 1.1435412522560795 AS log_proba_0, -0.5 * 1.6524239815631545 - (0.5 * centered_data.scaler_output_5_1 * centered_data.scaler_output_5_1) / 0.8307278083896118 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 4 AS "Feature", -0.5 * 1.9028415823903153 - (0.5 * centered_data.scaler_output_6_0 * centered_data.scaler_output_6_0) / 1.0671211579648936 AS log_proba_0, -0.5 * 1.7501118360318897 - (0.5 * centered_data.scaler_output_6_1 * centered_data.scaler_output_6_1) / 0.9159758947975633 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 5 AS "Feature", -0.5 * 1.7474523867108946 - (0.5 * centered_data.scaler_output_7_0 * centered_data.scaler_output_7_0) / 0.9135431396544423 AS log_proba_0, -0.5 * 1.9194601829428275 - (0.5 * centered_data.scaler_output_7_1 * centered_data.scaler_output_7_1) / 1.0850033955573626 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 6 AS "Feature", -0.5 * 1.7568016284099544 - (0.5 * centered_data.scaler_output_8_0 * centered_data.scaler_output_8_0) / 0.9221241256214605 AS log_proba_0, -0.5 * 1.8363024760023794 - (0.5 * centered_data.scaler_output_8_1 * centered_data.scaler_output_8_1) / 0.9984266486101087 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 7 AS "Feature", -0.5 * 0.46653573969166034 - (0.5 * centered_data.scaler_output_9_0 * centered_data.scaler_output_9_0) / 0.2537663475858361 AS log_proba_0, -0.5 * 1.6307282119596742 - (0.5 * centered_data.scaler_output_9_1 * centered_data.scaler_output_9_1) / 0.8128986374018546 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 8 AS "Feature", -0.5 * 1.6698439164311882 - (0.5 * centered_data.scaler_output_10_0 * centered_data.scaler_output_10_0) / 0.8453258116879874 AS log_proba_0, -0.5 * 1.9768360666480904 - (0.5 * centered_data.scaler_output_10_1 * centered_data.scaler_output_10_1) / 1.149076987155667 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 9 AS "Feature", -0.5 * 0.259643314471311 - (0.5 * centered_data.scaler_output_11_0 * centered_data.scaler_output_11_0) / 0.20633922279541594 AS log_proba_0, -0.5 * 1.6633867097753936 - (0.5 * centered_data.scaler_output_11_1 * centered_data.scaler_output_11_1) / 0.8398849535082032 AS log_proba_1 
FROM centered_data) AS "Values")
 INSERT INTO "TMP_20221018184822_M26NRIT_NaiveBayes_Scores" ("KEY", "Score_0", "Score_1") SELECT "T"."KEY", "T"."Score_0", "T"."Score_1" 
FROM (SELECT "NaiveBayes_Scores"."KEY" AS "KEY", "NaiveBayes_Scores"."Score_0" AS "Score_0", "NaiveBayes_Scores"."Score_1" AS "Score_1" 
FROM (SELECT nb_sums."KEY" AS "KEY", nb_sums."Score_0" AS "Score_0", nb_sums."Score_1" AS "Score_1" 
FROM (SELECT "NaiveBayes_data"."KEY" AS "KEY", -0.6931471805599453 + sum("NaiveBayes_data".log_proba_0) AS "Score_0", -0.6931471805599453 + sum("NaiveBayes_data".log_proba_1) AS "Score_1" 
FROM "NaiveBayes_data" GROUP BY "NaiveBayes_data"."KEY") AS nb_sums) AS "NaiveBayes_Scores") AS "T"

-- Code For temporary table TMP_20221018184822_M26NRIT_NaiveBayes_Scores part 3. Create Index 

CREATE INDEX "ix_TMP_20221018184822_M26NRIT_NaiveBayes_Scores_KEY" ON "TMP_20221018184822_M26NRIT_NaiveBayes_Scores" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "NaiveBayes_Scores"."KEY" AS "KEY", "NaiveBayes_Scores"."Score_0" AS "Score_0", "NaiveBayes_Scores"."Score_1" AS "Score_1", CAST(NULL AS DOUBLE) AS "Proba_0", CAST(NULL AS DOUBLE) AS "Proba_1", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM "TMP_20221018184822_M26NRIT_NaiveBayes_Scores" AS "NaiveBayes_Scores"), 
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
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(greatest(-100.0, score_max."Score_0" - score_max."max_Score")) AS "exp_delta_Score_0", exp(greatest(-100.0, score_max."Score_1" - score_max."max_Score")) AS "exp_delta_Score_1" 
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
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", max(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE '-Infinity'::float8 END AS "LogProba_1", arg_max_cte."arg_max_Score" AS "Decision", greatest(arg_max_cte."SoftProba_0", arg_max_cte."SoftProba_1") AS "DecisionProba" 
FROM arg_max_cte