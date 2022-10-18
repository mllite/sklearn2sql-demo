-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : RidgeClassifier_Pipeline
-- Dataset : BreastCancer
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018185106_JCLA56H_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185106_JCLA56H_ADS_imp_1_OUT" (
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

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185106_JCLA56H_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018185106_JCLA56H_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9, imputer_output_10, imputer_output_11, imputer_output_12, imputer_output_13, imputer_output_14, imputer_output_15, imputer_output_16, imputer_output_17, imputer_output_18, imputer_output_19, imputer_output_20, imputer_output_21, imputer_output_22, imputer_output_23, imputer_output_24, imputer_output_25, imputer_output_26, imputer_output_27, imputer_output_28, imputer_output_29, imputer_output_30, imputer_output_31) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9, "T".imputer_output_10, "T".imputer_output_11, "T".imputer_output_12, "T".imputer_output_13, "T".imputer_output_14, "T".imputer_output_15, "T".imputer_output_16, "T".imputer_output_17, "T".imputer_output_18, "T".imputer_output_19, "T".imputer_output_20, "T".imputer_output_21, "T".imputer_output_22, "T".imputer_output_23, "T".imputer_output_24, "T".imputer_output_25, "T".imputer_output_26, "T".imputer_output_27, "T".imputer_output_28, "T".imputer_output_29, "T".imputer_output_30, "T".imputer_output_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9, "ADS_imp_1_OUT".imputer_output_10 AS imputer_output_10, "ADS_imp_1_OUT".imputer_output_11 AS imputer_output_11, "ADS_imp_1_OUT".imputer_output_12 AS imputer_output_12, "ADS_imp_1_OUT".imputer_output_13 AS imputer_output_13, "ADS_imp_1_OUT".imputer_output_14 AS imputer_output_14, "ADS_imp_1_OUT".imputer_output_15 AS imputer_output_15, "ADS_imp_1_OUT".imputer_output_16 AS imputer_output_16, "ADS_imp_1_OUT".imputer_output_17 AS imputer_output_17, "ADS_imp_1_OUT".imputer_output_18 AS imputer_output_18, "ADS_imp_1_OUT".imputer_output_19 AS imputer_output_19, "ADS_imp_1_OUT".imputer_output_20 AS imputer_output_20, "ADS_imp_1_OUT".imputer_output_21 AS imputer_output_21, "ADS_imp_1_OUT".imputer_output_22 AS imputer_output_22, "ADS_imp_1_OUT".imputer_output_23 AS imputer_output_23, "ADS_imp_1_OUT".imputer_output_24 AS imputer_output_24, "ADS_imp_1_OUT".imputer_output_25 AS imputer_output_25, "ADS_imp_1_OUT".imputer_output_26 AS imputer_output_26, "ADS_imp_1_OUT".imputer_output_27 AS imputer_output_27, "ADS_imp_1_OUT".imputer_output_28 AS imputer_output_28, "ADS_imp_1_OUT".imputer_output_29 AS imputer_output_29, "ADS_imp_1_OUT".imputer_output_30 AS imputer_output_30, "ADS_imp_1_OUT".imputer_output_31 AS imputer_output_31 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 14.077712087912083 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.03905494505495 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 91.66178021978023 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 650.9676923076925 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.09642184615384615 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.10441613186813191 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.08826232681318694 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.048516399999999966 ELSE "ADS"."Feature_7" END AS imputer_output_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.1815885714285715 ELSE "ADS"."Feature_8" END AS imputer_output_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.06294030769230768 ELSE "ADS"."Feature_9" END AS imputer_output_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.4099173626373627 ELSE "ADS"."Feature_10" END AS imputer_output_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.2170694505494501 ELSE "ADS"."Feature_11" END AS imputer_output_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.90524901098901 ELSE "ADS"."Feature_12" END AS imputer_output_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 40.87988571428572 ELSE "ADS"."Feature_13" END AS imputer_output_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.007055971428571433 ELSE "ADS"."Feature_14" END AS imputer_output_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.025567830769230776 ELSE "ADS"."Feature_15" END AS imputer_output_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.03199925626373623 ELSE "ADS"."Feature_16" END AS imputer_output_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.011972369230769237 ELSE "ADS"."Feature_17" END AS imputer_output_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.020896200000000014 ELSE "ADS"."Feature_18" END AS imputer_output_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.0038465518681318647 ELSE "ADS"."Feature_19" END AS imputer_output_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 16.17776483516484 ELSE "ADS"."Feature_20" END AS imputer_output_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 25.26505494505494 ELSE "ADS"."Feature_21" END AS imputer_output_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 106.68156043956041 ELSE "ADS"."Feature_22" END AS imputer_output_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 870.8639560439567 ELSE "ADS"."Feature_23" END AS imputer_output_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.1318275604395605 ELSE "ADS"."Feature_24" END AS imputer_output_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.24991806593406582 ELSE "ADS"."Feature_25" END AS imputer_output_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.2654615934065932 ELSE "ADS"."Feature_26" END AS imputer_output_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.11348798021978022 ELSE "ADS"."Feature_27" END AS imputer_output_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.2897881318681319 ELSE "ADS"."Feature_28" END AS imputer_output_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.08364145054945049 ELSE "ADS"."Feature_29" END AS imputer_output_31 
FROM "BreastCancer" AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018185106_JCLA56H_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185106_JCLA56H_ADS_imp_1_OUT_KEY" ON "TMP_20221018185106_JCLA56H_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018185106_IQ8OTD1_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185106_IQ8OTD1_ADS_sca_2_OUT" (
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

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185106_IQ8OTD1_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018185106_IQ8OTD1_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9, scaler_output_10, scaler_output_11, scaler_output_12, scaler_output_13, scaler_output_14, scaler_output_15, scaler_output_16, scaler_output_17, scaler_output_18, scaler_output_19, scaler_output_20, scaler_output_21, scaler_output_22, scaler_output_23, scaler_output_24, scaler_output_25, scaler_output_26, scaler_output_27, scaler_output_28, scaler_output_29, scaler_output_30, scaler_output_31) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9, "T".scaler_output_10, "T".scaler_output_11, "T".scaler_output_12, "T".scaler_output_13, "T".scaler_output_14, "T".scaler_output_15, "T".scaler_output_16, "T".scaler_output_17, "T".scaler_output_18, "T".scaler_output_19, "T".scaler_output_20, "T".scaler_output_21, "T".scaler_output_22, "T".scaler_output_23, "T".scaler_output_24, "T".scaler_output_25, "T".scaler_output_26, "T".scaler_output_27, "T".scaler_output_28, "T".scaler_output_29, "T".scaler_output_30, "T".scaler_output_31 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9, "ADS_sca_2_OUT".scaler_output_10 AS scaler_output_10, "ADS_sca_2_OUT".scaler_output_11 AS scaler_output_11, "ADS_sca_2_OUT".scaler_output_12 AS scaler_output_12, "ADS_sca_2_OUT".scaler_output_13 AS scaler_output_13, "ADS_sca_2_OUT".scaler_output_14 AS scaler_output_14, "ADS_sca_2_OUT".scaler_output_15 AS scaler_output_15, "ADS_sca_2_OUT".scaler_output_16 AS scaler_output_16, "ADS_sca_2_OUT".scaler_output_17 AS scaler_output_17, "ADS_sca_2_OUT".scaler_output_18 AS scaler_output_18, "ADS_sca_2_OUT".scaler_output_19 AS scaler_output_19, "ADS_sca_2_OUT".scaler_output_20 AS scaler_output_20, "ADS_sca_2_OUT".scaler_output_21 AS scaler_output_21, "ADS_sca_2_OUT".scaler_output_22 AS scaler_output_22, "ADS_sca_2_OUT".scaler_output_23 AS scaler_output_23, "ADS_sca_2_OUT".scaler_output_24 AS scaler_output_24, "ADS_sca_2_OUT".scaler_output_25 AS scaler_output_25, "ADS_sca_2_OUT".scaler_output_26 AS scaler_output_26, "ADS_sca_2_OUT".scaler_output_27 AS scaler_output_27, "ADS_sca_2_OUT".scaler_output_28 AS scaler_output_28, "ADS_sca_2_OUT".scaler_output_29 AS scaler_output_29, "ADS_sca_2_OUT".scaler_output_30 AS scaler_output_30, "ADS_sca_2_OUT".scaler_output_31 AS scaler_output_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 14.077712087912083) / 3.5451492987000814 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 19.03905494505495) / 4.1622971504218205 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 91.66178021978023) / 24.503971943475648 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 650.9676923076925) / 355.702823163891 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS FLOAT) - 0.09642184615384615) / 0.014197819663072304 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS FLOAT) - 0.10441613186813191) / 0.05340369466973436 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS FLOAT) - 0.08826232681318694) / 0.08191200162631372 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS FLOAT) - 0.048516399999999966) / 0.039373117396730245 AS scaler_output_9, (CAST("ADS_imp_1_OUT".imputer_output_10 AS FLOAT) - 0.1815885714285715) / 0.02779005832874822 AS scaler_output_10, (CAST("ADS_imp_1_OUT".imputer_output_11 AS FLOAT) - 0.06294030769230768) / 0.007019354586172742 AS scaler_output_11, (CAST("ADS_imp_1_OUT".imputer_output_12 AS FLOAT) - 0.4099173626373627) / 0.29120400836827026 AS scaler_output_12, (CAST("ADS_imp_1_OUT".imputer_output_13 AS FLOAT) - 1.2170694505494501) / 0.5363896396336265 AS scaler_output_13, (CAST("ADS_imp_1_OUT".imputer_output_14 AS FLOAT) - 2.90524901098901) / 2.1424944299808626 AS scaler_output_14, (CAST("ADS_imp_1_OUT".imputer_output_15 AS FLOAT) - 40.87988571428572) / 48.224754479577314 AS scaler_output_15, (CAST("ADS_imp_1_OUT".imputer_output_16 AS FLOAT) - 0.007055971428571433) / 0.002863651656569403 AS scaler_output_16, (CAST("ADS_imp_1_OUT".imputer_output_17 AS FLOAT) - 0.025567830769230776) / 0.017947013631032318 AS scaler_output_17, (CAST("ADS_imp_1_OUT".imputer_output_18 AS FLOAT) - 0.03199925626373623) / 0.03166493672136351 AS scaler_output_18, (CAST("ADS_imp_1_OUT".imputer_output_19 AS FLOAT) - 0.011972369230769237) / 0.006392005589396607 AS scaler_output_19, (CAST("ADS_imp_1_OUT".imputer_output_20 AS FLOAT) - 0.020896200000000014) / 0.008582910079869234 AS scaler_output_20, (CAST("ADS_imp_1_OUT".imputer_output_21 AS FLOAT) - 0.0038465518681318647) / 0.0027436075866190575 AS scaler_output_21, (CAST("ADS_imp_1_OUT".imputer_output_22 AS FLOAT) - 16.17776483516484) / 4.817458816201383 AS scaler_output_22, (CAST("ADS_imp_1_OUT".imputer_output_23 AS FLOAT) - 25.26505494505494) / 5.92332412866667 AS scaler_output_23, (CAST("ADS_imp_1_OUT".imputer_output_24 AS FLOAT) - 106.68156043956041) / 33.70385837605481 AS scaler_output_24, (CAST("ADS_imp_1_OUT".imputer_output_25 AS FLOAT) - 870.8639560439567) / 566.9950559872813 AS scaler_output_25, (CAST("ADS_imp_1_OUT".imputer_output_26 AS FLOAT) - 0.1318275604395605) / 0.02274820752228878 AS scaler_output_26, (CAST("ADS_imp_1_OUT".imputer_output_27 AS FLOAT) - 0.24991806593406582) / 0.15246893644279044 AS scaler_output_27, (CAST("ADS_imp_1_OUT".imputer_output_28 AS FLOAT) - 0.2654615934065932) / 0.20692568678204093 AS scaler_output_28, (CAST("ADS_imp_1_OUT".imputer_output_29 AS FLOAT) - 0.11348798021978022) / 0.06638141278520703 AS scaler_output_29, (CAST("ADS_imp_1_OUT".imputer_output_30 AS FLOAT) - 0.2897881318681319) / 0.06220470665051894 AS scaler_output_30, (CAST("ADS_imp_1_OUT".imputer_output_31 AS FLOAT) - 0.08364145054945049) / 0.01706514580694785 AS scaler_output_31 
FROM "TMP_20221018185106_JCLA56H_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018185106_IQ8OTD1_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185106_IQ8OTD1_ADS_sca_2_OUT_KEY" ON "TMP_20221018185106_IQ8OTD1_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH linear_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS FLOAT) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS FLOAT) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS FLOAT) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS FLOAT) AS scaler_output_5, CAST("ADS_sca_2_OUT".scaler_output_6 AS FLOAT) AS scaler_output_6, CAST("ADS_sca_2_OUT".scaler_output_7 AS FLOAT) AS scaler_output_7, CAST("ADS_sca_2_OUT".scaler_output_8 AS FLOAT) AS scaler_output_8, CAST("ADS_sca_2_OUT".scaler_output_9 AS FLOAT) AS scaler_output_9, CAST("ADS_sca_2_OUT".scaler_output_10 AS FLOAT) AS scaler_output_10, CAST("ADS_sca_2_OUT".scaler_output_11 AS FLOAT) AS scaler_output_11, CAST("ADS_sca_2_OUT".scaler_output_12 AS FLOAT) AS scaler_output_12, CAST("ADS_sca_2_OUT".scaler_output_13 AS FLOAT) AS scaler_output_13, CAST("ADS_sca_2_OUT".scaler_output_14 AS FLOAT) AS scaler_output_14, CAST("ADS_sca_2_OUT".scaler_output_15 AS FLOAT) AS scaler_output_15, CAST("ADS_sca_2_OUT".scaler_output_16 AS FLOAT) AS scaler_output_16, CAST("ADS_sca_2_OUT".scaler_output_17 AS FLOAT) AS scaler_output_17, CAST("ADS_sca_2_OUT".scaler_output_18 AS FLOAT) AS scaler_output_18, CAST("ADS_sca_2_OUT".scaler_output_19 AS FLOAT) AS scaler_output_19, CAST("ADS_sca_2_OUT".scaler_output_20 AS FLOAT) AS scaler_output_20, CAST("ADS_sca_2_OUT".scaler_output_21 AS FLOAT) AS scaler_output_21, CAST("ADS_sca_2_OUT".scaler_output_22 AS FLOAT) AS scaler_output_22, CAST("ADS_sca_2_OUT".scaler_output_23 AS FLOAT) AS scaler_output_23, CAST("ADS_sca_2_OUT".scaler_output_24 AS FLOAT) AS scaler_output_24, CAST("ADS_sca_2_OUT".scaler_output_25 AS FLOAT) AS scaler_output_25, CAST("ADS_sca_2_OUT".scaler_output_26 AS FLOAT) AS scaler_output_26, CAST("ADS_sca_2_OUT".scaler_output_27 AS FLOAT) AS scaler_output_27, CAST("ADS_sca_2_OUT".scaler_output_28 AS FLOAT) AS scaler_output_28, CAST("ADS_sca_2_OUT".scaler_output_29 AS FLOAT) AS scaler_output_29, CAST("ADS_sca_2_OUT".scaler_output_30 AS FLOAT) AS scaler_output_30, CAST("ADS_sca_2_OUT".scaler_output_31 AS FLOAT) AS scaler_output_31 
FROM "TMP_20221018185106_IQ8OTD1_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", -0.1802238871279391 * linear_input.scaler_output_2 + -0.01592586285560738 * linear_input.scaler_output_3 + -0.10980303965695525 * linear_input.scaler_output_4 + 0.23962436456941621 * linear_input.scaler_output_5 + 0.060096767972786756 * linear_input.scaler_output_6 + 0.3153302561668691 * linear_input.scaler_output_7 + -0.12290626265535891 * linear_input.scaler_output_8 + -0.30172946303925763 * linear_input.scaler_output_9 + -0.0003763097675016977 * linear_input.scaler_output_10 + -0.009533035008003095 * linear_input.scaler_output_11 + -0.44449204075196247 * linear_input.scaler_output_12 + 0.025496172110240488 * linear_input.scaler_output_13 + 0.043533243841704296 * linear_input.scaler_output_14 + 0.27531028251332396 * linear_input.scaler_output_15 + -0.07656164665014682 * linear_input.scaler_output_16 + 0.0534641394978772 * linear_input.scaler_output_17 + 0.20245697444071484 * linear_input.scaler_output_18 + -0.09043681617021362 * linear_input.scaler_output_19 + -0.015032628365407348 * linear_input.scaler_output_20 + 0.012768853276290218 * linear_input.scaler_output_21 + -0.6781742481284683 * linear_input.scaler_output_22 + -0.0948571454080311 * linear_input.scaler_output_23 + 0.09738362223070099 * linear_input.scaler_output_24 + 0.35166347928527525 * linear_input.scaler_output_25 + -0.053991960817259585 * linear_input.scaler_output_26 + -0.03775909348742013 * linear_input.scaler_output_27 + -0.1640456031839313 * linear_input.scaler_output_28 + -0.09057735540196425 * linear_input.scaler_output_29 + -0.09486992424373761 * linear_input.scaler_output_30 + -0.12263241412187273 * linear_input.scaler_output_31 + 0.29670329670329687 AS lincomb 
FROM linear_input), 
dot_prod_logistic AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte.lincomb AS dot_prod, CAST(NULL AS FLOAT) AS logistic 
FROM linear_model_cte)
 SELECT dot_prod_logistic."KEY" AS "KEY", -dot_prod_logistic.dot_prod AS "Score_0", dot_prod_logistic.dot_prod AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (dot_prod_logistic.dot_prod > 0.0) THEN 1 ELSE 0 END AS "Decision", greatest(CAST(NULL AS FLOAT), CAST(NULL AS FLOAT)) AS "DecisionProba" 
FROM dot_prod_logistic