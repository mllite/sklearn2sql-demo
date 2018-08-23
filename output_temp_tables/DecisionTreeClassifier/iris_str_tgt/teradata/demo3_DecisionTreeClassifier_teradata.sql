-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier
-- Dataset : iris_str_tgt
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= CAST(0.800000011920929 AS DOUBLE PRECISION)) THEN 1 ELSE CASE WHEN ("ADS"."Feature_2" <= CAST(4.850000381469727 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_3" <= CAST(1.650000095367432 AS DOUBLE PRECISION)) THEN 4 ELSE CASE WHEN ("ADS"."Feature_1" <= CAST(3.099999904632568 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= CAST(1.75 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_2" <= CAST(5.050000190734863 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_1" <= CAST(2.349999904632568 AS DOUBLE PRECISION)) THEN 11 ELSE 12 END ELSE 13 END ELSE 14 END END END AS node_id_2 
FROM iris_str_tgt AS "ADS"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_CLASS_0" AS DOUBLE PRECISION) AS "P_CLASS_0", CAST("Values"."P_CLASS_1" AS DOUBLE PRECISION) AS "P_CLASS_1", CAST("Values"."P_CLASS_2" AS DOUBLE PRECISION) AS "P_CLASS_2", CAST("Values"."D" AS DOUBLE PRECISION) AS "D", CAST("Values"."DP" AS DOUBLE PRECISION) AS "DP" 
FROM (SELECT 1 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_CLASS_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_2", 'CLASS_0' AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_CLASS_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_2", 'CLASS_1' AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 6 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_1", CAST(1.0 AS DOUBLE PRECISION) AS "P_CLASS_2", 'CLASS_2' AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 7 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_CLASS_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_2", 'CLASS_1' AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 11 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_1", CAST(1.0 AS DOUBLE PRECISION) AS "P_CLASS_2", 'CLASS_2' AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 12 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_CLASS_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_2", 'CLASS_1' AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 13 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_1", CAST(1.0 AS DOUBLE PRECISION) AS "P_CLASS_2", 'CLASS_2' AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 14 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_CLASS_1", CAST(1.0 AS DOUBLE PRECISION) AS "P_CLASS_2", 'CLASS_2' AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_CLASS_0" AS "P_CLASS_0", "DT_node_data"."P_CLASS_1" AS "P_CLASS_1", "DT_node_data"."P_CLASS_2" AS "P_CLASS_2", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_CLASS_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_CLASS_1", CAST(NULL AS DOUBLE PRECISION) AS "Score_CLASS_2", "DT_Output"."P_CLASS_0" AS "Proba_CLASS_0", "DT_Output"."P_CLASS_1" AS "Proba_CLASS_1", "DT_Output"."P_CLASS_2" AS "Proba_CLASS_2", CASE WHEN ("DT_Output"."P_CLASS_0" IS NULL OR "DT_Output"."P_CLASS_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output"."P_CLASS_0") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_0", CASE WHEN ("DT_Output"."P_CLASS_1" IS NULL OR "DT_Output"."P_CLASS_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output"."P_CLASS_1") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_1", CASE WHEN ("DT_Output"."P_CLASS_2" IS NULL OR "DT_Output"."P_CLASS_2" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output"."P_CLASS_2") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_2", "DT_Output"."D" AS "Decision", "DT_Output"."DP" AS "DecisionProba" 
FROM "DT_Output"