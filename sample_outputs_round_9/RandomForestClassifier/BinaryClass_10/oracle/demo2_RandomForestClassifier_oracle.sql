-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" <= 0.43481892347335815) THEN CASE WHEN ("ADS"."Feature_4" <= 0.29477521777153015) THEN CASE WHEN ("ADS"."Feature_0" <= -1.2388321161270142) THEN 3 ELSE CASE WHEN ("ADS"."Feature_9" <= -0.6653846502304077) THEN 5 ELSE 6 END END ELSE 7 END ELSE 8 END AS node_id_2 
FROM "BinaryClass_10" "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 0 AS node_id, 'Feature_0' AS feature, 0.43481892347335815 AS threshold, 15 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.72 AS "Proba_0.0", -0.328504066972 AS "LogProba_0.0", 0.28 AS "Proba_1.0", -1.27296567581 AS "LogProba_1.0", 0 AS "Decision", 0.72 AS "DecisionProba" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_4' AS feature, 0.29477521777153015 AS threshold, 7 AS count, 1 AS depth, 0 AS parent_id, 0.4166666666666667 AS "Proba_0.0", -0.875468737354 AS "LogProba_0.0", 0.5833333333333334 AS "Proba_1.0", -0.538996500733 AS "LogProba_1.0", 1 AS "Decision", 0.583333333333 AS "DecisionProba" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, -1.2388321161270142 AS threshold, 5 AS count, 2 AS depth, 1 AS parent_id, 0.7142857142857143 AS "Proba_0.0", -0.336472236621 AS "LogProba_0.0", 0.2857142857142857 AS "Proba_1.0", -1.2527629685 AS "LogProba_1.0", 0 AS "Decision", 0.714285714286 AS "DecisionProba" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_9' AS feature, -0.6653846502304077 AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, 0.8333333333333334 AS "Proba_0.0", -0.182321556794 AS "LogProba_0.0", 0.16666666666666666 AS "Proba_1.0", -1.79175946923 AS "LogProba_1.0", 0 AS "Decision", 0.833333333333 AS "DecisionProba" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 4 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 4 AS depth, 4 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 1 AS depth, 0 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0.0" AS "Proba_0.0", "DT_node_data"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data"."Proba_1.0" AS "Proba_1.0", "DT_node_data"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data"."Decision" AS "Decision", "DT_node_data"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", "DT_Output"."Proba_0.0" AS "Proba_0", "DT_Output"."LogProba_0.0" AS "LogProba_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output"."Proba_1.0" AS "Proba_1", "DT_Output"."LogProba_1.0" AS "LogProba_1" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.5735970735549927) THEN CASE WHEN ("ADS"."Feature_5" <= 2.4748287200927734) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "BinaryClass_10" "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 0 AS node_id, 'Feature_9' AS feature, 0.5735970735549927 AS threshold, 16 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.56 AS "Proba_0.0", -0.579818495253 AS "LogProba_0.0", 0.44 AS "Proba_1.0", -0.82098055207 AS "LogProba_1.0", 0 AS "Decision", 0.56 AS "DecisionProba" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_5' AS feature, 2.4748287200927734 AS threshold, 12 AS count, 1 AS depth, 0 AS parent_id, 0.8235294117647058 AS "Proba_0.0", -0.194156014441 AS "LogProba_0.0", 0.17647058823529413 AS "Proba_1.0", -1.73460105539 AS "LogProba_1.0", 0 AS "Decision", 0.823529411765 AS "DecisionProba" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 2 AS depth, 1 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 1 AS depth, 0 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Proba_0.0" AS "Proba_0.0", "DT_node_data_1"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data_1"."Proba_1.0" AS "Proba_1.0", "DT_node_data_1"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data_1"."Decision" AS "Decision", "DT_node_data_1"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", "DT_Output_1"."Proba_0.0" AS "Proba_0", "DT_Output_1"."LogProba_0.0" AS "LogProba_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output_1"."Proba_1.0" AS "Proba_1", "DT_Output_1"."LogProba_1.0" AS "LogProba_1" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_4" <= -1.2095468044281006) THEN CASE WHEN ("ADS"."Feature_8" <= 0.4327673614025116) THEN 2 ELSE CASE WHEN ("ADS"."Feature_4" <= -1.7279367446899414) THEN 4 ELSE 5 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.43481892347335815) THEN 7 ELSE 8 END END AS node_id_2 
FROM "BinaryClass_10" "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 0 AS node_id, 'Feature_4' AS feature, -1.2095468044281006 AS threshold, 16 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.48 AS "Proba_0.0", -0.73396917508 AS "LogProba_0.0", 0.52 AS "Proba_1.0", -0.653926467407 AS "LogProba_1.0", 1 AS "Decision", 0.52 AS "DecisionProba" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_8' AS feature, 0.4327673614025116 AS threshold, 6 AS count, 1 AS depth, 0 AS parent_id, 0.8888888888888888 AS "Proba_0.0", -0.117783035656 AS "LogProba_0.0", 0.1111111111111111 AS "Proba_1.0", -2.19722457734 AS "LogProba_1.0", 0 AS "Decision", 0.888888888889 AS "DecisionProba" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 2 AS depth, 1 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 3 AS node_id, 'Feature_4' AS feature, -1.7279367446899414 AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, 0.5 AS "Proba_0.0", -0.69314718056 AS "LogProba_0.0", 0.5 AS "Proba_1.0", -0.69314718056 AS "LogProba_1.0", 0 AS "Decision", 0.5 AS "DecisionProba" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 3 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 3 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 6 AS node_id, 'Feature_0' AS feature, 0.43481892347335815 AS threshold, 10 AS count, 1 AS depth, 0 AS parent_id, 0.25 AS "Proba_0.0", -1.38629436112 AS "LogProba_0.0", 0.75 AS "Proba_1.0", -0.287682072452 AS "LogProba_1.0", 1 AS "Decision", 0.75 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 2 AS depth, 6 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 2 AS depth, 6 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Proba_0.0" AS "Proba_0.0", "DT_node_data_2"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data_2"."Proba_1.0" AS "Proba_1.0", "DT_node_data_2"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data_2"."Decision" AS "Decision", "DT_node_data_2"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", "DT_Output_2"."Proba_0.0" AS "Proba_0", "DT_Output_2"."LogProba_0.0" AS "LogProba_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output_2"."Proba_1.0" AS "Proba_1", "DT_Output_2"."LogProba_1.0" AS "LogProba_1" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.7195467352867126) THEN CASE WHEN ("ADS"."Feature_0" <= -0.7293341159820557) THEN 2 ELSE 3 END ELSE CASE WHEN ("ADS"."Feature_9" <= -1.1209149360656738) THEN 5 ELSE 6 END END AS node_id_2 
FROM "BinaryClass_10" "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.7195467352867126 AS threshold, 19 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.72 AS "Proba_0.0", -0.328504066972 AS "LogProba_0.0", 0.28 AS "Proba_1.0", -1.27296567581 AS "LogProba_1.0", 0 AS "Decision", 0.72 AS "DecisionProba" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, -0.7293341159820557 AS threshold, 14 AS count, 1 AS depth, 0 AS parent_id, 0.85 AS "Proba_0.0", -0.162518929498 AS "LogProba_0.0", 0.15 AS "Proba_1.0", -1.89711998489 AS "LogProba_1.0", 0 AS "Decision", 0.85 AS "DecisionProba" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 2 AS depth, 1 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 2 AS depth, 1 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_9' AS feature, -1.1209149360656738 AS threshold, 5 AS count, 1 AS depth, 0 AS parent_id, 0.2 AS "Proba_0.0", -1.60943791243 AS "LogProba_0.0", 0.8 AS "Proba_1.0", -0.223143551314 AS "LogProba_1.0", 1 AS "Decision", 0.8 AS "DecisionProba" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 4 AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -BINARY_FLOAT_INFINITY AS "LogProba_1.0", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 2 AS depth, 4 AS parent_id, 0.0 AS "Proba_0.0", -BINARY_FLOAT_INFINITY AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Proba_0.0" AS "Proba_0.0", "DT_node_data_3"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data_3"."Proba_1.0" AS "Proba_1.0", "DT_node_data_3"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data_3"."Decision" AS "Decision", "DT_node_data_3"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"RF_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", "DT_Output_3"."Proba_0.0" AS "Proba_0", "DT_Output_3"."LogProba_0.0" AS "LogProba_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output_3"."Proba_1.0" AS "Proba_1", "DT_Output_3"."LogProba_1.0" AS "LogProba_1" 
FROM "DT_Output_3"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Score_0" AS "Score_0", ensemble_score_union."Proba_0" AS "Proba_0", ensemble_score_union."LogProba_0" AS "LogProba_0", ensemble_score_union."Score_1" AS "Score_1", ensemble_score_union."Proba_1" AS "Proba_1", ensemble_score_union."LogProba_1" AS "LogProba_1" 
FROM (SELECT "RF_Tree_0"."KEY" AS "KEY", "RF_Tree_0"."Score_0" AS "Score_0", "RF_Tree_0"."Proba_0" AS "Proba_0", "RF_Tree_0"."LogProba_0" AS "LogProba_0", "RF_Tree_0"."Score_1" AS "Score_1", "RF_Tree_0"."Proba_1" AS "Proba_1", "RF_Tree_0"."LogProba_1" AS "LogProba_1" 
FROM "RF_Tree_0" UNION ALL SELECT "RF_Tree_1"."KEY" AS "KEY", "RF_Tree_1"."Score_0" AS "Score_0", "RF_Tree_1"."Proba_0" AS "Proba_0", "RF_Tree_1"."LogProba_0" AS "LogProba_0", "RF_Tree_1"."Score_1" AS "Score_1", "RF_Tree_1"."Proba_1" AS "Proba_1", "RF_Tree_1"."LogProba_1" AS "LogProba_1" 
FROM "RF_Tree_1" UNION ALL SELECT "RF_Tree_2"."KEY" AS "KEY", "RF_Tree_2"."Score_0" AS "Score_0", "RF_Tree_2"."Proba_0" AS "Proba_0", "RF_Tree_2"."LogProba_0" AS "LogProba_0", "RF_Tree_2"."Score_1" AS "Score_1", "RF_Tree_2"."Proba_1" AS "Proba_1", "RF_Tree_2"."LogProba_1" AS "LogProba_1" 
FROM "RF_Tree_2" UNION ALL SELECT "RF_Tree_3"."KEY" AS "KEY", "RF_Tree_3"."Score_0" AS "Score_0", "RF_Tree_3"."Proba_0" AS "Proba_0", "RF_Tree_3"."LogProba_0" AS "LogProba_0", "RF_Tree_3"."Score_1" AS "Score_1", "RF_Tree_3"."Proba_1" AS "Proba_1", "RF_Tree_3"."LogProba_1" AS "LogProba_1" 
FROM "RF_Tree_3") ensemble_score_union), 
"RF_AVG_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Score_0" AS "Score_0", "T"."Proba_0" AS "Proba_0", "T"."LogProba_0" AS "LogProba_0", "T"."Score_1" AS "Score_1", "T"."Proba_1" AS "Proba_1", "T"."LogProba_1" AS "LogProba_1" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", avg("Score_Union_CTE"."Score_0") AS "Score_0", avg("Score_Union_CTE"."Proba_0") AS "Proba_0", avg("Score_Union_CTE"."LogProba_0") AS "LogProba_0", avg("Score_Union_CTE"."Score_1") AS "Score_1", avg("Score_Union_CTE"."Proba_1") AS "Proba_1", avg("Score_Union_CTE"."LogProba_1") AS "LogProba_1" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") "T"), 
orig_cte AS 
(SELECT "RF_AVG_Scores"."KEY" AS "KEY", "RF_AVG_Scores"."Score_0" AS "Score_0", "RF_AVG_Scores"."Score_1" AS "Score_1", "RF_AVG_Scores"."Proba_0" AS "Proba_0", "RF_AVG_Scores"."Proba_1" AS "Proba_1", "RF_AVG_Scores"."LogProba_0" AS "LogProba_0", "RF_AVG_Scores"."LogProba_1" AS "LogProba_1", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "RF_AVG_Scores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte