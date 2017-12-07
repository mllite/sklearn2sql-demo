-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < 0.0007076415931805968) THEN CASE WHEN ("ADS"."Feature_2" < 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_6" < 0.021027816459536552) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.047145746648311615) THEN CASE WHEN ("ADS"."Feature_2" < -0.021834230050444603) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 15.776923179626465 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 24.05500030517578 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 10.930405616760254 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 8.347762107849121 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 13.62121295928955 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 18.598438262939453 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"XGB_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_2" < 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_6" < 0.021027816459536552) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.06870198249816895) THEN CASE WHEN ("ADS"."Feature_3" < 0.037365272641181946) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 14.003450393676758 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 23.286762237548828 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 9.415186882019043 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 7.198849678039551 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 14.533350944519043 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 19.064584732055664 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"XGB_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < 0.0007076415931805968) THEN CASE WHEN ("ADS"."Feature_2" < 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_8" < -0.04327875375747681) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_9" < -0.019717179238796234) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_2" < 0.05576823651790619) THEN CASE WHEN ("ADS"."Feature_2" < -0.021834230050444603) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 20.29665184020996 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 6.414662837982178 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 8.630793571472168 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 9.850298881530762 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 14.109347343444824 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 10.822417259216309 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 15.3329439163208 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"XGB_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < -0.00016888421669136733) THEN CASE WHEN ("ADS"."Feature_2" < 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_6" < 0.021027816459536552) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_9" < -0.019717179238796234) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_2" < 0.047145746648311615) THEN CASE WHEN ("ADS"."Feature_0" < -0.012779632583260536) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_4" < 0.038333673030138016) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 8.028899192810059 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 5.990607738494873 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 8.930937767028809 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 12.754850387573242 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 9.25925064086914 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 13.668062210083008 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 19.54034996032715 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 13.672558784484863 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"XGB_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_2" < 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_6" < 0.021027816459536552) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.02536202222108841) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_3" < 0.03679146245121956) THEN CASE WHEN ("ADS"."Feature_9" < 0.029988106340169907) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.01319466345012188) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 6.921077728271484 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 5.144952297210693 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 11.345939636230469 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 7.35351037979126 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 9.932232856750488 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 13.648144721984863 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 11.720587730407715 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 16.95893669128418 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"XGB_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_2" < 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_2" < -0.011595014482736588) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_6" < 0.01182372123003006) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_2" < 0.06870198249816895) THEN CASE WHEN ("ADS"."Feature_3" < -0.04813268035650253) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 15.905003547668457 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 5.828351974487305 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 3.6082522869110107 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 10.483193397521973 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 6.575033664703369 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 5.92445707321167 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 11.060623168945312 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"XGB_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < 0.021657448261976242) THEN CASE WHEN ("ADS"."Feature_2" < 0.005111072678118944) THEN CASE WHEN ("ADS"."Feature_7" < 0.03135676681995392) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.016708049923181534) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_3" < 0.06089155748486519) THEN CASE WHEN ("ADS"."Feature_6" < -0.045241665095090866) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 14.899293899536133 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 5.037124156951904 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 8.110381126403809 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 7.3873162269592285 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 11.648924827575684 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 13.217264175415039 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 8.917932510375977 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"XGB_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_2" < 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_6" < 0.021027816459536552) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.014464406296610832) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_3" < 0.03851289674639702) THEN CASE WHEN ("ADS"."Feature_2" < -0.023450948297977448) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.01319466345012188) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 5.168146133422852 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 3.6053311824798584 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 8.7820405960083 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 5.390221118927002 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 5.32416296005249 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 8.763245582580566 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 8.623435974121094 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 12.895909309387207 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"XGB_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < 0.021657448261976242) THEN CASE WHEN ("ADS"."Feature_2" < 0.005111072678118944) THEN CASE WHEN ("ADS"."Feature_7" < 0.03135676681995392) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.02359379082918167) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_3" < 0.06261299550533295) THEN CASE WHEN ("ADS"."Feature_6" < 0.032072730362415314) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 12.363444328308105 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 4.04940938949585 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 6.651192665100098 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 6.120324611663818 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 10.08482551574707 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 8.969040870666504 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 3.548654317855835 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"XGB_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_2" < 0.044451214373111725) THEN CASE WHEN ("ADS"."Feature_8" < -0.04327875375747681) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.06870198249816895) THEN CASE WHEN ("ADS"."Feature_8" < 0.044254668056964874) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 7.961431980133057 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 11.157633781433105 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 2.6931638717651367 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 4.346072673797607 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 6.031167030334473 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 5 AS parent_id, 8.75991439819336 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"XGB_Tree_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Tree_0"."KEY" AS "KEY", "XGB_Tree_0"."Estimator" AS "Estimator" 
FROM "XGB_Tree_0" UNION ALL SELECT "XGB_Tree_1"."KEY" AS "KEY", "XGB_Tree_1"."Estimator" AS "Estimator" 
FROM "XGB_Tree_1" UNION ALL SELECT "XGB_Tree_2"."KEY" AS "KEY", "XGB_Tree_2"."Estimator" AS "Estimator" 
FROM "XGB_Tree_2" UNION ALL SELECT "XGB_Tree_3"."KEY" AS "KEY", "XGB_Tree_3"."Estimator" AS "Estimator" 
FROM "XGB_Tree_3" UNION ALL SELECT "XGB_Tree_4"."KEY" AS "KEY", "XGB_Tree_4"."Estimator" AS "Estimator" 
FROM "XGB_Tree_4" UNION ALL SELECT "XGB_Tree_5"."KEY" AS "KEY", "XGB_Tree_5"."Estimator" AS "Estimator" 
FROM "XGB_Tree_5" UNION ALL SELECT "XGB_Tree_6"."KEY" AS "KEY", "XGB_Tree_6"."Estimator" AS "Estimator" 
FROM "XGB_Tree_6" UNION ALL SELECT "XGB_Tree_7"."KEY" AS "KEY", "XGB_Tree_7"."Estimator" AS "Estimator" 
FROM "XGB_Tree_7" UNION ALL SELECT "XGB_Tree_8"."KEY" AS "KEY", "XGB_Tree_8"."Estimator" AS "Estimator" 
FROM "XGB_Tree_8" UNION ALL SELECT "XGB_Tree_9"."KEY" AS "KEY", "XGB_Tree_9"."Estimator" AS "Estimator" 
FROM "XGB_Tree_9") AS ensemble_score_union), 
"XGB_Sum_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", sum("Score_Union_CTE"."Estimator") AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T")
 SELECT "XGB_Sum_Scores"."KEY" AS "KEY", "XGB_Sum_Scores"."Estimator" + 0.5 AS "Estimator" 
FROM "XGB_Sum_Scores"