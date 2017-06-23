-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" <= 4.949999809265137) THEN 1 ELSE CASE WHEN ("ADS"."Feature_3" <= 0.699999988079071) THEN 3 ELSE CASE WHEN ("ADS"."Feature_3" <= 1.75) THEN CASE WHEN ("ADS"."Feature_2" <= 4.949999809265137) THEN 6 ELSE CASE WHEN ("ADS"."Feature_3" <= 1.600000023841858) THEN 8 ELSE 9 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 5.25) THEN 11 ELSE 12 END END END END AS node_id_2 
FROM iris "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Proba_2.0" AS "Proba_2.0", "Values"."LogProba_2.0" AS "LogProba_2.0", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 0 AS node_id, 'Feature_0' AS feature, 4.949999809265137 AS threshold, 24 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.24324324324324326 AS "Proba_0.0", -1.41369333531 AS "LogProba_0.0", 0.6216216216216216 AS "Proba_1.0", -0.475423696715 AS "LogProba_1.0", 0.13513513513513514 AS "Proba_2.0", -2.00148000021 AS "LogProba_2.0", 1 AS "Decision", 0.621621621622 AS "DecisionProba" FROM DUAL UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 1 AS depth, 0 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_3' AS feature, 0.699999988079071 AS threshold, 20 AS count, 1 AS depth, 0 AS parent_id, 0.125 AS "Proba_0.0", -2.07944154168 AS "LogProba_0.0", 0.71875 AS "Proba_1.0", -0.330241686871 AS "LogProba_1.0", 0.15625 AS "Proba_2.0", -1.85629799037 AS "LogProba_2.0", 1 AS "Decision", 0.71875 AS "DecisionProba" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 2 AS depth, 2 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_3' AS feature, 1.75 AS threshold, 17 AS count, 2 AS depth, 2 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.8214285714285714 AS "Proba_1.0", -0.196710294246 AS "LogProba_1.0", 0.17857142857142858 AS "Proba_2.0", -1.72276659774 AS "LogProba_2.0", 1 AS "Decision", 0.821428571429 AS "DecisionProba" FROM DUAL UNION ALL SELECT 5 AS node_id, 'Feature_2' AS feature, 4.949999809265137 AS threshold, 14 AS count, 3 AS depth, 4 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.9130434782608695 AS "Proba_1.0", -0.0909717782057 AS "LogProba_1.0", 0.08695652173913043 AS "Proba_2.0", -2.44234703537 AS "LogProba_2.0", 1 AS "Decision", 0.913043478261 AS "DecisionProba" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, 'Feature_3' AS feature, 1.600000023841858 AS threshold, 2 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.3333333333333333 AS "Proba_1.0", -1.09861228867 AS "LogProba_1.0", 0.6666666666666666 AS "Proba_2.0", -0.405465108108 AS "LogProba_2.0", 2 AS "Decision", 0.666666666667 AS "DecisionProba" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 7 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 1.0 AS "Proba_2.0", 0.0 AS "LogProba_2.0", 2 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 7 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 10 AS node_id, 'Feature_2' AS feature, 5.25 AS threshold, 3 AS count, 3 AS depth, 4 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.4 AS "Proba_1.0", -0.916290731874 AS "LogProba_1.0", 0.6 AS "Proba_2.0", -0.510825623766 AS "LogProba_2.0", 2 AS "Decision", 0.6 AS "DecisionProba" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 10 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, 10 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 1.0 AS "Proba_2.0", 0.0 AS "LogProba_2.0", 2 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0.0" AS "Proba_0.0", "DT_node_data"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data"."Proba_1.0" AS "Proba_1.0", "DT_node_data"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data"."Proba_2.0" AS "Proba_2.0", "DT_node_data"."LogProba_2.0" AS "LogProba_2.0", "DT_node_data"."Decision" AS "Decision", "DT_node_data"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", "DT_Output"."Proba_0.0" AS "Proba_0", "DT_Output"."LogProba_0.0" AS "LogProba_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output"."Proba_1.0" AS "Proba_1", "DT_Output"."LogProba_1.0" AS "LogProba_1", CAST(NULL AS FLOAT) AS "Score_2", "DT_Output"."Proba_2.0" AS "Proba_2", "DT_Output"."LogProba_2.0" AS "LogProba_2" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 2.700000047683716) THEN 1 ELSE CASE WHEN ("ADS"."Feature_2" <= 4.949999809265137) THEN 3 ELSE CASE WHEN ("ADS"."Feature_3" <= 1.75) THEN CASE WHEN ("ADS"."Feature_3" <= 1.6500000953674316) THEN 6 ELSE 7 END ELSE 8 END END END AS node_id_2 
FROM iris "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Proba_2.0" AS "Proba_2.0", "Values"."LogProba_2.0" AS "LogProba_2.0", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 0 AS node_id, 'Feature_2' AS feature, 2.700000047683716 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.35135135135135137 AS "Proba_0.0", -1.04596855518 AS "LogProba_0.0", 0.43243243243243246 AS "Proba_1.0", -0.838329190404 AS "LogProba_1.0", 0.21621621621621623 AS "Proba_2.0", -1.53147637096 AS "LogProba_2.0", 1 AS "Decision", 0.432432432432 AS "DecisionProba" FROM DUAL UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 1 AS depth, 0 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_2' AS feature, 4.949999809265137 AS threshold, 18 AS count, 1 AS depth, 0 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.6666666666666666 AS "Proba_1.0", -0.405465108108 AS "LogProba_1.0", 0.3333333333333333 AS "Proba_2.0", -1.09861228867 AS "LogProba_2.0", 1 AS "Decision", 0.666666666667 AS "DecisionProba" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 2 AS depth, 2 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_3' AS feature, 1.75 AS threshold, 8 AS count, 2 AS depth, 2 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.1111111111111111 AS "Proba_1.0", -2.19722457734 AS "LogProba_1.0", 0.8888888888888888 AS "Proba_2.0", -0.117783035656 AS "LogProba_2.0", 2 AS "Decision", 0.888888888889 AS "DecisionProba" FROM DUAL UNION ALL SELECT 5 AS node_id, 'Feature_3' AS feature, 1.6500000953674316 AS threshold, 3 AS count, 3 AS depth, 4 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.3333333333333333 AS "Proba_1.0", -1.09861228867 AS "LogProba_1.0", 0.6666666666666666 AS "Proba_2.0", -0.405465108108 AS "LogProba_2.0", 2 AS "Decision", 0.666666666667 AS "DecisionProba" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 1.0 AS "Proba_2.0", 0.0 AS "LogProba_2.0", 2 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 4 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 1.0 AS "Proba_2.0", 0.0 AS "LogProba_2.0", 2 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Proba_0.0" AS "Proba_0.0", "DT_node_data_1"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data_1"."Proba_1.0" AS "Proba_1.0", "DT_node_data_1"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data_1"."Proba_2.0" AS "Proba_2.0", "DT_node_data_1"."LogProba_2.0" AS "LogProba_2.0", "DT_node_data_1"."Decision" AS "Decision", "DT_node_data_1"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", "DT_Output_1"."Proba_0.0" AS "Proba_0", "DT_Output_1"."LogProba_0.0" AS "LogProba_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output_1"."Proba_1.0" AS "Proba_1", "DT_Output_1"."LogProba_1.0" AS "LogProba_1", CAST(NULL AS FLOAT) AS "Score_2", "DT_Output_1"."Proba_2.0" AS "Proba_2", "DT_Output_1"."LogProba_2.0" AS "LogProba_2" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.699999988079071) THEN 1 ELSE CASE WHEN ("ADS"."Feature_3" <= 1.75) THEN CASE WHEN ("ADS"."Feature_1" <= 2.3000001907348633) THEN 4 ELSE CASE WHEN ("ADS"."Feature_0" <= 6.949999809265137) THEN 6 ELSE 7 END END ELSE 8 END END AS node_id_2 
FROM iris "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Proba_2.0" AS "Proba_2.0", "Values"."LogProba_2.0" AS "LogProba_2.0", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.699999988079071 AS threshold, 20 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.4864864864864865 AS "Proba_0.0", -0.720546154748 AS "LogProba_0.0", 0.2972972972972973 AS "Proba_1.0", -1.21302263985 AS "LogProba_1.0", 0.21621621621621623 AS "Proba_2.0", -1.53147637096 AS "LogProba_2.0", 0 AS "Decision", 0.486486486486 AS "DecisionProba" FROM DUAL UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 1 AS depth, 0 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_3' AS feature, 1.75 AS threshold, 11 AS count, 1 AS depth, 0 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.5789473684210527 AS "Proba_1.0", -0.546543706368 AS "LogProba_1.0", 0.42105263157894735 AS "Proba_2.0", -0.864997437487 AS "LogProba_2.0", 1 AS "Decision", 0.578947368421 AS "DecisionProba" FROM DUAL UNION ALL SELECT 3 AS node_id, 'Feature_1' AS feature, 2.3000001907348633 AS threshold, 8 AS count, 2 AS depth, 2 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.7857142857142857 AS "Proba_1.0", -0.241162056817 AS "LogProba_1.0", 0.21428571428571427 AS "Proba_2.0", -1.54044504095 AS "LogProba_2.0", 1 AS "Decision", 0.785714285714 AS "DecisionProba" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 3 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 1.0 AS "Proba_2.0", 0.0 AS "LogProba_2.0", 2 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 5 AS node_id, 'Feature_0' AS feature, 6.949999809265137 AS threshold, 7 AS count, 3 AS depth, 3 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.8461538461538461 AS "Proba_1.0", -0.167054084663 AS "LogProba_1.0", 0.15384615384615385 AS "Proba_2.0", -1.8718021769 AS "LogProba_2.0", 1 AS "Decision", 0.846153846154 AS "DecisionProba" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 1.0 AS "Proba_2.0", 0.0 AS "LogProba_2.0", 2 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 2 AS depth, 2 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 1.0 AS "Proba_2.0", 0.0 AS "LogProba_2.0", 2 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Proba_0.0" AS "Proba_0.0", "DT_node_data_2"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data_2"."Proba_1.0" AS "Proba_1.0", "DT_node_data_2"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data_2"."Proba_2.0" AS "Proba_2.0", "DT_node_data_2"."LogProba_2.0" AS "LogProba_2.0", "DT_node_data_2"."Decision" AS "Decision", "DT_node_data_2"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", "DT_Output_2"."Proba_0.0" AS "Proba_0", "DT_Output_2"."LogProba_0.0" AS "LogProba_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output_2"."Proba_1.0" AS "Proba_1", "DT_Output_2"."LogProba_1.0" AS "LogProba_1", CAST(NULL AS FLOAT) AS "Score_2", "DT_Output_2"."Proba_2.0" AS "Proba_2", "DT_Output_2"."LogProba_2.0" AS "LogProba_2" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.699999988079071) THEN 1 ELSE CASE WHEN ("ADS"."Feature_2" <= 4.949999809265137) THEN 3 ELSE CASE WHEN ("ADS"."Feature_2" <= 5.150000095367432) THEN CASE WHEN ("ADS"."Feature_1" <= 2.75) THEN 6 ELSE 7 END ELSE 8 END END END AS node_id_2 
FROM iris "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Proba_2.0" AS "Proba_2.0", "Values"."LogProba_2.0" AS "LogProba_2.0", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.699999988079071 AS threshold, 31 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.43243243243243246 AS "Proba_0.0", -0.838329190404 AS "LogProba_0.0", 0.35135135135135137 AS "Proba_1.0", -1.04596855518 AS "LogProba_1.0", 0.21621621621621623 AS "Proba_2.0", -1.53147637096 AS "LogProba_2.0", 0 AS "Decision", 0.432432432432 AS "DecisionProba" FROM DUAL UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 1 AS depth, 0 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_2' AS feature, 4.949999809265137 AS threshold, 18 AS count, 1 AS depth, 0 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.6190476190476191 AS "Proba_1.0", -0.479573080262 AS "LogProba_1.0", 0.38095238095238093 AS "Proba_2.0", -0.965080896044 AS "LogProba_2.0", 1 AS "Decision", 0.619047619048 AS "DecisionProba" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 2 AS depth, 2 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_2' AS feature, 5.150000095367432 AS threshold, 8 AS count, 2 AS depth, 2 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.1111111111111111 AS "Proba_1.0", -2.19722457734 AS "LogProba_1.0", 0.8888888888888888 AS "Proba_2.0", -0.117783035656 AS "LogProba_2.0", 2 AS "Decision", 0.888888888889 AS "DecisionProba" FROM DUAL UNION ALL SELECT 5 AS node_id, 'Feature_1' AS feature, 2.75 AS threshold, 3 AS count, 3 AS depth, 4 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.25 AS "Proba_1.0", -1.38629436112 AS "LogProba_1.0", 0.75 AS "Proba_2.0", -0.287682072452 AS "LogProba_2.0", 2 AS "Decision", 0.75 AS "DecisionProba" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 1.0 AS "Proba_2.0", 0.0 AS "LogProba_2.0", 2 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 5 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 0.0 AS "Proba_2.0", -BINARY_FLOAT_INFINITY AS "LogProba_2.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 4 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 1.0 AS "Proba_2.0", 0.0 AS "LogProba_2.0", 2 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Proba_0.0" AS "Proba_0.0", "DT_node_data_3"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data_3"."Proba_1.0" AS "Proba_1.0", "DT_node_data_3"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data_3"."Proba_2.0" AS "Proba_2.0", "DT_node_data_3"."LogProba_2.0" AS "LogProba_2.0", "DT_node_data_3"."Decision" AS "Decision", "DT_node_data_3"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"RF_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", "DT_Output_3"."Proba_0.0" AS "Proba_0", "DT_Output_3"."LogProba_0.0" AS "LogProba_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output_3"."Proba_1.0" AS "Proba_1", "DT_Output_3"."LogProba_1.0" AS "LogProba_1", CAST(NULL AS FLOAT) AS "Score_2", "DT_Output_3"."Proba_2.0" AS "Proba_2", "DT_Output_3"."LogProba_2.0" AS "LogProba_2" 
FROM "DT_Output_3"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Score_0" AS "Score_0", ensemble_score_union."Proba_0" AS "Proba_0", ensemble_score_union."LogProba_0" AS "LogProba_0", ensemble_score_union."Score_1" AS "Score_1", ensemble_score_union."Proba_1" AS "Proba_1", ensemble_score_union."LogProba_1" AS "LogProba_1", ensemble_score_union."Score_2" AS "Score_2", ensemble_score_union."Proba_2" AS "Proba_2", ensemble_score_union."LogProba_2" AS "LogProba_2" 
FROM (SELECT "RF_Tree_0"."KEY" AS "KEY", "RF_Tree_0"."Score_0" AS "Score_0", "RF_Tree_0"."Proba_0" AS "Proba_0", "RF_Tree_0"."LogProba_0" AS "LogProba_0", "RF_Tree_0"."Score_1" AS "Score_1", "RF_Tree_0"."Proba_1" AS "Proba_1", "RF_Tree_0"."LogProba_1" AS "LogProba_1", "RF_Tree_0"."Score_2" AS "Score_2", "RF_Tree_0"."Proba_2" AS "Proba_2", "RF_Tree_0"."LogProba_2" AS "LogProba_2" 
FROM "RF_Tree_0" UNION ALL SELECT "RF_Tree_1"."KEY" AS "KEY", "RF_Tree_1"."Score_0" AS "Score_0", "RF_Tree_1"."Proba_0" AS "Proba_0", "RF_Tree_1"."LogProba_0" AS "LogProba_0", "RF_Tree_1"."Score_1" AS "Score_1", "RF_Tree_1"."Proba_1" AS "Proba_1", "RF_Tree_1"."LogProba_1" AS "LogProba_1", "RF_Tree_1"."Score_2" AS "Score_2", "RF_Tree_1"."Proba_2" AS "Proba_2", "RF_Tree_1"."LogProba_2" AS "LogProba_2" 
FROM "RF_Tree_1" UNION ALL SELECT "RF_Tree_2"."KEY" AS "KEY", "RF_Tree_2"."Score_0" AS "Score_0", "RF_Tree_2"."Proba_0" AS "Proba_0", "RF_Tree_2"."LogProba_0" AS "LogProba_0", "RF_Tree_2"."Score_1" AS "Score_1", "RF_Tree_2"."Proba_1" AS "Proba_1", "RF_Tree_2"."LogProba_1" AS "LogProba_1", "RF_Tree_2"."Score_2" AS "Score_2", "RF_Tree_2"."Proba_2" AS "Proba_2", "RF_Tree_2"."LogProba_2" AS "LogProba_2" 
FROM "RF_Tree_2" UNION ALL SELECT "RF_Tree_3"."KEY" AS "KEY", "RF_Tree_3"."Score_0" AS "Score_0", "RF_Tree_3"."Proba_0" AS "Proba_0", "RF_Tree_3"."LogProba_0" AS "LogProba_0", "RF_Tree_3"."Score_1" AS "Score_1", "RF_Tree_3"."Proba_1" AS "Proba_1", "RF_Tree_3"."LogProba_1" AS "LogProba_1", "RF_Tree_3"."Score_2" AS "Score_2", "RF_Tree_3"."Proba_2" AS "Proba_2", "RF_Tree_3"."LogProba_2" AS "LogProba_2" 
FROM "RF_Tree_3") ensemble_score_union), 
"RF_AVG_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Score_0" AS "Score_0", "T"."Proba_0" AS "Proba_0", "T"."LogProba_0" AS "LogProba_0", "T"."Score_1" AS "Score_1", "T"."Proba_1" AS "Proba_1", "T"."LogProba_1" AS "LogProba_1", "T"."Score_2" AS "Score_2", "T"."Proba_2" AS "Proba_2", "T"."LogProba_2" AS "LogProba_2" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", avg("Score_Union_CTE"."Score_0") AS "Score_0", avg("Score_Union_CTE"."Proba_0") AS "Proba_0", avg("Score_Union_CTE"."LogProba_0") AS "LogProba_0", avg("Score_Union_CTE"."Score_1") AS "Score_1", avg("Score_Union_CTE"."Proba_1") AS "Proba_1", avg("Score_Union_CTE"."LogProba_1") AS "LogProba_1", avg("Score_Union_CTE"."Score_2") AS "Score_2", avg("Score_Union_CTE"."Proba_2") AS "Proba_2", avg("Score_Union_CTE"."LogProba_2") AS "LogProba_2" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") "T"), 
orig_cte AS 
(SELECT "RF_AVG_Scores"."KEY" AS "KEY", "RF_AVG_Scores"."Score_0" AS "Score_0", "RF_AVG_Scores"."Score_1" AS "Score_1", "RF_AVG_Scores"."Score_2" AS "Score_2", "RF_AVG_Scores"."Proba_0" AS "Proba_0", "RF_AVG_Scores"."Proba_1" AS "Proba_1", "RF_AVG_Scores"."Proba_2" AS "Proba_2", "RF_AVG_Scores"."LogProba_0" AS "LogProba_0", "RF_AVG_Scores"."LogProba_1" AS "LogProba_1", "RF_AVG_Scores"."LogProba_2" AS "LogProba_2", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "RF_AVG_Scores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_2", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte