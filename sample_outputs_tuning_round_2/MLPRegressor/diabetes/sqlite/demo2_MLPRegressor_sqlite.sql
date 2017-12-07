-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."Feature_8" AS FLOAT) AS "Feature_8", CAST("ADS"."Feature_9" AS FLOAT) AS "Feature_9" 
FROM diabetes AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.0987538926682 * "IL"."Feature_0" + -0.433906562375 * "IL"."Feature_1" + -0.537408284293 * "IL"."Feature_2" + -0.601011540587 * "IL"."Feature_3" + 0.255063578565 * "IL"."Feature_4" + 0.527783429347 * "IL"."Feature_5" + -0.26776326335 * "IL"."Feature_6" + -0.0544380284383 * "IL"."Feature_7" + -0.0216452054006 * "IL"."Feature_8" + -0.236160876702 * "IL"."Feature_9" + -0.317960748727 AS "NEUR_1_1", 0.131579633547 * "IL"."Feature_0" + 0.00842814936246 * "IL"."Feature_1" + -0.423192521993 * "IL"."Feature_2" + 0.360301389942 * "IL"."Feature_3" + 0.189731064853 * "IL"."Feature_4" + 0.508989934215 * "IL"."Feature_5" + -0.303407000325 * "IL"."Feature_6" + -0.649025105486 * "IL"."Feature_7" + 0.572676186023 * "IL"."Feature_8" + -0.0959636514394 * "IL"."Feature_9" + -0.415209573684 AS "NEUR_1_2", 0.510101553118 * "IL"."Feature_0" + -7.0073496684 * "IL"."Feature_1" + 14.5914488506 * "IL"."Feature_2" + 9.84310538816 * "IL"."Feature_3" + -15.3961040076 * "IL"."Feature_4" + 11.7862871445 * "IL"."Feature_5" + -7.32703010362 * "IL"."Feature_6" + -4.4212858188 * "IL"."Feature_7" + 24.8076558333 * "IL"."Feature_8" + 2.22688868085 * "IL"."Feature_9" + 1.87033105916 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", -0.740626631427 * "HL_1_relu"."NEUR_1_1" + 0.591462462846 * "HL_1_relu"."NEUR_1_2" + -0.0760946742737 * "HL_1_relu"."NEUR_1_3" + -0.270338792323 AS "NEUR_2_1", -0.149392879988 * "HL_1_relu"."NEUR_1_1" + 0.665179821804 * "HL_1_relu"."NEUR_1_2" + -1.01530503874 * "HL_1_relu"."NEUR_1_3" + -11.7933704618 AS "NEUR_2_2", 0.00334511779566 * "HL_1_relu"."NEUR_1_1" + 0.457768057869 * "HL_1_relu"."NEUR_1_2" + 7.68068716327 * "HL_1_relu"."NEUR_1_3" + 10.9394617173 AS "NEUR_2_3", 0.111089559245 * "HL_1_relu"."NEUR_1_1" + -0.504739033466 * "HL_1_relu"."NEUR_1_2" + -0.406628763835 * "HL_1_relu"."NEUR_1_3" + -0.796433042434 AS "NEUR_2_4", -0.622150825055 * "HL_1_relu"."NEUR_1_1" + 0.433211722379 * "HL_1_relu"."NEUR_1_2" + -0.658874686629 * "HL_1_relu"."NEUR_1_3" + -0.553791628092 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", -0.108553296795 * "HL_2_relu"."NEUR_2_1" + 2.76154501248 * "HL_2_relu"."NEUR_2_2" + 4.41908026783 * "HL_2_relu"."NEUR_2_3" + 0.700836842127 * "HL_2_relu"."NEUR_2_4" + -0.248974302027 * "HL_2_relu"."NEUR_2_5" + 36.1624980847 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"