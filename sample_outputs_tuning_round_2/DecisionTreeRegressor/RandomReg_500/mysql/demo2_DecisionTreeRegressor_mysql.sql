-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_214` <= 0.10535271465778351) THEN CASE WHEN (`ADS`.`Feature_138` <= -0.7396883368492126) THEN CASE WHEN (`ADS`.`Feature_70` <= 0.2506906986236572) THEN CASE WHEN (`ADS`.`Feature_317` <= 0.5857828259468079) THEN CASE WHEN (`ADS`.`Feature_182` <= -0.2632794678211212) THEN CASE WHEN (`ADS`.`Feature_337` <= -0.08498980104923248) THEN CASE WHEN (`ADS`.`Feature_96` <= 0.1267792284488678) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_480` <= -1.3138306140899658) THEN 10 ELSE 11 END END ELSE CASE WHEN (`ADS`.`Feature_462` <= -0.6533604860305786) THEN 13 ELSE 14 END END ELSE CASE WHEN (`ADS`.`Feature_13` <= -0.24700108170509338) THEN 16 ELSE 17 END END ELSE CASE WHEN (`ADS`.`Feature_375` <= 0.10634329169988632) THEN CASE WHEN (`ADS`.`Feature_382` <= 0.4588063359260559) THEN CASE WHEN (`ADS`.`Feature_59` <= 1.3679008483886719) THEN 21 ELSE 22 END ELSE CASE WHEN (`ADS`.`Feature_266` <= -0.18462955951690674) THEN 24 ELSE 25 END END ELSE CASE WHEN (`ADS`.`Feature_283` <= 0.6041694283485413) THEN 27 ELSE 28 END END END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.7622978687286377) THEN CASE WHEN (`ADS`.`Feature_318` <= 1.0475244522094727) THEN CASE WHEN (`ADS`.`Feature_7` <= -0.8933044075965881) THEN CASE WHEN (`ADS`.`Feature_283` <= -0.4599291682243347) THEN CASE WHEN (`ADS`.`Feature_494` <= 0.051472634077072144) THEN 34 ELSE CASE WHEN (`ADS`.`Feature_483` <= -0.629319429397583) THEN 36 ELSE 37 END END ELSE CASE WHEN (`ADS`.`Feature_377` <= 0.2629185914993286) THEN CASE WHEN (`ADS`.`Feature_298` <= 0.03166653960943222) THEN 40 ELSE 41 END ELSE 42 END END ELSE CASE WHEN (`ADS`.`Feature_493` <= 0.31506839394569397) THEN CASE WHEN (`ADS`.`Feature_468` <= -0.8289099931716919) THEN CASE WHEN (`ADS`.`Feature_226` <= -0.41927140951156616) THEN 46 ELSE CASE WHEN (`ADS`.`Feature_60` <= 0.7547298669815063) THEN CASE WHEN (`ADS`.`Feature_196` <= 0.6443003416061401) THEN 49 ELSE 50 END ELSE 51 END END ELSE CASE WHEN (`ADS`.`Feature_139` <= 0.5154545903205872) THEN CASE WHEN (`ADS`.`Feature_121` <= 0.07581135630607605) THEN CASE WHEN (`ADS`.`Feature_317` <= -0.32821890711784363) THEN 55 ELSE CASE WHEN (`ADS`.`Feature_431` <= -0.08602317422628403) THEN 57 ELSE 58 END END ELSE CASE WHEN (`ADS`.`Feature_206` <= 0.24225592613220215) THEN CASE WHEN (`ADS`.`Feature_368` <= -0.523422122001648) THEN 61 ELSE 62 END ELSE 63 END END ELSE 64 END END ELSE CASE WHEN (`ADS`.`Feature_480` <= 1.1484427452087402) THEN CASE WHEN (`ADS`.`Feature_383` <= 0.23632565140724182) THEN CASE WHEN (`ADS`.`Feature_16` <= -0.7034782767295837) THEN 68 ELSE 69 END ELSE CASE WHEN (`ADS`.`Feature_442` <= 0.13596001267433167) THEN 71 ELSE 72 END END ELSE 73 END END END ELSE CASE WHEN (`ADS`.`Feature_436` <= -0.9813418984413147) THEN 75 ELSE CASE WHEN (`ADS`.`Feature_450` <= -0.3067871928215027) THEN 77 ELSE 78 END END END ELSE CASE WHEN (`ADS`.`Feature_69` <= 0.6462773084640503) THEN CASE WHEN (`ADS`.`Feature_155` <= 0.5456697940826416) THEN CASE WHEN (`ADS`.`Feature_342` <= 0.8168450593948364) THEN CASE WHEN (`ADS`.`Feature_407` <= -0.16448332369327545) THEN 83 ELSE 84 END ELSE CASE WHEN (`ADS`.`Feature_9` <= -1.0525200366973877) THEN 86 ELSE 87 END END ELSE 88 END ELSE CASE WHEN (`ADS`.`Feature_62` <= -0.8409552574157715) THEN 90 ELSE CASE WHEN (`ADS`.`Feature_219` <= -0.5428311824798584) THEN 92 ELSE 93 END END END END END ELSE CASE WHEN (`ADS`.`Feature_212` <= 0.757601797580719) THEN CASE WHEN (`ADS`.`Feature_485` <= -0.9451684951782227) THEN CASE WHEN (`ADS`.`Feature_68` <= 1.811638593673706) THEN CASE WHEN (`ADS`.`Feature_11` <= 0.14616809785366058) THEN CASE WHEN (`ADS`.`Feature_458` <= 0.3812583088874817) THEN CASE WHEN (`ADS`.`Feature_479` <= 0.5139164924621582) THEN 100 ELSE 101 END ELSE 102 END ELSE CASE WHEN (`ADS`.`Feature_142` <= -0.13876447081565857) THEN 104 ELSE 105 END END ELSE 106 END ELSE CASE WHEN (`ADS`.`Feature_367` <= 1.982653260231018) THEN CASE WHEN (`ADS`.`Feature_395` <= 0.30729764699935913) THEN CASE WHEN (`ADS`.`Feature_280` <= -0.247552290558815) THEN CASE WHEN (`ADS`.`Feature_154` <= 0.6341468095779419) THEN CASE WHEN (`ADS`.`Feature_475` <= -0.009114593267440796) THEN 112 ELSE CASE WHEN (`ADS`.`Feature_69` <= -0.6931203603744507) THEN 114 ELSE 115 END END ELSE CASE WHEN (`ADS`.`Feature_91` <= 0.4815611243247986) THEN CASE WHEN (`ADS`.`Feature_331` <= 1.336562991142273) THEN 118 ELSE 119 END ELSE 120 END END ELSE CASE WHEN (`ADS`.`Feature_493` <= 0.0007872208952903748) THEN CASE WHEN (`ADS`.`Feature_197` <= 1.3702183961868286) THEN 123 ELSE 124 END ELSE CASE WHEN (`ADS`.`Feature_452` <= -0.6553224921226501) THEN CASE WHEN (`ADS`.`Feature_53` <= 0.4666307270526886) THEN 127 ELSE 128 END ELSE 129 END END END ELSE CASE WHEN (`ADS`.`Feature_74` <= 0.3315196931362152) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.48845988512039185) THEN CASE WHEN (`ADS`.`Feature_140` <= 0.22949841618537903) THEN CASE WHEN (`ADS`.`Feature_111` <= -0.1777312159538269) THEN 134 ELSE 135 END ELSE 136 END ELSE 137 END ELSE CASE WHEN (`ADS`.`Feature_304` <= -0.7064602971076965) THEN CASE WHEN (`ADS`.`Feature_435` <= -0.4301433563232422) THEN 140 ELSE 141 END ELSE CASE WHEN (`ADS`.`Feature_144` <= 1.420338749885559) THEN CASE WHEN (`ADS`.`Feature_392` <= 0.8429597020149231) THEN 144 ELSE 145 END ELSE 146 END END END END ELSE 147 END END ELSE CASE WHEN (`ADS`.`Feature_338` <= 0.8311046361923218) THEN CASE WHEN (`ADS`.`Feature_72` <= 0.4132094383239746) THEN CASE WHEN (`ADS`.`Feature_190` <= 0.11461228132247925) THEN 151 ELSE 152 END ELSE 153 END ELSE CASE WHEN (`ADS`.`Feature_404` <= 0.8025161623954773) THEN CASE WHEN (`ADS`.`Feature_355` <= 0.6252625584602356) THEN 156 ELSE 157 END ELSE 158 END END END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 6 AS parent_id, -193.1994069334645 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 6 AS parent_id, -202.50354295885262 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 9 AS parent_id, -183.59201711276592 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 9 AS parent_id, -186.6725952267546 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 12 AS parent_id, -261.35828375560493 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 12 AS parent_id, -226.05304580757803 AS `Estimator` UNION ALL SELECT 16 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 15 AS parent_id, -104.85768264007177 AS `Estimator` UNION ALL SELECT 17 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 15 AS parent_id, -82.33677570257825 AS `Estimator` UNION ALL SELECT 21 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 20 AS parent_id, -333.5440959646812 AS `Estimator` UNION ALL SELECT 22 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 20 AS parent_id, -323.24551617726615 AS `Estimator` UNION ALL SELECT 24 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 23 AS parent_id, -283.20958625787046 AS `Estimator` UNION ALL SELECT 25 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 23 AS parent_id, -277.50474192428294 AS `Estimator` UNION ALL SELECT 27 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 26 AS parent_id, -457.6699707484207 AS `Estimator` UNION ALL SELECT 28 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 26 AS parent_id, -415.6958459005518 AS `Estimator` UNION ALL SELECT 34 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 33 AS parent_id, -25.28135727426437 AS `Estimator` UNION ALL SELECT 36 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 35 AS parent_id, -16.821269791302385 AS `Estimator` UNION ALL SELECT 37 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 35 AS parent_id, -19.33034526631847 AS `Estimator` UNION ALL SELECT 40 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 39 AS parent_id, -117.48376250475525 AS `Estimator` UNION ALL SELECT 41 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 39 AS parent_id, -106.66368761576487 AS `Estimator` UNION ALL SELECT 42 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 38 AS parent_id, -66.63357508273742 AS `Estimator` UNION ALL SELECT 46 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 45 AS parent_id, -145.7557807925901 AS `Estimator` UNION ALL SELECT 49 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 48 AS parent_id, -151.38917859834055 AS `Estimator` UNION ALL SELECT 50 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 48 AS parent_id, -152.01795467957504 AS `Estimator` UNION ALL SELECT 51 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 47 AS parent_id, -152.88186489353808 AS `Estimator` UNION ALL SELECT 55 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 54 AS parent_id, -127.80480560815674 AS `Estimator` UNION ALL SELECT 57 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 11 AS depth, 56 AS parent_id, -123.22349937290772 AS `Estimator` UNION ALL SELECT 58 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 11 AS depth, 56 AS parent_id, -124.5329662262187 AS `Estimator` UNION ALL SELECT 61 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 11 AS depth, 60 AS parent_id, -114.527358852429 AS `Estimator` UNION ALL SELECT 62 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 11 AS depth, 60 AS parent_id, -117.01129919528874 AS `Estimator` UNION ALL SELECT 63 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 59 AS parent_id, -109.22770234509144 AS `Estimator` UNION ALL SELECT 64 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 52 AS parent_id, -91.77495374584724 AS `Estimator` UNION ALL SELECT 68 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 67 AS parent_id, -203.01970242458535 AS `Estimator` UNION ALL SELECT 69 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 67 AS parent_id, -197.41642139116252 AS `Estimator` UNION ALL SELECT 71 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 70 AS parent_id, -240.19880834560007 AS `Estimator` UNION ALL SELECT 72 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 70 AS parent_id, -230.48583102818432 AS `Estimator` UNION ALL SELECT 73 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 65 AS parent_id, -154.00455618899247 AS `Estimator` UNION ALL SELECT 75 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 74 AS parent_id, 179.19535659298046 AS `Estimator` UNION ALL SELECT 77 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 76 AS parent_id, -20.854902391366842 AS `Estimator` UNION ALL SELECT 78 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 76 AS parent_id, 32.49502285171267 AS `Estimator` UNION ALL SELECT 83 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 82 AS parent_id, 116.79666144845507 AS `Estimator` UNION ALL SELECT 84 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 82 AS parent_id, 111.52445957424722 AS `Estimator` UNION ALL SELECT 86 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 85 AS parent_id, 95.09043036575606 AS `Estimator` UNION ALL SELECT 87 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 85 AS parent_id, 87.98997921876722 AS `Estimator` UNION ALL SELECT 88 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 80 AS parent_id, 177.18611855879044 AS `Estimator` UNION ALL SELECT 90 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 89 AS parent_id, 1.2959046945999475 AS `Estimator` UNION ALL SELECT 92 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 91 AS parent_id, 33.76281107889175 AS `Estimator` UNION ALL SELECT 93 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 91 AS parent_id, 47.67828747304395 AS `Estimator` UNION ALL SELECT 100 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 99 AS parent_id, -109.51656969318935 AS `Estimator` UNION ALL SELECT 101 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 99 AS parent_id, -120.06152120377035 AS `Estimator` UNION ALL SELECT 102 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 98 AS parent_id, -71.39969559286752 AS `Estimator` UNION ALL SELECT 104 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 103 AS parent_id, -24.746702360807916 AS `Estimator` UNION ALL SELECT 105 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 103 AS parent_id, 16.16477089946953 AS `Estimator` UNION ALL SELECT 106 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 96 AS parent_id, -358.03194560281815 AS `Estimator` UNION ALL SELECT 112 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 111 AS parent_id, -40.197217660353246 AS `Estimator` UNION ALL SELECT 114 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 113 AS parent_id, -2.2649536981362672 AS `Estimator` UNION ALL SELECT 115 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 113 AS parent_id, -18.546827666144623 AS `Estimator` UNION ALL SELECT 118 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 117 AS parent_id, 24.45456070268355 AS `Estimator` UNION ALL SELECT 119 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 117 AS parent_id, 25.36640211518946 AS `Estimator` UNION ALL SELECT 120 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 116 AS parent_id, 73.09759751113128 AS `Estimator` UNION ALL SELECT 123 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 122 AS parent_id, 120.85998230211455 AS `Estimator` UNION ALL SELECT 124 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 122 AS parent_id, 152.62603937465929 AS `Estimator` UNION ALL SELECT 127 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 126 AS parent_id, 85.4281804923287 AS `Estimator` UNION ALL SELECT 128 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 126 AS parent_id, 79.82108947629172 AS `Estimator` UNION ALL SELECT 129 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 125 AS parent_id, 96.32964587255894 AS `Estimator` UNION ALL SELECT 134 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 133 AS parent_id, 207.751774006284 AS `Estimator` UNION ALL SELECT 135 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 133 AS parent_id, 208.92995572018492 AS `Estimator` UNION ALL SELECT 136 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 132 AS parent_id, 204.97892147080455 AS `Estimator` UNION ALL SELECT 137 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 131 AS parent_id, 283.4501739541325 AS `Estimator` UNION ALL SELECT 140 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 139 AS parent_id, 127.00731246073903 AS `Estimator` UNION ALL SELECT 141 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 139 AS parent_id, 107.42988992013741 AS `Estimator` UNION ALL SELECT 144 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 143 AS parent_id, 161.52320252533048 AS `Estimator` UNION ALL SELECT 145 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 143 AS parent_id, 157.77562090707204 AS `Estimator` UNION ALL SELECT 146 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 142 AS parent_id, 144.53116765177285 AS `Estimator` UNION ALL SELECT 147 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 107 AS parent_id, 547.3010428702067 AS `Estimator` UNION ALL SELECT 151 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 150 AS parent_id, 263.4944951132128 AS `Estimator` UNION ALL SELECT 152 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 150 AS parent_id, 286.61850436114156 AS `Estimator` UNION ALL SELECT 153 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 149 AS parent_id, 390.42475711953045 AS `Estimator` UNION ALL SELECT 156 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 155 AS parent_id, 605.6206481037917 AS `Estimator` UNION ALL SELECT 157 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 155 AS parent_id, 533.6514679619586 AS `Estimator` UNION ALL SELECT 158 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 154 AS parent_id, 459.9324062532205 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id)
 SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`