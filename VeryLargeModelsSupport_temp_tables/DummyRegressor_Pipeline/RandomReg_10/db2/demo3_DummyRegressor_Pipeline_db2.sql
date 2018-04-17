-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyRegressor_Pipeline
-- Dataset : RandomReg_10
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180417011619_13un96_ads_imp_1_out part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417011619_13un96_ads_imp_1_out (
	"KEY" BIGINT, 
	impter_2 DOUBLE, 
	impter_3 DOUBLE, 
	impter_4 DOUBLE, 
	impter_5 DOUBLE, 
	impter_6 DOUBLE, 
	impter_7 DOUBLE, 
	impter_8 DOUBLE, 
	impter_9 DOUBLE, 
	impter_10 DOUBLE, 
	impter_11 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417011619_13un96_ads_imp_1_out part 2/2. Populate

INSERT INTO tmp_20180417011619_13un96_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.16680947298137394 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.16351271994443456 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.19149292241003152 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.058384844753055345 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.09933205162122274 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.21293121660488037 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.047865568690029614 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.05078698959084227 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.1913199225908187 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.19940405677473352 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RANDOMREG_10" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180417011619_5t4vw6_ads_sca_2_out part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417011619_5t4vw6_ads_sca_2_out (
	"KEY" BIGINT, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417011619_5t4vw6_ads_sca_2_out part 2/2. Populate

INSERT INTO tmp_20180417011619_5t4vw6_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.16680947298137394) / 1.0289835997047314 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - -0.16351271994443456) / 0.9915812535046814 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.19149292241003152) / 0.9321147629147756 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.058384844753055345) / 1.0855729329506805 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - -0.09933205162122274) / 1.0743904412882828 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - 0.21293121660488037) / 0.9358074381886248 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.047865568690029614) / 1.1363574090613386 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.05078698959084227) / 0.9725457460098452 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - -0.1913199225908187) / 1.1415974677936562 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - 0.19940405677473352) / 0.882245682091319 AS scaler_11 
FROM tmp_20180417011619_13un96_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Model deployment code

WITH dummy_class_reg_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 26.405852730652413 AS "Constant" 
FROM tmp_20180417011619_5t4vw6_ads_sca_2_out AS "ADS_sca_2_OUT")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte