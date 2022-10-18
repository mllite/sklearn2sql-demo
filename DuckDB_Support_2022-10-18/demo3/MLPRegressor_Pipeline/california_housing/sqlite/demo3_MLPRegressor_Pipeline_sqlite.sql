-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : california_housing
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018185631_YFKDQ1C_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185631_YFKDQ1C_ADS_imp_1_OUT" (
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



-- Code For temporary table TMP_20221018185631_YFKDQ1C_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018185631_YFKDQ1C_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 3.875277222625981 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 28.659944282945737 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 5.428657238393813 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.096090907040768 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 1423.4244186046512 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 3.014227103131199 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 35.62345445736438 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -119.55986736918535 ELSE "ADS"."Feature_7" END AS imputer_output_9 
FROM california_housing AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018185631_YFKDQ1C_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185631_YFKDQ1C_ADS_imp_1_OUT_KEY" ON "TMP_20221018185631_YFKDQ1C_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018185631_78S3TEV_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185631_78S3TEV_ADS_sca_2_OUT" (
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



-- Code For temporary table TMP_20221018185631_78S3TEV_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018185631_78S3TEV_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 3.875277222625981) / 1.9053899472815896 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 28.659944282945737) / 12.6088852253006 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 5.428657238393813) / 2.5399058358138342 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 1.096090907040768) / 0.4891610828680933 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS FLOAT) - 1423.4244186046512) / 1119.3930591342048 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS FLOAT) - 3.014227103131199) / 6.18082640740381 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS FLOAT) - 35.62345445736438) / 2.1377165043713364 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS FLOAT) - -119.55986736918535) / 2.003934000482767 AS scaler_output_9 
FROM "TMP_20221018185631_YFKDQ1C_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018185631_78S3TEV_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185631_78S3TEV_ADS_sca_2_OUT_KEY" ON "TMP_20221018185631_78S3TEV_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20221018185631_C7D70B8_HL_1_relu_1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185631_C7D70B8_HL_1_relu_1" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_1_1" FLOAT, 
	"NEUR_1_2" FLOAT, 
	"NEUR_1_3" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018185631_C7D70B8_HL_1_relu_1 part 2. Populate

WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS FLOAT) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS FLOAT) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS FLOAT) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS FLOAT) AS scaler_output_5, CAST("ADS_sca_2_OUT".scaler_output_6 AS FLOAT) AS scaler_output_6, CAST("ADS_sca_2_OUT".scaler_output_7 AS FLOAT) AS scaler_output_7, CAST("ADS_sca_2_OUT".scaler_output_8 AS FLOAT) AS scaler_output_8, CAST("ADS_sca_2_OUT".scaler_output_9 AS FLOAT) AS scaler_output_9 
FROM "TMP_20221018185631_78S3TEV_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.39632119340901556 * "IL".scaler_output_2 + 0.7006146809335302 * "IL".scaler_output_3 + 1.0820937886339104 * "IL".scaler_output_4 + -2.4802754937247853 * "IL".scaler_output_5 + -0.5572047267086796 * "IL".scaler_output_6 + 0.504786379628292 * "IL".scaler_output_7 + 0.46366517243156247 * "IL".scaler_output_8 + 0.562522452486979 * "IL".scaler_output_9 + 0.8352553644281991 AS "NEUR_1_1", 1.5892101762739634 * "IL".scaler_output_2 + 0.3682249653662177 * "IL".scaler_output_3 + -0.04849701688831287 * "IL".scaler_output_4 + -0.00044225573312377904 * "IL".scaler_output_5 + -0.10869973853330411 * "IL".scaler_output_6 + -2.5430775463697617 * "IL".scaler_output_7 + -2.194389391005308 * "IL".scaler_output_8 + -1.915390013079744 * "IL".scaler_output_9 + 3.1515001116571546 AS "NEUR_1_2", 0.4929800689425043 * "IL".scaler_output_2 + 0.42625233499658954 * "IL".scaler_output_3 + 0.2543940005912035 * "IL".scaler_output_4 + -0.14512639203531286 * "IL".scaler_output_5 + 0.15196694894310528 * "IL".scaler_output_6 + -6.697938604448906 * "IL".scaler_output_7 + -1.1919515958972837 * "IL".scaler_output_8 + -0.9920405987379285 * "IL".scaler_output_9 + -0.7550622372946052 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", max("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", max("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", max("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 INSERT INTO "TMP_20221018185631_C7D70B8_HL_1_relu_1" ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "T"."KEY", "T"."NEUR_1_1", "T"."NEUR_1_2", "T"."NEUR_1_3" 
FROM (SELECT "HL_1_relu_1"."KEY" AS "KEY", "HL_1_relu_1"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu_1"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" AS "NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "T"

-- Code For temporary table TMP_20221018185631_C7D70B8_HL_1_relu_1 part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185631_C7D70B8_HL_1_relu_1_KEY" ON "TMP_20221018185631_C7D70B8_HL_1_relu_1" ("KEY")

-- Code For temporary table TMP_20221018185631_QAHGA7L_OL_identity_1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185631_QAHGA7L_OL_identity_1" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_3_1" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018185631_QAHGA7L_OL_identity_1 part 2. Populate

WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -0.4630429344999328 * "HL_1_relu_1"."NEUR_1_1" + -0.3455316075457766 * "HL_1_relu_1"."NEUR_1_2" + -0.6529334019139462 * "HL_1_relu_1"."NEUR_1_3" + -0.1747800264620129 AS "NEUR_2_1", -0.3045427377700216 * "HL_1_relu_1"."NEUR_1_1" + 0.30595771333640287 * "HL_1_relu_1"."NEUR_1_2" + 1.2377381824710707 * "HL_1_relu_1"."NEUR_1_3" + -3.5817982716402006 AS "NEUR_2_2", -0.5609426769922939 * "HL_1_relu_1"."NEUR_1_1" + -0.593459224610856 * "HL_1_relu_1"."NEUR_1_2" + 0.619374769912281 * "HL_1_relu_1"."NEUR_1_3" + -1.1142663122727723 AS "NEUR_2_3", -0.9075254666153864 * "HL_1_relu_1"."NEUR_1_1" + 1.4323747992379976 * "HL_1_relu_1"."NEUR_1_2" + 3.5811467853314465 * "HL_1_relu_1"."NEUR_1_3" + -0.18762728113953098 AS "NEUR_2_4", -0.5314717381307067 * "HL_1_relu_1"."NEUR_1_1" + -1.0174436913816993 * "HL_1_relu_1"."NEUR_1_2" + -0.5492827421891042 * "HL_1_relu_1"."NEUR_1_3" + -0.8714763788752796 AS "NEUR_2_5" 
FROM "TMP_20221018185631_C7D70B8_HL_1_relu_1" AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", max("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", max("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", max("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", max("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", max("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", -0.517173802065192 * "HL_2_relu"."NEUR_2_1" + -1.0031315258297144 * "HL_2_relu"."NEUR_2_2" + 1.000040247245871 * "HL_2_relu"."NEUR_2_3" + 0.27747052183140086 * "HL_2_relu"."NEUR_2_4" + -0.8368681561580796 * "HL_2_relu"."NEUR_2_5" + 0.910132134885598 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 INSERT INTO "TMP_20221018185631_QAHGA7L_OL_identity_1" ("KEY", "NEUR_3_1") SELECT "T"."KEY", "T"."NEUR_3_1" 
FROM (SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "T"

-- Code For temporary table TMP_20221018185631_QAHGA7L_OL_identity_1 part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185631_QAHGA7L_OL_identity_1_KEY" ON "TMP_20221018185631_QAHGA7L_OL_identity_1" ("KEY")

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM "TMP_20221018185631_QAHGA7L_OL_identity_1" AS "OL_identity_1"