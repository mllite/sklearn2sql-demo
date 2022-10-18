-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBRegressor
-- Dataset : california_housing
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018185719_XNTZVQ0_XGB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185719_XNTZVQ0_XGB_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20221018185719_XNTZVQ0_XGB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" < 5.07715034) THEN CASE WHEN ("ADS"."Feature_0" < 3.07429981) THEN CASE WHEN ("ADS"."Feature_2" < 4.31418896) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_5" < 2.39946342) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_0" < 6.81954956) THEN CASE WHEN ("ADS"."Feature_5" < 2.57554722) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_0" < 7.81515026) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.338294566 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.199723735 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.682554126 AS "Estimator" UNION ALL SELECT 10 AS nid, 0.410355866 AS "Estimator" UNION ALL SELECT 11 AS nid, 0.924960673 AS "Estimator" UNION ALL SELECT 12 AS nid, 0.647980154 AS "Estimator" UNION ALL SELECT 13 AS nid, 0.981576502 AS "Estimator" UNION ALL SELECT 14 AS nid, 1.21829033 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"XGB_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" < 4.12954998) THEN CASE WHEN ("ADS"."Feature_5" < 2.14046717) THEN CASE WHEN ("ADS"."Feature_6" < 37.9850006) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_0" < 2.55970001) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_0" < 6.32264996) THEN CASE WHEN ("ADS"."Feature_5" < 2.77755046) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_1" < 26.5) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.455274343 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.149519011 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.119958639 AS "Estimator" UNION ALL SELECT 10 AS nid, 0.241954893 AS "Estimator" UNION ALL SELECT 11 AS nid, 0.54523176 AS "Estimator" UNION ALL SELECT 12 AS nid, 0.35166952 AS "Estimator" UNION ALL SELECT 13 AS nid, 0.660207987 AS "Estimator" UNION ALL SELECT 14 AS nid, 0.863339543 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"XGB_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" < 5.58920002) THEN CASE WHEN ("ADS"."Feature_0" < 3.56410003) THEN CASE WHEN ("ADS"."Feature_5" < 2.23863173) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_5" < 2.34443903) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_0" < 8.24200058) THEN CASE WHEN ("ADS"."Feature_1" < 26.5) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_4" < 56.5) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.242825195 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.111133151 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.424216241 AS "Estimator" UNION ALL SELECT 10 AS nid, 0.227759838 AS "Estimator" UNION ALL SELECT 11 AS nid, 0.366620213 AS "Estimator" UNION ALL SELECT 12 AS nid, 0.537906826 AS "Estimator" UNION ALL SELECT 13 AS nid, 0.09586218 AS "Estimator" UNION ALL SELECT 14 AS nid, 0.665077686 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"XGB_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" < 4.53095007) THEN CASE WHEN ("ADS"."Feature_6" < 37.9150009) THEN CASE WHEN ("ADS"."Feature_7" < -122.305) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_6" < 39.3250008) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_1" < 19.5) THEN CASE WHEN ("ADS"."Feature_0" < 5.7109499) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_5" < 3.02015233) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.474786699 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.124313958 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.0258320924 AS "Estimator" UNION ALL SELECT 10 AS nid, -0.0595937818 AS "Estimator" UNION ALL SELECT 11 AS nid, 0.114936113 AS "Estimator" UNION ALL SELECT 12 AS nid, 0.269703001 AS "Estimator" UNION ALL SELECT 13 AS nid, 0.370138705 AS "Estimator" UNION ALL SELECT 14 AS nid, 0.21472016 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"XGB_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" < 5.71245003) THEN CASE WHEN ("ADS"."Feature_0" < 2.22944999) THEN CASE WHEN ("ADS"."Feature_2" < 3.33630466) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_5" < 2.04560399) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_0" < 8.79770088) THEN CASE WHEN ("ADS"."Feature_5" < 2.59632206) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_4" < 56.5) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.154084012 AS "Estimator" UNION ALL SELECT 8 AS nid, -0.0255417414 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.263892919 AS "Estimator" UNION ALL SELECT 10 AS nid, 0.0980541185 AS "Estimator" UNION ALL SELECT 11 AS nid, 0.312386334 AS "Estimator" UNION ALL SELECT 12 AS nid, 0.187253207 AS "Estimator" UNION ALL SELECT 13 AS nid, -0.015609879 AS "Estimator" UNION ALL SELECT 14 AS nid, 0.409609288 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"XGB_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_6" < 37.9249992) THEN CASE WHEN ("ADS"."Feature_7" < -117.755005) THEN CASE WHEN ("ADS"."Feature_5" < 2.90820503) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_6" < 33.6350021) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_7" < -122.395004) THEN CASE WHEN ("ADS"."Feature_6" < 38.6900024) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_1" < 25.5) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.18395032 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.0662723482 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.0361107551 AS "Estimator" UNION ALL SELECT 10 AS nid, -0.0750020891 AS "Estimator" UNION ALL SELECT 11 AS nid, 0.164724544 AS "Estimator" UNION ALL SELECT 12 AS nid, -0.0414975807 AS "Estimator" UNION ALL SELECT 13 AS nid, -0.0221576244 AS "Estimator" UNION ALL SELECT 14 AS nid, -0.0620660894 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"XGB_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" < 3.89709997) THEN CASE WHEN ("ADS"."Feature_6" < 34.4550018) THEN CASE WHEN ("ADS"."Feature_7" < -118.294998) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_7" < -120.095001) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_1" < 17.5) THEN CASE WHEN ("ADS"."Feature_2" < 6.285882) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_5" < 2.06679201) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.196867108 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.0226591267 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.0240233317 AS "Estimator" UNION ALL SELECT 10 AS nid, -0.168025091 AS "Estimator" UNION ALL SELECT 11 AS nid, -0.0177124031 AS "Estimator" UNION ALL SELECT 12 AS nid, 0.081433773 AS "Estimator" UNION ALL SELECT 13 AS nid, 0.352393001 AS "Estimator" UNION ALL SELECT 14 AS nid, 0.113589466 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"XGB_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" < 6.54555035) THEN CASE WHEN ("ADS"."Feature_1" < 51.5) THEN CASE WHEN ("ADS"."Feature_6" < 34.4749985) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_7" < -122.324997) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_0" < 9.06925011) THEN CASE WHEN ("ADS"."Feature_3" < 1.00966775) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_4" < 140) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.0493082404 AS "Estimator" UNION ALL SELECT 8 AS nid, -0.00973526109 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.288701415 AS "Estimator" UNION ALL SELECT 10 AS nid, 0.0846692622 AS "Estimator" UNION ALL SELECT 11 AS nid, 0.0577133857 AS "Estimator" UNION ALL SELECT 12 AS nid, 0.16229634 AS "Estimator" UNION ALL SELECT 13 AS nid, -0.0329520516 AS "Estimator" UNION ALL SELECT 14 AS nid, 0.231967226 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"XGB_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" < -117.154999) THEN CASE WHEN ("ADS"."Feature_5" < 3.13823986) THEN CASE WHEN ("ADS"."Feature_6" < 34.6350021) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_7" < -121.505005) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_7" < -116.404999) THEN CASE WHEN ("ADS"."Feature_5" < 2.16265202) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_6" < 33.4449997) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.100387715 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.0186544601 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.0545049198 AS "Estimator" UNION ALL SELECT 10 AS nid, -0.0193871837 AS "Estimator" UNION ALL SELECT 11 AS nid, -0.118702702 AS "Estimator" UNION ALL SELECT 12 AS nid, -0.0478444025 AS "Estimator" UNION ALL SELECT 13 AS nid, -0.208279952 AS "Estimator" UNION ALL SELECT 14 AS nid, -0.134324268 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"XGB_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" < -121.865005) THEN CASE WHEN ("ADS"."Feature_6" < 37.8050003) THEN CASE WHEN ("ADS"."Feature_7" < -122.255005) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_6" < 38.7949982) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_6" < 34.6350021) THEN CASE WHEN ("ADS"."Feature_7" < -118.334999) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_7" < -119.895004) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.194175944 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.0876443461 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.02726149 AS "Estimator" UNION ALL SELECT 10 AS nid, -0.0548875593 AS "Estimator" UNION ALL SELECT 11 AS nid, 0.134059593 AS "Estimator" UNION ALL SELECT 12 AS nid, 0.00557197491 AS "Estimator" UNION ALL SELECT 13 AS nid, -0.0341209397 AS "Estimator" UNION ALL SELECT 14 AS nid, -0.156692505 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"XGB_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20221018185719_XNTZVQ0_XGB_B0" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
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

