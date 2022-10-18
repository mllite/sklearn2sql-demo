-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingRegressor_Pipeline
-- Dataset : california_housing
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018185619_HM3F5O4_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185619_HM3F5O4_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 FLOAT, 
	imputer_output_3 FLOAT, 
	imputer_output_4 FLOAT, 
	imputer_output_5 FLOAT, 
	imputer_output_6 FLOAT, 
	imputer_output_7 FLOAT, 
	imputer_output_8 FLOAT, 
	imputer_output_9 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018185619_HM3F5O4_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018185619_HM3F5O4_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 3.875277222625981 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 28.659944282945737 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 5.428657238393813 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.096090907040768 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 1423.4244186046512 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 3.014227103131199 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 35.62345445736438 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -119.55986736918535 ELSE "ADS"."Feature_7" END AS imputer_output_9 
FROM california_housing AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018185619_HM3F5O4_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185619_HM3F5O4_ADS_imp_1_OUT_KEY" ON "TMP_20221018185619_HM3F5O4_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 FLOAT, 
	scaler_output_3 FLOAT, 
	scaler_output_4 FLOAT, 
	scaler_output_5 FLOAT, 
	scaler_output_6 FLOAT, 
	scaler_output_7 FLOAT, 
	scaler_output_8 FLOAT, 
	scaler_output_9 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 3.875277222625981) / 1.9053899472815896 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 28.659944282945737) / 12.6088852253006 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 5.428657238393813) / 2.5399058358138342 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 1.096090907040768) / 0.4891610828680933 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS FLOAT) - 1423.4244186046512) / 1119.3930591342048 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS FLOAT) - 3.014227103131199) / 6.18082640740381 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS FLOAT) - 35.62345445736438) / 2.1377165043713364 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS FLOAT) - -119.55986736918535) / 2.003934000482767 AS scaler_output_9 
FROM "TMP_20221018185619_HM3F5O4_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT_KEY" ON "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20221018185619_3CB6M22_GB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185619_3CB6M22_GB_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20221018185619_3CB6M22_GB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.6307752430438995) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.42037442326545715) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.43878330290317535) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.09946303814649582) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.54523366689682) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.07097429409623146) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 2.067751407623291) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -0.44312652194059715 AS "E" UNION ALL SELECT 4 AS nid, -0.9052645789279938 AS "E" UNION ALL SELECT 6 AS nid, 0.7053443548690992 AS "E" UNION ALL SELECT 7 AS nid, -0.20307626075600219 AS "E" UNION ALL SELECT 10 AS nid, 1.5167648730889312 AS "E" UNION ALL SELECT 11 AS nid, 0.5900211391441783 AS "E" UNION ALL SELECT 13 AS nid, 1.707839305053506 AS "E" UNION ALL SELECT 14 AS nid, 2.4963116705929576 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"GB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.8995128870010376) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.16331419348716736) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.12548410892486572) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.09781846031546593) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.958587408065796) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.05820167064666748) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 2.7104806900024414) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 0.00020269833662784156 AS "E" UNION ALL SELECT 4 AS nid, -0.6616935974807607 AS "E" UNION ALL SELECT 6 AS nid, 0.8726864939431281 AS "E" UNION ALL SELECT 7 AS nid, -0.010449270091117567 AS "E" UNION ALL SELECT 10 AS nid, 1.6172957262265228 AS "E" UNION ALL SELECT 11 AS nid, 0.8291980507972659 AS "E" UNION ALL SELECT 13 AS nid, 1.9163820433778405 AS "E" UNION ALL SELECT 14 AS nid, 2.4825212438311888 AS "E") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"GB_Model_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.3441147357225418) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.6362357437610626) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.6330588757991791) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.12150914967060089) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.31549072265625) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.035668570548295975) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 2.067751407623291) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -0.2879736532080952 AS "E" UNION ALL SELECT 4 AS nid, -0.8314436289817553 AS "E" UNION ALL SELECT 6 AS nid, 0.5603781777629343 AS "E" UNION ALL SELECT 7 AS nid, -0.2715124352827093 AS "E" UNION ALL SELECT 10 AS nid, 0.8763073984444052 AS "E" UNION ALL SELECT 11 AS nid, 0.18895074917046226 AS "E" UNION ALL SELECT 13 AS nid, 1.314351964296669 AS "E" UNION ALL SELECT 14 AS nid, 2.025231104582633 AS "E") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"GB_Model_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.5359127521514893) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.5473038256168365) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.6330588757991791) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.12734098732471466) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.4206397533416748) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.05147075653076172) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.17130335420370102) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -0.23190807440548403 AS "E" UNION ALL SELECT 4 AS nid, -0.7017019477514375 AS "E" UNION ALL SELECT 6 AS nid, 0.6319694941069367 AS "E" UNION ALL SELECT 7 AS nid, -0.16564581527785102 AS "E" UNION ALL SELECT 10 AS nid, 0.9608815913750256 AS "E" UNION ALL SELECT 11 AS nid, 0.3091839097764397 AS "E" UNION ALL SELECT 13 AS nid, 1.227666025212648 AS "E" UNION ALL SELECT 14 AS nid, 1.8885733911595923 AS "E") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"GB_Model_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.13344921171665192) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.14136619120836258) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.1000268459320068) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.6904503703117371) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.284447193145752) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.09202264249324799) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 2.571480393409729) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 0.37230367101285305 AS "E" UNION ALL SELECT 4 AS nid, -0.6263431838613924 AS "E" UNION ALL SELECT 6 AS nid, -0.6484091060539883 AS "E" UNION ALL SELECT 7 AS nid, -0.26875465262697024 AS "E" UNION ALL SELECT 10 AS nid, 0.9167425716312302 AS "E" UNION ALL SELECT 11 AS nid, 0.18162057566513792 AS "E" UNION ALL SELECT 13 AS nid, 1.128692489378659 AS "E" UNION ALL SELECT 14 AS nid, 1.8498130313268724 AS "E") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"GB_Model_4_0" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.7398867607116699) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.35917961597442627) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -0.5465899705886841) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.10369524359703064) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.62637197971344) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= 0.001443422050215304) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.5678491294384003) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -0.23684481423906711 AS "E" UNION ALL SELECT 4 AS nid, -0.6021431551762169 AS "E" UNION ALL SELECT 6 AS nid, 0.5743281546156297 AS "E" UNION ALL SELECT 7 AS nid, -0.08928493693112584 AS "E" UNION ALL SELECT 10 AS nid, 0.8296658454285138 AS "E" UNION ALL SELECT 11 AS nid, 0.20238237212543503 AS "E" UNION ALL SELECT 13 AS nid, 1.0198303665350728 AS "E" UNION ALL SELECT 14 AS nid, 1.5446082178558176 AS "E") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"GB_Model_5_0" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.13386906683444977) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.15916255116462708) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.3299216628074646) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.8124201595783234) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.1820797324180603) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.03829207830131054) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.17130335420370102) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -0.13204646199337702 AS "E" UNION ALL SELECT 4 AS nid, 0.5902810703405394 AS "E" UNION ALL SELECT 6 AS nid, -0.5862775145557545 AS "E" UNION ALL SELECT 7 AS nid, -0.22949712783052376 AS "E" UNION ALL SELECT 10 AS nid, 0.5626445192472704 AS "E" UNION ALL SELECT 11 AS nid, 0.015619992245401405 AS "E" UNION ALL SELECT 13 AS nid, 0.7514284036228035 AS "E" UNION ALL SELECT 14 AS nid, 1.3453471183577421 AS "E") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"GB_Model_6_0" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.2685396671295166) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.0719595551490784) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= -1.3698717951774597) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.7408975958824158) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.4206397533416748) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.6471582651138306) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 2.583420157432556) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 1.0436917125913536 AS "E" UNION ALL SELECT 4 AS nid, -0.18281898858828705 AS "E" UNION ALL SELECT 6 AS nid, -0.5191821642883578 AS "E" UNION ALL SELECT 7 AS nid, -0.8318132386755528 AS "E" UNION ALL SELECT 10 AS nid, -0.007654101836825345 AS "E" UNION ALL SELECT 11 AS nid, 0.5068273554142004 AS "E" UNION ALL SELECT 13 AS nid, 0.8599261579259215 AS "E" UNION ALL SELECT 14 AS nid, 1.4239759312878064 AS "E") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"GB_Model_7_0" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.8995128870010376) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.2880917936563492) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.4357299208641052) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.0709584467113018) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.09199419990181923) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 2.571480393409729) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 <= -1.1291158199310303) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -0.11068586247664675 AS "E" UNION ALL SELECT 4 AS nid, -0.43787642000797444 AS "E" UNION ALL SELECT 6 AS nid, 0.41855312814242635 AS "E" UNION ALL SELECT 7 AS nid, -0.08806073729983185 AS "E" UNION ALL SELECT 10 AS nid, 0.4019128678326684 AS "E" UNION ALL SELECT 11 AS nid, 1.2810257408399426 AS "E" UNION ALL SELECT 13 AS nid, -0.22934567704196376 AS "E" UNION ALL SELECT 14 AS nid, 1.0764383174531111 AS "E") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"GB_Model_8_0" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.10282555222511292) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.1163867823779583) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.0813153386116028) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -0.5419121086597443) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.1820797324180603) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.09202264249324799) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.17130335420370102) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 0.2861551889497951 AS "E" UNION ALL SELECT 4 AS nid, -0.46075889995984937 AS "E" UNION ALL SELECT 6 AS nid, -0.15768334424764566 AS "E" UNION ALL SELECT 7 AS nid, -0.44908599561214646 AS "E" UNION ALL SELECT 10 AS nid, 0.6188655961408298 AS "E" UNION ALL SELECT 11 AS nid, 0.07363112072017076 AS "E" UNION ALL SELECT 13 AS nid, 0.5445823714091345 AS "E" UNION ALL SELECT 14 AS nid, 1.0180671298231823 AS "E") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"GB_Model_9_0" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20221018185619_3CB6M22_GB_B0" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "GB_B0"."KEY" AS "KEY", "GB_B0"."Estimator" AS "Estimator" 
FROM (SELECT "GB_esu_0"."KEY" AS "KEY", "GB_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "GB_Model_0_0"."KEY" AS "KEY", "GB_Model_0_0"."Estimator" AS "Estimator" 
FROM "GB_Model_0_0" UNION ALL SELECT "GB_Model_1_0"."KEY" AS "KEY", "GB_Model_1_0"."Estimator" AS "Estimator" 
FROM "GB_Model_1_0" UNION ALL SELECT "GB_Model_2_0"."KEY" AS "KEY", "GB_Model_2_0"."Estimator" AS "Estimator" 
FROM "GB_Model_2_0" UNION ALL SELECT "GB_Model_3_0"."KEY" AS "KEY", "GB_Model_3_0"."Estimator" AS "Estimator" 
FROM "GB_Model_3_0" UNION ALL SELECT "GB_Model_4_0"."KEY" AS "KEY", "GB_Model_4_0"."Estimator" AS "Estimator" 
FROM "GB_Model_4_0" UNION ALL SELECT "GB_Model_5_0"."KEY" AS "KEY", "GB_Model_5_0"."Estimator" AS "Estimator" 
FROM "GB_Model_5_0" UNION ALL SELECT "GB_Model_6_0"."KEY" AS "KEY", "GB_Model_6_0"."Estimator" AS "Estimator" 
FROM "GB_Model_6_0" UNION ALL SELECT "GB_Model_7_0"."KEY" AS "KEY", "GB_Model_7_0"."Estimator" AS "Estimator" 
FROM "GB_Model_7_0" UNION ALL SELECT "GB_Model_8_0"."KEY" AS "KEY", "GB_Model_8_0"."Estimator" AS "Estimator" 
FROM "GB_Model_8_0" UNION ALL SELECT "GB_Model_9_0"."KEY" AS "KEY", "GB_Model_9_0"."Estimator" AS "Estimator" 
FROM "GB_Model_9_0") AS "GB_esu_0") AS "GB_B0") AS "T"

