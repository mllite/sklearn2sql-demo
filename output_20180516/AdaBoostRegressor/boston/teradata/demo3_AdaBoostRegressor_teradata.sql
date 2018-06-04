-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : AdaBoostRegressor
-- Dataset : boston
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602145233_4bz_quantiles part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602145233_4bz_quantiles  (
	"KEY" BIGINT, 
	"Quantile" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602145233_4bz_quantiles part 2. Populate

INSERT INTO tmp_20180602145233_4bz_quantiles ("KEY", "Quantile") SELECT "U"."KEY", "U"."Quantile" 
FROM (WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= CAST(6.824999809265137 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(14.805000305175781 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.526999950408936 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= CAST(0.6147900223732 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(7.444999694824219 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(10.655000686645508 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= CAST(2.74223518371582 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(21.239873417721512 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(26.69473684210526 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 6 AS nid, CAST(18.847619047619048 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 7 AS nid, CAST(13.593814432989692 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 10 AS nid, CAST(31.662500000000005 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 11 AS nid, CAST(20.266666666666666 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 13 AS nid, CAST(47.33333333333333 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 14 AS nid, CAST(21.9 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"ADB_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator", CAST(0.091567374023146 AS DOUBLE PRECISION) AS "Weight", 0 AS est_index 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(9.604999542236328 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_4" <= CAST(0.574000000953674 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.140999794006348 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= CAST(1.368409991264343 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(14.805000305175781 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.923999786376953 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.603000044822693 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_1 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(25.84343434343436 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 4 AS nid, CAST(42.54400000000001 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 6 AS nid, CAST(39.333333333333336 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 7 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 10 AS nid, CAST(20.889108910891103 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 11 AS nid, CAST(29.925 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 13 AS nid, CAST(18.241071428571438 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 14 AS nid, CAST(13.107777777777777 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"ADB_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator", CAST(0.084178813303156 AS DOUBLE PRECISION) AS "Weight", 1 AS est_index 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(9.604999542236328 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.433000087738037 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.484949946403504 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(8.752500534057617 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(16.31999969482422 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_9" <= CAST(281.5 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_7" <= CAST(1.940000057220459 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_2 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 4 AS nid, CAST(27.253521126760557 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 6 AS nid, CAST(46.27435897435897 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 7 AS nid, CAST(21.9 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 10 AS nid, CAST(23.99310344827586 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 11 AS nid, CAST(19.357142857142875 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 13 AS nid, CAST(10.359999999999998 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 14 AS nid, CAST(16.58611111111111 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"ADB_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator", CAST(0.055261434912609 AS DOUBLE PRECISION) AS "Weight", 2 AS est_index 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(7.864999771118164 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.437000274658203 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.585000038146973 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_9" <= CAST(534.5 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_7" <= CAST(1.227149963378906 AS DOUBLE PRECISION)) THEN 9 ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.664999961853027 AS DOUBLE PRECISION)) THEN 11 ELSE 12 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_3 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(23.897058823529413 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 4 AS nid, CAST(32.84594594594594 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 6 AS nid, CAST(45.74 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 7 AS nid, CAST(21.9 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 9 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 11 AS nid, CAST(21.02447916666667 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 12 AS nid, CAST(13.23636363636364 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"ADB_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator", CAST(0.089675073760802 AS DOUBLE PRECISION) AS "Weight", 3 AS est_index 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= CAST(6.543499946594238 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.133300065994263 AS DOUBLE PRECISION)) THEN 2 ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(19.799999237060547 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(5.184999942779541 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_0" <= CAST(0.51937997341156 AS DOUBLE PRECISION)) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.659000039100647 AS DOUBLE PRECISION)) THEN 11 ELSE 12 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_4 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 2 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 4 AS nid, CAST(20.112244897959176 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 5 AS nid, CAST(12.72258064516128 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 8 AS nid, CAST(35.90784313725492 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 9 AS nid, CAST(49.30833333333334 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 11 AS nid, CAST(29.79253731343284 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 12 AS nid, CAST(15.984615384615385 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"ADB_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator", CAST(0.076616341323085 AS DOUBLE PRECISION) AS "Weight", 4 AS est_index 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(9.614999771118164 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.444999694824219 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.484949946403504 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(19.100000381469727 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(14.90999984741211 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_10" <= CAST(13.850000381469727 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.603000044822693 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_5 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 4 AS nid, CAST(25.989189189189197 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 6 AS nid, CAST(47.066666666666656 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 7 AS nid, CAST(21.899999999999995 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 10 AS nid, CAST(30.8125 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 11 AS nid, CAST(21.448529411764714 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 13 AS nid, CAST(18.38139534883721 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 14 AS nid, CAST(11.786842105263156 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"ADB_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator", CAST(0.034692360724988 AS DOUBLE PRECISION) AS "Weight", 5 AS est_index 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= CAST(6.678500175476074 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.171650052070618 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(23.75 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(19.650001525878906 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(7.454500198364258 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.689499855041504 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.682500004768372 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_6 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 4 AS nid, CAST(13.8 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 6 AS nid, CAST(22.583035714285707 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 7 AS nid, CAST(13.675177304964542 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 10 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 11 AS nid, CAST(29.737931034482752 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 13 AS nid, CAST(46.61249999999999 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 14 AS nid, CAST(21.899999999999995 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"ADB_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator", CAST(0.060529598202795 AS DOUBLE PRECISION) AS "Weight", 6 AS est_index 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(7.670000076293945 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.140999794006348 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.484949946403504 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(16.049999237060547 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(19.850000381469727 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.227149963378906 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_9" <= CAST(551.5 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_7 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 4 AS nid, CAST(27.346753246753245 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 6 AS nid, CAST(49.07000000000001 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 7 AS nid, CAST(36.62941176470589 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 10 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 11 AS nid, CAST(19.508629441624368 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 13 AS nid, CAST(16.7 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 14 AS nid, CAST(7.940384615384612 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"ADB_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator", CAST(0.045117380916163 AS DOUBLE PRECISION) AS "Weight", 7 AS est_index 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(7.579999923706055 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.406000137329102 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(5.494999885559082 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_11" <= CAST(364.489990234375 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(20.200000762939453 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.227149963378906 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.603000044822693 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_8 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(33.931428571428576 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 4 AS nid, CAST(26.950000000000003 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 6 AS nid, CAST(21.9 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 7 AS nid, CAST(46.0483870967742 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 10 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 11 AS nid, CAST(20.819565217391304 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 13 AS nid, CAST(17.57 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 14 AS nid, CAST(8.98846153846154 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"ADB_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator", CAST(0.03629807123997 AS DOUBLE PRECISION) AS "Weight", 8 AS est_index 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= CAST(8.005000114440918 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.923999786376953 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.130499839782715 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(7.440999984741211 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_7" <= CAST(1.300750017166138 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(5.911999702453613 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(4.119999885559082 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_9 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(20.561111111111103 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 4 AS nid, CAST(28.09016393442622 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 6 AS nid, CAST(34.17352941176472 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 7 AS nid, CAST(44.3076923076923 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 10 AS nid, CAST(26.61818181818182 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 11 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 13 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 14 AS nid, CAST(15.48490566037733 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"ADB_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator", CAST(0.062908382036698 AS DOUBLE PRECISION) AS "Weight", 9 AS est_index 
FROM "DT_Output_9"), 
"DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= CAST(6.659999847412109 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.437000274658203 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.533500194549561 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(8.367500305175781 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(19.850000381469727 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_11" <= CAST(174.31500244140625 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.675000011920929 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_10 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(24.22000000000001 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 4 AS nid, CAST(32.733707865168554 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 6 AS nid, CAST(41.9923076923077 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 7 AS nid, CAST(49.80000000000001 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 10 AS nid, CAST(12.166666666666664 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 11 AS nid, CAST(22.22214765100673 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 13 AS nid, CAST(14.148000000000007 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 14 AS nid, CAST(7.263157894736842 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"ADB_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator", CAST(0.06818761345368 AS DOUBLE PRECISION) AS "Weight", 10 AS est_index 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(13.295000076293945 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_10" <= CAST(20.600000381469727 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.484949946403504 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= CAST(0.054085001349449 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.60699999332428 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(18.75 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_7" <= CAST(2.102449893951416 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_11 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(44.93541666666667 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 4 AS nid, CAST(31.890449438202264 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 6 AS nid, CAST(12.39714285714285 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 7 AS nid, CAST(22.46666666666667 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 10 AS nid, CAST(12.98235294117647 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 11 AS nid, CAST(23.597777777777782 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 13 AS nid, CAST(9.455882352941174 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 14 AS nid, CAST(21.25714285714286 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"ADB_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator", CAST(0.062880742786577 AS DOUBLE PRECISION) AS "Weight", 11 AS est_index 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= CAST(7.121000289916992 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.171650052070618 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_11" <= CAST(381.5249938964844 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(6.035500049591064 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(7.437000274658203 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_8" <= CAST(16.0 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_7" <= CAST(1.975300073623657 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_12 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 4 AS nid, CAST(13.8 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 6 AS nid, CAST(15.877241379310343 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 7 AS nid, CAST(24.18686131386861 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 10 AS nid, CAST(34.71515151515151 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 11 AS nid, CAST(15.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 13 AS nid, CAST(21.899999999999995 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 14 AS nid, CAST(46.337288135593205 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"ADB_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator", CAST(0.061162962104823 AS DOUBLE PRECISION) AS "Weight", 12 AS est_index 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(7.864999771118164 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.680500030517578 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_6" <= CAST(20.950000762939453 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(4.725000381469727 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_7" <= CAST(1.171650052070618 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_11" <= CAST(381.5249938964844 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(19.850000381469727 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_13 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(21.5 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 4 AS nid, CAST(26.628125 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 6 AS nid, CAST(45.58874999999999 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 7 AS nid, CAST(35.06730769230769 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 10 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 11 AS nid, CAST(13.8 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 13 AS nid, CAST(19.993333333333332 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 14 AS nid, CAST(10.82205882352941 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"ADB_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator", CAST(0.030872089965387 AS DOUBLE PRECISION) AS "Weight", 13 AS est_index 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(7.864999771118164 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(4.494999885559082 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(3.207449913024902 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(13.850000381469727 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_7" <= CAST(1.227149963378906 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_0" <= CAST(13.865249633789062 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.664999961853027 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_14 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(49.65510204081632 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 4 AS nid, CAST(39.29354838709678 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 6 AS nid, CAST(45.122727272727275 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 7 AS nid, CAST(29.700000000000006 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 10 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 11 AS nid, CAST(13.8 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 13 AS nid, CAST(20.848407643312097 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 14 AS nid, CAST(11.453030303030296 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"ADB_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator", CAST(0.072908159365727 AS DOUBLE PRECISION) AS "Weight", 14 AS est_index 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(7.835000038146973 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.450500011444092 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.484949946403504 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_8" <= CAST(6.5 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(6.040500164031982 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.315550088882446 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.659000039100647 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_15 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(50.0 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 4 AS nid, CAST(29.445833333333326 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 6 AS nid, CAST(48.48292682926829 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 7 AS nid, CAST(37.76 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 10 AS nid, CAST(22.579999999999995 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 11 AS nid, CAST(12.641666666666689 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 13 AS nid, CAST(28.69397590361445 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 14 AS nid, CAST(13.28055555555555 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15) AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"ADB_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator", CAST(0.067143601880394 AS DOUBLE PRECISION) AS "Weight", 15 AS est_index 
FROM "DT_Output_15"), 
"WE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator", ensemble_score_union."Weight" AS "Weight", ensemble_score_union.est_index AS est_index 
FROM (SELECT "ADB_Model_0"."KEY" AS "KEY", "ADB_Model_0"."Estimator" AS "Estimator", "ADB_Model_0"."Weight" AS "Weight", "ADB_Model_0".est_index AS est_index 
FROM "ADB_Model_0" UNION ALL SELECT "ADB_Model_1"."KEY" AS "KEY", "ADB_Model_1"."Estimator" AS "Estimator", "ADB_Model_1"."Weight" AS "Weight", "ADB_Model_1".est_index AS est_index 
FROM "ADB_Model_1" UNION ALL SELECT "ADB_Model_2"."KEY" AS "KEY", "ADB_Model_2"."Estimator" AS "Estimator", "ADB_Model_2"."Weight" AS "Weight", "ADB_Model_2".est_index AS est_index 
FROM "ADB_Model_2" UNION ALL SELECT "ADB_Model_3"."KEY" AS "KEY", "ADB_Model_3"."Estimator" AS "Estimator", "ADB_Model_3"."Weight" AS "Weight", "ADB_Model_3".est_index AS est_index 
FROM "ADB_Model_3" UNION ALL SELECT "ADB_Model_4"."KEY" AS "KEY", "ADB_Model_4"."Estimator" AS "Estimator", "ADB_Model_4"."Weight" AS "Weight", "ADB_Model_4".est_index AS est_index 
FROM "ADB_Model_4" UNION ALL SELECT "ADB_Model_5"."KEY" AS "KEY", "ADB_Model_5"."Estimator" AS "Estimator", "ADB_Model_5"."Weight" AS "Weight", "ADB_Model_5".est_index AS est_index 
FROM "ADB_Model_5" UNION ALL SELECT "ADB_Model_6"."KEY" AS "KEY", "ADB_Model_6"."Estimator" AS "Estimator", "ADB_Model_6"."Weight" AS "Weight", "ADB_Model_6".est_index AS est_index 
FROM "ADB_Model_6" UNION ALL SELECT "ADB_Model_7"."KEY" AS "KEY", "ADB_Model_7"."Estimator" AS "Estimator", "ADB_Model_7"."Weight" AS "Weight", "ADB_Model_7".est_index AS est_index 
FROM "ADB_Model_7" UNION ALL SELECT "ADB_Model_8"."KEY" AS "KEY", "ADB_Model_8"."Estimator" AS "Estimator", "ADB_Model_8"."Weight" AS "Weight", "ADB_Model_8".est_index AS est_index 
FROM "ADB_Model_8" UNION ALL SELECT "ADB_Model_9"."KEY" AS "KEY", "ADB_Model_9"."Estimator" AS "Estimator", "ADB_Model_9"."Weight" AS "Weight", "ADB_Model_9".est_index AS est_index 
FROM "ADB_Model_9" UNION ALL SELECT "ADB_Model_10"."KEY" AS "KEY", "ADB_Model_10"."Estimator" AS "Estimator", "ADB_Model_10"."Weight" AS "Weight", "ADB_Model_10".est_index AS est_index 
FROM "ADB_Model_10" UNION ALL SELECT "ADB_Model_11"."KEY" AS "KEY", "ADB_Model_11"."Estimator" AS "Estimator", "ADB_Model_11"."Weight" AS "Weight", "ADB_Model_11".est_index AS est_index 
FROM "ADB_Model_11" UNION ALL SELECT "ADB_Model_12"."KEY" AS "KEY", "ADB_Model_12"."Estimator" AS "Estimator", "ADB_Model_12"."Weight" AS "Weight", "ADB_Model_12".est_index AS est_index 
FROM "ADB_Model_12" UNION ALL SELECT "ADB_Model_13"."KEY" AS "KEY", "ADB_Model_13"."Estimator" AS "Estimator", "ADB_Model_13"."Weight" AS "Weight", "ADB_Model_13".est_index AS est_index 
FROM "ADB_Model_13" UNION ALL SELECT "ADB_Model_14"."KEY" AS "KEY", "ADB_Model_14"."Estimator" AS "Estimator", "ADB_Model_14"."Weight" AS "Weight", "ADB_Model_14".est_index AS est_index 
FROM "ADB_Model_14" UNION ALL SELECT "ADB_Model_15"."KEY" AS "KEY", "ADB_Model_15"."Estimator" AS "Estimator", "ADB_Model_15"."Weight" AS "Weight", "ADB_Model_15".est_index AS est_index 
FROM "ADB_Model_15") AS ensemble_score_union), 
"Cumulative_Frequencies" AS 
(SELECT "CW"."KEY" AS "KEY", "CW"."Estimator" AS "Estimator", "CW"."Weight" AS "Weight", "CW".est_index AS est_index, "CW".cum_weight AS cum_weight 
FROM (SELECT u1."KEY" AS "KEY", u1."Estimator" AS "Estimator", u1."Weight" AS "Weight", u1.est_index AS est_index, sum(u2."Weight") AS cum_weight 
FROM "WE" AS u1, "WE" AS u2 
WHERE u1."Estimator" >= u2."Estimator" AND u1."KEY" = u2."KEY" GROUP BY u1."KEY", u1.est_index, u1."Estimator", u1."Weight") AS "CW")
 SELECT "Quantiles"."KEY", "Quantiles"."Quantile" 
FROM (SELECT "CW2"."KEY" AS "KEY", "CW2"."Quantile" AS "Quantile" 
FROM (SELECT "Cumulative_Frequencies"."KEY" AS "KEY", min("Cumulative_Frequencies"."Estimator") AS "Quantile" 
FROM "Cumulative_Frequencies" 
WHERE "Cumulative_Frequencies".cum_weight >= CAST(0.5 AS DOUBLE PRECISION) GROUP BY "Cumulative_Frequencies"."KEY") AS "CW2") AS "Quantiles") AS "U"

-- Model deployment code

SELECT "Quantiles"."KEY" AS "KEY", "Quantiles"."Quantile" AS "Estimator" 
FROM tmp_20180602145233_4bz_quantiles AS "Quantiles"