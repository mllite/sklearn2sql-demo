-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor
-- Dataset : california_housing
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018185628_B5NYAHC_HL_1_relu_1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185628_B5NYAHC_HL_1_relu_1" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_1_1" FLOAT, 
	"NEUR_1_2" FLOAT, 
	"NEUR_1_3" FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185628_B5NYAHC_HL_1_relu_1 part 2. Populate

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7" 
FROM california_housing AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.10898120273442617 * "IL"."Feature_0" + -0.4821576019502454 * "IL"."Feature_1" + -0.5864391078283345 * "IL"."Feature_2" + -0.6538192165242204 * "IL"."Feature_3" + -0.757418928722513 * "IL"."Feature_4" + 0.5723108357911934 * "IL"."Feature_5" + -0.30598493203411925 * "IL"."Feature_6" + -0.008971874577605241 * "IL"."Feature_7" + -0.023951502350587534 AS "NEUR_1_1", 2.387181384530331 * "IL"."Feature_0" + 0.09385260464442285 * "IL"."Feature_1" + 0.04799337946895391 * "IL"."Feature_2" + 0.3292002895137566 * "IL"."Feature_3" + -1.8146735698944167e-07 * "IL"."Feature_4" + -0.1342132560143962 * "IL"."Feature_5" + -1.0250831649025436 * "IL"."Feature_6" + -0.37584243239817317 * "IL"."Feature_7" + 0.6184974731272841 AS "NEUR_1_2", 0.6671610346652432 * "IL"."Feature_0" + -0.7040927202991432 * "IL"."Feature_1" + 0.25495758900609045 * "IL"."Feature_2" + 0.07238496629595144 * "IL"."Feature_3" + -0.836474454434538 * "IL"."Feature_4" + -0.28521743423361934 * "IL"."Feature_5" + 0.08107129204904055 * "IL"."Feature_6" + 0.845465564982729 * "IL"."Feature_7" + -0.5616625966376141 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 INSERT INTO "TMP_20221018185628_B5NYAHC_HL_1_relu_1" ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "T"."KEY", "T"."NEUR_1_1", "T"."NEUR_1_2", "T"."NEUR_1_3" 
FROM (SELECT "HL_1_relu_1"."KEY" AS "KEY", "HL_1_relu_1"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu_1"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" AS "NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "T"

-- Code For temporary table TMP_20221018185628_B5NYAHC_HL_1_relu_1 part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185628_B5NYAHC_HL_1_relu_1_KEY" ON "TMP_20221018185628_B5NYAHC_HL_1_relu_1" ("KEY")

-- Code For temporary table TMP_20221018185628_OMK53N9_OL_identity_1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185628_OMK53N9_OL_identity_1" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_3_1" FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185628_OMK53N9_OL_identity_1 part 2. Populate

WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -0.3010479012515013 * "HL_1_relu_1"."NEUR_1_1" + -0.014082608119470926 * "HL_1_relu_1"."NEUR_1_2" + -0.6221522129769206 * "HL_1_relu_1"."NEUR_1_3" + 0.4382559711959564 AS "NEUR_2_1", -0.12233040572071055 * "HL_1_relu_1"."NEUR_1_1" + -0.7394527182073457 * "HL_1_relu_1"."NEUR_1_2" + 0.6003335001504639 * "HL_1_relu_1"."NEUR_1_3" + 0.07942671296449588 AS "NEUR_2_2", 0.33966586505424096 * "HL_1_relu_1"."NEUR_1_1" + -0.4852503851372298 * "HL_1_relu_1"."NEUR_1_2" + 0.6834719469140915 * "HL_1_relu_1"."NEUR_1_3" + -0.7702196062071006 AS "NEUR_2_3", -0.4053223087516118 * "HL_1_relu_1"."NEUR_1_1" + 0.23351115781076373 * "HL_1_relu_1"."NEUR_1_2" + -0.15409075382836315 * "HL_1_relu_1"."NEUR_1_3" + 0.18399308558734462 AS "NEUR_2_4", -0.5292993832509993 * "HL_1_relu_1"."NEUR_1_1" + -0.3230651746284754 * "HL_1_relu_1"."NEUR_1_2" + -0.5047450962507369 * "HL_1_relu_1"."NEUR_1_3" + -0.40714272673051544 AS "NEUR_2_5" 
FROM "TMP_20221018185628_B5NYAHC_HL_1_relu_1" AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", -0.7589141089990331 * "HL_2_relu"."NEUR_2_1" + -0.2656906005735332 * "HL_2_relu"."NEUR_2_2" + -0.523377484914644 * "HL_2_relu"."NEUR_2_3" + 0.6728654961668358 * "HL_2_relu"."NEUR_2_4" + -0.8674656301817496 * "HL_2_relu"."NEUR_2_5" + -1.2686825090511507 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 INSERT INTO "TMP_20221018185628_OMK53N9_OL_identity_1" ("KEY", "NEUR_3_1") SELECT "T"."KEY", "T"."NEUR_3_1" 
FROM (SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "T"

-- Code For temporary table TMP_20221018185628_OMK53N9_OL_identity_1 part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185628_OMK53N9_OL_identity_1_KEY" ON "TMP_20221018185628_OMK53N9_OL_identity_1" ("KEY")

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM "TMP_20221018185628_OMK53N9_OL_identity_1" AS "OL_identity_1"