-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : Ridge_Pipeline
-- Dataset : RandomReg_10
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180508182317_codegen_bymcfj_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180508182317_codegen_bymcfj_ads_imp_1_out  (
	"KEY" BIGINT, 
	impter_2 DOUBLE PRECISION, 
	impter_3 DOUBLE PRECISION, 
	impter_4 DOUBLE PRECISION, 
	impter_5 DOUBLE PRECISION, 
	impter_6 DOUBLE PRECISION, 
	impter_7 DOUBLE PRECISION, 
	impter_8 DOUBLE PRECISION, 
	impter_9 DOUBLE PRECISION, 
	impter_10 DOUBLE PRECISION, 
	impter_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180508182317_codegen_bymcfj_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180508182317_codegen_bymcfj_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.16680947298137394 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.16351271994443456 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.19149292241003152 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.058384844753055345 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.09933205162122274 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.21293121660488037 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.047865568690029614 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.05078698959084227 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.1913199225908187 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.19940405677473352 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180508182317_codegen_0spvna_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180508182317_codegen_0spvna_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_2 DOUBLE PRECISION, 
	scaler_3 DOUBLE PRECISION, 
	scaler_4 DOUBLE PRECISION, 
	scaler_5 DOUBLE PRECISION, 
	scaler_6 DOUBLE PRECISION, 
	scaler_7 DOUBLE PRECISION, 
	scaler_8 DOUBLE PRECISION, 
	scaler_9 DOUBLE PRECISION, 
	scaler_10 DOUBLE PRECISION, 
	scaler_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180508182317_codegen_0spvna_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180508182317_codegen_0spvna_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - CAST(0.166809472981374 AS DOUBLE PRECISION)) / CAST(1.028983599704731 AS DOUBLE PRECISION) AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - CAST(-0.163512719944435 AS DOUBLE PRECISION)) / CAST(0.991581253504681 AS DOUBLE PRECISION) AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - CAST(0.191492922410032 AS DOUBLE PRECISION)) / CAST(0.932114762914776 AS DOUBLE PRECISION) AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - CAST(0.058384844753055 AS DOUBLE PRECISION)) / CAST(1.08557293295068 AS DOUBLE PRECISION) AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - CAST(-0.099332051621223 AS DOUBLE PRECISION)) / CAST(1.074390441288283 AS DOUBLE PRECISION) AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - CAST(0.21293121660488 AS DOUBLE PRECISION)) / CAST(0.935807438188625 AS DOUBLE PRECISION) AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - CAST(0.04786556869003 AS DOUBLE PRECISION)) / CAST(1.136357409061339 AS DOUBLE PRECISION) AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - CAST(0.050786989590842 AS DOUBLE PRECISION)) / CAST(0.972545746009845 AS DOUBLE PRECISION) AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - CAST(-0.191319922590819 AS DOUBLE PRECISION)) / CAST(1.141597467793656 AS DOUBLE PRECISION) AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - CAST(0.199404056774734 AS DOUBLE PRECISION)) / CAST(0.882245682091319 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180508182317_codegen_bymcfj_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH linear_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE PRECISION) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE PRECISION) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE PRECISION) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE PRECISION) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE PRECISION) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE PRECISION) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE PRECISION) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE PRECISION) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE PRECISION) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180508182317_codegen_0spvna_ads_sca_2_out AS "ADS_sca_2_OUT"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", CAST(34.93629964239755 AS DOUBLE PRECISION) * linear_input.scaler_2 + CAST(73.71003738769787 AS DOUBLE PRECISION) * linear_input.scaler_3 + CAST(87.30118845385824 AS DOUBLE PRECISION) * linear_input.scaler_4 + CAST(37.2003535662938 AS DOUBLE PRECISION) * linear_input.scaler_5 + CAST(56.82441624467638 AS DOUBLE PRECISION) * linear_input.scaler_6 + CAST(78.45109933480481 AS DOUBLE PRECISION) * linear_input.scaler_7 + CAST(37.884334274023054 AS DOUBLE PRECISION) * linear_input.scaler_8 + CAST(39.106491966994035 AS DOUBLE PRECISION) * linear_input.scaler_9 + CAST(92.64892488769325 AS DOUBLE PRECISION) * linear_input.scaler_10 + CAST(52.57456364033038 AS DOUBLE PRECISION) * linear_input.scaler_11 + CAST(26.405852730652413 AS DOUBLE PRECISION) AS "Estimator" 
FROM linear_input)
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte