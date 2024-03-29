-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_linear_Pipeline
-- Dataset : BreastCancer
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180602142807_VPM_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180602142807_VPM_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	impter_2 FLOAT, 
	impter_3 FLOAT, 
	impter_4 FLOAT, 
	impter_5 FLOAT, 
	impter_6 FLOAT, 
	impter_7 FLOAT, 
	impter_8 FLOAT, 
	impter_9 FLOAT, 
	impter_10 FLOAT, 
	impter_11 FLOAT, 
	impter_12 FLOAT, 
	impter_13 FLOAT, 
	impter_14 FLOAT, 
	impter_15 FLOAT, 
	impter_16 FLOAT, 
	impter_17 FLOAT, 
	impter_18 FLOAT, 
	impter_19 FLOAT, 
	impter_20 FLOAT, 
	impter_21 FLOAT, 
	impter_22 FLOAT, 
	impter_23 FLOAT, 
	impter_24 FLOAT, 
	impter_25 FLOAT, 
	impter_26 FLOAT, 
	impter_27 FLOAT, 
	impter_28 FLOAT, 
	impter_29 FLOAT, 
	impter_30 FLOAT, 
	impter_31 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180602142807_VPM_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180602142807_VPM_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14, impter_15, impter_16, impter_17, impter_18, impter_19, impter_20, impter_21, impter_22, impter_23, impter_24, impter_25, impter_26, impter_27, impter_28, impter_29, impter_30, impter_31) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14, "ADS_imp_1_OUT".impter_15, "ADS_imp_1_OUT".impter_16, "ADS_imp_1_OUT".impter_17, "ADS_imp_1_OUT".impter_18, "ADS_imp_1_OUT".impter_19, "ADS_imp_1_OUT".impter_20, "ADS_imp_1_OUT".impter_21, "ADS_imp_1_OUT".impter_22, "ADS_imp_1_OUT".impter_23, "ADS_imp_1_OUT".impter_24, "ADS_imp_1_OUT".impter_25, "ADS_imp_1_OUT".impter_26, "ADS_imp_1_OUT".impter_27, "ADS_imp_1_OUT".impter_28, "ADS_imp_1_OUT".impter_29, "ADS_imp_1_OUT".impter_30, "ADS_imp_1_OUT".impter_31 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 13.450740000000003 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.4476 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 87.29319999999998 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 583.3380000000001 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.09348100000000001 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0959074 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.07945570000000003 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.04142684 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.178872 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.0630418 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.3765220000000001 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.2955559999999997 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.7619079999999996 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 33.839960000000005 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.006920639999999998 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.02546753999999999 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.033411 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.011515259999999998 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.02063639999999999 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.0038469800000000003 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 15.393479999999997 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 26.079600000000006 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 101.605 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 769.482 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.12837400000000002 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.23153520000000005 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.2537764 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.10431359999999998 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.284744 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.08354739999999998 ELSE "ADS"."Feature_29" END AS impter_31 
FROM "BreastCancer" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180602142807_VPM_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180602142807_VPM_ADS_imp_1_OUT_KEY" ON "TMP_20180602142807_VPM_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180602142807_NS1_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180602142807_NS1_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT, 
	scaler_12 FLOAT, 
	scaler_13 FLOAT, 
	scaler_14 FLOAT, 
	scaler_15 FLOAT, 
	scaler_16 FLOAT, 
	scaler_17 FLOAT, 
	scaler_18 FLOAT, 
	scaler_19 FLOAT, 
	scaler_20 FLOAT, 
	scaler_21 FLOAT, 
	scaler_22 FLOAT, 
	scaler_23 FLOAT, 
	scaler_24 FLOAT, 
	scaler_25 FLOAT, 
	scaler_26 FLOAT, 
	scaler_27 FLOAT, 
	scaler_28 FLOAT, 
	scaler_29 FLOAT, 
	scaler_30 FLOAT, 
	scaler_31 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180602142807_NS1_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180602142807_NS1_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14, scaler_15, scaler_16, scaler_17, scaler_18, scaler_19, scaler_20, scaler_21, scaler_22, scaler_23, scaler_24, scaler_25, scaler_26, scaler_27, scaler_28, scaler_29, scaler_30, scaler_31) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14, "ADS_sca_2_OUT".scaler_15, "ADS_sca_2_OUT".scaler_16, "ADS_sca_2_OUT".scaler_17, "ADS_sca_2_OUT".scaler_18, "ADS_sca_2_OUT".scaler_19, "ADS_sca_2_OUT".scaler_20, "ADS_sca_2_OUT".scaler_21, "ADS_sca_2_OUT".scaler_22, "ADS_sca_2_OUT".scaler_23, "ADS_sca_2_OUT".scaler_24, "ADS_sca_2_OUT".scaler_25, "ADS_sca_2_OUT".scaler_26, "ADS_sca_2_OUT".scaler_27, "ADS_sca_2_OUT".scaler_28, "ADS_sca_2_OUT".scaler_29, "ADS_sca_2_OUT".scaler_30, "ADS_sca_2_OUT".scaler_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 13.450740000000003) / 2.842552647252114 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 19.4476) / 4.456612417520733 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 87.29319999999998) / 19.783373366541916 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 583.3380000000001) / 254.63059980293016 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.09348100000000001) / 0.012981839045374118 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.0959074) / 0.04794022510627167 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.07945570000000003) / 0.072003293484465 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.04142684) / 0.03286028997155077 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.178872) / 0.023767574886807447 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.0630418) / 0.006170491614126058 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 0.3765220000000001) / 0.22931747451077505 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 1.2955559999999997) / 0.4864979388075555 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - 2.7619079999999996) / 1.8449532326690556 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - 33.839960000000005) / 28.135330141983403 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - 0.006920639999999998) / 0.002156646106898394 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - 0.02546753999999999) / 0.019603893631837527 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - 0.033411) / 0.029953011615528748 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - 0.011515259999999998) / 0.006801917382062208 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - 0.02063639999999999) / 0.008194260127674737 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - 0.0038469800000000003) / 0.0021774517444940085 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - 15.393479999999997) / 3.899252873256619 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - 26.079600000000006) / 5.855341137798891 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - 101.605) / 28.256795094277766 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - 769.482) / 402.52477721998673 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - 0.12837400000000002) / 0.022491495459395314 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - 0.23153520000000005) / 0.13583353927863323 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - 0.2537764) / 0.19191074193759974 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - 0.10431359999999998) / 0.06250764832434509 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - 0.284744) / 0.05511358511292836 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - 0.08354739999999998) / 0.015270954103788016 AS scaler_31 
