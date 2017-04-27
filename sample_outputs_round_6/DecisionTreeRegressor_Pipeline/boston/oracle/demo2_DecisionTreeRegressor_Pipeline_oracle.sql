-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 3.26981218289 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 11.814159292 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 10.9415929204 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0796460176991 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.552612684366 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 6.31431563422 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 67.1421828909 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 3.83938820059 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 9.43362831858 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 404.619469027 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 18.3663716814 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 359.759587021 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 12.3942772861 ELSE "ADS"."Feature_12" END AS impter_14 
FROM boston "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 3.26981218289) / 8.06435679573 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 11.814159292) / 23.6845226609 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 10.9415929204) / 6.91219450398 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.0796460176991) / 0.270744398952 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.552612684366) / 0.116521457827 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 6.31431563422) / 0.713158124818 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 67.1421828909) / 28.1589507917 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 3.83938820059) / 2.09968835038 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 9.43362831858) / 8.61076650564 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 404.619469027) / 168.750972129 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 18.3663716814) / 2.15547367794 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 359.759587021) / 89.5754249699 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - 12.3942772861) / 6.97945748877 AS scaler_14 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.9215128421783447) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_14 <= 0.27304738759994507) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -1.1690012216567993) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.9079320430755615) THEN 4 ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.3192621171474457) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_14 <= -0.6639881730079651) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_14 <= -0.9469614624977112) THEN 11 ELSE 12 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.46675795316696167) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.3871787190437317) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.38881802558898926) THEN 16 ELSE 17 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.6172325015068054) THEN 19 ELSE 20 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.9007275104522705) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_14 <= 1.049612045288086) THEN 23 ELSE 24 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -1.1611666679382324) THEN 26 ELSE 27 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.5742433071136475) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.23798708617687225) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -0.8688511252403259) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.39592334628105164) THEN 32 ELSE 33 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_13 <= 0.27267986536026) THEN 35 ELSE 36 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.2236897945404053) THEN 38 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.9310373067855835) THEN 40 ELSE 41 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.7625768780708313) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_12 <= -1.6545652151107788) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.973172903060913) THEN 45 ELSE 46 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 0.5684806108474731) THEN 48 ELSE 49 END END ELSE 50 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_7' AS feature, 0.9215128421783447 AS threshold, 339 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 22.96194690265487 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'scaler_14' AS feature, 0.27304738759994507 AS threshold, 292 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 20.529794520547952 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, 'scaler_9' AS feature, -1.1690012216567993 AS threshold, 178 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 23.772471910112355 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, 'scaler_2' AS feature, 0.9079320430755615 AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 44.475 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 50.0 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 27.9 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, 'scaler_7' AS feature, 0.3192621171474457 AS threshold, 174 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 23.296551724137917 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, 'scaler_14' AS feature, -0.6639881730079651 AS threshold, 130 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 21.712307692307697 AS "Estimator" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 34 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 23.77058823529412 AS "Estimator" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 96 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 20.983333333333334 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, 'scaler_14' AS feature, -0.9469614624977112 AS threshold, 44 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 27.977272727272727 AS "Estimator" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 30.552631578947373 AS "Estimator" FROM DUAL UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 25 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 26.020000000000003 AS "Estimator" FROM DUAL UNION ALL SELECT 13 AS node_id, 'scaler_6' AS feature, 0.46675795316696167 AS threshold, 114 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.466666666666661 AS "Estimator" FROM DUAL UNION ALL SELECT 14 AS node_id, 'scaler_2' AS feature, -0.3871787190437317 AS threshold, 47 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.595744680851066 AS "Estimator" FROM DUAL UNION ALL SELECT 15 AS node_id, 'scaler_2' AS feature, -0.38881802558898926 AS threshold, 10 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 21.639999999999997 AS "Estimator" FROM DUAL UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 20.257142857142856 AS "Estimator" FROM DUAL UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 24.866666666666664 AS "Estimator" FROM DUAL UNION ALL SELECT 18 AS node_id, 'scaler_7' AS feature, 0.6172325015068054 AS threshold, 37 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.772972972972973 AS "Estimator" FROM DUAL UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 36 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.50277777777778 AS "Estimator" FROM DUAL UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 27.5 AS "Estimator" FROM DUAL UNION ALL SELECT 21 AS node_id, 'scaler_2' AS feature, 0.9007275104522705 AS threshold, 67 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.271641791044777 AS "Estimator" FROM DUAL UNION ALL SELECT 22 AS node_id, 'scaler_14' AS feature, 1.049612045288086 AS threshold, 46 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.700000000000003 AS "Estimator" FROM DUAL UNION ALL SELECT 23 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 16.039285714285715 AS "Estimator" FROM DUAL UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.616666666666667 AS "Estimator" FROM DUAL UNION ALL SELECT 25 AS node_id, 'scaler_9' AS feature, -1.1611666679382324 AS threshold, 21 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.142857142857146 AS "Estimator" FROM DUAL UNION ALL SELECT 26 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.65 AS "Estimator" FROM DUAL UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.31764705882353 AS "Estimator" FROM DUAL UNION ALL SELECT 28 AS node_id, 'scaler_7' AS feature, 1.5742433071136475 AS threshold, 47 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 38.07234042553192 AS "Estimator" FROM DUAL UNION ALL SELECT 29 AS node_id, 'scaler_2' AS feature, 0.23798708617687225 AS threshold, 24 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 31.508333333333326 AS "Estimator" FROM DUAL UNION ALL SELECT 30 AS node_id, 'scaler_11' AS feature, -0.8688511252403259 AS threshold, 21 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 33.25714285714285 AS "Estimator" FROM DUAL UNION ALL SELECT 31 AS node_id, 'scaler_2' AS feature, -0.39592334628105164 AS threshold, 8 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 35.575 AS "Estimator" FROM DUAL UNION ALL SELECT 32 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 34.9 AS "Estimator" FROM DUAL UNION ALL SELECT 33 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 37.599999999999994 AS "Estimator" FROM DUAL UNION ALL SELECT 34 AS node_id, 'scaler_13' AS feature, 0.27267986536026 AS threshold, 13 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 31.830769230769228 AS "Estimator" FROM DUAL UNION ALL SELECT 35 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 30.3 AS "Estimator" FROM DUAL UNION ALL SELECT 36 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 32.7875 AS "Estimator" FROM DUAL UNION ALL SELECT 37 AS node_id, 'scaler_7' AS feature, 1.2236897945404053 AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 19.266666666666666 AS "Estimator" FROM DUAL UNION ALL SELECT 38 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 25.0 AS "Estimator" FROM DUAL UNION ALL SELECT 39 AS node_id, 'scaler_9' AS feature, -0.9310373067855835 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 16.4 AS "Estimator" FROM DUAL UNION ALL SELECT 40 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.0 AS "Estimator" FROM DUAL UNION ALL SELECT 41 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.8 AS "Estimator" FROM DUAL UNION ALL SELECT 42 AS node_id, 'scaler_10' AS feature, 0.7625768780708313 AS threshold, 23 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 44.92173913043479 AS "Estimator" FROM DUAL UNION ALL SELECT 43 AS node_id, 'scaler_12' AS feature, -1.6545652151107788 AS threshold, 22 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 45.96818181818182 AS "Estimator" FROM DUAL UNION ALL SELECT 44 AS node_id, 'scaler_7' AS feature, 1.973172903060913 AS threshold, 10 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 48.540000000000006 AS "Estimator" FROM DUAL UNION ALL SELECT 45 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 45.53333333333333 AS "Estimator" FROM DUAL UNION ALL SELECT 46 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 49.82857142857143 AS "Estimator" FROM DUAL UNION ALL SELECT 47 AS node_id, 'scaler_8' AS feature, 0.5684806108474731 AS threshold, 12 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 43.82500000000001 AS "Estimator" FROM DUAL UNION ALL SELECT 48 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 44.85 AS "Estimator" FROM DUAL UNION ALL SELECT 49 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 38.7 AS "Estimator" FROM DUAL UNION ALL SELECT 50 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 21.9 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"