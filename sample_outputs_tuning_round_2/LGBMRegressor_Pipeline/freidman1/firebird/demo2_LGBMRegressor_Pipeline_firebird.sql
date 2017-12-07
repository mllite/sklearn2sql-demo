-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.562984648481 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.456064424234 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.471138174815 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.533968020095 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.478093626237 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.568284922417 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.479143747143 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.459415247722 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.490110699681 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.537880693371 ELSE "ADS"."Feature_9" END AS impter_11 
FROM freidman1 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.562984648481) / 0.25837146834 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 0.456064424234) / 0.287872173071 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.471138174815) / 0.310921679155 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.533968020095) / 0.28261998674 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - 0.478093626237) / 0.286140491318 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - 0.568284922417) / 0.297674081065 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.479143747143) / 0.273531497143 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.459415247722) / 0.28721149347 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - 0.490110699681) / 0.279048671732 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - 0.537880693371) / 0.295819229654 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.03575253068147679) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.5856121580016487) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.2276264197266406) THEN 8 ELSE 9 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.8790078466048634) THEN 6 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.7777491612978253) THEN 14 ELSE 15 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 15.417100088596344 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 15.300756273269654 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 15.012868097850255 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 15.23114480137825 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 15.501514212290445 AS "Estimator" FROM rdb$database UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 15.649840203128182 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"LGBM_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.03575253068147679) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.5856121580016487) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.2276264197266406) THEN 8 ELSE 9 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.8790078466048634) THEN 6 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.7777491612978253) THEN 14 ELSE 15 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.06016990423202515 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -0.05035671949386597 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.32385047929627553 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.11648761957883834 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.1403633223639594 AS "Estimator" FROM rdb$database UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.28127301576045843 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"LGBM_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.03575253068147679) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.5856121580016487) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.2276264197266406) THEN 8 ELSE 9 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.8790078466048634) THEN 6 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.7777491612978253) THEN 14 ELSE 15 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.05716140985488891 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -0.047838882654905324 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.3076579600572586 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.11066323687632879 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.13334515525235066 AS "Estimator" FROM rdb$database UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.26720936848567084 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"LGBM_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.03575253068147679) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.5856121580016487) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.2276264197266406) THEN 8 ELSE 9 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.8790078466048634) THEN 6 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.7777491612978253) THEN 14 ELSE 15 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.05430333703756333 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -0.04544694066047669 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.2922750596489225 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.10513007427255312 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.12667789889706502 AS "Estimator" FROM rdb$database UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.253848899098543 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"LGBM_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.03575253068147679) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.33838332868101084) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.11992681060814461) THEN 8 ELSE 9 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.8790078466048634) THEN 6 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.7777491612978253) THEN 14 ELSE 15 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.0143031509327037 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -0.043174588084220894 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.28868574074336456 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.09346579773859542 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.12034400635295442 AS "Estimator" FROM rdb$database UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.24115646137641025 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"LGBM_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.03575253068147679) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.7714441240493635) THEN 4 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.7175518802310757) THEN 10 ELSE 11 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.8790078466048634) THEN 6 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.7777491612978253) THEN 14 ELSE 15 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.28849983870983126 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -0.041015862673521045 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, -0.13394071349972173 AS "Estimator" FROM rdb$database UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 0.08038658939301965 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.11432680653201206 AS "Estimator" FROM rdb$database UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.22909863522419563 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"LGBM_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.03575253068147679) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.5856121580016487) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.2276264197266406) THEN 8 ELSE 9 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.8790078466048634) THEN 6 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.7777491612978253) THEN 14 ELSE 15 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.055127934515476235 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -0.03896506592631341 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.2534095708812986 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.09321674436330796 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.10861046579149032 AS "Estimator" FROM rdb$database UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.21764369882070103 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"LGBM_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.03575253068147679) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.33838332868101084) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.11992681060814461) THEN 8 ELSE 9 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.810692728799461) THEN 6 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 9.999999682655225e-21) THEN 14 ELSE 15 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.018262131086417607 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -0.04266765296459198 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.2518055417707988 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.08230571177872743 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.06261382309290078 AS "Estimator" FROM rdb$database UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.210425960769256 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"LGBM_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.03575253068147679) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.5856121580016487) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.3827074784099807) THEN 8 ELSE 9 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.810692728799461) THEN 6 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 9.999999682655225e-21) THEN 14 ELSE 15 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.05145843505859376 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -0.04053426742553711 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.24035342112183564 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -0.09391560269629255 AS "Estimator" FROM rdb$database UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.0594831340588056 AS "Estimator" FROM rdb$database UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 7 AS parent_id, 0.1999046640056703 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"LGBM_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.7175518802310757) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 9.999999682655225e-21) THEN 4 ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.9460362598746048) THEN 6 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 9.999999682655225e-21) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.09381271097287662) THEN 28 ELSE 29 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.16424548751171367) THEN 30 ELSE 31 END END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.2259070372039621 AS "Estimator" FROM rdb$database UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, -0.07649222451906938 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -0.14494631182063708 AS "Estimator" FROM rdb$database UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS depth, 14 AS parent_id, -0.04750831335783003 AS "Estimator" FROM rdb$database UNION ALL SELECT 29 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS depth, 14 AS parent_id, 0.09144460754469037 AS "Estimator" FROM rdb$database UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS depth, 15 AS parent_id, 0.14127344574247086 AS "Estimator" FROM rdb$database UNION ALL SELECT 31 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS depth, 15 AS parent_id, 0.24150859984484582 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"LGBM_Tree_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Tree_0"."KEY" AS "KEY", "LGBM_Tree_0"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_0" UNION ALL SELECT "LGBM_Tree_1"."KEY" AS "KEY", "LGBM_Tree_1"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_1" UNION ALL SELECT "LGBM_Tree_2"."KEY" AS "KEY", "LGBM_Tree_2"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_2" UNION ALL SELECT "LGBM_Tree_3"."KEY" AS "KEY", "LGBM_Tree_3"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_3" UNION ALL SELECT "LGBM_Tree_4"."KEY" AS "KEY", "LGBM_Tree_4"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_4" UNION ALL SELECT "LGBM_Tree_5"."KEY" AS "KEY", "LGBM_Tree_5"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_5" UNION ALL SELECT "LGBM_Tree_6"."KEY" AS "KEY", "LGBM_Tree_6"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_6" UNION ALL SELECT "LGBM_Tree_7"."KEY" AS "KEY", "LGBM_Tree_7"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_7" UNION ALL SELECT "LGBM_Tree_8"."KEY" AS "KEY", "LGBM_Tree_8"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_8" UNION ALL SELECT "LGBM_Tree_9"."KEY" AS "KEY", "LGBM_Tree_9"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_9") AS ensemble_score_union), 
"LGBM_Sum_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", sum("Score_Union_CTE"."Estimator") AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T")
 SELECT "LGBM_Sum_Scores"."KEY" AS "KEY", "LGBM_Sum_Scores"."Estimator" AS "Estimator" 
FROM "LGBM_Sum_Scores"