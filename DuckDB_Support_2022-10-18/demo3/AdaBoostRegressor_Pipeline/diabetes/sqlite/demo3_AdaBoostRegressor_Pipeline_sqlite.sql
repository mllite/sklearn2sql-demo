-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : AdaBoostRegressor_Pipeline
-- Dataset : diabetes
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018185730_2J2XZWN_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185730_2J2XZWN_ADS_imp_1_OUT" (
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
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018185730_2J2XZWN_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018185730_2J2XZWN_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9, imputer_output_10, imputer_output_11) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9, "T".imputer_output_10, "T".imputer_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9, "ADS_imp_1_OUT".imputer_output_10 AS imputer_output_10, "ADS_imp_1_OUT".imputer_output_11 AS imputer_output_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0002686932066656524 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.0007239580580638301 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0007280719825591873 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0010135851598460544 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0009763580732882766 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0017643808242336471 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0016512815450559991 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.001390550198338443 ELSE "ADS"."Feature_7" END AS imputer_output_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.0012727412281983582 ELSE "ADS"."Feature_8" END AS imputer_output_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.0010344250056819138 ELSE "ADS"."Feature_9" END AS imputer_output_11 
FROM diabetes AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018185730_2J2XZWN_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185730_2J2XZWN_ADS_imp_1_OUT_KEY" ON "TMP_20221018185730_2J2XZWN_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018185730_43FATYF_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" (
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
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018185730_43FATYF_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9, scaler_output_10, scaler_output_11) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9, "T".scaler_output_10, "T".scaler_output_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9, "ADS_sca_2_OUT".scaler_output_10 AS scaler_output_10, "ADS_sca_2_OUT".scaler_output_11 AS scaler_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 0.0002686932066656524) / 0.047242095836536116 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 0.0007239580580638301) / 0.047605576685039 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.0007280719825591873) / 0.04693591143936429 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 0.0010135851598460544) / 0.04833530116894073 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS FLOAT) - 0.0009763580732882766) / 0.04805076200970219 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS FLOAT) - 0.0017643808242336471) / 0.048060808731544384 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS FLOAT) - -0.0016512815450559991) / 0.04620240378042887 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS FLOAT) - 0.001390550198338443) / 0.047363093040532836 AS scaler_output_9, (CAST("ADS_imp_1_OUT".imputer_output_10 AS FLOAT) - 0.0012727412281983582) / 0.045892845781363927 AS scaler_output_10, (CAST("ADS_imp_1_OUT".imputer_output_11 AS FLOAT) - 0.0010344250056819138) / 0.04776158519570336 AS scaler_output_11 
FROM "TMP_20221018185730_2J2XZWN_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018185730_43FATYF_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185730_43FATYF_ADS_sca_2_OUT_KEY" ON "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20221018185730_2AQHRF6_WE_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185730_2AQHRF6_WE_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT, 
	"Weight" FLOAT, 
	est_index BIGINT
)



