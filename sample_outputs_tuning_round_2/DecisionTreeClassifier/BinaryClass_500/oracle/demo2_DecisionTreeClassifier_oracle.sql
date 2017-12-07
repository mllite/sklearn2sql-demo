-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_234" <= 2.4513967037200928) THEN CASE WHEN ("ADS"."Feature_234" <= -1.1672475337982178) THEN CASE WHEN ("ADS"."Feature_316" <= 1.1058164834976196) THEN 4 ELSE 5 END ELSE 6 END ELSE 7 END ELSE CASE WHEN ("ADS"."Feature_27" <= 1.3946928977966309) THEN 9 ELSE 10 END END AS node_id_2 
FROM "BinaryClass_500" "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 4 AS depth, 3 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 4 AS depth, 3 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 31 AS count, 3 AS depth, 2 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 2 AS depth, 1 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 30 AS count, 2 AS depth, 8 AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 2 AS depth, 8 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Decision" AS "Decision", "DT_node_data"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", "DT_Output"."Decision" AS "Decision", "DT_Output"."DecisionProba" AS "DecisionProba" 
FROM "DT_Output"