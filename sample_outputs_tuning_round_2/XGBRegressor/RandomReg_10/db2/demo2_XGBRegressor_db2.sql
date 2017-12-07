-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.48648887872695923) THEN CASE WHEN ("ADS"."Feature_5" < -0.6670668125152588) THEN 3 ELSE CASE WHEN ("ADS"."Feature_8" < -0.10979260504245758) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_1" < -0.5779649615287781) THEN 5 ELSE CASE WHEN ("ADS"."Feature_8" < -0.06810655444860458) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, -22.155038833618164 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.1371171921491623 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, -8.404426574707031 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 13.90919017791748 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 16.5261173248291 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 26.465993881225586 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"XGB_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.48648887872695923) THEN CASE WHEN ("ADS"."Feature_7" < 0.48319584131240845) THEN CASE WHEN ("ADS"."Feature_5" < -0.6670668125152588) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" < -0.5779649615287781) THEN 5 ELSE CASE WHEN ("ADS"."Feature_8" < -0.06810655444860458) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 9.778855323791504 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.12465210258960724 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -21.083234786987305 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -5.810722351074219 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 15.023741722106934 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 24.059995651245117 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"XGB_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.7659631967544556) THEN CASE WHEN ("ADS"."Feature_1" < -0.3098868131637573) THEN CASE WHEN ("ADS"."Feature_5" < 0.26793915033340454) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_8" < -0.06810655444860458) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 16.941801071166992 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -20.199092864990234 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -3.550792694091797 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, -4.642592906951904 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 17.064096450805664 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"XGB_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < -0.3908981680870056) THEN CASE WHEN ("ADS"."Feature_6" < -0.16602689027786255) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" < -0.6784075498580933) THEN 5 ELSE CASE WHEN ("ADS"."Feature_1" < -0.5763004422187805) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, -14.395660400390625 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, -2.301922082901001 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -8.532238006591797 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 2.0144879817962646 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 16.57676124572754 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"XGB_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.7659631967544556) THEN CASE WHEN ("ADS"."Feature_1" < -0.3098868131637573) THEN CASE WHEN ("ADS"."Feature_5" < -0.39992862939834595) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_8" < -0.06810655444860458) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 14.832307815551758 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -19.02397918701172 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -4.534415245056152 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, -3.971592426300049 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 14.045598030090332 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"XGB_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < -0.20833948254585266) THEN CASE WHEN ("ADS"."Feature_3" < -0.0790497213602066) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" < -0.6784075498580933) THEN 5 ELSE CASE WHEN ("ADS"."Feature_0" < -0.3223276734352112) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, -11.284990310668945 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, -1.6324472427368164 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -6.995410442352295 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 3.276987075805664 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 17.257299423217773 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"XGB_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.7659631967544556) THEN CASE WHEN ("ADS"."Feature_1" < -0.3098868131637573) THEN CASE WHEN ("ADS"."Feature_5" < 0.26793915033340454) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_8" < -0.06810655444860458) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 12.925868034362793 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -15.253242492675781 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -2.887866973876953 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, -3.274099826812744 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 11.653290748596191 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"XGB_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" < 0.48648887872695923) THEN CASE WHEN ("ADS"."Feature_7" < 0.12788641452789307) THEN CASE WHEN ("ADS"."Feature_6" < -0.19785264134407043) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_5" < 0.609578013420105) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_4" < -0.18378067016601562) THEN 5 ELSE 6 END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.29980388283729553 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 13.997415542602539 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -14.787727355957031 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -3.8101868629455566 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, -2.2124812602996826 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 10.032784461975098 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"XGB_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" < 1.3158717155456543) THEN CASE WHEN ("ADS"."Feature_1" < -0.10812132060527802) THEN CASE WHEN ("ADS"."Feature_5" < -0.5290045142173767) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_2" < 0.5375064611434937) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 15.438780784606934 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -15.28858470916748 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -1.8839603662490845 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 0.824749767780304 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 13.91795825958252 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"XGB_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_4" < -0.5162992477416992) THEN CASE WHEN ("ADS"."Feature_6" < 0.8849396109580994) THEN CASE WHEN ("ADS"."Feature_3" < -0.11357904970645905) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_8" < -0.5495923757553101) THEN 5 ELSE CASE WHEN ("ADS"."Feature_2" < 0.27253204584121704) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 3.2215232849121094 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -3.3912010192871094 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -14.086405754089355 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -5.727645397186279 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 2.9069461822509766 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 13.076863288879395 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
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