-- Code For temporary table TMP_20221018185619_NYMEI49_GB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185619_NYMEI49_GB_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20221018185619_NYMEI49_GB_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.03134412318468094) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.1163867823779583) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.0813153386116028) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -0.5465899705886841) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.9641977846622467) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.8057765662670135) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 2.0777231454849243) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 0.24116037746442456 AS "E" UNION ALL SELECT 4 AS nid, -0.4178362619984955 AS "E" UNION ALL SELECT 6 AS nid, -0.1553990294621954 AS "E" UNION ALL SELECT 7 AS nid, -0.4188081301861694 AS "E" UNION ALL SELECT 10 AS nid, -0.20971979093764445 AS "E" UNION ALL SELECT 11 AS nid, 0.29328499073639075 AS "E" UNION ALL SELECT 13 AS nid, 0.47713102271570285 AS "E" UNION ALL SELECT 14 AS nid, 0.9850279340017476 AS "E") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"GB_Model_10_0" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.42903174459934235) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.7864149808883667) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.8280438780784607) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.15662602335214615) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.7767874002456665) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.17130335420370102) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 <= -1.2211300134658813) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 0.11238277951708536 AS "E" UNION ALL SELECT 4 AS nid, -0.46307777412407053 AS "E" UNION ALL SELECT 6 AS nid, 0.4881692678751261 AS "E" UNION ALL SELECT 7 AS nid, -0.0964477709292823 AS "E" UNION ALL SELECT 10 AS nid, 0.07322205498791358 AS "E" UNION ALL SELECT 11 AS nid, 0.5181634804562282 AS "E" UNION ALL SELECT 13 AS nid, -0.6826844195334073 AS "E" UNION ALL SELECT 14 AS nid, 0.8259601047303767 AS "E") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"GB_Model_11_0" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.11156625673174858) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.8715156614780426) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.8280438780784607) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.287582203745842) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.01655842550098896) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.0953490138053894) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 2.169620394706726) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 0.06120639389051556 AS "E" UNION ALL SELECT 4 AS nid, -0.45829009534185655 AS "E" UNION ALL SELECT 6 AS nid, 0.10161787991096431 AS "E" UNION ALL SELECT 7 AS nid, -0.27419904067288964 AS "E" UNION ALL SELECT 10 AS nid, 0.48419843797004664 AS "E" UNION ALL SELECT 11 AS nid, -0.26337239299917536 AS "E" UNION ALL SELECT 13 AS nid, -0.07411915794245501 AS "E" UNION ALL SELECT 14 AS nid, 0.7476221136607862 AS "E") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"GB_Model_12_0" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.8995128870010376) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.02094398345798254) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.0766374468803406) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 1.0204265117645264) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.09199419990181923) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 2.7278788089752197) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 <= -1.1291158199310303) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 0.18426633261316216 AS "E" UNION ALL SELECT 4 AS nid, -0.33685318902081335 AS "E" UNION ALL SELECT 6 AS nid, -0.18904954434740742 AS "E" UNION ALL SELECT 7 AS nid, -0.49805924512912925 AS "E" UNION ALL SELECT 10 AS nid, 0.23385931090182668 AS "E" UNION ALL SELECT 11 AS nid, 0.9049436043621608 AS "E" UNION ALL SELECT 13 AS nid, -0.4246451454959122 AS "E" UNION ALL SELECT 14 AS nid, 0.7220560379794618 AS "E") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"GB_Model_13_0" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.009380115196108818) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= 0.8906817138195038) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -0.4670659005641937) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -0.9652610421180725) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.8850857317447662) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.9634105563163757) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.1532861664891243) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 0.14396074207672885 AS "E" UNION ALL SELECT 4 AS nid, -0.24691964993100732 AS "E" UNION ALL SELECT 6 AS nid, -0.27633015650251636 AS "E" UNION ALL SELECT 7 AS nid, -0.5643665397490744 AS "E" UNION ALL SELECT 10 AS nid, -0.21810714195127734 AS "E" UNION ALL SELECT 11 AS nid, 0.19702727776982226 AS "E" UNION ALL SELECT 13 AS nid, 1.2344686614491844 AS "E" UNION ALL SELECT 14 AS nid, 0.25913045793112305 AS "E") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"GB_Model_14_0" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.7406215071678162) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_9 <= -1.4048030972480774) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= 1.1140604615211487) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_8 <= -0.5372342467308044) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 2.067751407623291) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_7 <= -0.07028809562325478) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_6 <= -1.2211300134658813) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20221018185619_ZLS4XGT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, 0.9239835013344766 AS "E" UNION ALL SELECT 4 AS nid, -0.1545746064755435 AS "E" UNION ALL SELECT 6 AS nid, 0.006942993749696598 AS "E" UNION ALL SELECT 7 AS nid, -0.2780770991325503 AS "E" UNION ALL SELECT 10 AS nid, 0.5619877484303821 AS "E" UNION ALL SELECT 11 AS nid, 0.1482789463716301 AS "E" UNION ALL SELECT 13 AS nid, -0.871890255168572 AS "E" UNION ALL SELECT 14 AS nid, 0.6883776695671702 AS "E") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"GB_Model_15_0" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20221018185619_NYMEI49_GB_B1" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "GB_B1"."KEY" AS "KEY", "GB_B1"."Estimator" AS "Estimator" 
FROM (SELECT "GB_esu_1"."KEY" AS "KEY", "GB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "GB_Model_10_0"."KEY" AS "KEY", "GB_Model_10_0"."Estimator" AS "Estimator" 
FROM "GB_Model_10_0" UNION ALL SELECT "GB_Model_11_0"."KEY" AS "KEY", "GB_Model_11_0"."Estimator" AS "Estimator" 
FROM "GB_Model_11_0" UNION ALL SELECT "GB_Model_12_0"."KEY" AS "KEY", "GB_Model_12_0"."Estimator" AS "Estimator" 
FROM "GB_Model_12_0" UNION ALL SELECT "GB_Model_13_0"."KEY" AS "KEY", "GB_Model_13_0"."Estimator" AS "Estimator" 
FROM "GB_Model_13_0" UNION ALL SELECT "GB_Model_14_0"."KEY" AS "KEY", "GB_Model_14_0"."Estimator" AS "Estimator" 
FROM "GB_Model_14_0" UNION ALL SELECT "GB_Model_15_0"."KEY" AS "KEY", "GB_Model_15_0"."Estimator" AS "Estimator" 
FROM "GB_Model_15_0") AS "GB_esu_1") AS "GB_B1") AS "T"

-- Code For temporary table TMP_20221018185619_97TOXG5_GB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185619_97TOXG5_GB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018185619_97TOXG5_GB_sum part 2. Populate

WITH "GB_Union" AS 
(SELECT "GB_EnsembleUnion"."KEY" AS "KEY", "GB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "GB_B0"."KEY" AS "KEY", "GB_B0"."Estimator" AS "Estimator" 
FROM "TMP_20221018185619_3CB6M22_GB_B0" AS "GB_B0" UNION ALL SELECT "GB_B1"."KEY" AS "KEY", "GB_B1"."Estimator" AS "Estimator" 
FROM "TMP_20221018185619_NYMEI49_GB_B1" AS "GB_B1") AS "GB_EnsembleUnion")
 INSERT INTO "TMP_20221018185619_97TOXG5_GB_sum" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "GB_sum"."KEY" AS "KEY", "GB_sum"."Estimator" AS "Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT "GB_Union"."KEY" AS "KEY", sum("GB_Union"."Estimator") AS "Estimator" 
FROM "GB_Union" GROUP BY "GB_Union"."KEY") AS "T") AS "GB_sum") AS "T"

-- Code For temporary table TMP_20221018185619_97TOXG5_GB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185619_97TOXG5_GB_sum_KEY" ON "TMP_20221018185619_97TOXG5_GB_sum" ("KEY")

-- Model deployment code

SELECT "GB_sum"."KEY" AS "KEY", 2.071195173207365 + 0.1 * "GB_sum"."Estimator" AS "Estimator" 
FROM "TMP_20221018185619_97TOXG5_GB_sum" AS "GB_sum"