-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `IL` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CAST(`ADS`.`Feature_0` AS FLOAT) AS `Feature_0`, CAST(`ADS`.`Feature_1` AS FLOAT) AS `Feature_1`, CAST(`ADS`.`Feature_2` AS FLOAT) AS `Feature_2`, CAST(`ADS`.`Feature_3` AS FLOAT) AS `Feature_3`, CAST(`ADS`.`Feature_4` AS FLOAT) AS `Feature_4`, CAST(`ADS`.`Feature_5` AS FLOAT) AS `Feature_5`, CAST(`ADS`.`Feature_6` AS FLOAT) AS `Feature_6`, CAST(`ADS`.`Feature_7` AS FLOAT) AS `Feature_7`, CAST(`ADS`.`Feature_8` AS FLOAT) AS `Feature_8`, CAST(`ADS`.`Feature_9` AS FLOAT) AS `Feature_9`, CAST(`ADS`.`Feature_10` AS FLOAT) AS `Feature_10`, CAST(`ADS`.`Feature_11` AS FLOAT) AS `Feature_11`, CAST(`ADS`.`Feature_12` AS FLOAT) AS `Feature_12`, CAST(`ADS`.`Feature_13` AS FLOAT) AS `Feature_13`, CAST(`ADS`.`Feature_14` AS FLOAT) AS `Feature_14`, CAST(`ADS`.`Feature_15` AS FLOAT) AS `Feature_15`, CAST(`ADS`.`Feature_16` AS FLOAT) AS `Feature_16`, CAST(`ADS`.`Feature_17` AS FLOAT) AS `Feature_17`, CAST(`ADS`.`Feature_18` AS FLOAT) AS `Feature_18`, CAST(`ADS`.`Feature_19` AS FLOAT) AS `Feature_19`, CAST(`ADS`.`Feature_20` AS FLOAT) AS `Feature_20`, CAST(`ADS`.`Feature_21` AS FLOAT) AS `Feature_21`, CAST(`ADS`.`Feature_22` AS FLOAT) AS `Feature_22`, CAST(`ADS`.`Feature_23` AS FLOAT) AS `Feature_23`, CAST(`ADS`.`Feature_24` AS FLOAT) AS `Feature_24`, CAST(`ADS`.`Feature_25` AS FLOAT) AS `Feature_25`, CAST(`ADS`.`Feature_26` AS FLOAT) AS `Feature_26`, CAST(`ADS`.`Feature_27` AS FLOAT) AS `Feature_27`, CAST(`ADS`.`Feature_28` AS FLOAT) AS `Feature_28`, CAST(`ADS`.`Feature_29` AS FLOAT) AS `Feature_29`, CAST(`ADS`.`Feature_30` AS FLOAT) AS `Feature_30`, CAST(`ADS`.`Feature_31` AS FLOAT) AS `Feature_31`, CAST(`ADS`.`Feature_32` AS FLOAT) AS `Feature_32`, CAST(`ADS`.`Feature_33` AS FLOAT) AS `Feature_33`, CAST(`ADS`.`Feature_34` AS FLOAT) AS `Feature_34`, CAST(`ADS`.`Feature_35` AS FLOAT) AS `Feature_35`, CAST(`ADS`.`Feature_36` AS FLOAT) AS `Feature_36`, CAST(`ADS`.`Feature_37` AS FLOAT) AS `Feature_37`, CAST(`ADS`.`Feature_38` AS FLOAT) AS `Feature_38`, CAST(`ADS`.`Feature_39` AS FLOAT) AS `Feature_39`, CAST(`ADS`.`Feature_40` AS FLOAT) AS `Feature_40`, CAST(`ADS`.`Feature_41` AS FLOAT) AS `Feature_41`, CAST(`ADS`.`Feature_42` AS FLOAT) AS `Feature_42`, CAST(`ADS`.`Feature_43` AS FLOAT) AS `Feature_43`, CAST(`ADS`.`Feature_44` AS FLOAT) AS `Feature_44`, CAST(`ADS`.`Feature_45` AS FLOAT) AS `Feature_45`, CAST(`ADS`.`Feature_46` AS FLOAT) AS `Feature_46`, CAST(`ADS`.`Feature_47` AS FLOAT) AS `Feature_47`, CAST(`ADS`.`Feature_48` AS FLOAT) AS `Feature_48`, CAST(`ADS`.`Feature_49` AS FLOAT) AS `Feature_49`, CAST(`ADS`.`Feature_50` AS FLOAT) AS `Feature_50`, CAST(`ADS`.`Feature_51` AS FLOAT) AS `Feature_51`, CAST(`ADS`.`Feature_52` AS FLOAT) AS `Feature_52`, CAST(`ADS`.`Feature_53` AS FLOAT) AS `Feature_53`, CAST(`ADS`.`Feature_54` AS FLOAT) AS `Feature_54`, CAST(`ADS`.`Feature_55` AS FLOAT) AS `Feature_55`, CAST(`ADS`.`Feature_56` AS FLOAT) AS `Feature_56`, CAST(`ADS`.`Feature_57` AS FLOAT) AS `Feature_57`, CAST(`ADS`.`Feature_58` AS FLOAT) AS `Feature_58`, CAST(`ADS`.`Feature_59` AS FLOAT) AS `Feature_59`, CAST(`ADS`.`Feature_60` AS FLOAT) AS `Feature_60`, CAST(`ADS`.`Feature_61` AS FLOAT) AS `Feature_61`, CAST(`ADS`.`Feature_62` AS FLOAT) AS `Feature_62`, CAST(`ADS`.`Feature_63` AS FLOAT) AS `Feature_63`, CAST(`ADS`.`Feature_64` AS FLOAT) AS `Feature_64`, CAST(`ADS`.`Feature_65` AS FLOAT) AS `Feature_65`, CAST(`ADS`.`Feature_66` AS FLOAT) AS `Feature_66`, CAST(`ADS`.`Feature_67` AS FLOAT) AS `Feature_67`, CAST(`ADS`.`Feature_68` AS FLOAT) AS `Feature_68`, CAST(`ADS`.`Feature_69` AS FLOAT) AS `Feature_69`, CAST(`ADS`.`Feature_70` AS FLOAT) AS `Feature_70`, CAST(`ADS`.`Feature_71` AS FLOAT) AS `Feature_71`, CAST(`ADS`.`Feature_72` AS FLOAT) AS `Feature_72`, CAST(`ADS`.`Feature_73` AS FLOAT) AS `Feature_73`, CAST(`ADS`.`Feature_74` AS FLOAT) AS `Feature_74`, CAST(`ADS`.`Feature_75` AS FLOAT) AS `Feature_75`, CAST(`ADS`.`Feature_76` AS FLOAT) AS `Feature_76`, CAST(`ADS`.`Feature_77` AS FLOAT) AS `Feature_77`, CAST(`ADS`.`Feature_78` AS FLOAT) AS `Feature_78`, CAST(`ADS`.`Feature_79` AS FLOAT) AS `Feature_79`, CAST(`ADS`.`Feature_80` AS FLOAT) AS `Feature_80`, CAST(`ADS`.`Feature_81` AS FLOAT) AS `Feature_81`, CAST(`ADS`.`Feature_82` AS FLOAT) AS `Feature_82`, CAST(`ADS`.`Feature_83` AS FLOAT) AS `Feature_83`, CAST(`ADS`.`Feature_84` AS FLOAT) AS `Feature_84`, CAST(`ADS`.`Feature_85` AS FLOAT) AS `Feature_85`, CAST(`ADS`.`Feature_86` AS FLOAT) AS `Feature_86`, CAST(`ADS`.`Feature_87` AS FLOAT) AS `Feature_87`, CAST(`ADS`.`Feature_88` AS FLOAT) AS `Feature_88`, CAST(`ADS`.`Feature_89` AS FLOAT) AS `Feature_89`, CAST(`ADS`.`Feature_90` AS FLOAT) AS `Feature_90`, CAST(`ADS`.`Feature_91` AS FLOAT) AS `Feature_91`, CAST(`ADS`.`Feature_92` AS FLOAT) AS `Feature_92`, CAST(`ADS`.`Feature_93` AS FLOAT) AS `Feature_93`, CAST(`ADS`.`Feature_94` AS FLOAT) AS `Feature_94`, CAST(`ADS`.`Feature_95` AS FLOAT) AS `Feature_95`, CAST(`ADS`.`Feature_96` AS FLOAT) AS `Feature_96`, CAST(`ADS`.`Feature_97` AS FLOAT) AS `Feature_97`, CAST(`ADS`.`Feature_98` AS FLOAT) AS `Feature_98`, CAST(`ADS`.`Feature_99` AS FLOAT) AS `Feature_99` 
FROM `BinaryClass_100` AS `ADS`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, -0.141021071608 * `IL`.`Feature_0` + -0.0392388203927 * `IL`.`Feature_1` + -0.013418713407 * `IL`.`Feature_2` + -0.342755042063 * `IL`.`Feature_3` + 0.214461003224 * `IL`.`Feature_4` + 0.0829241437517 * `IL`.`Feature_5` + -0.0647288028457 * `IL`.`Feature_6` + -0.118879665655 * `IL`.`Feature_7` + 0.119054360889 * `IL`.`Feature_8` + -0.143673050247 * `IL`.`Feature_9` + -0.109185183247 * `IL`.`Feature_10` + -0.265770105184 * `IL`.`Feature_11` + -0.0181041440527 * `IL`.`Feature_12` + 0.168032252461 * `IL`.`Feature_13` + 0.14194089212 * `IL`.`Feature_14` + 0.252042814266 * `IL`.`Feature_15` + -0.0872108968488 * `IL`.`Feature_16` + -0.545989419722 * `IL`.`Feature_17` + 0.152968962133 * `IL`.`Feature_18` + -0.143304566103 * `IL`.`Feature_19` + -0.375606825957 * `IL`.`Feature_20` + 0.106368700024 * `IL`.`Feature_21` + 0.0368210306967 * `IL`.`Feature_22` + -0.316700788487 * `IL`.`Feature_23` + 0.0979873283018 * `IL`.`Feature_24` + -0.0284515054051 * `IL`.`Feature_25` + 0.180607174131 * `IL`.`Feature_26` + -0.00307697913732 * `IL`.`Feature_27` + -0.156113775997 * `IL`.`Feature_28` + -0.121898885003 * `IL`.`Feature_29` + 0.223447360561 * `IL`.`Feature_30` + 0.39711865136 * `IL`.`Feature_31` + -0.132112571094 * `IL`.`Feature_32` + 0.0598310599909 * `IL`.`Feature_33` + -0.0448085101484 * `IL`.`Feature_34` + -0.395736041112 * `IL`.`Feature_35` + 0.200148208049 * `IL`.`Feature_36` + -0.0601984674805 * `IL`.`Feature_37` + 0.057091387347 * `IL`.`Feature_38` + 0.369359671109 * `IL`.`Feature_39` + 0.0353163235468 * `IL`.`Feature_40` + 0.142997130078 * `IL`.`Feature_41` + -0.395679044498 * `IL`.`Feature_42` + 0.087671255412 * `IL`.`Feature_43` + 0.39990847778 * `IL`.`Feature_44` + 0.149623658209 * `IL`.`Feature_45` + -0.189978629498 * `IL`.`Feature_46` + 0.305464207849 * `IL`.`Feature_47` + 0.00391188894968 * `IL`.`Feature_48` + 0.222429652286 * `IL`.`Feature_49` + -0.19433174395 * `IL`.`Feature_50` + -0.278391122009 * `IL`.`Feature_51` + -0.305197654224 * `IL`.`Feature_52` + -0.0759210404475 * `IL`.`Feature_53` + 0.213948751236 * `IL`.`Feature_54` + 0.593313589263 * `IL`.`Feature_55` + -0.196472429585 * `IL`.`Feature_56` + -0.374286176683 * `IL`.`Feature_57` + -0.0337348607785 * `IL`.`Feature_58` + 0.488885584058 * `IL`.`Feature_59` + 0.0487167958192 * `IL`.`Feature_60` + 0.312148302642 * `IL`.`Feature_61` + 0.00296181819564 * `IL`.`Feature_62` + -0.0123552568135 * `IL`.`Feature_63` + -0.342334479562 * `IL`.`Feature_64` + -0.237206281739 * `IL`.`Feature_65` + 0.485740113428 * `IL`.`Feature_66` + -0.189333595342 * `IL`.`Feature_67` + -0.0975312709428 * `IL`.`Feature_68` + 0.084067315442 * `IL`.`Feature_69` + 0.254509209889 * `IL`.`Feature_70` + 0.560309799383 * `IL`.`Feature_71` + -0.0707217854755 * `IL`.`Feature_72` + 0.079491421716 * `IL`.`Feature_73` + 0.181592056744 * `IL`.`Feature_74` + -0.137163792702 * `IL`.`Feature_75` + 0.237120091768 * `IL`.`Feature_76` + -0.163122391882 * `IL`.`Feature_77` + 0.0488664484362 * `IL`.`Feature_78` + -0.0200709539448 * `IL`.`Feature_79` + -0.270744892917 * `IL`.`Feature_80` + 0.325055112823 * `IL`.`Feature_81` + -0.221705219851 * `IL`.`Feature_82` + 0.156783644436 * `IL`.`Feature_83` + -0.0999857285664 * `IL`.`Feature_84` + 0.234477857182 * `IL`.`Feature_85` + 0.223554912998 * `IL`.`Feature_86` + -0.32672950223 * `IL`.`Feature_87` + -0.358136570649 * `IL`.`Feature_88` + 0.217428302039 * `IL`.`Feature_89` + -0.0714765079654 * `IL`.`Feature_90` + 0.0533625719986 * `IL`.`Feature_91` + -0.0756423279163 * `IL`.`Feature_92` + -0.265912904185 * `IL`.`Feature_93` + 0.23540864181 * `IL`.`Feature_94` + -0.0178498279635 * `IL`.`Feature_95` + -0.197823562184 * `IL`.`Feature_96` + 0.00159738004528 * `IL`.`Feature_97` + 0.471655077566 * `IL`.`Feature_98` + -0.0492024311679 * `IL`.`Feature_99` + 0.0916803916539 AS `NEUR_1_1`, 0.317627648884 * `IL`.`Feature_0` + -0.290763089525 * `IL`.`Feature_1` + -0.246894975167 * `IL`.`Feature_2` + 0.477693988665 * `IL`.`Feature_3` + -1.16629859736 * `IL`.`Feature_4` + -0.228128116397 * `IL`.`Feature_5` + 0.306633151273 * `IL`.`Feature_6` + -0.14868057531 * `IL`.`Feature_7` + 0.0978494353385 * `IL`.`Feature_8` + 0.326079493362 * `IL`.`Feature_9` + -0.56569737719 * `IL`.`Feature_10` + -0.458738970083 * `IL`.`Feature_11` + -0.486365976287 * `IL`.`Feature_12` + 0.818626535532 * `IL`.`Feature_13` + -0.27992867083 * `IL`.`Feature_14` + -0.224436134521 * `IL`.`Feature_15` + 0.35926523575 * `IL`.`Feature_16` + -0.0685778666705 * `IL`.`Feature_17` + -0.445864793875 * `IL`.`Feature_18` + 0.448655886539 * `IL`.`Feature_19` + 0.355665391731 * `IL`.`Feature_20` + 0.0960940925042 * `IL`.`Feature_21` + 0.19493836334 * `IL`.`Feature_22` + 0.137416274759 * `IL`.`Feature_23` + 0.177486132161 * `IL`.`Feature_24` + -0.103848022822 * `IL`.`Feature_25` + -0.236074610111 * `IL`.`Feature_26` + 0.00278604760751 * `IL`.`Feature_27` + 0.45089586158 * `IL`.`Feature_28` + 0.155344008358 * `IL`.`Feature_29` + -0.511306205148 * `IL`.`Feature_30` + -0.571677459981 * `IL`.`Feature_31` + -1.20295871106 * `IL`.`Feature_32` + -0.933318349579 * `IL`.`Feature_33` + 0.0146748751172 * `IL`.`Feature_34` + 0.519672882996 * `IL`.`Feature_35` + -0.257296598094 * `IL`.`Feature_36` + -0.217533166929 * `IL`.`Feature_37` + -0.345210386009 * `IL`.`Feature_38` + -0.571339099676 * `IL`.`Feature_39` + -0.349238072692 * `IL`.`Feature_40` + -0.263175804346 * `IL`.`Feature_41` + 0.258085092908 * `IL`.`Feature_42` + 0.0704207806085 * `IL`.`Feature_43` + -0.348620572732 * `IL`.`Feature_44` + -0.347887278707 * `IL`.`Feature_45` + 0.405246569462 * `IL`.`Feature_46` + 0.00735317075557 * `IL`.`Feature_47` + -0.501397137764 * `IL`.`Feature_48` + -0.314542358027 * `IL`.`Feature_49` + -0.00998963991069 * `IL`.`Feature_50` + 0.773142291667 * `IL`.`Feature_51` + 4.34620194086e-05 * `IL`.`Feature_52` + -0.17749288994 * `IL`.`Feature_53` + -0.30472335927 * `IL`.`Feature_54` + -0.528471474063 * `IL`.`Feature_55` + -0.0153069198485 * `IL`.`Feature_56` + 1.43927963023 * `IL`.`Feature_57` + 0.0895963962762 * `IL`.`Feature_58` + -0.332300858883 * `IL`.`Feature_59` + -0.833489054809 * `IL`.`Feature_60` + -0.110125566496 * `IL`.`Feature_61` + 0.3858486788 * `IL`.`Feature_62` + 0.0302373686248 * `IL`.`Feature_63` + 0.739447609321 * `IL`.`Feature_64` + 0.0894830877962 * `IL`.`Feature_65` + 0.111916784552 * `IL`.`Feature_66` + 0.648046590807 * `IL`.`Feature_67` + 0.276703054334 * `IL`.`Feature_68` + 0.366824870833 * `IL`.`Feature_69` + -0.081595298418 * `IL`.`Feature_70` + 0.317272006843 * `IL`.`Feature_71` + 0.401098688735 * `IL`.`Feature_72` + 0.131010388628 * `IL`.`Feature_73` + 0.150625265378 * `IL`.`Feature_74` + 0.835999629433 * `IL`.`Feature_75` + 0.263997071867 * `IL`.`Feature_76` + -0.419926175018 * `IL`.`Feature_77` + -0.138610572599 * `IL`.`Feature_78` + -0.45656184067 * `IL`.`Feature_79` + 0.0587078607457 * `IL`.`Feature_80` + -0.144046567276 * `IL`.`Feature_81` + -0.213010570145 * `IL`.`Feature_82` + 0.403224973472 * `IL`.`Feature_83` + -0.284519788454 * `IL`.`Feature_84` + 0.276276509257 * `IL`.`Feature_85` + -0.489967511297 * `IL`.`Feature_86` + 0.236563861532 * `IL`.`Feature_87` + -0.272975739614 * `IL`.`Feature_88` + -0.664712084412 * `IL`.`Feature_89` + -0.0895866234498 * `IL`.`Feature_90` + -0.577148961966 * `IL`.`Feature_91` + 0.327965483689 * `IL`.`Feature_92` + 0.53042199824 * `IL`.`Feature_93` + -0.0735016517439 * `IL`.`Feature_94` + 0.130196786809 * `IL`.`Feature_95` + 0.801658255286 * `IL`.`Feature_96` + -0.99176418939 * `IL`.`Feature_97` + -0.333032766824 * `IL`.`Feature_98` + -0.0802186274729 * `IL`.`Feature_99` + -0.457665350393 AS `NEUR_1_2`, 1.42910872533 * `IL`.`Feature_0` + -0.800456352031 * `IL`.`Feature_1` + -0.254089959325 * `IL`.`Feature_2` + -0.0104578129886 * `IL`.`Feature_3` + -1.20435375972 * `IL`.`Feature_4` + 0.695323027657 * `IL`.`Feature_5` + 0.954974250912 * `IL`.`Feature_6` + -0.308327194688 * `IL`.`Feature_7` + 0.0695535663588 * `IL`.`Feature_8` + 1.15933895294 * `IL`.`Feature_9` + -0.940528591593 * `IL`.`Feature_10` + 0.921208719337 * `IL`.`Feature_11` + 0.793915981815 * `IL`.`Feature_12` + 0.115928267734 * `IL`.`Feature_13` + -0.384369808242 * `IL`.`Feature_14` + -1.12697028487 * `IL`.`Feature_15` + -0.100421781441 * `IL`.`Feature_16` + -0.307670049659 * `IL`.`Feature_17` + -0.619319992538 * `IL`.`Feature_18` + 0.0438863028971 * `IL`.`Feature_19` + -0.577280985772 * `IL`.`Feature_20` + 0.745633705122 * `IL`.`Feature_21` + 0.100876960718 * `IL`.`Feature_22` + 0.509070093572 * `IL`.`Feature_23` + 0.314862902237 * `IL`.`Feature_24` + -1.00971405775 * `IL`.`Feature_25` + -0.494072137306 * `IL`.`Feature_26` + 0.84847199421 * `IL`.`Feature_27` + -1.41322805008 * `IL`.`Feature_28` + 0.470873027701 * `IL`.`Feature_29` + -0.148724294139 * `IL`.`Feature_30` + -0.326024992728 * `IL`.`Feature_31` + -0.108619971677 * `IL`.`Feature_32` + -0.967721259579 * `IL`.`Feature_33` + 0.248761638586 * `IL`.`Feature_34` + 0.630956812688 * `IL`.`Feature_35` + -1.27074806591 * `IL`.`Feature_36` + 1.18520322662 * `IL`.`Feature_37` + -0.761670533839 * `IL`.`Feature_38` + -0.61883791494 * `IL`.`Feature_39` + -0.075516160717 * `IL`.`Feature_40` + -0.814139888018 * `IL`.`Feature_41` + 0.42644908014 * `IL`.`Feature_42` + -0.495380083087 * `IL`.`Feature_43` + -0.714677887869 * `IL`.`Feature_44` + -0.900166364546 * `IL`.`Feature_45` + 0.929035921915 * `IL`.`Feature_46` + 1.19439883884 * `IL`.`Feature_47` + -0.57271337929 * `IL`.`Feature_48` + -0.116594000441 * `IL`.`Feature_49` + 0.115379497873 * `IL`.`Feature_50` + 0.749788384357 * `IL`.`Feature_51` + 0.0293290448781 * `IL`.`Feature_52` + -0.23631062769 * `IL`.`Feature_53` + 0.528056332623 * `IL`.`Feature_54` + -0.847089856081 * `IL`.`Feature_55` + 0.638942405748 * `IL`.`Feature_56` + 1.22706092752 * `IL`.`Feature_57` + 0.390810658159 * `IL`.`Feature_58` + -0.0981117728208 * `IL`.`Feature_59` + 0.611938034403 * `IL`.`Feature_60` + 0.467108767172 * `IL`.`Feature_61` + 0.127828534832 * `IL`.`Feature_62` + -0.0136219754315 * `IL`.`Feature_63` + -0.048038337825 * `IL`.`Feature_64` + -0.205879987695 * `IL`.`Feature_65` + -0.995977888934 * `IL`.`Feature_66` + -0.852514574705 * `IL`.`Feature_67` + -0.86374332206 * `IL`.`Feature_68` + 0.150143016345 * `IL`.`Feature_69` + -0.176840968147 * `IL`.`Feature_70` + -1.31432710456 * `IL`.`Feature_71` + -0.625017199472 * `IL`.`Feature_72` + -0.395034445871 * `IL`.`Feature_73` + 0.664582732946 * `IL`.`Feature_74` + 0.516780165177 * `IL`.`Feature_75` + 0.200199728576 * `IL`.`Feature_76` + -0.247262560263 * `IL`.`Feature_77` + 0.520372178985 * `IL`.`Feature_78` + -0.110207432162 * `IL`.`Feature_79` + -1.08750513699 * `IL`.`Feature_80` + -0.745693905955 * `IL`.`Feature_81` + 0.559613188741 * `IL`.`Feature_82` + 0.553185634601 * `IL`.`Feature_83` + -0.174436710022 * `IL`.`Feature_84` + 0.142708707762 * `IL`.`Feature_85` + -0.136179171087 * `IL`.`Feature_86` + -0.365059692536 * `IL`.`Feature_87` + 1.19656402176 * `IL`.`Feature_88` + -0.975611384988 * `IL`.`Feature_89` + 0.141938303725 * `IL`.`Feature_90` + -0.888749583677 * `IL`.`Feature_91` + 1.55974318103 * `IL`.`Feature_92` + -1.31480657863 * `IL`.`Feature_93` + 0.377549378913 * `IL`.`Feature_94` + 0.648392382916 * `IL`.`Feature_95` + 0.580390482888 * `IL`.`Feature_96` + 0.38730445028 * `IL`.`Feature_97` + -1.02833474107 * `IL`.`Feature_98` + 0.789272592323 * `IL`.`Feature_99` + 1.05545473377 AS `NEUR_1_3` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_1`.`NEUR_1_1` >= 0.0) THEN `HL_BA_1`.`NEUR_1_1` ELSE 0.0 END AS `NEUR_1_1`, CASE WHEN (`HL_BA_1`.`NEUR_1_2` >= 0.0) THEN `HL_BA_1`.`NEUR_1_2` ELSE 0.0 END AS `NEUR_1_2`, CASE WHEN (`HL_BA_1`.`NEUR_1_3` >= 0.0) THEN `HL_BA_1`.`NEUR_1_3` ELSE 0.0 END AS `NEUR_1_3` 
FROM `HL_BA_1`), 
`HL_BA_2` AS 
(SELECT `HL_1_relu`.`KEY` AS `KEY`, -0.535226398568 * `HL_1_relu`.`NEUR_1_1` + 0.439337951213 * `HL_1_relu`.`NEUR_1_2` + 2.58281044934 * `HL_1_relu`.`NEUR_1_3` + -0.848328546758 AS `NEUR_2_1`, -2.08207976531 * `HL_1_relu`.`NEUR_1_1` + -0.264664252748 * `HL_1_relu`.`NEUR_1_2` + 0.994477859313 * `HL_1_relu`.`NEUR_1_3` + 0.394614073471 AS `NEUR_2_2`, 0.0727203658356 * `HL_1_relu`.`NEUR_1_1` + 0.501663377472 * `HL_1_relu`.`NEUR_1_2` + 2.1080760364 * `HL_1_relu`.`NEUR_1_3` + -0.775057904547 AS `NEUR_2_3`, -0.690523516444 * `HL_1_relu`.`NEUR_1_1` + 0.292010093466 * `HL_1_relu`.`NEUR_1_2` + -1.04975253954 * `HL_1_relu`.`NEUR_1_3` + -1.34232414003 AS `NEUR_2_4`, -0.60858197851 * `HL_1_relu`.`NEUR_1_1` + -0.377194459389 * `HL_1_relu`.`NEUR_1_2` + -0.672156949187 * `HL_1_relu`.`NEUR_1_3` + -0.018078316227 AS `NEUR_2_5` 
FROM `HL_1_relu`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_2`.`NEUR_2_1` >= 0.0) THEN `HL_BA_2`.`NEUR_2_1` ELSE 0.0 END AS `NEUR_2_1`, CASE WHEN (`HL_BA_2`.`NEUR_2_2` >= 0.0) THEN `HL_BA_2`.`NEUR_2_2` ELSE 0.0 END AS `NEUR_2_2`, CASE WHEN (`HL_BA_2`.`NEUR_2_3` >= 0.0) THEN `HL_BA_2`.`NEUR_2_3` ELSE 0.0 END AS `NEUR_2_3`, CASE WHEN (`HL_BA_2`.`NEUR_2_4` >= 0.0) THEN `HL_BA_2`.`NEUR_2_4` ELSE 0.0 END AS `NEUR_2_4`, CASE WHEN (`HL_BA_2`.`NEUR_2_5` >= 0.0) THEN `HL_BA_2`.`NEUR_2_5` ELSE 0.0 END AS `NEUR_2_5` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, 2.87944284082 * `HL_2_relu`.`NEUR_2_1` + 5.51358619904 * `HL_2_relu`.`NEUR_2_2` + 1.21425808916 * `HL_2_relu`.`NEUR_2_3` + 10.4347762609 * `HL_2_relu`.`NEUR_2_4` + -0.273131878439 * `HL_2_relu`.`NEUR_2_5` + -11.3084994095 AS `NEUR_3_1` 
FROM `HL_2_relu`), 
`OL_logistic` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-`OL_BA`.`NEUR_3_1`)) AS `NEUR_3_1` 
FROM `OL_BA`), 
`orig_cte` AS 
(SELECT `OL_logistic`.`KEY` AS `KEY`, CAST(NULL AS FLOAT) AS `Score_0`, CAST(NULL AS FLOAT) AS `Score_1`, 1.0 - `OL_logistic`.`NEUR_3_1` AS `Proba_0`, `OL_logistic`.`NEUR_3_1` AS `Proba_1`, CAST(NULL AS FLOAT) AS `LogProba_0`, CAST(NULL AS FLOAT) AS `LogProba_1`, CAST(NULL AS INT) AS `Decision`, CAST(NULL AS FLOAT) AS `DecisionProba` 
FROM `OL_logistic`), 
`score_class_union` AS 
(SELECT `scu`.`KEY_u` AS `KEY_u`, `scu`.`class` AS `class`, `scu`.`LogProba` AS `LogProba`, `scu`.`Proba` AS `Proba`, `scu`.`Score` AS `Score` 
FROM (SELECT `orig_cte`.`KEY` AS `KEY_u`, 0 AS `class`, `orig_cte`.`LogProba_0` AS `LogProba`, `orig_cte`.`Proba_0` AS `Proba`, `orig_cte`.`Score_0` AS `Score` 
FROM `orig_cte` UNION ALL SELECT `orig_cte`.`KEY` AS `KEY_u`, 1 AS `class`, `orig_cte`.`LogProba_1` AS `LogProba`, `orig_cte`.`Proba_1` AS `Proba`, `orig_cte`.`Score_1` AS `Score` 
FROM `orig_cte`) AS `scu`), 
`score_max` AS 
(SELECT `orig_cte`.`KEY` AS `KEY`, `orig_cte`.`Score_0` AS `Score_0`, `orig_cte`.`Score_1` AS `Score_1`, `orig_cte`.`Proba_0` AS `Proba_0`, `orig_cte`.`Proba_1` AS `Proba_1`, `orig_cte`.`LogProba_0` AS `LogProba_0`, `orig_cte`.`LogProba_1` AS `LogProba_1`, `orig_cte`.`Decision` AS `Decision`, `orig_cte`.`DecisionProba` AS `DecisionProba`, `max_select`.`KEY_m` AS `KEY_m`, `max_select`.`max_Proba` AS `max_Proba` 
FROM `orig_cte` LEFT OUTER JOIN (SELECT `score_class_union`.`KEY_u` AS `KEY_m`, max(`score_class_union`.`Proba`) AS `max_Proba` 
FROM `score_class_union` GROUP BY `score_class_union`.`KEY_u`) AS `max_select` ON `orig_cte`.`KEY` = `max_select`.`KEY_m`), 
`union_with_max` AS 
(SELECT `score_class_union`.`KEY_u` AS `KEY_u`, `score_class_union`.`class` AS `class`, `score_class_union`.`LogProba` AS `LogProba`, `score_class_union`.`Proba` AS `Proba`, `score_class_union`.`Score` AS `Score`, `score_max`.`KEY` AS `KEY`, `score_max`.`Score_0` AS `Score_0`, `score_max`.`Score_1` AS `Score_1`, `score_max`.`Proba_0` AS `Proba_0`, `score_max`.`Proba_1` AS `Proba_1`, `score_max`.`LogProba_0` AS `LogProba_0`, `score_max`.`LogProba_1` AS `LogProba_1`, `score_max`.`Decision` AS `Decision`, `score_max`.`DecisionProba` AS `DecisionProba`, `score_max`.`KEY_m` AS `KEY_m`, `score_max`.`max_Proba` AS `max_Proba` 
FROM `score_class_union` LEFT OUTER JOIN `score_max` ON `score_class_union`.`KEY_u` = `score_max`.`KEY`), 
`arg_max_cte` AS 
(SELECT `score_max`.`KEY` AS `KEY`, `score_max`.`Score_0` AS `Score_0`, `score_max`.`Score_1` AS `Score_1`, `score_max`.`Proba_0` AS `Proba_0`, `score_max`.`Proba_1` AS `Proba_1`, `score_max`.`LogProba_0` AS `LogProba_0`, `score_max`.`LogProba_1` AS `LogProba_1`, `score_max`.`Decision` AS `Decision`, `score_max`.`DecisionProba` AS `DecisionProba`, `score_max`.`KEY_m` AS `KEY_m`, `score_max`.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM `score_max` LEFT OUTER JOIN (SELECT `union_with_max`.`KEY` AS `KEY_Proba`, min(`union_with_max`.`class`) AS `arg_max_Proba` 
FROM `union_with_max` 
WHERE `union_with_max`.`max_Proba` <= `union_with_max`.`Proba` GROUP BY `union_with_max`.`KEY`) AS `arg_max_t_Proba` ON `score_max`.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT `arg_max_cte`.`KEY` AS `KEY`, `arg_max_cte`.`Score_0` AS `Score_0`, `arg_max_cte`.`Score_1` AS `Score_1`, `arg_max_cte`.`Proba_0` AS `Proba_0`, `arg_max_cte`.`Proba_1` AS `Proba_1`, CASE WHEN (`arg_max_cte`.`Proba_0` IS NULL OR `arg_max_cte`.`Proba_0` > 0.0) THEN log(`arg_max_cte`.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`arg_max_cte`.`Proba_1` IS NULL OR `arg_max_cte`.`Proba_1` > 0.0) THEN log(`arg_max_cte`.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, `arg_max_cte`.`arg_max_Proba` AS `Decision`, `arg_max_cte`.`max_Proba` AS `DecisionProba` 
FROM `arg_max_cte`