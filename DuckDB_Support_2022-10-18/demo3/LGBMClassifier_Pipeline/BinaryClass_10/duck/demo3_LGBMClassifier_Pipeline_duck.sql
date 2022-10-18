-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LGBMClassifier_Pipeline
-- Dataset : BinaryClass_10
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018184829_4H49MWE_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184829_4H49MWE_ADS_imp_1_OUT" (
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

-- Code For temporary table TMP_20221018184829_4H49MWE_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018184829_4H49MWE_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9, imputer_output_10, imputer_output_11) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9, "T".imputer_output_10, "T".imputer_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9, "ADS_imp_1_OUT".imputer_output_10 AS imputer_output_10, "ADS_imp_1_OUT".imputer_output_11 AS imputer_output_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS imputer_output_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS imputer_output_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS imputer_output_11 
FROM "BinaryClass_10" AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018184829_4H49MWE_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018184829_4H49MWE_ADS_imp_1_OUT_KEY" ON "TMP_20221018184829_4H49MWE_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" (
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

-- Code For temporary table TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9, scaler_output_10, scaler_output_11) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9, "T".scaler_output_10, "T".scaler_output_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9, "ADS_sca_2_OUT".scaler_output_10 AS scaler_output_10, "ADS_sca_2_OUT".scaler_output_11 AS scaler_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 0.061829205238134496) / 1.2283839562090673 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 0.17702463767183324) / 0.940821656314017 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 0.04138385004903454) / 1.0741824888811282 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 0.13060646805847148) / 1.0792244559733761 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS DOUBLE) - -0.05955810471983082) / 1.1095891190508123 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS DOUBLE) - -0.04892908987010584) / 1.3781871812029047 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS DOUBLE) - 0.19101797861713127) / 0.9735285246303208 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS DOUBLE) - 0.02204959673267471) / 0.47460301203797095 AS scaler_output_9, (CAST("ADS_imp_1_OUT".imputer_output_10 AS DOUBLE) - -0.057729814034140035) / 1.064607524840552 AS scaler_output_10, (CAST("ADS_imp_1_OUT".imputer_output_11 AS DOUBLE) - -0.05254959205203237) / 1.2245328896554564 AS scaler_output_11 
FROM "TMP_20221018184829_4H49MWE_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT_KEY" ON "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20221018184829_JVZTWVV_LGBM_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184829_JVZTWVV_LGBM_B0" (
	"KEY" BIGINT, 
	"Score_0" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018184829_JVZTWVV_LGBM_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.7309591270005741) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.08235294117647059 AS "Score" UNION ALL SELECT 4 AS nid, -0.027999999999999987 AS "Score" UNION ALL SELECT 5 AS nid, -0.09999999999999998 AS "Score") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Score" AS "Score" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"LGBM_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Score" AS "Score_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.7309591270005741) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.07837035044971821 AS "Score" UNION ALL SELECT 4 AS nid, -0.026605303659345617 AS "Score" UNION ALL SELECT 5 AS nid, -0.09524187224606032 AS "Score") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Score" AS "Score" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"LGBM_Model_0_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Score" AS "Score_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.7309591270005741) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.0748151115307271 AS "Score" UNION ALL SELECT 4 AS nid, -0.025289255362273944 AS "Score" UNION ALL SELECT 5 AS nid, -0.09113178077572359 AS "Score") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Score" AS "Score" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"LGBM_Model_0_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Score" AS "Score_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.7309591270005741) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.071614314717172 AS "Score" UNION ALL SELECT 4 AS nid, -0.024045725278666764 AS "Score" UNION ALL SELECT 5 AS nid, -0.08754910073915208 AS "Score") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Score" AS "Score" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"LGBM_Model_0_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Score" AS "Score_0" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.7309591270005741) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.06871035665405786 AS "Score" UNION ALL SELECT 4 AS nid, -0.022869317111467467 AS "Score" UNION ALL SELECT 5 AS nid, -0.08440150242752237 AS "Score") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Score" AS "Score" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"LGBM_Model_0_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Score" AS "Score_0" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= -0.17995495424470917) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.7309591270005741) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.059595956972506386 AS "Score" UNION ALL SELECT 4 AS nid, -0.027110032871235364 AS "Score" UNION ALL SELECT 5 AS nid, -0.08161712202378635 AS "Score") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Score" AS "Score" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"LGBM_Model_0_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Score" AS "Score_0" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.3589642958583995) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.5745946464846209) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.07486152326152701 AS "Score" UNION ALL SELECT 4 AS nid, 0.0023210491773776347 AS "Score" UNION ALL SELECT 5 AS nid, -0.06595671598622808 AS "Score") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Score" AS "Score" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"LGBM_Model_0_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Score" AS "Score_0" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.7309591270005741) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.06188623697833565 AS "Score" UNION ALL SELECT 4 AS nid, -0.018862290134270196 AS "Score" UNION ALL SELECT 5 AS nid, -0.07820626677164517 AS "Score") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Score" AS "Score" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"LGBM_Model_0_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Score" AS "Score_0" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.3589642958583995) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.5745946464846209) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.07047027834389967 AS "Score" UNION ALL SELECT 4 AS nid, 0.004022998695700831 AS "Score" UNION ALL SELECT 5 AS nid, -0.06230516020006064 AS "Score") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Score" AS "Score" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"LGBM_Model_0_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Score" AS "Score_0" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= -0.17995495424470917) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.7309591270005741) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.05231955959263856 AS "Score" UNION ALL SELECT 4 AS nid, -0.02035350498816686 AS "Score" UNION ALL SELECT 5 AS nid, -0.07536714519161476 AS "Score") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Score" AS "Score" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"LGBM_Model_0_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Score" AS "Score_0" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20221018184829_JVZTWVV_LGBM_B0" ("KEY", "Score_0") SELECT "T"."KEY", "T"."Score_0" 
FROM (SELECT "LGBM_B0"."KEY" AS "KEY", "LGBM_B0"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_esu_0"."KEY" AS "KEY", "LGBM_esu_0"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_Model_0_0"."KEY" AS "KEY", "LGBM_Model_0_0"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_0" UNION ALL SELECT "LGBM_Model_0_1"."KEY" AS "KEY", "LGBM_Model_0_1"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_1" UNION ALL SELECT "LGBM_Model_0_2"."KEY" AS "KEY", "LGBM_Model_0_2"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_2" UNION ALL SELECT "LGBM_Model_0_3"."KEY" AS "KEY", "LGBM_Model_0_3"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_3" UNION ALL SELECT "LGBM_Model_0_4"."KEY" AS "KEY", "LGBM_Model_0_4"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_4" UNION ALL SELECT "LGBM_Model_0_5"."KEY" AS "KEY", "LGBM_Model_0_5"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_5" UNION ALL SELECT "LGBM_Model_0_6"."KEY" AS "KEY", "LGBM_Model_0_6"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_6" UNION ALL SELECT "LGBM_Model_0_7"."KEY" AS "KEY", "LGBM_Model_0_7"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_7" UNION ALL SELECT "LGBM_Model_0_8"."KEY" AS "KEY", "LGBM_Model_0_8"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_8" UNION ALL SELECT "LGBM_Model_0_9"."KEY" AS "KEY", "LGBM_Model_0_9"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_9") AS "LGBM_esu_0") AS "LGBM_B0") AS "T"

-- Code For temporary table TMP_20221018184829_YSJD3UG_LGBM_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184829_YSJD3UG_LGBM_B1" (
	"KEY" BIGINT, 
	"Score_0" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018184829_YSJD3UG_LGBM_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.3589642958583995) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.5745946464846209) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.06691312663348535 AS "Score" UNION ALL SELECT 4 AS nid, 0.005292289748671965 AS "Score" UNION ALL SELECT 5 AS nid, -0.05919259942894903 AS "Score") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Score" AS "Score" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"LGBM_Model_0_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Score" AS "Score_0" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.3589642958583995) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.7309591270005741) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.06510810739079739 AS "Score" UNION ALL SELECT 4 AS nid, -0.008834303420740033 AS "Score" UNION ALL SELECT 5 AS nid, -0.07297687605873576 AS "Score") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Score" AS "Score" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"LGBM_Model_0_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Score" AS "Score_0" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= -0.17995495424470917) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 0.2882963448470753) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.04784236000783367 AS "Score" UNION ALL SELECT 4 AS nid, -0.06830307132273603 AS "Score" UNION ALL SELECT 5 AS nid, -0.013504348996642582 AS "Score") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Score" AS "Score" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"LGBM_Model_0_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Score" AS "Score_0" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.3589642958583995) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.5745946464846209) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.062246974561665724 AS "Score" UNION ALL SELECT 4 AS nid, 0.007801871478657589 AS "Score" UNION ALL SELECT 5 AS nid, -0.055235812354027004 AS "Score") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Score" AS "Score" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"LGBM_Model_0_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Score" AS "Score_0" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.3589642958583995) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.7309591270005741) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.06075878684613041 AS "Score" UNION ALL SELECT 4 AS nid, -0.006110172514187426 AS "Score" UNION ALL SELECT 5 AS nid, -0.0701333631064847 AS "Score") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Score" AS "Score" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"LGBM_Model_0_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Score" AS "Score_0" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.3589642958583995) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.5745946464846209) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "TMP_20221018184829_HGFMZMZ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, "Values"."Score" AS "Score" 
