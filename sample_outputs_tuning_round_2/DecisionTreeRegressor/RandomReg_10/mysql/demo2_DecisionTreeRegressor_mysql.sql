-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.48648887872695923) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.6670668125152588) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.8804326057434082) THEN CASE WHEN (`ADS`.`Feature_1` <= -0.8752168416976929) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.5072311162948608) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_5` <= -1.6241018772125244) THEN 7 ELSE 8 END END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.7271902561187744) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.4242438077926636) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.4376855492591858) THEN CASE WHEN (`ADS`.`Feature_5` <= -1.0361145734786987) THEN 13 ELSE 14 END ELSE 15 END ELSE 16 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.5568803548812866) THEN 18 ELSE 19 END END END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.7803283929824829) THEN 21 ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.7443009614944458) THEN 23 ELSE 24 END END END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.10979260504245758) THEN CASE WHEN (`ADS`.`Feature_7` <= -0.07485402375459671) THEN CASE WHEN (`ADS`.`Feature_4` <= 1.1456072330474854) THEN CASE WHEN (`ADS`.`Feature_6` <= 1.54505455493927) THEN CASE WHEN (`ADS`.`Feature_4` <= -1.798793077468872) THEN CASE WHEN (`ADS`.`Feature_4` <= -2.464542865753174) THEN 31 ELSE 32 END ELSE CASE WHEN (`ADS`.`Feature_1` <= -1.3969228267669678) THEN 34 ELSE CASE WHEN (`ADS`.`Feature_1` <= -0.958901047706604) THEN 36 ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.5293236970901489) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.33948928117752075) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.5651648640632629) THEN 40 ELSE 41 END ELSE 42 END ELSE 43 END END END END ELSE 44 END ELSE CASE WHEN (`ADS`.`Feature_4` <= 1.2514768838882446) THEN 46 ELSE 47 END END ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.3597670793533325) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.7353826761245728) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.5131131410598755) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.31023168563842773) THEN 52 ELSE 53 END ELSE 54 END ELSE 55 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.541333019733429) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.9353086948394775) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.08786889910697937) THEN CASE WHEN (`ADS`.`Feature_6` <= 1.091589331626892) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.8184782862663269) THEN 61 ELSE 62 END ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.32871586084365845) THEN 64 ELSE 65 END END ELSE CASE WHEN (`ADS`.`Feature_8` <= -1.426997184753418) THEN 67 ELSE 68 END END ELSE 69 END ELSE 70 END END END ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.6048204898834229) THEN CASE WHEN (`ADS`.`Feature_1` <= -0.4580385386943817) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.2371964156627655) THEN CASE WHEN (`ADS`.`Feature_7` <= -1.155519962310791) THEN 75 ELSE 76 END ELSE 77 END ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.9480748176574707) THEN 79 ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.9801359176635742) THEN 81 ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.6337333917617798) THEN CASE WHEN (`ADS`.`Feature_7` <= -0.833141565322876) THEN 84 ELSE 85 END ELSE 86 END END END END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.5278314352035522) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.561397910118103) THEN 89 ELSE 90 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 1.355840802192688) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.9572347402572632) THEN 93 ELSE CASE WHEN (`ADS`.`Feature_7` <= 1.2383009195327759) THEN 95 ELSE 96 END END ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.9247502088546753) THEN 98 ELSE 99 END END END END END END ELSE CASE WHEN (`ADS`.`Feature_4` <= -1.1975512504577637) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.10777395963668823) THEN CASE WHEN (`ADS`.`Feature_4` <= -1.975234866142273) THEN 103 ELSE 104 END ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.10643064975738525) THEN 106 ELSE 107 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= -0.3104289174079895) THEN CASE WHEN (`ADS`.`Feature_2` <= 1.1028863191604614) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.05499262362718582) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.3616192936897278) THEN 112 ELSE 113 END ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.05421556159853935) THEN 115 ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.035386763513088226) THEN 117 ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.7581166625022888) THEN 119 ELSE 120 END END END END ELSE CASE WHEN (`ADS`.`Feature_2` <= 1.3303039073944092) THEN 122 ELSE 123 END END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.43371835350990295) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.6961938738822937) THEN 126 ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.3687320947647095) THEN 128 ELSE 129 END END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.5271204710006714) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.6235181093215942) THEN CASE WHEN (`ADS`.`Feature_7` <= 1.5438432693481445) THEN CASE WHEN (`ADS`.`Feature_2` <= 1.5834550857543945) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.432163804769516) THEN CASE WHEN (`ADS`.`Feature_8` <= 1.3030574321746826) THEN 136 ELSE 137 END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.8778809905052185) THEN 139 ELSE 140 END END ELSE CASE WHEN (`ADS`.`Feature_7` <= -0.40599822998046875) THEN 142 ELSE 143 END END ELSE 144 END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.001641690731048584) THEN CASE WHEN (`ADS`.`Feature_9` <= 1.202784538269043) THEN 147 ELSE 148 END ELSE 149 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 1.0176409482955933) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.14896513521671295) THEN 152 ELSE CASE WHEN (`ADS`.`Feature_4` <= 1.203858733177185) THEN 154 ELSE 155 END END ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.7463369965553284) THEN 157 ELSE 158 END END END END END END END AS node_id_2 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 5 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 4 AS parent_id, -230.736136275325 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 6 AS parent_id, -284.890410429711 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 6 AS parent_id, -305.6750972104841 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 12 AS parent_id, -103.03861456879999 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 12 AS parent_id, -101.20974879377152 AS `Estimator` UNION ALL SELECT 15 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 11 AS parent_id, -53.55855810403281 AS `Estimator` UNION ALL SELECT 16 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 10 AS parent_id, -165.64587304935068 AS `Estimator` UNION ALL SELECT 18 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 17 AS parent_id, -186.24037602901686 AS `Estimator` UNION ALL SELECT 19 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 17 AS parent_id, -210.35491750133752 AS `Estimator` UNION ALL SELECT 21 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 20 AS parent_id, -351.3842930876292 AS `Estimator` UNION ALL SELECT 23 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 22 AS parent_id, -422.39029400237723 AS `Estimator` UNION ALL SELECT 24 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 22 AS parent_id, -459.030670753418 AS `Estimator` UNION ALL SELECT 31 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 30 AS parent_id, -251.2683418956458 AS `Estimator` UNION ALL SELECT 32 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 30 AS parent_id, -237.15037500402434 AS `Estimator` UNION ALL SELECT 34 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 33 AS parent_id, -223.26828856161853 AS `Estimator` UNION ALL SELECT 36 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 35 AS parent_id, -140.8312353487667 AS `Estimator` UNION ALL SELECT 40 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 12 AS depth, 39 AS parent_id, -182.332005662268 AS `Estimator` UNION ALL SELECT 41 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 12 AS depth, 39 AS parent_id, -182.68535868074787 AS `Estimator` UNION ALL SELECT 42 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 11 AS depth, 38 AS parent_id, -181.5117298102302 AS `Estimator` UNION ALL SELECT 43 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 37 AS parent_id, -168.02760851528973 AS `Estimator` UNION ALL SELECT 44 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 28 AS parent_id, -80.36713172562187 AS `Estimator` UNION ALL SELECT 46 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 45 AS parent_id, 11.979848483268036 AS `Estimator` UNION ALL SELECT 47 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 45 AS parent_id, -49.96946031186734 AS `Estimator` UNION ALL SELECT 52 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 51 AS parent_id, -154.40083699334056 AS `Estimator` UNION ALL SELECT 53 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 51 AS parent_id, -130.2085667212895 AS `Estimator` UNION ALL SELECT 54 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 50 AS parent_id, -97.81389433706303 AS `Estimator` UNION ALL SELECT 55 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 49 AS parent_id, 44.29871810773541 AS `Estimator` UNION ALL SELECT 61 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 60 AS parent_id, -9.617958070006466 AS `Estimator` UNION ALL SELECT 62 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 60 AS parent_id, -6.190722744000084 AS `Estimator` UNION ALL SELECT 64 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 63 AS parent_id, 3.0760888121936603 AS `Estimator` UNION ALL SELECT 65 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 63 AS parent_id, -1.7789086303776003 AS `Estimator` UNION ALL SELECT 67 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 66 AS parent_id, -33.10367734893197 AS `Estimator` UNION ALL SELECT 68 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 66 AS parent_id, -20.27001010137917 AS `Estimator` UNION ALL SELECT 69 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 57 AS parent_id, 26.98702515915835 AS `Estimator` UNION ALL SELECT 70 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 56 AS parent_id, 58.89206444679999 AS `Estimator` UNION ALL SELECT 75 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 74 AS parent_id, -32.3700606387813 AS `Estimator` UNION ALL SELECT 76 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 74 AS parent_id, -33.337014733450744 AS `Estimator` UNION ALL SELECT 77 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 73 AS parent_id, 23.511748777975313 AS `Estimator` UNION ALL SELECT 79 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 78 AS parent_id, -8.541514583322922 AS `Estimator` UNION ALL SELECT 81 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 80 AS parent_id, 60.83005801950535 AS `Estimator` UNION ALL SELECT 84 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 83 AS parent_id, 133.8707138905623 AS `Estimator` UNION ALL SELECT 85 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 83 AS parent_id, 116.8891961793557 AS `Estimator` UNION ALL SELECT 86 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 82 AS parent_id, 156.74808220262196 AS `Estimator` UNION ALL SELECT 89 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 88 AS parent_id, 198.97164294103214 AS `Estimator` UNION ALL SELECT 90 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 88 AS parent_id, 58.56592202346141 AS `Estimator` UNION ALL SELECT 93 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 92 AS parent_id, 320.6826523308587 AS `Estimator` UNION ALL SELECT 95 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 94 AS parent_id, 393.261092787257 AS `Estimator` UNION ALL SELECT 96 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 94 AS parent_id, 360.61572443308125 AS `Estimator` UNION ALL SELECT 98 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 97 AS parent_id, 239.63425512448524 AS `Estimator` UNION ALL SELECT 99 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 97 AS parent_id, 243.63801061508232 AS `Estimator` UNION ALL SELECT 103 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 102 AS parent_id, -298.79907558939374 AS `Estimator` UNION ALL SELECT 104 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 102 AS parent_id, -268.1904323885528 AS `Estimator` UNION ALL SELECT 106 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 105 AS parent_id, 8.923656244969493 AS `Estimator` UNION ALL SELECT 107 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 105 AS parent_id, -20.4235287408218 AS `Estimator` UNION ALL SELECT 112 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 111 AS parent_id, -67.71218597426643 AS `Estimator` UNION ALL SELECT 113 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 111 AS parent_id, -27.42654029072463 AS `Estimator` UNION ALL SELECT 115 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 114 AS parent_id, 131.0368050808161 AS `Estimator` UNION ALL SELECT 117 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 116 AS parent_id, 62.64480580928396 AS `Estimator` UNION ALL SELECT 119 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 118 AS parent_id, 37.34665341388054 AS `Estimator` UNION ALL SELECT 120 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 118 AS parent_id, 38.71263785211542 AS `Estimator` UNION ALL SELECT 122 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 121 AS parent_id, 277.9812845098006 AS `Estimator` UNION ALL SELECT 123 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 121 AS parent_id, 250.182760095915 AS `Estimator` UNION ALL SELECT 126 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 125 AS parent_id, -9.185160907179679 AS `Estimator` UNION ALL SELECT 128 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 127 AS parent_id, 144.424454256417 AS `Estimator` UNION ALL SELECT 129 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 6 AS depth, 127 AS parent_id, 156.85798347147366 AS `Estimator` UNION ALL SELECT 136 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 135 AS parent_id, 259.87552025822583 AS `Estimator` UNION ALL SELECT 137 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 135 AS parent_id, 290.70915409731754 AS `Estimator` UNION ALL SELECT 139 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 138 AS parent_id, 235.3201708856319 AS `Estimator` UNION ALL SELECT 140 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 10 AS depth, 138 AS parent_id, 228.58868551702315 AS `Estimator` UNION ALL SELECT 142 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 141 AS parent_id, 194.4087167101487 AS `Estimator` UNION ALL SELECT 143 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 9 AS depth, 141 AS parent_id, 191.5521549407964 AS `Estimator` UNION ALL SELECT 144 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 132 AS parent_id, 113.4408795258052 AS `Estimator` UNION ALL SELECT 147 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 146 AS parent_id, 325.0738816201826 AS `Estimator` UNION ALL SELECT 148 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 146 AS parent_id, 316.51213779149236 AS `Estimator` UNION ALL SELECT 149 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 145 AS parent_id, 349.42168234218923 AS `Estimator` UNION ALL SELECT 152 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 151 AS parent_id, 248.55956547532833 AS `Estimator` UNION ALL SELECT 154 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 153 AS parent_id, 310.60889077931495 AS `Estimator` UNION ALL SELECT 155 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 8 AS depth, 153 AS parent_id, 351.37130796411674 AS `Estimator` UNION ALL SELECT 157 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 156 AS parent_id, 447.6909835452225 AS `Estimator` UNION ALL SELECT 158 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 7 AS depth, 156 AS parent_id, 479.70721604450864 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id)
 SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`