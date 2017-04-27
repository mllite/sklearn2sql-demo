-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.0305561308234 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.411624214704 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0423308730823 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.0683958098537 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.293177459222 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.137145446906 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.186239615985 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -0.092179417341 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.0697490562472 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.491860196758 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "FourClass_10" "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - -0.0305561308234) / 1.11025497151 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.411624214704) / 1.92485705921 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.0423308730823) / 1.07449978619 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - -0.0683958098537) / 0.963380630365 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.293177459222) / 1.75489703628 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.137145446906) / 1.31894227514 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.186239615985) / 2.09149997065 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - -0.092179417341) / 0.921868677387 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.0697490562472) / 1.45502841456 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.491860196758) / 1.64093214697 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_2 AS scaler_2, "ADS_sca_2_OUT".scaler_3 AS scaler_3, "ADS_sca_2_OUT".scaler_4 AS scaler_4, "ADS_sca_2_OUT".scaler_5 AS scaler_5, "ADS_sca_2_OUT".scaler_6 AS scaler_6, "ADS_sca_2_OUT".scaler_7 AS scaler_7, "ADS_sca_2_OUT".scaler_8 AS scaler_8, "ADS_sca_2_OUT".scaler_9 AS scaler_9, "ADS_sca_2_OUT".scaler_10 AS scaler_10, "ADS_sca_2_OUT".scaler_11 AS scaler_11 
FROM "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", 2.61476879194 * "IL".scaler_2 + -0.934620529317 * "IL".scaler_3 + -2.43579124803 * "IL".scaler_4 + -0.314418727689 * "IL".scaler_5 + 1.17567458493 * "IL".scaler_6 + 6.0659780645 * "IL".scaler_7 + -3.41840010898 * "IL".scaler_8 + -0.462413936103 * "IL".scaler_9 + -0.0464055151627 * "IL".scaler_10 + 1.7904938488 * "IL".scaler_11 + 0.482746956898 AS "NEUR_1_1", -3.08821613118 * "IL".scaler_2 + 3.28157415163 * "IL".scaler_3 + -2.19494752313 * "IL".scaler_4 + 3.49709985325 * "IL".scaler_5 + -1.27354495898 * "IL".scaler_6 + 4.43826575621 * "IL".scaler_7 + 0.973673199889 * "IL".scaler_8 + -0.186545147733 * "IL".scaler_9 + 2.71951172471 * "IL".scaler_10 + -6.42592183142 * "IL".scaler_11 + -5.35952456084 AS "NEUR_1_2", 0.0960386302746 * "IL".scaler_2 + -0.934941358057 * "IL".scaler_3 + 0.107079125601 * "IL".scaler_4 + 0.099145944524 * "IL".scaler_5 + -3.19960841368 * "IL".scaler_6 + -5.89580628591 * "IL".scaler_7 + -4.61082220455 * "IL".scaler_8 + -0.122160098814 * "IL".scaler_9 + -4.70666022227 * "IL".scaler_10 + 9.11285820355 * "IL".scaler_11 + 1.93282873178 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", -5.59091058008 * "HL_1_relu"."NEUR_1_1" + 3.97162174475 * "HL_1_relu"."NEUR_1_2" + 3.69721086606 * "HL_1_relu"."NEUR_1_3" + 1.63059142457 AS "NEUR_2_1", 2.14816688071 * "HL_1_relu"."NEUR_1_1" + -0.303492925453 * "HL_1_relu"."NEUR_1_2" + -4.76723712399 * "HL_1_relu"."NEUR_1_3" + -3.3082501124 AS "NEUR_2_2", -0.32848001287 * "HL_1_relu"."NEUR_1_1" + -1.78229487018 * "HL_1_relu"."NEUR_1_2" + 5.93522468939 * "HL_1_relu"."NEUR_1_3" + -3.93715209316 AS "NEUR_2_3", 0.0995893958083 * "HL_1_relu"."NEUR_1_1" + -0.50467992511 * "HL_1_relu"."NEUR_1_2" + -0.406581144855 * "HL_1_relu"."NEUR_1_3" + -0.797841174833 AS "NEUR_2_4", -2.35043510976 * "HL_1_relu"."NEUR_1_1" + 0.566922424771 * "HL_1_relu"."NEUR_1_2" + -1.17615522088 * "HL_1_relu"."NEUR_1_3" + -2.07924222463 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 1.62611765716 * "HL_2_relu"."NEUR_2_1" + 3.0559498007 * "HL_2_relu"."NEUR_2_2" + 1.73065501628 * "HL_2_relu"."NEUR_2_3" + 0.379424049471 * "HL_2_relu"."NEUR_2_4" + -1.44287746905 * "HL_2_relu"."NEUR_2_5" + -2.32389952649 AS "NEUR_3_1", -5.95584937219 * "HL_2_relu"."NEUR_2_1" + 2.29309550624 * "HL_2_relu"."NEUR_2_2" + -5.03894524257 * "HL_2_relu"."NEUR_2_3" + 0.406509982546 * "HL_2_relu"."NEUR_2_4" + -0.332588579643 * "HL_2_relu"."NEUR_2_5" + 11.2074419126 AS "NEUR_3_2", 1.64586610936 * "HL_2_relu"."NEUR_2_1" + -3.62118761258 * "HL_2_relu"."NEUR_2_2" + 1.73804777451 * "HL_2_relu"."NEUR_2_3" + -0.601765847013 * "HL_2_relu"."NEUR_2_4" + -0.81122982242 * "HL_2_relu"."NEUR_2_5" + -2.30027523899 AS "NEUR_3_3", 2.65566481009 * "HL_2_relu"."NEUR_2_1" + -2.31205568462 * "HL_2_relu"."NEUR_2_2" + 1.10157172491 * "HL_2_relu"."NEUR_2_3" + -0.813995593593 * "HL_2_relu"."NEUR_2_4" + 2.83021559595 * "HL_2_relu"."NEUR_2_5" + -5.55851801891 AS "NEUR_3_4" 
FROM "HL_2_relu"), 
"OL_softmax" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1", "OL_BA"."NEUR_3_2" AS "NEUR_3_2", "OL_BA"."NEUR_3_3" AS "NEUR_3_3", "OL_BA"."NEUR_3_4" AS "NEUR_3_4" 
FROM "OL_BA"), 
orig_cte AS 
(SELECT "OL_softmax"."KEY" AS "KEY", "OL_softmax"."NEUR_3_1" AS "Score_0", "OL_softmax"."NEUR_3_2" AS "Score_1", "OL_softmax"."NEUR_3_3" AS "Score_2", "OL_softmax"."NEUR_3_4" AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS FLOAT) AS "Decision" 
FROM "OL_softmax"), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", (SELECT max(score_class_union."LogProba") AS max_1 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_LogProba", (SELECT max(score_class_union."Proba") AS max_2 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Proba", (SELECT max(score_class_union."Score") AS max_3 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Score" 
FROM orig_cte), 
score_soft_max_comp AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", exp(score_max."Score_0" - score_max."max_Score") AS "exp_delta_Score_0", exp(score_max."Score_1" - score_max."max_Score") AS "exp_delta_Score_1", exp(score_max."Score_2" - score_max."max_Score") AS "exp_delta_Score_2", exp(score_max."Score_3" - score_max."max_Score") AS "exp_delta_Score_3" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."LogProba" AS "LogProba", soft_scu."Proba" AS "Proba", soft_scu."Score" AS "Score", soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_comp."KEY" AS "KEY", 0 AS class, score_soft_max_comp."LogProba_0" AS "LogProba", score_soft_max_comp."Proba_0" AS "Proba", score_soft_max_comp."Score_0" AS "Score", score_soft_max_comp."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp."KEY" AS "KEY", 1 AS class, score_soft_max_comp."LogProba_1" AS "LogProba", score_soft_max_comp."Proba_1" AS "Proba", score_soft_max_comp."Score_1" AS "Score", score_soft_max_comp."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp."KEY" AS "KEY", 2 AS class, score_soft_max_comp."LogProba_2" AS "LogProba", score_soft_max_comp."Proba_2" AS "Proba", score_soft_max_comp."Score_2" AS "Score", score_soft_max_comp."exp_delta_Score_2" AS "exp_delta_Score" 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp."KEY" AS "KEY", 3 AS class, score_soft_max_comp."LogProba_3" AS "LogProba", score_soft_max_comp."Proba_3" AS "Proba", score_soft_max_comp."Score_3" AS "Score", score_soft_max_comp."exp_delta_Score_3" AS "exp_delta_Score" 
FROM score_soft_max_comp) soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_comp."KEY" AS "KEY", score_soft_max_comp."Score_0" AS "Score_0", score_soft_max_comp."Score_1" AS "Score_1", score_soft_max_comp."Score_2" AS "Score_2", score_soft_max_comp."Score_3" AS "Score_3", score_soft_max_comp."Proba_0" AS "Proba_0", score_soft_max_comp."Proba_1" AS "Proba_1", score_soft_max_comp."Proba_2" AS "Proba_2", score_soft_max_comp."Proba_3" AS "Proba_3", score_soft_max_comp."LogProba_0" AS "LogProba_0", score_soft_max_comp."LogProba_1" AS "LogProba_1", score_soft_max_comp."LogProba_2" AS "LogProba_2", score_soft_max_comp."LogProba_3" AS "LogProba_3", score_soft_max_comp."Decision" AS "Decision", score_soft_max_comp."max_LogProba" AS "max_LogProba", score_soft_max_comp."max_Proba" AS "max_Proba", score_soft_max_comp."max_Score" AS "max_Score", score_soft_max_comp."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_comp."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max_comp."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max_comp."exp_delta_Score_3" AS "exp_delta_Score_3", (SELECT sum(score_class_union_soft."exp_delta_Score") AS sum_1 
FROM score_class_union_soft 
WHERE score_soft_max_comp."KEY" = score_class_union_soft."KEY") AS "sum_ExpDeltaScore" 
FROM score_soft_max_comp), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Score_3" AS "Score_3", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."Proba_3" AS "Proba_3", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."LogProba_3" AS "LogProba_3", score_soft_max."Decision" AS "Decision", score_soft_max."max_LogProba" AS "max_LogProba", score_soft_max."max_Proba" AS "max_Proba", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."exp_delta_Score_3" AS "exp_delta_Score_3", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_soft_max."max_LogProba" = score_class_union."LogProba" AND score_soft_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_soft_max."max_Proba" = score_class_union."Proba" AND score_soft_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_soft_max."max_Score" = score_class_union."Score" AND score_soft_max."KEY" = score_class_union."KEY") AS "arg_max_Score", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1", score_soft_max."exp_delta_Score_2" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_2", score_soft_max."exp_delta_Score_3" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_3" 
FROM score_soft_max)
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", arg_max_cte."SoftProba_2" AS "Proba_2", arg_max_cte."SoftProba_3" AS "Proba_3", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", CASE WHEN (arg_max_cte."SoftProba_2" IS NULL OR arg_max_cte."SoftProba_2" > 0.0) THEN ln(arg_max_cte."SoftProba_2") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_2", CASE WHEN (arg_max_cte."SoftProba_3" IS NULL OR arg_max_cte."SoftProba_3" > 0.0) THEN ln(arg_max_cte."SoftProba_3") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte