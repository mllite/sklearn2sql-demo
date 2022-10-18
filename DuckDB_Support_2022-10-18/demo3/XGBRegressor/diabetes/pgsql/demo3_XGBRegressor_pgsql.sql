-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBRegressor
-- Dataset : diabetes
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018185913_VUG1HUA_XGB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185913_VUG1HUA_XGB_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185913_VUG1HUA_XGB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < 0.00071002706) THEN CASE WHEN ("ADS"."Feature_2" < 0.00618888484) THEN CASE WHEN ("ADS"."Feature_6" < 0.0210278165) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.0471457466) THEN CASE WHEN ("ADS"."Feature_2" < -0.0218342301) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS nid, 47.3307686 AS "Estimator" UNION ALL SELECT 6 AS nid, 72.1650009 AS "Estimator" UNION ALL SELECT 7 AS nid, 32.7912178 AS "Estimator" UNION ALL SELECT 8 AS nid, 25.0432854 AS "Estimator" UNION ALL SELECT 9 AS nid, 40.8636398 AS "Estimator" UNION ALL SELECT 10 AS nid, 55.7953148 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"XGB_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < -0.00943108089) THEN CASE WHEN ("ADS"."Feature_2" < 0.00618888484) THEN CASE WHEN ("ADS"."Feature_8" < -0.0432773158) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_6" < 0.0118237212) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_3" < 0.0367971435) THEN CASE WHEN ("ADS"."Feature_2" < 0.0697797984) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.0131946635) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 16.0559273 AS "Estimator" UNION ALL SELECT 8 AS nid, 21.3245411 AS "Estimator" UNION ALL SELECT 9 AS nid, 36.0484657 AS "Estimator" UNION ALL SELECT 10 AS nid, 24.1965389 AS "Estimator" UNION ALL SELECT 11 AS nid, 33.424736 AS "Estimator" UNION ALL SELECT 12 AS nid, 50.9043312 AS "Estimator" UNION ALL SELECT 13 AS nid, 38.5202789 AS "Estimator" UNION ALL SELECT 14 AS nid, 54.1237755 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"XGB_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < -0.00943108089) THEN CASE WHEN ("ADS"."Feature_2" < 0.0444512144) THEN CASE WHEN ("ADS"."Feature_6" < 0.0210278165) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.0687019825) THEN CASE WHEN ("ADS"."Feature_3" < -0.0481379889) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS nid, 29.1890068 AS "Estimator" UNION ALL SELECT 6 AS nid, 40.8768272 AS "Estimator" UNION ALL SELECT 7 AS nid, 16.7941055 AS "Estimator" UNION ALL SELECT 8 AS nid, 11.6862469 AS "Estimator" UNION ALL SELECT 9 AS nid, 13.0551643 AS "Estimator" UNION ALL SELECT 10 AS nid, 27.8063469 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"XGB_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.0235938113) THEN CASE WHEN ("ADS"."Feature_8" < 0.0270404443) THEN CASE WHEN ("ADS"."Feature_1" < 0.00301924162) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_6" < -0.0452416651) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_2" < 0.0131946635) THEN CASE WHEN ("ADS"."Feature_9" < 0.050698638) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.0466068387) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 13.3512716 AS "Estimator" UNION ALL SELECT 8 AS nid, 7.39359045 AS "Estimator" UNION ALL SELECT 9 AS nid, 27.2915421 AS "Estimator" UNION ALL SELECT 10 AS nid, 15.9785185 AS "Estimator" UNION ALL SELECT 11 AS nid, 12.7315283 AS "Estimator" UNION ALL SELECT 12 AS nid, 29.9689713 AS "Estimator" UNION ALL SELECT 13 AS nid, 23.8492203 AS "Estimator" UNION ALL SELECT 14 AS nid, 31.482975 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"XGB_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < 0.0166714471) THEN CASE WHEN ("ADS"."Feature_2" < 0.00511107268) THEN CASE WHEN ("ADS"."Feature_2" < -0.00458923588) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_8" < -0.0378489718) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_0" < -0.0291260555) THEN CASE WHEN ("ADS"."Feature_9" < -0.0135040181) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_4" < 0.0424615294) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 7.4774704 AS "Estimator" UNION ALL SELECT 8 AS nid, -1.26417553 AS "Estimator" UNION ALL SELECT 9 AS nid, 5.53232384 AS "Estimator" UNION ALL SELECT 10 AS nid, 16.1991215 AS "Estimator" UNION ALL SELECT 11 AS nid, 1.09114909 AS "Estimator" UNION ALL SELECT 12 AS nid, 11.2923231 AS "Estimator" UNION ALL SELECT 13 AS nid, 21.7519341 AS "Estimator" UNION ALL SELECT 14 AS nid, 11.7026758 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"XGB_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.0385185704) THEN CASE WHEN ("ADS"."Feature_7" < 0.0313567668) THEN CASE WHEN ("ADS"."Feature_1" < 0.00301924162) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_5" < 0.0467544124) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_8" < -0.0301371738) THEN 5 ELSE CASE WHEN ("ADS"."Feature_6" < 0.0247094538) THEN 11 ELSE 12 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS nid, 3.09344578 AS "Estimator" UNION ALL SELECT 7 AS nid, 6.31106567 AS "Estimator" UNION ALL SELECT 8 AS nid, 1.18327892 AS "Estimator" UNION ALL SELECT 9 AS nid, 14.1853552 AS "Estimator" UNION ALL SELECT 10 AS nid, 6.07719088 AS "Estimator" UNION ALL SELECT 11 AS nid, 16.0243092 AS "Estimator" UNION ALL SELECT 12 AS nid, 6.42888021 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"XGB_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" < 0.0341302119) THEN CASE WHEN ("ADS"."Feature_3" < 0.037365213) THEN CASE WHEN ("ADS"."Feature_0" < -0.0872466713) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_9" < -0.0114329644) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_8" < 0.0403537825) THEN CASE WHEN ("ADS"."Feature_5" < 0.0509819165) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_6" < -0.0452416651) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 10.2437897 AS "Estimator" UNION ALL SELECT 8 AS nid, 2.78286409 AS "Estimator" UNION ALL SELECT 9 AS nid, 15.604084 AS "Estimator" UNION ALL SELECT 10 AS nid, 5.64384747 AS "Estimator" UNION ALL SELECT 11 AS nid, 9.58685303 AS "Estimator" UNION ALL SELECT 12 AS nid, -4.5974474 AS "Estimator" UNION ALL SELECT 13 AS nid, 19.0128231 AS "Estimator" UNION ALL SELECT 14 AS nid, 10.9579182 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"XGB_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < -0.0447039045) THEN CASE WHEN ("ADS"."Feature_0" < -0.0382074006) THEN CASE WHEN ("ADS"."Feature_5" < -0.0418666005) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_3" < -0.0469846353) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_5" < -0.0475032777) THEN CASE WHEN ("ADS"."Feature_2" < -0.0299178176) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.0730132312) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, -2.06364274 AS "Estimator" UNION ALL SELECT 8 AS nid, 8.12841606 AS "Estimator" UNION ALL SELECT 9 AS nid, -7.55602026 AS "Estimator" UNION ALL SELECT 10 AS nid, -1.02092493 AS "Estimator" UNION ALL SELECT 11 AS nid, 7.72178316 AS "Estimator" UNION ALL SELECT 12 AS nid, 14.4965839 AS "Estimator" UNION ALL SELECT 13 AS nid, 3.3205142 AS "Estimator" UNION ALL SELECT 14 AS nid, 11.7138109 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"XGB_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < -0.0584798381) THEN CASE WHEN ("ADS"."Feature_0" < -0.0727165192) THEN 3 ELSE CASE WHEN ("ADS"."Feature_8" < -0.0420877263) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_5" < -0.0475032777) THEN CASE WHEN ("ADS"."Feature_5" < -0.0620646775) THEN 9 ELSE 10 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.095108375) THEN 11 ELSE 12 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, 0.745050728 AS "Estimator" UNION ALL SELECT 7 AS nid, -6.65224695 AS "Estimator" UNION ALL SELECT 8 AS nid, -2.22730994 AS "Estimator" UNION ALL SELECT 9 AS nid, 4.5168047 AS "Estimator" UNION ALL SELECT 10 AS nid, 12.1962242 AS "Estimator" UNION ALL SELECT 11 AS nid, 2.47078609 AS "Estimator" UNION ALL SELECT 12 AS nid, 10.8678408 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"XGB_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_6" < 0.0596850142) THEN CASE WHEN ("ADS"."Feature_3" < 0.0855651274) THEN CASE WHEN ("ADS"."Feature_0" < 0.00719932979) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.00175052183) THEN 5 ELSE CASE WHEN ("ADS"."Feature_3" < -0.00739184767) THEN 9 ELSE 10 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS nid, 8.93603802 AS "Estimator" UNION ALL SELECT 5 AS nid, -6.66671753 AS "Estimator" UNION ALL SELECT 7 AS nid, 0.73345089 AS "Estimator" UNION ALL SELECT 8 AS nid, 3.78975797 AS "Estimator" UNION ALL SELECT 9 AS nid, -2.16524982 AS "Estimator" UNION ALL SELECT 10 AS nid, 3.01621294 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"XGB_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20221018185913_VUG1HUA_XGB_B0" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_esu_0"."KEY" AS "KEY", "XGB_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Model_0"."KEY" AS "KEY", "XGB_Model_0"."Estimator" AS "Estimator" 
FROM "XGB_Model_0" UNION ALL SELECT "XGB_Model_1"."KEY" AS "KEY", "XGB_Model_1"."Estimator" AS "Estimator" 
FROM "XGB_Model_1" UNION ALL SELECT "XGB_Model_2"."KEY" AS "KEY", "XGB_Model_2"."Estimator" AS "Estimator" 
FROM "XGB_Model_2" UNION ALL SELECT "XGB_Model_3"."KEY" AS "KEY", "XGB_Model_3"."Estimator" AS "Estimator" 
FROM "XGB_Model_3" UNION ALL SELECT "XGB_Model_4"."KEY" AS "KEY", "XGB_Model_4"."Estimator" AS "Estimator" 
FROM "XGB_Model_4" UNION ALL SELECT "XGB_Model_5"."KEY" AS "KEY", "XGB_Model_5"."Estimator" AS "Estimator" 
FROM "XGB_Model_5" UNION ALL SELECT "XGB_Model_6"."KEY" AS "KEY", "XGB_Model_6"."Estimator" AS "Estimator" 
FROM "XGB_Model_6" UNION ALL SELECT "XGB_Model_7"."KEY" AS "KEY", "XGB_Model_7"."Estimator" AS "Estimator" 
FROM "XGB_Model_7" UNION ALL SELECT "XGB_Model_8"."KEY" AS "KEY", "XGB_Model_8"."Estimator" AS "Estimator" 
FROM "XGB_Model_8" UNION ALL SELECT "XGB_Model_9"."KEY" AS "KEY", "XGB_Model_9"."Estimator" AS "Estimator" 
FROM "XGB_Model_9") AS "XGB_esu_0") AS "XGB_B0") AS "T"

-- Code For temporary table TMP_20221018185913_MUJVFBH_XGB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185913_MUJVFBH_XGB_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185913_MUJVFBH_XGB_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < -0.0481379889) THEN CASE WHEN ("ADS"."Feature_0" < -0.0436562076) THEN 3 ELSE CASE WHEN ("ADS"."Feature_2" < 0.00564997876) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_0" < -6.57472992e-05) THEN CASE WHEN ("ADS"."Feature_1" < 0.00301924162) THEN 9 ELSE 10 END ELSE CASE WHEN ("ADS"."Feature_8" < 0.041784931) THEN 11 ELSE 12 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, 4.79011345 AS "Estimator" UNION ALL SELECT 7 AS nid, -6.50414324 AS "Estimator" UNION ALL SELECT 8 AS nid, -0.248437151 AS "Estimator" UNION ALL SELECT 9 AS nid, 2.66225314 AS "Estimator" UNION ALL SELECT 10 AS nid, -2.88444853 AS "Estimator" UNION ALL SELECT 11 AS nid, 1.98906565 AS "Estimator" UNION ALL SELECT 12 AS nid, 7.35178375 AS "Estimator") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"XGB_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" < 0.0306187458) THEN CASE WHEN ("ADS"."Feature_7" < 0.000913344556) THEN CASE WHEN ("ADS"."Feature_2" < 0.00942232087) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_4" < 0.0170064047) THEN CASE WHEN ("ADS"."Feature_9" < 0.0382723175) THEN 9 ELSE 10 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.00187763642) THEN 11 ELSE 12 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS nid, -7.22377062 AS "Estimator" UNION ALL SELECT 7 AS nid, -0.451518029 AS "Estimator" UNION ALL SELECT 8 AS nid, 3.44791818 AS "Estimator" UNION ALL SELECT 9 AS nid, 2.92550421 AS "Estimator" UNION ALL SELECT 10 AS nid, 13.9541512 AS "Estimator" UNION ALL SELECT 11 AS nid, 6.37584877 AS "Estimator" UNION ALL SELECT 12 AS nid, -2.16465616 AS "Estimator") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"XGB_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.0697797984) THEN CASE WHEN ("ADS"."Feature_2" < 0.0600794852) THEN CASE WHEN ("ADS"."Feature_2" < 0.0471457466) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" < -0.0035059168) THEN 5 ELSE CASE WHEN ("ADS"."Feature_4" < 0.021134261) THEN 9 ELSE 10 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS nid, -5.7543993 AS "Estimator" UNION ALL SELECT 5 AS nid, 8.70550632 AS "Estimator" UNION ALL SELECT 7 AS nid, 0.287918448 AS "Estimator" UNION ALL SELECT 8 AS nid, 6.23695803 AS "Estimator" UNION ALL SELECT 9 AS nid, -0.130111843 AS "Estimator" UNION ALL SELECT 10 AS nid, 3.33191538 AS "Estimator") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"XGB_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_6" < 0.0596850142) THEN CASE WHEN ("ADS"."Feature_1" < 0.00301924162) THEN CASE WHEN ("ADS"."Feature_6" < -0.0452416651) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_0" < -0.0327585936) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_8" < -0.0289384704) THEN 5 ELSE 6 END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS nid, 0.150791645 AS "Estimator" UNION ALL SELECT 6 AS nid, -5.30117369 AS "Estimator" UNION ALL SELECT 7 AS nid, 11.0594749 AS "Estimator" UNION ALL SELECT 8 AS nid, 1.40020001 AS "Estimator" UNION ALL SELECT 9 AS nid, -4.49235201 AS "Estimator" UNION ALL SELECT 10 AS nid, 0.712508082 AS "Estimator") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"XGB_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" < -0.0475032777) THEN CASE WHEN ("ADS"."Feature_2" < -0.0584798381) THEN 3 ELSE CASE WHEN ("ADS"."Feature_2" < -0.00512814196) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_5" < -0.0431191958) THEN 5 ELSE CASE WHEN ("ADS"."Feature_1" < 0.00301924162) THEN 9 ELSE 10 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS nid, -2.60941529 AS "Estimator" UNION ALL SELECT 5 AS nid, -7.54619551 AS "Estimator" UNION ALL SELECT 7 AS nid, 6.34051228 AS "Estimator" UNION ALL SELECT 8 AS nid, 1.19930243 AS "Estimator" UNION ALL SELECT 9 AS nid, 1.38017106 AS "Estimator" UNION ALL SELECT 10 AS nid, -0.863725424 AS "Estimator") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"XGB_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" < 0.054419972) THEN CASE WHEN ("ADS"."Feature_0" < -0.0581863634) THEN CASE WHEN ("ADS"."Feature_3" < -0.0154309049) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_9" < 0.0424144268) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_5" < 0.0636644289) THEN CASE WHEN ("ADS"."Feature_3" < -0.013709479) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 6 AS nid, -1.90002573 AS "Estimator" UNION ALL SELECT 7 AS nid, 4.89133883 AS "Estimator" UNION ALL SELECT 8 AS nid, -1.31797743 AS "Estimator" UNION ALL SELECT 9 AS nid, -1.25068009 AS "Estimator" UNION ALL SELECT 10 AS nid, 2.21164227 AS "Estimator" UNION ALL SELECT 11 AS nid, -0.467651397 AS "Estimator" UNION ALL SELECT 12 AS nid, 9.40733624 AS "Estimator") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"XGB_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20221018185913_MUJVFBH_XGB_B1" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_esu_1"."KEY" AS "KEY", "XGB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Model_10"."KEY" AS "KEY", "XGB_Model_10"."Estimator" AS "Estimator" 
FROM "XGB_Model_10" UNION ALL SELECT "XGB_Model_11"."KEY" AS "KEY", "XGB_Model_11"."Estimator" AS "Estimator" 
FROM "XGB_Model_11" UNION ALL SELECT "XGB_Model_12"."KEY" AS "KEY", "XGB_Model_12"."Estimator" AS "Estimator" 
FROM "XGB_Model_12" UNION ALL SELECT "XGB_Model_13"."KEY" AS "KEY", "XGB_Model_13"."Estimator" AS "Estimator" 
FROM "XGB_Model_13" UNION ALL SELECT "XGB_Model_14"."KEY" AS "KEY", "XGB_Model_14"."Estimator" AS "Estimator" 
FROM "XGB_Model_14" UNION ALL SELECT "XGB_Model_15"."KEY" AS "KEY", "XGB_Model_15"."Estimator" AS "Estimator" 
FROM "XGB_Model_15") AS "XGB_esu_1") AS "XGB_B1") AS "T"

-- Code For temporary table TMP_20221018185913_0WTYSMX_XGB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185913_0WTYSMX_XGB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185913_0WTYSMX_XGB_sum part 2. Populate

WITH "XGB_Union" AS 
(SELECT "XGB_EnsembleUnion"."KEY" AS "KEY", "XGB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Estimator" AS "Estimator" 
FROM "TMP_20221018185913_VUG1HUA_XGB_B0" AS "XGB_B0" UNION ALL SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Estimator" AS "Estimator" 
FROM "TMP_20221018185913_MUJVFBH_XGB_B1" AS "XGB_B1") AS "XGB_EnsembleUnion")
 INSERT INTO "TMP_20221018185913_0WTYSMX_XGB_sum" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Estimator" AS "Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT "XGB_Union"."KEY" AS "KEY", sum("XGB_Union"."Estimator") AS "Estimator" 
FROM "XGB_Union" GROUP BY "XGB_Union"."KEY") AS "T") AS "XGB_sum") AS "T"

-- Code For temporary table TMP_20221018185913_0WTYSMX_XGB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185913_0WTYSMX_XGB_sum_KEY" ON "TMP_20221018185913_0WTYSMX_XGB_sum" ("KEY")

-- Model deployment code

SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Estimator" + 0.5 AS "Estimator" 
FROM "TMP_20221018185913_0WTYSMX_XGB_sum" AS "XGB_sum"