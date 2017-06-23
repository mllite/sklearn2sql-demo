-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 3.41760984127 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 10.1031746032 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 11.0184920635 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0634920634921 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.559064285714 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 6.29800793651 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 66.1579365079 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 3.82041984127 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 10.5476190476 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 424.571428571 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 18.4182539683 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 351.427301587 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 12.3455555556 ELSE "ADS"."Feature_12" END AS impter_14 
FROM boston AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 3.41760984127) / 6.42585416131 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 10.1031746032) / 21.7677420303 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 11.0184920635) / 6.65396743656 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.0634920634921) / 0.243845896758 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.559064285714) / 0.122487734705 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 6.29800793651) / 0.688204340456 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 66.1579365079) / 28.5095927971 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 3.82041984127) / 1.98176364603 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 10.5476190476) / 8.9598816096 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 424.571428571) / 169.896627234 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 18.4182539683) / 2.05995071576 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 351.427301587) / 103.875515352 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - 12.3455555556) / 7.04758818991 AS scaler_14 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_14 < -0.38531699776649475) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 1.1958541870117188) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_14 < 0.43269333243370056) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_13 < -0.9151560068130493) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_14' AS feature, -0.38531699776649475 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_7' AS feature, 1.1958541870117188 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_14' AS feature, 0.43269333243370056 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 2.500666618347168 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 3.6930770874023438 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 1.9238890409469604 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'scaler_13' AS feature, -0.9151560068130493 AS threshold, 2 AS depth, 2 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 0.953076958656311 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 1.3862500190734863 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"XGB_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_14 < -0.3604857921600342) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_14 < -1.1139349937438965) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 < -0.9015049934387207) THEN 5 ELSE 6 END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_14' AS feature, -0.3604857921600342 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_14' AS feature, -1.1139349937438965 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_9' AS feature, -0.9015049934387207 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 3.452378511428833 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 2.2738921642303467 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 1.03086256980896 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 1.653590202331543 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"XGB_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_14 < -0.38531699776649475) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 1.2656009197235107) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 < 0.5705903172492981) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < 0.8906497955322266) THEN 7 ELSE 8 END ELSE 6 END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_14' AS feature, -0.38531699776649475 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_7' AS feature, 1.2656009197235107 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_2' AS feature, 0.5705903172492981 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 2.0419466495513916 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 3.1052956581115723 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'scaler_8' AS feature, 0.8906497955322266 AS threshold, 2 AS depth, 2 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.9183465838432312 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 1.6116602420806885 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 1.1034566164016724 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"XGB_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_14 < -0.38531699776649475) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_14 < -1.1139349937438965) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_14 < 0.43269333243370056) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_13 < -0.9151560068130493) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_14' AS feature, -0.38531699776649475 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_14' AS feature, -1.1139349937438965 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_14' AS feature, 0.43269333243370056 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 2.8755600452423096 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 1.8501564264297485 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 1.4295306205749512 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'scaler_13' AS feature, -0.9151560068130493 AS threshold, 2 AS depth, 2 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 0.6679551005363464 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 1.0232234001159668 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"XGB_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_14 < -0.3604857921600342) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 0.908149003982544) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 < 0.5705903172492981) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < 0.8906497955322266) THEN 7 ELSE 8 END ELSE 6 END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_14' AS feature, -0.3604857921600342 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_7' AS feature, 0.908149003982544 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_2' AS feature, 0.5705903172492981 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 1.6137768030166626 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 2.455995559692383 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'scaler_8' AS feature, 0.8906497955322266 AS threshold, 2 AS depth, 2 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.7429162263870239 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 1.314819097518921 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 0.9063624739646912 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"XGB_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_14 < -0.38886430859565735) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_14 < -1.1139349937438965) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 < -0.9015049934387207) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 < 0.8906497955322266) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_14' AS feature, -0.38886430859565735 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_14' AS feature, -1.1139349937438965 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_9' AS feature, -0.9015049934387207 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 2.3985297679901123 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 1.5044775009155273 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.6686767935752869 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'scaler_8' AS feature, 0.8906497955322266 AS threshold, 2 AS depth, 2 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 1.1859012842178345 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 0.791403591632843 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"XGB_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 0.7519453763961792) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_14 < 0.32911181449890137) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -0.4947773814201355) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_13 < -0.9151560068130493) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_7' AS feature, 0.7519453763961792 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_14' AS feature, 0.32911181449890137 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 1.9555314779281616 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'scaler_7' AS feature, -0.4947773814201355 AS threshold, 2 AS depth, 1 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'scaler_13' AS feature, -0.9151560068130493 AS threshold, 2 AS depth, 1 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.9112820029258728 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 1.2681305408477783 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 0.4676155149936676 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 0.7754403948783875 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"XGB_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_14 < -0.17957285046577454) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 1.2656009197235107) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 < 0.5705903172492981) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 < -0.9471461772918701) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_14' AS feature, -0.17957285046577454 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_7' AS feature, 1.2656009197235107 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_2' AS feature, 0.5705903172492981 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 1.1852285861968994 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 1.9807815551757812 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.8639375567436218 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'scaler_9' AS feature, -0.9471461772918701 AS threshold, 2 AS depth, 2 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 0.39345207810401917 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 0.6517236232757568 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"XGB_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_14 < -1.092651128768921) THEN 1 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_14 < 0.27235478162765503) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -0.4947773814201355) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 < -0.9015049934387207) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_14' AS feature, -1.092651128768921 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 1.7465994358062744 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_14' AS feature, 0.27235478162765503 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'scaler_7' AS feature, -0.4947773814201355 AS threshold, 2 AS depth, 2 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'scaler_9' AS feature, -0.9015049934387207 AS threshold, 2 AS depth, 2 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.7337396740913391 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 1.0650588274002075 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 0.44460177421569824 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 0.7048876285552979 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"XGB_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 0.908149003982544) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_14 < 0.18225304782390594) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < -0.014063151553273201) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 < 0.5705903172492981) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_7' AS feature, 0.908149003982544 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_14' AS feature, 0.18225304782390594 AS threshold, 1 AS depth, 0 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 1.5428248643875122 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'scaler_9' AS feature, -0.014063151553273201 AS threshold, 2 AS depth, 1 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'scaler_2' AS feature, 0.5705903172492981 AS threshold, 2 AS depth, 1 AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 1.0716280937194824 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.8073436617851257 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 0.6495704054832458 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 0.39683306217193604 AS "Estimator") AS "Values"), 
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