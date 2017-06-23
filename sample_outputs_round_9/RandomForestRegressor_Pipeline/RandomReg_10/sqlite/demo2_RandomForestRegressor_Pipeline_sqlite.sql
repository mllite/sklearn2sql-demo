-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0810083160112 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.269250048034 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.240487763101 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.142604128589 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.183572350866 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.173548954209 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.126298254061 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.360628810671 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.51115301513 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.203356397123 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.0810083160112) / 0.90949713658 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.269250048034) / 0.992426738719 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.240487763101) / 0.759956724432 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.142604128589) / 1.0926864622 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.183572350866) / 1.05658801775 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.173548954209) / 0.786365993461 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.126298254061) / 1.3847124245 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.360628810671) / 0.940597350833 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.51115301513) / 1.18193438252 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.203356397123) / 0.6906744839 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.07510147988796234) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.8804625272750854) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.28214558959007263) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.4883303642272949) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.7204875946044922) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.7501744627952576) THEN 7 ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 0.91801917552948) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.7829731702804565) THEN 12 ELSE 13 END ELSE 14 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.2454037070274353) THEN 16 ELSE 17 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 0.48385921120643616) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.2880640923976898) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.12582311034202576) THEN 21 ELSE 22 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.14893025159835815) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.9625579714775085) THEN 25 ELSE 26 END ELSE 27 END END ELSE 28 END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_4' AS feature, 0.07510147988796234 AS threshold, 15 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 55.67372738660818 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_11' AS feature, 0.8804625272750854 AS threshold, 9 AS count, 1 AS depth, 0 AS parent_id, -124.25620202652398 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_2' AS feature, -0.28214558959007263 AS threshold, 7 AS count, 2 AS depth, 1 AS parent_id, -57.53459696454271 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -181.5117298102302 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'scaler_3' AS feature, 0.4883303642272949 AS threshold, 6 AS count, 3 AS depth, 2 AS parent_id, -43.759359981688554 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'scaler_7' AS feature, 0.7204875946044922 AS threshold, 3 AS count, 4 AS depth, 4 AS parent_id, -25.914391593610596 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'scaler_2' AS feature, 0.7501744627952576 AS threshold, 2 AS count, 5 AS depth, 5 AS parent_id, -33.162011695061665 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 6 AS parent_id, -33.10367734893197 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 6 AS parent_id, -33.337014733450744 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 5 AS parent_id, 3.0760888121936603 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'scaler_8' AS feature, 0.91801917552948 AS threshold, 3 AS count, 4 AS depth, 4 AS parent_id, -66.06557046678597 AS "Estimator" UNION ALL SELECT 11 AS node_id, 'scaler_4' AS feature, -0.7829731702804565 AS threshold, 2 AS count, 5 AS depth, 10 AS parent_id, -51.764009207950075 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 11 AS parent_id, -53.55855810403281 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 11 AS parent_id, -49.96946031186734 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 10 AS parent_id, -80.36713172562187 AS "Estimator" UNION ALL SELECT 15 AS node_id, 'scaler_2' AS feature, -0.2454037070274353 AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, -291.0602146814771 AS "Estimator" UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 15 AS parent_id, -351.3842930876292 AS "Estimator" UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 15 AS parent_id, -230.736136275325 AS "Estimator" UNION ALL SELECT 18 AS node_id, 'scaler_8' AS feature, 0.48385921120643616 AS threshold, 6 AS count, 1 AS depth, 0 AS parent_id, 284.67545573059454 AS "Estimator" UNION ALL SELECT 19 AS node_id, 'scaler_6' AS feature, 0.2880640923976898 AS threshold, 5 AS count, 2 AS depth, 18 AS parent_id, 309.40833596226594 AS "Estimator" UNION ALL SELECT 20 AS node_id, 'scaler_6' AS feature, 0.12582311034202576 AS threshold, 2 AS count, 3 AS depth, 19 AS parent_id, 263.2704249925645 AS "Estimator" UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 20 AS parent_id, 277.9812845098006 AS "Estimator" UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 20 AS parent_id, 248.55956547532833 AS "Estimator" UNION ALL SELECT 23 AS node_id, 'scaler_5' AS feature, 0.14893025159835815 AS threshold, 3 AS count, 3 AS depth, 19 AS parent_id, 340.1669432754003 AS "Estimator" UNION ALL SELECT 24 AS node_id, 'scaler_10' AS feature, 0.9625579714775085 AS threshold, 2 AS count, 4 AS depth, 23 AS parent_id, 349.9090887476711 AS "Estimator" UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 24 AS parent_id, 349.4216823421892 AS "Estimator" UNION ALL SELECT 26 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 24 AS parent_id, 351.37130796411674 AS "Estimator" UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 23 AS parent_id, 320.6826523308587 AS "Estimator" UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 18 AS parent_id, 37.34665341388054 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 1.060962200164795) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.04094686359167099) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.13113901019096375) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.8275760412216187) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.2099339962005615) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.0750515460968018) THEN 8 ELSE 9 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.29218950867652893) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.36752644181251526) THEN 12 ELSE 13 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.33231446146965027) THEN 15 ELSE 16 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.2914075255393982) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.544012188911438) THEN 19 ELSE 20 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.4557267427444458) THEN 22 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.14893025159835815) THEN 24 ELSE 25 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 1.9978234767913818) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.8219932317733765) THEN 28 ELSE 29 END ELSE 30 END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_9' AS feature, 1.060962200164795 AS threshold, 16 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 69.27784082810544 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_3' AS feature, -0.04094686359167099 AS threshold, 13 AS count, 1 AS depth, 0 AS parent_id, 8.994307823657735 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_2' AS feature, 0.13113901019096375 AS threshold, 8 AS count, 2 AS depth, 1 AS parent_id, -65.91437362121154 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'scaler_2' AS feature, -0.8275760412216187 AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, -213.82862999143452 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'scaler_2' AS feature, -1.2099339962005615 AS threshold, 2 AS count, 4 AS depth, 3 AS parent_id, -117.86989724477809 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 4 AS parent_id, -168.02760851528973 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 4 AS parent_id, -67.71218597426643 AS "Estimator" UNION ALL SELECT 7 AS node_id, 'scaler_7' AS feature, -1.0750515460968018 AS threshold, 2 AS count, 4 AS depth, 3 AS parent_id, -309.787362738091 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 7 AS parent_id, -351.3842930876292 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 7 AS parent_id, -268.1904323885528 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'scaler_9' AS feature, 0.29218950867652893 AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, -6.748671073122345 AS "Estimator" UNION ALL SELECT 11 AS node_id, 'scaler_9' AS feature, -0.36752644181251526 AS threshold, 2 AS count, 4 AS depth, 10 AS parent_id, -33.220346041191355 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 11 AS parent_id, -33.337014733450744 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 11 AS parent_id, -33.10367734893197 AS "Estimator" UNION ALL SELECT 14 AS node_id, 'scaler_2' AS feature, 0.33231446146965027 AS threshold, 2 AS count, 4 AS depth, 10 AS parent_id, -0.13075233110509288 AS "Estimator" UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 14 AS parent_id, -9.185160907179679 AS "Estimator" UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 14 AS parent_id, 8.923656244969493 AS "Estimator" UNION ALL SELECT 17 AS node_id, 'scaler_7' AS feature, -0.2914075255393982 AS threshold, 5 AS count, 2 AS depth, 1 AS parent_id, 158.81167071339632 AS "Estimator" UNION ALL SELECT 18 AS node_id, 'scaler_9' AS feature, -0.544012188911438 AS threshold, 2 AS count, 3 AS depth, 17 AS parent_id, -52.362192173310994 AS "Estimator" UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 18 AS parent_id, -49.96946031186734 AS "Estimator" UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 18 AS parent_id, -53.55855810403281 AS "Estimator" UNION ALL SELECT 21 AS node_id, 'scaler_11' AS feature, 0.4557267427444458 AS threshold, 3 AS count, 3 AS depth, 17 AS parent_id, 317.19206787842677 AS "Estimator" UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 21 AS parent_id, 277.9812845098006 AS "Estimator" UNION ALL SELECT 23 AS node_id, 'scaler_5' AS feature, 0.14893025159835815 AS threshold, 2 AS count, 4 AS depth, 21 AS parent_id, 330.2623290013022 AS "Estimator" UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 23 AS parent_id, 349.42168234218923 AS "Estimator" UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 23 AS parent_id, 320.6826523308587 AS "Estimator" UNION ALL SELECT 26 AS node_id, 'scaler_9' AS feature, 1.9978234767913818 AS threshold, 3 AS count, 1 AS depth, 0 AS parent_id, 385.76638910145584 AS "Estimator" UNION ALL SELECT 27 AS node_id, 'scaler_10' AS feature, 1.8219932317733765 AS threshold, 2 AS count, 2 AS depth, 26 AS parent_id, 354.45278012043826 AS "Estimator" UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 27 AS parent_id, 351.37130796411674 AS "Estimator" UNION ALL SELECT 29 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 27 AS parent_id, 360.61572443308125 AS "Estimator" UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 26 AS parent_id, 479.70721604450864 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.12003344297409058) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.2899431884288788) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.7943935394287109) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.6784148812294006) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.47801142930984497) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.025192588567733765) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.4016653299331665) THEN 10 ELSE 11 END END ELSE 12 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.0649823248386383) THEN 14 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.2531946301460266) THEN 16 ELSE 17 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.8105282783508301) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.43457716703414917) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 0.614852786064148) THEN 21 ELSE 22 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.27790191769599915) THEN 24 ELSE 25 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.5237506628036499) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.8064558506011963) THEN 28 ELSE 29 END ELSE 30 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_7' AS feature, 0.12003344297409058 AS threshold, 16 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -15.10220096472055 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_2' AS feature, 0.2899431884288788 AS threshold, 9 AS count, 1 AS depth, 0 AS parent_id, -162.1152249600922 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_9' AS feature, -0.7943935394287109 AS threshold, 6 AS count, 2 AS depth, 1 AS parent_id, -227.36880202483266 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -351.3842930876292 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'scaler_9' AS feature, 0.6784148812294006 AS threshold, 5 AS count, 3 AS depth, 2 AS parent_id, -191.93580457831936 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'scaler_9' AS feature, -0.47801142930984497 AS threshold, 4 AS count, 4 AS depth, 4 AS parent_id, -212.63974101232816 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'scaler_6' AS feature, 0.025192588567733765 AS threshold, 2 AS count, 5 AS depth, 5 AS parent_id, -182.0585803782554 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 6 AS parent_id, -181.5117298102302 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 6 AS parent_id, -182.332005662268 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'scaler_7' AS feature, -1.4016653299331665 AS threshold, 2 AS count, 5 AS depth, 5 AS parent_id, -243.2209016464009 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 9 AS parent_id, -230.736136275325 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 9 AS parent_id, -268.1904323885528 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 4 AS parent_id, -67.71218597426643 AS "Estimator" UNION ALL SELECT 13 AS node_id, 'scaler_3' AS feature, -0.0649823248386383 AS threshold, 3 AS count, 2 AS depth, 1 AS parent_id, -44.65878624355938 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 13 AS parent_id, -33.10367734893197 AS "Estimator" UNION ALL SELECT 15 AS node_id, 'scaler_6' AS feature, 0.2531946301460266 AS threshold, 2 AS count, 3 AS depth, 13 AS parent_id, -52.362192173310994 AS "Estimator" UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 15 AS parent_id, -53.55855810403281 AS "Estimator" UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 15 AS parent_id, -49.96946031186734 AS "Estimator" UNION ALL SELECT 18 AS node_id, 'scaler_5' AS feature, 0.8105282783508301 AS threshold, 7 AS count, 1 AS depth, 0 AS parent_id, 172.00528412029792 AS "Estimator" UNION ALL SELECT 19 AS node_id, 'scaler_3' AS feature, 0.43457716703414917 AS threshold, 4 AS count, 2 AS depth, 18 AS parent_id, 301.1812351942287 AS "Estimator" UNION ALL SELECT 20 AS node_id, 'scaler_8' AS feature, 0.614852786064148 AS threshold, 2 AS count, 3 AS depth, 19 AS parent_id, 355.99351619859897 AS "Estimator" UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 20 AS parent_id, 351.37130796411674 AS "Estimator" UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 20 AS parent_id, 360.61572443308125 AS "Estimator" UNION ALL SELECT 23 AS node_id, 'scaler_2' AS feature, 0.27790191769599915 AS threshold, 2 AS count, 3 AS depth, 19 AS parent_id, 273.7750946920436 AS "Estimator" UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 23 AS parent_id, 248.55956547532833 AS "Estimator" UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 23 AS parent_id, 349.42168234218923 AS "Estimator" UNION ALL SELECT 26 AS node_id, 'scaler_10' AS feature, 0.5237506628036499 AS threshold, 3 AS count, 2 AS depth, 18 AS parent_id, 16.994142831580966 AS "Estimator" UNION ALL SELECT 27 AS node_id, 'scaler_3' AS feature, -0.8064558506011963 AS threshold, 2 AS count, 3 AS depth, 26 AS parent_id, 29.5769322228389 AS "Estimator" UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 27 AS parent_id, 26.98702515915835 AS "Estimator" UNION ALL SELECT 29 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 27 AS parent_id, 37.34665341388054 AS "Estimator" UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 26 AS parent_id, -33.337014733450744 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.1823035180568695) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.05682074651122093) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.4021131694316864) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.07891783118247986) THEN 4 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.1516331136226654) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.7791382074356079) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 0.03995233774185181) THEN 10 ELSE 11 END ELSE 12 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.35949647426605225) THEN 14 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.1530170440673828) THEN 16 ELSE 17 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.3287602663040161) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.8470758199691772) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.7745242118835449) THEN 21 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 1.03960382938385) THEN 23 ELSE 24 END END ELSE 25 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 1.9978234767913818) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.21342134475708) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.46763527393341064) THEN 29 ELSE 30 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.9647277593612671) THEN 32 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.8219932317733765) THEN 34 ELSE 35 END END END ELSE 36 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_7' AS feature, 0.1823035180568695 AS threshold, 19 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 31.0372439950999 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'scaler_11' AS feature, 0.05682074651122093 AS threshold, 9 AS count, 1 AS depth, 0 AS parent_id, -176.23843223445783 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'scaler_7' AS feature, -0.4021131694316864 AS threshold, 6 AS count, 2 AS depth, 1 AS parent_id, -114.1457539967947 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'scaler_6' AS feature, 0.07891783118247986 AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, -53.35243242457213 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 3 AS parent_id, -80.36713172562187 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'scaler_4' AS feature, -0.1516331136226654 AS threshold, 2 AS count, 4 AS depth, 3 AS parent_id, -44.34753265755555 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 5 AS parent_id, -33.10367734893197 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 5 AS parent_id, -49.96946031186734 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'scaler_3' AS feature, 0.7791382074356079 AS threshold, 3 AS count, 3 AS depth, 2 AS parent_id, -174.93907556901723 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'scaler_8' AS feature, 0.03995233774185181 AS threshold, 2 AS count, 4 AS depth, 8 AS parent_id, -181.78515509424278 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 9 AS parent_id, -182.332005662268 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 9 AS parent_id, -181.5117298102302 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 8 AS parent_id, -154.40083699334056 AS "Estimator" UNION ALL SELECT 13 AS node_id, 'scaler_2' AS feature, -0.35949647426605225 AS threshold, 3 AS count, 2 AS depth, 1 AS parent_id, -300.42378870978405 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 13 AS parent_id, -351.3842930876292 AS "Estimator" UNION ALL SELECT 15 AS node_id, 'scaler_6' AS feature, 0.1530170440673828 AS threshold, 2 AS count, 3 AS depth, 13 AS parent_id, -249.4632843319389 AS "Estimator" UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 15 AS parent_id, -268.1904323885528 AS "Estimator" UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 15 AS parent_id, -230.736136275325 AS "Estimator" UNION ALL SELECT 18 AS node_id, 'scaler_9' AS feature, 0.3287602663040161 AS threshold, 10 AS count, 1 AS depth, 0 AS parent_id, 222.36863743776854 AS "Estimator" UNION ALL SELECT 19 AS node_id, 'scaler_2' AS feature, 0.8470758199691772 AS threshold, 4 AS count, 2 AS depth, 18 AS parent_id, 8.518188162945451 AS "Estimator" UNION ALL SELECT 20 AS node_id, 'scaler_6' AS feature, -0.7745242118835449 AS threshold, 3 AS count, 3 AS depth, 19 AS parent_id, 22.469922461744186 AS "Estimator" UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 20 AS parent_id, 3.0760888121936603 AS "Estimator" UNION ALL SELECT 22 AS node_id, 'scaler_5' AS feature, 1.03960382938385 AS threshold, 2 AS count, 4 AS depth, 20 AS parent_id, 32.16683928651945 AS "Estimator" UNION ALL SELECT 23 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 22 AS parent_id, 26.98702515915835 AS "Estimator" UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 22 AS parent_id, 37.34665341388054 AS "Estimator" UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 19 AS parent_id, -33.337014733450744 AS "Estimator" UNION ALL SELECT 26 AS node_id, 'scaler_9' AS feature, 1.9978234767913818 AS threshold, 6 AS count, 2 AS depth, 18 AS parent_id, 317.41328155991215 AS "Estimator" UNION ALL SELECT 27 AS node_id, 'scaler_10' AS feature, 1.21342134475708 AS threshold, 5 AS count, 3 AS depth, 26 AS parent_id, 297.1265397493376 AS "Estimator" UNION ALL SELECT 28 AS node_id, 'scaler_10' AS feature, 0.46763527393341064 AS threshold, 2 AS count, 4 AS depth, 27 AS parent_id, 255.9149952339464 AS "Estimator" UNION ALL SELECT 29 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 28 AS parent_id, 277.9812845098006 AS "Estimator" UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 28 AS parent_id, 248.55956547532833 AS "Estimator" UNION ALL SELECT 31 AS node_id, 'scaler_2' AS feature, -0.9647277593612671 AS threshold, 3 AS count, 4 AS depth, 27 AS parent_id, 338.3380842647288 AS "Estimator" UNION ALL SELECT 32 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 31 AS parent_id, 320.6826523308587 AS "Estimator" UNION ALL SELECT 33 AS node_id, 'scaler_10' AS feature, 1.8219932317733765 AS threshold, 2 AS count, 5 AS depth, 31 AS parent_id, 355.99351619859897 AS "Estimator" UNION ALL SELECT 34 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 33 AS parent_id, 351.37130796411674 AS "Estimator" UNION ALL SELECT 35 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 33 AS parent_id, 360.61572443308125 AS "Estimator" UNION ALL SELECT 36 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 26 AS parent_id, 479.70721604450864 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"RF_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator" 
FROM (SELECT "RF_Tree_0"."KEY" AS "KEY", "RF_Tree_0"."Estimator" AS "Estimator" 
FROM "RF_Tree_0" UNION ALL SELECT "RF_Tree_1"."KEY" AS "KEY", "RF_Tree_1"."Estimator" AS "Estimator" 
FROM "RF_Tree_1" UNION ALL SELECT "RF_Tree_2"."KEY" AS "KEY", "RF_Tree_2"."Estimator" AS "Estimator" 
FROM "RF_Tree_2" UNION ALL SELECT "RF_Tree_3"."KEY" AS "KEY", "RF_Tree_3"."Estimator" AS "Estimator" 
FROM "RF_Tree_3") AS ensemble_score_union), 
"RF_AVG_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", avg("Score_Union_CTE"."Estimator") AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T")
 SELECT "RF_AVG_Scores"."KEY" AS "KEY", "RF_AVG_Scores"."Estimator" AS "Estimator" 
FROM "RF_AVG_Scores"