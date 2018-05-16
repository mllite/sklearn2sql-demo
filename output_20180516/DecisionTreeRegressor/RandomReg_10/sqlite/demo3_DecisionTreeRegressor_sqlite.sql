-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeRegressor
-- Dataset : RandomReg_10
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.48648887872695923) THEN CASE WHEN ("ADS"."Feature_5" <= -0.6670668125152588) THEN CASE WHEN ("ADS"."Feature_5" <= -0.8804326057434082) THEN CASE WHEN ("ADS"."Feature_1" <= -0.8752168416976929) THEN CASE WHEN ("ADS"."Feature_0" <= 0.5072311162948608) THEN 5 ELSE CASE WHEN ("ADS"."Feature_5" <= -1.6241018772125244) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.7271902561187744) THEN CASE WHEN ("ADS"."Feature_2" <= -0.4242438077926636) THEN CASE WHEN ("ADS"."Feature_7" <= 0.4376855492591858) THEN CASE WHEN ("ADS"."Feature_5" <= -1.0361145734786987) THEN 13 ELSE 14 END ELSE 15 END ELSE 16 END ELSE CASE WHEN ("ADS"."Feature_8" <= -0.5568803548812866) THEN 18 ELSE 19 END END END ELSE CASE WHEN ("ADS"."Feature_5" <= -0.7803283929824829) THEN 21 ELSE CASE WHEN ("ADS"."Feature_8" <= -0.7443009614944458) THEN 23 ELSE 24 END END END ELSE CASE WHEN ("ADS"."Feature_8" <= -0.10979260504245758) THEN CASE WHEN ("ADS"."Feature_7" <= -0.07485402375459671) THEN CASE WHEN ("ADS"."Feature_4" <= 1.1456072330474854) THEN CASE WHEN ("ADS"."Feature_6" <= 1.54505455493927) THEN CASE WHEN ("ADS"."Feature_4" <= -1.798793077468872) THEN CASE WHEN ("ADS"."Feature_4" <= -2.464542865753174) THEN 31 ELSE 32 END ELSE CASE WHEN ("ADS"."Feature_1" <= -1.3969228267669678) THEN 34 ELSE CASE WHEN ("ADS"."Feature_1" <= -0.958901047706604) THEN 36 ELSE CASE WHEN ("ADS"."Feature_5" <= 0.5293236970901489) THEN CASE WHEN ("ADS"."Feature_2" <= -0.33948928117752075) THEN CASE WHEN ("ADS"."Feature_3" <= 0.5651648640632629) THEN 40 ELSE 41 END ELSE 42 END ELSE 43 END END END END ELSE 44 END ELSE CASE WHEN ("ADS"."Feature_4" <= 1.2514768838882446) THEN 46 ELSE 47 END END ELSE CASE WHEN ("ADS"."Feature_6" <= -0.3597670793533325) THEN CASE WHEN ("ADS"."Feature_9" <= 0.7353826761245728) THEN CASE WHEN ("ADS"."Feature_7" <= 0.5131131410598755) THEN CASE WHEN ("ADS"."Feature_0" <= 0.31023168563842773) THEN 52 ELSE 53 END ELSE 54 END ELSE 55 END ELSE CASE WHEN ("ADS"."Feature_8" <= -0.541333019733429) THEN CASE WHEN ("ADS"."Feature_9" <= 0.9353086948394775) THEN CASE WHEN ("ADS"."Feature_4" <= -0.08786889910697937) THEN CASE WHEN ("ADS"."Feature_6" <= 1.091589331626892) THEN CASE WHEN ("ADS"."Feature_8" <= -0.8184782862663269) THEN 61 ELSE 62 END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.32871586084365845) THEN 64 ELSE 65 END END ELSE CASE WHEN ("ADS"."Feature_8" <= -1.426997184753418) THEN 67 ELSE 68 END END ELSE 69 END ELSE 70 END END END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.6048204898834229) THEN CASE WHEN ("ADS"."Feature_1" <= -0.4580385386943817) THEN CASE WHEN ("ADS"."Feature_9" <= -0.2371964156627655) THEN CASE WHEN ("ADS"."Feature_7" <= -1.155519962310791) THEN 75 ELSE 76 END ELSE 77 END ELSE CASE WHEN ("ADS"."Feature_4" <= -0.9480748176574707) THEN 79 ELSE CASE WHEN ("ADS"."Feature_3" <= -0.9801359176635742) THEN 81 ELSE CASE WHEN ("ADS"."Feature_0" <= 0.6337333917617798) THEN CASE WHEN ("ADS"."Feature_7" <= -0.833141565322876) THEN 84 ELSE 85 END ELSE 86 END END END END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.5278314352035522) THEN CASE WHEN ("ADS"."Feature_9" <= 0.561397910118103) THEN 89 ELSE 90 END ELSE CASE WHEN ("ADS"."Feature_0" <= 1.355840802192688) THEN CASE WHEN ("ADS"."Feature_5" <= 0.9572347402572632) THEN 93 ELSE CASE WHEN ("ADS"."Feature_7" <= 1.2383009195327759) THEN 95 ELSE 96 END END ELSE CASE WHEN ("ADS"."Feature_8" <= 0.9247502088546753) THEN 98 ELSE 99 END END END END END END ELSE CASE WHEN ("ADS"."Feature_4" <= -1.1975512504577637) THEN CASE WHEN ("ADS"."Feature_5" <= 0.10777395963668823) THEN CASE WHEN ("ADS"."Feature_4" <= -1.975234866142273) THEN 103 ELSE 104 END ELSE CASE WHEN ("ADS"."Feature_3" <= -0.10643064975738525) THEN 106 ELSE 107 END END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.3104289174079895) THEN CASE WHEN ("ADS"."Feature_2" <= 1.1028863191604614) THEN CASE WHEN ("ADS"."Feature_4" <= -0.05499262362718582) THEN CASE WHEN ("ADS"."Feature_5" <= 0.3616192936897278) THEN 112 ELSE 113 END ELSE CASE WHEN ("ADS"."Feature_6" <= -0.05421556159853935) THEN 115 ELSE CASE WHEN ("ADS"."Feature_5" <= 0.035386763513088226) THEN 117 ELSE CASE WHEN ("ADS"."Feature_4" <= 0.7581166625022888) THEN 119 ELSE 120 END END END END ELSE CASE WHEN ("ADS"."Feature_2" <= 1.3303039073944092) THEN 122 ELSE 123 END END ELSE CASE WHEN ("ADS"."Feature_8" <= -0.43371835350990295) THEN CASE WHEN ("ADS"."Feature_6" <= -0.6961938738822937) THEN 126 ELSE CASE WHEN ("ADS"."Feature_4" <= -0.3687320947647095) THEN 128 ELSE 129 END END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.5271204710006714) THEN CASE WHEN ("ADS"."Feature_9" <= 0.6235181093215942) THEN CASE WHEN ("ADS"."Feature_7" <= 1.5438432693481445) THEN CASE WHEN ("ADS"."Feature_2" <= 1.5834550857543945) THEN CASE WHEN ("ADS"."Feature_4" <= -0.432163804769516) THEN CASE WHEN ("ADS"."Feature_8" <= 1.3030574321746826) THEN 136 ELSE 137 END ELSE CASE WHEN ("ADS"."Feature_5" <= -0.8778809905052185) THEN 139 ELSE 140 END END ELSE CASE WHEN ("ADS"."Feature_7" <= -0.40599822998046875) THEN 142 ELSE 143 END END ELSE 144 END ELSE CASE WHEN ("ADS"."Feature_5" <= -0.001641690731048584) THEN CASE WHEN ("ADS"."Feature_9" <= 1.202784538269043) THEN 147 ELSE 148 END ELSE 149 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 1.0176409482955933) THEN CASE WHEN ("ADS"."Feature_9" <= -0.14896513521671295) THEN 152 ELSE CASE WHEN ("ADS"."Feature_4" <= 1.203858733177185) THEN 154 ELSE 155 END END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.7463369965553284) THEN 157 ELSE 158 END END END END END END END AS node_id_2 
FROM "RandomReg_10" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 5 AS nid, -230.736136275325 AS "E" UNION ALL SELECT 7 AS nid, -284.890410429711 AS "E" UNION ALL SELECT 8 AS nid, -305.6750972104841 AS "E" UNION ALL SELECT 13 AS nid, -103.03861456879999 AS "E" UNION ALL SELECT 14 AS nid, -101.20974879377152 AS "E" UNION ALL SELECT 15 AS nid, -53.55855810403281 AS "E" UNION ALL SELECT 16 AS nid, -165.64587304935068 AS "E" UNION ALL SELECT 18 AS nid, -186.24037602901686 AS "E" UNION ALL SELECT 19 AS nid, -210.35491750133752 AS "E" UNION ALL SELECT 21 AS nid, -351.3842930876292 AS "E" UNION ALL SELECT 23 AS nid, -422.39029400237723 AS "E" UNION ALL SELECT 24 AS nid, -459.030670753418 AS "E" UNION ALL SELECT 31 AS nid, -251.2683418956458 AS "E" UNION ALL SELECT 32 AS nid, -237.15037500402434 AS "E" UNION ALL SELECT 34 AS nid, -223.26828856161853 AS "E" UNION ALL SELECT 36 AS nid, -140.8312353487667 AS "E" UNION ALL SELECT 40 AS nid, -182.332005662268 AS "E" UNION ALL SELECT 41 AS nid, -182.68535868074787 AS "E" UNION ALL SELECT 42 AS nid, -181.5117298102302 AS "E" UNION ALL SELECT 43 AS nid, -168.02760851528973 AS "E" UNION ALL SELECT 44 AS nid, -80.36713172562187 AS "E" UNION ALL SELECT 46 AS nid, 11.979848483268036 AS "E" UNION ALL SELECT 47 AS nid, -49.96946031186734 AS "E" UNION ALL SELECT 52 AS nid, -154.40083699334056 AS "E" UNION ALL SELECT 53 AS nid, -130.2085667212895 AS "E" UNION ALL SELECT 54 AS nid, -97.81389433706303 AS "E" UNION ALL SELECT 55 AS nid, 44.29871810773541 AS "E" UNION ALL SELECT 61 AS nid, -9.617958070006466 AS "E" UNION ALL SELECT 62 AS nid, -6.190722744000084 AS "E" UNION ALL SELECT 64 AS nid, 3.0760888121936603 AS "E" UNION ALL SELECT 65 AS nid, -1.7789086303776003 AS "E" UNION ALL SELECT 67 AS nid, -33.10367734893197 AS "E" UNION ALL SELECT 68 AS nid, -20.27001010137917 AS "E" UNION ALL SELECT 69 AS nid, 26.98702515915835 AS "E" UNION ALL SELECT 70 AS nid, 58.89206444679999 AS "E" UNION ALL SELECT 75 AS nid, -32.3700606387813 AS "E" UNION ALL SELECT 76 AS nid, -33.337014733450744 AS "E" UNION ALL SELECT 77 AS nid, 23.511748777975313 AS "E" UNION ALL SELECT 79 AS nid, -8.541514583322922 AS "E" UNION ALL SELECT 81 AS nid, 60.83005801950535 AS "E" UNION ALL SELECT 84 AS nid, 133.8707138905623 AS "E" UNION ALL SELECT 85 AS nid, 116.8891961793557 AS "E" UNION ALL SELECT 86 AS nid, 156.74808220262196 AS "E" UNION ALL SELECT 89 AS nid, 198.97164294103214 AS "E" UNION ALL SELECT 90 AS nid, 58.56592202346141 AS "E" UNION ALL SELECT 93 AS nid, 320.6826523308587 AS "E" UNION ALL SELECT 95 AS nid, 393.261092787257 AS "E" UNION ALL SELECT 96 AS nid, 360.61572443308125 AS "E" UNION ALL SELECT 98 AS nid, 239.63425512448524 AS "E" UNION ALL SELECT 99 AS nid, 243.63801061508232 AS "E" UNION ALL SELECT 103 AS nid, -298.79907558939374 AS "E" UNION ALL SELECT 104 AS nid, -268.1904323885528 AS "E" UNION ALL SELECT 106 AS nid, 8.923656244969493 AS "E" UNION ALL SELECT 107 AS nid, -20.4235287408218 AS "E" UNION ALL SELECT 112 AS nid, -67.71218597426643 AS "E" UNION ALL SELECT 113 AS nid, -27.42654029072463 AS "E" UNION ALL SELECT 115 AS nid, 131.0368050808161 AS "E" UNION ALL SELECT 117 AS nid, 62.64480580928396 AS "E" UNION ALL SELECT 119 AS nid, 37.34665341388054 AS "E" UNION ALL SELECT 120 AS nid, 38.71263785211542 AS "E" UNION ALL SELECT 122 AS nid, 277.9812845098006 AS "E" UNION ALL SELECT 123 AS nid, 250.182760095915 AS "E" UNION ALL SELECT 126 AS nid, -9.185160907179679 AS "E" UNION ALL SELECT 128 AS nid, 144.424454256417 AS "E" UNION ALL SELECT 129 AS nid, 156.85798347147366 AS "E" UNION ALL SELECT 136 AS nid, 259.87552025822583 AS "E" UNION ALL SELECT 137 AS nid, 290.70915409731754 AS "E" UNION ALL SELECT 139 AS nid, 235.3201708856319 AS "E" UNION ALL SELECT 140 AS nid, 228.58868551702315 AS "E" UNION ALL SELECT 142 AS nid, 194.4087167101487 AS "E" UNION ALL SELECT 143 AS nid, 191.5521549407964 AS "E" UNION ALL SELECT 144 AS nid, 113.4408795258052 AS "E" UNION ALL SELECT 147 AS nid, 325.0738816201826 AS "E" UNION ALL SELECT 148 AS nid, 316.51213779149236 AS "E" UNION ALL SELECT 149 AS nid, 349.42168234218923 AS "E" UNION ALL SELECT 152 AS nid, 248.55956547532833 AS "E" UNION ALL SELECT 154 AS nid, 310.60889077931495 AS "E" UNION ALL SELECT 155 AS nid, 351.37130796411674 AS "E" UNION ALL SELECT 157 AS nid, 447.6909835452225 AS "E" UNION ALL SELECT 158 AS nid, 479.70721604450864 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"