-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `IL` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CAST(`ADS`.`Feature_0` AS DOUBLE) AS `Feature_0`, CAST(`ADS`.`Feature_1` AS DOUBLE) AS `Feature_1`, CAST(`ADS`.`Feature_2` AS DOUBLE) AS `Feature_2`, CAST(`ADS`.`Feature_3` AS DOUBLE) AS `Feature_3`, CAST(`ADS`.`Feature_4` AS DOUBLE) AS `Feature_4`, CAST(`ADS`.`Feature_5` AS DOUBLE) AS `Feature_5`, CAST(`ADS`.`Feature_6` AS DOUBLE) AS `Feature_6`, CAST(`ADS`.`Feature_7` AS DOUBLE) AS `Feature_7`, CAST(`ADS`.`Feature_8` AS DOUBLE) AS `Feature_8`, CAST(`ADS`.`Feature_9` AS DOUBLE) AS `Feature_9`, CAST(`ADS`.`Feature_10` AS DOUBLE) AS `Feature_10`, CAST(`ADS`.`Feature_11` AS DOUBLE) AS `Feature_11`, CAST(`ADS`.`Feature_12` AS DOUBLE) AS `Feature_12`, CAST(`ADS`.`Feature_13` AS DOUBLE) AS `Feature_13`, CAST(`ADS`.`Feature_14` AS DOUBLE) AS `Feature_14`, CAST(`ADS`.`Feature_15` AS DOUBLE) AS `Feature_15`, CAST(`ADS`.`Feature_16` AS DOUBLE) AS `Feature_16`, CAST(`ADS`.`Feature_17` AS DOUBLE) AS `Feature_17`, CAST(`ADS`.`Feature_18` AS DOUBLE) AS `Feature_18`, CAST(`ADS`.`Feature_19` AS DOUBLE) AS `Feature_19`, CAST(`ADS`.`Feature_20` AS DOUBLE) AS `Feature_20`, CAST(`ADS`.`Feature_21` AS DOUBLE) AS `Feature_21`, CAST(`ADS`.`Feature_22` AS DOUBLE) AS `Feature_22`, CAST(`ADS`.`Feature_23` AS DOUBLE) AS `Feature_23`, CAST(`ADS`.`Feature_24` AS DOUBLE) AS `Feature_24`, CAST(`ADS`.`Feature_25` AS DOUBLE) AS `Feature_25`, CAST(`ADS`.`Feature_26` AS DOUBLE) AS `Feature_26`, CAST(`ADS`.`Feature_27` AS DOUBLE) AS `Feature_27`, CAST(`ADS`.`Feature_28` AS DOUBLE) AS `Feature_28`, CAST(`ADS`.`Feature_29` AS DOUBLE) AS `Feature_29`, CAST(`ADS`.`Feature_30` AS DOUBLE) AS `Feature_30`, CAST(`ADS`.`Feature_31` AS DOUBLE) AS `Feature_31`, CAST(`ADS`.`Feature_32` AS DOUBLE) AS `Feature_32`, CAST(`ADS`.`Feature_33` AS DOUBLE) AS `Feature_33`, CAST(`ADS`.`Feature_34` AS DOUBLE) AS `Feature_34`, CAST(`ADS`.`Feature_35` AS DOUBLE) AS `Feature_35`, CAST(`ADS`.`Feature_36` AS DOUBLE) AS `Feature_36`, CAST(`ADS`.`Feature_37` AS DOUBLE) AS `Feature_37`, CAST(`ADS`.`Feature_38` AS DOUBLE) AS `Feature_38`, CAST(`ADS`.`Feature_39` AS DOUBLE) AS `Feature_39`, CAST(`ADS`.`Feature_40` AS DOUBLE) AS `Feature_40`, CAST(`ADS`.`Feature_41` AS DOUBLE) AS `Feature_41`, CAST(`ADS`.`Feature_42` AS DOUBLE) AS `Feature_42`, CAST(`ADS`.`Feature_43` AS DOUBLE) AS `Feature_43`, CAST(`ADS`.`Feature_44` AS DOUBLE) AS `Feature_44`, CAST(`ADS`.`Feature_45` AS DOUBLE) AS `Feature_45`, CAST(`ADS`.`Feature_46` AS DOUBLE) AS `Feature_46`, CAST(`ADS`.`Feature_47` AS DOUBLE) AS `Feature_47`, CAST(`ADS`.`Feature_48` AS DOUBLE) AS `Feature_48`, CAST(`ADS`.`Feature_49` AS DOUBLE) AS `Feature_49`, CAST(`ADS`.`Feature_50` AS DOUBLE) AS `Feature_50`, CAST(`ADS`.`Feature_51` AS DOUBLE) AS `Feature_51`, CAST(`ADS`.`Feature_52` AS DOUBLE) AS `Feature_52`, CAST(`ADS`.`Feature_53` AS DOUBLE) AS `Feature_53`, CAST(`ADS`.`Feature_54` AS DOUBLE) AS `Feature_54`, CAST(`ADS`.`Feature_55` AS DOUBLE) AS `Feature_55`, CAST(`ADS`.`Feature_56` AS DOUBLE) AS `Feature_56`, CAST(`ADS`.`Feature_57` AS DOUBLE) AS `Feature_57`, CAST(`ADS`.`Feature_58` AS DOUBLE) AS `Feature_58`, CAST(`ADS`.`Feature_59` AS DOUBLE) AS `Feature_59`, CAST(`ADS`.`Feature_60` AS DOUBLE) AS `Feature_60`, CAST(`ADS`.`Feature_61` AS DOUBLE) AS `Feature_61`, CAST(`ADS`.`Feature_62` AS DOUBLE) AS `Feature_62`, CAST(`ADS`.`Feature_63` AS DOUBLE) AS `Feature_63`, CAST(`ADS`.`Feature_64` AS DOUBLE) AS `Feature_64`, CAST(`ADS`.`Feature_65` AS DOUBLE) AS `Feature_65`, CAST(`ADS`.`Feature_66` AS DOUBLE) AS `Feature_66`, CAST(`ADS`.`Feature_67` AS DOUBLE) AS `Feature_67`, CAST(`ADS`.`Feature_68` AS DOUBLE) AS `Feature_68`, CAST(`ADS`.`Feature_69` AS DOUBLE) AS `Feature_69`, CAST(`ADS`.`Feature_70` AS DOUBLE) AS `Feature_70`, CAST(`ADS`.`Feature_71` AS DOUBLE) AS `Feature_71`, CAST(`ADS`.`Feature_72` AS DOUBLE) AS `Feature_72`, CAST(`ADS`.`Feature_73` AS DOUBLE) AS `Feature_73`, CAST(`ADS`.`Feature_74` AS DOUBLE) AS `Feature_74`, CAST(`ADS`.`Feature_75` AS DOUBLE) AS `Feature_75`, CAST(`ADS`.`Feature_76` AS DOUBLE) AS `Feature_76`, CAST(`ADS`.`Feature_77` AS DOUBLE) AS `Feature_77`, CAST(`ADS`.`Feature_78` AS DOUBLE) AS `Feature_78`, CAST(`ADS`.`Feature_79` AS DOUBLE) AS `Feature_79`, CAST(`ADS`.`Feature_80` AS DOUBLE) AS `Feature_80`, CAST(`ADS`.`Feature_81` AS DOUBLE) AS `Feature_81`, CAST(`ADS`.`Feature_82` AS DOUBLE) AS `Feature_82`, CAST(`ADS`.`Feature_83` AS DOUBLE) AS `Feature_83`, CAST(`ADS`.`Feature_84` AS DOUBLE) AS `Feature_84`, CAST(`ADS`.`Feature_85` AS DOUBLE) AS `Feature_85`, CAST(`ADS`.`Feature_86` AS DOUBLE) AS `Feature_86`, CAST(`ADS`.`Feature_87` AS DOUBLE) AS `Feature_87`, CAST(`ADS`.`Feature_88` AS DOUBLE) AS `Feature_88`, CAST(`ADS`.`Feature_89` AS DOUBLE) AS `Feature_89`, CAST(`ADS`.`Feature_90` AS DOUBLE) AS `Feature_90`, CAST(`ADS`.`Feature_91` AS DOUBLE) AS `Feature_91`, CAST(`ADS`.`Feature_92` AS DOUBLE) AS `Feature_92`, CAST(`ADS`.`Feature_93` AS DOUBLE) AS `Feature_93`, CAST(`ADS`.`Feature_94` AS DOUBLE) AS `Feature_94`, CAST(`ADS`.`Feature_95` AS DOUBLE) AS `Feature_95`, CAST(`ADS`.`Feature_96` AS DOUBLE) AS `Feature_96`, CAST(`ADS`.`Feature_97` AS DOUBLE) AS `Feature_97`, CAST(`ADS`.`Feature_98` AS DOUBLE) AS `Feature_98`, CAST(`ADS`.`Feature_99` AS DOUBLE) AS `Feature_99` 
FROM `BinaryClass_100` AS `ADS`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, 0.543809028388 * `IL`.`Feature_0` + -0.0485088736592 * `IL`.`Feature_1` + -0.142619624316 * `IL`.`Feature_2` + -0.0916427428326 * `IL`.`Feature_3` + -0.997874219464 * `IL`.`Feature_4` + -0.14948771248 * `IL`.`Feature_5` + 0.210615848231 * `IL`.`Feature_6` + 0.0734354761296 * `IL`.`Feature_7` + 0.0351634737554 * `IL`.`Feature_8` + -0.068823983801 * `IL`.`Feature_9` + -0.225472363713 * `IL`.`Feature_10` + 0.265186627985 * `IL`.`Feature_11` + 0.202341200782 * `IL`.`Feature_12` + 0.0359550925516 * `IL`.`Feature_13` + 0.273673224933 * `IL`.`Feature_14` + -0.432915045176 * `IL`.`Feature_15` + 0.195270076305 * `IL`.`Feature_16` + -0.249082073051 * `IL`.`Feature_17` + -0.000405757889938 * `IL`.`Feature_18` + 0.422278893025 * `IL`.`Feature_19` + -0.486519559846 * `IL`.`Feature_20` + 0.00775612496681 * `IL`.`Feature_21` + -0.169755352643 * `IL`.`Feature_22` + -0.88812919337 * `IL`.`Feature_23` + 0.533316297746 * `IL`.`Feature_24` + -0.112225154798 * `IL`.`Feature_25` + 0.111973983443 * `IL`.`Feature_26` + 0.0154852580628 * `IL`.`Feature_27` + -0.332166482181 * `IL`.`Feature_28` + 0.18983427812 * `IL`.`Feature_29` + 0.158149594748 * `IL`.`Feature_30` + -0.0149665658101 * `IL`.`Feature_31` + -0.434315471476 * `IL`.`Feature_32` + -0.565702039045 * `IL`.`Feature_33` + -1.11236032478 * `IL`.`Feature_34` + 0.114576680259 * `IL`.`Feature_35` + -0.740502301829 * `IL`.`Feature_36` + 0.374471857181 * `IL`.`Feature_37` + -0.825529011798 * `IL`.`Feature_38` + 0.606664914606 * `IL`.`Feature_39` + 0.151042740472 * `IL`.`Feature_40` + -0.998937779371 * `IL`.`Feature_41` + -0.332748360253 * `IL`.`Feature_42` + 0.094261633967 * `IL`.`Feature_43` + -0.241711243133 * `IL`.`Feature_44` + -0.431060052992 * `IL`.`Feature_45` + 0.743698854481 * `IL`.`Feature_46` + 0.0732344620382 * `IL`.`Feature_47` + -0.408440237368 * `IL`.`Feature_48` + -0.322104849932 * `IL`.`Feature_49` + -0.21151467215 * `IL`.`Feature_50` + 0.495666515582 * `IL`.`Feature_51` + -0.286298802274 * `IL`.`Feature_52` + -0.149849854598 * `IL`.`Feature_53` + -0.162415366462 * `IL`.`Feature_54` + -0.356686114315 * `IL`.`Feature_55` + 0.452273527492 * `IL`.`Feature_56` + 0.910833106928 * `IL`.`Feature_57` + -0.183593169794 * `IL`.`Feature_58` + 0.444231580744 * `IL`.`Feature_59` + -0.10581570379 * `IL`.`Feature_60` + -0.218089800855 * `IL`.`Feature_61` + 0.231115621996 * `IL`.`Feature_62` + 0.384214204994 * `IL`.`Feature_63` + -0.353002937592 * `IL`.`Feature_64` + -0.014570566318 * `IL`.`Feature_65` + -0.298179433984 * `IL`.`Feature_66` + 0.969859084008 * `IL`.`Feature_67` + -0.213407954907 * `IL`.`Feature_68` + -0.58463949738 * `IL`.`Feature_69` + -0.230221676637 * `IL`.`Feature_70` + -0.478585567153 * `IL`.`Feature_71` + -0.0583007773777 * `IL`.`Feature_72` + -0.305386653118 * `IL`.`Feature_73` + 0.731153377347 * `IL`.`Feature_74` + -0.571821182379 * `IL`.`Feature_75` + 0.923546468905 * `IL`.`Feature_76` + -0.652532714823 * `IL`.`Feature_77` + -0.0602086347724 * `IL`.`Feature_78` + 0.217997397568 * `IL`.`Feature_79` + 0.285467853596 * `IL`.`Feature_80` + -0.118320453957 * `IL`.`Feature_81` + -0.57536910975 * `IL`.`Feature_82` + 0.18966100096 * `IL`.`Feature_83` + -0.116903835182 * `IL`.`Feature_84` + 0.0445615054026 * `IL`.`Feature_85` + -0.662613243281 * `IL`.`Feature_86` + 0.153026730658 * `IL`.`Feature_87` + 0.0899474705598 * `IL`.`Feature_88` + -0.0415982470339 * `IL`.`Feature_89` + -0.760852899539 * `IL`.`Feature_90` + -0.674805472449 * `IL`.`Feature_91` + 0.834018367734 * `IL`.`Feature_92` + -0.468107942501 * `IL`.`Feature_93` + -0.514656678113 * `IL`.`Feature_94` + -0.159882461436 * `IL`.`Feature_95` + -0.403594458393 * `IL`.`Feature_96` + -0.795663030464 * `IL`.`Feature_97` + 0.521547465949 * `IL`.`Feature_98` + -0.0512660390046 * `IL`.`Feature_99` + -1.30448269643 AS `NEUR_1_1`, 0.0899284875964 * `IL`.`Feature_0` + 0.0509257457074 * `IL`.`Feature_1` + -0.100049183149 * `IL`.`Feature_2` + 0.156727804574 * `IL`.`Feature_3` + -0.662489967366 * `IL`.`Feature_4` + 0.124774468685 * `IL`.`Feature_5` + -0.14299868206 * `IL`.`Feature_6` + -0.355377301966 * `IL`.`Feature_7` + 0.34601490019 * `IL`.`Feature_8` + -0.200574685 * `IL`.`Feature_9` + -0.266736000765 * `IL`.`Feature_10` + -0.107602756563 * `IL`.`Feature_11` + -0.330517809647 * `IL`.`Feature_12` + 0.377732271178 * `IL`.`Feature_13` + 0.034709804623 * `IL`.`Feature_14` + -0.242107796591 * `IL`.`Feature_15` + 0.163219822056 * `IL`.`Feature_16` + -0.115864701138 * `IL`.`Feature_17` + -0.114978067434 * `IL`.`Feature_18` + 0.311970449246 * `IL`.`Feature_19` + -0.0802189812485 * `IL`.`Feature_20` + -0.144766734318 * `IL`.`Feature_21` + -0.311924556276 * `IL`.`Feature_22` + -0.236090021314 * `IL`.`Feature_23` + -0.0499458490078 * `IL`.`Feature_24` + -0.162544649393 * `IL`.`Feature_25` + 0.0264575967343 * `IL`.`Feature_26` + 0.172452764924 * `IL`.`Feature_27` + -0.0725995547067 * `IL`.`Feature_28` + -0.287352777906 * `IL`.`Feature_29` + -0.244807677002 * `IL`.`Feature_30` + -0.360719126771 * `IL`.`Feature_31` + -0.00260081642104 * `IL`.`Feature_32` + -0.217856019848 * `IL`.`Feature_33` + -0.346247337263 * `IL`.`Feature_34` + 0.064447699539 * `IL`.`Feature_35` + 0.210582442672 * `IL`.`Feature_36` + -0.203751820998 * `IL`.`Feature_37` + 0.284601185337 * `IL`.`Feature_38` + -0.0274289974295 * `IL`.`Feature_39` + 0.322583663847 * `IL`.`Feature_40` + -0.0451162517596 * `IL`.`Feature_41` + 0.114239407035 * `IL`.`Feature_42` + 0.0326907717566 * `IL`.`Feature_43` + 0.0383550940492 * `IL`.`Feature_44` + -0.152382598871 * `IL`.`Feature_45` + 0.349955418651 * `IL`.`Feature_46` + 0.0939837164931 * `IL`.`Feature_47` + -0.202049851239 * `IL`.`Feature_48` + -0.233476369189 * `IL`.`Feature_49` + -0.110079476981 * `IL`.`Feature_50` + -0.278860736503 * `IL`.`Feature_51` + -0.158566220042 * `IL`.`Feature_52` + -0.0180837198832 * `IL`.`Feature_53` + 0.115818810255 * `IL`.`Feature_54` + -0.180224043915 * `IL`.`Feature_55` + -0.0110681154329 * `IL`.`Feature_56` + 0.844122606103 * `IL`.`Feature_57` + 0.125076358934 * `IL`.`Feature_58` + -0.118597954197 * `IL`.`Feature_59` + -0.589468174367 * `IL`.`Feature_60` + 0.276674489102 * `IL`.`Feature_61` + 0.00282125905422 * `IL`.`Feature_62` + 0.177913999628 * `IL`.`Feature_63` + 0.427886632815 * `IL`.`Feature_64` + 0.229905549886 * `IL`.`Feature_65` + 0.545399408546 * `IL`.`Feature_66` + 0.514456237385 * `IL`.`Feature_67` + 0.0285816443396 * `IL`.`Feature_68` + -0.304141045393 * `IL`.`Feature_69` + -0.235547768553 * `IL`.`Feature_70` + 0.44967056626 * `IL`.`Feature_71` + -0.101502215795 * `IL`.`Feature_72` + -0.00480350131388 * `IL`.`Feature_73` + 0.0302436542503 * `IL`.`Feature_74` + 0.321561716811 * `IL`.`Feature_75` + 0.121000112672 * `IL`.`Feature_76` + -0.202940046421 * `IL`.`Feature_77` + 0.0679836762337 * `IL`.`Feature_78` + 0.23459320839 * `IL`.`Feature_79` + 0.101310189593 * `IL`.`Feature_80` + 0.125174822055 * `IL`.`Feature_81` + -0.0254456702462 * `IL`.`Feature_82` + 0.12736140186 * `IL`.`Feature_83` + -0.0598640659473 * `IL`.`Feature_84` + 0.000632316433902 * `IL`.`Feature_85` + -0.0482156751897 * `IL`.`Feature_86` + -0.293786723097 * `IL`.`Feature_87` + -0.239021778983 * `IL`.`Feature_88` + -0.110921866497 * `IL`.`Feature_89` + -0.186321971389 * `IL`.`Feature_90` + -0.397652975577 * `IL`.`Feature_91` + 0.456794902967 * `IL`.`Feature_92` + 0.323557238735 * `IL`.`Feature_93` + -0.339110274026 * `IL`.`Feature_94` + 0.000951601915457 * `IL`.`Feature_95` + 0.00234894929684 * `IL`.`Feature_96` + -0.079987982152 * `IL`.`Feature_97` + 0.288914667062 * `IL`.`Feature_98` + -0.236254779507 * `IL`.`Feature_99` + -0.115558035683 AS `NEUR_1_2`, 0.41935377909 * `IL`.`Feature_0` + -0.064845046962 * `IL`.`Feature_1` + 0.0222206563837 * `IL`.`Feature_2` + -0.135021474737 * `IL`.`Feature_3` + -1.19844979353 * `IL`.`Feature_4` + 0.57168467489 * `IL`.`Feature_5` + -0.0710866212071 * `IL`.`Feature_6` + -0.250987571997 * `IL`.`Feature_7` + -0.156058878778 * `IL`.`Feature_8` + 0.490299270852 * `IL`.`Feature_9` + 0.00841392301724 * `IL`.`Feature_10` + -0.0339438476471 * `IL`.`Feature_11` + 0.329484571041 * `IL`.`Feature_12` + 0.0342563869844 * `IL`.`Feature_13` + -0.323441569188 * `IL`.`Feature_14` + -0.410038016275 * `IL`.`Feature_15` + -0.298365990321 * `IL`.`Feature_16` + 0.0716180101325 * `IL`.`Feature_17` + -0.323182141806 * `IL`.`Feature_18` + -0.365684411875 * `IL`.`Feature_19` + 0.0661466002691 * `IL`.`Feature_20` + 0.0844807890659 * `IL`.`Feature_21` + -0.2940239067 * `IL`.`Feature_22` + 0.0992554741158 * `IL`.`Feature_23` + -0.0686836352546 * `IL`.`Feature_24` + 0.0329099459172 * `IL`.`Feature_25` + -0.0275950348009 * `IL`.`Feature_26` + 0.456989771965 * `IL`.`Feature_27` + -0.134197253321 * `IL`.`Feature_28` + 0.0850559237335 * `IL`.`Feature_29` + -0.234936591994 * `IL`.`Feature_30` + -0.208085497156 * `IL`.`Feature_31` + 0.0204125107745 * `IL`.`Feature_32` + -0.164557987098 * `IL`.`Feature_33` + -0.0736543801656 * `IL`.`Feature_34` + -0.211334696847 * `IL`.`Feature_35` + -0.141152975272 * `IL`.`Feature_36` + 0.436497815927 * `IL`.`Feature_37` + -0.108504078868 * `IL`.`Feature_38` + -0.479652824728 * `IL`.`Feature_39` + 0.0425072762816 * `IL`.`Feature_40` + -0.200234078513 * `IL`.`Feature_41` + -0.452942679155 * `IL`.`Feature_42` + 0.0628658225126 * `IL`.`Feature_43` + -0.60825965726 * `IL`.`Feature_44` + -0.417783874513 * `IL`.`Feature_45` + 0.362532082992 * `IL`.`Feature_46` + 0.0706172067972 * `IL`.`Feature_47` + -0.607042645738 * `IL`.`Feature_48` + -0.219148347225 * `IL`.`Feature_49` + 0.232990245246 * `IL`.`Feature_50` + 0.01517309884 * `IL`.`Feature_51` + 0.0779458173883 * `IL`.`Feature_52` + 0.0834175028327 * `IL`.`Feature_53` + -0.0163381596052 * `IL`.`Feature_54` + -0.180672426932 * `IL`.`Feature_55` + 0.00569950482864 * `IL`.`Feature_56` + 1.15300034601 * `IL`.`Feature_57` + -0.198494145162 * `IL`.`Feature_58` + 0.175841105152 * `IL`.`Feature_59` + -0.355371210813 * `IL`.`Feature_60` + 0.125527003101 * `IL`.`Feature_61` + -0.304034901082 * `IL`.`Feature_62` + 0.362250024292 * `IL`.`Feature_63` + -0.00852463506494 * `IL`.`Feature_64` + 0.112049761732 * `IL`.`Feature_65` + -0.240762970712 * `IL`.`Feature_66` + 0.122118909736 * `IL`.`Feature_67` + -0.653171836554 * `IL`.`Feature_68` + 0.0233968363745 * `IL`.`Feature_69` + -0.0236054198071 * `IL`.`Feature_70` + -0.421249342641 * `IL`.`Feature_71` + -0.0974727864455 * `IL`.`Feature_72` + -0.403644796571 * `IL`.`Feature_73` + 0.39658062322 * `IL`.`Feature_74` + -0.0189696458461 * `IL`.`Feature_75` + 0.557462982216 * `IL`.`Feature_76` + -0.22954546253 * `IL`.`Feature_77` + -0.172120328967 * `IL`.`Feature_78` + -0.130242252149 * `IL`.`Feature_79` + 0.00461828203251 * `IL`.`Feature_80` + 0.308963461989 * `IL`.`Feature_81` + 0.676211391408 * `IL`.`Feature_82` + -0.00496979787787 * `IL`.`Feature_83` + 0.152633564969 * `IL`.`Feature_84` + -0.182722638163 * `IL`.`Feature_85` + -0.306285474714 * `IL`.`Feature_86` + 0.02439337025 * `IL`.`Feature_87` + 0.125975796093 * `IL`.`Feature_88` + -0.388602208494 * `IL`.`Feature_89` + -0.227565348158 * `IL`.`Feature_90` + -0.013864079629 * `IL`.`Feature_91` + 0.0884181876245 * `IL`.`Feature_92` + -0.575619065979 * `IL`.`Feature_93` + -0.109304558271 * `IL`.`Feature_94` + -0.310688772204 * `IL`.`Feature_95` + -0.252197777023 * `IL`.`Feature_96` + 0.0497315108122 * `IL`.`Feature_97` + 0.153970586752 * `IL`.`Feature_98` + 0.00540543706442 * `IL`.`Feature_99` + 0.594423691954 AS `NEUR_1_3` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_1`.`NEUR_1_1` >= 0.0) THEN `HL_BA_1`.`NEUR_1_1` ELSE 0.0 END AS `NEUR_1_1`, CASE WHEN (`HL_BA_1`.`NEUR_1_2` >= 0.0) THEN `HL_BA_1`.`NEUR_1_2` ELSE 0.0 END AS `NEUR_1_2`, CASE WHEN (`HL_BA_1`.`NEUR_1_3` >= 0.0) THEN `HL_BA_1`.`NEUR_1_3` ELSE 0.0 END AS `NEUR_1_3` 
FROM `HL_BA_1`), 
`HL_BA_2` AS 
(SELECT `HL_1_relu`.`KEY` AS `KEY`, 0.514798545873 * `HL_1_relu`.`NEUR_1_1` + 0.720945980599 * `HL_1_relu`.`NEUR_1_2` + 1.3969064763 * `HL_1_relu`.`NEUR_1_3` + -0.419532349088 AS `NEUR_2_1`, -0.193882810614 * `HL_1_relu`.`NEUR_1_1` + -0.0965526272829 * `HL_1_relu`.`NEUR_1_2` + 0.192593949253 * `HL_1_relu`.`NEUR_1_3` + 2.78459306442 AS `NEUR_2_2`, -0.379778453159 * `HL_1_relu`.`NEUR_1_1` + 1.32968388006 * `HL_1_relu`.`NEUR_1_2` + 1.06624258178 * `HL_1_relu`.`NEUR_1_3` + -0.209002662439 AS `NEUR_2_3`, -0.467408216401 * `HL_1_relu`.`NEUR_1_1` + 0.226120360302 * `HL_1_relu`.`NEUR_1_2` + -0.601925421214 * `HL_1_relu`.`NEUR_1_3` + 0.86390852158 AS `NEUR_2_4`, -0.60916497274 * `HL_1_relu`.`NEUR_1_1` + -0.377555794757 * `HL_1_relu`.`NEUR_1_2` + -0.672800845387 * `HL_1_relu`.`NEUR_1_3` + -0.018078316227 AS `NEUR_2_5` 
FROM `HL_1_relu`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_2`.`NEUR_2_1` >= 0.0) THEN `HL_BA_2`.`NEUR_2_1` ELSE 0.0 END AS `NEUR_2_1`, CASE WHEN (`HL_BA_2`.`NEUR_2_2` >= 0.0) THEN `HL_BA_2`.`NEUR_2_2` ELSE 0.0 END AS `NEUR_2_2`, CASE WHEN (`HL_BA_2`.`NEUR_2_3` >= 0.0) THEN `HL_BA_2`.`NEUR_2_3` ELSE 0.0 END AS `NEUR_2_3`, CASE WHEN (`HL_BA_2`.`NEUR_2_4` >= 0.0) THEN `HL_BA_2`.`NEUR_2_4` ELSE 0.0 END AS `NEUR_2_4`, CASE WHEN (`HL_BA_2`.`NEUR_2_5` >= 0.0) THEN `HL_BA_2`.`NEUR_2_5` ELSE 0.0 END AS `NEUR_2_5` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, 1.52731068431 * `HL_2_relu`.`NEUR_2_1` + -1.05480638486 * `HL_2_relu`.`NEUR_2_2` + 1.47966330742 * `HL_2_relu`.`NEUR_2_3` + -0.0651170635761 * `HL_2_relu`.`NEUR_2_4` + -0.273393526524 * `HL_2_relu`.`NEUR_2_5` + -0.743344202484 AS `NEUR_3_1` 
FROM `HL_2_relu`), 
`OL_logistic` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-`OL_BA`.`NEUR_3_1` <= -100.0) THEN -100.0 ELSE -`OL_BA`.`NEUR_3_1` END >= 100.0) THEN 100.0 ELSE CASE WHEN (-`OL_BA`.`NEUR_3_1` <= -100.0) THEN -100.0 ELSE -`OL_BA`.`NEUR_3_1` END END)) AS `NEUR_3_1` 
FROM `OL_BA`), 
orig_cte AS 
(SELECT `OL_logistic`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, 1.0 - `OL_logistic`.`NEUR_3_1` AS `Proba_0`, `OL_logistic`.`NEUR_3_1` AS `Proba_1`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM `OL_logistic`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Proba` AS `max_Proba` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Proba`) AS `max_Proba` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Proba`, min(union_with_max.class) AS `arg_max_Proba` 
FROM union_with_max 
WHERE union_with_max.`max_Proba` <= union_with_max.`Proba` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Proba` ON score_max.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, arg_max_cte.`arg_max_Proba` AS `Decision`, arg_max_cte.`max_Proba` AS `DecisionProba` 
FROM arg_max_cte