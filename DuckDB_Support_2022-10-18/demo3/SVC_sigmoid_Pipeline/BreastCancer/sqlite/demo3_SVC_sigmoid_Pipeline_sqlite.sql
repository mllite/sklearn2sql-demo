-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_sigmoid_Pipeline
-- Dataset : BreastCancer
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018185117_UNZ1E86_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185117_UNZ1E86_ADS_imp_1_OUT" (
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



-- Code For temporary table TMP_20221018185117_UNZ1E86_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018185117_UNZ1E86_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9, imputer_output_10, imputer_output_11, imputer_output_12, imputer_output_13, imputer_output_14, imputer_output_15, imputer_output_16, imputer_output_17, imputer_output_18, imputer_output_19, imputer_output_20, imputer_output_21, imputer_output_22, imputer_output_23, imputer_output_24, imputer_output_25, imputer_output_26, imputer_output_27, imputer_output_28, imputer_output_29, imputer_output_30, imputer_output_31) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9, "T".imputer_output_10, "T".imputer_output_11, "T".imputer_output_12, "T".imputer_output_13, "T".imputer_output_14, "T".imputer_output_15, "T".imputer_output_16, "T".imputer_output_17, "T".imputer_output_18, "T".imputer_output_19, "T".imputer_output_20, "T".imputer_output_21, "T".imputer_output_22, "T".imputer_output_23, "T".imputer_output_24, "T".imputer_output_25, "T".imputer_output_26, "T".imputer_output_27, "T".imputer_output_28, "T".imputer_output_29, "T".imputer_output_30, "T".imputer_output_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9, "ADS_imp_1_OUT".imputer_output_10 AS imputer_output_10, "ADS_imp_1_OUT".imputer_output_11 AS imputer_output_11, "ADS_imp_1_OUT".imputer_output_12 AS imputer_output_12, "ADS_imp_1_OUT".imputer_output_13 AS imputer_output_13, "ADS_imp_1_OUT".imputer_output_14 AS imputer_output_14, "ADS_imp_1_OUT".imputer_output_15 AS imputer_output_15, "ADS_imp_1_OUT".imputer_output_16 AS imputer_output_16, "ADS_imp_1_OUT".imputer_output_17 AS imputer_output_17, "ADS_imp_1_OUT".imputer_output_18 AS imputer_output_18, "ADS_imp_1_OUT".imputer_output_19 AS imputer_output_19, "ADS_imp_1_OUT".imputer_output_20 AS imputer_output_20, "ADS_imp_1_OUT".imputer_output_21 AS imputer_output_21, "ADS_imp_1_OUT".imputer_output_22 AS imputer_output_22, "ADS_imp_1_OUT".imputer_output_23 AS imputer_output_23, "ADS_imp_1_OUT".imputer_output_24 AS imputer_output_24, "ADS_imp_1_OUT".imputer_output_25 AS imputer_output_25, "ADS_imp_1_OUT".imputer_output_26 AS imputer_output_26, "ADS_imp_1_OUT".imputer_output_27 AS imputer_output_27, "ADS_imp_1_OUT".imputer_output_28 AS imputer_output_28, "ADS_imp_1_OUT".imputer_output_29 AS imputer_output_29, "ADS_imp_1_OUT".imputer_output_30 AS imputer_output_30, "ADS_imp_1_OUT".imputer_output_31 AS imputer_output_31 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 13.450740000000003 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.4476 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 87.29319999999998 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 583.3380000000001 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.09348100000000001 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0959074 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.07945570000000003 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.04142684 ELSE "ADS"."Feature_7" END AS imputer_output_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.178872 ELSE "ADS"."Feature_8" END AS imputer_output_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.0630418 ELSE "ADS"."Feature_9" END AS imputer_output_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.3765220000000001 ELSE "ADS"."Feature_10" END AS imputer_output_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.2955559999999997 ELSE "ADS"."Feature_11" END AS imputer_output_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.7619079999999996 ELSE "ADS"."Feature_12" END AS imputer_output_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 33.839960000000005 ELSE "ADS"."Feature_13" END AS imputer_output_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.006920639999999998 ELSE "ADS"."Feature_14" END AS imputer_output_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.02546753999999999 ELSE "ADS"."Feature_15" END AS imputer_output_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.033411 ELSE "ADS"."Feature_16" END AS imputer_output_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.011515259999999998 ELSE "ADS"."Feature_17" END AS imputer_output_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.02063639999999999 ELSE "ADS"."Feature_18" END AS imputer_output_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.0038469800000000003 ELSE "ADS"."Feature_19" END AS imputer_output_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 15.393479999999997 ELSE "ADS"."Feature_20" END AS imputer_output_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 26.079600000000006 ELSE "ADS"."Feature_21" END AS imputer_output_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 101.605 ELSE "ADS"."Feature_22" END AS imputer_output_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 769.482 ELSE "ADS"."Feature_23" END AS imputer_output_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.12837400000000002 ELSE "ADS"."Feature_24" END AS imputer_output_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.23153520000000005 ELSE "ADS"."Feature_25" END AS imputer_output_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.2537764 ELSE "ADS"."Feature_26" END AS imputer_output_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.10431359999999998 ELSE "ADS"."Feature_27" END AS imputer_output_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.284744 ELSE "ADS"."Feature_28" END AS imputer_output_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.08354739999999998 ELSE "ADS"."Feature_29" END AS imputer_output_31 
FROM "BreastCancer" AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018185117_UNZ1E86_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185117_UNZ1E86_ADS_imp_1_OUT_KEY" ON "TMP_20221018185117_UNZ1E86_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018185117_OLRBMEK_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185117_OLRBMEK_ADS_sca_2_OUT" (
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



