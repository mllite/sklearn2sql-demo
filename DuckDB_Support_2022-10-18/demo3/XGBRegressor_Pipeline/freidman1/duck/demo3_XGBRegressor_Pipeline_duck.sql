-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBRegressor_Pipeline
-- Dataset : freidman1
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190153_LI0TBCA_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190153_LI0TBCA_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE, 
	imputer_output_6 DOUBLE, 
	imputer_output_7 DOUBLE, 
	imputer_output_8 DOUBLE, 
	imputer_output_9 DOUBLE, 
	imputer_output_10 DOUBLE, 
	imputer_output_11 DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190153_LI0TBCA_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018190153_LI0TBCA_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9, imputer_output_10, imputer_output_11) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9, "T".imputer_output_10, "T".imputer_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9, "ADS_imp_1_OUT".imputer_output_10 AS imputer_output_10, "ADS_imp_1_OUT".imputer_output_11 AS imputer_output_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.5629846484809591 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.45606442423375926 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.47113817481474773 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.533968020094518 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.4780936262373869 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.5682849224172329 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.47914374714280494 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.4594152477223205 ELSE "ADS"."Feature_7" END AS imputer_output_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.4901106996809651 ELSE "ADS"."Feature_8" END AS imputer_output_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.5378806933707533 ELSE "ADS"."Feature_9" END AS imputer_output_11 
FROM freidman1 AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018190153_LI0TBCA_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190153_LI0TBCA_ADS_imp_1_OUT_KEY" ON "TMP_20221018190153_LI0TBCA_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018190153_87EXV4C_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE, 
	scaler_output_6 DOUBLE, 
	scaler_output_7 DOUBLE, 
	scaler_output_8 DOUBLE, 
	scaler_output_9 DOUBLE, 
	scaler_output_10 DOUBLE, 
	scaler_output_11 DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190153_87EXV4C_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9, scaler_output_10, scaler_output_11) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9, "T".scaler_output_10, "T".scaler_output_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9, "ADS_sca_2_OUT".scaler_output_10 AS scaler_output_10, "ADS_sca_2_OUT".scaler_output_11 AS scaler_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 0.5629846484809591) / 0.2583714683396337 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 0.45606442423375926) / 0.2878721730712705 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 0.47113817481474773) / 0.3109216791553051 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 0.533968020094518) / 0.2826199867400281 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS DOUBLE) - 0.4780936262373869) / 0.286140491317745 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS DOUBLE) - 0.5682849224172329) / 0.29767408106451737 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS DOUBLE) - 0.47914374714280494) / 0.2735314971431575 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS DOUBLE) - 0.4594152477223205) / 0.28721149346998975 AS scaler_output_9, (CAST("ADS_imp_1_OUT".imputer_output_10 AS DOUBLE) - 0.4901106996809651) / 0.2790486717322703 AS scaler_output_10, (CAST("ADS_imp_1_OUT".imputer_output_11 AS DOUBLE) - 0.5378806933707533) / 0.2958192296543193 AS scaler_output_11 
