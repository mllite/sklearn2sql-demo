-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_30" <= -0.01381122786551714) THEN CASE WHEN ("ADS"."Feature_20" <= 1.564838171005249) THEN CASE WHEN ("ADS"."Feature_59" <= -1.0561192035675049) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_74" <= -0.987808346748352) THEN 7 ELSE CASE WHEN ("ADS"."Feature_79" <= -0.48620474338531494) THEN CASE WHEN ("ADS"."Feature_56" <= 1.3584620952606201) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_57" <= 0.5383906364440918) THEN CASE WHEN ("ADS"."Feature_98" <= 0.9950798749923706) THEN CASE WHEN ("ADS"."Feature_94" <= 0.8793704509735107) THEN 15 ELSE 16 END ELSE 17 END ELSE 18 END END END END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'Feature_30' AS feature, -0.01381122786551714 AS threshold, 42 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.47761194029850745 AS "Proba_0.0", -0.738956716591 AS "LogProba_0.0", 0.5223880597014925 AS "Proba_1.0", -0.649344557902 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 1 AS node_id, 'Feature_20' AS feature, 1.564838171005249 AS threshold, 12 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.09090909090909091 AS "Proba_0.0", -2.3978952728 AS "LogProba_0.0", 0.9090909090909091 AS "Proba_1.0", -0.0953101798043 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 2 AS node_id, 'Feature_59' AS feature, -1.0561192035675049 AS threshold, 11 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.047619047619047616 AS "Proba_0.0", -3.04452243772 AS "LogProba_0.0", 0.9523809523809523 AS "Proba_1.0", -0.0487901641694 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 6 AS node_id, 'Feature_74' AS feature, -0.987808346748352 AS threshold, 30 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6666666666666666 AS "Proba_0.0", -0.405465108108 AS "LogProba_0.0", 0.3333333333333333 AS "Proba_1.0", -1.09861228867 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 8 AS node_id, 'Feature_79' AS feature, -0.48620474338531494 AS threshold, 20 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.53125 AS "Proba_0.0", -0.632522558744 AS "LogProba_0.0", 0.46875 AS "Proba_1.0", -0.757685701698 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 9 AS node_id, 'Feature_56' AS feature, 1.3584620952606201 AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9285714285714286 AS "Proba_0.0", -0.0741079721537 AS "LogProba_0.0", 0.07142857142857142 AS "Proba_1.0", -2.63905732962 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 12 AS node_id, 'Feature_57' AS feature, 0.5383906364440918 AS threshold, 12 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.2222222222222222 AS "Proba_0.0", -1.50407739678 AS "LogProba_0.0", 0.7777777777777778 AS "Proba_1.0", -0.251314428281 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 13 AS node_id, 'Feature_98' AS feature, 0.9950798749923706 AS threshold, 10 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.125 AS "Proba_0.0", -2.07944154168 AS "LogProba_0.0", 0.875 AS "Proba_1.0", -0.133531392625 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 14 AS node_id, 'Feature_94' AS feature, 0.8793704509735107 AS threshold, 9 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.06666666666666667 AS "Proba_0.0", -2.7080502011 AS "LogProba_0.0", 0.9333333333333333 AS "Proba_1.0", -0.068992871487 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0.0" AS "Proba_0.0", "DT_node_data"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data"."Proba_1.0" AS "Proba_1.0", "DT_node_data"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data"."Decision" AS "Decision" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS join_key_0, CAST(NULL AS FLOAT) AS "Score_0_0", "DT_Output"."Proba_0.0" AS "Proba_0_0", "DT_Output"."LogProba_0.0" AS "LogProba_0_0", CAST(NULL AS FLOAT) AS "Score_0_1", "DT_Output"."Proba_1.0" AS "Proba_0_1", "DT_Output"."LogProba_1.0" AS "LogProba_0_1" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= -0.2218157947063446) THEN CASE WHEN ("ADS"."Feature_96" <= -0.3968179523944855) THEN 2 ELSE 3 END ELSE CASE WHEN ("ADS"."Feature_15" <= 0.15323543548583984) THEN CASE WHEN ("ADS"."Feature_49" <= -0.21669724583625793) THEN CASE WHEN ("ADS"."Feature_7" <= -1.9485085010528564) THEN 7 ELSE CASE WHEN ("ADS"."Feature_4" <= -2.18788480758667) THEN 9 ELSE 10 END END ELSE 11 END ELSE 12 END END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'Feature_2' AS feature, -0.2218157947063446 AS threshold, 39 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6268656716417911 AS "Proba_0.0", -0.467023001108 AS "LogProba_0.0", 0.373134328358209 AS "Proba_1.0", -0.985816794523 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 1 AS node_id, 'Feature_96' AS feature, -0.3968179523944855 AS threshold, 12 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.17647058823529413 AS "Proba_0.0", -1.73460105539 AS "LogProba_0.0", 0.8235294117647058 AS "Proba_1.0", -0.194156014441 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 4 AS node_id, 'Feature_15' AS feature, 0.15323543548583984 AS threshold, 27 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.78 AS "Proba_0.0", -0.248461359298 AS "LogProba_0.0", 0.22 AS "Proba_1.0", -1.51412773263 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 5 AS node_id, 'Feature_49' AS feature, -0.21669724583625793 AS threshold, 14 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.42105263157894735 AS "Proba_0.0", -0.864997437487 AS "LogProba_0.0", 0.5789473684210527 AS "Proba_1.0", -0.546543706368 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 6 AS node_id, 'Feature_7' AS feature, -1.9485085010528564 AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.15384615384615385 AS "Proba_0.0", -1.8718021769 AS "LogProba_0.0", 0.8461538461538461 AS "Proba_1.0", -0.167054084663 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 8 AS node_id, 'Feature_4' AS feature, -2.18788480758667 AS threshold, 9 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.08333333333333333 AS "Proba_0.0", -2.48490664979 AS "LogProba_0.0", 0.9166666666666666 AS "Proba_1.0", -0.0870113769896 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Proba_0.0" AS "Proba_0.0", "DT_node_data_1"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data_1"."Proba_1.0" AS "Proba_1.0", "DT_node_data_1"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data_1"."Decision" AS "Decision" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS join_key_1, CAST(NULL AS FLOAT) AS "Score_1_0", "DT_Output_1"."Proba_0.0" AS "Proba_1_0", "DT_Output_1"."LogProba_0.0" AS "LogProba_1_0", CAST(NULL AS FLOAT) AS "Score_1_1", "DT_Output_1"."Proba_1.0" AS "Proba_1_1", "DT_Output_1"."LogProba_1.0" AS "LogProba_1_1" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_28" <= 0.9153655767440796) THEN CASE WHEN ("ADS"."Feature_5" <= 0.6380378007888794) THEN CASE WHEN ("ADS"."Feature_44" <= 0.9987636804580688) THEN CASE WHEN ("ADS"."Feature_9" <= 1.2536569833755493) THEN CASE WHEN ("ADS"."Feature_74" <= 0.9033941626548767) THEN 5 ELSE CASE WHEN ("ADS"."Feature_84" <= 0.4725738763809204) THEN 7 ELSE 8 END END ELSE 9 END ELSE 10 END ELSE CASE WHEN ("ADS"."Feature_42" <= -0.5567705035209656) THEN 12 ELSE 13 END END ELSE 14 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'Feature_28' AS feature, 0.9153655767440796 AS threshold, 40 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5373134328358209 AS "Proba_0.0", -0.621173680935 AS "LogProba_0.0", 0.4626865671641791 AS "Proba_1.0", -0.770705414906 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 1 AS node_id, 'Feature_5' AS feature, 0.6380378007888794 AS threshold, 32 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.631578947368421 AS "Proba_0.0", -0.459532329378 AS "LogProba_0.0", 0.3684210526315789 AS "Proba_1.0", -0.998528830111 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 2 AS node_id, 'Feature_44' AS feature, 0.9987636804580688 AS threshold, 26 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7608695652173914 AS "Proba_0.0", -0.273293335 AS "LogProba_0.0", 0.2391304347826087 AS "Proba_1.0", -1.43074612369 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 3 AS node_id, 'Feature_9' AS feature, 1.2536569833755493 AS threshold, 21 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9210526315789473 AS "Proba_0.0", -0.082238098237 AS "LogProba_0.0", 0.07894736842105263 AS "Proba_1.0", -2.53897387106 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 4 AS node_id, 'Feature_74' AS feature, 0.9033941626548767 AS threshold, 20 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9459459459459459 AS "Proba_0.0", -0.0555698511548 AS "LogProba_0.0", 0.05405405405405406 AS "Proba_1.0", -2.91777073208 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 6 AS node_id, 'Feature_84' AS feature, 0.4725738763809204 AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5 AS "Proba_0.0", -0.69314718056 AS "LogProba_0.0", 0.5 AS "Proba_1.0", -0.69314718056 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 11 AS node_id, 'Feature_42' AS feature, -0.5567705035209656 AS threshold, 6 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.09090909090909091 AS "Proba_0.0", -2.3978952728 AS "LogProba_0.0", 0.9090909090909091 AS "Proba_1.0", -0.0953101798043 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Proba_0.0" AS "Proba_0.0", "DT_node_data_2"."LogProba_0.0" AS "LogProba_0.0", "DT_node_data_2"."Proba_1.0" AS "Proba_1.0", "DT_node_data_2"."LogProba_1.0" AS "LogProba_1.0", "DT_node_data_2"."Decision" AS "Decision" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS join_key_2, CAST(NULL AS FLOAT) AS "Score_2_0", "DT_Output_2"."Proba_0.0" AS "Proba_2_0", "DT_Output_2"."LogProba_0.0" AS "LogProba_2_0", CAST(NULL AS FLOAT) AS "Score_2_1", "DT_Output_2"."Proba_1.0" AS "Proba_2_1", "DT_Output_2"."LogProba_1.0" AS "LogProba_2_1" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_96" <= -0.36343467235565186) THEN 1 ELSE CASE WHEN ("ADS"."Feature_89" <= -1.8135708570480347) THEN 3 ELSE CASE WHEN ("ADS"."Feature_59" <= 1.29302978515625) THEN CASE WHEN ("ADS"."Feature_69" <= 1.743212103843689) THEN 6 ELSE CASE WHEN ("ADS"."Feature_89" <= 0.8831477165222168) THEN 8 ELSE 9 END END ELSE 10 END END END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0.0" AS "Proba_0.0", "Values"."LogProba_0.0" AS "LogProba_0.0", "Values"."Proba_1.0" AS "Proba_1.0", "Values"."LogProba_1.0" AS "LogProba_1.0", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'Feature_96' AS feature, -0.36343467235565186 AS threshold, 39 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5223880597014925 AS "Proba_0.0", -0.649344557902 AS "LogProba_0.0", 0.47761194029850745 AS "Proba_1.0", -0.738956716591 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 2 AS node_id, 'Feature_89' AS feature, -1.8135708570480347 AS threshold, 22 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.1111111111111111 AS "Proba_0.0", -2.19722457734 AS "LogProba_0.0", 0.8888888888888888 AS "Proba_1.0", -0.117783035656 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 4 AS node_id, 'Feature_59' AS feature, 1.29302978515625 AS threshold, 21 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.058823529411764705 AS "Proba_0.0", -2.83321334406 AS "LogProba_0.0", 0.9411764705882353 AS "Proba_1.0", -0.0606246218164 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 5 AS node_id, 'Feature_69' AS feature, 1.743212103843689 AS threshold, 20 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.030303030303030304 AS "Proba_0.0", -3.49650756147 AS "LogProba_0.0", 0.9696969696969697 AS "Proba_1.0", -0.0307716586668 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 7 AS node_id, 'Feature_89' AS feature, 0.8831477165222168 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5 AS "Proba_0.0", -0.69314718056 AS "LogProba_0.0", 0.5 AS "Proba_1.0", -0.69314718056 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0.0", -1.79769313486231e+308 AS "LogProba_0.0", 1.0 AS "Proba_1.0", 0.0 AS "LogProba_1.0", 1 AS "Decision" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0.0", 0.0 AS "LogProba_0.0", 0.0 AS "Proba_1.0", -1.79769313486231e+308 AS "LogProba_1.0", 0 AS "Decision") AS "Values"), 
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