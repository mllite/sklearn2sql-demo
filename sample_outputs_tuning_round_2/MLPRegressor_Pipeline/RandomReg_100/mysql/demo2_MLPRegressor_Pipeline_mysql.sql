-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN -0.0812808530019 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN -0.134368051725 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN -0.117133543927 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.103145256915 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.048598770616 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.0998569467735 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.0672774556566 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.162238409285 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.0406936285261 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.0516599050886 ELSE `ADS`.`Feature_9` END AS impter_11, CASE WHEN (`ADS`.`Feature_10` IS NULL) THEN 0.101790678393 ELSE `ADS`.`Feature_10` END AS impter_12, CASE WHEN (`ADS`.`Feature_11` IS NULL) THEN -0.17597473627 ELSE `ADS`.`Feature_11` END AS impter_13, CASE WHEN (`ADS`.`Feature_12` IS NULL) THEN -0.096751384941 ELSE `ADS`.`Feature_12` END AS impter_14, CASE WHEN (`ADS`.`Feature_13` IS NULL) THEN -0.0460865691263 ELSE `ADS`.`Feature_13` END AS impter_15, CASE WHEN (`ADS`.`Feature_14` IS NULL) THEN 0.101658522861 ELSE `ADS`.`Feature_14` END AS impter_16, CASE WHEN (`ADS`.`Feature_15` IS NULL) THEN 0.111799030108 ELSE `ADS`.`Feature_15` END AS impter_17, CASE WHEN (`ADS`.`Feature_16` IS NULL) THEN -0.00611023335938 ELSE `ADS`.`Feature_16` END AS impter_18, CASE WHEN (`ADS`.`Feature_17` IS NULL) THEN 0.0714470406891 ELSE `ADS`.`Feature_17` END AS impter_19, CASE WHEN (`ADS`.`Feature_18` IS NULL) THEN -0.0880845865012 ELSE `ADS`.`Feature_18` END AS impter_20, CASE WHEN (`ADS`.`Feature_19` IS NULL) THEN -0.0718279900088 ELSE `ADS`.`Feature_19` END AS impter_21, CASE WHEN (`ADS`.`Feature_20` IS NULL) THEN -0.0723020084731 ELSE `ADS`.`Feature_20` END AS impter_22, CASE WHEN (`ADS`.`Feature_21` IS NULL) THEN 0.0289669307994 ELSE `ADS`.`Feature_21` END AS impter_23, CASE WHEN (`ADS`.`Feature_22` IS NULL) THEN 0.21388217633 ELSE `ADS`.`Feature_22` END AS impter_24, CASE WHEN (`ADS`.`Feature_23` IS NULL) THEN -0.0666929791941 ELSE `ADS`.`Feature_23` END AS impter_25, CASE WHEN (`ADS`.`Feature_24` IS NULL) THEN 0.04615234855 ELSE `ADS`.`Feature_24` END AS impter_26, CASE WHEN (`ADS`.`Feature_25` IS NULL) THEN 0.0324951322277 ELSE `ADS`.`Feature_25` END AS impter_27, CASE WHEN (`ADS`.`Feature_26` IS NULL) THEN 0.0522423933061 ELSE `ADS`.`Feature_26` END AS impter_28, CASE WHEN (`ADS`.`Feature_27` IS NULL) THEN 0.0187458719666 ELSE `ADS`.`Feature_27` END AS impter_29, CASE WHEN (`ADS`.`Feature_28` IS NULL) THEN 0.0155530792298 ELSE `ADS`.`Feature_28` END AS impter_30, CASE WHEN (`ADS`.`Feature_29` IS NULL) THEN 0.22581537299 ELSE `ADS`.`Feature_29` END AS impter_31, CASE WHEN (`ADS`.`Feature_30` IS NULL) THEN -0.169898577788 ELSE `ADS`.`Feature_30` END AS impter_32, CASE WHEN (`ADS`.`Feature_31` IS NULL) THEN 0.036044309157 ELSE `ADS`.`Feature_31` END AS impter_33, CASE WHEN (`ADS`.`Feature_32` IS NULL) THEN -0.171993241626 ELSE `ADS`.`Feature_32` END AS impter_34, CASE WHEN (`ADS`.`Feature_33` IS NULL) THEN 0.137814188879 ELSE `ADS`.`Feature_33` END AS impter_35, CASE WHEN (`ADS`.`Feature_34` IS NULL) THEN -0.00243821096422 ELSE `ADS`.`Feature_34` END AS impter_36, CASE WHEN (`ADS`.`Feature_35` IS NULL) THEN 0.0608337491315 ELSE `ADS`.`Feature_35` END AS impter_37, CASE WHEN (`ADS`.`Feature_36` IS NULL) THEN -0.1890599869 ELSE `ADS`.`Feature_36` END AS impter_38, CASE WHEN (`ADS`.`Feature_37` IS NULL) THEN -0.0963521927847 ELSE `ADS`.`Feature_37` END AS impter_39, CASE WHEN (`ADS`.`Feature_38` IS NULL) THEN -0.101606675074 ELSE `ADS`.`Feature_38` END AS impter_40, CASE WHEN (`ADS`.`Feature_39` IS NULL) THEN 0.0647525054158 ELSE `ADS`.`Feature_39` END AS impter_41, CASE WHEN (`ADS`.`Feature_40` IS NULL) THEN -0.302643050361 ELSE `ADS`.`Feature_40` END AS impter_42, CASE WHEN (`ADS`.`Feature_41` IS NULL) THEN -0.132641556819 ELSE `ADS`.`Feature_41` END AS impter_43, CASE WHEN (`ADS`.`Feature_42` IS NULL) THEN -0.133405478073 ELSE `ADS`.`Feature_42` END AS impter_44, CASE WHEN (`ADS`.`Feature_43` IS NULL) THEN -0.00114360097028 ELSE `ADS`.`Feature_43` END AS impter_45, CASE WHEN (`ADS`.`Feature_44` IS NULL) THEN -0.0533515790892 ELSE `ADS`.`Feature_44` END AS impter_46, CASE WHEN (`ADS`.`Feature_45` IS NULL) THEN 0.0171453700269 ELSE `ADS`.`Feature_45` END AS impter_47, CASE WHEN (`ADS`.`Feature_46` IS NULL) THEN -0.0590594495726 ELSE `ADS`.`Feature_46` END AS impter_48, CASE WHEN (`ADS`.`Feature_47` IS NULL) THEN -0.0952887996818 ELSE `ADS`.`Feature_47` END AS impter_49, CASE WHEN (`ADS`.`Feature_48` IS NULL) THEN -0.157813634634 ELSE `ADS`.`Feature_48` END AS impter_50, CASE WHEN (`ADS`.`Feature_49` IS NULL) THEN -0.237944333925 ELSE `ADS`.`Feature_49` END AS impter_51, CASE WHEN (`ADS`.`Feature_50` IS NULL) THEN 0.13863850693 ELSE `ADS`.`Feature_50` END AS impter_52, CASE WHEN (`ADS`.`Feature_51` IS NULL) THEN -0.0169962199149 ELSE `ADS`.`Feature_51` END AS impter_53, CASE WHEN (`ADS`.`Feature_52` IS NULL) THEN 0.197014900038 ELSE `ADS`.`Feature_52` END AS impter_54, CASE WHEN (`ADS`.`Feature_53` IS NULL) THEN 0.0516299047324 ELSE `ADS`.`Feature_53` END AS impter_55, CASE WHEN (`ADS`.`Feature_54` IS NULL) THEN -0.134530020987 ELSE `ADS`.`Feature_54` END AS impter_56, CASE WHEN (`ADS`.`Feature_55` IS NULL) THEN 0.147893701046 ELSE `ADS`.`Feature_55` END AS impter_57, CASE WHEN (`ADS`.`Feature_56` IS NULL) THEN -0.0131427594384 ELSE `ADS`.`Feature_56` END AS impter_58, CASE WHEN (`ADS`.`Feature_57` IS NULL) THEN -0.0929916299466 ELSE `ADS`.`Feature_57` END AS impter_59, CASE WHEN (`ADS`.`Feature_58` IS NULL) THEN -0.24689492769 ELSE `ADS`.`Feature_58` END AS impter_60, CASE WHEN (`ADS`.`Feature_59` IS NULL) THEN 0.134997271083 ELSE `ADS`.`Feature_59` END AS impter_61, CASE WHEN (`ADS`.`Feature_60` IS NULL) THEN 0.00255440055077 ELSE `ADS`.`Feature_60` END AS impter_62, CASE WHEN (`ADS`.`Feature_61` IS NULL) THEN 0.125273686635 ELSE `ADS`.`Feature_61` END AS impter_63, CASE WHEN (`ADS`.`Feature_62` IS NULL) THEN -0.0373996229606 ELSE `ADS`.`Feature_62` END AS impter_64, CASE WHEN (`ADS`.`Feature_63` IS NULL) THEN -0.0299886958018 ELSE `ADS`.`Feature_63` END AS impter_65, CASE WHEN (`ADS`.`Feature_64` IS NULL) THEN -0.0428608851687 ELSE `ADS`.`Feature_64` END AS impter_66, CASE WHEN (`ADS`.`Feature_65` IS NULL) THEN -0.143834700665 ELSE `ADS`.`Feature_65` END AS impter_67, CASE WHEN (`ADS`.`Feature_66` IS NULL) THEN -0.0526979391089 ELSE `ADS`.`Feature_66` END AS impter_68, CASE WHEN (`ADS`.`Feature_67` IS NULL) THEN 0.0292679402713 ELSE `ADS`.`Feature_67` END AS impter_69, CASE WHEN (`ADS`.`Feature_68` IS NULL) THEN 0.104310808883 ELSE `ADS`.`Feature_68` END AS impter_70, CASE WHEN (`ADS`.`Feature_69` IS NULL) THEN -0.0961968743305 ELSE `ADS`.`Feature_69` END AS impter_71, CASE WHEN (`ADS`.`Feature_70` IS NULL) THEN 0.00673331929833 ELSE `ADS`.`Feature_70` END AS impter_72, CASE WHEN (`ADS`.`Feature_71` IS NULL) THEN 0.0328966593537 ELSE `ADS`.`Feature_71` END AS impter_73, CASE WHEN (`ADS`.`Feature_72` IS NULL) THEN 0.0806427727546 ELSE `ADS`.`Feature_72` END AS impter_74, CASE WHEN (`ADS`.`Feature_73` IS NULL) THEN -0.106035567555 ELSE `ADS`.`Feature_73` END AS impter_75, CASE WHEN (`ADS`.`Feature_74` IS NULL) THEN 0.094891001483 ELSE `ADS`.`Feature_74` END AS impter_76, CASE WHEN (`ADS`.`Feature_75` IS NULL) THEN -0.1966488711 ELSE `ADS`.`Feature_75` END AS impter_77, CASE WHEN (`ADS`.`Feature_76` IS NULL) THEN 0.116526435149 ELSE `ADS`.`Feature_76` END AS impter_78, CASE WHEN (`ADS`.`Feature_77` IS NULL) THEN 0.193402183481 ELSE `ADS`.`Feature_77` END AS impter_79, CASE WHEN (`ADS`.`Feature_78` IS NULL) THEN 0.112097090879 ELSE `ADS`.`Feature_78` END AS impter_80, CASE WHEN (`ADS`.`Feature_79` IS NULL) THEN 0.107090136212 ELSE `ADS`.`Feature_79` END AS impter_81, CASE WHEN (`ADS`.`Feature_80` IS NULL) THEN -0.0103304292092 ELSE `ADS`.`Feature_80` END AS impter_82, CASE WHEN (`ADS`.`Feature_81` IS NULL) THEN 0.110265521044 ELSE `ADS`.`Feature_81` END AS impter_83, CASE WHEN (`ADS`.`Feature_82` IS NULL) THEN 0.0119163458945 ELSE `ADS`.`Feature_82` END AS impter_84, CASE WHEN (`ADS`.`Feature_83` IS NULL) THEN 0.013369825695 ELSE `ADS`.`Feature_83` END AS impter_85, CASE WHEN (`ADS`.`Feature_84` IS NULL) THEN -0.15005120007 ELSE `ADS`.`Feature_84` END AS impter_86, CASE WHEN (`ADS`.`Feature_85` IS NULL) THEN -0.0902217757945 ELSE `ADS`.`Feature_85` END AS impter_87, CASE WHEN (`ADS`.`Feature_86` IS NULL) THEN -0.160296256572 ELSE `ADS`.`Feature_86` END AS impter_88, CASE WHEN (`ADS`.`Feature_87` IS NULL) THEN -0.101270172935 ELSE `ADS`.`Feature_87` END AS impter_89, CASE WHEN (`ADS`.`Feature_88` IS NULL) THEN 0.332354300629 ELSE `ADS`.`Feature_88` END AS impter_90, CASE WHEN (`ADS`.`Feature_89` IS NULL) THEN 0.0517311730608 ELSE `ADS`.`Feature_89` END AS impter_91, CASE WHEN (`ADS`.`Feature_90` IS NULL) THEN 0.10788792122 ELSE `ADS`.`Feature_90` END AS impter_92, CASE WHEN (`ADS`.`Feature_91` IS NULL) THEN 0.214549318747 ELSE `ADS`.`Feature_91` END AS impter_93, CASE WHEN (`ADS`.`Feature_92` IS NULL) THEN -0.163173377699 ELSE `ADS`.`Feature_92` END AS impter_94, CASE WHEN (`ADS`.`Feature_93` IS NULL) THEN -0.224238407688 ELSE `ADS`.`Feature_93` END AS impter_95, CASE WHEN (`ADS`.`Feature_94` IS NULL) THEN -0.276958475653 ELSE `ADS`.`Feature_94` END AS impter_96, CASE WHEN (`ADS`.`Feature_95` IS NULL) THEN 0.037863552135 ELSE `ADS`.`Feature_95` END AS impter_97, CASE WHEN (`ADS`.`Feature_96` IS NULL) THEN -0.0275885280314 ELSE `ADS`.`Feature_96` END AS impter_98, CASE WHEN (`ADS`.`Feature_97` IS NULL) THEN 0.105287788103 ELSE `ADS`.`Feature_97` END AS impter_99, CASE WHEN (`ADS`.`Feature_98` IS NULL) THEN 0.0664070338022 ELSE `ADS`.`Feature_98` END AS impter_100, CASE WHEN (`ADS`.`Feature_99` IS NULL) THEN 0.0656993099584 ELSE `ADS`.`Feature_99` END AS impter_101 
FROM `RandomReg_100` AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - -0.0812808530019) / 1.00004035593 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - -0.134368051725) / 0.883790498818 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - -0.117133543927) / 0.85705690229 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.103145256915) / 1.00291762835 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - 0.048598770616) / 0.912896663254 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - 0.0998569467735) / 0.898709059445 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - 0.0672774556566) / 1.01424476115 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.162238409285) / 1.07476623075 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 0.0406936285261) / 1.02626786723 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.0516599050886) / 0.840243604374 AS scaler_11, (CAST(`ADS_imp_1_OUT`.impter_12 AS DOUBLE) - 0.101790678393) / 1.00682423639 AS scaler_12, (CAST(`ADS_imp_1_OUT`.impter_13 AS DOUBLE) - -0.17597473627) / 0.924071076492 AS scaler_13, (CAST(`ADS_imp_1_OUT`.impter_14 AS DOUBLE) - -0.096751384941) / 0.978379086977 AS scaler_14, (CAST(`ADS_imp_1_OUT`.impter_15 AS DOUBLE) - -0.0460865691263) / 0.978113535429 AS scaler_15, (CAST(`ADS_imp_1_OUT`.impter_16 AS DOUBLE) - 0.101658522861) / 0.901445697871 AS scaler_16, (CAST(`ADS_imp_1_OUT`.impter_17 AS DOUBLE) - 0.111799030108) / 0.977915503486 AS scaler_17, (CAST(`ADS_imp_1_OUT`.impter_18 AS DOUBLE) - -0.00611023335938) / 0.998102069762 AS scaler_18, (CAST(`ADS_imp_1_OUT`.impter_19 AS DOUBLE) - 0.0714470406891) / 0.887481646517 AS scaler_19, (CAST(`ADS_imp_1_OUT`.impter_20 AS DOUBLE) - -0.0880845865012) / 0.839292570374 AS scaler_20, (CAST(`ADS_imp_1_OUT`.impter_21 AS DOUBLE) - -0.0718279900088) / 0.950741976578 AS scaler_21, (CAST(`ADS_imp_1_OUT`.impter_22 AS DOUBLE) - -0.0723020084731) / 1.06682699865 AS scaler_22, (CAST(`ADS_imp_1_OUT`.impter_23 AS DOUBLE) - 0.0289669307994) / 0.990282372492 AS scaler_23, (CAST(`ADS_imp_1_OUT`.impter_24 AS DOUBLE) - 0.21388217633) / 0.862325396878 AS scaler_24, (CAST(`ADS_imp_1_OUT`.impter_25 AS DOUBLE) - -0.0666929791941) / 0.959877056408 AS scaler_25, (CAST(`ADS_imp_1_OUT`.impter_26 AS DOUBLE) - 0.04615234855) / 0.987850288585 AS scaler_26, (CAST(`ADS_imp_1_OUT`.impter_27 AS DOUBLE) - 0.0324951322277) / 0.958395474025 AS scaler_27, (CAST(`ADS_imp_1_OUT`.impter_28 AS DOUBLE) - 0.0522423933061) / 0.977110727504 AS scaler_28, (CAST(`ADS_imp_1_OUT`.impter_29 AS DOUBLE) - 0.0187458719666) / 1.05571992608 AS scaler_29, (CAST(`ADS_imp_1_OUT`.impter_30 AS DOUBLE) - 0.0155530792298) / 0.937648102202 AS scaler_30, (CAST(`ADS_imp_1_OUT`.impter_31 AS DOUBLE) - 0.22581537299) / 1.0513597557 AS scaler_31, (CAST(`ADS_imp_1_OUT`.impter_32 AS DOUBLE) - -0.169898577788) / 1.05781688636 AS scaler_32, (CAST(`ADS_imp_1_OUT`.impter_33 AS DOUBLE) - 0.036044309157) / 0.920010657344 AS scaler_33, (CAST(`ADS_imp_1_OUT`.impter_34 AS DOUBLE) - -0.171993241626) / 0.981480025144 AS scaler_34, (CAST(`ADS_imp_1_OUT`.impter_35 AS DOUBLE) - 0.137814188879) / 0.917701205117 AS scaler_35, (CAST(`ADS_imp_1_OUT`.impter_36 AS DOUBLE) - -0.00243821096422) / 0.894438011611 AS scaler_36, (CAST(`ADS_imp_1_OUT`.impter_37 AS DOUBLE) - 0.0608337491315) / 0.936165105488 AS scaler_37, (CAST(`ADS_imp_1_OUT`.impter_38 AS DOUBLE) - -0.1890599869) / 1.12903981758 AS scaler_38, (CAST(`ADS_imp_1_OUT`.impter_39 AS DOUBLE) - -0.0963521927847) / 1.07035462545 AS scaler_39, (CAST(`ADS_imp_1_OUT`.impter_40 AS DOUBLE) - -0.101606675074) / 0.920646499227 AS scaler_40, (CAST(`ADS_imp_1_OUT`.impter_41 AS DOUBLE) - 0.0647525054158) / 0.898610910619 AS scaler_41, (CAST(`ADS_imp_1_OUT`.impter_42 AS DOUBLE) - -0.302643050361) / 1.13043240597 AS scaler_42, (CAST(`ADS_imp_1_OUT`.impter_43 AS DOUBLE) - -0.132641556819) / 0.858526079685 AS scaler_43, (CAST(`ADS_imp_1_OUT`.impter_44 AS DOUBLE) - -0.133405478073) / 0.962489523356 AS scaler_44, (CAST(`ADS_imp_1_OUT`.impter_45 AS DOUBLE) - -0.00114360097028) / 0.904937048405 AS scaler_45, (CAST(`ADS_imp_1_OUT`.impter_46 AS DOUBLE) - -0.0533515790892) / 1.06100264576 AS scaler_46, (CAST(`ADS_imp_1_OUT`.impter_47 AS DOUBLE) - 0.0171453700269) / 0.95570978583 AS scaler_47, (CAST(`ADS_imp_1_OUT`.impter_48 AS DOUBLE) - -0.0590594495726) / 1.08948220126 AS scaler_48, (CAST(`ADS_imp_1_OUT`.impter_49 AS DOUBLE) - -0.0952887996818) / 0.857147595338 AS scaler_49, (CAST(`ADS_imp_1_OUT`.impter_50 AS DOUBLE) - -0.157813634634) / 0.991963586752 AS scaler_50, (CAST(`ADS_imp_1_OUT`.impter_51 AS DOUBLE) - -0.237944333925) / 1.00675031297 AS scaler_51, (CAST(`ADS_imp_1_OUT`.impter_52 AS DOUBLE) - 0.13863850693) / 1.02792733889 AS scaler_52, (CAST(`ADS_imp_1_OUT`.impter_53 AS DOUBLE) - -0.0169962199149) / 0.974408927554 AS scaler_53, (CAST(`ADS_imp_1_OUT`.impter_54 AS DOUBLE) - 0.197014900038) / 0.868492071166 AS scaler_54, (CAST(`ADS_imp_1_OUT`.impter_55 AS DOUBLE) - 0.0516299047324) / 0.894397475223 AS scaler_55, (CAST(`ADS_imp_1_OUT`.impter_56 AS DOUBLE) - -0.134530020987) / 0.963483965932 AS scaler_56, (CAST(`ADS_imp_1_OUT`.impter_57 AS DOUBLE) - 0.147893701046) / 1.06153996262 AS scaler_57, (CAST(`ADS_imp_1_OUT`.impter_58 AS DOUBLE) - -0.0131427594384) / 0.97720152785 AS scaler_58, (CAST(`ADS_imp_1_OUT`.impter_59 AS DOUBLE) - -0.0929916299466) / 1.00717584355 AS scaler_59, (CAST(`ADS_imp_1_OUT`.impter_60 AS DOUBLE) - -0.24689492769) / 0.923735412805 AS scaler_60, (CAST(`ADS_imp_1_OUT`.impter_61 AS DOUBLE) - 0.134997271083) / 1.10158436882 AS scaler_61, (CAST(`ADS_imp_1_OUT`.impter_62 AS DOUBLE) - 0.00255440055077) / 1.06644516394 AS scaler_62, (CAST(`ADS_imp_1_OUT`.impter_63 AS DOUBLE) - 0.125273686635) / 1.10356772219 AS scaler_63, (CAST(`ADS_imp_1_OUT`.impter_64 AS DOUBLE) - -0.0373996229606) / 1.03216944442 AS scaler_64, (CAST(`ADS_imp_1_OUT`.impter_65 AS DOUBLE) - -0.0299886958018) / 1.07149048005 AS scaler_65, (CAST(`ADS_imp_1_OUT`.impter_66 AS DOUBLE) - -0.0428608851687) / 1.19000074729 AS scaler_66, (CAST(`ADS_imp_1_OUT`.impter_67 AS DOUBLE) - -0.143834700665) / 0.983863253624 AS scaler_67, (CAST(`ADS_imp_1_OUT`.impter_68 AS DOUBLE) - -0.0526979391089) / 1.13300410964 AS scaler_68, (CAST(`ADS_imp_1_OUT`.impter_69 AS DOUBLE) - 0.0292679402713) / 0.950591188382 AS scaler_69, (CAST(`ADS_imp_1_OUT`.impter_70 AS DOUBLE) - 0.104310808883) / 0.912489280474 AS scaler_70, (CAST(`ADS_imp_1_OUT`.impter_71 AS DOUBLE) - -0.0961968743305) / 1.04352637486 AS scaler_71, (CAST(`ADS_imp_1_OUT`.impter_72 AS DOUBLE) - 0.00673331929833) / 1.068622613 AS scaler_72, (CAST(`ADS_imp_1_OUT`.impter_73 AS DOUBLE) - 0.0328966593537) / 0.859185924601 AS scaler_73, (CAST(`ADS_imp_1_OUT`.impter_74 AS DOUBLE) - 0.0806427727546) / 1.03107280398 AS scaler_74, (CAST(`ADS_imp_1_OUT`.impter_75 AS DOUBLE) - -0.106035567555) / 0.97576444918 AS scaler_75, (CAST(`ADS_imp_1_OUT`.impter_76 AS DOUBLE) - 0.094891001483) / 0.908286175367 AS scaler_76, (CAST(`ADS_imp_1_OUT`.impter_77 AS DOUBLE) - -0.1966488711) / 0.95700911115 AS scaler_77, (CAST(`ADS_imp_1_OUT`.impter_78 AS DOUBLE) - 0.116526435149) / 0.890699364506 AS scaler_78, (CAST(`ADS_imp_1_OUT`.impter_79 AS DOUBLE) - 0.193402183481) / 1.01519063544 AS scaler_79, (CAST(`ADS_imp_1_OUT`.impter_80 AS DOUBLE) - 0.112097090879) / 1.0005941329 AS scaler_80, (CAST(`ADS_imp_1_OUT`.impter_81 AS DOUBLE) - 0.107090136212) / 0.998199099541 AS scaler_81, (CAST(`ADS_imp_1_OUT`.impter_82 AS DOUBLE) - -0.0103304292092) / 1.1261340687 AS scaler_82, (CAST(`ADS_imp_1_OUT`.impter_83 AS DOUBLE) - 0.110265521044) / 1.02036315958 AS scaler_83, (CAST(`ADS_imp_1_OUT`.impter_84 AS DOUBLE) - 0.0119163458945) / 0.952019831589 AS scaler_84, (CAST(`ADS_imp_1_OUT`.impter_85 AS DOUBLE) - 0.013369825695) / 1.05396504769 AS scaler_85, (CAST(`ADS_imp_1_OUT`.impter_86 AS DOUBLE) - -0.15005120007) / 0.998199382399 AS scaler_86, (CAST(`ADS_imp_1_OUT`.impter_87 AS DOUBLE) - -0.0902217757945) / 0.911905498566 AS scaler_87, (CAST(`ADS_imp_1_OUT`.impter_88 AS DOUBLE) - -0.160296256572) / 1.05306114439 AS scaler_88, (CAST(`ADS_imp_1_OUT`.impter_89 AS DOUBLE) - -0.101270172935) / 1.06730881623 AS scaler_89, (CAST(`ADS_imp_1_OUT`.impter_90 AS DOUBLE) - 0.332354300629) / 0.85173986088 AS scaler_90, (CAST(`ADS_imp_1_OUT`.impter_91 AS DOUBLE) - 0.0517311730608) / 0.903657197208 AS scaler_91, (CAST(`ADS_imp_1_OUT`.impter_92 AS DOUBLE) - 0.10788792122) / 0.967916174644 AS scaler_92, (CAST(`ADS_imp_1_OUT`.impter_93 AS DOUBLE) - 0.214549318747) / 0.905927839775 AS scaler_93, (CAST(`ADS_imp_1_OUT`.impter_94 AS DOUBLE) - -0.163173377699) / 1.09771899499 AS scaler_94, (CAST(`ADS_imp_1_OUT`.impter_95 AS DOUBLE) - -0.224238407688) / 0.785962436803 AS scaler_95, (CAST(`ADS_imp_1_OUT`.impter_96 AS DOUBLE) - -0.276958475653) / 1.00075974241 AS scaler_96, (CAST(`ADS_imp_1_OUT`.impter_97 AS DOUBLE) - 0.037863552135) / 0.961749101486 AS scaler_97, (CAST(`ADS_imp_1_OUT`.impter_98 AS DOUBLE) - -0.0275885280314) / 0.888578840708 AS scaler_98, (CAST(`ADS_imp_1_OUT`.impter_99 AS DOUBLE) - 0.105287788103) / 0.988117943765 AS scaler_99, (CAST(`ADS_imp_1_OUT`.impter_100 AS DOUBLE) - 0.0664070338022) / 0.893132152456 AS scaler_100, (CAST(`ADS_imp_1_OUT`.impter_101 AS DOUBLE) - 0.0656993099584) / 0.936700135182 AS scaler_101 
FROM `ADS_imp_1_OUT`), 
`IL` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CAST(`ADS_sca_2_OUT`.scaler_2 AS DOUBLE) AS scaler_2, CAST(`ADS_sca_2_OUT`.scaler_3 AS DOUBLE) AS scaler_3, CAST(`ADS_sca_2_OUT`.scaler_4 AS DOUBLE) AS scaler_4, CAST(`ADS_sca_2_OUT`.scaler_5 AS DOUBLE) AS scaler_5, CAST(`ADS_sca_2_OUT`.scaler_6 AS DOUBLE) AS scaler_6, CAST(`ADS_sca_2_OUT`.scaler_7 AS DOUBLE) AS scaler_7, CAST(`ADS_sca_2_OUT`.scaler_8 AS DOUBLE) AS scaler_8, CAST(`ADS_sca_2_OUT`.scaler_9 AS DOUBLE) AS scaler_9, CAST(`ADS_sca_2_OUT`.scaler_10 AS DOUBLE) AS scaler_10, CAST(`ADS_sca_2_OUT`.scaler_11 AS DOUBLE) AS scaler_11, CAST(`ADS_sca_2_OUT`.scaler_12 AS DOUBLE) AS scaler_12, CAST(`ADS_sca_2_OUT`.scaler_13 AS DOUBLE) AS scaler_13, CAST(`ADS_sca_2_OUT`.scaler_14 AS DOUBLE) AS scaler_14, CAST(`ADS_sca_2_OUT`.scaler_15 AS DOUBLE) AS scaler_15, CAST(`ADS_sca_2_OUT`.scaler_16 AS DOUBLE) AS scaler_16, CAST(`ADS_sca_2_OUT`.scaler_17 AS DOUBLE) AS scaler_17, CAST(`ADS_sca_2_OUT`.scaler_18 AS DOUBLE) AS scaler_18, CAST(`ADS_sca_2_OUT`.scaler_19 AS DOUBLE) AS scaler_19, CAST(`ADS_sca_2_OUT`.scaler_20 AS DOUBLE) AS scaler_20, CAST(`ADS_sca_2_OUT`.scaler_21 AS DOUBLE) AS scaler_21, CAST(`ADS_sca_2_OUT`.scaler_22 AS DOUBLE) AS scaler_22, CAST(`ADS_sca_2_OUT`.scaler_23 AS DOUBLE) AS scaler_23, CAST(`ADS_sca_2_OUT`.scaler_24 AS DOUBLE) AS scaler_24, CAST(`ADS_sca_2_OUT`.scaler_25 AS DOUBLE) AS scaler_25, CAST(`ADS_sca_2_OUT`.scaler_26 AS DOUBLE) AS scaler_26, CAST(`ADS_sca_2_OUT`.scaler_27 AS DOUBLE) AS scaler_27, CAST(`ADS_sca_2_OUT`.scaler_28 AS DOUBLE) AS scaler_28, CAST(`ADS_sca_2_OUT`.scaler_29 AS DOUBLE) AS scaler_29, CAST(`ADS_sca_2_OUT`.scaler_30 AS DOUBLE) AS scaler_30, CAST(`ADS_sca_2_OUT`.scaler_31 AS DOUBLE) AS scaler_31, CAST(`ADS_sca_2_OUT`.scaler_32 AS DOUBLE) AS scaler_32, CAST(`ADS_sca_2_OUT`.scaler_33 AS DOUBLE) AS scaler_33, CAST(`ADS_sca_2_OUT`.scaler_34 AS DOUBLE) AS scaler_34, CAST(`ADS_sca_2_OUT`.scaler_35 AS DOUBLE) AS scaler_35, CAST(`ADS_sca_2_OUT`.scaler_36 AS DOUBLE) AS scaler_36, CAST(`ADS_sca_2_OUT`.scaler_37 AS DOUBLE) AS scaler_37, CAST(`ADS_sca_2_OUT`.scaler_38 AS DOUBLE) AS scaler_38, CAST(`ADS_sca_2_OUT`.scaler_39 AS DOUBLE) AS scaler_39, CAST(`ADS_sca_2_OUT`.scaler_40 AS DOUBLE) AS scaler_40, CAST(`ADS_sca_2_OUT`.scaler_41 AS DOUBLE) AS scaler_41, CAST(`ADS_sca_2_OUT`.scaler_42 AS DOUBLE) AS scaler_42, CAST(`ADS_sca_2_OUT`.scaler_43 AS DOUBLE) AS scaler_43, CAST(`ADS_sca_2_OUT`.scaler_44 AS DOUBLE) AS scaler_44, CAST(`ADS_sca_2_OUT`.scaler_45 AS DOUBLE) AS scaler_45, CAST(`ADS_sca_2_OUT`.scaler_46 AS DOUBLE) AS scaler_46, CAST(`ADS_sca_2_OUT`.scaler_47 AS DOUBLE) AS scaler_47, CAST(`ADS_sca_2_OUT`.scaler_48 AS DOUBLE) AS scaler_48, CAST(`ADS_sca_2_OUT`.scaler_49 AS DOUBLE) AS scaler_49, CAST(`ADS_sca_2_OUT`.scaler_50 AS DOUBLE) AS scaler_50, CAST(`ADS_sca_2_OUT`.scaler_51 AS DOUBLE) AS scaler_51, CAST(`ADS_sca_2_OUT`.scaler_52 AS DOUBLE) AS scaler_52, CAST(`ADS_sca_2_OUT`.scaler_53 AS DOUBLE) AS scaler_53, CAST(`ADS_sca_2_OUT`.scaler_54 AS DOUBLE) AS scaler_54, CAST(`ADS_sca_2_OUT`.scaler_55 AS DOUBLE) AS scaler_55, CAST(`ADS_sca_2_OUT`.scaler_56 AS DOUBLE) AS scaler_56, CAST(`ADS_sca_2_OUT`.scaler_57 AS DOUBLE) AS scaler_57, CAST(`ADS_sca_2_OUT`.scaler_58 AS DOUBLE) AS scaler_58, CAST(`ADS_sca_2_OUT`.scaler_59 AS DOUBLE) AS scaler_59, CAST(`ADS_sca_2_OUT`.scaler_60 AS DOUBLE) AS scaler_60, CAST(`ADS_sca_2_OUT`.scaler_61 AS DOUBLE) AS scaler_61, CAST(`ADS_sca_2_OUT`.scaler_62 AS DOUBLE) AS scaler_62, CAST(`ADS_sca_2_OUT`.scaler_63 AS DOUBLE) AS scaler_63, CAST(`ADS_sca_2_OUT`.scaler_64 AS DOUBLE) AS scaler_64, CAST(`ADS_sca_2_OUT`.scaler_65 AS DOUBLE) AS scaler_65, CAST(`ADS_sca_2_OUT`.scaler_66 AS DOUBLE) AS scaler_66, CAST(`ADS_sca_2_OUT`.scaler_67 AS DOUBLE) AS scaler_67, CAST(`ADS_sca_2_OUT`.scaler_68 AS DOUBLE) AS scaler_68, CAST(`ADS_sca_2_OUT`.scaler_69 AS DOUBLE) AS scaler_69, CAST(`ADS_sca_2_OUT`.scaler_70 AS DOUBLE) AS scaler_70, CAST(`ADS_sca_2_OUT`.scaler_71 AS DOUBLE) AS scaler_71, CAST(`ADS_sca_2_OUT`.scaler_72 AS DOUBLE) AS scaler_72, CAST(`ADS_sca_2_OUT`.scaler_73 AS DOUBLE) AS scaler_73, CAST(`ADS_sca_2_OUT`.scaler_74 AS DOUBLE) AS scaler_74, CAST(`ADS_sca_2_OUT`.scaler_75 AS DOUBLE) AS scaler_75, CAST(`ADS_sca_2_OUT`.scaler_76 AS DOUBLE) AS scaler_76, CAST(`ADS_sca_2_OUT`.scaler_77 AS DOUBLE) AS scaler_77, CAST(`ADS_sca_2_OUT`.scaler_78 AS DOUBLE) AS scaler_78, CAST(`ADS_sca_2_OUT`.scaler_79 AS DOUBLE) AS scaler_79, CAST(`ADS_sca_2_OUT`.scaler_80 AS DOUBLE) AS scaler_80, CAST(`ADS_sca_2_OUT`.scaler_81 AS DOUBLE) AS scaler_81, CAST(`ADS_sca_2_OUT`.scaler_82 AS DOUBLE) AS scaler_82, CAST(`ADS_sca_2_OUT`.scaler_83 AS DOUBLE) AS scaler_83, CAST(`ADS_sca_2_OUT`.scaler_84 AS DOUBLE) AS scaler_84, CAST(`ADS_sca_2_OUT`.scaler_85 AS DOUBLE) AS scaler_85, CAST(`ADS_sca_2_OUT`.scaler_86 AS DOUBLE) AS scaler_86, CAST(`ADS_sca_2_OUT`.scaler_87 AS DOUBLE) AS scaler_87, CAST(`ADS_sca_2_OUT`.scaler_88 AS DOUBLE) AS scaler_88, CAST(`ADS_sca_2_OUT`.scaler_89 AS DOUBLE) AS scaler_89, CAST(`ADS_sca_2_OUT`.scaler_90 AS DOUBLE) AS scaler_90, CAST(`ADS_sca_2_OUT`.scaler_91 AS DOUBLE) AS scaler_91, CAST(`ADS_sca_2_OUT`.scaler_92 AS DOUBLE) AS scaler_92, CAST(`ADS_sca_2_OUT`.scaler_93 AS DOUBLE) AS scaler_93, CAST(`ADS_sca_2_OUT`.scaler_94 AS DOUBLE) AS scaler_94, CAST(`ADS_sca_2_OUT`.scaler_95 AS DOUBLE) AS scaler_95, CAST(`ADS_sca_2_OUT`.scaler_96 AS DOUBLE) AS scaler_96, CAST(`ADS_sca_2_OUT`.scaler_97 AS DOUBLE) AS scaler_97, CAST(`ADS_sca_2_OUT`.scaler_98 AS DOUBLE) AS scaler_98, CAST(`ADS_sca_2_OUT`.scaler_99 AS DOUBLE) AS scaler_99, CAST(`ADS_sca_2_OUT`.scaler_100 AS DOUBLE) AS scaler_100, CAST(`ADS_sca_2_OUT`.scaler_101 AS DOUBLE) AS scaler_101 
FROM `ADS_sca_2_OUT`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, -5.50197012674 * `IL`.scaler_2 + 1.51433130674 * `IL`.scaler_3 + 1.37211160649 * `IL`.scaler_4 + -2.27338955173 * `IL`.scaler_5 + 7.94463671956 * `IL`.scaler_6 + -1.7944998992 * `IL`.scaler_7 + -2.20240881268 * `IL`.scaler_8 + 6.11837621547 * `IL`.scaler_9 + -1.07711239246 * `IL`.scaler_10 + 2.18803689875 * `IL`.scaler_11 + 1.3420742265 * `IL`.scaler_12 + -0.366990143087 * `IL`.scaler_13 + -1.85047752015 * `IL`.scaler_14 + 2.48206268857 * `IL`.scaler_15 + -7.93510583129 * `IL`.scaler_16 + -5.96035720621 * `IL`.scaler_17 + 7.41141096649 * `IL`.scaler_18 + -3.10753938835 * `IL`.scaler_19 + -2.063666549 * `IL`.scaler_20 + 3.61468845634 * `IL`.scaler_21 + 1.32972525007 * `IL`.scaler_22 + 1.36220712431 * `IL`.scaler_23 + 0.145915214763 * `IL`.scaler_24 + 0.605262641779 * `IL`.scaler_25 + 0.799205987789 * `IL`.scaler_26 + 2.06611104387 * `IL`.scaler_27 + 4.94207498766 * `IL`.scaler_28 + -2.19989530779 * `IL`.scaler_29 + -1.11931444226 * `IL`.scaler_30 + -0.987071240858 * `IL`.scaler_31 + 1.38439752718 * `IL`.scaler_32 + -0.169807328185 * `IL`.scaler_33 + 3.73684727551 * `IL`.scaler_34 + -0.384133250903 * `IL`.scaler_35 + -3.72699815037 * `IL`.scaler_36 + 2.60526935011 * `IL`.scaler_37 + -3.07260117772 * `IL`.scaler_38 + 0.272493777201 * `IL`.scaler_39 + 2.77716303109 * `IL`.scaler_40 + 1.37820250223 * `IL`.scaler_41 + -6.48296638992 * `IL`.scaler_42 + 2.46895658015 * `IL`.scaler_43 + 0.492590651098 * `IL`.scaler_44 + -1.1272320038 * `IL`.scaler_45 + 3.90766455923 * `IL`.scaler_46 + -1.17896994118 * `IL`.scaler_47 + -3.28640261593 * `IL`.scaler_48 + -6.08029695856 * `IL`.scaler_49 + 1.20439022808 * `IL`.scaler_50 + -2.08516539127 * `IL`.scaler_51 + 0.264510810445 * `IL`.scaler_52 + 0.985002532636 * `IL`.scaler_53 + 2.04484674799 * `IL`.scaler_54 + -3.50357086456 * `IL`.scaler_55 + 2.38731831768 * `IL`.scaler_56 + 0.279013166976 * `IL`.scaler_57 + 1.87542733964 * `IL`.scaler_58 + 2.23375054662 * `IL`.scaler_59 + 2.03904368992 * `IL`.scaler_60 + -0.0407639319864 * `IL`.scaler_61 + 0.729662464884 * `IL`.scaler_62 + -0.0613780050914 * `IL`.scaler_63 + 3.213320043 * `IL`.scaler_64 + 6.98369210374 * `IL`.scaler_65 + 3.14170780148 * `IL`.scaler_66 + 3.79623511612 * `IL`.scaler_67 + 3.39089608229 * `IL`.scaler_68 + -1.81363806819 * `IL`.scaler_69 + -3.3409995499 * `IL`.scaler_70 + -1.48772226012 * `IL`.scaler_71 + 2.06097289866 * `IL`.scaler_72 + -2.61585332133 * `IL`.scaler_73 + -7.58951875512 * `IL`.scaler_74 + 5.51890935482 * `IL`.scaler_75 + -6.61385549552 * `IL`.scaler_76 + 1.70530105979 * `IL`.scaler_77 + -2.00056568966 * `IL`.scaler_78 + -0.738098184716 * `IL`.scaler_79 + -4.46669294463 * `IL`.scaler_80 + 4.06390207516 * `IL`.scaler_81 + 8.4506674832 * `IL`.scaler_82 + -1.2241753805 * `IL`.scaler_83 + -1.71565244299 * `IL`.scaler_84 + -1.192959834 * `IL`.scaler_85 + -3.83571716956 * `IL`.scaler_86 + 5.42291384058 * `IL`.scaler_87 + 0.0214524346411 * `IL`.scaler_88 + 3.85233619334 * `IL`.scaler_89 + 1.77929020204 * `IL`.scaler_90 + 5.41453703284 * `IL`.scaler_91 + 4.24293027915 * `IL`.scaler_92 + 0.819704501773 * `IL`.scaler_93 + 2.89835962879 * `IL`.scaler_94 + -4.11619705875 * `IL`.scaler_95 + 1.40068281808 * `IL`.scaler_96 + 2.29699218189 * `IL`.scaler_97 + -4.67237580017 * `IL`.scaler_98 + -1.35758390857 * `IL`.scaler_99 + 0.684868316314 * `IL`.scaler_100 + 1.46073559519 * `IL`.scaler_101 + -9.42799104745 AS `NEUR_1_1`, 1.01814408294 * `IL`.scaler_2 + -7.69744193476 * `IL`.scaler_3 + -9.06158999716 * `IL`.scaler_4 + 4.76307974019 * `IL`.scaler_5 + -4.0897062238 * `IL`.scaler_6 + -1.07932953727 * `IL`.scaler_7 + -4.21198962296 * `IL`.scaler_8 + -7.13029616178 * `IL`.scaler_9 + 5.15863792517 * `IL`.scaler_10 + 5.63682674886 * `IL`.scaler_11 + -0.376271635005 * `IL`.scaler_12 + 0.176367397668 * `IL`.scaler_13 + 6.11439189712 * `IL`.scaler_14 + -0.0812544725733 * `IL`.scaler_15 + 5.88973377249 * `IL`.scaler_16 + 5.67879254549 * `IL`.scaler_17 + 6.349458258 * `IL`.scaler_18 + 7.67981782273 * `IL`.scaler_19 + 8.6481162251 * `IL`.scaler_20 + -8.26889802679 * `IL`.scaler_21 + 4.22461446154 * `IL`.scaler_22 + -2.82355073454 * `IL`.scaler_23 + -0.691321964687 * `IL`.scaler_24 + 2.27726352592 * `IL`.scaler_25 + 1.41398036029 * `IL`.scaler_26 + -5.72191370089 * `IL`.scaler_27 + 2.92423751943 * `IL`.scaler_28 + 6.94973175743 * `IL`.scaler_29 + -0.216167402184 * `IL`.scaler_30 + 5.91017348471 * `IL`.scaler_31 + -6.50714106701 * `IL`.scaler_32 + 3.0889914336 * `IL`.scaler_33 + -5.90342357265 * `IL`.scaler_34 + 5.63879423267 * `IL`.scaler_35 + -9.71199980816 * `IL`.scaler_36 + 0.3049751981 * `IL`.scaler_37 + -2.6587958574 * `IL`.scaler_38 + -0.730353564212 * `IL`.scaler_39 + 7.41301528229 * `IL`.scaler_40 + 18.7336902203 * `IL`.scaler_41 + 1.60316177555 * `IL`.scaler_42 + 16.295604084 * `IL`.scaler_43 + -2.42143914147 * `IL`.scaler_44 + 6.02518140763 * `IL`.scaler_45 + -1.12931514993 * `IL`.scaler_46 + 8.18998859992 * `IL`.scaler_47 + -6.92270945873 * `IL`.scaler_48 + -3.98308300759 * `IL`.scaler_49 + -0.565003934818 * `IL`.scaler_50 + 2.06912712826 * `IL`.scaler_51 + -1.99115382577 * `IL`.scaler_52 + 1.88788484305 * `IL`.scaler_53 + 2.03177435862 * `IL`.scaler_54 + -1.0809182524 * `IL`.scaler_55 + -3.61640854303 * `IL`.scaler_56 + 2.14395563642 * `IL`.scaler_57 + -9.26665801364 * `IL`.scaler_58 + -3.13929875529 * `IL`.scaler_59 + -2.8517585714 * `IL`.scaler_60 + 2.80254840255 * `IL`.scaler_61 + 7.2003309053 * `IL`.scaler_62 + -2.53520431275 * `IL`.scaler_63 + -7.7034416644 * `IL`.scaler_64 + 14.0901718122 * `IL`.scaler_65 + 0.169380857403 * `IL`.scaler_66 + -0.151393319123 * `IL`.scaler_67 + -5.93180410566 * `IL`.scaler_68 + -3.56552555123 * `IL`.scaler_69 + 3.11670281944 * `IL`.scaler_70 + -4.41316273147 * `IL`.scaler_71 + -5.98995533904 * `IL`.scaler_72 + 6.057618038 * `IL`.scaler_73 + 7.66421600919 * `IL`.scaler_74 + -10.0466191692 * `IL`.scaler_75 + 6.85423994591 * `IL`.scaler_76 + 0.447931644204 * `IL`.scaler_77 + -2.43325178715 * `IL`.scaler_78 + -8.59499325529 * `IL`.scaler_79 + 3.56089423274 * `IL`.scaler_80 + 8.51410566784 * `IL`.scaler_81 + 16.377288264 * `IL`.scaler_82 + 5.71522815342 * `IL`.scaler_83 + 0.0520594621443 * `IL`.scaler_84 + -1.18076552133 * `IL`.scaler_85 + 0.279980231831 * `IL`.scaler_86 + -0.0486623033804 * `IL`.scaler_87 + 4.39542884404 * `IL`.scaler_88 + -5.2601868527 * `IL`.scaler_89 + -10.3944691549 * `IL`.scaler_90 + 0.654425628056 * `IL`.scaler_91 + -8.11820421547 * `IL`.scaler_92 + 5.0418370473 * `IL`.scaler_93 + -2.30938826077 * `IL`.scaler_94 + -1.17438093822 * `IL`.scaler_95 + -8.37406147499 * `IL`.scaler_96 + 6.99087573187 * `IL`.scaler_97 + 2.36684286649 * `IL`.scaler_98 + 7.75147370699 * `IL`.scaler_99 + -1.81765960573 * `IL`.scaler_100 + 7.10388493439 * `IL`.scaler_101 + 0.883384306208 AS `NEUR_1_2`, -3.67021277867 * `IL`.scaler_2 + -14.5580012016 * `IL`.scaler_3 + -7.44399967521 * `IL`.scaler_4 + 0.830431445663 * `IL`.scaler_5 + -1.78114583743 * `IL`.scaler_6 + 4.05231809832 * `IL`.scaler_7 + 1.42966220301 * `IL`.scaler_8 + -6.9386756542 * `IL`.scaler_9 + 16.7823681922 * `IL`.scaler_10 + 4.87031706029 * `IL`.scaler_11 + -11.0500578742 * `IL`.scaler_12 + -3.79268731276 * `IL`.scaler_13 + 8.65584652746 * `IL`.scaler_14 + 3.32657000363 * `IL`.scaler_15 + 0.644462859037 * `IL`.scaler_16 + 4.42505709724 * `IL`.scaler_17 + 11.2521861858 * `IL`.scaler_18 + 12.4065209103 * `IL`.scaler_19 + 4.29247893984 * `IL`.scaler_20 + -25.7588299151 * `IL`.scaler_21 + 12.0919127361 * `IL`.scaler_22 + -4.10833584289 * `IL`.scaler_23 + 9.26617532583 * `IL`.scaler_24 + -5.05930380875 * `IL`.scaler_25 + 10.5572404318 * `IL`.scaler_26 + 10.2896536292 * `IL`.scaler_27 + 1.32227058828 * `IL`.scaler_28 + 15.7961412973 * `IL`.scaler_29 + 5.51669321067 * `IL`.scaler_30 + 5.04718317484 * `IL`.scaler_31 + 0.240372208238 * `IL`.scaler_32 + 13.5910686739 * `IL`.scaler_33 + 4.17702615777 * `IL`.scaler_34 + 7.21026891568 * `IL`.scaler_35 + 0.701922418793 * `IL`.scaler_36 + 5.32848941698 * `IL`.scaler_37 + -2.39599210642 * `IL`.scaler_38 + -13.9070264928 * `IL`.scaler_39 + 8.78345320378 * `IL`.scaler_40 + 27.6416050733 * `IL`.scaler_41 + -5.87678953131 * `IL`.scaler_42 + 24.3654568067 * `IL`.scaler_43 + -11.6573565196 * `IL`.scaler_44 + 9.79371225443 * `IL`.scaler_45 + 6.97304442645 * `IL`.scaler_46 + -2.41312705508 * `IL`.scaler_47 + 1.78995474234 * `IL`.scaler_48 + 3.98892919559 * `IL`.scaler_49 + 2.70336359013 * `IL`.scaler_50 + 12.828754229 * `IL`.scaler_51 + -2.070674071 * `IL`.scaler_52 + 4.21965605865 * `IL`.scaler_53 + -4.20478092384 * `IL`.scaler_54 + -3.72088606779 * `IL`.scaler_55 + 12.6868177421 * `IL`.scaler_56 + -6.01728169358 * `IL`.scaler_57 + -6.01935588224 * `IL`.scaler_58 + 9.71511906192 * `IL`.scaler_59 + -0.485320435819 * `IL`.scaler_60 + 6.5037158834 * `IL`.scaler_61 + 7.58856414215 * `IL`.scaler_62 + -5.06166101119 * `IL`.scaler_63 + -12.6162830466 * `IL`.scaler_64 + 23.2847843423 * `IL`.scaler_65 + 1.94546433724 * `IL`.scaler_66 + 1.20556586025 * `IL`.scaler_67 + -3.70627561239 * `IL`.scaler_68 + -11.4262741404 * `IL`.scaler_69 + 14.9922243578 * `IL`.scaler_70 + -3.74741506423 * `IL`.scaler_71 + -3.57263057199 * `IL`.scaler_72 + 5.81353160477 * `IL`.scaler_73 + -1.20287264236 * `IL`.scaler_74 + -6.63561427473 * `IL`.scaler_75 + 3.53359601378 * `IL`.scaler_76 + 3.47825566474 * `IL`.scaler_77 + -1.10126053111 * `IL`.scaler_78 + -21.0545186339 * `IL`.scaler_79 + 11.9734377167 * `IL`.scaler_80 + 7.25434578333 * `IL`.scaler_81 + 36.9919148184 * `IL`.scaler_82 + 7.58978048935 * `IL`.scaler_83 + 2.11721523477 * `IL`.scaler_84 + 2.00340192746 * `IL`.scaler_85 + -5.57042962029 * `IL`.scaler_86 + -1.1658381701 * `IL`.scaler_87 + -11.2324495378 * `IL`.scaler_88 + 4.71208458024 * `IL`.scaler_89 + 5.56960600714 * `IL`.scaler_90 + 0.021302742862 * `IL`.scaler_91 + 1.53245321616 * `IL`.scaler_92 + 10.9131517294 * `IL`.scaler_93 + 8.35603733432 * `IL`.scaler_94 + -12.0042480763 * `IL`.scaler_95 + -18.9403774119 * `IL`.scaler_96 + 23.6562333167 * `IL`.scaler_97 + 1.48914780853 * `IL`.scaler_98 + -1.35235708535 * `IL`.scaler_99 + -1.00344653526 * `IL`.scaler_100 + -4.37395869199 * `IL`.scaler_101 + 0.101873454794 AS `NEUR_1_3` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_1`.`NEUR_1_1` >= 0.0) THEN `HL_BA_1`.`NEUR_1_1` ELSE 0.0 END AS `NEUR_1_1`, CASE WHEN (`HL_BA_1`.`NEUR_1_2` >= 0.0) THEN `HL_BA_1`.`NEUR_1_2` ELSE 0.0 END AS `NEUR_1_2`, CASE WHEN (`HL_BA_1`.`NEUR_1_3` >= 0.0) THEN `HL_BA_1`.`NEUR_1_3` ELSE 0.0 END AS `NEUR_1_3` 
FROM `HL_BA_1`), 
`HL_BA_2` AS 
(SELECT `HL_1_relu`.`KEY` AS `KEY`, 2.53726522011 * `HL_1_relu`.`NEUR_1_1` + 2.51250203287 * `HL_1_relu`.`NEUR_1_2` + 4.26837531578 * `HL_1_relu`.`NEUR_1_3` + -1.75693172241 AS `NEUR_2_1`, -0.853754444369 * `HL_1_relu`.`NEUR_1_1` + -1.98575293729 * `HL_1_relu`.`NEUR_1_2` + -0.227024034025 * `HL_1_relu`.`NEUR_1_3` + 15.5723278967 AS `NEUR_2_2`, 6.80002349393 * `HL_1_relu`.`NEUR_1_1` + 9.9071676909 * `HL_1_relu`.`NEUR_1_2` + 16.1433501187 * `HL_1_relu`.`NEUR_1_3` + -4.39082926025 AS `NEUR_2_3`, 1.59065873435 * `HL_1_relu`.`NEUR_1_1` + 1.53382606252 * `HL_1_relu`.`NEUR_1_2` + 1.38856846443 * `HL_1_relu`.`NEUR_1_3` + 3.16757827272 AS `NEUR_2_4`, -0.609346706182 * `HL_1_relu`.`NEUR_1_1` + -0.377668431755 * `HL_1_relu`.`NEUR_1_2` + -0.67300156345 * `HL_1_relu`.`NEUR_1_3` + -0.018078316227 AS `NEUR_2_5` 
FROM `HL_1_relu`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_2`.`NEUR_2_1` >= 0.0) THEN `HL_BA_2`.`NEUR_2_1` ELSE 0.0 END AS `NEUR_2_1`, CASE WHEN (`HL_BA_2`.`NEUR_2_2` >= 0.0) THEN `HL_BA_2`.`NEUR_2_2` ELSE 0.0 END AS `NEUR_2_2`, CASE WHEN (`HL_BA_2`.`NEUR_2_3` >= 0.0) THEN `HL_BA_2`.`NEUR_2_3` ELSE 0.0 END AS `NEUR_2_3`, CASE WHEN (`HL_BA_2`.`NEUR_2_4` >= 0.0) THEN `HL_BA_2`.`NEUR_2_4` ELSE 0.0 END AS `NEUR_2_4`, CASE WHEN (`HL_BA_2`.`NEUR_2_5` >= 0.0) THEN `HL_BA_2`.`NEUR_2_5` ELSE 0.0 END AS `NEUR_2_5` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, 1.0233212436 * `HL_2_relu`.`NEUR_2_1` + -13.6959420175 * `HL_2_relu`.`NEUR_2_2` + -0.272249659726 * `HL_2_relu`.`NEUR_2_3` + 0.527782995408 * `HL_2_relu`.`NEUR_2_4` + -0.273475088578 * `HL_2_relu`.`NEUR_2_5` + -22.2572329324 AS `NEUR_3_1` 
FROM `HL_2_relu`), 
`OL_identity` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, `OL_BA`.`NEUR_3_1` AS `NEUR_3_1` 
FROM `OL_BA`)
 SELECT `OL_identity`.`KEY` AS `KEY`, `OL_identity`.`NEUR_3_1` AS `Estimator` 
FROM `OL_identity`