FROM "TMP_20180602142807_VPM_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180602142807_NS1_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180602142807_NS1_ADS_sca_2_OUT_KEY" ON "TMP_20180602142807_NS1_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS FLOAT) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS FLOAT) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS FLOAT) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS FLOAT) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS FLOAT) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS FLOAT) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS FLOAT) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS FLOAT) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS FLOAT) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS FLOAT) AS scaler_11, CAST("ADS_sca_2_OUT".scaler_12 AS FLOAT) AS scaler_12, CAST("ADS_sca_2_OUT".scaler_13 AS FLOAT) AS scaler_13, CAST("ADS_sca_2_OUT".scaler_14 AS FLOAT) AS scaler_14, CAST("ADS_sca_2_OUT".scaler_15 AS FLOAT) AS scaler_15, CAST("ADS_sca_2_OUT".scaler_16 AS FLOAT) AS scaler_16, CAST("ADS_sca_2_OUT".scaler_17 AS FLOAT) AS scaler_17, CAST("ADS_sca_2_OUT".scaler_18 AS FLOAT) AS scaler_18, CAST("ADS_sca_2_OUT".scaler_19 AS FLOAT) AS scaler_19, CAST("ADS_sca_2_OUT".scaler_20 AS FLOAT) AS scaler_20, CAST("ADS_sca_2_OUT".scaler_21 AS FLOAT) AS scaler_21, CAST("ADS_sca_2_OUT".scaler_22 AS FLOAT) AS scaler_22, CAST("ADS_sca_2_OUT".scaler_23 AS FLOAT) AS scaler_23, CAST("ADS_sca_2_OUT".scaler_24 AS FLOAT) AS scaler_24, CAST("ADS_sca_2_OUT".scaler_25 AS FLOAT) AS scaler_25, CAST("ADS_sca_2_OUT".scaler_26 AS FLOAT) AS scaler_26, CAST("ADS_sca_2_OUT".scaler_27 AS FLOAT) AS scaler_27, CAST("ADS_sca_2_OUT".scaler_28 AS FLOAT) AS scaler_28, CAST("ADS_sca_2_OUT".scaler_29 AS FLOAT) AS scaler_29, CAST("ADS_sca_2_OUT".scaler_30 AS FLOAT) AS scaler_30, CAST("ADS_sca_2_OUT".scaler_31 AS FLOAT) AS scaler_31 
FROM "TMP_20180602142807_NS1_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS FLOAT) AS dual_coeff, CAST("Values".sv_0 AS FLOAT) AS sv_0, CAST("Values".sv_1 AS FLOAT) AS sv_1, CAST("Values".sv_2 AS FLOAT) AS sv_2, CAST("Values".sv_3 AS FLOAT) AS sv_3, CAST("Values".sv_4 AS FLOAT) AS sv_4, CAST("Values".sv_5 AS FLOAT) AS sv_5, CAST("Values".sv_6 AS FLOAT) AS sv_6, CAST("Values".sv_7 AS FLOAT) AS sv_7, CAST("Values".sv_8 AS FLOAT) AS sv_8, CAST("Values".sv_9 AS FLOAT) AS sv_9, CAST("Values".sv_10 AS FLOAT) AS sv_10, CAST("Values".sv_11 AS FLOAT) AS sv_11, CAST("Values".sv_12 AS FLOAT) AS sv_12, CAST("Values".sv_13 AS FLOAT) AS sv_13, CAST("Values".sv_14 AS FLOAT) AS sv_14, CAST("Values".sv_15 AS FLOAT) AS sv_15, CAST("Values".sv_16 AS FLOAT) AS sv_16, CAST("Values".sv_17 AS FLOAT) AS sv_17, CAST("Values".sv_18 AS FLOAT) AS sv_18, CAST("Values".sv_19 AS FLOAT) AS sv_19, CAST("Values".sv_20 AS FLOAT) AS sv_20, CAST("Values".sv_21 AS FLOAT) AS sv_21, CAST("Values".sv_22 AS FLOAT) AS sv_22, CAST("Values".sv_23 AS FLOAT) AS sv_23, CAST("Values".sv_24 AS FLOAT) AS sv_24, CAST("Values".sv_25 AS FLOAT) AS sv_25, CAST("Values".sv_26 AS FLOAT) AS sv_26, CAST("Values".sv_27 AS FLOAT) AS sv_27, CAST("Values".sv_28 AS FLOAT) AS sv_28, CAST("Values".sv_29 AS FLOAT) AS sv_29 
FROM (SELECT 0 AS sv_idx, -0.037862739155381825 AS dual_coeff, 0.9882877640685742 AS sv_0, 0.545795723773792 AS sv_1, 1.0214031563582684 AS sv_2, 0.9561380297121628 AS sv_3, 1.7731694191819818 AS sv_4, 0.6756872736453277 AS sv_5, 1.3949959111477481 AS sv_6, 1.1680712505346342 AS sv_7, 0.3377711036247148 AS sv_8, 0.3692088317216966 AS sv_9, 0.8463288740382525 AS sv_10, 0.3318492990858548 AS sv_11, 0.10791167845050359 AS sv_12, 0.8487563458289161 AS sv_13, 1.6875091320541182 AS sv_14, 0.6168397067999473 AS sv_15, 0.8339395156862944 AS sv_16, 0.05068276790734625 AS sv_17, 2.389916806992701 AS sv_18, 1.0746598660186466 AS sv_19, 0.5992224859344821 AS sv_20, -0.14851397715947615 AS sv_21, 0.4280386349423377 AS sv_22, 0.5110691605639264 AS sv_23, 0.632505740922505 AS sv_24, -0.14676198607405255 AS sv_25, 0.42010988642946795 AS sv_26, 0.006181643532564801 AS sv_27, -0.20220060039944426 AS sv_28, -0.26307459067036587 AS sv_29 UNION ALL SELECT 1 AS sv_idx, -0.1269996401726062 AS dual_coeff, 0.05602710653537139 AS sv_0, 1.176319479654551 AS sv_1, 0.02359557146050143 AS sv_2, -0.042170893868649986 AS sv_3, -0.06940465036200481 AS sv_4, -0.3606032295776272 AS sv_5, -0.3695067088249278 AS sv_6, -0.32187299653037266 AS sv_7, -0.11662948421122415 AS sv_8, -0.28227896720781626 AS sv_9, -0.6345874875451865 AS sv_10, -0.597239940444918 AS sv_11, -0.5473894850651507 AS sv_12, -0.4979490174559712 AS sv_13, -1.313446833460216 AS sv_14, -0.7002455868106682 AS sv_15, -0.5158412849541191 AS sv_16, -0.6814637314213714 AS sv_17, -0.9038521946583215 AS sv_18, -1.0939300978876663 AS sv_19, 0.38379660120635484 AS sv_20, 1.632765670693935 AS sv_21, 0.4103437761187603 AS sv_22, 0.19680279198491693 AS sv_23, 0.8325813654235086 AS sv_24, 0.4186359296974075 AS sv_25, 0.6556360458494389 AS sv_26, 0.4573264355054349 AS sv_27, 1.1295944524827541 AS sv_28, -0.2977810010490425 AS sv_29 UNION ALL SELECT 2 AS sv_idx, -0.15330325770321127 AS dual_coeff, 0.1861918021154792 AS sv_0, 0.03868409093019308 AS sv_1, 0.1934351603792703 AS sv_2, 0.06347233997998829 AS sv_3, 0.9643471896580743 AS sv_4, 0.3627976289524066 AS sv_5, 0.46031644381865655 AS sv_6, 0.7061154974617828 AS sv_7, -0.5037114664418393 AS sv_8, 0.3886562287046663 AS sv_9, -0.6790673075927456 AS sv_10, -0.7035096609841676 AS sv_11, -0.6286923589504676 AS sv_12, -0.5327806684461847 AS sv_13, -0.7449715532190888 AS sv_14, -0.3855121917069697 AS sv_15, -0.38597120544654523 AS sv_16, -0.2864280599964186 AS sv_17, -1.0258888379206788 AS sv_18, -0.4597024951442062 AS sv_19, 0.42226550919352007 AS sv_20, 0.8061699376536177 AS sv_21, 0.43511657847176877 AS sv_22, 0.2479797658404708 AS sv_23, 1.4639311138488966 AS sv_24, 0.9221934484313643 AS sv_25, 0.7978896775345097 AS sv_26, 1.2540289404788016 AS sv_27, 0.6015939614899484 AS sv_28, 1.4375395178847792 AS sv_29 UNION ALL SELECT 3 AS sv_idx, -0.10064627943285931 AS dual_coeff, 1.6285573477328854 AS sv_0, 0.536820296643817 AS sv_1, 1.5218233737082127 AS sv_2, 1.7305932607512515 AS sv_3, -1.5229737428492542 AS sv_4, -0.19790061433730816 AS sv_5, 0.42837346053697867 AS sv_6, 0.4976572030909637 AS sv_7, -0.07876276855822992 AS sv_8, -1.562565935253375 AS sv_9, 1.1323951676774562 AS sv_10, 0.01941220968612573 AS sv_11, 0.8401795625775915 AS sv_12, 1.5112685646631812 AS sv_13, -0.6448160389188576 AS sv_14, 1.402397937690864 AS sv_15, 0.9244145582224192 AS sv_16, 0.4299875808125853 AS sv_17, 0.09318718079513724 AS sv_18, 0.5460603216611357 AS sv_19, 1.1198350406941238 AS sv_20, -0.2356139407649644 AS sv_21, 0.9730402867085218 AS sv_22, 1.1391050338981048 AS sv_23, -1.7852970280473983 AS sv_24, -0.2593998521066482 AS sv_25, -0.0014402528863646524 AS sv_26, -0.2000331213089351 AS sv_27, -0.8680981268405439 AS sv_28, -1.176573505354397 AS sv_29 UNION ALL SELECT 4 AS sv_idx, 0.024407560658559372 AS dual_coeff, -0.7847664676172141 AS sv_0, 3.2227168652888993 AS sv_1, -0.8341954475726855 AS sv_2, -0.7718553863993938 AS sv_3, -1.2079182267775614 AS sv_4, -1.2550504272064575 AS sv_5, -1.0345179559886557 AS sv_6, -1.0648974805242288 AS sv_7, 0.23679319521672784 AS sv_8, -0.7717051246125747 AS sv_9, -0.6655489309116247 AS sv_10, 0.7223956608355157 AS sv_11, -0.689940523944073 AS sv_12, -0.6532697468715151 AS sv_13, -1.1877887576483517 AS sv_14, -0.9515732104210284 AS sv_15, -1.0078452339780561 AS sv_16, -1.1902908467178956 AS sv_17, -0.1801749001125429 AS sv_18, -0.6029892526068852 AS sv_19, -0.7779644200060468 AS sv_20, 2.681380918807065 AS sv_21, -0.819802809296342 AS sv_22, -0.7417729712494686 AS sv_23, -1.2642111793470074 AS sv_24, -1.1976806381101976 AS sv_25, -1.20158151478034 AS sv_26, -1.1885521530821144 AS sv_27, 0.11532546806702036 AS sv_28, -0.6860998945312151 AS sv_29 UNION ALL SELECT 5 AS sv_idx, 0.10154379313240665 AS dual_coeff, 0.34801818040426113 AS sv_0, -0.9575883204970556 AS sv_1, 0.3374955259800115 AS sv_2, 0.22291900519391838 AS sv_3, 0.4790538519437302 AS sv_4, 0.1291733609150254 AS sv_5, 0.07519517147042899 AS sv_6, 0.4227948083242171 AS sv_7, -0.27230375967353687 AS sv_8, -0.36168917155494545 AS sv_9, -0.5927241275004249 AS sv_10, -1.1431826440276018 AS sv_11, -0.3479264344665065 AS sv_12, -0.4492557910716931 AS sv_13, -0.5632078420816322 AS sv_14, -0.1274002015570969 AS sv_15, -0.0758187533577636 AS sv_16, 0.5020260917907122 AS sv_17, -0.7439841919846334 AS sv_18, -0.6057447671734751 AS sv_19, 0.11707883916200637 AS sv_20, -1.0639175162289185 AS sv_21, 0.24755107494184772 AS sv_22, -0.006414511965778659 AS sv_23, 0.14343199214227395 AS sv_24, 0.3089428444761218 AS sv_25, 0.2945306731104129 AS sv_26, 0.8892735767560553 AS sv_27, -0.28385016086224946 AS sv_28, -0.4398808322221143 AS sv_29 UNION ALL SELECT 6 AS sv_idx, 0.11883290622698837 AS dual_coeff, 0.4007876515853859 AS sv_0, 0.7253042663732964 AS sv_1, 0.45982046799888676 AS sv_2, 0.28968238718004674 AS sv_3, -0.6740955552917824 AS sv_4, 0.7737260289824431 AS sv_5, 0.3256003838915809 AS sv_6, -0.12376153720861631 AS sv_7, -1.4083052292633838 AS sv_8, -0.25472848814860855 AS sv_9, -0.6590077809046307 AS sv_10, -0.3855227022332593 AS sv_11, -0.29155644190602004 AS sv_12, -0.5082563427489936 AS sv_13, -1.2420396612276436 AS sv_14, 1.067260432693895 AS sv_15, 1.0806592811261329 AS sv_16, 0.6681557191484334 AS sv_17, -0.5194367683818962 AS sv_18, 0.2567312921691882 AS sv_19, 0.022188866126998073 AS sv_20, 0.20330156210974965 AS sv_21, 0.15199883729453006 AS sv_22, -0.08939077054711389 AS sv_23, -1.1459442546419703 AS sv_24, 0.6299239529088776 AS sv_25, 0.5858119189417486 AS sv_26, 0.09897028869010549 AS sv_27, -1.0695003759821298 AS sv_28, -0.22967785615503594 AS sv_29 UNION ALL SELECT 7 AS sv_idx, 0.17402765644610424 AS dual_coeff, -0.34502087444117546 AS sv_0, -0.19018930088417468 AS sv_1, -0.31355623154193574 AS sv_2, -0.39837317305346426 AS sv_3, 0.4752023175174263 AS sv_4, 0.20635280660594615 AS sv_5, 0.008253789114913012 AS sv_6, -0.09789444958595983 AS sv_7, 0.5733862232433494 AS sv_8, 0.11153082169733591 AS sv_9, 0.08537508989128523 AS sv_10, -0.5170751609278821 AS sv_11, -0.1435852114347434 AS sv_12, -0.1261744568869577 AS sv_13, 0.015004779827572649 AS sv_14, -0.324299862027158 AS sv_15, -0.21370138275783557 AS sv_16, -0.16837311241389655 AS sv_17, -0.34370400208410173 AS sv_18, -0.11985569859810878 AS sv_19, -0.10860542102936493 AS sv_20, -0.2458609953067863 AS sv_21, -0.19658988152994533 AS sv_22, -0.22751891357472598 AS sv_23, 0.632505740922505 AS sv_24, 0.04612115706673204 AS sv_25, 0.0694260251692018 AS sv_26, -0.04501209172676791 AS sv_27, 0.30221223979299605 AS sv_28, 0.2588312408731264 AS sv_29) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 0.6932483317395821 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * (kernel_input.scaler_2 * "SV_data".sv_0 + kernel_input.scaler_3 * "SV_data".sv_1 + kernel_input.scaler_4 * "SV_data".sv_2 + kernel_input.scaler_5 * "SV_data".sv_3 + kernel_input.scaler_6 * "SV_data".sv_4 + kernel_input.scaler_7 * "SV_data".sv_5 + kernel_input.scaler_8 * "SV_data".sv_6 + kernel_input.scaler_9 * "SV_data".sv_7 + kernel_input.scaler_10 * "SV_data".sv_8 + kernel_input.scaler_11 * "SV_data".sv_9 + kernel_input.scaler_12 * "SV_data".sv_10 + kernel_input.scaler_13 * "SV_data".sv_11 + kernel_input.scaler_14 * "SV_data".sv_12 + kernel_input.scaler_15 * "SV_data".sv_13 + kernel_input.scaler_16 * "SV_data".sv_14 + kernel_input.scaler_17 * "SV_data".sv_15 + kernel_input.scaler_18 * "SV_data".sv_16 + kernel_input.scaler_19 * "SV_data".sv_17 + kernel_input.scaler_20 * "SV_data".sv_18 + kernel_input.scaler_21 * "SV_data".sv_19 + kernel_input.scaler_22 * "SV_data".sv_20 + kernel_input.scaler_23 * "SV_data".sv_21 + kernel_input.scaler_24 * "SV_data".sv_22 + kernel_input.scaler_25 * "SV_data".sv_23 + kernel_input.scaler_26 * "SV_data".sv_24 + kernel_input.scaler_27 * "SV_data".sv_25 + kernel_input.scaler_28 * "SV_data".sv_26 + kernel_input.scaler_29 * "SV_data".sv_27 + kernel_input.scaler_30 * "SV_data".sv_28 + kernel_input.scaler_31 * "SV_data".sv_29) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", -kernel_dp.dot_product AS "Score_0", kernel_dp.dot_product AS "Score_1", 1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -1.7000501334849745 + 0.06250617733887273))), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -1.7000501334849745 + 0.06250617733887273))), 100.0))) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -1.7000501334849745 + 0.06250617733887273))), 100.0))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -1.7000501334849745 + 0.06250617733887273))), 100.0))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -1.7000501334849745 + 0.06250617733887273))), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -1.7000501334849745 + 0.06250617733887273))), 100.0))) IS NULL OR 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -1.7000501334849745 + 0.06250617733887273))), 100.0))) > 0.0) THEN ln(1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -1.7000501334849745 + 0.06250617733887273))), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS "Decision", max(1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -1.7000501334849745 + 0.06250617733887273))), 100.0))), 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -1.7000501334849745 + 0.06250617733887273))), 100.0)))) AS "DecisionProba" 
FROM kernel_dp