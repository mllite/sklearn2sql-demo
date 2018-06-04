-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor
-- Dataset : diabetes
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602145947_mjo_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602145947_mjo_hl_1_relu_1  (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE PRECISION, 
	"NEUR_1_2" DOUBLE PRECISION, 
	"NEUR_1_3" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602145947_mjo_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180602145947_mjo_hl_1_relu_1 ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE PRECISION) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE PRECISION) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE PRECISION) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE PRECISION) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE PRECISION) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE PRECISION) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE PRECISION) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE PRECISION) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE PRECISION) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE PRECISION) AS "Feature_9" 
FROM diabetes AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", CAST(-0.098753892668169 AS DOUBLE PRECISION) * "IL"."Feature_0" + CAST(-0.43390656237548 AS DOUBLE PRECISION) * "IL"."Feature_1" + CAST(-0.537408284293085 AS DOUBLE PRECISION) * "IL"."Feature_2" + CAST(-0.601011540586962 AS DOUBLE PRECISION) * "IL"."Feature_3" + CAST(0.255063578565166 AS DOUBLE PRECISION) * "IL"."Feature_4" + CAST(0.527783429346845 AS DOUBLE PRECISION) * "IL"."Feature_5" + CAST(-0.26776326334952 AS DOUBLE PRECISION) * "IL"."Feature_6" + CAST(-0.054438028438304 AS DOUBLE PRECISION) * "IL"."Feature_7" + CAST(-0.021645205400587 AS DOUBLE PRECISION) * "IL"."Feature_8" + CAST(-0.236160876701643 AS DOUBLE PRECISION) * "IL"."Feature_9" + CAST(-0.317960748726666 AS DOUBLE PRECISION) AS "NEUR_1_1", CAST(0.131579633547291 AS DOUBLE PRECISION) * "IL"."Feature_0" + CAST(0.008428149362459 AS DOUBLE PRECISION) * "IL"."Feature_1" + CAST(-0.42319252199293 AS DOUBLE PRECISION) * "IL"."Feature_2" + CAST(0.360301389941951 AS DOUBLE PRECISION) * "IL"."Feature_3" + CAST(0.189731064852785 AS DOUBLE PRECISION) * "IL"."Feature_4" + CAST(0.508989934214923 AS DOUBLE PRECISION) * "IL"."Feature_5" + CAST(-0.303407000325366 AS DOUBLE PRECISION) * "IL"."Feature_6" + CAST(-0.649025105486354 AS DOUBLE PRECISION) * "IL"."Feature_7" + CAST(0.572676186022858 AS DOUBLE PRECISION) * "IL"."Feature_8" + CAST(-0.095963651439367 AS DOUBLE PRECISION) * "IL"."Feature_9" + CAST(-0.415209573684489 AS DOUBLE PRECISION) AS "NEUR_1_2", CAST(0.510101553117983 AS DOUBLE PRECISION) * "IL"."Feature_0" + CAST(-7.00734966839897 AS DOUBLE PRECISION) * "IL"."Feature_1" + CAST(14.591448850631465 AS DOUBLE PRECISION) * "IL"."Feature_2" + CAST(9.843105388161481 AS DOUBLE PRECISION) * "IL"."Feature_3" + CAST(-15.396104007633946 AS DOUBLE PRECISION) * "IL"."Feature_4" + CAST(11.786287144476413 AS DOUBLE PRECISION) * "IL"."Feature_5" + CAST(-7.32703010361668 AS DOUBLE PRECISION) * "IL"."Feature_6" + CAST(-4.421285818795744 AS DOUBLE PRECISION) * "IL"."Feature_7" + CAST(24.807655833284542 AS DOUBLE PRECISION) * "IL"."Feature_8" + CAST(2.226888680853467 AS DOUBLE PRECISION) * "IL"."Feature_9" + CAST(1.870331059159681 AS DOUBLE PRECISION) AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table tmp_20180602145947_w5s_ol_identity_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602145947_w5s_ol_identity_1  (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602145947_w5s_ol_identity_1 part 2. Populate

INSERT INTO tmp_20180602145947_w5s_ol_identity_1 ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", CAST(-0.740626631427496 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(0.591462462845888 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.07609467427374 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.270338792322754 AS DOUBLE PRECISION) AS "NEUR_2_1", CAST(-0.149392879988479 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(0.665179821803564 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-1.015305038739965 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-11.793370461844614 AS DOUBLE PRECISION) AS "NEUR_2_2", CAST(0.003345117795658 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(0.457768057869189 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(7.680687163269137 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(10.939461717287147 AS DOUBLE PRECISION) AS "NEUR_2_3", CAST(0.111089559244585 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.504739033465646 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.406628763834538 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.796433042433614 AS DOUBLE PRECISION) AS "NEUR_2_4", CAST(-0.622150825055244 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(0.433211722379406 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.658874686629282 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.553791628092022 AS DOUBLE PRECISION) AS "NEUR_2_5" 
FROM tmp_20180602145947_mjo_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", CAST(-0.108553296794727 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_1" + CAST(2.761545012483424 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_2" + CAST(4.419080267834583 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_3" + CAST(0.700836842126814 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_4" + CAST(-0.248974302027368 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_5" + CAST(36.162498084674375 AS DOUBLE PRECISION) AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "U"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180602145947_w5s_ol_identity_1 AS "OL_identity_1"