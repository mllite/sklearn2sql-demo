-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier
-- Dataset : BinaryClass_100
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_17" <= 1.086324691772461) THEN CASE WHEN ("ADS"."Feature_9" <= 1.7608928680419922) THEN CASE WHEN ("ADS"."Feature_60" <= -0.6577232480049133) THEN CASE WHEN ("ADS"."Feature_80" <= 0.2915303111076355) THEN 5 ELSE 6 END ELSE 7 END ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_57" <= -1.1760293245315552) THEN 10 ELSE 11 END END ELSE CASE WHEN ("ADS"."Feature_54" <= 1.471251130104065) THEN CASE WHEN ("ADS"."Feature_81" <= -1.8876248598098755) THEN 14 ELSE 15 END ELSE 16 END END AS node_id_2 
FROM "BINARYCLASS_100" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values"."count" AS DOUBLE) AS "count", CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Proba_0" AS DOUBLE) AS "Proba_0", CAST("Values"."LogProba_0" AS DOUBLE) AS "LogProba_0", CAST("Values"."Proba_1" AS DOUBLE) AS "Proba_1", CAST("Values"."LogProba_1" AS DOUBLE) AS "LogProba_1", CAST("Values"."Decision" AS DOUBLE) AS "Decision", CAST("Values"."DecisionProba" AS DOUBLE) AS "DecisionProba" 
FROM (SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 5 AS depth, 4 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS "count", 5 AS depth, 4 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 35 AS "count", 4 AS depth, 3 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS "count", 3 AS depth, 2 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 9 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 9 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 13 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 30 AS "count", 3 AS depth, 13 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 2 AS depth, 12 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Decision" AS "Decision", "DT_node_data"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", "DT_Output"."Decision" AS "Decision", "DT_Output"."DecisionProba" AS "DecisionProba" 
FROM "DT_Output"