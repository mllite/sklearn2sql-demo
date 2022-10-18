-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier
-- Dataset : FourClass_10
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.6375722885131836) THEN CASE WHEN ("ADS"."Feature_3" <= -1.7759541869163513) THEN 2 ELSE CASE WHEN ("ADS"."Feature_4" <= -0.35484130680561066) THEN CASE WHEN ("ADS"."Feature_0" <= 0.6487955152988434) THEN CASE WHEN ("ADS"."Feature_1" <= -0.3825293034315109) THEN 6 ELSE CASE WHEN ("ADS"."Feature_0" <= -1.8030309081077576) THEN 8 ELSE CASE WHEN ("ADS"."Feature_2" <= -1.900172233581543) THEN 10 ELSE 11 END END END ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_2" <= -2.539427638053894) THEN 14 ELSE 15 END END END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.362348735332489) THEN CASE WHEN ("ADS"."Feature_4" <= -0.20643145963549614) THEN 18 ELSE CASE WHEN ("ADS"."Feature_7" <= 0.07134207338094711) THEN 20 ELSE 21 END END ELSE CASE WHEN ("ADS"."Feature_8" <= 1.035046935081482) THEN CASE WHEN ("ADS"."Feature_3" <= 1.5132884979248047) THEN CASE WHEN ("ADS"."Feature_6" <= -0.5341478586196899) THEN 25 ELSE 26 END ELSE CASE WHEN ("ADS"."Feature_7" <= 3.2653926610946655) THEN CASE WHEN ("ADS"."Feature_8" <= 0.33265136182308197) THEN 29 ELSE CASE WHEN ("ADS"."Feature_8" <= 0.582874596118927) THEN CASE WHEN ("ADS"."Feature_9" <= -0.5248405635356903) THEN 32 ELSE 33 END ELSE 34 END END ELSE 35 END END ELSE CASE WHEN ("ADS"."Feature_4" <= -2.328209698200226) THEN 37 ELSE 38 END END END END AS node_id_2 
FROM "FourClass_10" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."D" AS "D", "Values"."DP" AS "DP" 
FROM (SELECT 2 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 6 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 8 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 10 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 11 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 12 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 14 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 15 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 18 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 20 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 21 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 25 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 26 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 29 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 32 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 33 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 34 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 35 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 37 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 38 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 2 AS "D", 1.0 AS "DP") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_0" AS "P_0", "DT_node_data"."P_1" AS "P_1", "DT_node_data"."P_2" AS "P_2", "DT_node_data"."P_3" AS "P_3", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", "DT_Output"."P_0" AS "Proba_0", "DT_Output"."P_1" AS "Proba_1", "DT_Output"."P_2" AS "Proba_2", "DT_Output"."P_3" AS "Proba_3", CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > 0.0) THEN ln("DT_Output"."P_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > 0.0) THEN ln("DT_Output"."P_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN ("DT_Output"."P_2" IS NULL OR "DT_Output"."P_2" > 0.0) THEN ln("DT_Output"."P_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN ("DT_Output"."P_3" IS NULL OR "DT_Output"."P_3" > 0.0) THEN ln("DT_Output"."P_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", "DT_Output"."D" AS "Decision", "DT_Output"."DP" AS "DecisionProba" 
FROM "DT_Output"