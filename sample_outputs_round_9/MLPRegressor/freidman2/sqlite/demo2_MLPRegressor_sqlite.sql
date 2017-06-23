-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3" 
FROM freidman2 AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.134579133849 * "IL"."Feature_0" + -0.59131612697 * "IL"."Feature_1" + -0.732365474102 * "IL"."Feature_2" + -0.819042271447 * "IL"."Feature_3" + 0.347593872734 AS "NEUR_1_1", 61.463088158 * "IL"."Feature_0" + 5.69186940181 * "IL"."Feature_1" + 52.1260560984 * "IL"."Feature_2" + -177.516544631 * "IL"."Feature_3" + -25.5547890001 AS "NEUR_1_2", 0.877324316334 * "IL"."Feature_0" + -0.60090436681 * "IL"."Feature_1" + 0.490583774717 * "IL"."Feature_2" + 0.131714669606 * "IL"."Feature_3" + -0.592512275061 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", 0.672795816711 * "HL_1_relu"."NEUR_1_1" + 0.255117407391 * "HL_1_relu"."NEUR_1_2" + 0.730023189177 * "HL_1_relu"."NEUR_1_3" + -18.8817132475 AS "NEUR_2_1", 0.648838670271 * "HL_1_relu"."NEUR_1_1" + -0.0693952780003 * "HL_1_relu"."NEUR_1_2" + -0.645934755527 * "HL_1_relu"."NEUR_1_3" + -0.529290429612 AS "NEUR_2_2", -0.30072134708 * "HL_1_relu"."NEUR_1_1" + -0.827349537012 * "HL_1_relu"."NEUR_1_2" + -0.301047818255 * "HL_1_relu"."NEUR_1_3" + -0.0103942825038 AS "NEUR_2_3", -0.341333193566 * "HL_1_relu"."NEUR_1_1" + -0.51890245535 * "HL_1_relu"."NEUR_1_2" + -0.122330371995 * "HL_1_relu"."NEUR_1_3" + -0.740628349607 AS "NEUR_2_4", -0.386770309998 * "HL_1_relu"."NEUR_1_1" + -0.0275923851255 * "HL_1_relu"."NEUR_1_2" + 0.725280825873 * "HL_1_relu"."NEUR_1_3" + -0.149393226565 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.3431577358 * "HL_2_relu"."NEUR_2_1" + 0.128275424665 * "HL_2_relu"."NEUR_2_2" + -0.71839929722 * "HL_2_relu"."NEUR_2_3" + 0.682963359574 * "HL_2_relu"."NEUR_2_4" + 0.768085000074 * "HL_2_relu"."NEUR_2_5" + -14.1800103925 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"