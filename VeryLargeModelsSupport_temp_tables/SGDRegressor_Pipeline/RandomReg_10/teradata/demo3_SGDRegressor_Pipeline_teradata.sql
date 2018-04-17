-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDRegressor_Pipeline
-- Dataset : RandomReg_10
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180417011738_2yn1a5_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417011738_2yn1a5_ads_  (
	"KEY" BIGINT, 
	impter_2 FLOAT, 
	impter_3 FLOAT, 
	impter_4 FLOAT, 
	impter_5 FLOAT, 
	impter_6 FLOAT, 
	impter_7 FLOAT, 
	impter_8 FLOAT, 
	impter_9 FLOAT, 
	impter_10 FLOAT, 
	impter_11 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417011738_2yn1a5_ads_ part 2/2. Populate

INSERT INTO tmp_20180417011738_2yn1a5_ads_ ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.16680947298137394 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.16351271994443456 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.19149292241003152 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.058384844753055345 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.09933205162122274 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.21293121660488037 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.047865568690029614 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.05078698959084227 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.1913199225908187 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.19940405677473352 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180417011738_tknrak_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417011738_tknrak_ads_  (
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

-- Code For temporary table tmp_20180417011738_tknrak_ads_ part 2/2. Populate

INSERT INTO tmp_20180417011738_tknrak_ads_ ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.166809472981374) / 1.028983599704731 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.163512719944435) / 0.991581253504681 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.191492922410032) / 0.932114762914776 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.058384844753055) / 1.08557293295068 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.099332051621223) / 1.074390441288283 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.21293121660488) / 0.935807438188625 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.04786556869003) / 1.136357409061339 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.050786989590842) / 0.972545746009845 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.191319922590819) / 1.141597467793656 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.199404056774734) / 0.882245682091319 AS scaler_11 
FROM tmp_20180417011738_2yn1a5_ads_ AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH linear_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS FLOAT) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS FLOAT) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS FLOAT) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS FLOAT) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS FLOAT) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS FLOAT) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS FLOAT) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS FLOAT) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS FLOAT) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS FLOAT) AS scaler_11 
FROM tmp_20180417011738_tknrak_ads_ AS "ADS_sca_2_OUT"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", 27.47234926415581 * linear_input.scaler_2 + 55.058999608561706 * linear_input.scaler_3 + 66.05234096939769 * linear_input.scaler_4 + 33.828318306544865 * linear_input.scaler_5 + 43.37201281310904 * linear_input.scaler_6 + 55.56899634206041 * linear_input.scaler_7 + 22.84541388462431 * linear_input.scaler_8 + 32.642963122076885 * linear_input.scaler_9 + 68.23784430018478 * linear_input.scaler_10 + 28.597451330145503 * linear_input.scaler_11 + 17.846455791454694 AS "Estimator" 
FROM linear_input)
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte