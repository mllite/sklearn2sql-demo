-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.20716172456741333) THEN CASE WHEN ("ADS"."Feature_41" <= -0.5217077136039734) THEN CASE WHEN ("ADS"."Feature_55" <= 0.8011568188667297) THEN CASE WHEN ("ADS"."Feature_73" <= 0.41047579050064087) THEN CASE WHEN ("ADS"."Feature_63" <= 0.04603707045316696) THEN CASE WHEN ("ADS"."Feature_96" <= 0.8706262111663818) THEN CASE WHEN ("ADS"."Feature_46" <= -0.20329563319683075) THEN CASE WHEN ("ADS"."Feature_82" <= -0.03152686357498169) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_92" <= -0.6632300615310669) THEN 11 ELSE 12 END END ELSE CASE WHEN ("ADS"."Feature_53" <= -0.3576663136482239) THEN 14 ELSE 15 END END ELSE CASE WHEN ("ADS"."Feature_6" <= 0.47622257471084595) THEN CASE WHEN ("ADS"."Feature_1" <= -0.31221383810043335) THEN 18 ELSE 19 END ELSE 20 END END ELSE CASE WHEN ("ADS"."Feature_78" <= -0.6743062734603882) THEN 22 ELSE CASE WHEN ("ADS"."Feature_77" <= -0.5518434047698975) THEN 24 ELSE 25 END END END ELSE CASE WHEN ("ADS"."Feature_8" <= -1.3428598642349243) THEN 27 ELSE CASE WHEN ("ADS"."Feature_23" <= 0.16964510083198547) THEN CASE WHEN ("ADS"."Feature_83" <= -0.13480877876281738) THEN 30 ELSE 31 END ELSE 32 END END END ELSE CASE WHEN ("ADS"."Feature_63" <= 0.025700129568576813) THEN CASE WHEN ("ADS"."Feature_13" <= -0.4673922657966614) THEN CASE WHEN ("ADS"."Feature_31" <= -0.720977783203125) THEN 36 ELSE CASE WHEN ("ADS"."Feature_22" <= -1.1919351816177368) THEN 38 ELSE CASE WHEN ("ADS"."Feature_83" <= 0.8416117429733276) THEN CASE WHEN ("ADS"."Feature_47" <= -0.3343585729598999) THEN 41 ELSE 42 END ELSE 43 END END END ELSE CASE WHEN ("ADS"."Feature_45" <= -1.0837392807006836) THEN 45 ELSE CASE WHEN ("ADS"."Feature_6" <= 0.2614779472351074) THEN CASE WHEN ("ADS"."Feature_99" <= -0.27904441952705383) THEN 48 ELSE 49 END ELSE CASE WHEN ("ADS"."Feature_91" <= 1.6004825830459595) THEN 51 ELSE 52 END END END END ELSE CASE WHEN ("ADS"."Feature_33" <= -0.18238015472888947) THEN CASE WHEN ("ADS"."Feature_98" <= 1.1700470447540283) THEN CASE WHEN ("ADS"."Feature_85" <= -0.5872405171394348) THEN 56 ELSE CASE WHEN ("ADS"."Feature_46" <= 1.447135090827942) THEN 58 ELSE 59 END END ELSE 60 END ELSE CASE WHEN ("ADS"."Feature_86" <= -0.3604295253753662) THEN CASE WHEN ("ADS"."Feature_23" <= -0.6699973940849304) THEN 63 ELSE 64 END ELSE CASE WHEN ("ADS"."Feature_99" <= -0.844694972038269) THEN 66 ELSE CASE WHEN ("ADS"."Feature_26" <= 0.474325954914093) THEN 68 ELSE 69 END END END END END END ELSE CASE WHEN ("ADS"."Feature_39" <= 0.45573797821998596) THEN CASE WHEN ("ADS"."Feature_57" <= 0.7340818643569946) THEN CASE WHEN ("ADS"."Feature_94" <= -0.6375347375869751) THEN CASE WHEN ("ADS"."Feature_80" <= -0.08977922052145004) THEN CASE WHEN ("ADS"."Feature_45" <= -0.501436710357666) THEN 75 ELSE CASE WHEN ("ADS"."Feature_79" <= -1.6703672409057617) THEN 77 ELSE 78 END END ELSE CASE WHEN ("ADS"."Feature_31" <= -0.40328168869018555) THEN CASE WHEN ("ADS"."Feature_45" <= -0.47328341007232666) THEN CASE WHEN ("ADS"."Feature_5" <= 0.026429329067468643) THEN 82 ELSE 83 END ELSE 84 END ELSE CASE WHEN ("ADS"."Feature_19" <= -0.8009656667709351) THEN CASE WHEN ("ADS"."Feature_86" <= 1.5553003549575806) THEN 87 ELSE 88 END ELSE CASE WHEN ("ADS"."Feature_60" <= 0.032410457730293274) THEN 90 ELSE 91 END END END END ELSE CASE WHEN ("ADS"."Feature_11" <= -0.4716191291809082) THEN CASE WHEN ("ADS"."Feature_67" <= 0.346039742231369) THEN CASE WHEN ("ADS"."Feature_98" <= 0.4289790987968445) THEN 95 ELSE 96 END ELSE 97 END ELSE CASE WHEN ("ADS"."Feature_57" <= -0.4192943871021271) THEN CASE WHEN ("ADS"."Feature_18" <= 0.6564229726791382) THEN 100 ELSE 101 END ELSE CASE WHEN ("ADS"."Feature_74" <= -1.5291857719421387) THEN 103 ELSE CASE WHEN ("ADS"."Feature_46" <= 1.8549516201019287) THEN CASE WHEN ("ADS"."Feature_52" <= 0.8495583534240723) THEN CASE WHEN ("ADS"."Feature_49" <= -0.8195846676826477) THEN 107 ELSE 108 END ELSE 109 END ELSE 110 END END END END END ELSE CASE WHEN ("ADS"."Feature_80" <= 0.9317564964294434) THEN CASE WHEN ("ADS"."Feature_58" <= -0.6561887264251709) THEN 113 ELSE 114 END ELSE CASE WHEN ("ADS"."Feature_52" <= -0.24263763427734375) THEN CASE WHEN ("ADS"."Feature_20" <= 1.0010244846343994) THEN 117 ELSE 118 END ELSE CASE WHEN ("ADS"."Feature_83" <= 0.18763844668865204) THEN CASE WHEN ("ADS"."Feature_76" <= 1.0078788995742798) THEN 121 ELSE 122 END ELSE 123 END END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1.2074711322784424) THEN CASE WHEN ("ADS"."Feature_18" <= 0.5775235891342163) THEN CASE WHEN ("ADS"."Feature_2" <= -0.6292065382003784) THEN CASE WHEN ("ADS"."Feature_52" <= 1.1171106100082397) THEN CASE WHEN ("ADS"."Feature_73" <= 0.6667274236679077) THEN CASE WHEN ("ADS"."Feature_66" <= -0.7341473698616028) THEN 130 ELSE 131 END ELSE 132 END ELSE 133 END ELSE CASE WHEN ("ADS"."Feature_80" <= 0.4601690173149109) THEN CASE WHEN ("ADS"."Feature_29" <= 0.6953991055488586) THEN CASE WHEN ("ADS"."Feature_13" <= 0.1526515781879425) THEN 137 ELSE 138 END ELSE CASE WHEN ("ADS"."Feature_57" <= 0.7593250274658203) THEN 140 ELSE 141 END END ELSE CASE WHEN ("ADS"."Feature_48" <= 0.03654786944389343) THEN CASE WHEN ("ADS"."Feature_28" <= -0.5644242763519287) THEN 144 ELSE 145 END ELSE CASE WHEN ("ADS"."Feature_0" <= 1.148632287979126) THEN CASE WHEN ("ADS"."Feature_37" <= 0.13666221499443054) THEN 148 ELSE 149 END ELSE 150 END END END END ELSE CASE WHEN ("ADS"."Feature_6" <= -0.23877617716789246) THEN 152 ELSE CASE WHEN ("ADS"."Feature_68" <= 0.4047330617904663) THEN 154 ELSE 155 END END END ELSE CASE WHEN ("ADS"."Feature_99" <= -0.3261108994483948) THEN 157 ELSE 158 END END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 7 AS parent_id, -291.84388737177295 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 7 AS parent_id, -290.52672487497273 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 10 AS parent_id, -310.56333873263117 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 10 AS parent_id, -306.85826973978595 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 13 AS parent_id, -361.1632498041779 AS "Estimator" UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 13 AS parent_id, -338.5499431552182 AS "Estimator" UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 17 AS parent_id, -234.79191600815204 AS "Estimator" UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 17 AS parent_id, -234.4658092919816 AS "Estimator" UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 16 AS parent_id, -257.9792248911822 AS "Estimator" UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 5 AS depth, 21 AS parent_id, -146.53732849176905 AS "Estimator" UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 23 AS parent_id, -190.64702660055804 AS "Estimator" UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 23 AS parent_id, -207.8249772062679 AS "Estimator" UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 4 AS depth, 26 AS parent_id, -327.50301874204285 AS "Estimator" UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 29 AS parent_id, -436.8930860886948 AS "Estimator" UNION ALL SELECT 31 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 29 AS parent_id, -430.7322420182495 AS "Estimator" UNION ALL SELECT 32 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 5 AS depth, 28 AS parent_id, -454.8215873712685 AS "Estimator" UNION ALL SELECT 36 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 5 AS depth, 35 AS parent_id, -280.96508601336274 AS "Estimator" UNION ALL SELECT 38 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 37 AS parent_id, -167.53786194153668 AS "Estimator" UNION ALL SELECT 41 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 40 AS parent_id, -196.1762239786283 AS "Estimator" UNION ALL SELECT 42 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 40 AS parent_id, -197.78121613409624 AS "Estimator" UNION ALL SELECT 43 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 39 AS parent_id, -200.33739348214584 AS "Estimator" UNION ALL SELECT 45 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 5 AS depth, 44 AS parent_id, -190.99779883345465 AS "Estimator" UNION ALL SELECT 48 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 47 AS parent_id, -54.81786631978007 AS "Estimator" UNION ALL SELECT 49 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 47 AS parent_id, -42.10296471792358 AS "Estimator" UNION ALL SELECT 51 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 50 AS parent_id, -86.11645147491663 AS "Estimator" UNION ALL SELECT 52 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 50 AS parent_id, -102.26347334362194 AS "Estimator" UNION ALL SELECT 56 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 55 AS parent_id, 39.44300011869663 AS "Estimator" UNION ALL SELECT 58 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 57 AS parent_id, 75.60702200307296 AS "Estimator" UNION ALL SELECT 59 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 57 AS parent_id, 75.33652615813574 AS "Estimator" UNION ALL SELECT 60 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 5 AS depth, 54 AS parent_id, -55.13785992768933 AS "Estimator" UNION ALL SELECT 63 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 62 AS parent_id, 215.90083761986222 AS "Estimator" UNION ALL SELECT 64 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 62 AS parent_id, 183.77184322024888 AS "Estimator" UNION ALL SELECT 66 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 65 AS parent_id, 136.92680038236625 AS "Estimator" UNION ALL SELECT 68 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 67 AS parent_id, 111.49818730604603 AS "Estimator" UNION ALL SELECT 69 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 67 AS parent_id, 114.45423222726873 AS "Estimator" UNION ALL SELECT 75 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 74 AS parent_id, -30.698977731486934 AS "Estimator" UNION ALL SELECT 77 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 76 AS parent_id, 2.273972887782435 AS "Estimator" UNION ALL SELECT 78 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 76 AS parent_id, -4.904591434376485 AS "Estimator" UNION ALL SELECT 82 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 81 AS parent_id, 62.605323392817695 AS "Estimator" UNION ALL SELECT 83 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 81 AS parent_id, 48.423335696929506 AS "Estimator" UNION ALL SELECT 84 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 80 AS parent_id, 90.67187465696159 AS "Estimator" UNION ALL SELECT 87 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 86 AS parent_id, 105.13302468571077 AS "Estimator" UNION ALL SELECT 88 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 86 AS parent_id, 122.37894790928655 AS "Estimator" UNION ALL SELECT 90 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 89 AS parent_id, 144.72865942116238 AS "Estimator" UNION ALL SELECT 91 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 89 AS parent_id, 157.32675574653365 AS "Estimator" UNION ALL SELECT 95 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 94 AS parent_id, -172.78010697974267 AS "Estimator" UNION ALL SELECT 96 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 94 AS parent_id, -202.60833883427068 AS "Estimator" UNION ALL SELECT 97 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 93 AS parent_id, -140.57351311758325 AS "Estimator" UNION ALL SELECT 100 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 99 AS parent_id, 38.19976422974274 AS "Estimator" UNION ALL SELECT 101 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 99 AS parent_id, -3.8590694942672137 AS "Estimator" UNION ALL SELECT 103 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 102 AS parent_id, -87.98512254511704 AS "Estimator" UNION ALL SELECT 107 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 10 AS depth, 106 AS parent_id, -79.28963380412185 AS "Estimator" UNION ALL SELECT 108 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 10 AS depth, 106 AS parent_id, -79.78381998603227 AS "Estimator" UNION ALL SELECT 109 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 9 AS depth, 105 AS parent_id, -81.78670049771183 AS "Estimator" UNION ALL SELECT 110 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 104 AS parent_id, -76.8627548707201 AS "Estimator" UNION ALL SELECT 113 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 5 AS depth, 112 AS parent_id, 94.43377409338842 AS "Estimator" UNION ALL SELECT 114 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 5 AS depth, 112 AS parent_id, -10.715443370853677 AS "Estimator" UNION ALL SELECT 117 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 116 AS parent_id, 278.8145316391315 AS "Estimator" UNION ALL SELECT 118 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 116 AS parent_id, 327.27619652811467 AS "Estimator" UNION ALL SELECT 121 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 120 AS parent_id, 175.64031367667982 AS "Estimator" UNION ALL SELECT 122 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 120 AS parent_id, 178.09986345168227 AS "Estimator" UNION ALL SELECT 123 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 119 AS parent_id, 233.33694106574706 AS "Estimator" UNION ALL SELECT 130 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 129 AS parent_id, 130.61554227069345 AS "Estimator" UNION ALL SELECT 131 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 129 AS parent_id, 128.74971924769997 AS "Estimator" UNION ALL SELECT 132 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 7 AS depth, 128 AS parent_id, 114.66116147528915 AS "Estimator" UNION ALL SELECT 133 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 127 AS parent_id, 174.05588768325575 AS "Estimator" UNION ALL SELECT 137 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 136 AS parent_id, 294.8906555832285 AS "Estimator" UNION ALL SELECT 138 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 136 AS parent_id, 270.9786797098036 AS "Estimator" UNION ALL SELECT 140 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 139 AS parent_id, 245.21860440601063 AS "Estimator" UNION ALL SELECT 141 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 139 AS parent_id, 242.60253144460478 AS "Estimator" UNION ALL SELECT 144 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 143 AS parent_id, 167.433500065504 AS "Estimator" UNION ALL SELECT 145 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 143 AS parent_id, 180.24317891913591 AS "Estimator" UNION ALL SELECT 148 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 9 AS depth, 147 AS parent_id, 212.81710450150226 AS "Estimator" UNION ALL SELECT 149 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 9 AS depth, 147 AS parent_id, 219.92766037620171 AS "Estimator" UNION ALL SELECT 150 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 8 AS depth, 146 AS parent_id, 195.39419395402132 AS "Estimator" UNION ALL SELECT 152 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 5 AS depth, 151 AS parent_id, 419.8117904787066 AS "Estimator" UNION ALL SELECT 154 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 153 AS parent_id, 294.7646845425511 AS "Estimator" UNION ALL SELECT 155 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 6 AS depth, 153 AS parent_id, 305.0402047722153 AS "Estimator" UNION ALL SELECT 157 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 4 AS depth, 156 AS parent_id, -107.89147253045782 AS "Estimator" UNION ALL SELECT 158 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS count, 4 AS depth, 156 AS parent_id, -51.54063841079579 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"