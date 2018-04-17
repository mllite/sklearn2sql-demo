-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeRegressor
-- Dataset : freidman3
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.115773275494576) THEN CASE WHEN ("ADS"."Feature_0" <= 28.497106552124023) THEN CASE WHEN ("ADS"."Feature_2" <= 0.025156566873193) THEN 3 ELSE CASE WHEN ("ADS"."Feature_1" <= 730.0179443359375) THEN 5 ELSE CASE WHEN ("ADS"."Feature_1" <= 1564.998291015625) THEN CASE WHEN ("ADS"."Feature_0" <= 17.947479248046875) THEN 8 ELSE 9 END ELSE 10 END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 445.71484375) THEN CASE WHEN ("ADS"."Feature_0" <= 46.1015510559082) THEN 13 ELSE 14 END ELSE CASE WHEN ("ADS"."Feature_3" <= 5.679426193237305) THEN 16 ELSE CASE WHEN ("ADS"."Feature_1" <= 809.5308227539062) THEN 18 ELSE 19 END END END END ELSE CASE WHEN ("ADS"."Feature_0" <= 61.53804397583008) THEN CASE WHEN ("ADS"."Feature_1" <= 254.32003784179688) THEN CASE WHEN ("ADS"."Feature_3" <= 7.815814971923828) THEN CASE WHEN ("ADS"."Feature_2" <= 0.530842006206512) THEN 24 ELSE 25 END ELSE CASE WHEN ("ADS"."Feature_1" <= 153.59423828124997) THEN 27 ELSE 28 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.19155590236187) THEN CASE WHEN ("ADS"."Feature_1" <= 1456.9423828125) THEN 31 ELSE 32 END ELSE CASE WHEN ("ADS"."Feature_0" <= 17.809398651123047) THEN CASE WHEN ("ADS"."Feature_0" <= 7.428895950317383) THEN CASE WHEN ("ADS"."Feature_1" <= 1235.7713623046877) THEN CASE WHEN ("ADS"."Feature_1" <= 955.4265747070312) THEN CASE WHEN ("ADS"."Feature_3" <= 9.250843048095703) THEN CASE WHEN ("ADS"."Feature_2" <= 0.746652066707611) THEN 39 ELSE 40 END ELSE 41 END ELSE 42 END ELSE 43 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.598383724689484) THEN CASE WHEN ("ADS"."Feature_1" <= 718.576416015625) THEN 46 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.396132469177246) THEN 48 ELSE 49 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.663622856140137) THEN 51 ELSE 52 END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 939.8522338867188) THEN CASE WHEN ("ADS"."Feature_2" <= 0.508118510246277) THEN CASE WHEN ("ADS"."Feature_2" <= 0.311258286237717) THEN 56 ELSE CASE WHEN ("ADS"."Feature_3" <= 4.250613212585449) THEN 58 ELSE 59 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 360.9476013183594) THEN 61 ELSE CASE WHEN ("ADS"."Feature_0" <= 23.030441284179688) THEN 63 ELSE CASE WHEN ("ADS"."Feature_0" <= 37.63541030883789) THEN CASE WHEN ("ADS"."Feature_0" <= 33.87558364868164) THEN CASE WHEN ("ADS"."Feature_0" <= 29.020883560180664) THEN 67 ELSE 68 END ELSE 69 END ELSE CASE WHEN ("ADS"."Feature_3" <= 10.019285202026367) THEN CASE WHEN ("ADS"."Feature_2" <= 0.63827633857727) THEN 72 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.853317260742188) THEN 74 ELSE 75 END END ELSE 76 END END END END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.363278239965439) THEN CASE WHEN ("ADS"."Feature_3" <= 5.249751091003418) THEN 79 ELSE 80 END ELSE CASE WHEN ("ADS"."Feature_0" <= 51.726905822753906) THEN CASE WHEN ("ADS"."Feature_3" <= 7.223106384277344) THEN CASE WHEN ("ADS"."Feature_2" <= 0.476759195327759) THEN 84 ELSE CASE WHEN ("ADS"."Feature_0" <= 38.69268035888672) THEN CASE WHEN ("ADS"."Feature_0" <= 33.879493713378906) THEN CASE WHEN ("ADS"."Feature_1" <= 1161.608154296875) THEN 88 ELSE 89 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1349.0589599609375) THEN 91 ELSE 92 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1110.9609375) THEN 94 ELSE CASE WHEN ("ADS"."Feature_1" <= 1285.1770019531252) THEN 96 ELSE 97 END END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1213.47216796875) THEN 99 ELSE CASE WHEN ("ADS"."Feature_0" <= 42.05487823486328) THEN CASE WHEN ("ADS"."Feature_3" <= 7.97472095489502) THEN 102 ELSE 103 END ELSE 104 END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1326.3909912109375) THEN 106 ELSE CASE WHEN ("ADS"."Feature_1" <= 1558.7526855468748) THEN 108 ELSE 109 END END END END END END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 851.9430541992186) THEN CASE WHEN ("ADS"."Feature_3" <= 3.716103315353394) THEN CASE WHEN ("ADS"."Feature_1" <= 256.3046569824219) THEN 113 ELSE 114 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.418382912874222) THEN CASE WHEN ("ADS"."Feature_1" <= 765.29931640625) THEN CASE WHEN ("ADS"."Feature_3" <= 5.776928901672363) THEN 118 ELSE CASE WHEN ("ADS"."Feature_1" <= 643.6340942382812) THEN 120 ELSE 121 END END ELSE 122 END ELSE CASE WHEN ("ADS"."Feature_1" <= 233.356201171875) THEN 124 ELSE CASE WHEN ("ADS"."Feature_3" <= 6.30732536315918) THEN 126 ELSE 127 END END END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.217070505023003) THEN 129 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.386917591094971) THEN CASE WHEN ("ADS"."Feature_1" <= 1092.841552734375) THEN 132 ELSE 133 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.901754260063171) THEN CASE WHEN ("ADS"."Feature_3" <= 9.077643394470215) THEN CASE WHEN ("ADS"."Feature_2" <= 0.642367780208588) THEN 137 ELSE 138 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1211.900146484375) THEN CASE WHEN ("ADS"."Feature_2" <= 0.753265500068664) THEN 141 ELSE 142 END ELSE 143 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1077.173583984375) THEN 145 ELSE CASE WHEN ("ADS"."Feature_0" <= 75.76904296875) THEN 147 ELSE 148 END END END END END END END END AS node_id_2 
FROM freidman3 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values"."count" AS FLOAT) AS "count", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 3 AS depth, 2 AS parent_id, 0.610016838130485 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 4 AS depth, 4 AS parent_id, 1.140916252454616 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 6 AS depth, 7 AS parent_id, 1.350090108150775 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 6 AS depth, 7 AS parent_id, 1.368717577036428 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 5 AS depth, 6 AS parent_id, 1.409299843352078 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 4 AS depth, 12 AS parent_id, 0.807910923031799 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 4 AS depth, 12 AS parent_id, 0.705071467546473 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 4 AS depth, 15 AS parent_id, 0.484866921406469 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 5 AS depth, 17 AS parent_id, 0.375167565977065 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 5 AS depth, 17 AS parent_id, 0.383424731855921 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 5 AS depth, 23 AS parent_id, 1.11561476395637 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 5 AS depth, 23 AS parent_id, 1.161007135905221 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 5 AS depth, 26 AS parent_id, 1.535967090204416 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 5 AS depth, 26 AS parent_id, 1.451860940436235 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 31 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 5 AS depth, 30 AS parent_id, 1.314325621172093 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 32 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 5 AS depth, 30 AS parent_id, 1.341344197483337 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 39 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 10 AS depth, 38 AS parent_id, 1.569679039986645 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 40 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 10 AS depth, 38 AS parent_id, 1.570583991203967 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 41 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 9 AS depth, 37 AS parent_id, 1.568486693908273 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 42 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 8 AS depth, 36 AS parent_id, 1.564440724348305 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 43 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 7 AS depth, 35 AS parent_id, 1.554328847029144 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 46 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 45 AS parent_id, 1.52787454660472 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 48 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 9 AS depth, 47 AS parent_id, 1.536711230505171 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 49 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 9 AS depth, 47 AS parent_id, 1.541589567106448 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 51 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 50 AS parent_id, 1.556101969927248 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 52 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 50 AS parent_id, 1.562322810576382 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 56 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 55 AS parent_id, 1.36789414049365 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 58 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 9 AS depth, 57 AS parent_id, 1.410743936534041 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 59 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 9 AS depth, 57 AS parent_id, 1.425180217485532 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 61 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 60 AS parent_id, 1.38449451720808 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 63 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 9 AS depth, 62 AS parent_id, 1.534059281886407 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 67 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 12 AS depth, 66 AS parent_id, 1.496561917506885 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 68 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 12 AS depth, 66 AS parent_id, 1.499027385598966 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 69 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 11 AS depth, 65 AS parent_id, 1.487257851510424 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 72 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 12 AS depth, 71 AS parent_id, 1.467648677980467 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 74 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 13 AS depth, 73 AS parent_id, 1.464248726798872 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 75 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 13 AS depth, 73 AS parent_id, 1.46088900931266 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 76 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 11 AS depth, 70 AS parent_id, 1.49292179344947 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 79 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 78 AS parent_id, 1.477126396188664 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 80 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 78 AS parent_id, 1.477951453333812 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 84 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 10 AS depth, 83 AS parent_id, 1.50778906671016 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 88 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 13 AS depth, 87 AS parent_id, 1.527762553523396 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 89 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 13 AS depth, 87 AS parent_id, 1.531815584535961 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 91 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 13 AS depth, 90 AS parent_id, 1.535253702694832 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 92 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 13 AS depth, 90 AS parent_id, 1.532569286283314 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 94 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 12 AS depth, 93 AS parent_id, 1.530950046349526 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 96 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 13 AS depth, 95 AS parent_id, 1.521888938449955 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 97 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 13 AS depth, 95 AS parent_id, 1.521297715153797 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 99 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 10 AS depth, 98 AS parent_id, 1.524853979162229 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 102 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 12 AS depth, 101 AS parent_id, 1.54561918356505 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 103 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 12 AS depth, 101 AS parent_id, 1.543898379162407 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 104 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 11 AS depth, 100 AS parent_id, 1.53740023221158 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 106 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 9 AS depth, 105 AS parent_id, 1.484710993001392 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 108 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 10 AS depth, 107 AS parent_id, 1.50320738962693 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 109 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 10 AS depth, 107 AS parent_id, 1.512661962070155 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 113 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 5 AS depth, 112 AS parent_id, 1.027484351922333 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 114 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 5 AS depth, 112 AS parent_id, 1.076547084481779 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 118 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 7 AS depth, 117 AS parent_id, 1.157786043431624 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 120 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 119 AS parent_id, 1.108290403745044 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 121 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 119 AS parent_id, 1.106344120317223 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 122 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 6 AS depth, 116 AS parent_id, 1.196826503768119 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 124 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 6 AS depth, 123 AS parent_id, 1.144056434914594 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 126 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS "count", 7 AS depth, 125 AS parent_id, 1.279182409050028 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 127 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 7 AS depth, 125 AS parent_id, 1.26722341655496 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 129 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 4 AS depth, 128 AS parent_id, 1.081892001298726 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 132 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 6 AS depth, 131 AS parent_id, 1.349842993228629 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 133 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 6 AS depth, 131 AS parent_id, 1.346361479569162 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 137 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 136 AS parent_id, 1.471939028979758 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 138 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 136 AS parent_id, 1.467082620400384 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 141 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 9 AS depth, 140 AS parent_id, 1.486057264662623 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 142 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 9 AS depth, 140 AS parent_id, 1.478328126979838 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 143 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 139 AS parent_id, 1.494966264557594 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 145 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 7 AS depth, 144 AS parent_id, 1.493223318496025 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 147 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 146 AS parent_id, 1.502823505154299 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 148 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS "count", 8 AS depth, 146 AS parent_id, 1.509900148942003 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data"."threshold" AS "threshold", "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"