-- Code For temporary table TMP_20221018185730_2AQHRF6_WE_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= -0.15000996738672256) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.11634615436196327) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= -0.9707407355308533) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -1.3020480871200562) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.40230131149292) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.18217914551496506) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= 0.5191034078598022) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 76.73333333333333 AS "E" UNION ALL SELECT 4 AS nid, 106.52808988764045 AS "E" UNION ALL SELECT 6 AS nid, 244.0 AS "E" UNION ALL SELECT 7 AS nid, 155.5185185185185 AS "E" UNION ALL SELECT 10 AS nid, 155.5 AS "E" UNION ALL SELECT 11 AS nid, 198.71428571428572 AS "E" UNION ALL SELECT 13 AS nid, 297.3157894736842 AS "E" UNION ALL SELECT 14 AS nid, 223.5 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"ADB_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator", 0.11994268526320855 AS "Weight", 0 AS est_index 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.7403193712234497) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.632691353559494) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.5286004543304443) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.8861834406852722) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 0.49086402356624603) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.6663813591003418) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= 0.8184999525547028) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 106.35754189944134 AS "E" UNION ALL SELECT 4 AS nid, 219.66666666666666 AS "E" UNION ALL SELECT 6 AS nid, 131.06666666666666 AS "E" UNION ALL SELECT 7 AS nid, 197.14285714285714 AS "E" UNION ALL SELECT 10 AS nid, 218.5064935064935 AS "E" UNION ALL SELECT 11 AS nid, 291.26666666666665 AS "E" UNION ALL SELECT 13 AS nid, 103.8 AS "E" UNION ALL SELECT 14 AS nid, 201.0 AS "E") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"ADB_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator", 0.10436699587651303 AS "Weight", 1 AS est_index 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= -0.4579826295375824) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.393128514289856) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.19671834632754326) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.04821458458900452) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.4711917638778687) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.7403193712234497) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= 0.3822742849588394) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 95.83333333333333 AS "E" UNION ALL SELECT 4 AS nid, 136.88888888888889 AS "E" UNION ALL SELECT 6 AS nid, 235.25 AS "E" UNION ALL SELECT 7 AS nid, 150.5 AS "E" UNION ALL SELECT 10 AS nid, 162.04516129032257 AS "E" UNION ALL SELECT 11 AS nid, 221.15686274509804 AS "E" UNION ALL SELECT 13 AS nid, 298.1666666666667 AS "E" UNION ALL SELECT 14 AS nid, 217.54545454545453 AS "E") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"ADB_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator", 0.06846409269073654 AS "Weight", 2 AS est_index 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= -0.021894935169257224) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.0704191830009222) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= 2.307655453681946) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.6218109130859375) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= 1.3498516082763672) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.6222151517868042) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= 1.1021407544612885) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 100.7 AS "E" UNION ALL SELECT 4 AS nid, 253.0 AS "E" UNION ALL SELECT 6 AS nid, 302.0 AS "E" UNION ALL SELECT 7 AS nid, 158.17777777777778 AS "E" UNION ALL SELECT 10 AS nid, 162.41176470588235 AS "E" UNION ALL SELECT 11 AS nid, 232.24528301886792 AS "E" UNION ALL SELECT 13 AS nid, 110.70833333333333 AS "E" UNION ALL SELECT 14 AS nid, 246.66666666666666 AS "E") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"ADB_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator", 0.08063981827811084 AS "Weight", 3 AS est_index 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.9545133709907532) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= -0.24396099895238876) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= 2.154537081718445) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= -0.0008598752319812775) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= -0.5645701140165329) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.24512693285942078) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -1.2423259019851685) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 104.24166666666666 AS "E" UNION ALL SELECT 4 AS nid, 253.0 AS "E" UNION ALL SELECT 6 AS nid, 192.66666666666666 AS "E" UNION ALL SELECT 7 AS nid, 146.61855670103094 AS "E" UNION ALL SELECT 10 AS nid, 68.0 AS "E" UNION ALL SELECT 11 AS nid, 221.0 AS "E" UNION ALL SELECT 13 AS nid, 146.4 AS "E" UNION ALL SELECT 14 AS nid, 276.9848484848485 AS "E") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"ADB_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator", 0.07690091203124985 AS "Weight", 4 AS est_index 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= 0.25409863144159317) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -0.505198284983635) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -0.8637807071208954) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.77559494972229) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.5036679357290268) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.7218210399150848) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.976388394832611) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 141.0 AS "E" UNION ALL SELECT 4 AS nid, 218.10526315789474 AS "E" UNION ALL SELECT 6 AS nid, 183.91666666666666 AS "E" UNION ALL SELECT 7 AS nid, 113.04580152671755 AS "E" UNION ALL SELECT 10 AS nid, 176.88888888888889 AS "E" UNION ALL SELECT 11 AS nid, 87.84615384615384 AS "E" UNION ALL SELECT 13 AS nid, 216.8230769230769 AS "E" UNION ALL SELECT 14 AS nid, 301.4 AS "E") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"ADB_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator", 0.0560812410564534 AS "Weight", 5 AS est_index 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.09338266775012016) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= 0.45163413882255554) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 0.49086402356624603) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 0.6103914827108383) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.6062126755714417) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 2.917891263961792) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.0835670232772827) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 124.10752688172043 AS "E" UNION ALL SELECT 4 AS nid, 76.93181818181819 AS "E" UNION ALL SELECT 6 AS nid, 228.33333333333334 AS "E" UNION ALL SELECT 7 AS nid, 122.46153846153847 AS "E" UNION ALL SELECT 10 AS nid, 172.0952380952381 AS "E" UNION ALL SELECT 11 AS nid, 346.0 AS "E" UNION ALL SELECT 13 AS nid, 128.0 AS "E" UNION ALL SELECT 14 AS nid, 268.864406779661 AS "E") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"ADB_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator", 0.08590616713980488 AS "Weight", 6 AS est_index 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= -0.7249386310577393) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 2.034184992313385) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.1989050507545471) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.09338266775012016) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.632691353559494) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= -0.3043961673974991) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 143.05555555555554 AS "E" UNION ALL SELECT 4 AS nid, 80.19047619047619 AS "E" UNION ALL SELECT 5 AS nid, 216.0 AS "E" UNION ALL SELECT 8 AS nid, 127.03370786516854 AS "E" UNION ALL SELECT 9 AS nid, 186.55357142857142 AS "E" UNION ALL SELECT 11 AS nid, 124.91428571428571 AS "E" UNION ALL SELECT 12 AS nid, 231.4181818181818 AS "E") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"ADB_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator", 0.03639664791018888 AS "Weight", 7 AS est_index 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.9774768352508545) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= -0.23323509097099304) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -1.4916256666183472) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.7133967578411102) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.1220130324363708) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -0.7442532479763031) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= -0.012857362627983093) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 170.8181818181818 AS "E" UNION ALL SELECT 4 AS nid, 107.24742268041237 AS "E" UNION ALL SELECT 6 AS nid, 188.24183006535947 AS "E" UNION ALL SELECT 7 AS nid, 90.48 AS "E" UNION ALL SELECT 10 AS nid, 68.0 AS "E" UNION ALL SELECT 11 AS nid, 128.0 AS "E" UNION ALL SELECT 13 AS nid, 167.0 AS "E" UNION ALL SELECT 14 AS nid, 285.6170212765957 AS "E") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"ADB_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator", 0.035768013859779166 AS "Weight", 8 AS est_index 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.1852366104722023) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -0.38567081093788147) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -1.1825206279754639) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.9156244993209839) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= -0.347758486866951) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.22042536921799183) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -1.2423259019851685) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 89.33333333333333 AS "E" UNION ALL SELECT 4 AS nid, 206.79591836734693 AS "E" UNION ALL SELECT 6 AS nid, 91.36607142857143 AS "E" UNION ALL SELECT 7 AS nid, 180.5909090909091 AS "E" UNION ALL SELECT 10 AS nid, 84.42857142857143 AS "E" UNION ALL SELECT 11 AS nid, 188.15 AS "E" UNION ALL SELECT 13 AS nid, 95.75 AS "E" UNION ALL SELECT 14 AS nid, 245.1559633027523 AS "E") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"ADB_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator", 0.049332611959984965 AS "Weight", 9 AS est_index 
FROM "DT_Output_9")
 INSERT INTO "TMP_20221018185730_2AQHRF6_WE_B0" ("KEY", "Estimator", "Weight", est_index) SELECT "T"."KEY", "T"."Estimator", "T"."Weight", "T".est_index 
