-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.17550225729200303) THEN 2 ELSE CASE WHEN ("ADS"."Feature_0" <= 60.99369775751714) THEN CASE WHEN ("ADS"."Feature_1" <= 821.274408712417) THEN 12 ELSE CASE WHEN ("ADS"."Feature_0" <= 42.45656760945015) THEN CASE WHEN ("ADS"."Feature_0" <= 23.03044167246242) THEN 52 ELSE 53 END ELSE 27 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 870.9581401280836) THEN 14 ELSE 15 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 1.3402189552395916 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 1.3647419750590677 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 7 AS parent_id, 1.3527505422857675 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 7 AS parent_id, 1.3644562013193289 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 13 AS parent_id, 1.3681015639255445 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 52 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS depth, 26 AS parent_id, 1.3708129931986333 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 53 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS depth, 26 AS parent_id, 1.3695097883418204 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"LGBM_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.17550225729200303) THEN 2 ELSE CASE WHEN ("ADS"."Feature_0" <= 60.99369775751714) THEN CASE WHEN ("ADS"."Feature_1" <= 821.274408712417) THEN 12 ELSE CASE WHEN ("ADS"."Feature_0" <= 42.45656760945015) THEN CASE WHEN ("ADS"."Feature_0" <= 23.03044167246242) THEN 52 ELSE 53 END ELSE 27 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 870.9581401280836) THEN 14 ELSE 15 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -0.01996448101902691 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.0033323876975503357 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 7 AS parent_id, -0.00805947347120805 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 7 AS parent_id, 0.003060902570458976 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 13 AS parent_id, 0.00652399710379541 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 52 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS depth, 26 AS parent_id, 0.009099854975938794 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 53 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS depth, 26 AS parent_id, 0.007861810624599458 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"LGBM_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.2563862506598487) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 445.71486640744774) THEN 6 ELSE CASE WHEN ("ADS"."Feature_0" <= 69.25674834585132) THEN CASE WHEN ("ADS"."Feature_0" <= 23.03044167246242) THEN 28 ELSE CASE WHEN ("ADS"."Feature_1" <= 1038.5771126756622) THEN 58 ELSE 59 END END ELSE 15 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -0.014790266973432154 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -0.003013865513583789 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 7 AS parent_id, 0.002879301467910409 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 28 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 14 AS parent_id, 0.008793108571659434 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 58 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS depth, 29 AS parent_id, 0.005380818511780075 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 59 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS depth, 29 AS parent_id, 0.00709993241026121 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"LGBM_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.17550225729200303) THEN 2 ELSE CASE WHEN ("ADS"."Feature_0" <= 60.99369775751714) THEN CASE WHEN ("ADS"."Feature_0" <= 34.44668575702575) THEN CASE WHEN ("ADS"."Feature_0" <= 13.137228914219545) THEN 24 ELSE 25 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1166.5041422953595) THEN 26 ELSE 27 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 870.9581401280836) THEN 14 ELSE 15 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -0.01822674348562335 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 7 AS parent_id, -0.0074369511143727715 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 7 AS parent_id, 0.0029131543018262496 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 12 AS parent_id, 0.008771469782699236 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 12 AS parent_id, 0.006492487593953099 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 13 AS parent_id, 0.0013735635565932497 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 13 AS parent_id, 0.0065992498397827145 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"LGBM_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.17550225729200303) THEN 2 ELSE CASE WHEN ("ADS"."Feature_0" <= 62.66221688737487) THEN CASE WHEN ("ADS"."Feature_1" <= 821.274408712417) THEN 12 ELSE CASE WHEN ("ADS"."Feature_0" <= 42.45656760945015) THEN CASE WHEN ("ADS"."Feature_0" <= 23.03044167246242) THEN 52 ELSE 53 END ELSE 27 END END ELSE 7 END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -0.01731540634452055 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -0.0027676216204111513 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.0024940494215115907 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 13 AS parent_id, 0.005613028788222717 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 52 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS depth, 26 AS parent_id, 0.007918734848499295 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 53 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS depth, 26 AS parent_id, 0.006830817237496376 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"LGBM_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.2563862506598487) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 445.71486640744774) THEN 6 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.4304537600177991) THEN 14 ELSE CASE WHEN ("ADS"."Feature_0" <= 49.23267591411704) THEN CASE WHEN ("ADS"."Feature_0" <= 27.617347889298) THEN 60 ELSE 61 END ELSE 31 END END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -0.012842763551614352 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -0.0028822172791338886 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 7 AS parent_id, 0.0024787384783849123 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 31 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 15 AS parent_id, 0.004979636706411839 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 60 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS depth, 30 AS parent_id, 0.007339255170275766 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 61 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS depth, 30 AS parent_id, 0.006620400313001412 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"LGBM_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.17550225729200303) THEN 2 ELSE CASE WHEN ("ADS"."Feature_0" <= 49.23267591411704) THEN CASE WHEN ("ADS"."Feature_0" <= 13.137228914219545) THEN 12 ELSE CASE WHEN ("ADS"."Feature_1" <= 946.1449433239336) THEN 26 ELSE 27 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 736.0386185020222) THEN 14 ELSE 15 END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -0.015807498013600707 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 0.007897472855719654 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 7 AS parent_id, -0.007839704067869617 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 7 AS parent_id, 0.003044688785707371 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 13 AS parent_id, 0.002766716162758794 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 13 AS parent_id, 0.006106837926542059 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"LGBM_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.17550225729200303) THEN 2 ELSE CASE WHEN ("ADS"."Feature_0" <= 62.66221688737487) THEN CASE WHEN ("ADS"."Feature_0" <= 34.44668575702575) THEN CASE WHEN ("ADS"."Feature_0" <= 13.137228914219545) THEN 24 ELSE 25 END ELSE CASE WHEN ("ADS"."Feature_1" <= 989.3647902344919) THEN 26 ELSE 27 END END ELSE 7 END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -0.015017123272021614 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -0.002461875002144983 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 12 AS parent_id, 0.0075025991960005305 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 12 AS parent_id, 0.005379095567124231 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 13 AS parent_id, -0.00022690246643667866 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 13 AS parent_id, 0.005510853890043039 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"LGBM_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.2563862506598487) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 445.71486640744774) THEN 6 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.4304537600177991) THEN 14 ELSE CASE WHEN ("ADS"."Feature_0" <= 49.23267591411704) THEN CASE WHEN ("ADS"."Feature_0" <= 27.617347889298) THEN 60 ELSE 61 END ELSE 31 END END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -0.011169750039051804 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -0.002678607475872223 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 7 AS parent_id, 0.0020474758138880134 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 31 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 15 AS parent_id, 0.00460254472813436 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 60 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS depth, 30 AS parent_id, 0.006341894064098595 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 61 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS depth, 30 AS parent_id, 0.0057587910443544395 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"LGBM_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.17550225729200303) THEN 2 ELSE CASE WHEN ("ADS"."Feature_0" <= 62.66221688737487) THEN CASE WHEN ("ADS"."Feature_0" <= 34.44668575702575) THEN CASE WHEN ("ADS"."Feature_0" <= 13.137228914219545) THEN 24 ELSE 25 END ELSE CASE WHEN ("ADS"."Feature_1" <= 989.3647902344919) THEN 26 ELSE 27 END END ELSE 7 END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -0.01370777947207292 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -0.002286908089330322 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 12 AS parent_id, 0.007011017541993746 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 12 AS parent_id, 0.004883227976305145 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 13 AS parent_id, -0.00022363561967557121 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS depth, 13 AS parent_id, 0.00499370860365721 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"LGBM_Tree_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Tree_0"."KEY" AS "KEY", "LGBM_Tree_0"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_0" UNION ALL SELECT "LGBM_Tree_1"."KEY" AS "KEY", "LGBM_Tree_1"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_1" UNION ALL SELECT "LGBM_Tree_2"."KEY" AS "KEY", "LGBM_Tree_2"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_2" UNION ALL SELECT "LGBM_Tree_3"."KEY" AS "KEY", "LGBM_Tree_3"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_3" UNION ALL SELECT "LGBM_Tree_4"."KEY" AS "KEY", "LGBM_Tree_4"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_4" UNION ALL SELECT "LGBM_Tree_5"."KEY" AS "KEY", "LGBM_Tree_5"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_5" UNION ALL SELECT "LGBM_Tree_6"."KEY" AS "KEY", "LGBM_Tree_6"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_6" UNION ALL SELECT "LGBM_Tree_7"."KEY" AS "KEY", "LGBM_Tree_7"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_7" UNION ALL SELECT "LGBM_Tree_8"."KEY" AS "KEY", "LGBM_Tree_8"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_8" UNION ALL SELECT "LGBM_Tree_9"."KEY" AS "KEY", "LGBM_Tree_9"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_9") AS ensemble_score_union), 
"LGBM_Sum_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", sum("Score_Union_CTE"."Estimator") AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T")
 SELECT "LGBM_Sum_Scores"."KEY" AS "KEY", "LGBM_Sum_Scores"."Estimator" AS "Estimator" 
FROM "LGBM_Sum_Scores"