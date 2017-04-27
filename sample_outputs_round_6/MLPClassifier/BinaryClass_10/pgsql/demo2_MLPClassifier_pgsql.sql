-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", "ADS"."Feature_0" AS "Feature_0", "ADS"."Feature_1" AS "Feature_1", "ADS"."Feature_2" AS "Feature_2", "ADS"."Feature_3" AS "Feature_3", "ADS"."Feature_4" AS "Feature_4", "ADS"."Feature_5" AS "Feature_5", "ADS"."Feature_6" AS "Feature_6", "ADS"."Feature_7" AS "Feature_7", "ADS"."Feature_8" AS "Feature_8", "ADS"."Feature_9" AS "Feature_9" 
FROM "BinaryClass_10" AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.340063358867 * "IL"."Feature_0" + 0.0288235432034 * "IL"."Feature_1" + -2.15656562594 * "IL"."Feature_2" + 1.96318962013 * "IL"."Feature_3" + 0.0310728680616 * "IL"."Feature_4" + 0.943414073289 * "IL"."Feature_5" + -0.644893936212 * "IL"."Feature_6" + -0.602888678217 * "IL"."Feature_7" + -1.79753136211 * "IL"."Feature_8" + -1.01887139941 * "IL"."Feature_9" + -0.169322379516 AS "NEUR_1_1", -3.37283419786 * "IL"."Feature_0" + 0.793398035532 * "IL"."Feature_1" + 5.04009344565 * "IL"."Feature_2" + -7.44799759118 * "IL"."Feature_3" + -1.67670342909 * "IL"."Feature_4" + -0.290508911343 * "IL"."Feature_5" + -1.34039822423 * "IL"."Feature_6" + -0.108454918708 * "IL"."Feature_7" + 3.85203461447 * "IL"."Feature_8" + 1.300323628 * "IL"."Feature_9" + 0.897020033992 AS "NEUR_1_2", -1.75241643314 * "IL"."Feature_0" + -3.41003348793 * "IL"."Feature_1" + -4.97162270762 * "IL"."Feature_2" + 6.92559057664 * "IL"."Feature_3" + 1.15634260652 * "IL"."Feature_4" + -0.91598010755 * "IL"."Feature_5" + -0.70541560837 * "IL"."Feature_6" + -4.47689490387 * "IL"."Feature_7" + -1.15992996535 * "IL"."Feature_8" + 1.59319357086 * "IL"."Feature_9" + 3.58043098722 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", -1.07053803013 * "HL_1_relu"."NEUR_1_1" + -0.923938270222 * "HL_1_relu"."NEUR_1_2" + 0.18359335283 * "HL_1_relu"."NEUR_1_3" + -0.870393850986 AS "NEUR_2_1", -1.34845684905 * "HL_1_relu"."NEUR_1_1" + 3.78788677834 * "HL_1_relu"."NEUR_1_2" + 0.512008047835 * "HL_1_relu"."NEUR_1_3" + 1.9110813914 AS "NEUR_2_2", -0.415819985835 * "HL_1_relu"."NEUR_1_1" + -2.14751499621 * "HL_1_relu"."NEUR_1_2" + 5.43150648508 * "HL_1_relu"."NEUR_1_3" + -1.43619371491 AS "NEUR_2_3", 0.111058298217 * "HL_1_relu"."NEUR_1_1" + -0.504596997969 * "HL_1_relu"."NEUR_1_2" + -0.406514336943 * "HL_1_relu"."NEUR_1_3" + -0.796433042434 AS "NEUR_2_4", 0.754758034752 * "HL_1_relu"."NEUR_1_1" + 4.64937757291 * "HL_1_relu"."NEUR_1_2" + -0.618996605953 * "HL_1_relu"."NEUR_1_3" + 0.921551381284 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.272442128586 * "HL_2_relu"."NEUR_2_1" + 2.530463564 * "HL_2_relu"."NEUR_2_2" + 3.02645505639 * "HL_2_relu"."NEUR_2_3" + 0.700639623956 * "HL_2_relu"."NEUR_2_4" + -4.62093752922 * "HL_2_relu"."NEUR_2_5" + -0.577573644517 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_logistic" AS 
(SELECT "OL_BA"."KEY" AS "KEY", 1.0 / (1.0 + exp(-"OL_BA"."NEUR_3_1")) AS "NEUR_3_1" 
FROM "OL_BA"), 
orig_cte AS 
(SELECT "OL_logistic"."KEY" AS "KEY", CAST(NULL AS FLOAT(53)) AS "Score_0", CAST(NULL AS FLOAT(53)) AS "Score_1", 1.0 - "OL_logistic"."NEUR_3_1" AS "Proba_0", "OL_logistic"."NEUR_3_1" AS "Proba_1", CAST(NULL AS FLOAT(53)) AS "LogProba_0", CAST(NULL AS FLOAT(53)) AS "LogProba_1", CAST(NULL AS FLOAT(53)) AS "Decision" 
FROM "OL_logistic"), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", (SELECT max(score_class_union."LogProba") AS max_1 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_LogProba", (SELECT max(score_class_union."Proba") AS max_2 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Proba", (SELECT max(score_class_union."Score") AS max_3 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Score" 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max."max_LogProba" = score_class_union."LogProba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max."max_Proba" = score_class_union."Proba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max."max_Score" = score_class_union."Score" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Score" 
FROM score_max)
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision" 
FROM arg_max_cte