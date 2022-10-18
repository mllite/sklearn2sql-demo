-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor
-- Dataset : freidman2
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190218_3YZQB4D_HL_1_relu_1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190218_3YZQB4D_HL_1_relu_1" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_1_1" DOUBLE, 
	"NEUR_1_2" DOUBLE, 
	"NEUR_1_3" DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190218_3YZQB4D_HL_1_relu_1 part 2. Populate

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3" 
FROM freidman2 AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.13457898069384014 * "IL"."Feature_0" + -0.5913154540878668 * "IL"."Feature_1" + -0.7323646406260108 * "IL"."Feature_2" + -0.8190413392944927 * "IL"."Feature_3" + 0.34759387273386655 AS "NEUR_1_1", 219.080345199504 * "IL"."Feature_0" + 66.59550912522046 * "IL"."Feature_1" + 960.9118464681899 * "IL"."Feature_2" + 1322.0250426076527 * "IL"."Feature_3" + -56.28627436841331 AS "NEUR_1_2", 0.8773233178782269 * "IL"."Feature_0" + -0.6009036829341086 * "IL"."Feature_1" + 0.4905832164090919 * "IL"."Feature_2" + 0.13171451969391773 * "IL"."Feature_3" + -0.5925122750607899 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 INSERT INTO "TMP_20221018190218_3YZQB4D_HL_1_relu_1" ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "T"."KEY", "T"."NEUR_1_1", "T"."NEUR_1_2", "T"."NEUR_1_3" 
FROM (SELECT "HL_1_relu_1"."KEY" AS "KEY", "HL_1_relu_1"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu_1"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" AS "NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "T"

-- Code For temporary table TMP_20221018190218_3YZQB4D_HL_1_relu_1 part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190218_3YZQB4D_HL_1_relu_1_KEY" ON "TMP_20221018190218_3YZQB4D_HL_1_relu_1" ("KEY")

-- Code For temporary table TMP_20221018190218_62UUJ4R_OL_identity_1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190218_62UUJ4R_OL_identity_1" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_3_1" DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190218_62UUJ4R_OL_identity_1 part 2. Populate

WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", 0.6727950510080325 * "HL_1_relu_1"."NEUR_1_1" + 0.017904423298620346 * "HL_1_relu_1"."NEUR_1_2" + 0.7300223583286978 * "HL_1_relu_1"."NEUR_1_3" + -76.11586975070965 AS "NEUR_2_1", 0.6488379317980152 * "HL_1_relu_1"."NEUR_1_1" + -0.06939519902889744 * "HL_1_relu_1"."NEUR_1_2" + -0.6459340203856221 * "HL_1_relu_1"."NEUR_1_3" + -0.5292904296119374 AS "NEUR_2_2", -0.30072100484401415 * "HL_1_relu_1"."NEUR_1_1" + -0.8273485954290702 * "HL_1_relu_1"."NEUR_1_2" + -0.30104747564584294 * "HL_1_relu_1"."NEUR_1_3" + -0.010394282503777497 AS "NEUR_2_3", -0.341332805094576 * "HL_1_relu_1"."NEUR_1_1" + -0.5189018647788072 * "HL_1_relu_1"."NEUR_1_2" + -0.12233023277959701 * "HL_1_relu_1"."NEUR_1_3" + -0.7406283496068888 AS "NEUR_2_4", -0.3867698698321797 * "HL_1_relu_1"."NEUR_1_1" + -0.027592353723123953 * "HL_1_relu_1"."NEUR_1_2" + 0.7252800004604185 * "HL_1_relu_1"."NEUR_1_3" + -0.14939322656497145 AS "NEUR_2_5" 
FROM "TMP_20221018190218_3YZQB4D_HL_1_relu_1" AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.41237882863742603 * "HL_2_relu"."NEUR_2_1" + 0.12827527867865748 * "HL_2_relu"."NEUR_2_2" + -0.718398479638573 * "HL_2_relu"."NEUR_2_3" + 0.6829625822464676 * "HL_2_relu"."NEUR_2_4" + 0.7680841259928869 * "HL_2_relu"."NEUR_2_5" + -67.94367955352224 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 INSERT INTO "TMP_20221018190218_62UUJ4R_OL_identity_1" ("KEY", "NEUR_3_1") SELECT "T"."KEY", "T"."NEUR_3_1" 
FROM (SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "T"

-- Code For temporary table TMP_20221018190218_62UUJ4R_OL_identity_1 part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190218_62UUJ4R_OL_identity_1_KEY" ON "TMP_20221018190218_62UUJ4R_OL_identity_1" ("KEY")

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM "TMP_20221018190218_62UUJ4R_OL_identity_1" AS "OL_identity_1"