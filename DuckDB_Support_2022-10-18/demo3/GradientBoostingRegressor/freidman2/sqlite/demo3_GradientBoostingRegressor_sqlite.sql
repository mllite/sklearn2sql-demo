-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingRegressor
-- Dataset : freidman2
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190211_7A8GGHV_GB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190211_7A8GGHV_GB_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20221018190211_7A8GGHV_GB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5361224710941315) THEN CASE WHEN ("ADS"."Feature_2" <= 0.2454954981803894) THEN CASE WHEN ("ADS"."Feature_2" <= 0.1157732792198658) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1455.501708984375) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 967.7061157226562) THEN CASE WHEN ("ADS"."Feature_1" <= 541.9518432617188) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.8147956430912018) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -440.7436530554128 AS "E" UNION ALL SELECT 4 AS nid, -300.4881185327728 AS "E" UNION ALL SELECT 6 AS nid, -252.2198116624816 AS "E" UNION ALL SELECT 7 AS nid, 185.22544338794856 AS "E" UNION ALL SELECT 10 AS nid, -269.85383485627165 AS "E" UNION ALL SELECT 11 AS nid, 99.6071474783419 AS "E" UNION ALL SELECT 13 AS nid, 361.14063776512046 AS "E" UNION ALL SELECT 14 AS nid, 673.3964952940365 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"GB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5361224710941315) THEN CASE WHEN ("ADS"."Feature_2" <= 0.2454954981803894) THEN CASE WHEN ("ADS"."Feature_2" <= 0.1157732792198658) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1455.501708984375) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 882.4659118652344) THEN CASE WHEN ("ADS"."Feature_1" <= 541.9518432617188) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1191.3021240234375) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -396.6692877498715 AS "E" UNION ALL SELECT 4 AS nid, -270.4393066794955 AS "E" UNION ALL SELECT 6 AS nid, -226.99783049623343 AS "E" UNION ALL SELECT 7 AS nid, 166.70289904915367 AS "E" UNION ALL SELECT 10 AS nid, -242.86845137064444 AS "E" UNION ALL SELECT 11 AS nid, 39.58261290399929 AS "E" UNION ALL SELECT 13 AS nid, 245.43746079172746 AS "E" UNION ALL SELECT 14 AS nid, 549.6277421430539 AS "E") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"GB_Model_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5361224710941315) THEN CASE WHEN ("ADS"."Feature_2" <= 0.2454954981803894) THEN CASE WHEN ("ADS"."Feature_2" <= 0.1157732792198658) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1455.501708984375) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 967.7061157226562) THEN CASE WHEN ("ADS"."Feature_1" <= 541.9518432617188) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.8147956430912018) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -357.0023589748843 AS "E" UNION ALL SELECT 4 AS nid, -243.39537601154595 AS "E" UNION ALL SELECT 6 AS nid, -204.2980474466101 AS "E" UNION ALL SELECT 7 AS nid, 150.03260914423825 AS "E" UNION ALL SELECT 10 AS nid, -218.58160623357998 AS "E" UNION ALL SELECT 11 AS nid, 77.11088611145244 AS "E" UNION ALL SELECT 13 AS nid, 284.259346237365 AS "E" UNION ALL SELECT 14 AS nid, 566.3035856178938 AS "E") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"GB_Model_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5361224710941315) THEN CASE WHEN ("ADS"."Feature_2" <= 0.2454954981803894) THEN CASE WHEN ("ADS"."Feature_2" <= 0.1157732792198658) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 956.167724609375) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 815.7905578613281) THEN CASE WHEN ("ADS"."Feature_1" <= 329.4079284667969) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1191.3021240234375) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -321.30212307739595 AS "E" UNION ALL SELECT 4 AS nid, -219.05583841039137 AS "E" UNION ALL SELECT 6 AS nid, -246.0121888664979 AS "E" UNION ALL SELECT 7 AS nid, 20.007966098939093 AS "E" UNION ALL SELECT 10 AS nid, -253.1177525169952 AS "E" UNION ALL SELECT 11 AS nid, -65.05519982719866 AS "E" UNION ALL SELECT 13 AS nid, 175.6603954929661 AS "E" UNION ALL SELECT 14 AS nid, 456.8375586589945 AS "E") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"GB_Model_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.4144279509782791) THEN CASE WHEN ("ADS"."Feature_2" <= 0.1157732792198658) THEN CASE WHEN ("ADS"."Feature_2" <= 0.041584232822060585) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 876.18896484375) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 745.0648193359375) THEN CASE WHEN ("ADS"."Feature_1" <= 329.4079284667969) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.7988642752170563) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -312.44042299081735 AS "E" UNION ALL SELECT 4 AS nid, -279.1996912463015 AS "E" UNION ALL SELECT 6 AS nid, -243.06870271228118 AS "E" UNION ALL SELECT 7 AS nid, -123.70668645714363 AS "E" UNION ALL SELECT 10 AS nid, -240.42354835171693 AS "E" UNION ALL SELECT 11 AS nid, -94.0338259264315 AS "E" UNION ALL SELECT 13 AS nid, 162.00429203694927 AS "E" UNION ALL SELECT 14 AS nid, 413.62294640744153 AS "E") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"GB_Model_4_0" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5361224710941315) THEN CASE WHEN ("ADS"."Feature_1" <= 897.0426940917969) THEN CASE WHEN ("ADS"."Feature_1" <= 476.3112335205078) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.379633828997612) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 967.7061157226562) THEN CASE WHEN ("ADS"."Feature_1" <= 541.9518432617188) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.8147956430912018) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -268.7388768903671 AS "E" UNION ALL SELECT 4 AS nid, -200.06732694927615 AS "E" UNION ALL SELECT 6 AS nid, -154.98797254842648 AS "E" UNION ALL SELECT 7 AS nid, 133.59709411757365 AS "E" UNION ALL SELECT 10 AS nid, -160.74740652795404 AS "E" UNION ALL SELECT 11 AS nid, 45.86449063423081 AS "E" UNION ALL SELECT 13 AS nid, 205.39336979597883 AS "E" UNION ALL SELECT 14 AS nid, 436.68603470776213 AS "E") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"GB_Model_5_0" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.4144279509782791) THEN CASE WHEN ("ADS"."Feature_2" <= 0.1157732792198658) THEN CASE WHEN ("ADS"."Feature_2" <= 0.041584232822060585) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 617.5478210449219) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 882.4659118652344) THEN CASE WHEN ("ADS"."Feature_1" <= 519.7247924804688) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1191.3021240234375) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -264.19493829019797 AS "E" UNION ALL SELECT 4 AS nid, -229.61790455500704 AS "E" UNION ALL SELECT 6 AS nid, -250.45005785789442 AS "E" UNION ALL SELECT 7 AS nid, -113.18381573048875 AS "E" UNION ALL SELECT 10 AS nid, -161.87059328851396 AS "E" UNION ALL SELECT 11 AS nid, 2.721712234325018 AS "E" UNION ALL SELECT 13 AS nid, 121.74258069826325 AS "E" UNION ALL SELECT 14 AS nid, 316.5835922374517 AS "E") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"GB_Model_6_0" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.6867678761482239) THEN CASE WHEN ("ADS"."Feature_2" <= 0.4144279509782791) THEN CASE WHEN ("ADS"."Feature_2" <= 0.1157732792198658) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1326.3909912109375) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 815.7905578613281) THEN CASE WHEN ("ADS"."Feature_1" <= 301.26104736328125) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1283.81982421875) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -215.99191320800787 AS "E" UNION ALL SELECT 4 AS nid, -123.66654320120426 AS "E" UNION ALL SELECT 6 AS nid, -75.82618946409707 AS "E" UNION ALL SELECT 7 AS nid, 179.5623297429019 AS "E" UNION ALL SELECT 10 AS nid, -157.22852354423046 AS "E" UNION ALL SELECT 11 AS nid, -9.361399499946026 AS "E" UNION ALL SELECT 13 AS nid, 187.66729177607755 AS "E" UNION ALL SELECT 14 AS nid, 434.3719612069383 AS "E") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"GB_Model_7_0" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5668879747390747) THEN CASE WHEN ("ADS"."Feature_1" <= 870.9581298828125) THEN CASE WHEN ("ADS"."Feature_1" <= 287.6764678955078) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.25638625025749207) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 967.7061157226562) THEN CASE WHEN ("ADS"."Feature_1" <= 745.0648193359375) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1283.81982421875) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -221.69268304532102 AS "E" UNION ALL SELECT 4 AS nid, -155.5845544666306 AS "E" UNION ALL SELECT 6 AS nid, -151.6126417302692 AS "E" UNION ALL SELECT 7 AS nid, 22.08065705485575 AS "E" UNION ALL SELECT 10 AS nid, -95.66530714369132 AS "E" UNION ALL SELECT 11 AS nid, 66.78513066938318 AS "E" UNION ALL SELECT 13 AS nid, 149.76103150049366 AS "E" UNION ALL SELECT 14 AS nid, 331.23007199906374 AS "E") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"GB_Model_8_0" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.6867678761482239) THEN CASE WHEN ("ADS"."Feature_1" <= 1645.8584594726562) THEN CASE WHEN ("ADS"."Feature_1" <= 834.2146911621094) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1718.6006469726562) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 815.7905578613281) THEN CASE WHEN ("ADS"."Feature_1" <= 360.9476013183594) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1436.5211181640625) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -146.0648232313267 AS "E" UNION ALL SELECT 4 AS nid, -50.35904257931072 AS "E" UNION ALL SELECT 6 AS nid, 142.21340014161999 AS "E" UNION ALL SELECT 7 AS nid, -220.08572170736613 AS "E" UNION ALL SELECT 10 AS nid, -118.09567781036105 AS "E" UNION ALL SELECT 11 AS nid, 13.045784797708322 AS "E" UNION ALL SELECT 13 AS nid, 179.2326652479556 AS "E" UNION ALL SELECT 14 AS nid, 437.78541217088286 AS "E") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"GB_Model_9_0" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20221018190211_7A8GGHV_GB_B0" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "GB_B0"."KEY" AS "KEY", "GB_B0"."Estimator" AS "Estimator" 
FROM (SELECT "GB_esu_0"."KEY" AS "KEY", "GB_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "GB_Model_0_0"."KEY" AS "KEY", "GB_Model_0_0"."Estimator" AS "Estimator" 
FROM "GB_Model_0_0" UNION ALL SELECT "GB_Model_1_0"."KEY" AS "KEY", "GB_Model_1_0"."Estimator" AS "Estimator" 
FROM "GB_Model_1_0" UNION ALL SELECT "GB_Model_2_0"."KEY" AS "KEY", "GB_Model_2_0"."Estimator" AS "Estimator" 
FROM "GB_Model_2_0" UNION ALL SELECT "GB_Model_3_0"."KEY" AS "KEY", "GB_Model_3_0"."Estimator" AS "Estimator" 
FROM "GB_Model_3_0" UNION ALL SELECT "GB_Model_4_0"."KEY" AS "KEY", "GB_Model_4_0"."Estimator" AS "Estimator" 
FROM "GB_Model_4_0" UNION ALL SELECT "GB_Model_5_0"."KEY" AS "KEY", "GB_Model_5_0"."Estimator" AS "Estimator" 
FROM "GB_Model_5_0" UNION ALL SELECT "GB_Model_6_0"."KEY" AS "KEY", "GB_Model_6_0"."Estimator" AS "Estimator" 
FROM "GB_Model_6_0" UNION ALL SELECT "GB_Model_7_0"."KEY" AS "KEY", "GB_Model_7_0"."Estimator" AS "Estimator" 
FROM "GB_Model_7_0" UNION ALL SELECT "GB_Model_8_0"."KEY" AS "KEY", "GB_Model_8_0"."Estimator" AS "Estimator" 
FROM "GB_Model_8_0" UNION ALL SELECT "GB_Model_9_0"."KEY" AS "KEY", "GB_Model_9_0"."Estimator" AS "Estimator" 
FROM "GB_Model_9_0") AS "GB_esu_0") AS "GB_B0") AS "T"

-- Code For temporary table TMP_20221018190211_7LRVZSB_GB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190211_7LRVZSB_GB_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20221018190211_7LRVZSB_GB_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.792053759098053) THEN CASE WHEN ("ADS"."Feature_1" <= 870.9581298828125) THEN CASE WHEN ("ADS"."Feature_1" <= 476.3112335205078) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.379633828997612) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1010.49169921875) THEN CASE WHEN ("ADS"."Feature_1" <= 463.0554962158203) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1436.5211181640625) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -157.5222585106433 AS "E" UNION ALL SELECT 4 AS nid, -84.5433533525027 AS "E" UNION ALL SELECT 6 AS nid, -95.514973503191 AS "E" UNION ALL SELECT 7 AS nid, 85.20791039214096 AS "E" UNION ALL SELECT 10 AS nid, -39.47192314351301 AS "E" UNION ALL SELECT 11 AS nid, 109.88126504396564 AS "E" UNION ALL SELECT 13 AS nid, 245.7206179929407 AS "E" UNION ALL SELECT 14 AS nid, 436.6304987982727 AS "E") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"GB_Model_10_0" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.4695979952812195) THEN CASE WHEN ("ADS"."Feature_2" <= 0.1157732792198658) THEN CASE WHEN ("ADS"."Feature_2" <= 0.026090397965162992) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 876.18896484375) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 943.0731811523438) THEN CASE WHEN ("ADS"."Feature_1" <= 329.4079284667969) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.8147956430912018) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -184.75910601491063 AS "E" UNION ALL SELECT 4 AS nid, -149.30036796147738 AS "E" UNION ALL SELECT 6 AS nid, -125.71879086151074 AS "E" UNION ALL SELECT 7 AS nid, -32.71609332540098 AS "E" UNION ALL SELECT 10 AS nid, -125.08317358627751 AS "E" UNION ALL SELECT 11 AS nid, -1.0626991925760858 AS "E" UNION ALL SELECT 13 AS nid, 105.60536491182968 AS "E" UNION ALL SELECT 14 AS nid, 263.91570266063763 AS "E") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"GB_Model_11_0" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.6867678761482239) THEN CASE WHEN ("ADS"."Feature_1" <= 1645.8584594726562) THEN CASE WHEN ("ADS"."Feature_2" <= 0.2454954981803894) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.15862789168022573) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1072.6768188476562) THEN CASE WHEN ("ADS"."Feature_1" <= 360.9476013183594) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1436.5211181640625) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -119.24599847222758 AS "E" UNION ALL SELECT 4 AS nid, -47.6430822614275 AS "E" UNION ALL SELECT 6 AS nid, -170.04974158481937 AS "E" UNION ALL SELECT 7 AS nid, 116.53349593655746 AS "E" UNION ALL SELECT 10 AS nid, -85.22798972219206 AS "E" UNION ALL SELECT 11 AS nid, 59.05555045859845 AS "E" UNION ALL SELECT 13 AS nid, 181.88467814638628 AS "E" UNION ALL SELECT 14 AS nid, 340.9433483464015 AS "E") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"GB_Model_12_0" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5803560316562653) THEN CASE WHEN ("ADS"."Feature_1" <= 1645.8584594726562) THEN CASE WHEN ("ADS"."Feature_1" <= 628.7957763671875) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1718.6006469726562) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1283.81982421875) THEN CASE WHEN ("ADS"."Feature_1" <= 745.0648193359375) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_3" <= 4.12413477897644) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -114.0456533550035 AS "E" UNION ALL SELECT 4 AS nid, -58.53586774605717 AS "E" UNION ALL SELECT 6 AS nid, 80.76617958603242 AS "E" UNION ALL SELECT 7 AS nid, -153.04476742633744 AS "E" UNION ALL SELECT 10 AS nid, -56.78529898175491 AS "E" UNION ALL SELECT 11 AS nid, 73.89684204320001 AS "E" UNION ALL SELECT 13 AS nid, 115.64814437205638 AS "E" UNION ALL SELECT 14 AS nid, 270.4906846856457 AS "E") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"GB_Model_13_0" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.792053759098053) THEN CASE WHEN ("ADS"."Feature_1" <= 736.0386047363281) THEN CASE WHEN ("ADS"."Feature_1" <= 195.00569915771484) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.379633828997612) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1010.49169921875) THEN CASE WHEN ("ADS"."Feature_1" <= 463.0554962158203) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.9767304956912994) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -168.8804822222428 AS "E" UNION ALL SELECT 4 AS nid, -80.76014408423018 AS "E" UNION ALL SELECT 6 AS nid, -67.33392127128184 AS "E" UNION ALL SELECT 7 AS nid, 54.71004778938012 AS "E" UNION ALL SELECT 10 AS nid, -21.89256756574568 AS "E" UNION ALL SELECT 11 AS nid, 80.88488270999353 AS "E" UNION ALL SELECT 13 AS nid, 164.59141830884218 AS "E" UNION ALL SELECT 14 AS nid, 313.59231115610805 AS "E") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"GB_Model_14_0" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.792053759098053) THEN CASE WHEN ("ADS"."Feature_1" <= 888.9274597167969) THEN CASE WHEN ("ADS"."Feature_1" <= 287.6764678955078) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.23312415182590485) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1066.5789794921875) THEN CASE WHEN ("ADS"."Feature_1" <= 463.0554962158203) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.9767304956912994) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, "Values"."E" AS "E" 
FROM (SELECT 3 AS nid, -116.95071765135398 AS "E" UNION ALL SELECT 4 AS nid, -57.03180257413038 AS "E" UNION ALL SELECT 6 AS nid, -93.5526527487914 AS "E" UNION ALL SELECT 7 AS nid, 41.61344290895191 AS "E" UNION ALL SELECT 10 AS nid, -19.703310809171086 AS "E" UNION ALL SELECT 11 AS nid, 79.36128097624817 AS "E" UNION ALL SELECT 13 AS nid, 155.32158904104594 AS "E" UNION ALL SELECT 14 AS nid, 282.23308004049727 AS "E") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"GB_Model_15_0" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20221018190211_7LRVZSB_GB_B1" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "GB_B1"."KEY" AS "KEY", "GB_B1"."Estimator" AS "Estimator" 
FROM (SELECT "GB_esu_1"."KEY" AS "KEY", "GB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "GB_Model_10_0"."KEY" AS "KEY", "GB_Model_10_0"."Estimator" AS "Estimator" 
FROM "GB_Model_10_0" UNION ALL SELECT "GB_Model_11_0"."KEY" AS "KEY", "GB_Model_11_0"."Estimator" AS "Estimator" 
FROM "GB_Model_11_0" UNION ALL SELECT "GB_Model_12_0"."KEY" AS "KEY", "GB_Model_12_0"."Estimator" AS "Estimator" 
FROM "GB_Model_12_0" UNION ALL SELECT "GB_Model_13_0"."KEY" AS "KEY", "GB_Model_13_0"."Estimator" AS "Estimator" 
FROM "GB_Model_13_0" UNION ALL SELECT "GB_Model_14_0"."KEY" AS "KEY", "GB_Model_14_0"."Estimator" AS "Estimator" 
FROM "GB_Model_14_0" UNION ALL SELECT "GB_Model_15_0"."KEY" AS "KEY", "GB_Model_15_0"."Estimator" AS "Estimator" 
FROM "GB_Model_15_0") AS "GB_esu_1") AS "GB_B1") AS "T"

-- Code For temporary table TMP_20221018190211_413WXLH_GB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190211_413WXLH_GB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018190211_413WXLH_GB_sum part 2. Populate

WITH "GB_Union" AS 
(SELECT "GB_EnsembleUnion"."KEY" AS "KEY", "GB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "GB_B0"."KEY" AS "KEY", "GB_B0"."Estimator" AS "Estimator" 
FROM "TMP_20221018190211_7A8GGHV_GB_B0" AS "GB_B0" UNION ALL SELECT "GB_B1"."KEY" AS "KEY", "GB_B1"."Estimator" AS "Estimator" 
FROM "TMP_20221018190211_7LRVZSB_GB_B1" AS "GB_B1") AS "GB_EnsembleUnion")
 INSERT INTO "TMP_20221018190211_413WXLH_GB_sum" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "GB_sum"."KEY" AS "KEY", "GB_sum"."Estimator" AS "Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT "GB_Union"."KEY" AS "KEY", sum("GB_Union"."Estimator") AS "Estimator" 
FROM "GB_Union" GROUP BY "GB_Union"."KEY") AS "T") AS "GB_sum") AS "T"

-- Code For temporary table TMP_20221018190211_413WXLH_GB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190211_413WXLH_GB_sum_KEY" ON "TMP_20221018190211_413WXLH_GB_sum" ("KEY")

-- Model deployment code

SELECT "GB_sum"."KEY" AS "KEY", 499.09288446517394 + 0.1 * "GB_sum"."Estimator" AS "Estimator" 
FROM "TMP_20221018190211_413WXLH_GB_sum" AS "GB_sum"