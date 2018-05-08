-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : diabetes
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180508183426_codegen_n4zs4t_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180508183426_codegen_n4zs4t_ads_imp_1_out  (
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

-- Code For temporary table tmp_20180508183426_codegen_n4zs4t_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180508183426_codegen_n4zs4t_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0002686932066652995 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.0007239580580639441 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0007280719825586765 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.001013565221084393 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0009763580732882109 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0017643808242337245 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0016512815450565026 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0013905501983388136 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.0012726482548090939 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.001034425005681627 ELSE "ADS"."Feature_9" END AS impter_11 
FROM diabetes AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180508183426_codegen_fg16kg_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180508183426_codegen_fg16kg_ads_sca_2_out  (
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

-- Code For temporary table tmp_20180508183426_codegen_fg16kg_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180508183426_codegen_fg16kg_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - CAST(0.000268693206665 AS DOUBLE PRECISION)) / CAST(0.047242095836538 AS DOUBLE PRECISION) AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - CAST(0.000723958058064 AS DOUBLE PRECISION)) / CAST(0.047605576685039 AS DOUBLE PRECISION) AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - CAST(0.000728071982559 AS DOUBLE PRECISION)) / CAST(0.046935911439369 AS DOUBLE PRECISION) AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - CAST(0.001013565221084 AS DOUBLE PRECISION)) / CAST(0.048335271948972 AS DOUBLE PRECISION) AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - CAST(0.000976358073288 AS DOUBLE PRECISION)) / CAST(0.048050762009702 AS DOUBLE PRECISION) AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - CAST(0.001764380824234 AS DOUBLE PRECISION)) / CAST(0.048060808731544 AS DOUBLE PRECISION) AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - CAST(-0.001651281545057 AS DOUBLE PRECISION)) / CAST(0.04620240378043 AS DOUBLE PRECISION) AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - CAST(0.001390550198339 AS DOUBLE PRECISION)) / CAST(0.047363093040532 AS DOUBLE PRECISION) AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - CAST(0.001272648254809 AS DOUBLE PRECISION)) / CAST(0.045892861313648 AS DOUBLE PRECISION) AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - CAST(0.001034425005682 AS DOUBLE PRECISION)) / CAST(0.047761585195706 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180508183426_codegen_n4zs4t_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table tmp_20180508183426_codegen_j3a01y_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180508183426_codegen_j3a01y_hl_1_relu_1  (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE PRECISION, 
	"NEUR_1_2" DOUBLE PRECISION, 
	"NEUR_1_3" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180508183426_codegen_j3a01y_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180508183426_codegen_j3a01y_hl_1_relu_1 ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE PRECISION) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE PRECISION) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE PRECISION) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE PRECISION) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE PRECISION) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE PRECISION) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE PRECISION) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE PRECISION) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE PRECISION) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180508183426_codegen_fg16kg_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", CAST(-3.641525927922719 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(-2.146722650485676 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(-1.12052734571788 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(0.292041609365844 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(2.637325534039227 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(3.232647222436184 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(-3.055183568780576 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(-4.768549738940989 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(-3.363558519095022 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(-1.033870084735456 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(-1.484722234709689 AS DOUBLE PRECISION) AS "NEUR_1_1", CAST(-0.226554126985304 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(1.075962160913151 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(-3.262706426029706 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(-3.352861339614166 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(-2.37966427101974 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(-6.218291316277157 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(6.003568901416862 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(2.850536853365166 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(0.140965884918942 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(-2.654321786222787 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(-7.896491924173303 AS DOUBLE PRECISION) AS "NEUR_1_2", CAST(0.498034542761239 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(-0.277369048627235 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(1.415659356724306 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(0.888877251400475 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(-5.262065479489379 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(4.198778048858764 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(1.051674304432772 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(0.271883513744853 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(3.593513944531302 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(0.307743954272464 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(4.734244914297272 AS DOUBLE PRECISION) AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table tmp_20180508183426_codegen_yiv9c6_ol_identity_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180508183426_codegen_yiv9c6_ol_identity_1  (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180508183426_codegen_yiv9c6_ol_identity_1 part 2. Populate

INSERT INTO tmp_20180508183426_codegen_yiv9c6_ol_identity_1 ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", CAST(-1.289366387812844 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(1.776691195396982 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-2.068729167297351 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.162320286271135 AS DOUBLE PRECISION) AS "NEUR_2_1", CAST(-1.646527426755918 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.870130042231849 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-1.055860635497358 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-4.901874301898457 AS DOUBLE PRECISION) AS "NEUR_2_2", CAST(1.038153943414217 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(7.233977476988104 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(3.036843532597604 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(1.191690781274045 AS DOUBLE PRECISION) AS "NEUR_2_3", CAST(-0.19565353962266 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.505140404923012 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.406629619252232 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.8471256168976 AS DOUBLE PRECISION) AS "NEUR_2_4", CAST(0.079558239679197 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(6.453783140615478 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-1.027970251552537 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-5.108130093428866 AS DOUBLE PRECISION) AS "NEUR_2_5" 
FROM tmp_20180508183426_codegen_j3a01y_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", CAST(2.486302411075944 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_1" + CAST(1.502994444268018 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_2" + CAST(6.951523244650881 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_3" + CAST(0.702089206306155 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_4" + CAST(-8.501878860831729 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_5" + CAST(14.579846867784326 AS DOUBLE PRECISION) AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "U"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180508183426_codegen_yiv9c6_ol_identity_1 AS "OL_identity_1"