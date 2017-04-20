-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.1617054840932139 * "ADS"."Feature_0" + 0.13434191347062516 * "ADS"."Feature_1" + 0.050691437954162026 * "ADS"."Feature_2" + -0.17071003867477708 * "ADS"."Feature_3" + -0.040413925950070574 * "ADS"."Feature_4" + 0.0035729163911442097 * "ADS"."Feature_5" + -0.01312536921237245 * "ADS"."Feature_6" + 0.01815531904507839 * "ADS"."Feature_7" + 0.06668289760065423 * "ADS"."Feature_8" + -0.1469873310007165 * "ADS"."Feature_9" + 0.14867605719870008 * "ADS"."Feature_10" + -0.03676457878565584 * "ADS"."Feature_11" + -0.019381962762350984 * "ADS"."Feature_12" + 0.047486311005196166 * "ADS"."Feature_13" + 0.03205231465352787 * "ADS"."Feature_14" + 0.12831937250365935 * "ADS"."Feature_15" + -0.09128828787596005 * "ADS"."Feature_16" + -0.011866343745125803 * "ADS"."Feature_17" + -0.04976358744313517 * "ADS"."Feature_18" + 0.054503083889306615 * "ADS"."Feature_19" + -0.355299716087 AS "Score_0", -0.08403313685127549 * "ADS"."Feature_0" + 0.0012428120337684818 * "ADS"."Feature_1" + 0.023951813331838913 * "ADS"."Feature_2" + 0.16359424698386385 * "ADS"."Feature_3" + 0.04505431273053051 * "ADS"."Feature_4" + 0.14446994249838288 * "ADS"."Feature_5" + -0.23221188998521547 * "ADS"."Feature_6" + -0.041902202330775205 * "ADS"."Feature_7" + 0.049141065954150936 * "ADS"."Feature_8" + 0.07696781311173376 * "ADS"."Feature_9" + -0.047044473956618114 * "ADS"."Feature_10" + -0.019994046097403753 * "ADS"."Feature_11" + -0.011258176539617526 * "ADS"."Feature_12" + -0.07678370218197114 * "ADS"."Feature_13" + 0.0527693352805554 * "ADS"."Feature_14" + -0.08863463169810393 * "ADS"."Feature_15" + -0.008022286956622049 * "ADS"."Feature_16" + -0.038167747110166864 * "ADS"."Feature_17" + -0.08641838122936268 * "ADS"."Feature_18" + 0.07691459405934259 * "ADS"."Feature_19" + -0.47904769805 AS "Score_1", 0.012669006231545356 * "ADS"."Feature_0" + 0.02427170076848188 * "ADS"."Feature_1" + 0.042855330294181204 * "ADS"."Feature_2" + 0.09398853923791395 * "ADS"."Feature_3" + 0.01582373824608487 * "ADS"."Feature_4" + -0.1749413946603716 * "ADS"."Feature_5" + 0.12034161796650665 * "ADS"."Feature_6" + 0.01505892401216497 * "ADS"."Feature_7" + -0.09762747744285294 * "ADS"."Feature_8" + -0.04829662730841417 * "ADS"."Feature_9" + -0.11680098009329946 * "ADS"."Feature_10" + 0.01435607996564153 * "ADS"."Feature_11" + -0.009928152115060991 * "ADS"."Feature_12" + 0.01985050292342247 * "ADS"."Feature_13" + -0.008124017090794104 * "ADS"."Feature_14" + 0.1162823296528546 * "ADS"."Feature_15" + -0.04040292557472061 * "ADS"."Feature_16" + -0.002605732907731806 * "ADS"."Feature_17" + 0.03775200252612791 * "ADS"."Feature_18" + 0.009400365856872941 * "ADS"."Feature_19" + -0.520267345684 AS "Score_2", -0.090341353473483 * "ADS"."Feature_0" + -0.159856426272875 * "ADS"."Feature_1" + -0.11749858158018098 * "ADS"."Feature_2" + -0.0868727475470005 * "ADS"."Feature_3" + -0.020464125026545946 * "ADS"."Feature_4" + 0.026898535770843918 * "ADS"."Feature_5" + 0.1249956412310848 * "ADS"."Feature_6" + 0.00868795927353126 * "ADS"."Feature_7" + -0.018196486111950558 * "ADS"."Feature_8" + 0.1183161451973962 * "ADS"."Feature_9" + 0.015169396851217057 * "ADS"."Feature_10" + 0.04240254491741601 * "ADS"."Feature_11" + 0.040568291417030056 * "ADS"."Feature_12" + 0.009446888253352444 * "ADS"."Feature_13" + -0.07669763284328962 * "ADS"."Feature_14" + -0.15596707045841346 * "ADS"."Feature_15" + 0.13971350040730346 * "ADS"."Feature_16" + 0.05263982376302363 * "ADS"."Feature_17" + 0.09842996614636983 * "ADS"."Feature_18" + -0.14081804380552737 * "ADS"."Feature_19" + -0.645385240178 AS "Score_3" 
FROM "INPUT_DATA" AS "ADS"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS FLOAT) AS "Decision" 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) AS scu), 
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
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte