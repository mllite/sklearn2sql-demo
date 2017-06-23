-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_77" <= 0.24983039498329163) THEN CASE WHEN ("ADS"."Feature_40" <= -0.6528468132019043) THEN CASE WHEN ("ADS"."Feature_13" <= 0.2499181628227234) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_63" <= 1.7627620697021484) THEN 6 ELSE 7 END END ELSE 8 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_77' AS feature, 0.24983039498329163 AS threshold, 25 AS "count", 0 AS depth, NULL AS parent_id, -5.329070518200751e-17 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'Feature_40' AS feature, -0.6528468132019043 AS threshold, 18 AS "count", 1 AS depth, 0 AS parent_id, 0.21777777777777774 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'Feature_13' AS feature, 0.2499181628227234 AS threshold, 4 AS "count", 2 AS depth, 1 AS parent_id, -0.31000000000000005 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 2 AS parent_id, -2.272727272727273 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, 1.7857142857142856 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, 'Feature_63' AS feature, 1.7627620697021484 AS threshold, 14 AS "count", 2 AS depth, 1 AS parent_id, 0.36857142857142844 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 13 AS "count", 3 AS depth, 5 AS parent_id, 1.7857142857142854 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 5 AS parent_id, -2.272727272727273 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 7 AS "count", 1 AS depth, 0 AS parent_id, -2.272727272727273 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"GB_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", -"DT_Output"."Estimator" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output"), 
"GB_Tree_0_1" AS 
(SELECT "DT_Output"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output"."Estimator" AS "Score_1" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_77" <= 0.24983039498329163) THEN CASE WHEN ("ADS"."Feature_86" <= 0.5037540793418884) THEN CASE WHEN ("ADS"."Feature_36" <= 0.9696199893951416) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_12" <= -0.975576639175415) THEN 6 ELSE 7 END END ELSE 8 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_77' AS feature, 0.24983039498329163 AS threshold, 25 AS "count", 0 AS depth, NULL AS parent_id, 0.0005572931509742319 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'Feature_86' AS feature, 0.5037540793418884 AS threshold, 18 AS "count", 1 AS depth, 0 AS parent_id, 0.19656879248514889 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'Feature_36' AS feature, 0.9696199893951416 AS threshold, 14 AS "count", 2 AS depth, 1 AS parent_id, 0.33229104056639225 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 13 AS "count", 3 AS depth, 2 AS parent_id, 1.6572219557302017 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, -2.0139862344098605 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, 'Feature_12' AS feature, -0.975576639175415 AS threshold, 4 AS "count", 2 AS depth, 1 AS parent_id, -0.2784590757992029 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 5 AS parent_id, 1.657221955730201 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 5 AS parent_id, -2.01398623440986 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 7 AS "count", 1 AS depth, 0 AS parent_id, -2.0139862344098605 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1"."count" AS "count", "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"GB_Tree_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", -"DT_Output_1"."Estimator" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_1"), 
"GB_Tree_1_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_1"."Estimator" AS "Score_1" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_77" <= 0.24983039498329163) THEN CASE WHEN ("ADS"."Feature_40" <= -0.6528468132019043) THEN CASE WHEN ("ADS"."Feature_49" <= 0.10046693682670593) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_37" <= -1.5016952753067017) THEN 6 ELSE 7 END END ELSE 8 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_77' AS feature, 0.24983039498329163 AS threshold, 25 AS "count", 0 AS depth, NULL AS parent_id, 0.0008655978999390124 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'Feature_40' AS feature, -0.6528468132019043 AS threshold, 18 AS "count", 1 AS depth, 0 AS parent_id, 0.17746982007824574 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'Feature_49' AS feature, 0.10046693682670593 AS threshold, 4 AS "count", 2 AS depth, 1 AS parent_id, -0.2505251061191813 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, 1.5568520571088742 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 2 AS parent_id, -1.8290214133051148 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, 'Feature_37' AS feature, -1.5016952753067017 AS threshold, 14 AS "count", 2 AS depth, 1 AS parent_id, 0.29975408470608206 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 5 AS parent_id, -1.8290214133051148 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 13 AS "count", 3 AS depth, 5 AS parent_id, 1.5568520571088746 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 7 AS "count", 1 AS depth, 0 AS parent_id, -1.8290214133051148 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2"."count" AS "count", "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"GB_Tree_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", -"DT_Output_2"."Estimator" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_2"), 
"GB_Tree_2_1" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_2"."Estimator" AS "Score_1" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_77" <= 0.24983039498329163) THEN CASE WHEN ("ADS"."Feature_86" <= 0.5037540793418884) THEN CASE WHEN ("ADS"."Feature_38" <= 1.3158001899719238) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_38" <= -1.1664048433303833) THEN 6 ELSE 7 END END ELSE 8 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_77' AS feature, 0.24983039498329163 AS threshold, 25 AS "count", 0 AS depth, NULL AS parent_id, 0.0010283321024825388 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'Feature_86' AS feature, 0.5037540793418884 AS threshold, 18 AS "count", 1 AS depth, 0 AS parent_id, 0.16026664216307068 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'Feature_38' AS feature, 1.3158001899719238 AS threshold, 14 AS "count", 2 AS depth, 1 AS parent_id, 0.27052640496012514 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 13 AS "count", 3 AS depth, 2 AS parent_id, 1.476569893006711 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, -1.690450196656372 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, 'Feature_38' AS feature, -1.1664048433303833 AS threshold, 4 AS "count", 2 AS depth, 1 AS parent_id, -0.22564252762662002 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 5 AS parent_id, 1.476569893006711 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 5 AS parent_id, -1.6904501966563723 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 7 AS "count", 1 AS depth, 0 AS parent_id, -1.6904501966563723 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3"."count" AS "count", "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"GB_Tree_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", -"DT_Output_3"."Estimator" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_3"), 
"GB_Tree_3_1" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_3"."Estimator" AS "Score_1" 
FROM "DT_Output_3"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Score_0" AS "Score_0", ensemble_score_union."Score_1" AS "Score_1" 
FROM (SELECT "GB_Tree_0_0"."KEY" AS "KEY", "GB_Tree_0_0"."Score_0" AS "Score_0", "GB_Tree_0_0"."Score_1" AS "Score_1" 
FROM "GB_Tree_0_0" UNION ALL SELECT "GB_Tree_0_1"."KEY" AS "KEY", "GB_Tree_0_1"."Score_0" AS "Score_0", "GB_Tree_0_1"."Score_1" AS "Score_1" 
FROM "GB_Tree_0_1" UNION ALL SELECT "GB_Tree_1_0"."KEY" AS "KEY", "GB_Tree_1_0"."Score_0" AS "Score_0", "GB_Tree_1_0"."Score_1" AS "Score_1" 
FROM "GB_Tree_1_0" UNION ALL SELECT "GB_Tree_1_1"."KEY" AS "KEY", "GB_Tree_1_1"."Score_0" AS "Score_0", "GB_Tree_1_1"."Score_1" AS "Score_1" 
FROM "GB_Tree_1_1" UNION ALL SELECT "GB_Tree_2_0"."KEY" AS "KEY", "GB_Tree_2_0"."Score_0" AS "Score_0", "GB_Tree_2_0"."Score_1" AS "Score_1" 
FROM "GB_Tree_2_0" UNION ALL SELECT "GB_Tree_2_1"."KEY" AS "KEY", "GB_Tree_2_1"."Score_0" AS "Score_0", "GB_Tree_2_1"."Score_1" AS "Score_1" 
FROM "GB_Tree_2_1" UNION ALL SELECT "GB_Tree_3_0"."KEY" AS "KEY", "GB_Tree_3_0"."Score_0" AS "Score_0", "GB_Tree_3_0"."Score_1" AS "Score_1" 
FROM "GB_Tree_3_0" UNION ALL SELECT "GB_Tree_3_1"."KEY" AS "KEY", "GB_Tree_3_1"."Score_0" AS "Score_0", "GB_Tree_3_1"."Score_1" AS "Score_1" 
FROM "GB_Tree_3_1") AS ensemble_score_union), 
"GradBoost_Sum_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Score_0" AS "Score_0", "T"."Score_1" AS "Score_1" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", sum("Score_Union_CTE"."Score_0") AS "Score_0", sum("Score_Union_CTE"."Score_1") AS "Score_1" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T"), 
orig_cte AS 
(SELECT "GradBoost_Sum_Scores"."KEY" AS "KEY", -(0.241162056817 + 0.1 * "GradBoost_Sum_Scores"."Score_1") AS "Score_0", 0.241162056817 + 0.1 * "GradBoost_Sum_Scores"."Score_1" AS "Score_1", 1.0 - 1.0 / (1.0 + exp(-(0.241162056817 + 0.1 * "GradBoost_Sum_Scores"."Score_1"))) AS "Proba_0", 1.0 / (1.0 + exp(-(0.241162056817 + 0.1 * "GradBoost_Sum_Scores"."Score_1"))) AS "Proba_1", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM "GradBoost_Sum_Scores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte