-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -0.20310882341885883 * "ADS"."Feature_0" + 0.14996194375365388 * "ADS"."Feature_1" + 0.2352928521461537 * "ADS"."Feature_2" + -0.2656537622535744 * "ADS"."Feature_3" + -0.09667705349046267 * "ADS"."Feature_4" + 0.29328013150392834 * "ADS"."Feature_5" + 0.8644636986592443 * "ADS"."Feature_6" + -0.02102722174711097 * "ADS"."Feature_7" + -0.048746229732263543 * "ADS"."Feature_8" + 0.2906997988895829 * "ADS"."Feature_9" + 0.06899937987205104 * "ADS"."Feature_10" + 0.05779556111876949 * "ADS"."Feature_11" + 0.14187588335283607 * "ADS"."Feature_12" + 0.07826704742953325 * "ADS"."Feature_13" + 0.303138460812619 * "ADS"."Feature_14" + -0.31067398600884116 * "ADS"."Feature_15" + 0.4260314977611218 * "ADS"."Feature_16" + -0.11789787299031375 * "ADS"."Feature_17" + -0.1537197538304253 * "ADS"."Feature_18" + 0.3749314443733119 * "ADS"."Feature_19" + -1.11611426409 AS "Score_0", 0.47936813941957995 * "ADS"."Feature_0" + -0.4071952859851888 * "ADS"."Feature_1" + -0.17921210920031927 * "ADS"."Feature_2" + 0.24128315811462983 * "ADS"."Feature_3" + -0.16835212767351823 * "ADS"."Feature_4" + -0.5918392906697834 * "ADS"."Feature_5" + -0.8074401425602713 * "ADS"."Feature_6" + -0.01368429931178544 * "ADS"."Feature_7" + -0.3676825172628778 * "ADS"."Feature_8" + -0.08037249934266955 * "ADS"."Feature_9" + -0.1382748161721945 * "ADS"."Feature_10" + 0.06881167935921582 * "ADS"."Feature_11" + -0.6046332803239678 * "ADS"."Feature_12" + 0.3029927580935736 * "ADS"."Feature_13" + -0.2426397096965221 * "ADS"."Feature_14" + 0.06248978721485219 * "ADS"."Feature_15" + -0.42229971391092913 * "ADS"."Feature_16" + 0.4516071350011177 * "ADS"."Feature_17" + -0.050927335772491235 * "ADS"."Feature_18" + 0.07248528428232243 * "ADS"."Feature_19" + -0.951769217324 AS "Score_1", -0.33445519602054213 * "ADS"."Feature_0" + 0.12115261543428452 * "ADS"."Feature_1" + 0.07751047384186949 * "ADS"."Feature_2" + -0.3175755189354614 * "ADS"."Feature_3" + 0.11704351436655452 * "ADS"."Feature_4" + 0.1074569338046253 * "ADS"."Feature_5" + -0.21285595583451367 * "ADS"."Feature_6" + 0.30930467235456527 * "ADS"."Feature_7" + 0.06628769464749185 * "ADS"."Feature_8" + 0.022118864441742866 * "ADS"."Feature_9" + -0.2564116511883632 * "ADS"."Feature_10" + 0.0356611811134961 * "ADS"."Feature_11" + -0.05795581428901136 * "ADS"."Feature_12" + -0.6858751440704622 * "ADS"."Feature_13" + -0.3126253138759268 * "ADS"."Feature_14" + 0.17100848978013822 * "ADS"."Feature_15" + 0.029655899213428552 * "ADS"."Feature_16" + 0.11204597304758399 * "ADS"."Feature_17" + -0.2784004690844056 * "ADS"."Feature_18" + -0.3614873242951061 * "ADS"."Feature_19" + -1.44040458877 AS "Score_2", 0.4506574582145345 * "ADS"."Feature_0" + -0.3027322476734064 * "ADS"."Feature_1" + -0.27702835300155826 * "ADS"."Feature_2" + 0.39359859667417374 * "ADS"."Feature_3" + 0.02561816675115837 * "ADS"."Feature_4" + -0.14879631223638917 * "ADS"."Feature_5" + 0.5131984531172704 * "ADS"."Feature_6" + -0.25089531555648537 * "ADS"."Feature_7" + 0.21826964555598016 * "ADS"."Feature_8" + -0.3263285752367062 * "ADS"."Feature_9" + -0.161247072312514 * "ADS"."Feature_10" + 0.07988282463414842 * "ADS"."Feature_11" + 0.39246116538705733 * "ADS"."Feature_12" + -0.17528557001856726 * "ADS"."Feature_13" + 0.30983830440165444 * "ADS"."Feature_14" + -0.13955684156915638 * "ADS"."Feature_15" + -0.37764202667449626 * "ADS"."Feature_16" + -0.31245098947004385 * "ADS"."Feature_17" + -0.2064015285696716 * "ADS"."Feature_18" + 0.20747529732234896 * "ADS"."Feature_19" + -1.40558836666 AS "Score_3" 
FROM "INPUT_DATA" "ADS"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS FLOAT) AS "Decision" 
FROM linear_model_cte), 
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
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max."max_LogProba" = score_class_union."LogProba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max."max_Proba" = score_class_union."Proba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max."max_Score" = score_class_union."Score" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Score" 
FROM score_max)
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte