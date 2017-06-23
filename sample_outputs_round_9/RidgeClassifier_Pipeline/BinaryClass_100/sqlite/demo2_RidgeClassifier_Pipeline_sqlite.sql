-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0567280422233 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.140236579012 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0372657174885 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.330679704953 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.123998675786 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.444960369742 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.212981971698 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -0.302709868068 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.234053643219 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.206370255705 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.0770095930203 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 0.27068149358 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN -0.161863913571 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 0.0399288414227 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN -0.254265059151 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN -0.111276408114 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN -0.0861630640894 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN -0.334747995673 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN -0.094859476883 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.113582036668 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN -0.0759245962155 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN -0.0343003464937 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 0.107994270688 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 0.0369418755717 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN -0.181975553155 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN -0.10915960674 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN -0.0307402650348 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.330130237811 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.0650795230961 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.16789831442 ELSE "ADS"."Feature_29" END AS impter_31, CASE WHEN ("ADS"."Feature_30" IS NULL) THEN -0.0752537387689 ELSE "ADS"."Feature_30" END AS impter_32, CASE WHEN ("ADS"."Feature_31" IS NULL) THEN -0.0494582446659 ELSE "ADS"."Feature_31" END AS impter_33, CASE WHEN ("ADS"."Feature_32" IS NULL) THEN 0.0335705224736 ELSE "ADS"."Feature_32" END AS impter_34, CASE WHEN ("ADS"."Feature_33" IS NULL) THEN 0.16321593994 ELSE "ADS"."Feature_33" END AS impter_35, CASE WHEN ("ADS"."Feature_34" IS NULL) THEN 0.358926092446 ELSE "ADS"."Feature_34" END AS impter_36, CASE WHEN ("ADS"."Feature_35" IS NULL) THEN 0.158263968624 ELSE "ADS"."Feature_35" END AS impter_37, CASE WHEN ("ADS"."Feature_36" IS NULL) THEN -0.142512862429 ELSE "ADS"."Feature_36" END AS impter_38, CASE WHEN ("ADS"."Feature_37" IS NULL) THEN 0.347035564752 ELSE "ADS"."Feature_37" END AS impter_39, CASE WHEN ("ADS"."Feature_38" IS NULL) THEN -0.0238552923272 ELSE "ADS"."Feature_38" END AS impter_40, CASE WHEN ("ADS"."Feature_39" IS NULL) THEN -0.0695866097013 ELSE "ADS"."Feature_39" END AS impter_41, CASE WHEN ("ADS"."Feature_40" IS NULL) THEN 0.0426795230663 ELSE "ADS"."Feature_40" END AS impter_42, CASE WHEN ("ADS"."Feature_41" IS NULL) THEN -0.0770669495226 ELSE "ADS"."Feature_41" END AS impter_43, CASE WHEN ("ADS"."Feature_42" IS NULL) THEN 0.212231124579 ELSE "ADS"."Feature_42" END AS impter_44, CASE WHEN ("ADS"."Feature_43" IS NULL) THEN 0.234117745754 ELSE "ADS"."Feature_43" END AS impter_45, CASE WHEN ("ADS"."Feature_44" IS NULL) THEN 0.153593757972 ELSE "ADS"."Feature_44" END AS impter_46, CASE WHEN ("ADS"."Feature_45" IS NULL) THEN -0.154123834672 ELSE "ADS"."Feature_45" END AS impter_47, CASE WHEN ("ADS"."Feature_46" IS NULL) THEN 0.050420642985 ELSE "ADS"."Feature_46" END AS impter_48, CASE WHEN ("ADS"."Feature_47" IS NULL) THEN 0.286293178863 ELSE "ADS"."Feature_47" END AS impter_49, CASE WHEN ("ADS"."Feature_48" IS NULL) THEN -0.16139921098 ELSE "ADS"."Feature_48" END AS impter_50, CASE WHEN ("ADS"."Feature_49" IS NULL) THEN 0.324889015692 ELSE "ADS"."Feature_49" END AS impter_51, CASE WHEN ("ADS"."Feature_50" IS NULL) THEN -0.297583214737 ELSE "ADS"."Feature_50" END AS impter_52, CASE WHEN ("ADS"."Feature_51" IS NULL) THEN 0.034933057271 ELSE "ADS"."Feature_51" END AS impter_53, CASE WHEN ("ADS"."Feature_52" IS NULL) THEN 0.0330570969759 ELSE "ADS"."Feature_52" END AS impter_54, CASE WHEN ("ADS"."Feature_53" IS NULL) THEN -0.399342948851 ELSE "ADS"."Feature_53" END AS impter_55, CASE WHEN ("ADS"."Feature_54" IS NULL) THEN -0.11508478233 ELSE "ADS"."Feature_54" END AS impter_56, CASE WHEN ("ADS"."Feature_55" IS NULL) THEN 0.23421370694 ELSE "ADS"."Feature_55" END AS impter_57, CASE WHEN ("ADS"."Feature_56" IS NULL) THEN -0.265114673051 ELSE "ADS"."Feature_56" END AS impter_58, CASE WHEN ("ADS"."Feature_57" IS NULL) THEN 0.14958697519 ELSE "ADS"."Feature_57" END AS impter_59, CASE WHEN ("ADS"."Feature_58" IS NULL) THEN -0.164025250034 ELSE "ADS"."Feature_58" END AS impter_60, CASE WHEN ("ADS"."Feature_59" IS NULL) THEN 0.233207341918 ELSE "ADS"."Feature_59" END AS impter_61, CASE WHEN ("ADS"."Feature_60" IS NULL) THEN -0.0732155511805 ELSE "ADS"."Feature_60" END AS impter_62, CASE WHEN ("ADS"."Feature_61" IS NULL) THEN 0.302441063504 ELSE "ADS"."Feature_61" END AS impter_63, CASE WHEN ("ADS"."Feature_62" IS NULL) THEN 0.0144713812992 ELSE "ADS"."Feature_62" END AS impter_64, CASE WHEN ("ADS"."Feature_63" IS NULL) THEN -0.0606396822069 ELSE "ADS"."Feature_63" END AS impter_65, CASE WHEN ("ADS"."Feature_64" IS NULL) THEN 0.138256526423 ELSE "ADS"."Feature_64" END AS impter_66, CASE WHEN ("ADS"."Feature_65" IS NULL) THEN -0.0237126100632 ELSE "ADS"."Feature_65" END AS impter_67, CASE WHEN ("ADS"."Feature_66" IS NULL) THEN 0.245442059016 ELSE "ADS"."Feature_66" END AS impter_68, CASE WHEN ("ADS"."Feature_67" IS NULL) THEN -0.41154503268 ELSE "ADS"."Feature_67" END AS impter_69, CASE WHEN ("ADS"."Feature_68" IS NULL) THEN -0.245621429007 ELSE "ADS"."Feature_68" END AS impter_70, CASE WHEN ("ADS"."Feature_69" IS NULL) THEN -0.0789090275444 ELSE "ADS"."Feature_69" END AS impter_71, CASE WHEN ("ADS"."Feature_70" IS NULL) THEN -0.0528437390469 ELSE "ADS"."Feature_70" END AS impter_72, CASE WHEN ("ADS"."Feature_71" IS NULL) THEN -0.43059903839 ELSE "ADS"."Feature_71" END AS impter_73, CASE WHEN ("ADS"."Feature_72" IS NULL) THEN -0.216078891016 ELSE "ADS"."Feature_72" END AS impter_74, CASE WHEN ("ADS"."Feature_73" IS NULL) THEN 0.037759887104 ELSE "ADS"."Feature_73" END AS impter_75, CASE WHEN ("ADS"."Feature_74" IS NULL) THEN 0.094827890411 ELSE "ADS"."Feature_74" END AS impter_76, CASE WHEN ("ADS"."Feature_75" IS NULL) THEN 0.0148994555589 ELSE "ADS"."Feature_75" END AS impter_77, CASE WHEN ("ADS"."Feature_76" IS NULL) THEN -0.080734501794 ELSE "ADS"."Feature_76" END AS impter_78, CASE WHEN ("ADS"."Feature_77" IS NULL) THEN -0.0540749471232 ELSE "ADS"."Feature_77" END AS impter_79, CASE WHEN ("ADS"."Feature_78" IS NULL) THEN 0.199449269535 ELSE "ADS"."Feature_78" END AS impter_80, CASE WHEN ("ADS"."Feature_79" IS NULL) THEN 0.282134938645 ELSE "ADS"."Feature_79" END AS impter_81, CASE WHEN ("ADS"."Feature_80" IS NULL) THEN -0.102364949405 ELSE "ADS"."Feature_80" END AS impter_82, CASE WHEN ("ADS"."Feature_81" IS NULL) THEN 0.0551917402303 ELSE "ADS"."Feature_81" END AS impter_83, CASE WHEN ("ADS"."Feature_82" IS NULL) THEN 0.07437713068 ELSE "ADS"."Feature_82" END AS impter_84, CASE WHEN ("ADS"."Feature_83" IS NULL) THEN 0.194399064803 ELSE "ADS"."Feature_83" END AS impter_85, CASE WHEN ("ADS"."Feature_84" IS NULL) THEN 0.181106011811 ELSE "ADS"."Feature_84" END AS impter_86, CASE WHEN ("ADS"."Feature_85" IS NULL) THEN 0.279533354262 ELSE "ADS"."Feature_85" END AS impter_87, CASE WHEN ("ADS"."Feature_86" IS NULL) THEN 0.0847557544111 ELSE "ADS"."Feature_86" END AS impter_88, CASE WHEN ("ADS"."Feature_87" IS NULL) THEN -0.154690352565 ELSE "ADS"."Feature_87" END AS impter_89, CASE WHEN ("ADS"."Feature_88" IS NULL) THEN 0.126249860187 ELSE "ADS"."Feature_88" END AS impter_90, CASE WHEN ("ADS"."Feature_89" IS NULL) THEN -0.323372737003 ELSE "ADS"."Feature_89" END AS impter_91, CASE WHEN ("ADS"."Feature_90" IS NULL) THEN 0.136432974158 ELSE "ADS"."Feature_90" END AS impter_92, CASE WHEN ("ADS"."Feature_91" IS NULL) THEN -0.291499731768 ELSE "ADS"."Feature_91" END AS impter_93, CASE WHEN ("ADS"."Feature_92" IS NULL) THEN 0.344791599684 ELSE "ADS"."Feature_92" END AS impter_94, CASE WHEN ("ADS"."Feature_93" IS NULL) THEN -0.243235975327 ELSE "ADS"."Feature_93" END AS impter_95, CASE WHEN ("ADS"."Feature_94" IS NULL) THEN 0.0585748834279 ELSE "ADS"."Feature_94" END AS impter_96, CASE WHEN ("ADS"."Feature_95" IS NULL) THEN 0.349693899363 ELSE "ADS"."Feature_95" END AS impter_97, CASE WHEN ("ADS"."Feature_96" IS NULL) THEN 0.145926424279 ELSE "ADS"."Feature_96" END AS impter_98, CASE WHEN ("ADS"."Feature_97" IS NULL) THEN 0.165599376595 ELSE "ADS"."Feature_97" END AS impter_99, CASE WHEN ("ADS"."Feature_98" IS NULL) THEN -0.242346912551 ELSE "ADS"."Feature_98" END AS impter_100, CASE WHEN ("ADS"."Feature_99" IS NULL) THEN 0.02376564685 ELSE "ADS"."Feature_99" END AS impter_101 
FROM "BinaryClass_100" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.0567280422233) / 0.831828357122 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.140236579012) / 0.800964567395 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.0372657174885) / 0.925192556932 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - -0.330679704953) / 0.659382632997 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.123998675786) / 1.34483937815 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.444960369742) / 1.02516327106 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.212981971698) / 0.83352353084 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - -0.302709868068) / 0.763981643534 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.234053643219) / 0.75741981393 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.206370255705) / 0.898687472452 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 0.0770095930203) / 1.26748109751 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 0.27068149358) / 0.866399857522 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - -0.161863913571) / 0.799497357254 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - 0.0399288414227) / 1.13087285599 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - -0.254265059151) / 1.01651791825 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - -0.111276408114) / 0.938752483985 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - -0.0861630640894) / 0.914681027757 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - -0.334747995673) / 0.949629992679 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - -0.094859476883) / 1.50960647262 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - 0.113582036668) / 1.07105757599 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - -0.0759245962155) / 1.06890449289 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - -0.0343003464937) / 1.0014448127 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - 0.107994270688) / 1.17340493017 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - 0.0369418755717) / 0.80742800075 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - -0.181975553155) / 0.687364760105 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - -0.10915960674) / 0.687065607707 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - -0.0307402650348) / 0.972065432686 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - 0.330130237811) / 1.13932290297 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - 0.0650795230961) / 0.765350959284 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - 0.16789831442) / 0.947407864314 AS scaler_31, (CAST("ADS_imp_1_OUT".impter_32 AS FLOAT) - -0.0752537387689) / 0.90014197817 AS scaler_32, (CAST("ADS_imp_1_OUT".impter_33 AS FLOAT) - -0.0494582446659) / 0.872802132506 AS scaler_33, (CAST("ADS_imp_1_OUT".impter_34 AS FLOAT) - 0.0335705224736) / 1.1007678159 AS scaler_34, (CAST("ADS_imp_1_OUT".impter_35 AS FLOAT) - 0.16321593994) / 0.946567448221 AS scaler_35, (CAST("ADS_imp_1_OUT".impter_36 AS FLOAT) - 0.358926092446) / 0.716738828913 AS scaler_36, (CAST("ADS_imp_1_OUT".impter_37 AS FLOAT) - 0.158263968624) / 0.910969373396 AS scaler_37, (CAST("ADS_imp_1_OUT".impter_38 AS FLOAT) - -0.142512862429) / 0.944315329835 AS scaler_38, (CAST("ADS_imp_1_OUT".impter_39 AS FLOAT) - 0.347035564752) / 0.811170440621 AS scaler_39, (CAST("ADS_imp_1_OUT".impter_40 AS FLOAT) - -0.0238552923272) / 0.948251267852 AS scaler_40, (CAST("ADS_imp_1_OUT".impter_41 AS FLOAT) - -0.0695866097013) / 0.962996997811 AS scaler_41, (CAST("ADS_imp_1_OUT".impter_42 AS FLOAT) - 0.0426795230663) / 0.830424578294 AS scaler_42, (CAST("ADS_imp_1_OUT".impter_43 AS FLOAT) - -0.0770669495226) / 0.979391477839 AS scaler_43, (CAST("ADS_imp_1_OUT".impter_44 AS FLOAT) - 0.212231124579) / 1.07616886207 AS scaler_44, (CAST("ADS_imp_1_OUT".impter_45 AS FLOAT) - 0.234117745754) / 0.916265301599 AS scaler_45, (CAST("ADS_imp_1_OUT".impter_46 AS FLOAT) - 0.153593757972) / 0.967126112496 AS scaler_46, (CAST("ADS_imp_1_OUT".impter_47 AS FLOAT) - -0.154123834672) / 0.749453591715 AS scaler_47, (CAST("ADS_imp_1_OUT".impter_48 AS FLOAT) - 0.050420642985) / 0.856395244605 AS scaler_48, (CAST("ADS_imp_1_OUT".impter_49 AS FLOAT) - 0.286293178863) / 0.895752720335 AS scaler_49, (CAST("ADS_imp_1_OUT".impter_50 AS FLOAT) - -0.16139921098) / 0.969470070296 AS scaler_50, (CAST("ADS_imp_1_OUT".impter_51 AS FLOAT) - 0.324889015692) / 1.00870898224 AS scaler_51, (CAST("ADS_imp_1_OUT".impter_52 AS FLOAT) - -0.297583214737) / 1.13036441631 AS scaler_52, (CAST("ADS_imp_1_OUT".impter_53 AS FLOAT) - 0.034933057271) / 1.0533444274 AS scaler_53, (CAST("ADS_imp_1_OUT".impter_54 AS FLOAT) - 0.0330570969759) / 0.938408778503 AS scaler_54, (CAST("ADS_imp_1_OUT".impter_55 AS FLOAT) - -0.399342948851) / 0.759757848845 AS scaler_55, (CAST("ADS_imp_1_OUT".impter_56 AS FLOAT) - -0.11508478233) / 1.11536740054 AS scaler_56, (CAST("ADS_imp_1_OUT".impter_57 AS FLOAT) - 0.23421370694) / 0.941182394663 AS scaler_57, (CAST("ADS_imp_1_OUT".impter_58 AS FLOAT) - -0.265114673051) / 1.0717752584 AS scaler_58, (CAST("ADS_imp_1_OUT".impter_59 AS FLOAT) - 0.14958697519) / 1.40130918351 AS scaler_59, (CAST("ADS_imp_1_OUT".impter_60 AS FLOAT) - -0.164025250034) / 0.771415820729 AS scaler_60, (CAST("ADS_imp_1_OUT".impter_61 AS FLOAT) - 0.233207341918) / 1.03443330299 AS scaler_61, (CAST("ADS_imp_1_OUT".impter_62 AS FLOAT) - -0.0732155511805) / 0.935081365613 AS scaler_62, (CAST("ADS_imp_1_OUT".impter_63 AS FLOAT) - 0.302441063504) / 0.936259201278 AS scaler_63, (CAST("ADS_imp_1_OUT".impter_64 AS FLOAT) - 0.0144713812992) / 0.853578444683 AS scaler_64, (CAST("ADS_imp_1_OUT".impter_65 AS FLOAT) - -0.0606396822069) / 0.974405154294 AS scaler_65, (CAST("ADS_imp_1_OUT".impter_66 AS FLOAT) - 0.138256526423) / 0.909314089733 AS scaler_66, (CAST("ADS_imp_1_OUT".impter_67 AS FLOAT) - -0.0237126100632) / 0.868807999806 AS scaler_67, (CAST("ADS_imp_1_OUT".impter_68 AS FLOAT) - 0.245442059016) / 0.969476935673 AS scaler_68, (CAST("ADS_imp_1_OUT".impter_69 AS FLOAT) - -0.41154503268) / 0.958672845816 AS scaler_69, (CAST("ADS_imp_1_OUT".impter_70 AS FLOAT) - -0.245621429007) / 0.817916501251 AS scaler_70, (CAST("ADS_imp_1_OUT".impter_71 AS FLOAT) - -0.0789090275444) / 0.758656563635 AS scaler_71, (CAST("ADS_imp_1_OUT".impter_72 AS FLOAT) - -0.0528437390469) / 0.531634919361 AS scaler_72, (CAST("ADS_imp_1_OUT".impter_73 AS FLOAT) - -0.43059903839) / 1.05928980937 AS scaler_73, (CAST("ADS_imp_1_OUT".impter_74 AS FLOAT) - -0.216078891016) / 1.15779181755 AS scaler_74, (CAST("ADS_imp_1_OUT".impter_75 AS FLOAT) - 0.037759887104) / 0.715711028517 AS scaler_75, (CAST("ADS_imp_1_OUT".impter_76 AS FLOAT) - 0.094827890411) / 0.989371955837 AS scaler_76, (CAST("ADS_imp_1_OUT".impter_77 AS FLOAT) - 0.0148994555589) / 1.00905262229 AS scaler_77, (CAST("ADS_imp_1_OUT".impter_78 AS FLOAT) - -0.080734501794) / 1.11401597731 AS scaler_78, (CAST("ADS_imp_1_OUT".impter_79 AS FLOAT) - -0.0540749471232) / 0.53316169274 AS scaler_79, (CAST("ADS_imp_1_OUT".impter_80 AS FLOAT) - 0.199449269535) / 1.12142885632 AS scaler_80, (CAST("ADS_imp_1_OUT".impter_81 AS FLOAT) - 0.282134938645) / 0.951828903346 AS scaler_81, (CAST("ADS_imp_1_OUT".impter_82 AS FLOAT) - -0.102364949405) / 1.0119335436 AS scaler_82, (CAST("ADS_imp_1_OUT".impter_83 AS FLOAT) - 0.0551917402303) / 0.783125729703 AS scaler_83, (CAST("ADS_imp_1_OUT".impter_84 AS FLOAT) - 0.07437713068) / 0.867808611228 AS scaler_84, (CAST("ADS_imp_1_OUT".impter_85 AS FLOAT) - 0.194399064803) / 1.1133184258 AS scaler_85, (CAST("ADS_imp_1_OUT".impter_86 AS FLOAT) - 0.181106011811) / 0.869774562169 AS scaler_86, (CAST("ADS_imp_1_OUT".impter_87 AS FLOAT) - 0.279533354262) / 1.08303480028 AS scaler_87, (CAST("ADS_imp_1_OUT".impter_88 AS FLOAT) - 0.0847557544111) / 0.670203676888 AS scaler_88, (CAST("ADS_imp_1_OUT".impter_89 AS FLOAT) - -0.154690352565) / 1.01399312 AS scaler_89, (CAST("ADS_imp_1_OUT".impter_90 AS FLOAT) - 0.126249860187) / 0.96452903461 AS scaler_90, (CAST("ADS_imp_1_OUT".impter_91 AS FLOAT) - -0.323372737003) / 1.21807513792 AS scaler_91, (CAST("ADS_imp_1_OUT".impter_92 AS FLOAT) - 0.136432974158) / 0.71747771542 AS scaler_92, (CAST("ADS_imp_1_OUT".impter_93 AS FLOAT) - -0.291499731768) / 1.09041807149 AS scaler_93, (CAST("ADS_imp_1_OUT".impter_94 AS FLOAT) - 0.344791599684) / 1.2108198638 AS scaler_94, (CAST("ADS_imp_1_OUT".impter_95 AS FLOAT) - -0.243235975327) / 1.00841749852 AS scaler_95, (CAST("ADS_imp_1_OUT".impter_96 AS FLOAT) - 0.0585748834279) / 1.0571368891 AS scaler_96, (CAST("ADS_imp_1_OUT".impter_97 AS FLOAT) - 0.349693899363) / 0.700762723708 AS scaler_97, (CAST("ADS_imp_1_OUT".impter_98 AS FLOAT) - 0.145926424279) / 1.00130084961 AS scaler_98, (CAST("ADS_imp_1_OUT".impter_99 AS FLOAT) - 0.165599376595) / 0.905941348571 AS scaler_99, (CAST("ADS_imp_1_OUT".impter_100 AS FLOAT) - -0.242346912551) / 0.932658681911 AS scaler_100, (CAST("ADS_imp_1_OUT".impter_101 AS FLOAT) - 0.02376564685) / 0.855845195736 AS scaler_101 
FROM "ADS_imp_1_OUT"), 
linear_model_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0.09922570104173416 * "ADS_sca_2_OUT".scaler_2 + -0.06476332423097807 * "ADS_sca_2_OUT".scaler_3 + -0.013682330971817994 * "ADS_sca_2_OUT".scaler_4 + 0.05565085088515394 * "ADS_sca_2_OUT".scaler_5 + -0.09325496253580409 * "ADS_sca_2_OUT".scaler_6 + 0.05077481990956429 * "ADS_sca_2_OUT".scaler_7 + 0.10026375282954329 * "ADS_sca_2_OUT".scaler_8 + -0.023235059647473015 * "ADS_sca_2_OUT".scaler_9 + 0.04583520333735093 * "ADS_sca_2_OUT".scaler_10 + 0.05163612152757774 * "ADS_sca_2_OUT".scaler_11 + -0.03336185772451817 * "ADS_sca_2_OUT".scaler_12 + 0.040359985325103376 * "ADS_sca_2_OUT".scaler_13 + 0.05639594589630562 * "ADS_sca_2_OUT".scaler_14 + 0.019295097533157467 * "ADS_sca_2_OUT".scaler_15 + -0.007349814127288932 * "ADS_sca_2_OUT".scaler_16 + -0.018966816538343065 * "ADS_sca_2_OUT".scaler_17 + 0.029196781071828035 * "ADS_sca_2_OUT".scaler_18 + 0.019678573195657797 * "ADS_sca_2_OUT".scaler_19 + -0.04007508247033037 * "ADS_sca_2_OUT".scaler_20 + -0.05292684387127098 * "ADS_sca_2_OUT".scaler_21 + 0.023310738347842322 * "ADS_sca_2_OUT".scaler_22 + 0.004866978864469617 * "ADS_sca_2_OUT".scaler_23 + 0.03590746902977641 * "ADS_sca_2_OUT".scaler_24 + 0.08298660132691067 * "ADS_sca_2_OUT".scaler_25 + 0.04894126021718851 * "ADS_sca_2_OUT".scaler_26 + -0.1089028016286669 * "ADS_sca_2_OUT".scaler_27 + 0.014941680446744949 * "ADS_sca_2_OUT".scaler_28 + 0.019020401402766045 * "ADS_sca_2_OUT".scaler_29 + -0.12302300556923132 * "ADS_sca_2_OUT".scaler_30 + 0.03535202619138236 * "ADS_sca_2_OUT".scaler_31 + -0.02454986558628492 * "ADS_sca_2_OUT".scaler_32 + -0.05862920830752478 * "ADS_sca_2_OUT".scaler_33 + -0.09292615670926407 * "ADS_sca_2_OUT".scaler_34 + -0.06858918207520845 * "ADS_sca_2_OUT".scaler_35 + -0.042188164479568614 * "ADS_sca_2_OUT".scaler_36 + 0.06871764438537947 * "ADS_sca_2_OUT".scaler_37 + -0.08898538564021519 * "ADS_sca_2_OUT".scaler_38 + 0.04209962345575773 * "ADS_sca_2_OUT".scaler_39 + -0.06989160640957201 * "ADS_sca_2_OUT".scaler_40 + -0.0449253504787 * "ADS_sca_2_OUT".scaler_41 + -0.025514623992335318 * "ADS_sca_2_OUT".scaler_42 + -0.053275714563438686 * "ADS_sca_2_OUT".scaler_43 + 0.04147553529881375 * "ADS_sca_2_OUT".scaler_44 + -0.048342904898023176 * "ADS_sca_2_OUT".scaler_45 + -0.130118172397485 * "ADS_sca_2_OUT".scaler_46 + 0.011742322351227043 * "ADS_sca_2_OUT".scaler_47 + 0.04869021380592905 * "ADS_sca_2_OUT".scaler_48 + 0.0031934328917369386 * "ADS_sca_2_OUT".scaler_49 + -0.06041314134883394 * "ADS_sca_2_OUT".scaler_50 + -0.022873578611457866 * "ADS_sca_2_OUT".scaler_51 + 0.005927849352732147 * "ADS_sca_2_OUT".scaler_52 + 0.042882146551291356 * "ADS_sca_2_OUT".scaler_53 + -0.04938594400704916 * "ADS_sca_2_OUT".scaler_54 + 0.04466301594314936 * "ADS_sca_2_OUT".scaler_55 + 0.050334635682566874 * "ADS_sca_2_OUT".scaler_56 + -0.0382296359532099 * "ADS_sca_2_OUT".scaler_57 + 0.08885179770793698 * "ADS_sca_2_OUT".scaler_58 + 0.10217275619333913 * "ADS_sca_2_OUT".scaler_59 + 0.058322979539133506 * "ADS_sca_2_OUT".scaler_60 + -0.014964788908551928 * "ADS_sca_2_OUT".scaler_61 + -0.01735392157485609 * "ADS_sca_2_OUT".scaler_62 + -0.006961462829156469 * "ADS_sca_2_OUT".scaler_63 + 0.046672279273849794 * "ADS_sca_2_OUT".scaler_64 + 0.00016974553090061612 * "ADS_sca_2_OUT".scaler_65 + 0.03203057663796744 * "ADS_sca_2_OUT".scaler_66 + 0.011997227553197006 * "ADS_sca_2_OUT".scaler_67 + -0.058265596692086544 * "ADS_sca_2_OUT".scaler_68 + 0.0132926007443196 * "ADS_sca_2_OUT".scaler_69 + -0.020410770954991362 * "ADS_sca_2_OUT".scaler_70 + 0.06346463492095535 * "ADS_sca_2_OUT".scaler_71 + 0.013688621250850644 * "ADS_sca_2_OUT".scaler_72 + -0.016872829356133455 * "ADS_sca_2_OUT".scaler_73 + -0.005503946912636631 * "ADS_sca_2_OUT".scaler_74 + -0.03620850798412976 * "ADS_sca_2_OUT".scaler_75 + 0.020450389542024418 * "ADS_sca_2_OUT".scaler_76 + 0.034670797672716046 * "ADS_sca_2_OUT".scaler_77 + -0.00262857753334428 * "ADS_sca_2_OUT".scaler_78 + -0.09918538761227857 * "ADS_sca_2_OUT".scaler_79 + 0.05767204104870525 * "ADS_sca_2_OUT".scaler_80 + -0.04400374596141434 * "ADS_sca_2_OUT".scaler_81 + -0.03189226964501796 * "ADS_sca_2_OUT".scaler_82 + -0.06946606579672185 * "ADS_sca_2_OUT".scaler_83 + 0.03378222481941107 * "ADS_sca_2_OUT".scaler_84 + -0.0013538138596760302 * "ADS_sca_2_OUT".scaler_85 + 0.00906645734126479 * "ADS_sca_2_OUT".scaler_86 + -0.014590363035752382 * "ADS_sca_2_OUT".scaler_87 + -0.04134903792843098 * "ADS_sca_2_OUT".scaler_88 + -0.010916442730210574 * "ADS_sca_2_OUT".scaler_89 + 0.06634072706638963 * "ADS_sca_2_OUT".scaler_90 + -0.026733773593781766 * "ADS_sca_2_OUT".scaler_91 + 0.00694383095732081 * "ADS_sca_2_OUT".scaler_92 + -0.04143762040549422 * "ADS_sca_2_OUT".scaler_93 + 0.09994743661965197 * "ADS_sca_2_OUT".scaler_94 + -0.011729367887310022 * "ADS_sca_2_OUT".scaler_95 + 0.009640388493715143 * "ADS_sca_2_OUT".scaler_96 + 0.0660761201385319 * "ADS_sca_2_OUT".scaler_97 + 0.04534680085058386 * "ADS_sca_2_OUT".scaler_98 + 0.011883514469849676 * "ADS_sca_2_OUT".scaler_99 + -0.00832872067676482 * "ADS_sca_2_OUT".scaler_100 + -0.005784140055137842 * "ADS_sca_2_OUT".scaler_101 + 0.12 AS lincomb 
FROM "ADS_sca_2_OUT")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM linear_model_cte