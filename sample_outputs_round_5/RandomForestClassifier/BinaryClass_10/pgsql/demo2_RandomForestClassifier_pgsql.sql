-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_4" <= 0.1616186499595642) THEN CASE WHEN ("ADS"."Feature_7" <= 0.10684971511363983) THEN CASE WHEN ("ADS"."Feature_8" <= 0.8465149998664856) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= -0.3073265850543976) THEN CASE WHEN ("ADS"."Feature_8" <= -0.46962788701057434) THEN 7 ELSE 8 END ELSE 9 END END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.5373399257659912) THEN CASE WHEN ("ADS"."Feature_6" <= 0.21118058264255524) THEN 12 ELSE 13 END ELSE CASE WHEN ("ADS"."Feature_6" <= 0.35874655842781067) THEN CASE WHEN ("ADS"."Feature_5" <= 0.13706180453300476) THEN CASE WHEN ("ADS"."Feature_8" <= -0.7583794593811035) THEN 17 ELSE 18 END ELSE 19 END ELSE 20 END END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'Feature_4' AS feature, 0.1616186499595642 AS threshold, 40 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5074626865671642 AS "Proba_0.0", -0.678332094775 AS "LogProba_0.0", 0.4925373134328358 AS "Proba_1.0", -0.708185057924 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 1 AS node_id, 'Feature_7' AS feature, 0.10684971511363983 AS threshold, 25 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6363636363636364 AS "Proba_0.0", -0.451985123743 AS "LogProba_0.0", 0.36363636363636365 AS "Proba_1.0", -1.01160091168 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 2 AS node_id, 'Feature_8' AS feature, 0.8465149998664856 AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8928571428571429 AS "Proba_0.0", -0.113328685307 AS "LogProba_0.0", 0.10714285714285714 AS "Proba_1.0", -2.23359222151 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 5 AS node_id, 'Feature_5' AS feature, -0.3073265850543976 AS threshold, 10 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.1875 AS "Proba_0.0", -1.67397643357 AS "LogProba_0.0", 0.8125 AS "Proba_1.0", -0.207639364778 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 6 AS node_id, 'Feature_8' AS feature, -0.46962788701057434 AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.375 AS "Proba_0.0", -0.980829253012 AS "LogProba_0.0", 0.625 AS "Proba_1.0", -0.470003629246 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 10 AS node_id, 'Feature_4' AS feature, 0.5373399257659912 AS threshold, 15 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.2608695652173913 AS "Proba_0.0", -1.3437347467 AS "LogProba_0.0", 0.7391304347826086 AS "Proba_1.0", -0.302280871873 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 11 AS node_id, 'Feature_6' AS feature, 0.21118058264255524 AS threshold, 6 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.08333333333333333 AS "Proba_0.0", -2.48490664979 AS "LogProba_0.0", 0.9166666666666666 AS "Proba_1.0", -0.0870113769896 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 14 AS node_id, 'Feature_6' AS feature, 0.35874655842781067 AS threshold, 9 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.45454545454545453 AS "Proba_0.0", -0.788457360364 AS "LogProba_0.0", 0.5454545454545454 AS "Proba_1.0", -0.60613580357 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 15 AS node_id, 'Feature_5' AS feature, 0.13706180453300476 AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.14285714285714285 AS "Proba_0.0", -1.94591014906 AS "LogProba_0.0", 0.8571428571428571 AS "Proba_1.0", -0.154150679827 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 16 AS node_id, 'Feature_8' AS feature, -0.7583794593811035 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5 AS "Proba_0.0", -0.69314718056 AS "LogProba_0.0", 0.5 AS "Proba_1.0", -0.69314718056 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0.0" AS "Proba_0.0", "DT_node_data"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data"."Proba_1.0" AS "Proba_1.0", "DT_node_data"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data"."Decision" AS "Decision" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS join_key_0, CAST(NULL AS FLOAT) AS "Score_0_0", "DT_Output"."Proba_0.0" AS "Proba_0_0", "DT_Output"."LogProba_0.0" AS "LogProba_0_0", CAST(NULL AS FLOAT) AS "Score_0_1", "DT_Output"."Proba_1.0" AS "Proba_0_1", "DT_Output"."LogProba_1.0" AS "LogProba_0_1" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" <= 0.055278971791267395) THEN CASE WHEN ("ADS"."Feature_7" <= -0.8284999132156372) THEN 2 ELSE CASE WHEN ("ADS"."Feature_7" <= -0.7087687253952026) THEN 4 ELSE 5 END END ELSE CASE WHEN ("ADS"."Feature_9" <= -0.4391191005706787) THEN CASE WHEN ("ADS"."Feature_5" <= 0.6803390383720398) THEN 8 ELSE CASE WHEN ("ADS"."Feature_4" <= 0.1269417405128479) THEN 10 ELSE 11 END END ELSE 12 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'Feature_7' AS feature, 0.055278971791267395 AS threshold, 42 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6268656716417911 AS "Proba_0.0", -0.467023001108 AS "LogProba_0.0", 0.373134328358209 AS "Proba_1.0", -0.985816794523 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 1 AS node_id, 'Feature_7' AS feature, -0.8284999132156372 AS threshold, 22 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.975 AS "Proba_0.0", -0.0253178079843 AS "LogProba_0.0", 0.025 AS "Proba_1.0", -3.68887945411 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 3 AS node_id, 'Feature_7' AS feature, -0.7087687253952026 AS threshold, 5 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8571428571428571 AS "Proba_0.0", -0.154150679827 AS "LogProba_0.0", 0.14285714285714285 AS "Proba_1.0", -1.94591014906 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 6 AS node_id, 'Feature_9' AS feature, -0.4391191005706787 AS threshold, 20 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.1111111111111111 AS "Proba_0.0", -2.19722457734 AS "LogProba_0.0", 0.8888888888888888 AS "Proba_1.0", -0.117783035656 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 7 AS node_id, 'Feature_5' AS feature, 0.6803390383720398 AS threshold, 5 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.42857142857142855 AS "Proba_0.0", -0.847297860387 AS "LogProba_0.0", 0.5714285714285714 AS "Proba_1.0", -0.559615787935 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 9 AS node_id, 'Feature_4' AS feature, 0.1269417405128479 AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.75 AS "Proba_0.0", -0.287682072452 AS "LogProba_0.0", 0.25 AS "Proba_1.0", -1.38629436112 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Proba_0.0" AS "Proba_0.0", "DT_node_data_1"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data_1"."Proba_1.0" AS "Proba_1.0", "DT_node_data_1"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data_1"."Decision" AS "Decision" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS join_key_1, CAST(NULL AS FLOAT) AS "Score_1_0", "DT_Output_1"."Proba_0.0" AS "Proba_1_0", "DT_Output_1"."LogProba_0.0" AS "LogProba_1_0", CAST(NULL AS FLOAT) AS "Score_1_1", "DT_Output_1"."Proba_1.0" AS "Proba_1_1", "DT_Output_1"."LogProba_1.0" AS "LogProba_1_1" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= -0.4604518413543701) THEN CASE WHEN ("ADS"."Feature_7" <= -0.37760454416275024) THEN 2 ELSE CASE WHEN ("ADS"."Feature_3" <= 2.3651437759399414) THEN 4 ELSE 5 END END ELSE CASE WHEN ("ADS"."Feature_2" <= -1.2395598888397217) THEN 7 ELSE CASE WHEN ("ADS"."Feature_5" <= 1.222297191619873) THEN CASE WHEN ("ADS"."Feature_1" <= 1.0049585103988647) THEN CASE WHEN ("ADS"."Feature_9" <= -0.7645755410194397) THEN CASE WHEN ("ADS"."Feature_8" <= 0.34206709265708923) THEN 12 ELSE 13 END ELSE 14 END ELSE CASE WHEN ("ADS"."Feature_5" <= -0.47555431723594666) THEN 16 ELSE 17 END END ELSE 18 END END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'Feature_1' AS feature, -0.4604518413543701 AS threshold, 40 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6119402985074627 AS "Proba_0.0", -0.491120552687 AS "LogProba_0.0", 0.3880597014925373 AS "Proba_1.0", -0.946596081369 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 1 AS node_id, 'Feature_7' AS feature, -0.37760454416275024 AS threshold, 10 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.1875 AS "Proba_0.0", -1.67397643357 AS "LogProba_0.0", 0.8125 AS "Proba_1.0", -0.207639364778 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 3 AS node_id, 'Feature_3' AS feature, 2.3651437759399414 AS threshold, 8 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.07142857142857142 AS "Proba_0.0", -2.63905732962 AS "LogProba_0.0", 0.9285714285714286 AS "Proba_1.0", -0.0741079721537 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 6 AS node_id, 'Feature_2' AS feature, -1.2395598888397217 AS threshold, 30 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7450980392156863 AS "Proba_0.0", -0.294239472998 AS "LogProba_0.0", 0.2549019607843137 AS "Proba_1.0", -1.36687627526 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 8 AS node_id, 'Feature_5' AS feature, 1.222297191619873 AS threshold, 25 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8837209302325582 AS "Proba_0.0", -0.123613955967 AS "LogProba_0.0", 0.11627906976744186 AS "Proba_1.0", -2.15176220326 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 9 AS node_id, 'Feature_1' AS feature, 1.0049585103988647 AS threshold, 23 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.926829268292683 AS "Proba_0.0", -0.0759859069779 AS "LogProba_0.0", 0.07317073170731707 AS "Proba_1.0", -2.61495977804 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 10 AS node_id, 'Feature_9' AS feature, -0.7645755410194397 AS threshold, 18 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9696969696969697 AS "Proba_0.0", -0.0307716586668 AS "LogProba_0.0", 0.030303030303030304 AS "Proba_1.0", -3.49650756147 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 11 AS node_id, 'Feature_8' AS feature, 0.34206709265708923 AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6666666666666666 AS "Proba_0.0", -0.405465108108 AS "LogProba_0.0", 0.3333333333333333 AS "Proba_1.0", -1.09861228867 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 15 AS node_id, 'Feature_5' AS feature, -0.47555431723594666 AS threshold, 5 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.75 AS "Proba_0.0", -0.287682072452 AS "LogProba_0.0", 0.25 AS "Proba_1.0", -1.38629436112 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Proba_0.0" AS "Proba_0.0", "DT_node_data_2"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data_2"."Proba_1.0" AS "Proba_1.0", "DT_node_data_2"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data_2"."Decision" AS "Decision" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS join_key_2, CAST(NULL AS FLOAT) AS "Score_2_0", "DT_Output_2"."Proba_0.0" AS "Proba_2_0", "DT_Output_2"."LogProba_0.0" AS "LogProba_2_0", CAST(NULL AS FLOAT) AS "Score_2_1", "DT_Output_2"."Proba_1.0" AS "Proba_2_1", "DT_Output_2"."LogProba_1.0" AS "LogProba_2_1" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" <= -0.019452068954706192) THEN CASE WHEN ("ADS"."Feature_3" <= -1.4363237619400024) THEN 2 ELSE 3 END ELSE CASE WHEN ("ADS"."Feature_8" <= -1.53212571144104) THEN 5 ELSE CASE WHEN ("ADS"."Feature_3" <= 1.88520085811615) THEN 7 ELSE CASE WHEN ("ADS"."Feature_6" <= 0.4065714180469513) THEN 9 ELSE 10 END END END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'Feature_7' AS feature, -0.019452068954706192 AS threshold, 42 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.47761194029850745 AS "Proba_0.0", -0.738956716591 AS "LogProba_0.0", 0.5223880597014925 AS "Proba_1.0", -0.649344557902 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 1 AS node_id, 'Feature_3' AS feature, -1.4363237619400024 AS threshold, 20 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.967741935483871 AS "Proba_0.0", -0.032789822823 AS "LogProba_0.0", 0.03225806451612903 AS "Proba_1.0", -3.43398720449 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 4 AS node_id, 'Feature_8' AS feature, -1.53212571144104 AS threshold, 22 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.05555555555555555 AS "Proba_0.0", -2.8903717579 AS "LogProba_0.0", 0.9444444444444444 AS "Proba_1.0", -0.0571584138399 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 6 AS node_id, 'Feature_3' AS feature, 1.88520085811615 AS threshold, 21 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.02857142857142857 AS "Proba_0.0", -3.55534806149 AS "LogProba_0.0", 0.9714285714285714 AS "Proba_1.0", -0.0289875368733 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 8 AS node_id, 'Feature_6' AS feature, 0.4065714180469513 AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.2 AS "Proba_0.0", -1.60943791243 AS "LogProba_0.0", 0.8 AS "Proba_1.0", -0.223143551314 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Proba_0.0" AS "Proba_0.0", "DT_node_data_3"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data_3"."Proba_1.0" AS "Proba_1.0", "DT_node_data_3"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data_3"."Decision" AS "Decision" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"RF_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS join_key_3, CAST(NULL AS FLOAT) AS "Score_3_0", "DT_Output_3"."Proba_0.0" AS "Proba_3_0", "DT_Output_3"."LogProba_0.0" AS "LogProba_3_0", CAST(NULL AS FLOAT) AS "Score_3_1", "DT_Output_3"."Proba_1.0" AS "Proba_3_1", "DT_Output_3"."LogProba_1.0" AS "LogProba_3_1" 
FROM "DT_Output_3"), 
"RF_Join_CTE" AS 
(SELECT "RF_Tree_0".join_key_0 AS join_key_0, "RF_Tree_0"."Score_0_0" AS "Score_0_0", "RF_Tree_0"."Proba_0_0" AS "Proba_0_0", "RF_Tree_0"."LogProba_0_0" AS "LogProba_0_0", "RF_Tree_0"."Score_0_1" AS "Score_0_1", "RF_Tree_0"."Proba_0_1" AS "Proba_0_1", "RF_Tree_0"."LogProba_0_1" AS "LogProba_0_1", "RF_Tree_1".join_key_1 AS join_key_1, "RF_Tree_1"."Score_1_0" AS "Score_1_0", "RF_Tree_1"."Proba_1_0" AS "Proba_1_0", "RF_Tree_1"."LogProba_1_0" AS "LogProba_1_0", "RF_Tree_1"."Score_1_1" AS "Score_1_1", "RF_Tree_1"."Proba_1_1" AS "Proba_1_1", "RF_Tree_1"."LogProba_1_1" AS "LogProba_1_1", "RF_Tree_2".join_key_2 AS join_key_2, "RF_Tree_2"."Score_2_0" AS "Score_2_0", "RF_Tree_2"."Proba_2_0" AS "Proba_2_0", "RF_Tree_2"."LogProba_2_0" AS "LogProba_2_0", "RF_Tree_2"."Score_2_1" AS "Score_2_1", "RF_Tree_2"."Proba_2_1" AS "Proba_2_1", "RF_Tree_2"."LogProba_2_1" AS "LogProba_2_1", "RF_Tree_3".join_key_3 AS join_key_3, "RF_Tree_3"."Score_3_0" AS "Score_3_0", "RF_Tree_3"."Proba_3_0" AS "Proba_3_0", "RF_Tree_3"."LogProba_3_0" AS "LogProba_3_0", "RF_Tree_3"."Score_3_1" AS "Score_3_1", "RF_Tree_3"."Proba_3_1" AS "Proba_3_1", "RF_Tree_3"."LogProba_3_1" AS "LogProba_3_1" 
FROM "RF_Tree_0" LEFT OUTER JOIN "RF_Tree_1" ON "RF_Tree_0".join_key_0 = "RF_Tree_1".join_key_1 LEFT OUTER JOIN "RF_Tree_2" ON "RF_Tree_2".join_key_2 = "RF_Tree_1".join_key_1 LEFT OUTER JOIN "RF_Tree_3" ON "RF_Tree_3".join_key_3 = "RF_Tree_2".join_key_2), 
"RF_AVG_Scores" AS 
(SELECT "RF_Join_CTE".join_key_0 AS "KEY", "RF_Join_CTE"."Score_0_0" / 4 + "RF_Join_CTE"."Score_1_0" / 4 + "RF_Join_CTE"."Score_2_0" / 4 + "RF_Join_CTE"."Score_3_0" / 4 AS "Score_0", "RF_Join_CTE"."Proba_0_0" / 4 + "RF_Join_CTE"."Proba_1_0" / 4 + "RF_Join_CTE"."Proba_2_0" / 4 + "RF_Join_CTE"."Proba_3_0" / 4 AS "Proba_0", "RF_Join_CTE"."LogProba_0_0" / 4 + "RF_Join_CTE"."LogProba_1_0" / 4 + "RF_Join_CTE"."LogProba_2_0" / 4 + "RF_Join_CTE"."LogProba_3_0" / 4 AS "LogProba_0", "RF_Join_CTE"."Score_0_1" / 4 + "RF_Join_CTE"."Score_1_1" / 4 + "RF_Join_CTE"."Score_2_1" / 4 + "RF_Join_CTE"."Score_3_1" / 4 AS "Score_1", "RF_Join_CTE"."Proba_0_1" / 4 + "RF_Join_CTE"."Proba_1_1" / 4 + "RF_Join_CTE"."Proba_2_1" / 4 + "RF_Join_CTE"."Proba_3_1" / 4 AS "Proba_1", "RF_Join_CTE"."LogProba_0_1" / 4 + "RF_Join_CTE"."LogProba_1_1" / 4 + "RF_Join_CTE"."LogProba_2_1" / 4 + "RF_Join_CTE"."LogProba_3_1" / 4 AS "LogProba_1" 
FROM "RF_Join_CTE"), 
orig_cte AS 
(SELECT "RF_AVG_Scores"."KEY" AS "KEY", "RF_AVG_Scores"."Score_0" AS "Score_0", "RF_AVG_Scores"."Score_1" AS "Score_1", "RF_AVG_Scores"."Proba_0" AS "Proba_0", "RF_AVG_Scores"."Proba_1" AS "Proba_1", "RF_AVG_Scores"."LogProba_0" AS "LogProba_0", "RF_AVG_Scores"."LogProba_1" AS "LogProba_1", CAST(NULL AS FLOAT(53)) AS "Decision" 
FROM "RF_AVG_Scores"), 
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