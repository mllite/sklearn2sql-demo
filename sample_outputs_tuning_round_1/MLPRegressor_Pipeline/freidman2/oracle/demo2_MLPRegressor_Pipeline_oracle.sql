-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 37.1024906382 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 820.420898922 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.566181762373 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.66448350657 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman2 "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 37.1024906382) / 27.2361073362 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 820.420898922) / 386.031348182 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.566181762373) / 0.306900434257 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.66448350657) / 3.34652241867 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS FLOAT) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS FLOAT) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS FLOAT) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS FLOAT) AS scaler_output_5 
FROM "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -7.01838289745 * "IL".scaler_output_2 + 4.42602189544 * "IL".scaler_output_3 + -1.87324307276 * "IL".scaler_output_4 + 0.335624220397 * "IL".scaler_output_5 + -2.12658050446 AS "NEUR_1_1", -3.96411527023 * "IL".scaler_output_2 + 3.64090963656 * "IL".scaler_output_3 + 3.43437075646 * "IL".scaler_output_4 + 3.72615195465 * "IL".scaler_output_5 + 0.37819476443 AS "NEUR_1_2", 1.55419328918 * "IL".scaler_output_2 + 15.9768317102 * "IL".scaler_output_3 + 13.1148617224 * "IL".scaler_output_4 + -2.2547658423 * "IL".scaler_output_5 + 17.3395588561 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", -3.03439920005 * "HL_1_relu"."NEUR_1_1" + 2.37873891138 * "HL_1_relu"."NEUR_1_2" + 1.42745623346 * "HL_1_relu"."NEUR_1_3" + 2.54966296285 AS "NEUR_2_1", 2.11341819534 * "HL_1_relu"."NEUR_1_1" + 3.85806038598 * "HL_1_relu"."NEUR_1_2" + -2.10990112273 * "HL_1_relu"."NEUR_1_3" + -0.386074354528 AS "NEUR_2_2", -0.30072141613 * "HL_1_relu"."NEUR_1_1" + -0.827349726984 * "HL_1_relu"."NEUR_1_2" + -0.30104788738 * "HL_1_relu"."NEUR_1_3" + -0.0103942825038 AS "NEUR_2_3", -0.341333271943 * "HL_1_relu"."NEUR_1_1" + -0.518902574499 * "HL_1_relu"."NEUR_1_2" + -0.122330400084 * "HL_1_relu"."NEUR_1_3" + -0.740628349607 AS "NEUR_2_4", -3.35956584984 * "HL_1_relu"."NEUR_1_1" + 4.30024305611 * "HL_1_relu"."NEUR_1_2" + 2.92697130517 * "HL_1_relu"."NEUR_1_3" + 13.410431643 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 9.97063669301 * "HL_2_relu"."NEUR_2_1" + 3.92648834362 * "HL_2_relu"."NEUR_2_2" + -0.718399462176 * "HL_2_relu"."NEUR_2_3" + 0.682963516392 * "HL_2_relu"."NEUR_2_4" + 1.43324290282 * "HL_2_relu"."NEUR_2_5" + 38.6145814836 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"