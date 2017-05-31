-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE) AS "Feature_9", CAST("ADS"."Feature_10" AS DOUBLE) AS "Feature_10", CAST("ADS"."Feature_11" AS DOUBLE) AS "Feature_11", CAST("ADS"."Feature_12" AS DOUBLE) AS "Feature_12" 
FROM boston AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.0890157600339 * "IL"."Feature_0" + -0.391118986705 * "IL"."Feature_1" + -0.484414392004 * "IL"."Feature_2" + -0.54174572393 * "IL"."Feature_3" + 0.229911729953 * "IL"."Feature_4" + 0.475738645103 * "IL"."Feature_5" + -0.241359097371 * "IL"."Feature_6" + -0.0490698882369 * "IL"."Feature_7" + -0.019510769224 * "IL"."Feature_8" + -0.212873025679 * "IL"."Feature_9" + -0.286605938085 * "IL"."Feature_10" + -0.523703314285 * "IL"."Feature_11" + 0.078552360785 * "IL"."Feature_12" + 0.470354253878 AS "NEUR_1_1", 0.118604550856 * "IL"."Feature_0" + 0.00759704859128 * "IL"."Feature_1" + -0.381461459068 * "IL"."Feature_2" + 0.324772028731 * "IL"."Feature_3" + 0.171021662879 * "IL"."Feature_4" + 0.458798378672 * "IL"."Feature_5" + -0.273488001372 * "IL"."Feature_6" + -0.585024665712 * "IL"."Feature_7" + 0.516204521916 * "IL"."Feature_8" + -0.0865006648113 * "IL"."Feature_9" + -0.374264841947 * "IL"."Feature_10" + -0.105636960731 * "IL"."Feature_11" + -0.439928076092 * "IL"."Feature_12" + 0.32369164886 AS "NEUR_1_2", 0.571167602983 * "IL"."Feature_0" + -0.401545771454 * "IL"."Feature_1" + 0.307086597493 * "IL"."Feature_2" + 0.0870529978943 * "IL"."Feature_3" + -0.392640495118 * "IL"."Feature_4" + -0.219756258755 * "IL"."Feature_5" + 0.298473153336 * "IL"."Feature_6" + -0.370272650261 * "IL"."Feature_7" + -0.476164390221 * "IL"."Feature_8" + -0.121274489633 * "IL"."Feature_9" + -0.0297517787321 * "IL"."Feature_10" + -0.322692921443 * "IL"."Feature_11" + 0.39980973828 * "IL"."Feature_12" + -0.358066921244 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", 0.433212715756 * "HL_1_relu"."NEUR_1_1" + -0.658876197462 * "HL_1_relu"."NEUR_1_2" + -0.553791613224 * "HL_1_relu"."NEUR_1_3" + -0.215618570657 AS "NEUR_2_1", 0.0795450051119 * "HL_1_relu"."NEUR_1_1" + -0.214929321112 * "HL_1_relu"."NEUR_1_2" + -0.0860802547021 * "HL_1_relu"."NEUR_1_3" + 4.67271977514 AS "NEUR_2_2", -0.769798126013 * "HL_1_relu"."NEUR_1_1" + 0.250696887042 * "HL_1_relu"."NEUR_1_2" + -0.689078628284 * "HL_1_relu"."NEUR_1_3" + -0.0994449027109 AS "NEUR_2_3", 0.349245210418 * "HL_1_relu"."NEUR_1_1" + 0.173467826901 * "HL_1_relu"."NEUR_1_2" + -0.249484763905 * "HL_1_relu"."NEUR_1_3" + -0.84127663303 AS "NEUR_2_4", -0.406629696255 * "HL_1_relu"."NEUR_1_1" + -0.796433021051 * "HL_1_relu"."NEUR_1_2" + 0.167464575774 * "HL_1_relu"."NEUR_1_3" + -0.867149871075 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", -0.319194570455 * "HL_2_relu"."NEUR_2_1" + 3.80544570756 * "HL_2_relu"."NEUR_2_2" + -0.0186906793303 * "HL_2_relu"."NEUR_2_3" + 0.345399127834 * "HL_2_relu"."NEUR_2_4" + 0.398901362295 * "HL_2_relu"."NEUR_2_5" + 4.58012261833 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"