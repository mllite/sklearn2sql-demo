-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPClassifier_Pipeline
-- Dataset : iris
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602152918_vvn_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602152918_vvn_ads_imp_1_out  (
	"KEY" BIGINT, 
	imputer_output_2 DOUBLE PRECISION, 
	imputer_output_3 DOUBLE PRECISION, 
	imputer_output_4 DOUBLE PRECISION, 
	imputer_output_5 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602152918_vvn_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180602152918_vvn_ads_imp_1_out ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "U"."KEY", "U".imputer_output_2, "U".imputer_output_3, "U".imputer_output_4, "U".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.0366666666666657 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.8450000000000006 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM iris AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180602152918_zph_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602152918_zph_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_output_2 DOUBLE PRECISION, 
	scaler_output_3 DOUBLE PRECISION, 
	scaler_output_4 DOUBLE PRECISION, 
	scaler_output_5 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602152918_zph_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180602152918_zph_ads_sca_2_out ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "U"."KEY", "U".scaler_output_2, "U".scaler_output_3, "U".scaler_output_4, "U".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE PRECISION) - CAST(5.847499999999997 AS DOUBLE PRECISION)) / CAST(0.827039146594646 AS DOUBLE PRECISION) AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE PRECISION) - CAST(3.036666666666666 AS DOUBLE PRECISION)) / CAST(0.436259352016919 AS DOUBLE PRECISION) AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE PRECISION) - CAST(3.845 AS DOUBLE PRECISION)) / CAST(1.709817241695732 AS DOUBLE PRECISION) AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE PRECISION) - CAST(1.245 AS DOUBLE PRECISION)) / CAST(0.749872211335594 AS DOUBLE PRECISION) AS scaler_output_5 
FROM tmp_20180602152918_vvn_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table tmp_20180602152918_y20_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602152918_y20_hl_1_relu_1  (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE PRECISION, 
	"NEUR_1_2" DOUBLE PRECISION, 
	"NEUR_1_3" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602152918_y20_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180602152918_y20_hl_1_relu_1 ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE PRECISION) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE PRECISION) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE PRECISION) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE PRECISION) AS scaler_output_5 
FROM tmp_20180602152918_zph_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", CAST(-0.841292786858615 AS DOUBLE PRECISION) * "IL".scaler_output_2 + CAST(14.861456730567545 AS DOUBLE PRECISION) * "IL".scaler_output_3 + CAST(-10.78251730397132 AS DOUBLE PRECISION) * "IL".scaler_output_4 + CAST(-10.377612998045162 AS DOUBLE PRECISION) * "IL".scaler_output_5 + CAST(2.245891969926964 AS DOUBLE PRECISION) AS "NEUR_1_1", CAST(-4.437051894114932 AS DOUBLE PRECISION) * "IL".scaler_output_2 + CAST(4.594423237258979 AS DOUBLE PRECISION) * "IL".scaler_output_3 + CAST(-6.780366830439968 AS DOUBLE PRECISION) * "IL".scaler_output_4 + CAST(-5.859673816074868 AS DOUBLE PRECISION) * "IL".scaler_output_5 + CAST(-2.414376384413553 AS DOUBLE PRECISION) AS "NEUR_1_2", CAST(-3.730560605650208 AS DOUBLE PRECISION) * "IL".scaler_output_2 + CAST(-1.708029425455542 AS DOUBLE PRECISION) * "IL".scaler_output_3 + CAST(16.075961222502848 AS DOUBLE PRECISION) * "IL".scaler_output_4 + CAST(4.701510840147061 AS DOUBLE PRECISION) * "IL".scaler_output_5 + CAST(-10.982039769110065 AS DOUBLE PRECISION) AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table tmp_20180602152918_4zy_ol_softmax_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602152918_4zy_ol_softmax_1  (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE PRECISION, 
	"NEUR_3_2" DOUBLE PRECISION, 
	"NEUR_3_3" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602152918_4zy_ol_softmax_1 part 2. Populate

INSERT INTO tmp_20180602152918_4zy_ol_softmax_1 ("KEY", "NEUR_3_1", "NEUR_3_2", "NEUR_3_3") SELECT "U"."KEY", "U"."NEUR_3_1", "U"."NEUR_3_2", "U"."NEUR_3_3" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", CAST(4.802628275790061 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(2.385191423963928 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-6.137068795883637 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-4.129195176965002 AS DOUBLE PRECISION) AS "NEUR_2_1", CAST(-0.765522781332369 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(3.834474949832534 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.801835589309112 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-2.274224105924782 AS DOUBLE PRECISION) AS "NEUR_2_2", CAST(-0.300664841399637 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.82719407765008 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.300991251230314 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.010394282503777 AS DOUBLE PRECISION) AS "NEUR_2_3", CAST(-0.341269056901892 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.518804953338625 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.122307386061482 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.740628349606889 AS DOUBLE PRECISION) AS "NEUR_2_4", CAST(-4.065295719003372 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.682800142785825 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(11.962556576412146 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(1.692551863026365 AS DOUBLE PRECISION) AS "NEUR_2_5" 
FROM tmp_20180602152918_y20_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", CAST(4.932910621886575 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_1" + CAST(7.160161889687136 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_2" + CAST(-0.504645179422775 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_3" + CAST(-0.769653220523105 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_4" + CAST(-11.87866204118191 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_5" + CAST(-21.607792454821038 AS DOUBLE PRECISION) AS "NEUR_3_1", CAST(2.908187208764973 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_1" + CAST(1.412214590183448 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_2" + CAST(0.433131168531018 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_3" + CAST(0.349179469093327 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_4" + CAST(3.560939998511619 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_5" + CAST(32.9669934591267 AS DOUBLE PRECISION) AS "NEUR_3_2", CAST(-8.348719571042205 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_1" + CAST(-6.858284924549348 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_2" + CAST(0.07953003169538 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_3" + CAST(-0.406553152972502 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_4" + CAST(7.694730704047067 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_5" + CAST(-12.535957843272707 AS DOUBLE PRECISION) AS "NEUR_3_3" 
FROM "HL_2_relu"), 
"OL_softmax" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1", "OL_BA"."NEUR_3_2" AS "NEUR_3_2", "OL_BA"."NEUR_3_3" AS "NEUR_3_3" 
FROM "OL_BA")
 SELECT "OL_softmax_1"."KEY", "OL_softmax_1"."NEUR_3_1", "OL_softmax_1"."NEUR_3_2", "OL_softmax_1"."NEUR_3_3" 
FROM (SELECT "OL_softmax"."KEY" AS "KEY", "OL_softmax"."NEUR_3_1" AS "NEUR_3_1", "OL_softmax"."NEUR_3_2" AS "NEUR_3_2", "OL_softmax"."NEUR_3_3" AS "NEUR_3_3" 
FROM "OL_softmax") AS "OL_softmax_1") AS "U"

-- Model deployment code

WITH orig_cte AS 
(SELECT "OL_softmax_1"."KEY" AS "KEY", "OL_softmax_1"."NEUR_3_1" AS "Score_0", "OL_softmax_1"."NEUR_3_2" AS "Score_1", "OL_softmax_1"."NEUR_3_3" AS "Score_2", CAST(NULL AS DOUBLE PRECISION) AS "Proba_0", CAST(NULL AS DOUBLE PRECISION) AS "Proba_1", CAST(NULL AS DOUBLE PRECISION) AS "Proba_2", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_2", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM tmp_20180602152918_4zy_ol_softmax_1 AS "OL_softmax_1"), 
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