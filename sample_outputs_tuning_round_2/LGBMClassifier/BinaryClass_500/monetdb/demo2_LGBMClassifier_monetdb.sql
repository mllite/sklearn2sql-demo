-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 9.999999682655225e-21) THEN CASE WHEN ("ADS"."Feature_454" <= 0.36896500008379285) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 0.08181818181818183 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.018518518518518514 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.09999999999999998 AS "Score") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Score" AS "Score" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"LGBM_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Score" AS "Score_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 9.999999682655225e-21) THEN CASE WHEN ("ADS"."Feature_454" <= 0.3302155700374352) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 0.07785970941192365 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.015742117394893194 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.08702922525369267 AS "Score") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Score" AS "Score" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"LGBM_Tree_0_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Score" AS "Score_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 9.999999682655225e-21) THEN CASE WHEN ("ADS"."Feature_454" <= 0.3302155700374352) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 0.07432295598691702 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.014958192858611545 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.0831674679383717 AS "Score") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Score" AS "Score" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"LGBM_Tree_0_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Score" AS "Score_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 9.999999682655225e-21) THEN CASE WHEN ("ADS"."Feature_454" <= 0.3302155700374352) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 0.07113620841455619 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.01421482841246438 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.07974291741525091 AS "Score") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Score" AS "Score" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"LGBM_Tree_0_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Score" AS "Score_0" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 0.507993806334937) THEN CASE WHEN ("ADS"."Feature_441" <= -0.11166385842624574) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 0.08685111779526351 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.012415874467144063 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.06411146923894888 AS "Score") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Score" AS "Score" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"LGBM_Tree_0_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Score" AS "Score_0" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 9.999999682655225e-21) THEN CASE WHEN ("ADS"."Feature_366" <= -0.03555934409049658) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 0.06606723888182132 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.013275260001986647 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.07867138267863993 AS "Score") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Score" AS "Score" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"LGBM_Tree_0_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Score" AS "Score_0" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 0.507993806334937) THEN CASE WHEN ("ADS"."Feature_232" <= -9.999999682655225e-21) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 0.08162561947195195 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.06909516773714276 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.003477755563613981 AS "Score") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Score" AS "Score" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"LGBM_Tree_0_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Score" AS "Score_0" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 9.999999682655225e-21) THEN CASE WHEN ("ADS"."Feature_53" <= 0.10234019020604285) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 0.0618844264632681 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.075907841427807 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.009742413833550848 AS "Score") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Score" AS "Score" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"LGBM_Tree_0_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Score" AS "Score_0" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 0.507993806334937) THEN CASE WHEN ("ADS"."Feature_441" <= -0.11166385842624574) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 0.07739765999180788 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.015020273241242048 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.05790629211539196 AS "Score") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Score" AS "Score" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"LGBM_Tree_0_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Score" AS "Score_0" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 0.507993806334937) THEN CASE WHEN ("ADS"."Feature_84" <= -0.11381220150682195) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_500" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 0.07535713270283573 AS "Score" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.0018484038094394148 AS "Score" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.07082976923750421 AS "Score") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Score" AS "Score" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"LGBM_Tree_0_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Score" AS "Score_0" 
FROM "DT_Output_9"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_Tree_0_0"."KEY" AS "KEY", "LGBM_Tree_0_0"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_0" UNION ALL SELECT "LGBM_Tree_0_1"."KEY" AS "KEY", "LGBM_Tree_0_1"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_1" UNION ALL SELECT "LGBM_Tree_0_2"."KEY" AS "KEY", "LGBM_Tree_0_2"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_2" UNION ALL SELECT "LGBM_Tree_0_3"."KEY" AS "KEY", "LGBM_Tree_0_3"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_3" UNION ALL SELECT "LGBM_Tree_0_4"."KEY" AS "KEY", "LGBM_Tree_0_4"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_4" UNION ALL SELECT "LGBM_Tree_0_5"."KEY" AS "KEY", "LGBM_Tree_0_5"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_5" UNION ALL SELECT "LGBM_Tree_0_6"."KEY" AS "KEY", "LGBM_Tree_0_6"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_6" UNION ALL SELECT "LGBM_Tree_0_7"."KEY" AS "KEY", "LGBM_Tree_0_7"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_7" UNION ALL SELECT "LGBM_Tree_0_8"."KEY" AS "KEY", "LGBM_Tree_0_8"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_8" UNION ALL SELECT "LGBM_Tree_0_9"."KEY" AS "KEY", "LGBM_Tree_0_9"."Score_0" AS "Score_0" 
FROM "LGBM_Tree_0_9") AS ensemble_score_union), 
"LGBM_Sum_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Score_0" AS "Score_0" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", sum("Score_Union_CTE"."Score_0") AS "Score_0" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T"), 
orig_cte AS 
(SELECT "LGBM_Sum_Scores"."KEY" AS "KEY", "LGBM_Sum_Scores"."Score_0" AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-"LGBM_Sum_Scores"."Score_0" <= -100.0) THEN -100.0 ELSE -"LGBM_Sum_Scores"."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-"LGBM_Sum_Scores"."Score_0" <= -100.0) THEN -100.0 ELSE -"LGBM_Sum_Scores"."Score_0" END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-"LGBM_Sum_Scores"."Score_0" <= -100.0) THEN -100.0 ELSE -"LGBM_Sum_Scores"."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-"LGBM_Sum_Scores"."Score_0" <= -100.0) THEN -100.0 ELSE -"LGBM_Sum_Scores"."Score_0" END END ELSE -709.782712893 END)) AS "Proba_0", 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-"LGBM_Sum_Scores"."Score_0" <= -100.0) THEN -100.0 ELSE -"LGBM_Sum_Scores"."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-"LGBM_Sum_Scores"."Score_0" <= -100.0) THEN -100.0 ELSE -"LGBM_Sum_Scores"."Score_0" END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-"LGBM_Sum_Scores"."Score_0" <= -100.0) THEN -100.0 ELSE -"LGBM_Sum_Scores"."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-"LGBM_Sum_Scores"."Score_0" <= -100.0) THEN -100.0 ELSE -"LGBM_Sum_Scores"."Score_0" END END ELSE -709.782712893 END)) AS "Proba_1", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM "LGBM_Sum_Scores"), 
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
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL) THEN arg_max_cte."Proba_0" ELSE CASE WHEN (arg_max_cte."Proba_0" > 0.0) THEN log(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL) THEN arg_max_cte."Proba_1" ELSE CASE WHEN (arg_max_cte."Proba_1" > 0.0) THEN log(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte