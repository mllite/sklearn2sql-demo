-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPClassifier
-- Dataset : iris_date_tgt
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190536_9AP13X1_HL_1_relu_1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190536_9AP13X1_HL_1_relu_1" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_1_1" FLOAT, 
	"NEUR_1_2" FLOAT, 
	"NEUR_1_3" FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190536_9AP13X1_HL_1_relu_1 part 2. Populate

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3" 
FROM iris_date_tgt AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.1345753160311338 * "IL"."Feature_0" + -0.5912993521771219 * "IL"."Feature_1" + -0.732344697940357 * "IL"."Feature_2" + -0.8190190363901428 * "IL"."Feature_3" + 0.34759387273386655 AS "NEUR_1_1", 10.65791490171928 * "IL"."Feature_0" + 5.941953812790918 * "IL"."Feature_1" + -6.937405770134802 * "IL"."Feature_2" + -7.019334618873534 * "IL"."Feature_3" + 3.6145352353355715 AS "NEUR_1_2", -1.0441848224969668 * "IL"."Feature_0" + -6.955189536951996 * "IL"."Feature_1" + 18.67470636689057 * "IL"."Feature_2" + 11.073084511467925 * "IL"."Feature_3" + -2.6035349047112883 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 INSERT INTO "TMP_20221018190536_9AP13X1_HL_1_relu_1" ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "T"."KEY", "T"."NEUR_1_1", "T"."NEUR_1_2", "T"."NEUR_1_3" 
FROM (SELECT "HL_1_relu_1"."KEY" AS "KEY", "HL_1_relu_1"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu_1"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" AS "NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "T"

-- Code For temporary table TMP_20221018190536_9AP13X1_HL_1_relu_1 part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190536_9AP13X1_HL_1_relu_1_KEY" ON "TMP_20221018190536_9AP13X1_HL_1_relu_1" ("KEY")

-- Code For temporary table TMP_20221018190536_R4SEUP6_OL_softmax_1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190536_R4SEUP6_OL_softmax_1" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_3_1" FLOAT, 
	"NEUR_3_2" FLOAT, 
	"NEUR_3_3" FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190536_R4SEUP6_OL_softmax_1 part 2. Populate

WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", 0.6727767304572672 * "HL_1_relu_1"."NEUR_1_1" + 5.68832292041153 * "HL_1_relu_1"."NEUR_1_2" + -2.4935348770701116 * "HL_1_relu_1"."NEUR_1_3" + 5.396399488234674 AS "NEUR_2_1", 0.648820263645863 * "HL_1_relu_1"."NEUR_1_1" + -0.06939330935528558 * "HL_1_relu_1"."NEUR_1_2" + -0.6459164312805218 * "HL_1_relu_1"."NEUR_1_3" + -0.5292904296119374 AS "NEUR_2_2", -0.30071281604565187 * "HL_1_relu_1"."NEUR_1_1" + -0.8273260662887055 * "HL_1_relu_1"."NEUR_1_2" + -0.30103927795891033 * "HL_1_relu_1"."NEUR_1_3" + -0.010394282503777497 AS "NEUR_2_3", -0.34132351043268117 * "HL_1_relu_1"."NEUR_1_1" + -0.5188877348301151 * "HL_1_relu_1"."NEUR_1_2" + -0.12232690165741174 * "HL_1_relu_1"."NEUR_1_3" + -0.7406283496068888 AS "NEUR_2_4", -0.3867593378771806 * "HL_1_relu_1"."NEUR_1_1" + -5.410036108700444 * "HL_1_relu_1"."NEUR_1_2" + 17.917374692765513 * "HL_1_relu_1"."NEUR_1_3" + -6.774551317200858 AS "NEUR_2_5" 
FROM "TMP_20221018190536_9AP13X1_HL_1_relu_1" AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 6.3792247222015765 * "HL_2_relu"."NEUR_2_1" + 0.5914468402672952 * "HL_2_relu"."NEUR_2_2" + -0.5047257015541703 * "HL_2_relu"."NEUR_2_3" + -0.7697760278345729 * "HL_2_relu"."NEUR_2_4" + -18.961119282573968 * "HL_2_relu"."NEUR_2_5" + 17.07117127076454 AS "NEUR_3_1", -0.4811094223783825 * "HL_2_relu"."NEUR_2_1" + 0.6651622520932804 * "HL_2_relu"."NEUR_2_2" + 0.433200279752668 * "HL_2_relu"."NEUR_2_3" + 0.3492351848243533 * "HL_2_relu"."NEUR_2_4" + 9.081239259121983 * "HL_2_relu"."NEUR_2_5" + -3.0265280749039203 AS "NEUR_3_2", -6.405818037290752 * "HL_2_relu"."NEUR_2_1" + 0.4577559666242308 * "HL_2_relu"."NEUR_2_2" + 0.07954272165640244 * "HL_2_relu"."NEUR_2_3" + -0.40661802335613495 * "HL_2_relu"."NEUR_2_4" + 9.256789279162144 * "HL_2_relu"."NEUR_2_5" + -15.221400034827605 AS "NEUR_3_3" 
FROM "HL_2_relu"), 
"OL_softmax" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1", "OL_BA"."NEUR_3_2" AS "NEUR_3_2", "OL_BA"."NEUR_3_3" AS "NEUR_3_3" 
FROM "OL_BA")
 INSERT INTO "TMP_20221018190536_R4SEUP6_OL_softmax_1" ("KEY", "NEUR_3_1", "NEUR_3_2", "NEUR_3_3") SELECT "T"."KEY", "T"."NEUR_3_1", "T"."NEUR_3_2", "T"."NEUR_3_3" 
FROM (SELECT "OL_softmax_1"."KEY" AS "KEY", "OL_softmax_1"."NEUR_3_1" AS "NEUR_3_1", "OL_softmax_1"."NEUR_3_2" AS "NEUR_3_2", "OL_softmax_1"."NEUR_3_3" AS "NEUR_3_3" 
FROM (SELECT "OL_softmax"."KEY" AS "KEY", "OL_softmax"."NEUR_3_1" AS "NEUR_3_1", "OL_softmax"."NEUR_3_2" AS "NEUR_3_2", "OL_softmax"."NEUR_3_3" AS "NEUR_3_3" 
FROM "OL_softmax") AS "OL_softmax_1") AS "T"

-- Code For temporary table TMP_20221018190536_R4SEUP6_OL_softmax_1 part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190536_R4SEUP6_OL_softmax_1_KEY" ON "TMP_20221018190536_R4SEUP6_OL_softmax_1" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "OL_softmax_1"."KEY" AS "KEY", "OL_softmax_1"."NEUR_3_1" AS "Score_1789-07-14T00:00:00.000000000", "OL_softmax_1"."NEUR_3_2" AS "Score_1789-08-14T00:00:00.000000000", "OL_softmax_1"."NEUR_3_3" AS "Score_1789-09-14T00:00:00.000000000", CAST(NULL AS FLOAT) AS "Proba_1789-07-14T00:00:00.000000000", CAST(NULL AS FLOAT) AS "Proba_1789-08-14T00:00:00.000000000", CAST(NULL AS FLOAT) AS "Proba_1789-09-14T00:00:00.000000000", CAST(NULL AS FLOAT) AS "LogProba_1789-07-14T00:00:00.000000000", CAST(NULL AS FLOAT) AS "LogProba_1789-08-14T00:00:00.000000000", CAST(NULL AS FLOAT) AS "LogProba_1789-09-14T00:00:00.000000000", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "TMP_20221018190536_R4SEUP6_OL_softmax_1" AS "OL_softmax_1"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", '1789-07-14T00:00:00.000000000' AS class, orig_cte."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba", orig_cte."Proba_1789-07-14T00:00:00.000000000" AS "Proba", orig_cte."Score_1789-07-14T00:00:00.000000000" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", '1789-08-14T00:00:00.000000000' AS class, orig_cte."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba", orig_cte."Proba_1789-08-14T00:00:00.000000000" AS "Proba", orig_cte."Score_1789-08-14T00:00:00.000000000" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", '1789-09-14T00:00:00.000000000' AS class, orig_cte."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba", orig_cte."Proba_1789-09-14T00:00:00.000000000" AS "Proba", orig_cte."Score_1789-09-14T00:00:00.000000000" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_1789-07-14T00:00:00.000000000" AS "Score_1789-07-14T00:00:00.000000000", orig_cte."Score_1789-08-14T00:00:00.000000000" AS "Score_1789-08-14T00:00:00.000000000", orig_cte."Score_1789-09-14T00:00:00.000000000" AS "Score_1789-09-14T00:00:00.000000000", orig_cte."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", orig_cte."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", orig_cte."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", orig_cte."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", orig_cte."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", orig_cte."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_1789-07-14T00:00:00.000000000" AS "Score_1789-07-14T00:00:00.000000000", score_max."Score_1789-08-14T00:00:00.000000000" AS "Score_1789-08-14T00:00:00.000000000", score_max."Score_1789-09-14T00:00:00.000000000" AS "Score_1789-09-14T00:00:00.000000000", score_max."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", score_max."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", score_max."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", score_max."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", score_max."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", score_max."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(greatest(-100.0, score_max."Score_1789-07-14T00:00:00.000000000" - score_max."max_Score")) AS "exp_delta_Score_1789-07-14T00:00:00.000000000", exp(greatest(-100.0, score_max."Score_1789-08-14T00:00:00.000000000" - score_max."max_Score")) AS "exp_delta_Score_1789-08-14T00:00:00.000000000", exp(greatest(-100.0, score_max."Score_1789-09-14T00:00:00.000000000" - score_max."max_Score")) AS "exp_delta_Score_1789-09-14T00:00:00.000000000" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", '1789-07-14T00:00:00.000000000' AS class, score_soft_max_deltas."exp_delta_Score_1789-07-14T00:00:00.000000000" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", '1789-08-14T00:00:00.000000000' AS class, score_soft_max_deltas."exp_delta_Score_1789-08-14T00:00:00.000000000" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", '1789-09-14T00:00:00.000000000' AS class, score_soft_max_deltas."exp_delta_Score_1789-09-14T00:00:00.000000000" AS "exp_delta_Score" 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_1789-07-14T00:00:00.000000000" AS "Score_1789-07-14T00:00:00.000000000", score_soft_max_deltas."Score_1789-08-14T00:00:00.000000000" AS "Score_1789-08-14T00:00:00.000000000", score_soft_max_deltas."Score_1789-09-14T00:00:00.000000000" AS "Score_1789-09-14T00:00:00.000000000", score_soft_max_deltas."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", score_soft_max_deltas."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", score_soft_max_deltas."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", score_soft_max_deltas."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", score_soft_max_deltas."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", score_soft_max_deltas."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_1789-07-14T00:00:00.000000000" AS "exp_delta_Score_1789-07-14T00:00:00.000000000", score_soft_max_deltas."exp_delta_Score_1789-08-14T00:00:00.000000000" AS "exp_delta_Score_1789-08-14T00:00:00.000000000", score_soft_max_deltas."exp_delta_Score_1789-09-14T00:00:00.000000000" AS "exp_delta_Score_1789-09-14T00:00:00.000000000", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") AS sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_1789-07-14T00:00:00.000000000" AS "Score_1789-07-14T00:00:00.000000000", score_soft_max."Score_1789-08-14T00:00:00.000000000" AS "Score_1789-08-14T00:00:00.000000000", score_soft_max."Score_1789-09-14T00:00:00.000000000" AS "Score_1789-09-14T00:00:00.000000000", score_soft_max."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", score_soft_max."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", score_soft_max."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", score_soft_max."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", score_soft_max."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", score_soft_max."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_1789-07-14T00:00:00.000000000" AS "exp_delta_Score_1789-07-14T00:00:00.000000000", score_soft_max."exp_delta_Score_1789-08-14T00:00:00.000000000" AS "exp_delta_Score_1789-08-14T00:00:00.000000000", score_soft_max."exp_delta_Score_1789-09-14T00:00:00.000000000" AS "exp_delta_Score_1789-09-14T00:00:00.000000000", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_1789-07-14T00:00:00.000000000" AS "Score_1789-07-14T00:00:00.000000000", score_soft_max."Score_1789-08-14T00:00:00.000000000" AS "Score_1789-08-14T00:00:00.000000000", score_soft_max."Score_1789-09-14T00:00:00.000000000" AS "Score_1789-09-14T00:00:00.000000000", score_soft_max."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", score_soft_max."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", score_soft_max."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", score_soft_max."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", score_soft_max."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", score_soft_max."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_1789-07-14T00:00:00.000000000" AS "exp_delta_Score_1789-07-14T00:00:00.000000000", score_soft_max."exp_delta_Score_1789-08-14T00:00:00.000000000" AS "exp_delta_Score_1789-08-14T00:00:00.000000000", score_soft_max."exp_delta_Score_1789-09-14T00:00:00.000000000" AS "exp_delta_Score_1789-09-14T00:00:00.000000000", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_1789-07-14T00:00:00.000000000" AS "SoftProba_1789-07-14T00:00:00.000000000", soft_max_comp."SoftProba_1789-08-14T00:00:00.000000000" AS "SoftProba_1789-08-14T00:00:00.000000000", soft_max_comp."SoftProba_1789-09-14T00:00:00.000000000" AS "SoftProba_1789-09-14T00:00:00.000000000" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", max(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_1789-07-14T00:00:00.000000000" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1789-07-14T00:00:00.000000000", score_soft_max."exp_delta_Score_1789-08-14T00:00:00.000000000" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1789-08-14T00:00:00.000000000", score_soft_max."exp_delta_Score_1789-09-14T00:00:00.000000000" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1789-09-14T00:00:00.000000000" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_1789-07-14T00:00:00.000000000", CAST(NULL AS FLOAT) AS "Score_1789-08-14T00:00:00.000000000", CAST(NULL AS FLOAT) AS "Score_1789-09-14T00:00:00.000000000", arg_max_cte."SoftProba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", arg_max_cte."SoftProba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", arg_max_cte."SoftProba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", CASE WHEN (arg_max_cte."SoftProba_1789-07-14T00:00:00.000000000" IS NULL OR arg_max_cte."SoftProba_1789-07-14T00:00:00.000000000" > 0.0) THEN ln(arg_max_cte."SoftProba_1789-07-14T00:00:00.000000000") ELSE '-Infinity'::float8 END AS "LogProba_1789-07-14T00:00:00.000000000", CASE WHEN (arg_max_cte."SoftProba_1789-08-14T00:00:00.000000000" IS NULL OR arg_max_cte."SoftProba_1789-08-14T00:00:00.000000000" > 0.0) THEN ln(arg_max_cte."SoftProba_1789-08-14T00:00:00.000000000") ELSE '-Infinity'::float8 END AS "LogProba_1789-08-14T00:00:00.000000000", CASE WHEN (arg_max_cte."SoftProba_1789-09-14T00:00:00.000000000" IS NULL OR arg_max_cte."SoftProba_1789-09-14T00:00:00.000000000" > 0.0) THEN ln(arg_max_cte."SoftProba_1789-09-14T00:00:00.000000000") ELSE '-Infinity'::float8 END AS "LogProba_1789-09-14T00:00:00.000000000", arg_max_cte."arg_max_Score" AS "Decision", greatest(arg_max_cte."SoftProba_1789-07-14T00:00:00.000000000", arg_max_cte."SoftProba_1789-08-14T00:00:00.000000000", arg_max_cte."SoftProba_1789-09-14T00:00:00.000000000") AS "DecisionProba" 
FROM arg_max_cte