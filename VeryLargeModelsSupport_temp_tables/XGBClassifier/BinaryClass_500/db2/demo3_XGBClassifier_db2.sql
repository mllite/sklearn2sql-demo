-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBClassifier
-- Dataset : BinaryClass_500
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180416231435_n6xl9p_xgb_b0 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416231435_n6xl9p_xgb_b0 (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416231435_n6xl9p_xgb_b0 part 2/2. Populate

INSERT INTO tmp_20180416231435_n6xl9p_xgb_b0 WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_244" < -0.29480913281440735) THEN 1 ELSE 2 END AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, -0.10909091681241989 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 0.11818181723356247 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Score" AS "Score" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"XGB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Score" AS "Score_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.004343749023973942 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Score" AS "Score" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"XGB_Model_0_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Score" AS "Score_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.003930181264877319 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Score" AS "Score" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"XGB_Model_0_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Score" AS "Score_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.0035560179967433214 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Score" AS "Score" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"XGB_Model_0_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Score" AS "Score_0" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.003217478049919009 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Score" AS "Score" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"XGB_Model_0_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Score" AS "Score_0" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.0029111774638295174 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Score" AS "Score" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"XGB_Model_0_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Score" AS "Score_0" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.0026340510230511427 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Score" AS "Score" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"XGB_Model_0_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Score" AS "Score_0" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.002383300568908453 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Score" AS "Score" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"XGB_Model_0_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Score" AS "Score_0" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.002156427362933755 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Score" AS "Score" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"XGB_Model_0_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Score" AS "Score_0" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.00195114070083946 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Score" AS "Score" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"XGB_Model_0_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Score" AS "Score_0" 
FROM "DT_Output_9")
 SELECT "XGB_B0"."KEY", "XGB_B0"."Score_0" 
FROM (SELECT "XGB_esu_0"."KEY" AS "KEY", "XGB_esu_0"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_Model_0_0"."KEY" AS "KEY", "XGB_Model_0_0"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_0" UNION ALL SELECT "XGB_Model_0_1"."KEY" AS "KEY", "XGB_Model_0_1"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_1" UNION ALL SELECT "XGB_Model_0_2"."KEY" AS "KEY", "XGB_Model_0_2"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_2" UNION ALL SELECT "XGB_Model_0_3"."KEY" AS "KEY", "XGB_Model_0_3"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_3" UNION ALL SELECT "XGB_Model_0_4"."KEY" AS "KEY", "XGB_Model_0_4"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_4" UNION ALL SELECT "XGB_Model_0_5"."KEY" AS "KEY", "XGB_Model_0_5"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_5" UNION ALL SELECT "XGB_Model_0_6"."KEY" AS "KEY", "XGB_Model_0_6"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_6" UNION ALL SELECT "XGB_Model_0_7"."KEY" AS "KEY", "XGB_Model_0_7"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_7" UNION ALL SELECT "XGB_Model_0_8"."KEY" AS "KEY", "XGB_Model_0_8"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_8" UNION ALL SELECT "XGB_Model_0_9"."KEY" AS "KEY", "XGB_Model_0_9"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_9") AS "XGB_esu_0") AS "XGB_B0"

-- Code For temporary table tmp_20180416231435_gba39a_xgb_b1 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416231435_gba39a_xgb_b1 (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416231435_gba39a_xgb_b1 part 2/2. Populate

INSERT INTO tmp_20180416231435_gba39a_xgb_b1 WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.001765410415828228 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".node_id AS node_id, "DT_node_data_10".feature AS feature, "DT_node_data_10".threshold AS threshold, "DT_node_data_10".depth AS depth, "DT_node_data_10".parent_id AS parent_id, "DT_node_data_10"."Score" AS "Score" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".node_id), 
"XGB_Model_0_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Score" AS "Score_0" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.0015973467379808426 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".node_id AS node_id, "DT_node_data_11".feature AS feature, "DT_node_data_11".threshold AS threshold, "DT_node_data_11".depth AS depth, "DT_node_data_11".parent_id AS parent_id, "DT_node_data_11"."Score" AS "Score" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".node_id), 
"XGB_Model_0_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Score" AS "Score_0" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.0014452841132879257 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".node_id AS node_id, "DT_node_data_12".feature AS feature, "DT_node_data_12".threshold AS threshold, "DT_node_data_12".depth AS depth, "DT_node_data_12".parent_id AS parent_id, "DT_node_data_12"."Score" AS "Score" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".node_id), 
"XGB_Model_0_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Score" AS "Score_0" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.0013076885370537639 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".node_id AS node_id, "DT_node_data_13".feature AS feature, "DT_node_data_13".threshold AS threshold, "DT_node_data_13".depth AS depth, "DT_node_data_13".parent_id AS parent_id, "DT_node_data_13"."Score" AS "Score" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".node_id), 
"XGB_Model_0_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Score" AS "Score_0" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.0011831921292468905 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".node_id AS node_id, "DT_node_data_14".feature AS feature, "DT_node_data_14".threshold AS threshold, "DT_node_data_14".depth AS depth, "DT_node_data_14".parent_id AS parent_id, "DT_node_data_14"."Score" AS "Score" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".node_id), 
"XGB_Model_0_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Score" AS "Score_0" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", 0 AS node_id_2 
FROM "BINARYCLASS_500" AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS DOUBLE) AS feature, CAST("Values".threshold AS DOUBLE) AS threshold, CAST("Values".depth AS DOUBLE) AS depth, CAST("Values".parent_id AS DOUBLE) AS parent_id, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 0 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 0 AS depth, NULL AS parent_id, 0.0010705525055527687 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".node_id AS node_id, "DT_node_data_15".feature AS feature, "DT_node_data_15".threshold AS threshold, "DT_node_data_15".depth AS depth, "DT_node_data_15".parent_id AS parent_id, "DT_node_data_15"."Score" AS "Score" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".node_id), 
"XGB_Model_0_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Score" AS "Score_0" 
FROM "DT_Output_15")
 SELECT "XGB_B1"."KEY", "XGB_B1"."Score_0" 
FROM (SELECT "XGB_esu_1"."KEY" AS "KEY", "XGB_esu_1"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_Model_0_10"."KEY" AS "KEY", "XGB_Model_0_10"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_10" UNION ALL SELECT "XGB_Model_0_11"."KEY" AS "KEY", "XGB_Model_0_11"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_11" UNION ALL SELECT "XGB_Model_0_12"."KEY" AS "KEY", "XGB_Model_0_12"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_12" UNION ALL SELECT "XGB_Model_0_13"."KEY" AS "KEY", "XGB_Model_0_13"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_13" UNION ALL SELECT "XGB_Model_0_14"."KEY" AS "KEY", "XGB_Model_0_14"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_14" UNION ALL SELECT "XGB_Model_0_15"."KEY" AS "KEY", "XGB_Model_0_15"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_15") AS "XGB_esu_1") AS "XGB_B1"

-- Code For temporary table tmp_20180416231435_depp19_xgb_union part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416231435_depp19_xgb_union (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416231435_depp19_xgb_union part 2/2. Populate

INSERT INTO tmp_20180416231435_depp19_xgb_union SELECT "XGB_Union"."KEY", "XGB_Union"."Score_0" 
FROM (SELECT "XGB_EnsembleUnion"."KEY" AS "KEY", "XGB_EnsembleUnion"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Score_0" AS "Score_0" 
FROM tmp_20180416231435_n6xl9p_xgb_b0 AS "XGB_B0" UNION ALL SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Score_0" AS "Score_0" 
FROM tmp_20180416231435_gba39a_xgb_b1 AS "XGB_B1") AS "XGB_EnsembleUnion") AS "XGB_Union"

-- Code For temporary table tmp_20180416231435_zwo29d_xgb_sum part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416231435_zwo29d_xgb_sum (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416231435_zwo29d_xgb_sum part 2/2. Populate

INSERT INTO tmp_20180416231435_zwo29d_xgb_sum SELECT "XGB_sum"."KEY", "XGB_sum"."Score_0" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Score_0" AS DOUBLE) AS "Score_0" 
FROM (SELECT "XGB_Union"."KEY" AS "KEY", sum("XGB_Union"."Score_0") AS "Score_0" 
FROM tmp_20180416231435_depp19_xgb_union AS "XGB_Union" GROUP BY "XGB_Union"."KEY") AS "T") AS "XGB_sum"

-- Model deployment code

WITH orig_cte AS 
(SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Score_0" AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -"XGB_sum"."Score_0"), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -"XGB_sum"."Score_0"), 100.0))) AS "Proba_1", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM tmp_20180416231435_zwo29d_xgb_sum AS "XGB_sum"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte