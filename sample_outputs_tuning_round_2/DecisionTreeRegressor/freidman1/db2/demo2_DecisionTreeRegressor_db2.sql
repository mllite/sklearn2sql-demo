-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.44577229022979736) THEN CASE WHEN ("ADS"."Feature_4" <= 0.6678532958030701) THEN CASE WHEN ("ADS"."Feature_3" <= 0.4583197236061096) THEN CASE WHEN ("ADS"."Feature_8" <= 0.1413707435131073) THEN 4 ELSE CASE WHEN ("ADS"."Feature_5" <= 0.1925923377275467) THEN CASE WHEN ("ADS"."Feature_4" <= 0.27703478932380676) THEN 7 ELSE CASE WHEN ("ADS"."Feature_3" <= 0.18946413695812225) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.09447410702705383) THEN CASE WHEN ("ADS"."Feature_2" <= 0.5338698625564575) THEN 13 ELSE CASE WHEN ("ADS"."Feature_5" <= 0.3785055875778198) THEN 15 ELSE 16 END END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.617459774017334) THEN CASE WHEN ("ADS"."Feature_5" <= 0.39834147691726685) THEN 19 ELSE 20 END ELSE CASE WHEN ("ADS"."Feature_8" <= 0.5502381324768066) THEN CASE WHEN ("ADS"."Feature_6" <= 0.39417439699172974) THEN 23 ELSE 24 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.5001286268234253) THEN 26 ELSE 27 END END END END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.24637049436569214) THEN CASE WHEN ("ADS"."Feature_5" <= 0.9225369095802307) THEN CASE WHEN ("ADS"."Feature_9" <= 0.8895005583763123) THEN CASE WHEN ("ADS"."Feature_2" <= 0.09128302335739136) THEN 32 ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6291640996932983) THEN CASE WHEN ("ADS"."Feature_5" <= 0.8189209699630737) THEN CASE WHEN ("ADS"."Feature_6" <= 0.18259304761886597) THEN CASE WHEN ("ADS"."Feature_8" <= 0.7472862005233765) THEN 37 ELSE 38 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.7136145830154419) THEN 40 ELSE 41 END END ELSE 42 END ELSE 43 END END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.5237888693809509) THEN 45 ELSE 46 END END ELSE 47 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.541324257850647) THEN CASE WHEN ("ADS"."Feature_1" <= 0.3046325445175171) THEN CASE WHEN ("ADS"."Feature_7" <= 0.5161080360412598) THEN 51 ELSE 52 END ELSE 53 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.45538997650146484) THEN 55 ELSE CASE WHEN ("ADS"."Feature_4" <= 0.2480442076921463) THEN 57 ELSE 58 END END END END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.6619341373443604) THEN CASE WHEN ("ADS"."Feature_8" <= 0.3244403898715973) THEN CASE WHEN ("ADS"."Feature_1" <= 0.23734164237976074) THEN 62 ELSE 63 END ELSE CASE WHEN ("ADS"."Feature_8" <= 0.7667050361633301) THEN CASE WHEN ("ADS"."Feature_7" <= 0.6441303491592407) THEN 66 ELSE CASE WHEN ("ADS"."Feature_8" <= 0.7098629474639893) THEN 68 ELSE 69 END END ELSE 70 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.8129578828811646) THEN CASE WHEN ("ADS"."Feature_7" <= 0.3239285349845886) THEN CASE WHEN ("ADS"."Feature_9" <= 0.5372053384780884) THEN 74 ELSE 75 END ELSE 76 END ELSE 77 END END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.27792081236839294) THEN CASE WHEN ("ADS"."Feature_0" <= 0.37086910009384155) THEN CASE WHEN ("ADS"."Feature_2" <= 0.21655012667179108) THEN 81 ELSE CASE WHEN ("ADS"."Feature_0" <= 0.29816341400146484) THEN 83 ELSE CASE WHEN ("ADS"."Feature_7" <= 0.47128358483314514) THEN 85 ELSE 86 END END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.8121815919876099) THEN CASE WHEN ("ADS"."Feature_0" <= 0.4862767159938812) THEN CASE WHEN ("ADS"."Feature_5" <= 0.5021837949752808) THEN 90 ELSE 91 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.6428447961807251) THEN 93 ELSE 94 END END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.33186042308807373) THEN 96 ELSE 97 END END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.23805725574493408) THEN CASE WHEN ("ADS"."Feature_5" <= 0.9631621837615967) THEN CASE WHEN ("ADS"."Feature_2" <= 0.3459535241127014) THEN 101 ELSE 102 END ELSE 103 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.7423961162567139) THEN CASE WHEN ("ADS"."Feature_5" <= 0.9200620651245117) THEN CASE WHEN ("ADS"."Feature_5" <= 0.5558743476867676) THEN CASE WHEN ("ADS"."Feature_1" <= 0.6416755318641663) THEN CASE WHEN ("ADS"."Feature_3" <= 0.5546689033508301) THEN 109 ELSE 110 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.5959380269050598) THEN CASE WHEN ("ADS"."Feature_5" <= 0.38930949568748474) THEN CASE WHEN ("ADS"."Feature_1" <= 0.7748122215270996) THEN 114 ELSE 115 END ELSE 116 END ELSE 117 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.12859861552715302) THEN 119 ELSE CASE WHEN ("ADS"."Feature_0" <= 0.7265768051147461) THEN CASE WHEN ("ADS"."Feature_7" <= 0.34459739923477173) THEN 122 ELSE CASE WHEN ("ADS"."Feature_6" <= 0.5111083388328552) THEN 124 ELSE CASE WHEN ("ADS"."Feature_4" <= 0.5647256970405579) THEN 126 ELSE 127 END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.6148624420166016) THEN CASE WHEN ("ADS"."Feature_4" <= 0.3104628324508667) THEN 130 ELSE 131 END ELSE 132 END END END END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.35593998432159424) THEN 134 ELSE 135 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.8087022304534912) THEN CASE WHEN ("ADS"."Feature_5" <= 0.939079999923706) THEN CASE WHEN ("ADS"."Feature_5" <= 0.21848127245903015) THEN 139 ELSE CASE WHEN ("ADS"."Feature_1" <= 0.5314056873321533) THEN CASE WHEN ("ADS"."Feature_7" <= 0.7876538038253784) THEN CASE WHEN ("ADS"."Feature_5" <= 0.5631897449493408) THEN 143 ELSE 144 END ELSE 145 END ELSE CASE WHEN ("ADS"."Feature_8" <= 0.3314327597618103) THEN 147 ELSE CASE WHEN ("ADS"."Feature_7" <= 0.508262038230896) THEN 149 ELSE CASE WHEN ("ADS"."Feature_3" <= 0.9129621386528015) THEN 151 ELSE 152 END END END END END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6881959438323975) THEN 154 ELSE 155 END END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.26279619336128235) THEN 157 ELSE 158 END END END END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 3 AS parent_id, 12.760129264370008 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 6 AS parent_id, 12.071171804127433 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 8 AS parent_id, 9.735041217996262 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 8 AS parent_id, 10.045203605952587 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 12 AS parent_id, 5.293284001301807 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 8 AS depth, 14 AS parent_id, 5.794379036456321 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 8 AS depth, 14 AS parent_id, 6.2457102486321485 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 8 AS depth, 18 AS parent_id, 6.980046241948142 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 8 AS depth, 18 AS parent_id, 6.861453719338209 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 9 AS depth, 22 AS parent_id, 8.240178848678195 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 9 AS depth, 22 AS parent_id, 8.06285010237755 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 9 AS depth, 25 AS parent_id, 7.732429808148176 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 9 AS depth, 25 AS parent_id, 7.556998078346253 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 32 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 31 AS parent_id, 10.483066772506376 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 37 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 11 AS depth, 36 AS parent_id, 12.109886588685942 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 38 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 11 AS depth, 36 AS parent_id, 12.123142001356333 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 40 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 11 AS depth, 39 AS parent_id, 11.789821637076107 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 41 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 11 AS depth, 39 AS parent_id, 11.77602304541345 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 42 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 9 AS depth, 34 AS parent_id, 11.313518144724842 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 43 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 8 AS depth, 33 AS parent_id, 12.830344628983799 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 45 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 44 AS parent_id, 10.20209310032856 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 46 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 44 AS parent_id, 10.596890487725023 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 47 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 29 AS parent_id, 8.897074147742197 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 51 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 50 AS parent_id, 14.772563754565986 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 52 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 50 AS parent_id, 14.051184902745373 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 53 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 49 AS parent_id, 13.174202057525061 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 55 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 54 AS parent_id, 15.922558108080853 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 57 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 56 AS parent_id, 17.31914707358036 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 58 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 56 AS parent_id, 18.282515066510527 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 62 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 61 AS parent_id, 11.380993151416082 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 63 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 61 AS parent_id, 13.119756721377405 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 66 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 65 AS parent_id, 16.08254261562184 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 68 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 67 AS parent_id, 16.324769596540094 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 69 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 67 AS parent_id, 16.302556715766507 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 70 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 64 AS parent_id, 14.4669963696142 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 74 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 73 AS parent_id, 18.332058017434036 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 75 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 73 AS parent_id, 18.493721395486528 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 76 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 72 AS parent_id, 18.0076175728853 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 77 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 71 AS parent_id, 23.693970395239383 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 81 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 80 AS parent_id, 15.541797868565153 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 83 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 82 AS parent_id, 7.219443350314415 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 85 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 84 AS parent_id, 10.181631174833692 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 86 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 84 AS parent_id, 10.131789617052231 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 90 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 89 AS parent_id, 16.009611596379663 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 91 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 89 AS parent_id, 16.301279206146624 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 93 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 92 AS parent_id, 15.706521981990113 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 94 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 92 AS parent_id, 15.701003452436051 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 96 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 95 AS parent_id, 18.2506955183825 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 97 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 95 AS parent_id, 17.89244707919063 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 101 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 100 AS parent_id, 15.308483991007721 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 102 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 5 AS depth, 100 AS parent_id, 14.536245187358322 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 103 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 4 AS depth, 99 AS parent_id, 12.423411759463056 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 109 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 8 AS depth, 108 AS parent_id, 18.237613821788198 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 110 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 8 AS depth, 108 AS parent_id, 18.10948375079814 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 114 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 10 AS depth, 113 AS parent_id, 20.069702085916557 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 115 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 10 AS depth, 113 AS parent_id, 19.95894272650593 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 116 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 9 AS depth, 112 AS parent_id, 20.199033606227683 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 117 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 8 AS depth, 111 AS parent_id, 19.36426348416223 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 119 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 118 AS parent_id, 19.59215342592271 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 122 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 9 AS depth, 121 AS parent_id, 16.914408313385564 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 124 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 10 AS depth, 123 AS parent_id, 17.36059041334922 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 126 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 11 AS depth, 125 AS parent_id, 17.51855412510629 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 127 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 11 AS depth, 125 AS parent_id, 17.451457795201584 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 130 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 10 AS depth, 129 AS parent_id, 17.80609748957471 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 131 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 10 AS depth, 129 AS parent_id, 17.954676995000113 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 132 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 9 AS depth, 128 AS parent_id, 18.250248044100616 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 134 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 133 AS parent_id, 23.18131440832091 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 135 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 133 AS parent_id, 20.629855906779248 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 139 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 138 AS parent_id, 19.303788312018888 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 143 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 10 AS depth, 142 AS parent_id, 21.340993370178953 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 144 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 10 AS depth, 142 AS parent_id, 21.774000353025308 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 145 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 9 AS depth, 141 AS parent_id, 20.70189537226964 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 147 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 9 AS depth, 146 AS parent_id, 23.76092016032117 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 149 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 10 AS depth, 148 AS parent_id, 22.309754489339827 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 151 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 11 AS depth, 150 AS parent_id, 22.76939496981568 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 152 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 11 AS depth, 150 AS parent_id, 23.030279372436098 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 154 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 153 AS parent_id, 25.24805848092261 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 155 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 7 AS depth, 153 AS parent_id, 24.713338273149652 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 157 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 156 AS parent_id, 18.900387696177468 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 158 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 6 AS depth, 156 AS parent_id, 17.41761147731962 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"