FROM "TMP_20221018190153_LI0TBCA_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018190153_87EXV4C_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190153_87EXV4C_ADS_sca_2_OUT_KEY" ON "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20221018190153_4BLKDWV_XGB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190153_4BLKDWV_XGB_B0" (
	"KEY" BIGINT, 
	"Estimator" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190153_4BLKDWV_XGB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 < -0.0357525311) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < -0.696123004) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 5.20409441 AS "Estimator" UNION ALL SELECT 3 AS nid, 2.17387152 AS "Estimator" UNION ALL SELECT 4 AS nid, 3.85627294 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"XGB_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 < -0.794110656) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 < 0.0161877424) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < -0.914888024) THEN 5 ELSE 6 END END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, 1.41071427 AS "Estimator" UNION ALL SELECT 4 AS nid, 2.42714262 AS "Estimator" UNION ALL SELECT 5 AS nid, 2.11307049 AS "Estimator" UNION ALL SELECT 6 AS nid, 3.89251494 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"XGB_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 < -0.946036279) THEN 1 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < 0.0579846501) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 < -0.109657489) THEN 5 ELSE 6 END ELSE 4 END END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS nid, 1.24433184 AS "Estimator" UNION ALL SELECT 4 AS nid, 3.06391406 AS "Estimator" UNION ALL SELECT 5 AS nid, 1.32978749 AS "Estimator" UNION ALL SELECT 6 AS nid, 2.33954167 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"XGB_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < -0.138035312) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 < -0.0964270756) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 < -0.64351666) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < 0.778176546) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, 0.613173842 AS "Estimator" UNION ALL SELECT 4 AS nid, 1.48825288 AS "Estimator" UNION ALL SELECT 5 AS nid, 1.14802098 AS "Estimator" UNION ALL SELECT 7 AS nid, 1.71889293 AS "Estimator" UNION ALL SELECT 8 AS nid, 2.53091908 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"XGB_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 < -1.04805255) THEN 1 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 < -0.962867022) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < 0.769357324) THEN 5 ELSE 6 END END END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS nid, 0.408731848 AS "Estimator" UNION ALL SELECT 3 AS nid, 0.596439838 AS "Estimator" UNION ALL SELECT 5 AS nid, 1.24134743 AS "Estimator" UNION ALL SELECT 6 AS nid, 1.91035748 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"XGB_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 < 0.517049849) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < -0.900528908) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < 1.03185093) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 1.25488043 AS "Estimator" UNION ALL SELECT 3 AS nid, 1.14702761 AS "Estimator" UNION ALL SELECT 5 AS nid, 0.22036989 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.928107023 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"XGB_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < -0.382707477) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 < -0.143746376) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 < -1.15764034) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 < -0.350789547) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, -0.154334188 AS "Estimator" UNION ALL SELECT 4 AS nid, 0.469956517 AS "Estimator" UNION ALL SELECT 5 AS nid, 0.242951527 AS "Estimator" UNION ALL SELECT 7 AS nid, 0.504113853 AS "Estimator" UNION ALL SELECT 8 AS nid, 1.02353692 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"XGB_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 < 0.482317448) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < -0.914888024) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < 0.92401886) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 < -0.155815095) THEN 5 ELSE 6 END END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, -0.185849145 AS "Estimator" UNION ALL SELECT 5 AS nid, 0.520060599 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.804469526 AS "Estimator" UNION ALL SELECT 7 AS nid, 0.269506752 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.703605831 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"XGB_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < 0.850655258) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < -1.13001359) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 < -0.652317643) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 0.61849004 AS "Estimator" UNION ALL SELECT 3 AS nid, 0.558182001 AS "Estimator" UNION ALL SELECT 5 AS nid, -0.151840106 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.211264536 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"XGB_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < 1.27873778) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < -0.727312684) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 < 0.162543178) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < -0.89735502) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 0.610841274 AS "Estimator" UNION ALL SELECT 5 AS nid, 0.223776102 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.552578449 AS "Estimator" UNION ALL SELECT 7 AS nid, -0.304640472 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.0979367197 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"XGB_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20221018190153_4BLKDWV_XGB_B0" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_esu_0"."KEY" AS "KEY", "XGB_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Model_0"."KEY" AS "KEY", "XGB_Model_0"."Estimator" AS "Estimator" 
FROM "XGB_Model_0" UNION ALL SELECT "XGB_Model_1"."KEY" AS "KEY", "XGB_Model_1"."Estimator" AS "Estimator" 
FROM "XGB_Model_1" UNION ALL SELECT "XGB_Model_2"."KEY" AS "KEY", "XGB_Model_2"."Estimator" AS "Estimator" 
FROM "XGB_Model_2" UNION ALL SELECT "XGB_Model_3"."KEY" AS "KEY", "XGB_Model_3"."Estimator" AS "Estimator" 
FROM "XGB_Model_3" UNION ALL SELECT "XGB_Model_4"."KEY" AS "KEY", "XGB_Model_4"."Estimator" AS "Estimator" 
FROM "XGB_Model_4" UNION ALL SELECT "XGB_Model_5"."KEY" AS "KEY", "XGB_Model_5"."Estimator" AS "Estimator" 
FROM "XGB_Model_5" UNION ALL SELECT "XGB_Model_6"."KEY" AS "KEY", "XGB_Model_6"."Estimator" AS "Estimator" 
FROM "XGB_Model_6" UNION ALL SELECT "XGB_Model_7"."KEY" AS "KEY", "XGB_Model_7"."Estimator" AS "Estimator" 
FROM "XGB_Model_7" UNION ALL SELECT "XGB_Model_8"."KEY" AS "KEY", "XGB_Model_8"."Estimator" AS "Estimator" 
FROM "XGB_Model_8" UNION ALL SELECT "XGB_Model_9"."KEY" AS "KEY", "XGB_Model_9"."Estimator" AS "Estimator" 
FROM "XGB_Model_9") AS "XGB_esu_0") AS "XGB_B0") AS "T"

