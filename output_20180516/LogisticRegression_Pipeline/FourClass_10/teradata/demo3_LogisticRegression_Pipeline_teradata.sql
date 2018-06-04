-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LogisticRegression_Pipeline
-- Dataset : FourClass_10
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602143223_w6t_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602143223_w6t_ads_imp_1_out  (
	"KEY" BIGINT, 
	impter_2 DOUBLE PRECISION, 
	impter_3 DOUBLE PRECISION, 
	impter_4 DOUBLE PRECISION, 
	impter_5 DOUBLE PRECISION, 
	impter_6 DOUBLE PRECISION, 
	impter_7 DOUBLE PRECISION, 
	impter_8 DOUBLE PRECISION, 
	impter_9 DOUBLE PRECISION, 
	impter_10 DOUBLE PRECISION, 
	impter_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602143223_w6t_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180602143223_w6t_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.003903374463034205 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.6152232215702322 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.042796236914291665 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.7709819558904074 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.43300733624893334 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.0424956965794036 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.29809080119845455 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.14672241507251663 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.01746942384662034 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.11507331415602866 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "FourClass_10" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180602143223_fnm_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602143223_fnm_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_2 DOUBLE PRECISION, 
	scaler_3 DOUBLE PRECISION, 
	scaler_4 DOUBLE PRECISION, 
	scaler_5 DOUBLE PRECISION, 
	scaler_6 DOUBLE PRECISION, 
	scaler_7 DOUBLE PRECISION, 
	scaler_8 DOUBLE PRECISION, 
	scaler_9 DOUBLE PRECISION, 
	scaler_10 DOUBLE PRECISION, 
	scaler_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602143223_fnm_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180602143223_fnm_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - CAST(-0.003903374463034 AS DOUBLE PRECISION)) / CAST(0.9795060640184 AS DOUBLE PRECISION) AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - CAST(0.615223221570232 AS DOUBLE PRECISION)) / CAST(1.390080723620524 AS DOUBLE PRECISION) AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - CAST(0.042796236914292 AS DOUBLE PRECISION)) / CAST(1.496268513587076 AS DOUBLE PRECISION) AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - CAST(0.770981955890407 AS DOUBLE PRECISION)) / CAST(2.333356106011174 AS DOUBLE PRECISION) AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - CAST(-0.433007336248933 AS DOUBLE PRECISION)) / CAST(1.402975777264875 AS DOUBLE PRECISION) AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - CAST(-0.042495696579404 AS DOUBLE PRECISION)) / CAST(0.955809107687323 AS DOUBLE PRECISION) AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - CAST(-0.298090801198455 AS DOUBLE PRECISION)) / CAST(1.017013180721433 AS DOUBLE PRECISION) AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - CAST(0.146722415072517 AS DOUBLE PRECISION)) / CAST(1.600798539929603 AS DOUBLE PRECISION) AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - CAST(0.01746942384662 AS DOUBLE PRECISION)) / CAST(1.148729636167142 AS DOUBLE PRECISION) AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - CAST(0.115073314156029 AS DOUBLE PRECISION)) / CAST(0.969091185733622 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180602143223_w6t_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH linear_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE PRECISION) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE PRECISION) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE PRECISION) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE PRECISION) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE PRECISION) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE PRECISION) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE PRECISION) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE PRECISION) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE PRECISION) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180602143223_fnm_ads_sca_2_out AS "ADS_sca_2_OUT"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", CAST(0.29528535484002 AS DOUBLE PRECISION) * linear_input.scaler_2 + CAST(-0.552675987262323 AS DOUBLE PRECISION) * linear_input.scaler_3 + CAST(-0.149895936255041 AS DOUBLE PRECISION) * linear_input.scaler_4 + CAST(-0.309024988120952 AS DOUBLE PRECISION) * linear_input.scaler_5 + CAST(0.9661792392905 AS DOUBLE PRECISION) * linear_input.scaler_6 + CAST(-0.316382037151114 AS DOUBLE PRECISION) * linear_input.scaler_7 + CAST(0.250955126128057 AS DOUBLE PRECISION) * linear_input.scaler_8 + CAST(0.576383338711538 AS DOUBLE PRECISION) * linear_input.scaler_9 + CAST(0.567398748127365 AS DOUBLE PRECISION) * linear_input.scaler_10 + CAST(0.10443684934404 AS DOUBLE PRECISION) * linear_input.scaler_11 + CAST(-1.69000197554308 AS DOUBLE PRECISION) AS "Score_0", CAST(-0.047201699059281 AS DOUBLE PRECISION) * linear_input.scaler_2 + CAST(0.238687945504582 AS DOUBLE PRECISION) * linear_input.scaler_3 + CAST(0.471481531304852 AS DOUBLE PRECISION) * linear_input.scaler_4 + CAST(0.463784916908129 AS DOUBLE PRECISION) * linear_input.scaler_5 + CAST(0.483969494331467 AS DOUBLE PRECISION) * linear_input.scaler_6 + CAST(-0.057581453557212 AS DOUBLE PRECISION) * linear_input.scaler_7 + CAST(-0.422575903636914 AS DOUBLE PRECISION) * linear_input.scaler_8 + CAST(0.360598528737288 AS DOUBLE PRECISION) * linear_input.scaler_9 + CAST(-0.30088387779502 AS DOUBLE PRECISION) * linear_input.scaler_10 + CAST(0.039644623193591 AS DOUBLE PRECISION) * linear_input.scaler_11 + CAST(-1.489182886571369 AS DOUBLE PRECISION) AS "Score_1", CAST(-0.209918903903811 AS DOUBLE PRECISION) * linear_input.scaler_2 + CAST(-0.652133258622162 AS DOUBLE PRECISION) * linear_input.scaler_3 + CAST(-0.966770120529734 AS DOUBLE PRECISION) * linear_input.scaler_4 + CAST(-0.503349164401245 AS DOUBLE PRECISION) * linear_input.scaler_5 + CAST(-0.97667605707769 AS DOUBLE PRECISION) * linear_input.scaler_6 + CAST(0.009332957669153 AS DOUBLE PRECISION) * linear_input.scaler_7 + CAST(0.262343135676999 AS DOUBLE PRECISION) * linear_input.scaler_8 + CAST(0.63268581372207 AS DOUBLE PRECISION) * linear_input.scaler_9 + CAST(0.479992337695572 AS DOUBLE PRECISION) * linear_input.scaler_10 + CAST(-0.040319348174 AS DOUBLE PRECISION) * linear_input.scaler_11 + CAST(-1.569145872409298 AS DOUBLE PRECISION) AS "Score_2", CAST(-0.267047685438372 AS DOUBLE PRECISION) * linear_input.scaler_2 + CAST(1.402887118082646 AS DOUBLE PRECISION) * linear_input.scaler_3 + CAST(0.131612305089028 AS DOUBLE PRECISION) * linear_input.scaler_4 + CAST(0.340327685485069 AS DOUBLE PRECISION) * linear_input.scaler_5 + CAST(-0.620773611495924 AS DOUBLE PRECISION) * linear_input.scaler_6 + CAST(0.368307546201463 AS DOUBLE PRECISION) * linear_input.scaler_7 + CAST(-0.026038414457844 AS DOUBLE PRECISION) * linear_input.scaler_8 + CAST(-1.437975216938557 AS DOUBLE PRECISION) * linear_input.scaler_9 + CAST(-0.512175147667885 AS DOUBLE PRECISION) * linear_input.scaler_10 + CAST(-0.090780592589467 AS DOUBLE PRECISION) * linear_input.scaler_11 + CAST(-1.599622942163221 AS DOUBLE PRECISION) AS "Score_3" 
FROM linear_input), 
linear_model_cte_logistic AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -linear_model_cte."Score_0"), CAST(100.0 AS DOUBLE PRECISION)))) AS "Logistic_0", linear_model_cte."Score_1" AS "Score_1", CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -linear_model_cte."Score_1"), CAST(100.0 AS DOUBLE PRECISION)))) AS "Logistic_1", linear_model_cte."Score_2" AS "Score_2", CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -linear_model_cte."Score_2"), CAST(100.0 AS DOUBLE PRECISION)))) AS "Logistic_2", linear_model_cte."Score_3" AS "Score_3", CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -linear_model_cte."Score_3"), CAST(100.0 AS DOUBLE PRECISION)))) AS "Logistic_3" 
FROM linear_model_cte), 
orig_cte AS 
(SELECT linear_model_cte_logistic."KEY" AS "KEY", linear_model_cte_logistic."Score_0" AS "Score_0", linear_model_cte_logistic."Score_1" AS "Score_1", linear_model_cte_logistic."Score_2" AS "Score_2", linear_model_cte_logistic."Score_3" AS "Score_3", linear_model_cte_logistic."Logistic_0" / (linear_model_cte_logistic."Logistic_0" + linear_model_cte_logistic."Logistic_1" + linear_model_cte_logistic."Logistic_2" + linear_model_cte_logistic."Logistic_3") AS "Proba_0", linear_model_cte_logistic."Logistic_1" / (linear_model_cte_logistic."Logistic_0" + linear_model_cte_logistic."Logistic_1" + linear_model_cte_logistic."Logistic_2" + linear_model_cte_logistic."Logistic_3") AS "Proba_1", linear_model_cte_logistic."Logistic_2" / (linear_model_cte_logistic."Logistic_0" + linear_model_cte_logistic."Logistic_1" + linear_model_cte_logistic."Logistic_2" + linear_model_cte_logistic."Logistic_3") AS "Proba_2", linear_model_cte_logistic."Logistic_3" / (linear_model_cte_logistic."Logistic_0" + linear_model_cte_logistic."Logistic_1" + linear_model_cte_logistic."Logistic_2" + linear_model_cte_logistic."Logistic_3") AS "Proba_3", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_2", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM linear_model_cte_logistic), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu."class" AS "class", scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS "class", orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS "class", orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS "class", orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS "class", orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union."class" AS "class", score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max."class") AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte