-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_77" <= 0.24983039498329163) THEN CASE WHEN ("ADS"."Feature_40" <= -0.6528468132019043) THEN CASE WHEN ("ADS"."Feature_13" <= 0.2499181628227234) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_63" <= 1.7627620697021484) THEN 6 ELSE 7 END END ELSE 8 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 0 AS node_id, 'Feature_77' AS feature, 0.24983039498329163 AS threshold, 25 AS "count", 0 AS depth, NULL AS parent_id, 0.44 AS "Proba_0", -0.82098055207 AS "LogProba_0", 0.56 AS "Proba_1", -0.579818495253 AS "LogProba_1", 1 AS "Decision", 0.56 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'Feature_40' AS feature, -0.6528468132019043 AS threshold, 18 AS "count", 1 AS depth, 0 AS parent_id, 0.2222222222222222 AS "Proba_0", -1.50407739678 AS "LogProba_0", 0.7777777777777778 AS "Proba_1", -0.251314428281 AS "LogProba_1", 1 AS "Decision", 0.777777777778 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'Feature_13' AS feature, 0.2499181628227234 AS threshold, 4 AS "count", 2 AS depth, 1 AS parent_id, 0.75 AS "Proba_0", -0.287682072452 AS "LogProba_0", 0.25 AS "Proba_1", -1.38629436112 AS "LogProba_1", 0 AS "Decision", 0.75 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 2 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, 'Feature_63' AS feature, 1.7627620697021484 AS threshold, 14 AS "count", 2 AS depth, 1 AS parent_id, 0.07142857142857142 AS "Proba_0", -2.63905732962 AS "LogProba_0", 0.9285714285714286 AS "Proba_1", -0.0741079721537 AS "LogProba_1", 1 AS "Decision", 0.928571428571 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 13 AS "count", 3 AS depth, 5 AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 5 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 7 AS "count", 1 AS depth, 0 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Decision" AS "Decision", "DT_node_data"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", "DT_Output"."Decision" AS "Decision", "DT_Output"."DecisionProba" AS "DecisionProba" 
FROM "DT_Output"