-- Code For temporary table TMP_20221018185117_OLRBMEK_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018185117_OLRBMEK_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9, scaler_output_10, scaler_output_11, scaler_output_12, scaler_output_13, scaler_output_14, scaler_output_15, scaler_output_16, scaler_output_17, scaler_output_18, scaler_output_19, scaler_output_20, scaler_output_21, scaler_output_22, scaler_output_23, scaler_output_24, scaler_output_25, scaler_output_26, scaler_output_27, scaler_output_28, scaler_output_29, scaler_output_30, scaler_output_31) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9, "T".scaler_output_10, "T".scaler_output_11, "T".scaler_output_12, "T".scaler_output_13, "T".scaler_output_14, "T".scaler_output_15, "T".scaler_output_16, "T".scaler_output_17, "T".scaler_output_18, "T".scaler_output_19, "T".scaler_output_20, "T".scaler_output_21, "T".scaler_output_22, "T".scaler_output_23, "T".scaler_output_24, "T".scaler_output_25, "T".scaler_output_26, "T".scaler_output_27, "T".scaler_output_28, "T".scaler_output_29, "T".scaler_output_30, "T".scaler_output_31 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9, "ADS_sca_2_OUT".scaler_output_10 AS scaler_output_10, "ADS_sca_2_OUT".scaler_output_11 AS scaler_output_11, "ADS_sca_2_OUT".scaler_output_12 AS scaler_output_12, "ADS_sca_2_OUT".scaler_output_13 AS scaler_output_13, "ADS_sca_2_OUT".scaler_output_14 AS scaler_output_14, "ADS_sca_2_OUT".scaler_output_15 AS scaler_output_15, "ADS_sca_2_OUT".scaler_output_16 AS scaler_output_16, "ADS_sca_2_OUT".scaler_output_17 AS scaler_output_17, "ADS_sca_2_OUT".scaler_output_18 AS scaler_output_18, "ADS_sca_2_OUT".scaler_output_19 AS scaler_output_19, "ADS_sca_2_OUT".scaler_output_20 AS scaler_output_20, "ADS_sca_2_OUT".scaler_output_21 AS scaler_output_21, "ADS_sca_2_OUT".scaler_output_22 AS scaler_output_22, "ADS_sca_2_OUT".scaler_output_23 AS scaler_output_23, "ADS_sca_2_OUT".scaler_output_24 AS scaler_output_24, "ADS_sca_2_OUT".scaler_output_25 AS scaler_output_25, "ADS_sca_2_OUT".scaler_output_26 AS scaler_output_26, "ADS_sca_2_OUT".scaler_output_27 AS scaler_output_27, "ADS_sca_2_OUT".scaler_output_28 AS scaler_output_28, "ADS_sca_2_OUT".scaler_output_29 AS scaler_output_29, "ADS_sca_2_OUT".scaler_output_30 AS scaler_output_30, "ADS_sca_2_OUT".scaler_output_31 AS scaler_output_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 13.450740000000003) / 2.842552647252114 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 19.4476) / 4.456612417520733 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 87.29319999999998) / 19.783373366541916 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 583.3380000000001) / 254.63059980293016 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS FLOAT) - 0.09348100000000001) / 0.012981839045374118 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS FLOAT) - 0.0959074) / 0.04794022510627167 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS FLOAT) - 0.07945570000000003) / 0.072003293484465 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS FLOAT) - 0.04142684) / 0.03286028997155077 AS scaler_output_9, (CAST("ADS_imp_1_OUT".imputer_output_10 AS FLOAT) - 0.178872) / 0.023767574886807447 AS scaler_output_10, (CAST("ADS_imp_1_OUT".imputer_output_11 AS FLOAT) - 0.0630418) / 0.006170491614126058 AS scaler_output_11, (CAST("ADS_imp_1_OUT".imputer_output_12 AS FLOAT) - 0.3765220000000001) / 0.22931747451077505 AS scaler_output_12, (CAST("ADS_imp_1_OUT".imputer_output_13 AS FLOAT) - 1.2955559999999997) / 0.4864979388075555 AS scaler_output_13, (CAST("ADS_imp_1_OUT".imputer_output_14 AS FLOAT) - 2.7619079999999996) / 1.8449532326690556 AS scaler_output_14, (CAST("ADS_imp_1_OUT".imputer_output_15 AS FLOAT) - 33.839960000000005) / 28.135330141983403 AS scaler_output_15, (CAST("ADS_imp_1_OUT".imputer_output_16 AS FLOAT) - 0.006920639999999998) / 0.002156646106898394 AS scaler_output_16, (CAST("ADS_imp_1_OUT".imputer_output_17 AS FLOAT) - 0.02546753999999999) / 0.019603893631837527 AS scaler_output_17, (CAST("ADS_imp_1_OUT".imputer_output_18 AS FLOAT) - 0.033411) / 0.029953011615528748 AS scaler_output_18, (CAST("ADS_imp_1_OUT".imputer_output_19 AS FLOAT) - 0.011515259999999998) / 0.006801917382062208 AS scaler_output_19, (CAST("ADS_imp_1_OUT".imputer_output_20 AS FLOAT) - 0.02063639999999999) / 0.008194260127674737 AS scaler_output_20, (CAST("ADS_imp_1_OUT".imputer_output_21 AS FLOAT) - 0.0038469800000000003) / 0.0021774517444940085 AS scaler_output_21, (CAST("ADS_imp_1_OUT".imputer_output_22 AS FLOAT) - 15.393479999999997) / 3.899252873256619 AS scaler_output_22, (CAST("ADS_imp_1_OUT".imputer_output_23 AS FLOAT) - 26.079600000000006) / 5.855341137798891 AS scaler_output_23, (CAST("ADS_imp_1_OUT".imputer_output_24 AS FLOAT) - 101.605) / 28.256795094277766 AS scaler_output_24, (CAST("ADS_imp_1_OUT".imputer_output_25 AS FLOAT) - 769.482) / 402.52477721998673 AS scaler_output_25, (CAST("ADS_imp_1_OUT".imputer_output_26 AS FLOAT) - 0.12837400000000002) / 0.022491495459395314 AS scaler_output_26, (CAST("ADS_imp_1_OUT".imputer_output_27 AS FLOAT) - 0.23153520000000005) / 0.13583353927863323 AS scaler_output_27, (CAST("ADS_imp_1_OUT".imputer_output_28 AS FLOAT) - 0.2537764) / 0.19191074193759974 AS scaler_output_28, (CAST("ADS_imp_1_OUT".imputer_output_29 AS FLOAT) - 0.10431359999999998) / 0.06250764832434509 AS scaler_output_29, (CAST("ADS_imp_1_OUT".imputer_output_30 AS FLOAT) - 0.284744) / 0.05511358511292836 AS scaler_output_30, (CAST("ADS_imp_1_OUT".imputer_output_31 AS FLOAT) - 0.08354739999999998) / 0.015270954103788016 AS scaler_output_31 
FROM "TMP_20221018185117_UNZ1E86_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018185117_OLRBMEK_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185117_OLRBMEK_ADS_sca_2_OUT_KEY" ON "TMP_20221018185117_OLRBMEK_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS FLOAT) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS FLOAT) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS FLOAT) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS FLOAT) AS scaler_output_5, CAST("ADS_sca_2_OUT".scaler_output_6 AS FLOAT) AS scaler_output_6, CAST("ADS_sca_2_OUT".scaler_output_7 AS FLOAT) AS scaler_output_7, CAST("ADS_sca_2_OUT".scaler_output_8 AS FLOAT) AS scaler_output_8, CAST("ADS_sca_2_OUT".scaler_output_9 AS FLOAT) AS scaler_output_9, CAST("ADS_sca_2_OUT".scaler_output_10 AS FLOAT) AS scaler_output_10, CAST("ADS_sca_2_OUT".scaler_output_11 AS FLOAT) AS scaler_output_11, CAST("ADS_sca_2_OUT".scaler_output_12 AS FLOAT) AS scaler_output_12, CAST("ADS_sca_2_OUT".scaler_output_13 AS FLOAT) AS scaler_output_13, CAST("ADS_sca_2_OUT".scaler_output_14 AS FLOAT) AS scaler_output_14, CAST("ADS_sca_2_OUT".scaler_output_15 AS FLOAT) AS scaler_output_15, CAST("ADS_sca_2_OUT".scaler_output_16 AS FLOAT) AS scaler_output_16, CAST("ADS_sca_2_OUT".scaler_output_17 AS FLOAT) AS scaler_output_17, CAST("ADS_sca_2_OUT".scaler_output_18 AS FLOAT) AS scaler_output_18, CAST("ADS_sca_2_OUT".scaler_output_19 AS FLOAT) AS scaler_output_19, CAST("ADS_sca_2_OUT".scaler_output_20 AS FLOAT) AS scaler_output_20, CAST("ADS_sca_2_OUT".scaler_output_21 AS FLOAT) AS scaler_output_21, CAST("ADS_sca_2_OUT".scaler_output_22 AS FLOAT) AS scaler_output_22, CAST("ADS_sca_2_OUT".scaler_output_23 AS FLOAT) AS scaler_output_23, CAST("ADS_sca_2_OUT".scaler_output_24 AS FLOAT) AS scaler_output_24, CAST("ADS_sca_2_OUT".scaler_output_25 AS FLOAT) AS scaler_output_25, CAST("ADS_sca_2_OUT".scaler_output_26 AS FLOAT) AS scaler_output_26, CAST("ADS_sca_2_OUT".scaler_output_27 AS FLOAT) AS scaler_output_27, CAST("ADS_sca_2_OUT".scaler_output_28 AS FLOAT) AS scaler_output_28, CAST("ADS_sca_2_OUT".scaler_output_29 AS FLOAT) AS scaler_output_29, CAST("ADS_sca_2_OUT".scaler_output_30 AS FLOAT) AS scaler_output_30, CAST("ADS_sca_2_OUT".scaler_output_31 AS FLOAT) AS scaler_output_31 
FROM "TMP_20221018185117_OLRBMEK_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9, "Values".sv_10 AS sv_10, "Values".sv_11 AS sv_11, "Values".sv_12 AS sv_12, "Values".sv_13 AS sv_13, "Values".sv_14 AS sv_14, "Values".sv_15 AS sv_15, "Values".sv_16 AS sv_16, "Values".sv_17 AS sv_17, "Values".sv_18 AS sv_18, "Values".sv_19 AS sv_19, "Values".sv_20 AS sv_20, "Values".sv_21 AS sv_21, "Values".sv_22 AS sv_22, "Values".sv_23 AS sv_23, "Values".sv_24 AS sv_24, "Values".sv_25 AS sv_25, "Values".sv_26 AS sv_26, "Values".sv_27 AS sv_27, "Values".sv_28 AS sv_28, "Values".sv_29 AS sv_29 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 0.11231454246190439 AS sv_0, 0.637793851856038 AS sv_1, 0.1686668869952827 AS sv_2, 0.021843407682755233 AS sv_3, 2.0427768290232833 AS sv_4, 0.6423123782114163 AS sv_5, 0.8200222120775492 AS sv_6, 0.7252875741703396 AS sv_7, 0.19051165386306784 AS sv_8, 0.9283214949820983 AS sv_9, 1.0578260575977247 AS sv_10, 1.6782064935386336 AS sv_11, 1.1621389431634463 AS sv_12, 0.5637054877253324 AS sv_13, 3.1898418465575857 AS sv_14, 0.4087177858885874 AS sv_15, 0.4419922834449277 AS sv_16, 1.3356145759661797 AS sv_17, 0.7631683523054789 AS sv_18, 0.2108060493926885 AS sv_19, 0.2555669079158028 AS sv_20, 1.3543873556411004 AS sv_21, 0.3537202278833122 AS sv_22, 0.09295825280228756 AS sv_23, 2.0152506124738836 AS sv_24, 0.5938503879703338 AS sv_25, 0.6624100283106329 AS sv_26, 1.0076590895432627 AS sv_27, 0.4219649284717768 AS sv_28, 0.6406017550385674 AS sv_29 UNION ALL SELECT 1 AS sv_idx, -0.9948190807458621 AS dual_coeff, 0.12990436618894619 AS sv_0, 1.1314423440046744 AS sv_1, 0.25459763138870756 AS sv_2, 0.049334212029984545 AS sv_3, 1.7500602126241553 AS sv_4, 1.5058877975638785 AS sv_5, 0.7811351019955064 AS sv_6, 0.7961938261242094 AS sv_7, 2.0459807208598177 AS sv_8, 1.5117434044712148 AS sv_9, 0.42987565692630203 AS sv_10, 0.4777903079502017 AS sv_11, 0.11495792752056458 AS sv_12, 0.18517785196433845 AS sv_13, 1.279468147867991 AS sv_14, 0.6678499815331234 AS sv_15, 0.04503720752074975 AS sv_16, 0.682857456082745 AS sv_17, 0.4519749119864678 AS sv_18, 1.4457358276527639 AS sv_19, 0.1581123410149835 AS sv_20, 1.1716482163119393 AS sv_21, 0.15553780905924536 AS sv_22, 0.04600462144937633 AS sv_23, 2.268679736841822 AS sv_24, 1.2151991391566783 AS sv_25, 0.43938968266517375 AS sv_26, 0.764488847061432 AS sv_27, 1.4580071290109258 AS sv_28, 2.2757320704263995 AS sv_29 UNION ALL SELECT 2 AS sv_idx, -0.8465074057727748 AS dual_coeff, 1.4491411457170622 AS sv_0, -0.9867584586694748 AS sv_1, 1.4005093816233776 AS sv_2, 1.4600052008192375 AS sv_3, 0.38430610505664436 AS sv_4, 0.4128599721032739 AS sv_5, 0.26796413144855374 AS sv_6, 1.1595503275530532 AS sv_7, -0.20919256691854532 AS sv_8, -0.2514872553181125 AS sv_9, 0.9758436441767332 AS sv_10, -0.9723699984413027 AS sv_11, 1.0260921341953495 AS sv_12, 0.9688899992441424 AS sv_13, -0.5998387940710687 AS sv_14, 0.2480354204790815 AS sv_15, 0.022001126579817766 AS sv_16, 0.297671948403781 AS sv_17, -0.1691916022189308 AS sv_18, -0.0482123198667694 AS sv_19, 1.1839498873393997 AS sv_20, -1.1202763162089404 AS sv_21, 1.1783006490620203 AS sv_22, 1.1366207147789031 AS sv_23, -0.1277816321813082 AS sv_24, 0.3656298750938332 AS sv_25, -0.02540972928751209 AS sv_26, 0.6605015723159122 AS sv_27, -0.16591190686041973 AS sv_28, -0.28533908034725314 AS sv_29 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 0.05602710653537139 AS sv_0, 1.176319479654551 AS sv_1, 0.02359557146050143 AS sv_2, -0.042170893868649986 AS sv_3, -0.06940465036200481 AS sv_4, -0.3606032295776272 AS sv_5, -0.3695067088249278 AS sv_6, -0.32187299653037266 AS sv_7, -0.11662948421122415 AS sv_8, -0.28227896720781626 AS sv_9, -0.6345874875451865 AS sv_10, -0.597239940444918 AS sv_11, -0.5473894850651507 AS sv_12, -0.4979490174559712 AS sv_13, -1.313446833460216 AS sv_14, -0.7002455868106682 AS sv_15, -0.5158412849541191 AS sv_16, -0.6814637314213714 AS sv_17, -0.9038521946583215 AS sv_18, -1.0939300978876663 AS sv_19, 0.38379660120635484 AS sv_20, 1.632765670693935 AS sv_21, 0.4103437761187603 AS sv_22, 0.19680279198491693 AS sv_23, 0.8325813654235086 AS sv_24, 0.4186359296974075 AS sv_25, 0.6556360458494389 AS sv_26, 0.4573264355054349 AS sv_27, 1.1295944524827541 AS sv_28, -0.2977810010490425 AS sv_29 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 1.6109675240058448 AS sv_0, -0.5828642378205902 AS sv_1, 1.5268781233784139 AS sv_2, 1.597066496778995 AS sv_3, -0.3089700916781335 AS sv_4, 0.5693047944497347 AS sv_5, 0.41031873085603043 AS sv_6, 0.6425128937778393 AS sv_7, -0.28913341107486845 AS sv_8, -0.8494947125444569 AS sv_9, -0.33979966056332417 AS sv_10, -1.4490421104925995 AS sv_11, -0.4557882471543603 AS sv_12, 0.0685984486501547 AS sv_13, -1.3000000282995365 AS sv_14, -0.5033459263406072 AS sv_15, -0.12222477148514865 AS sv_16, -0.25908282929859927 AS sv_17, -0.9380224547717816 AS sv_18, -0.6479959905278548 AS sv_19, 1.2788398603744076 AS sv_20, -0.6933157102996855 AS sv_21, 1.1216771008265727 AS sv_22, 1.2981014575270107 AS sv_23, -0.09221263227001891 AS sv_24, 0.25814537548102956 AS sv_25, 0.9130473793748053 AS sv_26, 0.7868861062373899 AS sv_27, -0.009870524642614462 AS sv_28, -0.08495867325527169 AS sv_29 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 0.1861918021154792 AS sv_0, 0.03868409093019308 AS sv_1, 0.1934351603792703 AS sv_2, 0.06347233997998829 AS sv_3, 0.9643471896580743 AS sv_4, 0.3627976289524066 AS sv_5, 0.46031644381865655 AS sv_6, 0.7061154974617828 AS sv_7, -0.5037114664418393 AS sv_8, 0.3886562287046663 AS sv_9, -0.6790673075927456 AS sv_10, -0.7035096609841676 AS sv_11, -0.6286923589504676 AS sv_12, -0.5327806684461847 AS sv_13, -0.7449715532190888 AS sv_14, -0.3855121917069697 AS sv_15, -0.38597120544654523 AS sv_16, -0.2864280599964186 AS sv_17, -1.0258888379206788 AS sv_18, -0.4597024951442062 AS sv_19, 0.42226550919352007 AS sv_20, 0.8061699376536177 AS sv_21, 0.43511657847176877 AS sv_22, 0.2479797658404708 AS sv_23, 1.4639311138488966 AS sv_24, 0.9221934484313643 AS sv_25, 0.7978896775345097 AS sv_26, 1.2540289404788016 AS sv_27, 0.6015939614899484 AS sv_28, 1.4375395178847792 AS sv_29 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 1.6285573477328854 AS sv_0, 0.536820296643817 AS sv_1, 1.5218233737082127 AS sv_2, 1.7305932607512515 AS sv_3, -1.5229737428492542 AS sv_4, -0.19790061433730816 AS sv_5, 0.42837346053697867 AS sv_6, 0.4976572030909637 AS sv_7, -0.07876276855822992 AS sv_8, -1.562565935253375 AS sv_9, 1.1323951676774562 AS sv_10, 0.01941220968612573 AS sv_11, 0.8401795625775915 AS sv_12, 1.5112685646631812 AS sv_13, -0.6448160389188576 AS sv_14, 1.402397937690864 AS sv_15, 0.9244145582224192 AS sv_16, 0.4299875808125853 AS sv_17, 0.09318718079513724 AS sv_18, 0.5460603216611357 AS sv_19, 1.1198350406941238 AS sv_20, -0.2356139407649644 AS sv_21, 0.9730402867085218 AS sv_22, 1.1391050338981048 AS sv_23, -1.7852970280473983 AS sv_24, -0.2593998521066482 AS sv_25, -0.0014402528863646524 AS sv_26, -0.2000331213089351 AS sv_27, -0.8680981268405439 AS sv_28, -1.176573505354397 AS sv_29 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, 0.34801818040426113 AS sv_0, -0.9575883204970556 AS sv_1, 0.3374955259800115 AS sv_2, 0.22291900519391838 AS sv_3, 0.4790538519437302 AS sv_4, 0.1291733609150254 AS sv_5, 0.07519517147042899 AS sv_6, 0.4227948083242171 AS sv_7, -0.27230375967353687 AS sv_8, -0.36168917155494545 AS sv_9, -0.5927241275004249 AS sv_10, -1.1431826440276018 AS sv_11, -0.3479264344665065 AS sv_12, -0.4492557910716931 AS sv_13, -0.5632078420816322 AS sv_14, -0.1274002015570969 AS sv_15, -0.0758187533577636 AS sv_16, 0.5020260917907122 AS sv_17, -0.7439841919846334 AS sv_18, -0.6057447671734751 AS sv_19, 0.11707883916200637 AS sv_20, -1.0639175162289185 AS sv_21, 0.24755107494184772 AS sv_22, -0.006414511965778659 AS sv_23, 0.14343199214227395 AS sv_24, 0.3089428444761218 AS sv_25, 0.2945306731104129 AS sv_26, 0.8892735767560553 AS sv_27, -0.28385016086224946 AS sv_28, -0.4398808322221143 AS sv_29 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 0.4007876515853859 AS sv_0, 0.7253042663732964 AS sv_1, 0.45982046799888676 AS sv_2, 0.28968238718004674 AS sv_3, -0.6740955552917824 AS sv_4, 0.7737260289824431 AS sv_5, 0.3256003838915809 AS sv_6, -0.12376153720861631 AS sv_7, -1.4083052292633838 AS sv_8, -0.25472848814860855 AS sv_9, -0.6590077809046307 AS sv_10, -0.3855227022332593 AS sv_11, -0.29155644190602004 AS sv_12, -0.5082563427489936 AS sv_13, -1.2420396612276436 AS sv_14, 1.067260432693895 AS sv_15, 1.0806592811261329 AS sv_16, 0.6681557191484334 AS sv_17, -0.5194367683818962 AS sv_18, 0.2567312921691882 AS sv_19, 0.022188866126998073 AS sv_20, 0.20330156210974965 AS sv_21, 0.15199883729453006 AS sv_22, -0.08939077054711389 AS sv_23, -1.1459442546419703 AS sv_24, 0.6299239529088776 AS sv_25, 0.5858119189417486 AS sv_26, 0.09897028869010549 AS sv_27, -1.0695003759821298 AS sv_28, -0.22967785615503594 AS sv_29 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, -0.35205680393199257 AS sv_0, -0.6815939362503177 AS sv_1, -0.22459263734639057 AS sv_2, -0.4187949134256917 AS sv_3, 0.1277939122647768 AS sv_4, 1.1512795335785682 AS sv_5, 1.0408454443291473 AS sv_6, 0.21403219527548462 AS sv_7, 1.2339500407455934 AS sv_8, 1.6543576490129972 AS sv_9, 0.0679320232059679 AS sv_10, -0.18202749269001492 AS sv_11, 1.21525682076852 AS sv_12, -0.1297287069879998 AS sv_13, 0.1452996850051882 AS sv_14, 2.511871413137451 AS sv_15, 2.6037114731918183 AS sv_16, 2.3073993873241765 AS sv_17, 1.4258273252200788 AS sv_18, 2.6544882175302345 AS sv_19, -0.4137920910608791 AS sv_20, -0.8623921102397502 AS sv_21, -0.13395008129448144 AS sv_22, -0.46924316387304693 AS sv_23, -0.48347163129420345 AS sv_24, 1.2851376834252835 AS sv_25, 1.2288191771812262 AS sv_26, 0.47812389045453924 AS sv_27, 0.6959445646914117 AS sv_28, 1.3000235522334205 AS sv_29 UNION ALL SELECT 10 AS sv_idx, 0.8755436154678561 AS dual_coeff, -0.373164592404442 AS sv_0, -0.4415012605234808 AS sv_1, -0.3363026050578424 AS sv_2, -0.4729910705673724 AS sv_3, 0.8256919503111191 AS sv_4, 0.7048903071500006 AS sv_5, -0.2852050094685001 AS sv_6, -0.38425832550266154 AS sv_7, -0.040896052905234515 AS sv_8, 0.45996335097555757 AS sv_9, -0.5046366407395727 AS sv_10, -0.8685668865025771 AS sv_11, -0.3495524919442129 AS sv_12, -0.520340793092537 AS sv_13, -0.09535175907731187 AS sv_14, 0.5908244666860271 AS sv_15, 0.4727070580328373 AS sv_16, -0.14779068070586038 AS sv_17, -0.2753634818571815 AS sv_18, 1.3947588081708493 AS sv_19, -0.31120833642843737 AS sv_20, -0.5037452012759764 AS sv_21, -0.22560945000061206 AS sv_22, -0.4198052134009341 AS sv_23, 0.6369518659114156 AS sv_24, 0.9405983285020499 AS sv_25, 0.34820145722602563 AS sv_26, -0.10036531797592158 AS sv_27, -0.05160252221249307 AS sv_28, 1.8500874148388577 AS sv_29 UNION ALL SELECT 11 AS sv_idx, 1.0 AS dual_coeff, -0.34502087444117546 AS sv_0, -0.19018930088417468 AS sv_1, -0.31355623154193574 AS sv_2, -0.39837317305346426 AS sv_3, 0.4752023175174263 AS sv_4, 0.20635280660594615 AS sv_5, 0.008253789114913012 AS sv_6, -0.09789444958595983 AS sv_7, 0.5733862232433494 AS sv_8, 0.11153082169733591 AS sv_9, 0.08537508989128523 AS sv_10, -0.5170751609278821 AS sv_11, -0.1435852114347434 AS sv_12, -0.1261744568869577 AS sv_13, 0.015004779827572649 AS sv_14, -0.324299862027158 AS sv_15, -0.21370138275783557 AS sv_16, -0.16837311241389655 AS sv_17, -0.34370400208410173 AS sv_18, -0.11985569859810878 AS sv_19, -0.10860542102936493 AS sv_20, -0.2458609953067863 AS sv_21, -0.19658988152994533 AS sv_22, -0.22751891357472598 AS sv_23, 0.632505740922505 AS sv_24, 0.04612115706673204 AS sv_25, 0.0694260251692018 AS sv_26, -0.04501209172676791 AS sv_27, 0.30221223979299605 AS sv_28, 0.2588312408731264 AS sv_29 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, 0.20378162584252038 AS sv_0, 0.4044327464766827 AS sv_1, 0.12620698976559103 AS sv_2, 0.07878864525915881 AS sv_3, -0.21422234479104663 AS sv_4, -0.551883099033233 AS sv_5, -0.9004546439808145 AS sv_6, -0.683707904569648 AS sv_7, -1.1432382196924193 AS sv_8, -0.7603608097058417 AS sv_9, -0.5129220974150982 AS sv_10, 0.4264026287726145 AS sv_11, -0.5934611136001636 AS sv_12, -0.418333815192626 AS sv_13, 0.21717054017433546 AS sv_14, -0.5936341126183294 AS sv_15, -0.87166527143014 AS sv_16, -0.21688884429712488 AS sv_17, -0.9770741806157358 AS sv_18, -0.4234215533507715 AS sv_19, -0.016280041860167627 AS sv_20, 0.7173621316244927 AS sv_21, -0.11802470835326165 AS sv_22, -0.13410851469274368 AS sv_23, 0.014494367463850157 AS sv_24, -0.5906876933789883 AS sv_25, -0.997684642698405 AS sv_26, -0.3948892761397705 AS sv_27, -1.1275622856445693 AS sv_28, -0.4831001357125412 AS sv_29 UNION ALL SELECT 13 AS sv_idx, 0.29438869097941867 AS dual_coeff, -0.4962933584937333 AS sv_0, 1.9504500696149127 AS sv_1, -0.5278776175584778 AS sv_2, -0.5240454214979411 AS sv_3, -0.45917993430400145 AS sv_4, -0.7490035751897732 AS sv_5, -0.774765948894213 AS sv_6, -0.5373306204932045 AS sv_7, 0.27465991086972324 AS sv_8, -0.9823852585947546 AS sv_9, 1.0011360908704434 AS sv_10, 2.76968079927058 AS sv_11, 0.7247294816604415 AS sv_12, 0.3952340329359323 AS sv_13, 0.27652195605595414 AS sv_14, -0.505896440077266 AS sv_15, -0.626347702221489 AS sv_16, 0.0462722468270527 AS sv_17, -0.02030689743885505 AS sv_18, 0.01654227244809512 AS sv_19, -0.45995478064547773 AS sv_20, 1.2382540708337832 AS sv_21, -0.5083732940013795 AS sv_22, -0.5015393124226685 AS sv_23, -1.0792523798083022 AS sv_24, -0.988527580986927 AS sv_25, -1.0345246857758208 AS sv_26, -0.7814019773477333 AS sv_27, -0.804592913147251 AS sv_28, -1.1235316328888723 AS sv_29 UNION ALL SELECT 14 AS sv_idx, 0.6713941800713621 AS dual_coeff, 0.2072995905879286 AS sv_0, -0.7780797778975512 AS sv_1, 0.1257015147985706 AS sv_2, 0.10942125581750031 AS sv_3, -0.6856501585706952 AS sv_4, -0.7709058503182776 AS sv_5, -0.6126900293737003 AS sv_6, -0.3647819301161908 AS sv_7, -0.3143778881768646 AS sv_8, -0.6582619755452467 AS sv_9, 0.055285799859112805 AS sv_10, -0.5129641465936751 AS sv_11, -0.06390839502713269 AS sv_12, -0.039095329411423824 AS sv_13, 0.4893524239439455 AS sv_14, -0.6385231543835247 AS sv_15, -0.578606259112021 AS sv_16, -0.3630241094241822 AS sv_17, -0.07156228760904512 AS sv_18, -0.46705053398844615 AS sv_19, 0.06835155571159673 AS sv_20, -0.7684607769397146 AS sv_21, -0.014332835647097747 AS sv_22, -0.04839950508028658 AS sv_23, -0.39454913151597965 AS sv_24, -0.7828346413169454 AS sv_25, -0.7403254167304325 AS sv_26, -0.4764792917093323 AS sv_27, -0.22215938184590756 AS sv_28, -0.733903063543354 AS sv_29) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 0.4536014007615713 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * tanh(0.03333333333333333 * (kernel_input.scaler_output_2 * "SV_data".sv_0 + kernel_input.scaler_output_3 * "SV_data".sv_1 + kernel_input.scaler_output_4 * "SV_data".sv_2 + kernel_input.scaler_output_5 * "SV_data".sv_3 + kernel_input.scaler_output_6 * "SV_data".sv_4 + kernel_input.scaler_output_7 * "SV_data".sv_5 + kernel_input.scaler_output_8 * "SV_data".sv_6 + kernel_input.scaler_output_9 * "SV_data".sv_7 + kernel_input.scaler_output_10 * "SV_data".sv_8 + kernel_input.scaler_output_11 * "SV_data".sv_9 + kernel_input.scaler_output_12 * "SV_data".sv_10 + kernel_input.scaler_output_13 * "SV_data".sv_11 + kernel_input.scaler_output_14 * "SV_data".sv_12 + kernel_input.scaler_output_15 * "SV_data".sv_13 + kernel_input.scaler_output_16 * "SV_data".sv_14 + kernel_input.scaler_output_17 * "SV_data".sv_15 + kernel_input.scaler_output_18 * "SV_data".sv_16 + kernel_input.scaler_output_19 * "SV_data".sv_17 + kernel_input.scaler_output_20 * "SV_data".sv_18 + kernel_input.scaler_output_21 * "SV_data".sv_19 + kernel_input.scaler_output_22 * "SV_data".sv_20 + kernel_input.scaler_output_23 * "SV_data".sv_21 + kernel_input.scaler_output_24 * "SV_data".sv_22 + kernel_input.scaler_output_25 * "SV_data".sv_23 + kernel_input.scaler_output_26 * "SV_data".sv_24 + kernel_input.scaler_output_27 * "SV_data".sv_25 + kernel_input.scaler_output_28 * "SV_data".sv_26 + kernel_input.scaler_output_29 * "SV_data".sv_27 + kernel_input.scaler_output_30 * "SV_data".sv_28 + kernel_input.scaler_output_31 * "SV_data".sv_29) + 0.0) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", -kernel_dp.dot_product AS "Score_0", kernel_dp.dot_product AS "Score_1", 1.0 - 1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-(kernel_dp.dot_product * -2.5116300804887923 + -0.13146240018136576)))))) AS "Proba_0", 1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-(kernel_dp.dot_product * -2.5116300804887923 + -0.13146240018136576)))))) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-(kernel_dp.dot_product * -2.5116300804887923 + -0.13146240018136576)))))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-(kernel_dp.dot_product * -2.5116300804887923 + -0.13146240018136576)))))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-(kernel_dp.dot_product * -2.5116300804887923 + -0.13146240018136576))))))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-(kernel_dp.dot_product * -2.5116300804887923 + -0.13146240018136576)))))) IS NULL OR 1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-(kernel_dp.dot_product * -2.5116300804887923 + -0.13146240018136576)))))) > 0.0) THEN ln(1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-(kernel_dp.dot_product * -2.5116300804887923 + -0.13146240018136576))))))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS "Decision", max(1.0 - 1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-(kernel_dp.dot_product * -2.5116300804887923 + -0.13146240018136576)))))), 1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-(kernel_dp.dot_product * -2.5116300804887923 + -0.13146240018136576))))))) AS "DecisionProba" 
FROM kernel_dp