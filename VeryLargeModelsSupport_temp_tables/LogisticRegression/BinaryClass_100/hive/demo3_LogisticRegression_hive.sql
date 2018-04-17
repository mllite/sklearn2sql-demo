-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LogisticRegression
-- Dataset : BinaryClass_100
-- Database : hive


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH `linear_input` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CAST(`ADS`.`Feature_0` AS FLOAT) AS `Feature_0`, CAST(`ADS`.`Feature_1` AS FLOAT) AS `Feature_1`, CAST(`ADS`.`Feature_2` AS FLOAT) AS `Feature_2`, CAST(`ADS`.`Feature_3` AS FLOAT) AS `Feature_3`, CAST(`ADS`.`Feature_4` AS FLOAT) AS `Feature_4`, CAST(`ADS`.`Feature_5` AS FLOAT) AS `Feature_5`, CAST(`ADS`.`Feature_6` AS FLOAT) AS `Feature_6`, CAST(`ADS`.`Feature_7` AS FLOAT) AS `Feature_7`, CAST(`ADS`.`Feature_8` AS FLOAT) AS `Feature_8`, CAST(`ADS`.`Feature_9` AS FLOAT) AS `Feature_9`, CAST(`ADS`.`Feature_10` AS FLOAT) AS `Feature_10`, CAST(`ADS`.`Feature_11` AS FLOAT) AS `Feature_11`, CAST(`ADS`.`Feature_12` AS FLOAT) AS `Feature_12`, CAST(`ADS`.`Feature_13` AS FLOAT) AS `Feature_13`, CAST(`ADS`.`Feature_14` AS FLOAT) AS `Feature_14`, CAST(`ADS`.`Feature_15` AS FLOAT) AS `Feature_15`, CAST(`ADS`.`Feature_16` AS FLOAT) AS `Feature_16`, CAST(`ADS`.`Feature_17` AS FLOAT) AS `Feature_17`, CAST(`ADS`.`Feature_18` AS FLOAT) AS `Feature_18`, CAST(`ADS`.`Feature_19` AS FLOAT) AS `Feature_19`, CAST(`ADS`.`Feature_20` AS FLOAT) AS `Feature_20`, CAST(`ADS`.`Feature_21` AS FLOAT) AS `Feature_21`, CAST(`ADS`.`Feature_22` AS FLOAT) AS `Feature_22`, CAST(`ADS`.`Feature_23` AS FLOAT) AS `Feature_23`, CAST(`ADS`.`Feature_24` AS FLOAT) AS `Feature_24`, CAST(`ADS`.`Feature_25` AS FLOAT) AS `Feature_25`, CAST(`ADS`.`Feature_26` AS FLOAT) AS `Feature_26`, CAST(`ADS`.`Feature_27` AS FLOAT) AS `Feature_27`, CAST(`ADS`.`Feature_28` AS FLOAT) AS `Feature_28`, CAST(`ADS`.`Feature_29` AS FLOAT) AS `Feature_29`, CAST(`ADS`.`Feature_30` AS FLOAT) AS `Feature_30`, CAST(`ADS`.`Feature_31` AS FLOAT) AS `Feature_31`, CAST(`ADS`.`Feature_32` AS FLOAT) AS `Feature_32`, CAST(`ADS`.`Feature_33` AS FLOAT) AS `Feature_33`, CAST(`ADS`.`Feature_34` AS FLOAT) AS `Feature_34`, CAST(`ADS`.`Feature_35` AS FLOAT) AS `Feature_35`, CAST(`ADS`.`Feature_36` AS FLOAT) AS `Feature_36`, CAST(`ADS`.`Feature_37` AS FLOAT) AS `Feature_37`, CAST(`ADS`.`Feature_38` AS FLOAT) AS `Feature_38`, CAST(`ADS`.`Feature_39` AS FLOAT) AS `Feature_39`, CAST(`ADS`.`Feature_40` AS FLOAT) AS `Feature_40`, CAST(`ADS`.`Feature_41` AS FLOAT) AS `Feature_41`, CAST(`ADS`.`Feature_42` AS FLOAT) AS `Feature_42`, CAST(`ADS`.`Feature_43` AS FLOAT) AS `Feature_43`, CAST(`ADS`.`Feature_44` AS FLOAT) AS `Feature_44`, CAST(`ADS`.`Feature_45` AS FLOAT) AS `Feature_45`, CAST(`ADS`.`Feature_46` AS FLOAT) AS `Feature_46`, CAST(`ADS`.`Feature_47` AS FLOAT) AS `Feature_47`, CAST(`ADS`.`Feature_48` AS FLOAT) AS `Feature_48`, CAST(`ADS`.`Feature_49` AS FLOAT) AS `Feature_49`, CAST(`ADS`.`Feature_50` AS FLOAT) AS `Feature_50`, CAST(`ADS`.`Feature_51` AS FLOAT) AS `Feature_51`, CAST(`ADS`.`Feature_52` AS FLOAT) AS `Feature_52`, CAST(`ADS`.`Feature_53` AS FLOAT) AS `Feature_53`, CAST(`ADS`.`Feature_54` AS FLOAT) AS `Feature_54`, CAST(`ADS`.`Feature_55` AS FLOAT) AS `Feature_55`, CAST(`ADS`.`Feature_56` AS FLOAT) AS `Feature_56`, CAST(`ADS`.`Feature_57` AS FLOAT) AS `Feature_57`, CAST(`ADS`.`Feature_58` AS FLOAT) AS `Feature_58`, CAST(`ADS`.`Feature_59` AS FLOAT) AS `Feature_59`, CAST(`ADS`.`Feature_60` AS FLOAT) AS `Feature_60`, CAST(`ADS`.`Feature_61` AS FLOAT) AS `Feature_61`, CAST(`ADS`.`Feature_62` AS FLOAT) AS `Feature_62`, CAST(`ADS`.`Feature_63` AS FLOAT) AS `Feature_63`, CAST(`ADS`.`Feature_64` AS FLOAT) AS `Feature_64`, CAST(`ADS`.`Feature_65` AS FLOAT) AS `Feature_65`, CAST(`ADS`.`Feature_66` AS FLOAT) AS `Feature_66`, CAST(`ADS`.`Feature_67` AS FLOAT) AS `Feature_67`, CAST(`ADS`.`Feature_68` AS FLOAT) AS `Feature_68`, CAST(`ADS`.`Feature_69` AS FLOAT) AS `Feature_69`, CAST(`ADS`.`Feature_70` AS FLOAT) AS `Feature_70`, CAST(`ADS`.`Feature_71` AS FLOAT) AS `Feature_71`, CAST(`ADS`.`Feature_72` AS FLOAT) AS `Feature_72`, CAST(`ADS`.`Feature_73` AS FLOAT) AS `Feature_73`, CAST(`ADS`.`Feature_74` AS FLOAT) AS `Feature_74`, CAST(`ADS`.`Feature_75` AS FLOAT) AS `Feature_75`, CAST(`ADS`.`Feature_76` AS FLOAT) AS `Feature_76`, CAST(`ADS`.`Feature_77` AS FLOAT) AS `Feature_77`, CAST(`ADS`.`Feature_78` AS FLOAT) AS `Feature_78`, CAST(`ADS`.`Feature_79` AS FLOAT) AS `Feature_79`, CAST(`ADS`.`Feature_80` AS FLOAT) AS `Feature_80`, CAST(`ADS`.`Feature_81` AS FLOAT) AS `Feature_81`, CAST(`ADS`.`Feature_82` AS FLOAT) AS `Feature_82`, CAST(`ADS`.`Feature_83` AS FLOAT) AS `Feature_83`, CAST(`ADS`.`Feature_84` AS FLOAT) AS `Feature_84`, CAST(`ADS`.`Feature_85` AS FLOAT) AS `Feature_85`, CAST(`ADS`.`Feature_86` AS FLOAT) AS `Feature_86`, CAST(`ADS`.`Feature_87` AS FLOAT) AS `Feature_87`, CAST(`ADS`.`Feature_88` AS FLOAT) AS `Feature_88`, CAST(`ADS`.`Feature_89` AS FLOAT) AS `Feature_89`, CAST(`ADS`.`Feature_90` AS FLOAT) AS `Feature_90`, CAST(`ADS`.`Feature_91` AS FLOAT) AS `Feature_91`, CAST(`ADS`.`Feature_92` AS FLOAT) AS `Feature_92`, CAST(`ADS`.`Feature_93` AS FLOAT) AS `Feature_93`, CAST(`ADS`.`Feature_94` AS FLOAT) AS `Feature_94`, CAST(`ADS`.`Feature_95` AS FLOAT) AS `Feature_95`, CAST(`ADS`.`Feature_96` AS FLOAT) AS `Feature_96`, CAST(`ADS`.`Feature_97` AS FLOAT) AS `Feature_97`, CAST(`ADS`.`Feature_98` AS FLOAT) AS `Feature_98`, CAST(`ADS`.`Feature_99` AS FLOAT) AS `Feature_99` 
FROM `BinaryClass_100` AS `ADS`), 
`linear_model_cte` AS 
(SELECT `linear_input`.`KEY` AS `KEY`, 0.3310762052879447 * `linear_input`.`Feature_0` + 0.14325253176522348 * `linear_input`.`Feature_1` + -0.08611287237220629 * `linear_input`.`Feature_2` + 0.0002207421196659975 * `linear_input`.`Feature_3` + -1.0561475720862195 * `linear_input`.`Feature_4` + 0.579859388616776 * `linear_input`.`Feature_5` + -0.09356294406553792 * `linear_input`.`Feature_6` + -0.08970233298463333 * `linear_input`.`Feature_7` + 0.23229704750351354 * `linear_input`.`Feature_8` + 0.21286610424016242 * `linear_input`.`Feature_9` + -0.15147281948897193 * `linear_input`.`Feature_10` + 0.07562311925461199 * `linear_input`.`Feature_11` + 0.18273876119325042 * `linear_input`.`Feature_12` + 0.09384710816605847 * `linear_input`.`Feature_13` + -0.232646294284842 * `linear_input`.`Feature_14` + -0.38006271543508435 * `linear_input`.`Feature_15` + 0.09413917977737316 * `linear_input`.`Feature_16` + 0.18384376367314006 * `linear_input`.`Feature_17` + -0.32180082257866277 * `linear_input`.`Feature_18` + -0.11353339059155566 * `linear_input`.`Feature_19` + 0.0685314663620175 * `linear_input`.`Feature_20` + -0.07487395525407797 * `linear_input`.`Feature_21` + -0.13152143228721622 * `linear_input`.`Feature_22` + -0.05851036519956997 * `linear_input`.`Feature_23` + -0.061044801479436056 * `linear_input`.`Feature_24` + -0.36510907174668406 * `linear_input`.`Feature_25` + -0.1382954882207629 * `linear_input`.`Feature_26` + 0.24459331068399295 * `linear_input`.`Feature_27` + -0.28970888091701447 * `linear_input`.`Feature_28` + 0.08986354957703128 * `linear_input`.`Feature_29` + 0.03289129048454436 * `linear_input`.`Feature_30` + -0.26613048149410795 * `linear_input`.`Feature_31` + 0.14375433819173525 * `linear_input`.`Feature_32` + -0.45820552877175835 * `linear_input`.`Feature_33` + -0.4363421197624709 * `linear_input`.`Feature_34` + 0.02492693173520409 * `linear_input`.`Feature_35` + -0.0951628807304622 * `linear_input`.`Feature_36` + 0.1335366903045361 * `linear_input`.`Feature_37` + -0.02654650735484618 * `linear_input`.`Feature_38` + -0.19453886616038318 * `linear_input`.`Feature_39` + -0.06932516660642397 * `linear_input`.`Feature_40` + -0.18433885051577165 * `linear_input`.`Feature_41` + -0.050274447460075054 * `linear_input`.`Feature_42` + 0.002963533019776128 * `linear_input`.`Feature_43` + -0.48455832174931823 * `linear_input`.`Feature_44` + -0.20259518865145165 * `linear_input`.`Feature_45` + 0.14438343478219176 * `linear_input`.`Feature_46` + -0.0068745985240159 * `linear_input`.`Feature_47` + -0.33147327297235046 * `linear_input`.`Feature_48` + -0.19074531061387548 * `linear_input`.`Feature_49` + 0.005225071149984537 * `linear_input`.`Feature_50` + 0.0704284182514753 * `linear_input`.`Feature_51` + -0.1712898732127352 * `linear_input`.`Feature_52` + 0.2702297208270306 * `linear_input`.`Feature_53` + 0.0008746664367837815 * `linear_input`.`Feature_54` + 0.036896908963382054 * `linear_input`.`Feature_55` + 0.2506480278494163 * `linear_input`.`Feature_56` + 1.1627522749763588 * `linear_input`.`Feature_57` + 0.0017363078699938364 * `linear_input`.`Feature_58` + 0.21017045091113135 * `linear_input`.`Feature_59` + -0.49832825402355335 * `linear_input`.`Feature_60` + -0.014571354992441983 * `linear_input`.`Feature_61` + 0.1369285953448335 * `linear_input`.`Feature_62` + 0.23154438455294937 * `linear_input`.`Feature_63` + 0.15508557547218085 * `linear_input`.`Feature_64` + 0.12882964628436927 * `linear_input`.`Feature_65` + -0.133171278100268 * `linear_input`.`Feature_66` + 0.7526238147004157 * `linear_input`.`Feature_67` + -0.3638816258681595 * `linear_input`.`Feature_68` + -0.16007422483902378 * `linear_input`.`Feature_69` + 0.07985297867566696 * `linear_input`.`Feature_70` + -0.33688978363318733 * `linear_input`.`Feature_71` + -0.1428356861932474 * `linear_input`.`Feature_72` + -0.382765956613322 * `linear_input`.`Feature_73` + 0.13650937247756098 * `linear_input`.`Feature_74` + 0.15985432708487063 * `linear_input`.`Feature_75` + 0.13826945240993707 * `linear_input`.`Feature_76` + -0.4357541146604896 * `linear_input`.`Feature_77` + 0.07884377624250666 * `linear_input`.`Feature_78` + 0.0846755668812626 * `linear_input`.`Feature_79` + -0.2578234046118747 * `linear_input`.`Feature_80` + 0.012393807582453523 * `linear_input`.`Feature_81` + 0.25706717260037154 * `linear_input`.`Feature_82` + 0.07078576998152182 * `linear_input`.`Feature_83` + 0.17827318098103676 * `linear_input`.`Feature_84` + -0.31319200470107406 * `linear_input`.`Feature_85` + -0.16661923512341945 * `linear_input`.`Feature_86` + 0.12641284968247413 * `linear_input`.`Feature_87` + 0.24969316049153273 * `linear_input`.`Feature_88` + -0.1592382197996888 * `linear_input`.`Feature_89` + -0.4180580132814978 * `linear_input`.`Feature_90` + -0.2632247958422403 * `linear_input`.`Feature_91` + 0.37889774452311786 * `linear_input`.`Feature_92` + -0.12634879610630753 * `linear_input`.`Feature_93` + -0.19303290840917162 * `linear_input`.`Feature_94` + -0.5477676184326586 * `linear_input`.`Feature_95` + -0.2043982335238068 * `linear_input`.`Feature_96` + 0.05139355477438413 * `linear_input`.`Feature_97` + -0.006482931473948919 * `linear_input`.`Feature_98` + -0.13573238176030297 * `linear_input`.`Feature_99` + 0.14566180319115182 AS `lincomb` 
FROM `linear_input`)
 SELECT `linear_model_cte`.`KEY` AS `KEY`, -`linear_model_cte`.`lincomb` AS `Score_0`, `linear_model_cte`.`lincomb` AS `Score_1`, 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END ELSE 100.0 END)) AS `Proba_0`, 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END ELSE 100.0 END)) AS `Proba_1`, CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END ELSE 100.0 END)) IS NULL OR 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END ELSE 100.0 END)) > 0.0) THEN log(1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END ELSE 100.0 END))) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END ELSE 100.0 END)) IS NULL OR 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END ELSE 100.0 END)) > 0.0) THEN log(1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END ELSE 100.0 END))) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`linear_model_cte`.`lincomb` > 0.0) THEN 1 ELSE 0 END AS `Decision`, CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END ELSE 100.0 END)) <= 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END ELSE 100.0 END))) THEN 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END ELSE 100.0 END)) ELSE 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -`linear_model_cte`.`lincomb`) THEN -`linear_model_cte`.`lincomb` ELSE -100.0 END ELSE 100.0 END)) END AS `DecisionProba` 
FROM `linear_model_cte`