-- Code For temporary table TMP_20221018185719_C61YGU4_XGB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185719_C61YGU4_XGB_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20221018185719_C61YGU4_XGB_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" < -121.645004) THEN CASE WHEN ("ADS"."Feature_6" < 37.6049995) THEN CASE WHEN ("ADS"."Feature_7" < -122.115005) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_7" < -122.395004) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_6" < 35.3250008) THEN CASE WHEN ("ADS"."Feature_7" < -118.274994) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_7" < -119.895004) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.210267052 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.0956407934 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.0777926743 AS "Estimator" UNION ALL SELECT 10 AS nid, -0.0305981506 AS "Estimator" UNION ALL SELECT 11 AS nid, 0.0781919584 AS "Estimator" UNION ALL SELECT 12 AS nid, -0.00281662634 AS "Estimator" UNION ALL SELECT 13 AS nid, -0.0468839258 AS "Estimator" UNION ALL SELECT 14 AS nid, -0.115270592 AS "Estimator") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"XGB_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" < -117.774994) THEN CASE WHEN ("ADS"."Feature_6" < 34.1849976) THEN CASE WHEN ("ADS"."Feature_7" < -118.375) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_7" < -121.565002) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_6" < 33.9049988) THEN CASE WHEN ("ADS"."Feature_7" < -117.154999) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_7" < -117.455002) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.168441251 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.0282802451 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.0344559774 AS "Estimator" UNION ALL SELECT 10 AS nid, -0.0361901857 AS "Estimator" UNION ALL SELECT 11 AS nid, 0.0514584891 AS "Estimator" UNION ALL SELECT 12 AS nid, -0.0483596101 AS "Estimator" UNION ALL SELECT 13 AS nid, -0.0431417674 AS "Estimator" UNION ALL SELECT 14 AS nid, -0.113652185 AS "Estimator") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"XGB_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.994225204) THEN CASE WHEN ("ADS"."Feature_2" < 6.69427061) THEN CASE WHEN ("ADS"."Feature_7" < -121.559998) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_6" < 38.3549995) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_5" < 3.23393106) THEN CASE WHEN ("ADS"."Feature_1" < 18.5) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_2" < 7.96395683) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, -0.00874468312 AS "Estimator" UNION ALL SELECT 8 AS nid, -0.0392710492 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.0382802151 AS "Estimator" UNION ALL SELECT 10 AS nid, -0.114659935 AS "Estimator" UNION ALL SELECT 11 AS nid, -0.00572538329 AS "Estimator" UNION ALL SELECT 12 AS nid, 0.0360130183 AS "Estimator" UNION ALL SELECT 13 AS nid, -0.0178214684 AS "Estimator" UNION ALL SELECT 14 AS nid, 0.105440393 AS "Estimator") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"XGB_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 6.49346352) THEN CASE WHEN ("ADS"."Feature_7" < -117.774994) THEN CASE WHEN ("ADS"."Feature_6" < 33.6149979) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_6" < 33.5449982) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_6" < 37.9850006) THEN CASE WHEN ("ADS"."Feature_7" < -116.404999) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_7" < -121.214996) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.420966327 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.00428141933 AS "Estimator" UNION ALL SELECT 9 AS nid, -0.0103484429 AS "Estimator" UNION ALL SELECT 10 AS nid, -0.0666320994 AS "Estimator" UNION ALL SELECT 11 AS nid, 0.0504382998 AS "Estimator" UNION ALL SELECT 12 AS nid, -0.113639124 AS "Estimator" UNION ALL SELECT 13 AS nid, -0.0363498442 AS "Estimator" UNION ALL SELECT 14 AS nid, 0.0324487127 AS "Estimator") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"XGB_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_6" < 37.9550018) THEN CASE WHEN ("ADS"."Feature_7" < -122.425003) THEN CASE WHEN ("ADS"."Feature_6" < 37.7549973) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_6" < 37.6049995) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_7" < -121.225006) THEN CASE WHEN ("ADS"."Feature_6" < 38.8850021) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_6" < 39.3250008) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.0380613282 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.202151254 AS "Estimator" UNION ALL SELECT 9 AS nid, 0.00921993703 AS "Estimator" UNION ALL SELECT 10 AS nid, -0.0342931226 AS "Estimator" UNION ALL SELECT 11 AS nid, -0.0209985171 AS "Estimator" UNION ALL SELECT 12 AS nid, -0.0612909384 AS "Estimator" UNION ALL SELECT 13 AS nid, 0.0447486006 AS "Estimator" UNION ALL SELECT 14 AS nid, -0.0460286438 AS "Estimator") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"XGB_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 1.00736654) THEN CASE WHEN ("ADS"."Feature_7" < -121.574997) THEN CASE WHEN ("ADS"."Feature_6" < 37.5950012) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_6" < 34.6350021) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_0" < 1.81550002) THEN CASE WHEN ("ADS"."Feature_0" < 0.704999983) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_5" < 2.52209687) THEN 13 ELSE 14 END END END AS node_id_2 
FROM california_housing AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS nid, 0.0490905978 AS "Estimator" UNION ALL SELECT 8 AS nid, -0.019082373 AS "Estimator" UNION ALL SELECT 9 AS nid, -0.0113172149 AS "Estimator" UNION ALL SELECT 10 AS nid, -0.0723052397 AS "Estimator" UNION ALL SELECT 11 AS nid, 0.209873706 AS "Estimator" UNION ALL SELECT 12 AS nid, -0.0359249227 AS "Estimator" UNION ALL SELECT 13 AS nid, 0.0324274674 AS "Estimator" UNION ALL SELECT 14 AS nid, 0.00371219451 AS "Estimator") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"XGB_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20221018185719_C61YGU4_XGB_B1" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_esu_1"."KEY" AS "KEY", "XGB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Model_10"."KEY" AS "KEY", "XGB_Model_10"."Estimator" AS "Estimator" 
FROM "XGB_Model_10" UNION ALL SELECT "XGB_Model_11"."KEY" AS "KEY", "XGB_Model_11"."Estimator" AS "Estimator" 
FROM "XGB_Model_11" UNION ALL SELECT "XGB_Model_12"."KEY" AS "KEY", "XGB_Model_12"."Estimator" AS "Estimator" 
FROM "XGB_Model_12" UNION ALL SELECT "XGB_Model_13"."KEY" AS "KEY", "XGB_Model_13"."Estimator" AS "Estimator" 
FROM "XGB_Model_13" UNION ALL SELECT "XGB_Model_14"."KEY" AS "KEY", "XGB_Model_14"."Estimator" AS "Estimator" 
FROM "XGB_Model_14" UNION ALL SELECT "XGB_Model_15"."KEY" AS "KEY", "XGB_Model_15"."Estimator" AS "Estimator" 
FROM "XGB_Model_15") AS "XGB_esu_1") AS "XGB_B1") AS "T"

-- Code For temporary table TMP_20221018185719_55F580C_XGB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185719_55F580C_XGB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018185719_55F580C_XGB_sum part 2. Populate

WITH "XGB_Union" AS 
(SELECT "XGB_EnsembleUnion"."KEY" AS "KEY", "XGB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Estimator" AS "Estimator" 
FROM "TMP_20221018185719_XNTZVQ0_XGB_B0" AS "XGB_B0" UNION ALL SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Estimator" AS "Estimator" 
FROM "TMP_20221018185719_C61YGU4_XGB_B1" AS "XGB_B1") AS "XGB_EnsembleUnion")
 INSERT INTO "TMP_20221018185719_55F580C_XGB_sum" ("KEY", "Estimator") SELECT "T"."KEY", "T"."Estimator" 
FROM (SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Estimator" AS "Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT "XGB_Union"."KEY" AS "KEY", sum("XGB_Union"."Estimator") AS "Estimator" 
FROM "XGB_Union" GROUP BY "XGB_Union"."KEY") AS "T") AS "XGB_sum") AS "T"

-- Code For temporary table TMP_20221018185719_55F580C_XGB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185719_55F580C_XGB_sum_KEY" ON "TMP_20221018185719_55F580C_XGB_sum" ("KEY")

-- Model deployment code

SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Estimator" + 0.5 AS "Estimator" 
FROM "TMP_20221018185719_55F580C_XGB_sum" AS "XGB_sum"