FROM (SELECT 3 AS nid, 0.05935977931003451 AS "Score" UNION ALL SELECT 4 AS nid, 0.00930785555088631 AS "Score" UNION ALL SELECT 5 AS nid, -0.052557328780064874 AS "Score") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Score" AS "Score" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"LGBM_Model_0_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Score" AS "Score_0" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20221018184829_YSJD3UG_LGBM_B1" ("KEY", "Score_0") SELECT "T"."KEY", "T"."Score_0" 
FROM (SELECT "LGBM_B1"."KEY" AS "KEY", "LGBM_B1"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_esu_1"."KEY" AS "KEY", "LGBM_esu_1"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_Model_0_10"."KEY" AS "KEY", "LGBM_Model_0_10"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_10" UNION ALL SELECT "LGBM_Model_0_11"."KEY" AS "KEY", "LGBM_Model_0_11"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_11" UNION ALL SELECT "LGBM_Model_0_12"."KEY" AS "KEY", "LGBM_Model_0_12"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_12" UNION ALL SELECT "LGBM_Model_0_13"."KEY" AS "KEY", "LGBM_Model_0_13"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_13" UNION ALL SELECT "LGBM_Model_0_14"."KEY" AS "KEY", "LGBM_Model_0_14"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_14" UNION ALL SELECT "LGBM_Model_0_15"."KEY" AS "KEY", "LGBM_Model_0_15"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_15") AS "LGBM_esu_1") AS "LGBM_B1") AS "T"

-- Code For temporary table TMP_20221018184829_U4DMGQ7_LGBM_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184829_U4DMGQ7_LGBM_sum" (
	"KEY" BIGINT NOT NULL, 
	"Score_0" DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018184829_U4DMGQ7_LGBM_sum part 2. Populate

WITH "LGBM_Union" AS 
(SELECT "LGBM_EnsembleUnion"."KEY" AS "KEY", "LGBM_EnsembleUnion"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_B0"."KEY" AS "KEY", "LGBM_B0"."Score_0" AS "Score_0" 
FROM "TMP_20221018184829_JVZTWVV_LGBM_B0" AS "LGBM_B0" UNION ALL SELECT "LGBM_B1"."KEY" AS "KEY", "LGBM_B1"."Score_0" AS "Score_0" 
FROM "TMP_20221018184829_YSJD3UG_LGBM_B1" AS "LGBM_B1") AS "LGBM_EnsembleUnion")
 INSERT INTO "TMP_20221018184829_U4DMGQ7_LGBM_sum" ("KEY", "Score_0") SELECT "T"."KEY", "T"."Score_0" 
FROM (SELECT "LGBM_sum"."KEY" AS "KEY", "LGBM_sum"."Score_0" AS "Score_0" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Score_0" AS DOUBLE) AS "Score_0" 
FROM (SELECT "LGBM_Union"."KEY" AS "KEY", sum("LGBM_Union"."Score_0") AS "Score_0" 
FROM "LGBM_Union" GROUP BY "LGBM_Union"."KEY") AS "T") AS "LGBM_sum") AS "T"

-- Code For temporary table TMP_20221018184829_U4DMGQ7_LGBM_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20221018184829_U4DMGQ7_LGBM_sum_KEY" ON "TMP_20221018184829_U4DMGQ7_LGBM_sum" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "LGBM_sum"."KEY" AS "KEY", "LGBM_sum"."Score_0" AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", 1.0 - 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -"LGBM_sum"."Score_0")))) AS "Proba_0", 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -"LGBM_sum"."Score_0")))) AS "Proba_1", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM "TMP_20221018184829_U4DMGQ7_LGBM_sum" AS "LGBM_sum"), 
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
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", max(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE '-Infinity'::float8 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte