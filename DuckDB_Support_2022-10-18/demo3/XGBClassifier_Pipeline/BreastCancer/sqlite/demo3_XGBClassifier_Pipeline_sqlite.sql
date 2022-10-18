-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBClassifier_Pipeline
-- Dataset : BreastCancer
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018185127_VCYC4TH_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185127_VCYC4TH_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 FLOAT, 
	imputer_output_3 FLOAT, 
	imputer_output_4 FLOAT, 
	imputer_output_5 FLOAT, 
	imputer_output_6 FLOAT, 
	imputer_output_7 FLOAT, 
	imputer_output_8 FLOAT, 
	imputer_output_9 FLOAT, 
	imputer_output_10 FLOAT, 
	imputer_output_11 FLOAT, 
	imputer_output_12 FLOAT, 
	imputer_output_13 FLOAT, 
	imputer_output_14 FLOAT, 
	imputer_output_15 FLOAT, 
	imputer_output_16 FLOAT, 
	imputer_output_17 FLOAT, 
	imputer_output_18 FLOAT, 
	imputer_output_19 FLOAT, 
	imputer_output_20 FLOAT, 
	imputer_output_21 FLOAT, 
	imputer_output_22 FLOAT, 
	imputer_output_23 FLOAT, 
	imputer_output_24 FLOAT, 
	imputer_output_25 FLOAT, 
	imputer_output_26 FLOAT, 
	imputer_output_27 FLOAT, 
	imputer_output_28 FLOAT, 
	imputer_output_29 FLOAT, 
	imputer_output_30 FLOAT, 
	imputer_output_31 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018185127_VCYC4TH_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018185127_VCYC4TH_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9, imputer_output_10, imputer_output_11, imputer_output_12, imputer_output_13, imputer_output_14, imputer_output_15, imputer_output_16, imputer_output_17, imputer_output_18, imputer_output_19, imputer_output_20, imputer_output_21, imputer_output_22, imputer_output_23, imputer_output_24, imputer_output_25, imputer_output_26, imputer_output_27, imputer_output_28, imputer_output_29, imputer_output_30, imputer_output_31) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9, "T".imputer_output_10, "T".imputer_output_11, "T".imputer_output_12, "T".imputer_output_13, "T".imputer_output_14, "T".imputer_output_15, "T".imputer_output_16, "T".imputer_output_17, "T".imputer_output_18, "T".imputer_output_19, "T".imputer_output_20, "T".imputer_output_21, "T".imputer_output_22, "T".imputer_output_23, "T".imputer_output_24, "T".imputer_output_25, "T".imputer_output_26, "T".imputer_output_27, "T".imputer_output_28, "T".imputer_output_29, "T".imputer_output_30, "T".imputer_output_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9, "ADS_imp_1_OUT".imputer_output_10 AS imputer_output_10, "ADS_imp_1_OUT".imputer_output_11 AS imputer_output_11, "ADS_imp_1_OUT".imputer_output_12 AS imputer_output_12, "ADS_imp_1_OUT".imputer_output_13 AS imputer_output_13, "ADS_imp_1_OUT".imputer_output_14 AS imputer_output_14, "ADS_imp_1_OUT".imputer_output_15 AS imputer_output_15, "ADS_imp_1_OUT".imputer_output_16 AS imputer_output_16, "ADS_imp_1_OUT".imputer_output_17 AS imputer_output_17, "ADS_imp_1_OUT".imputer_output_18 AS imputer_output_18, "ADS_imp_1_OUT".imputer_output_19 AS imputer_output_19, "ADS_imp_1_OUT".imputer_output_20 AS imputer_output_20, "ADS_imp_1_OUT".imputer_output_21 AS imputer_output_21, "ADS_imp_1_OUT".imputer_output_22 AS imputer_output_22, "ADS_imp_1_OUT".imputer_output_23 AS imputer_output_23, "ADS_imp_1_OUT".imputer_output_24 AS imputer_output_24, "ADS_imp_1_OUT".imputer_output_25 AS imputer_output_25, "ADS_imp_1_OUT".imputer_output_26 AS imputer_output_26, "ADS_imp_1_OUT".imputer_output_27 AS imputer_output_27, "ADS_imp_1_OUT".imputer_output_28 AS imputer_output_28, "ADS_imp_1_OUT".imputer_output_29 AS imputer_output_29, "ADS_imp_1_OUT".imputer_output_30 AS imputer_output_30, "ADS_imp_1_OUT".imputer_output_31 AS imputer_output_31 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 14.077712087912083 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.03905494505495 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 91.66178021978023 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 650.9676923076925 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.09642184615384615 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.10441613186813191 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.08826232681318694 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.048516399999999966 ELSE "ADS"."Feature_7" END AS imputer_output_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.1815885714285715 ELSE "ADS"."Feature_8" END AS imputer_output_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.06294030769230768 ELSE "ADS"."Feature_9" END AS imputer_output_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.4099173626373627 ELSE "ADS"."Feature_10" END AS imputer_output_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.2170694505494501 ELSE "ADS"."Feature_11" END AS imputer_output_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.90524901098901 ELSE "ADS"."Feature_12" END AS imputer_output_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 40.87988571428572 ELSE "ADS"."Feature_13" END AS imputer_output_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.007055971428571433 ELSE "ADS"."Feature_14" END AS imputer_output_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.025567830769230776 ELSE "ADS"."Feature_15" END AS imputer_output_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.03199925626373623 ELSE "ADS"."Feature_16" END AS imputer_output_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.011972369230769237 ELSE "ADS"."Feature_17" END AS imputer_output_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.020896200000000014 ELSE "ADS"."Feature_18" END AS imputer_output_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.0038465518681318647 ELSE "ADS"."Feature_19" END AS imputer_output_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 16.17776483516484 ELSE "ADS"."Feature_20" END AS imputer_output_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 25.26505494505494 ELSE "ADS"."Feature_21" END AS imputer_output_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 106.68156043956041 ELSE "ADS"."Feature_22" END AS imputer_output_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 870.8639560439567 ELSE "ADS"."Feature_23" END AS imputer_output_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.1318275604395605 ELSE "ADS"."Feature_24" END AS imputer_output_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.24991806593406582 ELSE "ADS"."Feature_25" END AS imputer_output_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.2654615934065932 ELSE "ADS"."Feature_26" END AS imputer_output_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.11348798021978022 ELSE "ADS"."Feature_27" END AS imputer_output_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.2897881318681319 ELSE "ADS"."Feature_28" END AS imputer_output_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.08364145054945049 ELSE "ADS"."Feature_29" END AS imputer_output_31 
FROM "BreastCancer" AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018185127_VCYC4TH_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185127_VCYC4TH_ADS_imp_1_OUT_KEY" ON "TMP_20221018185127_VCYC4TH_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018185127_M839AFQ_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 FLOAT, 
	scaler_output_3 FLOAT, 
	scaler_output_4 FLOAT, 
	scaler_output_5 FLOAT, 
	scaler_output_6 FLOAT, 
	scaler_output_7 FLOAT, 
	scaler_output_8 FLOAT, 
	scaler_output_9 FLOAT, 
	scaler_output_10 FLOAT, 
	scaler_output_11 FLOAT, 
	scaler_output_12 FLOAT, 
	scaler_output_13 FLOAT, 
	scaler_output_14 FLOAT, 
	scaler_output_15 FLOAT, 
	scaler_output_16 FLOAT, 
	scaler_output_17 FLOAT, 
	scaler_output_18 FLOAT, 
	scaler_output_19 FLOAT, 
	scaler_output_20 FLOAT, 
	scaler_output_21 FLOAT, 
	scaler_output_22 FLOAT, 
	scaler_output_23 FLOAT, 
	scaler_output_24 FLOAT, 
	scaler_output_25 FLOAT, 
	scaler_output_26 FLOAT, 
	scaler_output_27 FLOAT, 
	scaler_output_28 FLOAT, 
	scaler_output_29 FLOAT, 
	scaler_output_30 FLOAT, 
	scaler_output_31 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018185127_M839AFQ_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9, scaler_output_10, scaler_output_11, scaler_output_12, scaler_output_13, scaler_output_14, scaler_output_15, scaler_output_16, scaler_output_17, scaler_output_18, scaler_output_19, scaler_output_20, scaler_output_21, scaler_output_22, scaler_output_23, scaler_output_24, scaler_output_25, scaler_output_26, scaler_output_27, scaler_output_28, scaler_output_29, scaler_output_30, scaler_output_31) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9, "T".scaler_output_10, "T".scaler_output_11, "T".scaler_output_12, "T".scaler_output_13, "T".scaler_output_14, "T".scaler_output_15, "T".scaler_output_16, "T".scaler_output_17, "T".scaler_output_18, "T".scaler_output_19, "T".scaler_output_20, "T".scaler_output_21, "T".scaler_output_22, "T".scaler_output_23, "T".scaler_output_24, "T".scaler_output_25, "T".scaler_output_26, "T".scaler_output_27, "T".scaler_output_28, "T".scaler_output_29, "T".scaler_output_30, "T".scaler_output_31 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9, "ADS_sca_2_OUT".scaler_output_10 AS scaler_output_10, "ADS_sca_2_OUT".scaler_output_11 AS scaler_output_11, "ADS_sca_2_OUT".scaler_output_12 AS scaler_output_12, "ADS_sca_2_OUT".scaler_output_13 AS scaler_output_13, "ADS_sca_2_OUT".scaler_output_14 AS scaler_output_14, "ADS_sca_2_OUT".scaler_output_15 AS scaler_output_15, "ADS_sca_2_OUT".scaler_output_16 AS scaler_output_16, "ADS_sca_2_OUT".scaler_output_17 AS scaler_output_17, "ADS_sca_2_OUT".scaler_output_18 AS scaler_output_18, "ADS_sca_2_OUT".scaler_output_19 AS scaler_output_19, "ADS_sca_2_OUT".scaler_output_20 AS scaler_output_20, "ADS_sca_2_OUT".scaler_output_21 AS scaler_output_21, "ADS_sca_2_OUT".scaler_output_22 AS scaler_output_22, "ADS_sca_2_OUT".scaler_output_23 AS scaler_output_23, "ADS_sca_2_OUT".scaler_output_24 AS scaler_output_24, "ADS_sca_2_OUT".scaler_output_25 AS scaler_output_25, "ADS_sca_2_OUT".scaler_output_26 AS scaler_output_26, "ADS_sca_2_OUT".scaler_output_27 AS scaler_output_27, "ADS_sca_2_OUT".scaler_output_28 AS scaler_output_28, "ADS_sca_2_OUT".scaler_output_29 AS scaler_output_29, "ADS_sca_2_OUT".scaler_output_30 AS scaler_output_30, "ADS_sca_2_OUT".scaler_output_31 AS scaler_output_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 14.077712087912083) / 3.5451492987000814 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 19.03905494505495) / 4.1622971504218205 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 91.66178021978023) / 24.503971943475648 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 650.9676923076925) / 355.702823163891 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS FLOAT) - 0.09642184615384615) / 0.014197819663072304 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS FLOAT) - 0.10441613186813191) / 0.05340369466973436 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS FLOAT) - 0.08826232681318694) / 0.08191200162631372 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS FLOAT) - 0.048516399999999966) / 0.039373117396730245 AS scaler_output_9, (CAST("ADS_imp_1_OUT".imputer_output_10 AS FLOAT) - 0.1815885714285715) / 0.02779005832874822 AS scaler_output_10, (CAST("ADS_imp_1_OUT".imputer_output_11 AS FLOAT) - 0.06294030769230768) / 0.007019354586172742 AS scaler_output_11, (CAST("ADS_imp_1_OUT".imputer_output_12 AS FLOAT) - 0.4099173626373627) / 0.29120400836827026 AS scaler_output_12, (CAST("ADS_imp_1_OUT".imputer_output_13 AS FLOAT) - 1.2170694505494501) / 0.5363896396336265 AS scaler_output_13, (CAST("ADS_imp_1_OUT".imputer_output_14 AS FLOAT) - 2.90524901098901) / 2.1424944299808626 AS scaler_output_14, (CAST("ADS_imp_1_OUT".imputer_output_15 AS FLOAT) - 40.87988571428572) / 48.224754479577314 AS scaler_output_15, (CAST("ADS_imp_1_OUT".imputer_output_16 AS FLOAT) - 0.007055971428571433) / 0.002863651656569403 AS scaler_output_16, (CAST("ADS_imp_1_OUT".imputer_output_17 AS FLOAT) - 0.025567830769230776) / 0.017947013631032318 AS scaler_output_17, (CAST("ADS_imp_1_OUT".imputer_output_18 AS FLOAT) - 0.03199925626373623) / 0.03166493672136351 AS scaler_output_18, (CAST("ADS_imp_1_OUT".imputer_output_19 AS FLOAT) - 0.011972369230769237) / 0.006392005589396607 AS scaler_output_19, (CAST("ADS_imp_1_OUT".imputer_output_20 AS FLOAT) - 0.020896200000000014) / 0.008582910079869234 AS scaler_output_20, (CAST("ADS_imp_1_OUT".imputer_output_21 AS FLOAT) - 0.0038465518681318647) / 0.0027436075866190575 AS scaler_output_21, (CAST("ADS_imp_1_OUT".imputer_output_22 AS FLOAT) - 16.17776483516484) / 4.817458816201383 AS scaler_output_22, (CAST("ADS_imp_1_OUT".imputer_output_23 AS FLOAT) - 25.26505494505494) / 5.92332412866667 AS scaler_output_23, (CAST("ADS_imp_1_OUT".imputer_output_24 AS FLOAT) - 106.68156043956041) / 33.70385837605481 AS scaler_output_24, (CAST("ADS_imp_1_OUT".imputer_output_25 AS FLOAT) - 870.8639560439567) / 566.9950559872813 AS scaler_output_25, (CAST("ADS_imp_1_OUT".imputer_output_26 AS FLOAT) - 0.1318275604395605) / 0.02274820752228878 AS scaler_output_26, (CAST("ADS_imp_1_OUT".imputer_output_27 AS FLOAT) - 0.24991806593406582) / 0.15246893644279044 AS scaler_output_27, (CAST("ADS_imp_1_OUT".imputer_output_28 AS FLOAT) - 0.2654615934065932) / 0.20692568678204093 AS scaler_output_28, (CAST("ADS_imp_1_OUT".imputer_output_29 AS FLOAT) - 0.11348798021978022) / 0.06638141278520703 AS scaler_output_29, (CAST("ADS_imp_1_OUT".imputer_output_30 AS FLOAT) - 0.2897881318681319) / 0.06220470665051894 AS scaler_output_30, (CAST("ADS_imp_1_OUT".imputer_output_31 AS FLOAT) - 0.08364145054945049) / 0.01706514580694785 AS scaler_output_31 
FROM "TMP_20221018185127_VCYC4TH_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018185127_M839AFQ_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185127_M839AFQ_ADS_sca_2_OUT_KEY" ON "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20221018185127_KSZESAM_XGB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185127_KSZESAM_XGB_B0" (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)



-- Code For temporary table TMP_20221018185127_KSZESAM_XGB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_29 < 0.481490493) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_24 < -0.0246725604) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 < 0.333494544) THEN 5 ELSE 6 END END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.577859819 AS "Score" UNION ALL SELECT 4 AS nid, 0.104347833 AS "Score" UNION ALL SELECT 5 AS nid, -0.381818205 AS "Score" UNION ALL SELECT 6 AS nid, -0.578181803 AS "Score") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Score" AS "Score" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"XGB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Score" AS "Score_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_24 < 0.229007602) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 < 0.0102506494) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 2 AS nid, -0.443791091 AS "Score" UNION ALL SELECT 3 AS nid, 0.452014327 AS "Score" UNION ALL SELECT 4 AS nid, 0.0273430217 AS "Score") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Score" AS "Score" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"XGB_Model_0_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Score" AS "Score_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_29 < 0.481490493) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_15 < -0.166509628) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_23 < 0.161217764) THEN 5 ELSE 6 END END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.396163613 AS "Score" UNION ALL SELECT 4 AS nid, 0.0294305328 AS "Score" UNION ALL SELECT 5 AS nid, -0.232830554 AS "Score" UNION ALL SELECT 6 AS nid, -0.411204338 AS "Score") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Score" AS "Score" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"XGB_Model_0_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Score" AS "Score_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_24 < 0.319501698) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_29 < 0.132748306) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 2 AS nid, -0.369929641 AS "Score" UNION ALL SELECT 3 AS nid, 0.352983713 AS "Score" UNION ALL SELECT 4 AS nid, 0.0058717085 AS "Score") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Score" AS "Score" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"XGB_Model_0_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Score" AS "Score_0" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_22 < 0.128124639) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 < -0.0959131569) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 < 0.287328124) THEN 5 ELSE 6 END END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.331853092 AS "Score" UNION ALL SELECT 4 AS nid, 0.0621976517 AS "Score" UNION ALL SELECT 5 AS nid, -0.196852133 AS "Score" UNION ALL SELECT 6 AS nid, -0.360705614 AS "Score") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Score" AS "Score" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"XGB_Model_0_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Score" AS "Score_0" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_29 < 0.561332107) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_15 < -0.238257006) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 2 AS nid, -0.299602687 AS "Score" UNION ALL SELECT 3 AS nid, 0.323272616 AS "Score" UNION ALL SELECT 4 AS nid, -0.00179177092 AS "Score") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Score" AS "Score" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"XGB_Model_0_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Score" AS "Score_0" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_24 < 0.191919863) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_23 < -0.014359327) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 2 AS nid, -0.257835239 AS "Score" UNION ALL SELECT 3 AS nid, 0.318035483 AS "Score" UNION ALL SELECT 4 AS nid, 0.0797671974 AS "Score") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Score" AS "Score" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"XGB_Model_0_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Score" AS "Score_0" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 < 0.0102506494) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_17 < -0.618087828) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 2 AS nid, -0.183022752 AS "Score" UNION ALL SELECT 3 AS nid, 0.148378 AS "Score" UNION ALL SELECT 4 AS nid, 0.320678353 AS "Score") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Score" AS "Score" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"XGB_Model_0_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Score" AS "Score_0" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_25 < -0.232213587) THEN 1 ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 1 AS nid, 0.26075694 AS "Score" UNION ALL SELECT 2 AS nid, -0.140906826 AS "Score") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Score" AS "Score" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"XGB_Model_0_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Score" AS "Score_0" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_28 < -0.196503371) THEN 1 ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 1 AS nid, 0.257348537 AS "Score" UNION ALL SELECT 2 AS nid, -0.121567562 AS "Score") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Score" AS "Score" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"XGB_Model_0_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Score" AS "Score_0" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20221018185127_KSZESAM_XGB_B0" ("KEY", "Score_0") SELECT "T"."KEY", "T"."Score_0" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Score_0" AS "Score_0" 
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
FROM "XGB_Model_0_9") AS "XGB_esu_0") AS "XGB_B0") AS "T"

-- Code For temporary table TMP_20221018185127_GDAGUSM_XGB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185127_GDAGUSM_XGB_B1" (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)



-- Code For temporary table TMP_20221018185127_GDAGUSM_XGB_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_23 < -0.378175318) THEN 1 ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 1 AS nid, 0.271092504 AS "Score" UNION ALL SELECT 2 AS nid, -0.100576989 AS "Score") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Score" AS "Score" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"XGB_Model_0_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Score" AS "Score_0" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_15 < -0.134264767) THEN 1 ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 1 AS nid, 0.172649145 AS "Score" UNION ALL SELECT 2 AS nid, -0.193059087 AS "Score") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Score" AS "Score" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"XGB_Model_0_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Score" AS "Score_0" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_29 < 0.263809085) THEN 1 ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 1 AS nid, 0.181349665 AS "Score" UNION ALL SELECT 2 AS nid, -0.152797535 AS "Score") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Score" AS "Score" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"XGB_Model_0_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Score" AS "Score_0" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_25 < -0.0846814364) THEN 1 ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 1 AS nid, 0.153317034 AS "Score" UNION ALL SELECT 2 AS nid, -0.155450851 AS "Score") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Score" AS "Score" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"XGB_Model_0_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Score" AS "Score_0" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 < 0.103535384) THEN 1 ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 1 AS nid, 0.153998569 AS "Score" UNION ALL SELECT 2 AS nid, -0.142487958 AS "Score") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Score" AS "Score" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"XGB_Model_0_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Score" AS "Score_0" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_29 < 0.263809085) THEN 1 ELSE 2 END AS node_id_2 
FROM "TMP_20221018185127_M839AFQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 1 AS nid, 0.141609788 AS "Score" UNION ALL SELECT 2 AS nid, -0.121677577 AS "Score") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Score" AS "Score" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"XGB_Model_0_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Score" AS "Score_0" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20221018185127_GDAGUSM_XGB_B1" ("KEY", "Score_0") SELECT "T"."KEY", "T"."Score_0" 
FROM (SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_esu_1"."KEY" AS "KEY", "XGB_esu_1"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_Model_0_10"."KEY" AS "KEY", "XGB_Model_0_10"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_10" UNION ALL SELECT "XGB_Model_0_11"."KEY" AS "KEY", "XGB_Model_0_11"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_11" UNION ALL SELECT "XGB_Model_0_12"."KEY" AS "KEY", "XGB_Model_0_12"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_12" UNION ALL SELECT "XGB_Model_0_13"."KEY" AS "KEY", "XGB_Model_0_13"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_13" UNION ALL SELECT "XGB_Model_0_14"."KEY" AS "KEY", "XGB_Model_0_14"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_14" UNION ALL SELECT "XGB_Model_0_15"."KEY" AS "KEY", "XGB_Model_0_15"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_15") AS "XGB_esu_1") AS "XGB_B1") AS "T"

-- Code For temporary table TMP_20221018185127_V8UX2DG_XGB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185127_V8UX2DG_XGB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Score_0" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018185127_V8UX2DG_XGB_sum part 2. Populate

WITH "XGB_Union" AS 
(SELECT "XGB_EnsembleUnion"."KEY" AS "KEY", "XGB_EnsembleUnion"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Score_0" AS "Score_0" 
FROM "TMP_20221018185127_KSZESAM_XGB_B0" AS "XGB_B0" UNION ALL SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Score_0" AS "Score_0" 
FROM "TMP_20221018185127_GDAGUSM_XGB_B1" AS "XGB_B1") AS "XGB_EnsembleUnion")
 INSERT INTO "TMP_20221018185127_V8UX2DG_XGB_sum" ("KEY", "Score_0") SELECT "T"."KEY", "T"."Score_0" 
FROM (SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Score_0" AS "Score_0" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Score_0" AS FLOAT) AS "Score_0" 
FROM (SELECT "XGB_Union"."KEY" AS "KEY", sum("XGB_Union"."Score_0") AS "Score_0" 
FROM "XGB_Union" GROUP BY "XGB_Union"."KEY") AS "T") AS "XGB_sum") AS "T"

-- Code For temporary table TMP_20221018185127_V8UX2DG_XGB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185127_V8UX2DG_XGB_sum_KEY" ON "TMP_20221018185127_V8UX2DG_XGB_sum" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Score_0" AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", 1.0 - 1.0 / (1.0 + exp(min(100.0, max(-100.0, -"XGB_sum"."Score_0")))) AS "Proba_0", 1.0 / (1.0 + exp(min(100.0, max(-100.0, -"XGB_sum"."Score_0")))) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "TMP_20221018185127_V8UX2DG_XGB_sum" AS "XGB_sum"), 
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
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte