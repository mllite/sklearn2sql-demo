-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor
-- Dataset : freidman1
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190124_ZPA1FFU_HL_1_relu_1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190124_ZPA1FFU_HL_1_relu_1" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_1_1" FLOAT, 
	"NEUR_1_2" FLOAT, 
	"NEUR_1_3" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018190124_ZPA1FFU_HL_1_relu_1 part 2. Populate

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."Feature_8" AS FLOAT) AS "Feature_8", CAST("ADS"."Feature_9" AS FLOAT) AS "Feature_9" 
FROM freidman1 AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.09875394232625596 * "IL"."Feature_0" + -0.4339067805639924 * "IL"."Feature_1" + -0.5374085545272445 * "IL"."Feature_2" + -0.6010118428037785 * "IL"."Feature_3" + 0.2550637068230972 * "IL"."Feature_4" + 0.5277836947410972 * "IL"."Feature_5" + -0.2677633979934737 * "IL"."Feature_6" + -0.05443805581229527 * "IL"."Feature_7" + -0.021645216284810875 * "IL"."Feature_8" + -0.23616099545440675 * "IL"."Feature_9" + -0.317960748726666 AS "NEUR_1_1", -0.03533260100381689 * "IL"."Feature_0" + -0.12085208242210474 * "IL"."Feature_1" + -0.4977431420313103 * "IL"."Feature_2" + 0.18008608103451978 * "IL"."Feature_3" + 0.08646972522282702 * "IL"."Feature_4" + 0.3043699458463587 * "IL"."Feature_5" + -0.38161003543861227 * "IL"."Feature_6" + -0.7232778826247354 * "IL"."Feature_7" + 0.39871060476569214 * "IL"."Feature_8" + -0.19903196336933943 * "IL"."Feature_9" + -0.6836232964578132 AS "NEUR_1_2", 1.710631093199044 * "IL"."Feature_0" + 3.4063382875185515 * "IL"."Feature_1" + -0.06342661464009393 * "IL"."Feature_2" + 3.0994948756204783 * "IL"."Feature_3" + 1.8243884669509591 * "IL"."Feature_4" + -0.08583616118849587 * "IL"."Feature_5" + -0.1609526255487476 * "IL"."Feature_6" + 0.22601501200317378 * "IL"."Feature_7" + 0.01892489364107791 * "IL"."Feature_8" + -0.35358761237051084 * "IL"."Feature_9" + 0.8336316194659192 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", max("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", max("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", max("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 INSERT INTO "TMP_20221018190124_ZPA1FFU_HL_1_relu_1" ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "T"."KEY", "T"."NEUR_1_1", "T"."NEUR_1_2", "T"."NEUR_1_3" 
FROM (SELECT "HL_1_relu_1"."KEY" AS "KEY", "HL_1_relu_1"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu_1"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" AS "NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "T"

-- Code For temporary table TMP_20221018190124_ZPA1FFU_HL_1_relu_1 part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190124_ZPA1FFU_HL_1_relu_1_KEY" ON "TMP_20221018190124_ZPA1FFU_HL_1_relu_1" ("KEY")

-- Code For temporary table TMP_20221018190124_HP9UX8W_OL_identity_1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190124_HP9UX8W_OL_identity_1" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_3_1" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018190124_HP9UX8W_OL_identity_1 part 2. Populate

WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -0.7406270038492999 * "HL_1_relu_1"."NEUR_1_1" + 0.587316714257746 * "HL_1_relu_1"."NEUR_1_2" + -0.07639477246652841 * "HL_1_relu_1"."NEUR_1_3" + -0.2547446044040149 AS "NEUR_2_1", -0.14939295511024034 * "HL_1_relu_1"."NEUR_1_1" + 0.56478411682726 * "HL_1_relu_1"."NEUR_1_2" + -0.8749714529144351 * "HL_1_relu_1"."NEUR_1_3" + -0.8894709359521037 AS "NEUR_2_2", 0.0033451194777397776 * "HL_1_relu_1"."NEUR_1_1" + 0.448709554579334 * "HL_1_relu_1"."NEUR_1_2" + 3.2926122388808263 * "HL_1_relu_1"."NEUR_1_3" + -0.2608819972354684 AS "NEUR_2_3", 0.11108961510562722 * "HL_1_relu_1"."NEUR_1_1" + -0.504739287272135 * "HL_1_relu_1"."NEUR_1_2" + -0.406628968306594 * "HL_1_relu_1"."NEUR_1_3" + -0.7964330424336139 AS "NEUR_2_4", -0.6221511379019263 * "HL_1_relu_1"."NEUR_1_1" + 0.4332119402185786 * "HL_1_relu_1"."NEUR_1_2" + -0.6588750179423377 * "HL_1_relu_1"."NEUR_1_3" + -0.5537916280920224 AS "NEUR_2_5" 
FROM "TMP_20221018190124_ZPA1FFU_HL_1_relu_1" AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", max("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", max("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", max("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", max("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", max("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", -0.03875132442816912 * "HL_2_relu"."NEUR_2_1" + -0.4183547845746501 * "HL_2_relu"."NEUR_2_2" + 0.9275321874935875 * "HL_2_relu"."NEUR_2_3" + 0.7008371945404105 * "HL_2_relu"."NEUR_2_4" + -0.24897442722332674 * "HL_2_relu"."NEUR_2_5" + -1.6428946704773355 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 INSERT INTO "TMP_20221018190124_HP9UX8W_OL_identity_1" ("KEY", "NEUR_3_1") SELECT "T"."KEY", "T"."NEUR_3_1" 
FROM (SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "T"

-- Code For temporary table TMP_20221018190124_HP9UX8W_OL_identity_1 part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190124_HP9UX8W_OL_identity_1_KEY" ON "TMP_20221018190124_HP9UX8W_OL_identity_1" ("KEY")

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM "TMP_20221018190124_HP9UX8W_OL_identity_1" AS "OL_identity_1"