FROM (SELECT "WE_B0"."KEY" AS "KEY", "WE_B0"."Estimator" AS "Estimator", "WE_B0"."Weight" AS "Weight", "WE_B0".est_index AS est_index 
FROM (SELECT "WE_esu_0"."KEY" AS "KEY", "WE_esu_0"."Estimator" AS "Estimator", "WE_esu_0"."Weight" AS "Weight", "WE_esu_0".est_index AS est_index 
FROM (SELECT "ADB_Model_0"."KEY" AS "KEY", "ADB_Model_0"."Estimator" AS "Estimator", "ADB_Model_0"."Weight" AS "Weight", "ADB_Model_0".est_index AS est_index 
FROM "ADB_Model_0" UNION ALL SELECT "ADB_Model_1"."KEY" AS "KEY", "ADB_Model_1"."Estimator" AS "Estimator", "ADB_Model_1"."Weight" AS "Weight", "ADB_Model_1".est_index AS est_index 
FROM "ADB_Model_1" UNION ALL SELECT "ADB_Model_2"."KEY" AS "KEY", "ADB_Model_2"."Estimator" AS "Estimator", "ADB_Model_2"."Weight" AS "Weight", "ADB_Model_2".est_index AS est_index 
FROM "ADB_Model_2" UNION ALL SELECT "ADB_Model_3"."KEY" AS "KEY", "ADB_Model_3"."Estimator" AS "Estimator", "ADB_Model_3"."Weight" AS "Weight", "ADB_Model_3".est_index AS est_index 
FROM "ADB_Model_3" UNION ALL SELECT "ADB_Model_4"."KEY" AS "KEY", "ADB_Model_4"."Estimator" AS "Estimator", "ADB_Model_4"."Weight" AS "Weight", "ADB_Model_4".est_index AS est_index 
FROM "ADB_Model_4" UNION ALL SELECT "ADB_Model_5"."KEY" AS "KEY", "ADB_Model_5"."Estimator" AS "Estimator", "ADB_Model_5"."Weight" AS "Weight", "ADB_Model_5".est_index AS est_index 
FROM "ADB_Model_5" UNION ALL SELECT "ADB_Model_6"."KEY" AS "KEY", "ADB_Model_6"."Estimator" AS "Estimator", "ADB_Model_6"."Weight" AS "Weight", "ADB_Model_6".est_index AS est_index 
FROM "ADB_Model_6" UNION ALL SELECT "ADB_Model_7"."KEY" AS "KEY", "ADB_Model_7"."Estimator" AS "Estimator", "ADB_Model_7"."Weight" AS "Weight", "ADB_Model_7".est_index AS est_index 
FROM "ADB_Model_7" UNION ALL SELECT "ADB_Model_8"."KEY" AS "KEY", "ADB_Model_8"."Estimator" AS "Estimator", "ADB_Model_8"."Weight" AS "Weight", "ADB_Model_8".est_index AS est_index 
FROM "ADB_Model_8" UNION ALL SELECT "ADB_Model_9"."KEY" AS "KEY", "ADB_Model_9"."Estimator" AS "Estimator", "ADB_Model_9"."Weight" AS "Weight", "ADB_Model_9".est_index AS est_index 
FROM "ADB_Model_9") AS "WE_esu_0") AS "WE_B0") AS "T"

-- Code For temporary table TMP_20221018185730_XDBLXDF_WE_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185730_XDBLXDF_WE_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT, 
	"Weight" FLOAT, 
	est_index BIGINT
)



-- Code For temporary table TMP_20221018185730_XDBLXDF_WE_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.6929373443126678) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.4597100019454956) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.890932857990265) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= -0.6855109632015228) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 <= 2.8964749574661255) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -0.7442532181739807) THEN 10 ELSE 11 END ELSE 12 END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 241.08333333333334 AS "E" UNION ALL SELECT 4 AS nid, 140.1718061674009 AS "E" UNION ALL SELECT 6 AS nid, 140.66666666666666 AS "E" UNION ALL SELECT 7 AS nid, 293.2142857142857 AS "E" UNION ALL SELECT 10 AS nid, 280.48387096774195 AS "E" UNION ALL SELECT 11 AS nid, 224.42 AS "E" UNION ALL SELECT 12 AS nid, 84.0 AS "E") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"ADB_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator", 0.05509849048059811 AS "Weight", 10 AS est_index 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.3485626131296158) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.03291649604216218) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= -0.24396099895238876) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.6100610792636871) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 0.29165156185626984) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= -0.434483140707016) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= 1.0426516830921173) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 84.80701754385964 AS "E" UNION ALL SELECT 4 AS nid, 140.04761904761904 AS "E" UNION ALL SELECT 6 AS nid, 219.1086956521739 AS "E" UNION ALL SELECT 7 AS nid, 139.91304347826087 AS "E" UNION ALL SELECT 10 AS nid, 143.55555555555554 AS "E" UNION ALL SELECT 11 AS nid, 246.25555555555556 AS "E" UNION ALL SELECT 13 AS nid, 115.78125 AS "E" UNION ALL SELECT 14 AS nid, 283.0 AS "E") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"ADB_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator", 0.07327662479353664 AS "Weight", 11 AS est_index 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.9889585971832275) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.5539024770259857) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= -0.17430918663740158) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.890932857990265) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.1220130324363708) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.10640111565589905) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -1.2423259019851685) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 84.50943396226415 AS "E" UNION ALL SELECT 4 AS nid, 154.33333333333334 AS "E" UNION ALL SELECT 6 AS nid, 302.0 AS "E" UNION ALL SELECT 7 AS nid, 163.6755319148936 AS "E" UNION ALL SELECT 10 AS nid, 221.0 AS "E" UNION ALL SELECT 11 AS nid, 88.0 AS "E" UNION ALL SELECT 13 AS nid, 78.0 AS "E" UNION ALL SELECT 14 AS nid, 273.7719298245614 AS "E") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"ADB_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator", 0.07936984529784054 AS "Weight", 12 AS est_index 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.5036679357290268) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 <= -1.2842937111854553) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.6012694239616394) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.6080565750598907) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= -0.347758486866951) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.2033045887947083) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.3275563716888428) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 115.66666666666667 AS "E" UNION ALL SELECT 4 AS nid, 223.8 AS "E" UNION ALL SELECT 6 AS nid, 80.0909090909091 AS "E" UNION ALL SELECT 7 AS nid, 119.64 AS "E" UNION ALL SELECT 10 AS nid, 110.19117647058823 AS "E" UNION ALL SELECT 11 AS nid, 247.69230769230768 AS "E" UNION ALL SELECT 13 AS nid, 212.4364640883978 AS "E" UNION ALL SELECT 14 AS nid, 67.63636363636364 AS "E") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"ADB_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator", 0.038850617774453804 AS "Weight", 13 AS est_index 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= 0.25409863144159317) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.11634615436196327) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 1.0845759212970734) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.6963594853878021) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.5630456805229187) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.6929373443126678) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -0.9434657096862793) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 109.66981132075472 AS "E" UNION ALL SELECT 4 AS nid, 254.5 AS "E" UNION ALL SELECT 6 AS nid, 117.42857142857143 AS "E" UNION ALL SELECT 7 AS nid, 215.9 AS "E" UNION ALL SELECT 10 AS nid, 171.64150943396226 AS "E" UNION ALL SELECT 11 AS nid, 237.231884057971 AS "E" UNION ALL SELECT 13 AS nid, 333.46666666666664 AS "E" UNION ALL SELECT 14 AS nid, 201.0 AS "E") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"ADB_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator", 0.028817127501800297 AS "Weight", 14 AS est_index 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_11 <= 0.779662013053894) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 2.194541573524475) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_10 <= -0.7116305530071259) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 <= 0.4051949828863144) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 3.456969738006592) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.07041918486356735) THEN 10 ELSE 11 END ELSE 12 END END AS node_id_2 
FROM "TMP_20221018185730_43FATYF_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 94.078125 AS "E" UNION ALL SELECT 4 AS nid, 153.45 AS "E" UNION ALL SELECT 6 AS nid, 341.77777777777777 AS "E" UNION ALL SELECT 7 AS nid, 238.66666666666666 AS "E" UNION ALL SELECT 10 AS nid, 181.36363636363637 AS "E" UNION ALL SELECT 11 AS nid, 274.84313725490193 AS "E" UNION ALL SELECT 12 AS nid, 84.0 AS "E") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"ADB_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator", 0.010788108085740374 AS "Weight", 15 AS est_index 
FROM "DT_Output_15")
 INSERT INTO "TMP_20221018185730_XDBLXDF_WE_B1" ("KEY", "Estimator", "Weight", est_index) SELECT "T"."KEY", "T"."Estimator", "T"."Weight", "T".est_index 
FROM (SELECT "WE_B1"."KEY" AS "KEY", "WE_B1"."Estimator" AS "Estimator", "WE_B1"."Weight" AS "Weight", "WE_B1".est_index AS est_index 
FROM (SELECT "WE_esu_1"."KEY" AS "KEY", "WE_esu_1"."Estimator" AS "Estimator", "WE_esu_1"."Weight" AS "Weight", "WE_esu_1".est_index AS est_index 
FROM (SELECT "ADB_Model_10"."KEY" AS "KEY", "ADB_Model_10"."Estimator" AS "Estimator", "ADB_Model_10"."Weight" AS "Weight", "ADB_Model_10".est_index AS est_index 
FROM "ADB_Model_10" UNION ALL SELECT "ADB_Model_11"."KEY" AS "KEY", "ADB_Model_11"."Estimator" AS "Estimator", "ADB_Model_11"."Weight" AS "Weight", "ADB_Model_11".est_index AS est_index 
FROM "ADB_Model_11" UNION ALL SELECT "ADB_Model_12"."KEY" AS "KEY", "ADB_Model_12"."Estimator" AS "Estimator", "ADB_Model_12"."Weight" AS "Weight", "ADB_Model_12".est_index AS est_index 
FROM "ADB_Model_12" UNION ALL SELECT "ADB_Model_13"."KEY" AS "KEY", "ADB_Model_13"."Estimator" AS "Estimator", "ADB_Model_13"."Weight" AS "Weight", "ADB_Model_13".est_index AS est_index 
FROM "ADB_Model_13" UNION ALL SELECT "ADB_Model_14"."KEY" AS "KEY", "ADB_Model_14"."Estimator" AS "Estimator", "ADB_Model_14"."Weight" AS "Weight", "ADB_Model_14".est_index AS est_index 
FROM "ADB_Model_14" UNION ALL SELECT "ADB_Model_15"."KEY" AS "KEY", "ADB_Model_15"."Estimator" AS "Estimator", "ADB_Model_15"."Weight" AS "Weight", "ADB_Model_15".est_index AS est_index 
FROM "ADB_Model_15") AS "WE_esu_1") AS "WE_B1") AS "T"

-- Code For temporary table TMP_20221018185730_IGUO93I_Quantiles part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185730_IGUO93I_Quantiles" (
	"KEY" BIGINT, 
	"Quantile" FLOAT
)



-- Code For temporary table TMP_20221018185730_IGUO93I_Quantiles part 2. Populate

WITH "WE_Union" AS 
(SELECT "WE_EnsembleUnion"."KEY" AS "KEY", "WE_EnsembleUnion"."Estimator" AS "Estimator", "WE_EnsembleUnion"."Weight" AS "Weight", "WE_EnsembleUnion".est_index AS est_index 
FROM (SELECT "WE_B0"."KEY" AS "KEY", "WE_B0"."Estimator" AS "Estimator", "WE_B0"."Weight" AS "Weight", "WE_B0".est_index AS est_index 
FROM "TMP_20221018185730_2AQHRF6_WE_B0" AS "WE_B0" UNION ALL SELECT "WE_B1"."KEY" AS "KEY", "WE_B1"."Estimator" AS "Estimator", "WE_B1"."Weight" AS "Weight", "WE_B1".est_index AS est_index 
FROM "TMP_20221018185730_XDBLXDF_WE_B1" AS "WE_B1") AS "WE_EnsembleUnion"), 
"Cumulative_Frequencies" AS 
(SELECT "CW"."KEY" AS "KEY", "CW"."Estimator" AS "Estimator", "CW"."Weight" AS "Weight", "CW".est_index AS est_index, "CW".cum_weight AS cum_weight 
FROM (SELECT u1."KEY" AS "KEY", u1."Estimator" AS "Estimator", u1."Weight" AS "Weight", u1.est_index AS est_index, sum(u2."Weight") AS cum_weight 
FROM "WE_Union" AS u1, "WE_Union" AS u2 
WHERE u1."Estimator" >= u2."Estimator" AND u1."KEY" = u2."KEY" GROUP BY u1."KEY", u1.est_index, u1."Estimator", u1."Weight") AS "CW")
 INSERT INTO "TMP_20221018185730_IGUO93I_Quantiles" ("KEY", "Quantile") SELECT "T"."KEY", "T"."Quantile" 
FROM (SELECT "Quantiles"."KEY" AS "KEY", "Quantiles"."Quantile" AS "Quantile" 
FROM (SELECT "CW2"."KEY" AS "KEY", "CW2"."Quantile" AS "Quantile" 
FROM (SELECT "Cumulative_Frequencies"."KEY" AS "KEY", min("Cumulative_Frequencies"."Estimator") AS "Quantile" 
FROM "Cumulative_Frequencies" 
WHERE "Cumulative_Frequencies".cum_weight >= 0.5 GROUP BY "Cumulative_Frequencies"."KEY") AS "CW2") AS "Quantiles") AS "T"

-- Model deployment code

SELECT "Quantiles"."KEY" AS "KEY", "Quantiles"."Quantile" AS "Estimator" 
FROM "TMP_20221018185730_IGUO93I_Quantiles" AS "Quantiles"