-- Code For temporary table TMP_20221018190153_IMPJEH8_XGB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190153_IMPJEH8_XGB_B1" (
	"KEY" BIGINT, 
	"Estimator" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190153_IMPJEH8_XGB_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 < 0.795209765) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 < -0.28250879) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < 0.488250613) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < -0.900528908) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 0.401917726 AS "Estimator" UNION ALL SELECT 5 AS nid, -0.18514359 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.133646309 AS "Estimator" UNION ALL SELECT 7 AS nid, 0.42468372 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.0741623789 AS "Estimator") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"XGB_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < 1.03185093) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < -0.900528908) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < -0.830936491) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 0.333456516 AS "Estimator" UNION ALL SELECT 3 AS nid, 0.242667362 AS "Estimator" UNION ALL SELECT 5 AS nid, -0.254993021 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.0346417092 AS "Estimator") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"XGB_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 < -0.684206605) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 < 0.171887398) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 < -0.549425602) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < 0.0786705464) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 < 0.429652095) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, 0.0781900436 AS "Estimator" UNION ALL SELECT 4 AS nid, -0.240867764 AS "Estimator" UNION ALL SELECT 7 AS nid, -0.146877274 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.109450921 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.117463887 AS "Estimator" UNION ALL SELECT 10 AS nid, 0.472460806 AS "Estimator") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"XGB_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 < 0.687786162) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 < -1.21927714) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < -1.19642711) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 < 0.0777962357) THEN 5 ELSE 6 END END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, -0.177886814 AS "Estimator" UNION ALL SELECT 5 AS nid, 0.0569376349 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.346652687 AS "Estimator" UNION ALL SELECT 7 AS nid, -0.103671327 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.0884396434 AS "Estimator") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"XGB_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < 1.27873778) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < -1.25223744) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 < 0.576499462) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS nid, 0.216289103 AS "Estimator" UNION ALL SELECT 3 AS nid, 0.204798773 AS "Estimator" UNION ALL SELECT 5 AS nid, 0.0191522799 AS "Estimator" UNION ALL SELECT 6 AS nid, -0.125294894 AS "Estimator") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"XGB_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 < -0.149702102) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 < 0.220213592) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 < -0.158591002) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 < 0.885921478) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 < 0.0579797998) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM "TMP_20221018190153_87EXV4C_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS nid, 0.0655611604 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.259908646 AS "Estimator" UNION ALL SELECT 7 AS nid, -0.232347324 AS "Estimator" UNION ALL SELECT 8 AS nid, -0.0291054845 AS "Estimator" UNION ALL SELECT 9 AS nid, -0.113413215 AS "Estimator" UNION ALL SELECT 10 AS nid, 0.116505913 AS "Estimator") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"XGB_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20221018190153_IMPJEH8_XGB_B1" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_esu_1"."KEY" AS "KEY", "XGB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Model_10"."KEY" AS "KEY", "XGB_Model_10"."Estimator" AS "Estimator" 
FROM "XGB_Model_10" UNION ALL SELECT "XGB_Model_11"."KEY" AS "KEY", "XGB_Model_11"."Estimator" AS "Estimator" 
FROM "XGB_Model_11" UNION ALL SELECT "XGB_Model_12"."KEY" AS "KEY", "XGB_Model_12"."Estimator" AS "Estimator" 
FROM "XGB_Model_12" UNION ALL SELECT "XGB_Model_13"."KEY" AS "KEY", "XGB_Model_13"."Estimator" AS "Estimator" 
FROM "XGB_Model_13" UNION ALL SELECT "XGB_Model_14"."KEY" AS "KEY", "XGB_Model_14"."Estimator" AS "Estimator" 
FROM "XGB_Model_14" UNION ALL SELECT "XGB_Model_15"."KEY" AS "KEY", "XGB_Model_15"."Estimator" AS "Estimator" 
FROM "XGB_Model_15") AS "XGB_esu_1") AS "XGB_B1") AS "T"

-- Code For temporary table TMP_20221018190153_M3MK6KB_XGB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190153_M3MK6KB_XGB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190153_M3MK6KB_XGB_sum part 2. Populate

WITH "XGB_Union" AS 
(SELECT "XGB_EnsembleUnion"."KEY" AS "KEY", "XGB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Estimator" AS "Estimator" 
FROM "TMP_20221018190153_4BLKDWV_XGB_B0" AS "XGB_B0" UNION ALL SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Estimator" AS "Estimator" 
FROM "TMP_20221018190153_IMPJEH8_XGB_B1" AS "XGB_B1") AS "XGB_EnsembleUnion")
 INSERT INTO "TMP_20221018190153_M3MK6KB_XGB_sum" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Estimator" AS "Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT "XGB_Union"."KEY" AS "KEY", sum("XGB_Union"."Estimator") AS "Estimator" 
FROM "XGB_Union" GROUP BY "XGB_Union"."KEY") AS "T") AS "XGB_sum") AS "T"

-- Code For temporary table TMP_20221018190153_M3MK6KB_XGB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190153_M3MK6KB_XGB_sum_KEY" ON "TMP_20221018190153_M3MK6KB_XGB_sum" ("KEY")

-- Model deployment code

SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Estimator" + 0.5 AS "Estimator" 
FROM "TMP_20221018190153_M3MK6KB_XGB_sum" AS "XGB_sum"