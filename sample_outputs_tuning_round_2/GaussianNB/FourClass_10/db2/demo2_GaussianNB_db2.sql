-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "RawScores" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "Proba_0", -1.49165487678 + (-0.5 * 2.27956823456 - (0.5 * (CAST("ADS"."Feature_0" AS DOUBLE) - 0.121972324021) * (CAST("ADS"."Feature_0" AS DOUBLE) - 0.121972324021)) / 1.55533532916) + (-0.5 * 2.09872681504 - (0.5 * (CAST("ADS"."Feature_1" AS DOUBLE) - -0.204209064143) * (CAST("ADS"."Feature_1" AS DOUBLE) - -0.204209064143)) / 1.2980326196) + (-0.5 * 1.95079020431 - (0.5 * (CAST("ADS"."Feature_2" AS DOUBLE) - -0.178668022966) * (CAST("ADS"."Feature_2" AS DOUBLE) - -0.178668022966)) / 1.11953468359) + (-0.5 * 1.62395797305 - (0.5 * (CAST("ADS"."Feature_3" AS DOUBLE) - -0.338489162809) * (CAST("ADS"."Feature_3" AS DOUBLE) - -0.338489162809)) / 0.807413707515) + (-0.5 * 1.64321757205 - (0.5 * (CAST("ADS"."Feature_4" AS DOUBLE) - 0.692046433349) * (CAST("ADS"."Feature_4" AS DOUBLE) - 0.692046433349)) / 0.823114885609) + (-0.5 * 0.590680328526 - (0.5 * (CAST("ADS"."Feature_5" AS DOUBLE) - -0.232889543871) * (CAST("ADS"."Feature_5" AS DOUBLE) - -0.232889543871)) / 0.287309071673) + (-0.5 * 0.59925757945 - (0.5 * (CAST("ADS"."Feature_6" AS DOUBLE) - 0.148905014544) * (CAST("ADS"."Feature_6" AS DOUBLE) - 0.148905014544)) / 0.289783992509) + (-0.5 * 2.51223585627 - (0.5 * (CAST("ADS"."Feature_7" AS DOUBLE) - 0.3442614657) * (CAST("ADS"."Feature_7" AS DOUBLE) - 0.3442614657)) / 1.96277402179) + (-0.5 * 1.97840458378 - (0.5 * (CAST("ADS"."Feature_8" AS DOUBLE) - 0.481062539937) * (CAST("ADS"."Feature_8" AS DOUBLE) - 0.481062539937)) / 1.15088074834) + (-0.5 * 2.0106694406 - (0.5 * (CAST("ADS"."Feature_9" AS DOUBLE) - 0.210725722985) * (CAST("ADS"."Feature_9" AS DOUBLE) - 0.210725722985)) / 1.18861929142) AS "Score_0", CAST(NULL AS DOUBLE) AS "LogProba_1", CAST(NULL AS DOUBLE) AS "Proba_1", -1.38629436112 + (-0.5 * 1.54236175001 - (0.5 * (CAST("ADS"."Feature_0" AS DOUBLE) - -0.0558044571137) * (CAST("ADS"."Feature_0" AS DOUBLE) - -0.0558044571137)) / 0.744148016966) + (-0.5 * 1.9047850136 - (0.5 * (CAST("ADS"."Feature_1" AS DOUBLE) - 1.11642415635) * (CAST("ADS"."Feature_1" AS DOUBLE) - 1.11642415635)) / 1.06919705105) + (-0.5 * 2.59858752845 - (0.5 * (CAST("ADS"."Feature_2" AS DOUBLE) - 1.23209126669) * (CAST("ADS"."Feature_2" AS DOUBLE) - 1.23209126669)) / 2.13979592436) + (-0.5 * 2.87906372668 - (0.5 * (CAST("ADS"."Feature_3" AS DOUBLE) - 2.85620117641) * (CAST("ADS"."Feature_3" AS DOUBLE) - 2.85620117641)) / 2.83257632656) + (-0.5 * 2.90037818055 - (0.5 * (CAST("ADS"."Feature_4" AS DOUBLE) - -0.194677735408) * (CAST("ADS"."Feature_4" AS DOUBLE) - -0.194677735408)) / 2.89359916804) + (-0.5 * 1.72355493966 - (0.5 * (CAST("ADS"."Feature_5" AS DOUBLE) - -0.308859790178) * (CAST("ADS"."Feature_5" AS DOUBLE) - -0.308859790178)) / 0.891970582014) + (-0.5 * 1.46103870041 - (0.5 * (CAST("ADS"."Feature_6" AS DOUBLE) - -1.20900090932) * (CAST("ADS"."Feature_6" AS DOUBLE) - -1.20900090932)) / 0.686026950214) + (-0.5 * 1.96281805954 - (0.5 * (CAST("ADS"."Feature_7" AS DOUBLE) - 1.22543376942) * (CAST("ADS"."Feature_7" AS DOUBLE) - 1.22543376942)) / 1.1330815915) + (-0.5 * 1.95222357534 - (0.5 * (CAST("ADS"."Feature_8" AS DOUBLE) - -0.216885934062) * (CAST("ADS"."Feature_8" AS DOUBLE) - -0.216885934062)) / 1.12114054279) + (-0.5 * 1.63188070665 - (0.5 * (CAST("ADS"."Feature_9" AS DOUBLE) - 0.0464300051463) * (CAST("ADS"."Feature_9" AS DOUBLE) - 0.0464300051463)) / 0.813836038837) AS "Score_1", CAST(NULL AS DOUBLE) AS "LogProba_2", CAST(NULL AS DOUBLE) AS "Proba_2", -1.38629436112 + (-0.5 * 1.73146730243 - (0.5 * (CAST("ADS"."Feature_0" AS DOUBLE) - 0.0405274143017) * (CAST("ADS"."Feature_0" AS DOUBLE) - 0.0405274143017)) / 0.89905617175) + (-0.5 * 2.61739952851 - (0.5 * (CAST("ADS"."Feature_1" AS DOUBLE) - -0.201696366889) * (CAST("ADS"."Feature_1" AS DOUBLE) - -0.201696366889)) / 2.18043077851) + (-0.5 * 2.10074207358 - (0.5 * (CAST("ADS"."Feature_2" AS DOUBLE) - -1.06566022235) * (CAST("ADS"."Feature_2" AS DOUBLE) - -1.06566022235)) / 1.30065112853) + (-0.5 * 3.67425365848 - (0.5 * (CAST("ADS"."Feature_3" AS DOUBLE) - -0.933951975193) * (CAST("ADS"."Feature_3" AS DOUBLE) - -0.933951975193)) / 6.27376461838) + (-0.5 * 2.2711322972 - (0.5 * (CAST("ADS"."Feature_4" AS DOUBLE) - -0.927385394883) * (CAST("ADS"."Feature_4" AS DOUBLE) - -0.927385394883)) / 1.54226980522) + (-0.5 * 2.13523741435 - (0.5 * (CAST("ADS"."Feature_5" AS DOUBLE) - 0.180750853837) * (CAST("ADS"."Feature_5" AS DOUBLE) - 0.180750853837)) / 1.34630034861) + (-0.5 * 1.99283173894 - (0.5 * (CAST("ADS"."Feature_6" AS DOUBLE) - 0.336730803418) * (CAST("ADS"."Feature_6" AS DOUBLE) - 0.336730803418)) / 1.16760503533) + (-0.5 * 3.20023843374 - (0.5 * (CAST("ADS"."Feature_7" AS DOUBLE) - -0.0409790815588) * (CAST("ADS"."Feature_7" AS DOUBLE) - -0.0409790815588)) / 3.90540451662) + (-0.5 * 1.11568822897 - (0.5 * (CAST("ADS"."Feature_8" AS DOUBLE) - 0.269658006084) * (CAST("ADS"."Feature_8" AS DOUBLE) - 0.269658006084)) / 0.485687999566) + (-0.5 * 1.77749035747 - (0.5 * (CAST("ADS"."Feature_9" AS DOUBLE) - 0.141874980636) * (CAST("ADS"."Feature_9" AS DOUBLE) - 0.141874980636)) / 0.941400415231) AS "Score_2", CAST(NULL AS DOUBLE) AS "LogProba_3", CAST(NULL AS DOUBLE) AS "Proba_3", -1.29098418132 + (-0.5 * 1.4754911021 - (0.5 * (CAST("ADS"."Feature_0" AS DOUBLE) - -0.100101406054) * (CAST("ADS"."Feature_0" AS DOUBLE) - -0.100101406054)) / 0.696013679551) + (-0.5 * 1.49430073853 - (0.5 * (CAST("ADS"."Feature_1" AS DOUBLE) - 1.57268477687) * (CAST("ADS"."Feature_1" AS DOUBLE) - 1.57268477687)) / 0.70922934511) + (-0.5 * 2.33437226108 - (0.5 * (CAST("ADS"."Feature_2" AS DOUBLE) - 0.150504658168) * (CAST("ADS"."Feature_2" AS DOUBLE) - 0.150504658168)) / 1.64295293794) + (-0.5 * 2.91657888592 - (0.5 * (CAST("ADS"."Feature_3" AS DOUBLE) - 1.33301715352) * (CAST("ADS"."Feature_3" AS DOUBLE) - 1.33301715352)) / 2.94085930574) + (-0.5 * 1.43610169208 - (0.5 * (CAST("ADS"."Feature_4" AS DOUBLE) - -1.12073454974) * (CAST("ADS"."Feature_4" AS DOUBLE) - -1.12073454974)) / 0.66913103282) + (-0.5 * 1.70403898472 - (0.5 * (CAST("ADS"."Feature_5" AS DOUBLE) - 0.152478854098) * (CAST("ADS"."Feature_5" AS DOUBLE) - 0.152478854098)) / 0.874731688218) + (-0.5 * 1.22465773072 - (0.5 * (CAST("ADS"."Feature_6" AS DOUBLE) - -0.412825101797) * (CAST("ADS"."Feature_6" AS DOUBLE) - -0.412825101797)) / 0.54160445289) + (-0.5 * 1.90195784668 - (0.5 * (CAST("ADS"."Feature_7" AS DOUBLE) - -0.824909406092) * (CAST("ADS"."Feature_7" AS DOUBLE) - -0.824909406092)) / 1.06617852148) + (-0.5 * 2.50881300002 - (0.5 * (CAST("ADS"."Feature_8" AS DOUBLE) - -0.37804605689) * (CAST("ADS"."Feature_8" AS DOUBLE) - -0.37804605689)) / 1.95606721323) + (-0.5 * 1.65495103839 - (0.5 * (CAST("ADS"."Feature_9" AS DOUBLE) - 0.0748501092325) * (CAST("ADS"."Feature_9" AS DOUBLE) - 0.0748501092325)) / 0.832829759529) AS "Score_3" 
FROM "FourClass_10" AS "ADS"), 
orig_cte AS 
(SELECT "RawScores"."KEY" AS "KEY", "RawScores"."Score_0" AS "Score_0", "RawScores"."Score_1" AS "Score_1", "RawScores"."Score_2" AS "Score_2", "RawScores"."Score_3" AS "Score_3", "RawScores"."Proba_0" AS "Proba_0", "RawScores"."Proba_1" AS "Proba_1", "RawScores"."Proba_2" AS "Proba_2", "RawScores"."Proba_3" AS "Proba_3", "RawScores"."LogProba_0" AS "LogProba_0", "RawScores"."LogProba_1" AS "LogProba_1", "RawScores"."LogProba_2" AS "LogProba_2", "RawScores"."LogProba_3" AS "LogProba_3", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM "RawScores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(score_max."Score_0" - score_max."max_Score") AS "exp_delta_Score_0", exp(score_max."Score_1" - score_max."max_Score") AS "exp_delta_Score_1", exp(score_max."Score_2" - score_max."max_Score") AS "exp_delta_Score_2", exp(score_max."Score_3" - score_max."max_Score") AS "exp_delta_Score_3" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS class, score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS class, score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 2 AS class, score_soft_max_deltas."exp_delta_Score_2" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 3 AS class, score_soft_max_deltas."exp_delta_Score_3" AS "exp_delta_Score" 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Score_2" AS "Score_2", score_soft_max_deltas."Score_3" AS "Score_3", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."Proba_2" AS "Proba_2", score_soft_max_deltas."Proba_3" AS "Proba_3", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."LogProba_2" AS "LogProba_2", score_soft_max_deltas."LogProba_3" AS "LogProba_3", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max_deltas."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max_deltas."exp_delta_Score_3" AS "exp_delta_Score_3", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") AS sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Score_3" AS "Score_3", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."Proba_3" AS "Proba_3", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."LogProba_3" AS "LogProba_3", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."exp_delta_Score_3" AS "exp_delta_Score_3", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Score_3" AS "Score_3", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."Proba_3" AS "Proba_3", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."LogProba_3" AS "LogProba_3", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."exp_delta_Score_3" AS "exp_delta_Score_3", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1", soft_max_comp."SoftProba_2" AS "SoftProba_2", soft_max_comp."SoftProba_3" AS "SoftProba_3" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1", score_soft_max."exp_delta_Score_2" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_2", score_soft_max."exp_delta_Score_3" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_3" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", CAST(NULL AS DOUBLE) AS "Score_2", CAST(NULL AS DOUBLE) AS "Score_3", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", arg_max_cte."SoftProba_2" AS "Proba_2", arg_max_cte."SoftProba_3" AS "Proba_3", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."SoftProba_2" IS NULL OR arg_max_cte."SoftProba_2" > 0.0) THEN ln(arg_max_cte."SoftProba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."SoftProba_3" IS NULL OR arg_max_cte."SoftProba_3" > 0.0) THEN ln(arg_max_cte."SoftProba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."SoftProba_0" <= CASE WHEN (arg_max_cte."SoftProba_1" <= CASE WHEN (arg_max_cte."SoftProba_2" <= arg_max_cte."SoftProba_3") THEN arg_max_cte."SoftProba_3" ELSE arg_max_cte."SoftProba_2" END) THEN CASE WHEN (arg_max_cte."SoftProba_2" <= arg_max_cte."SoftProba_3") THEN arg_max_cte."SoftProba_3" ELSE arg_max_cte."SoftProba_2" END ELSE arg_max_cte."SoftProba_1" END) THEN CASE WHEN (arg_max_cte."SoftProba_1" <= CASE WHEN (arg_max_cte."SoftProba_2" <= arg_max_cte."SoftProba_3") THEN arg_max_cte."SoftProba_3" ELSE arg_max_cte."SoftProba_2" END) THEN CASE WHEN (arg_max_cte."SoftProba_2" <= arg_max_cte."SoftProba_3") THEN arg_max_cte."SoftProba_3" ELSE arg_max_cte."SoftProba_2" END ELSE arg_max_cte."SoftProba_1" END ELSE arg_max_cte."SoftProba_0" END AS "DecisionProba" 
FROM arg_max_cte