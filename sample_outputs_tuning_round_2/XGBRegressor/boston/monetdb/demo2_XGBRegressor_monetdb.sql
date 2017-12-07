-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" < 9.725000381469727) THEN CASE WHEN ("ADS"."Feature_5" < 7.140999794006348) THEN CASE WHEN ("ADS"."Feature_5" < 6.541999816894531) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_12" < 15) THEN 5 ELSE CASE WHEN ("ADS"."Feature_4" < 0.6614999771118164) THEN 9 ELSE 10 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 3.9890244007110596 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 2.002768039703369 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 2.2746479511260986 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 2.7942373752593994 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 1.658596396446228 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 1.1890000104904175 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"XGB_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" < 6.824999809265137) THEN CASE WHEN ("ADS"."Feature_12" < 14.805000305175781) THEN CASE WHEN ("ADS"."Feature_12" < 9.71500015258789) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_0" < 5.781899929046631) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_5" < 7.437000274658203) THEN 5 ELSE 6 END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 2.617729902267456 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 3.904390335083008 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 2.193279504776001 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 1.7779951095581055 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 1.4815603494644165 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 1.0168761014938354 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"XGB_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" < 6.824999809265137) THEN CASE WHEN ("ADS"."Feature_12" < 14.780000686645508) THEN CASE WHEN ("ADS"."Feature_12" < 9.71500015258789) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_7" < 2.003700017929077) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_5" < 7.437000274658203) THEN 5 ELSE 6 END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 2.3615264892578125 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 3.528411865234375 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 1.9760208129882812 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 1.6032642126083374 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 0.9259337782859802 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 1.355223536491394 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"XGB_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" < 7.864999771118164) THEN CASE WHEN ("ADS"."Feature_5" < 7.111499786376953) THEN CASE WHEN ("ADS"."Feature_5" < 6.541999816894531) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_12" < 16.084999084472656) THEN 5 ELSE CASE WHEN ("ADS"."Feature_4" < 0.6030000448226929) THEN 9 ELSE 10 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 2.9591987133026123 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 1.5128496885299683 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 1.6322977542877197 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 2.125485420227051 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 1.2673325538635254 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.8523406982421875 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"XGB_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" < 5.154999732971191) THEN CASE WHEN ("ADS"."Feature_5" < 7.406000137329102) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_12" < 14.795000076293945) THEN CASE WHEN ("ADS"."Feature_5" < 6.541999816894531) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_0" < 5.781899929046631) THEN 9 ELSE 10 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 2.078160285949707 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 2.9763565063476562 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 1.378053903579712 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 1.828680396080017 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 1.1055082082748413 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.7355231642723083 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"XGB_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" < 9.725000381469727) THEN CASE WHEN ("ADS"."Feature_5" < 7.140999794006348) THEN CASE WHEN ("ADS"."Feature_5" < 6.593999862670898) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_12" < 19.850000381469727) THEN CASE WHEN ("ADS"."Feature_11" < 134.9499969482422) THEN 9 ELSE 10 END ELSE CASE WHEN ("ADS"."Feature_4" < 0.6030000448226929) THEN 11 ELSE 12 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 2.432462453842163 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 1.3629682064056396 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 1.7233394384384155 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 0.6685470938682556 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 1.1418527364730835 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.9621629118919373 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.5348416566848755 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"XGB_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" < 5.154999732971191) THEN CASE WHEN ("ADS"."Feature_5" < 7.406000137329102) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_12" < 14.795000076293945) THEN CASE WHEN ("ADS"."Feature_10" < 13.850000381469727) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_10" < 19.650001525878906) THEN 9 ELSE 10 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 1.701004981994629 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 2.4600603580474854 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 1.866808533668518 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 1.170946717262268 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.9972090721130371 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.6476977467536926 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"XGB_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" < 7.684999942779541) THEN CASE WHEN ("ADS"."Feature_5" < 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_5" < 6.531000137329102) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_4" < 0.6694999933242798) THEN CASE WHEN ("ADS"."Feature_4" < 0.6274999976158142) THEN 9 ELSE 10 END ELSE CASE WHEN ("ADS"."Feature_0" < 9.870019912719727) THEN 11 ELSE 12 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 2.1833291053771973 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 1.1028307676315308 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 1.468856692314148 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 0.9248348474502563 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 1.5930813550949097 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.7281293272972107 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.2936658561229706 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"XGB_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" < 9.725000381469727) THEN CASE WHEN ("ADS"."Feature_5" < 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_6" < 89.44999694824219) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_7" < 2.064300060272217) THEN CASE WHEN ("ADS"."Feature_0" < 19.210050582885742) THEN 9 ELSE 10 END ELSE CASE WHEN ("ADS"."Feature_11" < 366.67498779296875) THEN 11 ELSE 12 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 1.9730825424194336 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 1.0917633771896362 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 1.8225401639938354 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 0.562129020690918 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 0.20757992565631866 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.6087807416915894 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.869446873664856 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"XGB_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" < 5.154999732971191) THEN CASE WHEN ("ADS"."Feature_5" < 7.406000137329102) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_12" < 14.125) THEN CASE WHEN ("ADS"."Feature_5" < 7.07450008392334) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_10" < 19.450000762939453) THEN 9 ELSE 10 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 1.285546064376831 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 1.8284882307052612 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 0.8580016493797302 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 1.2938343286514282 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.7649194598197937 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.46019265055656433 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"XGB_Tree_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Tree_0"."KEY" AS "KEY", "XGB_Tree_0"."Estimator" AS "Estimator" 
FROM "XGB_Tree_0" UNION ALL SELECT "XGB_Tree_1"."KEY" AS "KEY", "XGB_Tree_1"."Estimator" AS "Estimator" 
FROM "XGB_Tree_1" UNION ALL SELECT "XGB_Tree_2"."KEY" AS "KEY", "XGB_Tree_2"."Estimator" AS "Estimator" 
FROM "XGB_Tree_2" UNION ALL SELECT "XGB_Tree_3"."KEY" AS "KEY", "XGB_Tree_3"."Estimator" AS "Estimator" 
FROM "XGB_Tree_3" UNION ALL SELECT "XGB_Tree_4"."KEY" AS "KEY", "XGB_Tree_4"."Estimator" AS "Estimator" 
FROM "XGB_Tree_4" UNION ALL SELECT "XGB_Tree_5"."KEY" AS "KEY", "XGB_Tree_5"."Estimator" AS "Estimator" 
FROM "XGB_Tree_5" UNION ALL SELECT "XGB_Tree_6"."KEY" AS "KEY", "XGB_Tree_6"."Estimator" AS "Estimator" 
FROM "XGB_Tree_6" UNION ALL SELECT "XGB_Tree_7"."KEY" AS "KEY", "XGB_Tree_7"."Estimator" AS "Estimator" 
FROM "XGB_Tree_7" UNION ALL SELECT "XGB_Tree_8"."KEY" AS "KEY", "XGB_Tree_8"."Estimator" AS "Estimator" 
FROM "XGB_Tree_8" UNION ALL SELECT "XGB_Tree_9"."KEY" AS "KEY", "XGB_Tree_9"."Estimator" AS "Estimator" 
FROM "XGB_Tree_9") AS ensemble_score_union), 
"XGB_Sum_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", sum("Score_Union_CTE"."Estimator") AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T")
 SELECT "XGB_Sum_Scores"."KEY" AS "KEY", "XGB_Sum_Scores"."Estimator" + 0.5 AS "Estimator" 
FROM "XGB_Sum_Scores"