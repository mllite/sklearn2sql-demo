-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.84333333333 ELSE "ADS"."Feature_0" END AS impute_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.054 ELSE "ADS"."Feature_1" END AS impute_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.75866666667 ELSE "ADS"."Feature_2" END AS impute_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.19866666667 ELSE "ADS"."Feature_3" END AS impute_output_5 
FROM "INPUT_DATA" AS "ADS"), 
"CenteredDataForPCA" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".impute_output_2 - 5.84333333333 AS impute_output_2, "ADS_imp_1_OUT".impute_output_3 - 3.054 AS impute_output_3, "ADS_imp_1_OUT".impute_output_4 - 3.75866666667 AS impute_output_4, "ADS_imp_1_OUT".impute_output_5 - 1.19866666667 AS impute_output_5 
FROM "ADS_imp_1_OUT"), 
"ADS_ano_2_OUT" AS 
(SELECT "CenteredDataForPCA"."KEY" AS "KEY", "CenteredDataForPCA".impute_output_2 * 0.361589677381 + "CenteredDataForPCA".impute_output_3 * -0.0822688898922 + "CenteredDataForPCA".impute_output_4 * 0.856572105291 + "CenteredDataForPCA".impute_output_5 * 0.358843926248 AS anova_output_2, "CenteredDataForPCA".impute_output_2 * 0.656539883286 + "CenteredDataForPCA".impute_output_3 * 0.729712371326 + "CenteredDataForPCA".impute_output_4 * -0.175767403429 + "CenteredDataForPCA".impute_output_5 * -0.074706470135 AS anova_output_3, "CenteredDataForPCA".impute_output_2 * -0.580997279828 + "CenteredDataForPCA".impute_output_3 * 0.596418087938 + "CenteredDataForPCA".impute_output_4 * 0.072524075487 + "CenteredDataForPCA".impute_output_5 * 0.549060910727 AS anova_output_4, "CenteredDataForPCA".impute_output_2 * 0.317254547169 + "CenteredDataForPCA".impute_output_3 * -0.324094352418 + "CenteredDataForPCA".impute_output_4 * -0.47971898733 + "CenteredDataForPCA".impute_output_5 * 0.751120560381 AS anova_output_5 
FROM "CenteredDataForPCA"), 
"RawScores" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CAST(NULL AS FLOAT(53)) AS "LogProba_0", CAST(NULL AS FLOAT(53)) AS "Proba_0", -1.09861228867 + (-0.5 * -1.20347031123 - (0.5 * ("ADS_ano_2_OUT".anova_output_2 - -2.64084075831) * ("ADS_ano_2_OUT".anova_output_2 - -2.64084075831)) / 0.0477704812345) + (-0.5 * 0.299473222606 - (0.5 * ("ADS_ano_2_OUT".anova_output_3 - 0.190519952781) * ("ADS_ano_2_OUT".anova_output_3 - 0.190519952781)) / 0.214723560387) + (-0.5 * -1.73797542275 - (0.5 * ("ADS_ano_2_OUT".anova_output_4 - 0.012995844994) * ("ADS_ano_2_OUT".anova_output_4 - 0.012995844994)) / 0.0279915531046) + (-0.5 * -2.40805192701 - (0.5 * ("ADS_ano_2_OUT".anova_output_5 - 0.000107256173613) * ("ADS_ano_2_OUT".anova_output_5 - 0.000107256173613)) / 0.0143224220609) AS "Score_0", CAST(NULL AS FLOAT(53)) AS "LogProba_1", CAST(NULL AS FLOAT(53)) AS "Proba_1", -1.09861228867 + (-0.5 * 0.785175478434 - (0.5 * ("ADS_ano_2_OUT".anova_output_2 - 0.531992616895) * ("ADS_ano_2_OUT".anova_output_2 - 0.531992616895)) / 0.348993637371) + (-0.5 * 0.127456643645 - (0.5 * ("ADS_ano_2_OUT".anova_output_3 - -0.244029633055) * ("ADS_ano_2_OUT".anova_output_3 - -0.244029633055)) / 0.180789768503) + (-0.5 * -0.872984864819 - (0.5 * ("ADS_ano_2_OUT".anova_output_4 - -0.116949325762) * ("ADS_ano_2_OUT".anova_output_4 - -0.116949325762)) / 0.0664794812723) + (-0.5 * -2.29322715026 - (0.5 * ("ADS_ano_2_OUT".anova_output_5 - -0.0234147168353) * ("ADS_ano_2_OUT".anova_output_5 - -0.0234147168353)) / 0.0160651296409) AS "Score_1", CAST(NULL AS FLOAT(53)) AS "LogProba_2", CAST(NULL AS FLOAT(53)) AS "Proba_2", -1.09861228867 + (-0.5 * 1.12241238233 - (0.5 * ("ADS_ano_2_OUT".anova_output_2 - 2.10884814142) * ("ADS_ano_2_OUT".anova_output_2 - 2.10884814142)) / 0.488964844816) + (-0.5 * 0.3579791474 - (0.5 * ("ADS_ano_2_OUT".anova_output_3 - 0.0535096802736) * ("ADS_ano_2_OUT".anova_output_3 - 0.0535096802736)) / 0.227660927051) + (-0.5 * -0.326008723508 - (0.5 * ("ADS_ano_2_OUT".anova_output_4 - 0.103953480768) * ("ADS_ano_2_OUT".anova_output_4 - 0.103953480768)) / 0.114877861387) + (-0.5 * -1.40384824263 - (0.5 * ("ADS_ano_2_OUT".anova_output_5 - 0.0233074606617) * ("ADS_ano_2_OUT".anova_output_5 - 0.0233074606617)) / 0.0390963835328) AS "Score_2" 
FROM "ADS_ano_2_OUT"), 
orig_cte AS 
(SELECT "RawScores"."KEY" AS "KEY", "RawScores"."Score_0" AS "Score_0", "RawScores"."Score_1" AS "Score_1", "RawScores"."Score_2" AS "Score_2", "RawScores"."Proba_0" AS "Proba_0", "RawScores"."Proba_1" AS "Proba_1", "RawScores"."Proba_2" AS "Proba_2", "RawScores"."LogProba_0" AS "LogProba_0", "RawScores"."LogProba_1" AS "LogProba_1", "RawScores"."LogProba_2" AS "LogProba_2", CAST(NULL AS FLOAT(53)) AS "Decision" 
FROM "RawScores"), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."Decision" AS "Decision", (SELECT max(score_class_union."LogProba") AS max_1 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_LogProba", (SELECT max(score_class_union."Proba") AS max_2 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Proba", (SELECT max(score_class_union."Score") AS max_3 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Score" 
FROM orig_cte), 
score_soft_max_comp AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", exp(CASE WHEN (score_max."Score_0" - score_max."max_Score" >= -709.782712893) THEN score_max."Score_0" - score_max."max_Score" ELSE -709.782712893 END) AS "exp_delta_Score_0", exp(CASE WHEN (score_max."Score_1" - score_max."max_Score" >= -709.782712893) THEN score_max."Score_1" - score_max."max_Score" ELSE -709.782712893 END) AS "exp_delta_Score_1", exp(CASE WHEN (score_max."Score_2" - score_max."max_Score" >= -709.782712893) THEN score_max."Score_2" - score_max."max_Score" ELSE -709.782712893 END) AS "exp_delta_Score_2" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."LogProba" AS "LogProba", soft_scu."Proba" AS "Proba", soft_scu."Score" AS "Score", soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_comp."KEY" AS "KEY", 0 AS class, score_soft_max_comp."LogProba_0" AS "LogProba", score_soft_max_comp."Proba_0" AS "Proba", score_soft_max_comp."Score_0" AS "Score", score_soft_max_comp."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp."KEY" AS "KEY", 1 AS class, score_soft_max_comp."LogProba_1" AS "LogProba", score_soft_max_comp."Proba_1" AS "Proba", score_soft_max_comp."Score_1" AS "Score", score_soft_max_comp."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp."KEY" AS "KEY", 2 AS class, score_soft_max_comp."LogProba_2" AS "LogProba", score_soft_max_comp."Proba_2" AS "Proba", score_soft_max_comp."Score_2" AS "Score", score_soft_max_comp."exp_delta_Score_2" AS "exp_delta_Score" 
FROM score_soft_max_comp) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_comp."KEY" AS "KEY", score_soft_max_comp."Score_0" AS "Score_0", score_soft_max_comp."Score_1" AS "Score_1", score_soft_max_comp."Score_2" AS "Score_2", score_soft_max_comp."Proba_0" AS "Proba_0", score_soft_max_comp."Proba_1" AS "Proba_1", score_soft_max_comp."Proba_2" AS "Proba_2", score_soft_max_comp."LogProba_0" AS "LogProba_0", score_soft_max_comp."LogProba_1" AS "LogProba_1", score_soft_max_comp."LogProba_2" AS "LogProba_2", score_soft_max_comp."Decision" AS "Decision", score_soft_max_comp."max_LogProba" AS "max_LogProba", score_soft_max_comp."max_Proba" AS "max_Proba", score_soft_max_comp."max_Score" AS "max_Score", score_soft_max_comp."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_comp."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max_comp."exp_delta_Score_2" AS "exp_delta_Score_2", (SELECT sum(score_class_union_soft."exp_delta_Score") AS sum_1 
FROM score_class_union_soft 
WHERE score_soft_max_comp."KEY" = score_class_union_soft."KEY") AS "sum_ExpDeltaScore" 
FROM score_soft_max_comp), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."Decision" AS "Decision", score_soft_max."max_LogProba" AS "max_LogProba", score_soft_max."max_Proba" AS "max_Proba", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_soft_max."max_LogProba" = score_class_union."LogProba" AND score_soft_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_soft_max."max_Proba" = score_class_union."Proba" AND score_soft_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_soft_max."max_Score" = score_class_union."Score" AND score_soft_max."KEY" = score_class_union."KEY") AS "arg_max_Score", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1", score_soft_max."exp_delta_Score_2" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_2" 
FROM score_soft_max)
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT(53)) AS "Score_0", CAST(NULL AS FLOAT(53)) AS "Score_1", CAST(NULL AS FLOAT(53)) AS "Score_2", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", arg_max_cte."SoftProba_2" AS "Proba_2", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."SoftProba_2" IS NULL OR arg_max_cte."SoftProba_2" > 0.0) THEN ln(arg_max_cte."SoftProba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte