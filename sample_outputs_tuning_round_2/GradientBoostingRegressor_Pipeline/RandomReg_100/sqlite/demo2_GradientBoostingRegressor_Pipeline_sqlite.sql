-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "Score_Union_CTE_0" AS 
(WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.0812808530019 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.134368051725 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -0.117133543927 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.103145256915 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.048598770616 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0998569467735 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.0672774556566 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.162238409285 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.0406936285261 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.0516599050886 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.101790678393 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN -0.17597473627 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN -0.096751384941 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN -0.0460865691263 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.101658522861 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.111799030108 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN -0.00611023335938 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.0714470406891 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN -0.0880845865012 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN -0.0718279900088 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN -0.0723020084731 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 0.0289669307994 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 0.21388217633 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN -0.0666929791941 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.04615234855 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.0324951322277 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.0522423933061 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.0187458719666 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.0155530792298 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.22581537299 ELSE "ADS"."Feature_29" END AS impter_31, CASE WHEN ("ADS"."Feature_30" IS NULL) THEN -0.169898577788 ELSE "ADS"."Feature_30" END AS impter_32, CASE WHEN ("ADS"."Feature_31" IS NULL) THEN 0.036044309157 ELSE "ADS"."Feature_31" END AS impter_33, CASE WHEN ("ADS"."Feature_32" IS NULL) THEN -0.171993241626 ELSE "ADS"."Feature_32" END AS impter_34, CASE WHEN ("ADS"."Feature_33" IS NULL) THEN 0.137814188879 ELSE "ADS"."Feature_33" END AS impter_35, CASE WHEN ("ADS"."Feature_34" IS NULL) THEN -0.00243821096422 ELSE "ADS"."Feature_34" END AS impter_36, CASE WHEN ("ADS"."Feature_35" IS NULL) THEN 0.0608337491315 ELSE "ADS"."Feature_35" END AS impter_37, CASE WHEN ("ADS"."Feature_36" IS NULL) THEN -0.1890599869 ELSE "ADS"."Feature_36" END AS impter_38, CASE WHEN ("ADS"."Feature_37" IS NULL) THEN -0.0963521927847 ELSE "ADS"."Feature_37" END AS impter_39, CASE WHEN ("ADS"."Feature_38" IS NULL) THEN -0.101606675074 ELSE "ADS"."Feature_38" END AS impter_40, CASE WHEN ("ADS"."Feature_39" IS NULL) THEN 0.0647525054158 ELSE "ADS"."Feature_39" END AS impter_41, CASE WHEN ("ADS"."Feature_40" IS NULL) THEN -0.302643050361 ELSE "ADS"."Feature_40" END AS impter_42, CASE WHEN ("ADS"."Feature_41" IS NULL) THEN -0.132641556819 ELSE "ADS"."Feature_41" END AS impter_43, CASE WHEN ("ADS"."Feature_42" IS NULL) THEN -0.133405478073 ELSE "ADS"."Feature_42" END AS impter_44, CASE WHEN ("ADS"."Feature_43" IS NULL) THEN -0.00114360097028 ELSE "ADS"."Feature_43" END AS impter_45, CASE WHEN ("ADS"."Feature_44" IS NULL) THEN -0.0533515790892 ELSE "ADS"."Feature_44" END AS impter_46, CASE WHEN ("ADS"."Feature_45" IS NULL) THEN 0.0171453700269 ELSE "ADS"."Feature_45" END AS impter_47, CASE WHEN ("ADS"."Feature_46" IS NULL) THEN -0.0590594495726 ELSE "ADS"."Feature_46" END AS impter_48, CASE WHEN ("ADS"."Feature_47" IS NULL) THEN -0.0952887996818 ELSE "ADS"."Feature_47" END AS impter_49, CASE WHEN ("ADS"."Feature_48" IS NULL) THEN -0.157813634634 ELSE "ADS"."Feature_48" END AS impter_50, CASE WHEN ("ADS"."Feature_49" IS NULL) THEN -0.237944333925 ELSE "ADS"."Feature_49" END AS impter_51, CASE WHEN ("ADS"."Feature_50" IS NULL) THEN 0.13863850693 ELSE "ADS"."Feature_50" END AS impter_52, CASE WHEN ("ADS"."Feature_51" IS NULL) THEN -0.0169962199149 ELSE "ADS"."Feature_51" END AS impter_53, CASE WHEN ("ADS"."Feature_52" IS NULL) THEN 0.197014900038 ELSE "ADS"."Feature_52" END AS impter_54, CASE WHEN ("ADS"."Feature_53" IS NULL) THEN 0.0516299047324 ELSE "ADS"."Feature_53" END AS impter_55, CASE WHEN ("ADS"."Feature_54" IS NULL) THEN -0.134530020987 ELSE "ADS"."Feature_54" END AS impter_56, CASE WHEN ("ADS"."Feature_55" IS NULL) THEN 0.147893701046 ELSE "ADS"."Feature_55" END AS impter_57, CASE WHEN ("ADS"."Feature_56" IS NULL) THEN -0.0131427594384 ELSE "ADS"."Feature_56" END AS impter_58, CASE WHEN ("ADS"."Feature_57" IS NULL) THEN -0.0929916299466 ELSE "ADS"."Feature_57" END AS impter_59, CASE WHEN ("ADS"."Feature_58" IS NULL) THEN -0.24689492769 ELSE "ADS"."Feature_58" END AS impter_60, CASE WHEN ("ADS"."Feature_59" IS NULL) THEN 0.134997271083 ELSE "ADS"."Feature_59" END AS impter_61, CASE WHEN ("ADS"."Feature_60" IS NULL) THEN 0.00255440055077 ELSE "ADS"."Feature_60" END AS impter_62, CASE WHEN ("ADS"."Feature_61" IS NULL) THEN 0.125273686635 ELSE "ADS"."Feature_61" END AS impter_63, CASE WHEN ("ADS"."Feature_62" IS NULL) THEN -0.0373996229606 ELSE "ADS"."Feature_62" END AS impter_64, CASE WHEN ("ADS"."Feature_63" IS NULL) THEN -0.0299886958018 ELSE "ADS"."Feature_63" END AS impter_65, CASE WHEN ("ADS"."Feature_64" IS NULL) THEN -0.0428608851687 ELSE "ADS"."Feature_64" END AS impter_66, CASE WHEN ("ADS"."Feature_65" IS NULL) THEN -0.143834700665 ELSE "ADS"."Feature_65" END AS impter_67, CASE WHEN ("ADS"."Feature_66" IS NULL) THEN -0.0526979391089 ELSE "ADS"."Feature_66" END AS impter_68, CASE WHEN ("ADS"."Feature_67" IS NULL) THEN 0.0292679402713 ELSE "ADS"."Feature_67" END AS impter_69, CASE WHEN ("ADS"."Feature_68" IS NULL) THEN 0.104310808883 ELSE "ADS"."Feature_68" END AS impter_70, CASE WHEN ("ADS"."Feature_69" IS NULL) THEN -0.0961968743305 ELSE "ADS"."Feature_69" END AS impter_71, CASE WHEN ("ADS"."Feature_70" IS NULL) THEN 0.00673331929833 ELSE "ADS"."Feature_70" END AS impter_72, CASE WHEN ("ADS"."Feature_71" IS NULL) THEN 0.0328966593537 ELSE "ADS"."Feature_71" END AS impter_73, CASE WHEN ("ADS"."Feature_72" IS NULL) THEN 0.0806427727546 ELSE "ADS"."Feature_72" END AS impter_74, CASE WHEN ("ADS"."Feature_73" IS NULL) THEN -0.106035567555 ELSE "ADS"."Feature_73" END AS impter_75, CASE WHEN ("ADS"."Feature_74" IS NULL) THEN 0.094891001483 ELSE "ADS"."Feature_74" END AS impter_76, CASE WHEN ("ADS"."Feature_75" IS NULL) THEN -0.1966488711 ELSE "ADS"."Feature_75" END AS impter_77, CASE WHEN ("ADS"."Feature_76" IS NULL) THEN 0.116526435149 ELSE "ADS"."Feature_76" END AS impter_78, CASE WHEN ("ADS"."Feature_77" IS NULL) THEN 0.193402183481 ELSE "ADS"."Feature_77" END AS impter_79, CASE WHEN ("ADS"."Feature_78" IS NULL) THEN 0.112097090879 ELSE "ADS"."Feature_78" END AS impter_80, CASE WHEN ("ADS"."Feature_79" IS NULL) THEN 0.107090136212 ELSE "ADS"."Feature_79" END AS impter_81, CASE WHEN ("ADS"."Feature_80" IS NULL) THEN -0.0103304292092 ELSE "ADS"."Feature_80" END AS impter_82, CASE WHEN ("ADS"."Feature_81" IS NULL) THEN 0.110265521044 ELSE "ADS"."Feature_81" END AS impter_83, CASE WHEN ("ADS"."Feature_82" IS NULL) THEN 0.0119163458945 ELSE "ADS"."Feature_82" END AS impter_84, CASE WHEN ("ADS"."Feature_83" IS NULL) THEN 0.013369825695 ELSE "ADS"."Feature_83" END AS impter_85, CASE WHEN ("ADS"."Feature_84" IS NULL) THEN -0.15005120007 ELSE "ADS"."Feature_84" END AS impter_86, CASE WHEN ("ADS"."Feature_85" IS NULL) THEN -0.0902217757945 ELSE "ADS"."Feature_85" END AS impter_87, CASE WHEN ("ADS"."Feature_86" IS NULL) THEN -0.160296256572 ELSE "ADS"."Feature_86" END AS impter_88, CASE WHEN ("ADS"."Feature_87" IS NULL) THEN -0.101270172935 ELSE "ADS"."Feature_87" END AS impter_89, CASE WHEN ("ADS"."Feature_88" IS NULL) THEN 0.332354300629 ELSE "ADS"."Feature_88" END AS impter_90, CASE WHEN ("ADS"."Feature_89" IS NULL) THEN 0.0517311730608 ELSE "ADS"."Feature_89" END AS impter_91, CASE WHEN ("ADS"."Feature_90" IS NULL) THEN 0.10788792122 ELSE "ADS"."Feature_90" END AS impter_92, CASE WHEN ("ADS"."Feature_91" IS NULL) THEN 0.214549318747 ELSE "ADS"."Feature_91" END AS impter_93, CASE WHEN ("ADS"."Feature_92" IS NULL) THEN -0.163173377699 ELSE "ADS"."Feature_92" END AS impter_94, CASE WHEN ("ADS"."Feature_93" IS NULL) THEN -0.224238407688 ELSE "ADS"."Feature_93" END AS impter_95, CASE WHEN ("ADS"."Feature_94" IS NULL) THEN -0.276958475653 ELSE "ADS"."Feature_94" END AS impter_96, CASE WHEN ("ADS"."Feature_95" IS NULL) THEN 0.037863552135 ELSE "ADS"."Feature_95" END AS impter_97, CASE WHEN ("ADS"."Feature_96" IS NULL) THEN -0.0275885280314 ELSE "ADS"."Feature_96" END AS impter_98, CASE WHEN ("ADS"."Feature_97" IS NULL) THEN 0.105287788103 ELSE "ADS"."Feature_97" END AS impter_99, CASE WHEN ("ADS"."Feature_98" IS NULL) THEN 0.0664070338022 ELSE "ADS"."Feature_98" END AS impter_100, CASE WHEN ("ADS"."Feature_99" IS NULL) THEN 0.0656993099584 ELSE "ADS"."Feature_99" END AS impter_101 
FROM "RandomReg_100" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - -0.0812808530019) / 1.00004035593 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.134368051725) / 0.883790498818 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - -0.117133543927) / 0.85705690229 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.103145256915) / 1.00291762835 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.048598770616) / 0.912896663254 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.0998569467735) / 0.898709059445 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.0672774556566) / 1.01424476115 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.162238409285) / 1.07476623075 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.0406936285261) / 1.02626786723 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.0516599050886) / 0.840243604374 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 0.101790678393) / 1.00682423639 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - -0.17597473627) / 0.924071076492 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - -0.096751384941) / 0.978379086977 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - -0.0460865691263) / 0.978113535429 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - 0.101658522861) / 0.901445697871 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - 0.111799030108) / 0.977915503486 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - -0.00611023335938) / 0.998102069762 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - 0.0714470406891) / 0.887481646517 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - -0.0880845865012) / 0.839292570374 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - -0.0718279900088) / 0.950741976578 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - -0.0723020084731) / 1.06682699865 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - 0.0289669307994) / 0.990282372492 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - 0.21388217633) / 0.862325396878 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - -0.0666929791941) / 0.959877056408 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - 0.04615234855) / 0.987850288585 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - 0.0324951322277) / 0.958395474025 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - 0.0522423933061) / 0.977110727504 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - 0.0187458719666) / 1.05571992608 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - 0.0155530792298) / 0.937648102202 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - 0.22581537299) / 1.0513597557 AS scaler_31, (CAST("ADS_imp_1_OUT".impter_32 AS FLOAT) - -0.169898577788) / 1.05781688636 AS scaler_32, (CAST("ADS_imp_1_OUT".impter_33 AS FLOAT) - 0.036044309157) / 0.920010657344 AS scaler_33, (CAST("ADS_imp_1_OUT".impter_34 AS FLOAT) - -0.171993241626) / 0.981480025144 AS scaler_34, (CAST("ADS_imp_1_OUT".impter_35 AS FLOAT) - 0.137814188879) / 0.917701205117 AS scaler_35, (CAST("ADS_imp_1_OUT".impter_36 AS FLOAT) - -0.00243821096422) / 0.894438011611 AS scaler_36, (CAST("ADS_imp_1_OUT".impter_37 AS FLOAT) - 0.0608337491315) / 0.936165105488 AS scaler_37, (CAST("ADS_imp_1_OUT".impter_38 AS FLOAT) - -0.1890599869) / 1.12903981758 AS scaler_38, (CAST("ADS_imp_1_OUT".impter_39 AS FLOAT) - -0.0963521927847) / 1.07035462545 AS scaler_39, (CAST("ADS_imp_1_OUT".impter_40 AS FLOAT) - -0.101606675074) / 0.920646499227 AS scaler_40, (CAST("ADS_imp_1_OUT".impter_41 AS FLOAT) - 0.0647525054158) / 0.898610910619 AS scaler_41, (CAST("ADS_imp_1_OUT".impter_42 AS FLOAT) - -0.302643050361) / 1.13043240597 AS scaler_42, (CAST("ADS_imp_1_OUT".impter_43 AS FLOAT) - -0.132641556819) / 0.858526079685 AS scaler_43, (CAST("ADS_imp_1_OUT".impter_44 AS FLOAT) - -0.133405478073) / 0.962489523356 AS scaler_44, (CAST("ADS_imp_1_OUT".impter_45 AS FLOAT) - -0.00114360097028) / 0.904937048405 AS scaler_45, (CAST("ADS_imp_1_OUT".impter_46 AS FLOAT) - -0.0533515790892) / 1.06100264576 AS scaler_46, (CAST("ADS_imp_1_OUT".impter_47 AS FLOAT) - 0.0171453700269) / 0.95570978583 AS scaler_47, (CAST("ADS_imp_1_OUT".impter_48 AS FLOAT) - -0.0590594495726) / 1.08948220126 AS scaler_48, (CAST("ADS_imp_1_OUT".impter_49 AS FLOAT) - -0.0952887996818) / 0.857147595338 AS scaler_49, (CAST("ADS_imp_1_OUT".impter_50 AS FLOAT) - -0.157813634634) / 0.991963586752 AS scaler_50, (CAST("ADS_imp_1_OUT".impter_51 AS FLOAT) - -0.237944333925) / 1.00675031297 AS scaler_51, (CAST("ADS_imp_1_OUT".impter_52 AS FLOAT) - 0.13863850693) / 1.02792733889 AS scaler_52, (CAST("ADS_imp_1_OUT".impter_53 AS FLOAT) - -0.0169962199149) / 0.974408927554 AS scaler_53, (CAST("ADS_imp_1_OUT".impter_54 AS FLOAT) - 0.197014900038) / 0.868492071166 AS scaler_54, (CAST("ADS_imp_1_OUT".impter_55 AS FLOAT) - 0.0516299047324) / 0.894397475223 AS scaler_55, (CAST("ADS_imp_1_OUT".impter_56 AS FLOAT) - -0.134530020987) / 0.963483965932 AS scaler_56, (CAST("ADS_imp_1_OUT".impter_57 AS FLOAT) - 0.147893701046) / 1.06153996262 AS scaler_57, (CAST("ADS_imp_1_OUT".impter_58 AS FLOAT) - -0.0131427594384) / 0.97720152785 AS scaler_58, (CAST("ADS_imp_1_OUT".impter_59 AS FLOAT) - -0.0929916299466) / 1.00717584355 AS scaler_59, (CAST("ADS_imp_1_OUT".impter_60 AS FLOAT) - -0.24689492769) / 0.923735412805 AS scaler_60, (CAST("ADS_imp_1_OUT".impter_61 AS FLOAT) - 0.134997271083) / 1.10158436882 AS scaler_61, (CAST("ADS_imp_1_OUT".impter_62 AS FLOAT) - 0.00255440055077) / 1.06644516394 AS scaler_62, (CAST("ADS_imp_1_OUT".impter_63 AS FLOAT) - 0.125273686635) / 1.10356772219 AS scaler_63, (CAST("ADS_imp_1_OUT".impter_64 AS FLOAT) - -0.0373996229606) / 1.03216944442 AS scaler_64, (CAST("ADS_imp_1_OUT".impter_65 AS FLOAT) - -0.0299886958018) / 1.07149048005 AS scaler_65, (CAST("ADS_imp_1_OUT".impter_66 AS FLOAT) - -0.0428608851687) / 1.19000074729 AS scaler_66, (CAST("ADS_imp_1_OUT".impter_67 AS FLOAT) - -0.143834700665) / 0.983863253624 AS scaler_67, (CAST("ADS_imp_1_OUT".impter_68 AS FLOAT) - -0.0526979391089) / 1.13300410964 AS scaler_68, (CAST("ADS_imp_1_OUT".impter_69 AS FLOAT) - 0.0292679402713) / 0.950591188382 AS scaler_69, (CAST("ADS_imp_1_OUT".impter_70 AS FLOAT) - 0.104310808883) / 0.912489280474 AS scaler_70, (CAST("ADS_imp_1_OUT".impter_71 AS FLOAT) - -0.0961968743305) / 1.04352637486 AS scaler_71, (CAST("ADS_imp_1_OUT".impter_72 AS FLOAT) - 0.00673331929833) / 1.068622613 AS scaler_72, (CAST("ADS_imp_1_OUT".impter_73 AS FLOAT) - 0.0328966593537) / 0.859185924601 AS scaler_73, (CAST("ADS_imp_1_OUT".impter_74 AS FLOAT) - 0.0806427727546) / 1.03107280398 AS scaler_74, (CAST("ADS_imp_1_OUT".impter_75 AS FLOAT) - -0.106035567555) / 0.97576444918 AS scaler_75, (CAST("ADS_imp_1_OUT".impter_76 AS FLOAT) - 0.094891001483) / 0.908286175367 AS scaler_76, (CAST("ADS_imp_1_OUT".impter_77 AS FLOAT) - -0.1966488711) / 0.95700911115 AS scaler_77, (CAST("ADS_imp_1_OUT".impter_78 AS FLOAT) - 0.116526435149) / 0.890699364506 AS scaler_78, (CAST("ADS_imp_1_OUT".impter_79 AS FLOAT) - 0.193402183481) / 1.01519063544 AS scaler_79, (CAST("ADS_imp_1_OUT".impter_80 AS FLOAT) - 0.112097090879) / 1.0005941329 AS scaler_80, (CAST("ADS_imp_1_OUT".impter_81 AS FLOAT) - 0.107090136212) / 0.998199099541 AS scaler_81, (CAST("ADS_imp_1_OUT".impter_82 AS FLOAT) - -0.0103304292092) / 1.1261340687 AS scaler_82, (CAST("ADS_imp_1_OUT".impter_83 AS FLOAT) - 0.110265521044) / 1.02036315958 AS scaler_83, (CAST("ADS_imp_1_OUT".impter_84 AS FLOAT) - 0.0119163458945) / 0.952019831589 AS scaler_84, (CAST("ADS_imp_1_OUT".impter_85 AS FLOAT) - 0.013369825695) / 1.05396504769 AS scaler_85, (CAST("ADS_imp_1_OUT".impter_86 AS FLOAT) - -0.15005120007) / 0.998199382399 AS scaler_86, (CAST("ADS_imp_1_OUT".impter_87 AS FLOAT) - -0.0902217757945) / 0.911905498566 AS scaler_87, (CAST("ADS_imp_1_OUT".impter_88 AS FLOAT) - -0.160296256572) / 1.05306114439 AS scaler_88, (CAST("ADS_imp_1_OUT".impter_89 AS FLOAT) - -0.101270172935) / 1.06730881623 AS scaler_89, (CAST("ADS_imp_1_OUT".impter_90 AS FLOAT) - 0.332354300629) / 0.85173986088 AS scaler_90, (CAST("ADS_imp_1_OUT".impter_91 AS FLOAT) - 0.0517311730608) / 0.903657197208 AS scaler_91, (CAST("ADS_imp_1_OUT".impter_92 AS FLOAT) - 0.10788792122) / 0.967916174644 AS scaler_92, (CAST("ADS_imp_1_OUT".impter_93 AS FLOAT) - 0.214549318747) / 0.905927839775 AS scaler_93, (CAST("ADS_imp_1_OUT".impter_94 AS FLOAT) - -0.163173377699) / 1.09771899499 AS scaler_94, (CAST("ADS_imp_1_OUT".impter_95 AS FLOAT) - -0.224238407688) / 0.785962436803 AS scaler_95, (CAST("ADS_imp_1_OUT".impter_96 AS FLOAT) - -0.276958475653) / 1.00075974241 AS scaler_96, (CAST("ADS_imp_1_OUT".impter_97 AS FLOAT) - 0.037863552135) / 0.961749101486 AS scaler_97, (CAST("ADS_imp_1_OUT".impter_98 AS FLOAT) - -0.0275885280314) / 0.888578840708 AS scaler_98, (CAST("ADS_imp_1_OUT".impter_99 AS FLOAT) - 0.105287788103) / 0.988117943765 AS scaler_99, (CAST("ADS_imp_1_OUT".impter_100 AS FLOAT) - 0.0664070338022) / 0.893132152456 AS scaler_100, (CAST("ADS_imp_1_OUT".impter_101 AS FLOAT) - 0.0656993099584) / 0.936700135182 AS scaler_101 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_82 <= -0.17478495836257935) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_43 <= -0.4531792104244232) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_57 <= 0.6153919100761414) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_65 <= 0.05197323486208916) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_41 <= 0.43509984016418457) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_59 <= 0.8211808204650879) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 1.5182774066925049) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, 2 AS parent_id, -252.84102656467715 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, -401.01586877236855 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 3 AS depth, 5 AS parent_id, -140.43801884125133 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, 5 AS parent_id, 111.22723579469624 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 20 AS count, 3 AS depth, 9 AS parent_id, 2.0020662492701846 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 9 AS parent_id, 193.88392579467964 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, 12 AS parent_id, 236.29693349709683 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 12 AS parent_id, -68.24444068793147 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"GB_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_82 <= -0.17478495836257935) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_43 <= -0.4531792104244232) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_57 <= 0.6153919100761414) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_65 <= -0.024759966880083084) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.6375933885574341) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_65 <= -1.509153127670288) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_30 <= 0.8356819748878479) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, 2 AS parent_id, -227.55692390820943 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, -360.91428189513175 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, 5 AS parent_id, -152.25652148339992 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, 5 AS parent_id, 77.73187383936153 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -160.31951781815866 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 31 AS count, 3 AS depth, 9 AS parent_id, 160.54972594405706 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, 12 AS parent_id, -47.46336042041583 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 12 AS parent_id, 102.703183089185 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"GB_Tree_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_82 <= -0.17478495836257935) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_97 <= -0.2816576361656189) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_43 <= -0.0922880470752716) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_81 <= 0.5505832433700562) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_41 <= 0.43509984016418457) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_59 <= 0.8211808204650879) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -1.1118205785751343) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, 2 AS parent_id, -268.6966071831282 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 2 AS parent_id, -132.286115276833 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, 5 AS parent_id, -66.30218273793687 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 5 AS parent_id, 132.8221282945893 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 20 AS count, 3 AS depth, 9 AS parent_id, -4.5147952272318355 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 9 AS parent_id, 162.23855532393944 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 12 AS parent_id, 18.409364311488886 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, 12 AS parent_id, 211.7568683380744 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"GB_Tree_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_82 <= -0.17478495836257935) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_43 <= -0.4531792104244232) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_65 <= 0.07095328718423843) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_65 <= 0.05197323486208916) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_96 <= -0.4484615921974182) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_22 <= 0.665626049041748) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_51 <= 1.2287237644195557) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, 2 AS parent_id, -248.63223217136462 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 2 AS parent_id, -138.64685597514327 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 3 AS depth, 5 AS parent_id, -104.47481289543998 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, 5 AS parent_id, 88.63223618704266 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, 9 AS parent_id, 109.73803198644433 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 9 AS parent_id, 259.2870627880886 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 3 AS depth, 12 AS parent_id, -2.7785670851123636 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 12 AS parent_id, 197.77273802049856 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"GB_Tree_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3")
 SELECT "Score_Union_CTE_esu_0"."KEY", "Score_Union_CTE_esu_0"."Estimator" 
FROM (SELECT "GB_Tree_0_0"."KEY" AS "KEY", "GB_Tree_0_0"."Estimator" AS "Estimator" 
FROM "GB_Tree_0_0" UNION ALL SELECT "GB_Tree_1_0"."KEY" AS "KEY", "GB_Tree_1_0"."Estimator" AS "Estimator" 
FROM "GB_Tree_1_0" UNION ALL SELECT "GB_Tree_2_0"."KEY" AS "KEY", "GB_Tree_2_0"."Estimator" AS "Estimator" 
FROM "GB_Tree_2_0" UNION ALL SELECT "GB_Tree_3_0"."KEY" AS "KEY", "GB_Tree_3_0"."Estimator" AS "Estimator" 
FROM "GB_Tree_3_0") AS "Score_Union_CTE_esu_0"), 
"Score_Union_CTE" AS 
(SELECT "Score_Union_CTEbig_esu"."KEY" AS "KEY", "Score_Union_CTEbig_esu"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE_0"."KEY" AS "KEY", "Score_Union_CTE_0"."Estimator" AS "Estimator" 
FROM "Score_Union_CTE_0") AS "Score_Union_CTEbig_esu"), 
"GradBoost_Sum_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", sum("Score_Union_CTE"."Estimator") AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T")
 SELECT "GradBoost_Sum_Scores"."KEY" AS "KEY", -11.4716147827 + 0.1 * "GradBoost_Sum_Scores"."Estimator" AS "Estimator" 
FROM "GradBoost_Sum_Scores"