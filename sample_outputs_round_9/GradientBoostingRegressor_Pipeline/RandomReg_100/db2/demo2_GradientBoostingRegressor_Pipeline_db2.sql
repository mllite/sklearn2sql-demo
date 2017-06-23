-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.257890606372 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.349760417075 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.146432612127 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.0694381955953 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.164116573335 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0273800792431 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.20752688264 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.257805904306 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.201165130412 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.16804071992 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.0763244256068 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN -0.168615721243 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN -0.267383461416 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN -0.24619466007 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.367862573461 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN -0.039318543125 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.0535949509611 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.131793562903 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN -0.0759607610352 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN -0.326021196788 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN -0.0721679442319 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN -0.157513020334 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 0.167235437056 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 0.0624166493972 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN -0.0342522908477 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN -0.0741929272363 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN -0.111075527526 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN -0.227840837049 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.056439021092 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.602817406983 ELSE "ADS"."Feature_29" END AS impter_31, CASE WHEN ("ADS"."Feature_30" IS NULL) THEN -0.050750488415 ELSE "ADS"."Feature_30" END AS impter_32, CASE WHEN ("ADS"."Feature_31" IS NULL) THEN 0.259135911613 ELSE "ADS"."Feature_31" END AS impter_33, CASE WHEN ("ADS"."Feature_32" IS NULL) THEN -0.232242858599 ELSE "ADS"."Feature_32" END AS impter_34, CASE WHEN ("ADS"."Feature_33" IS NULL) THEN 0.186959618967 ELSE "ADS"."Feature_33" END AS impter_35, CASE WHEN ("ADS"."Feature_34" IS NULL) THEN 0.086094506118 ELSE "ADS"."Feature_34" END AS impter_36, CASE WHEN ("ADS"."Feature_35" IS NULL) THEN 0.443703914395 ELSE "ADS"."Feature_35" END AS impter_37, CASE WHEN ("ADS"."Feature_36" IS NULL) THEN -0.173607851953 ELSE "ADS"."Feature_36" END AS impter_38, CASE WHEN ("ADS"."Feature_37" IS NULL) THEN -0.2240124045 ELSE "ADS"."Feature_37" END AS impter_39, CASE WHEN ("ADS"."Feature_38" IS NULL) THEN -0.139279341964 ELSE "ADS"."Feature_38" END AS impter_40, CASE WHEN ("ADS"."Feature_39" IS NULL) THEN 0.14278994483 ELSE "ADS"."Feature_39" END AS impter_41, CASE WHEN ("ADS"."Feature_40" IS NULL) THEN -0.361379844443 ELSE "ADS"."Feature_40" END AS impter_42, CASE WHEN ("ADS"."Feature_41" IS NULL) THEN -0.0896026305066 ELSE "ADS"."Feature_41" END AS impter_43, CASE WHEN ("ADS"."Feature_42" IS NULL) THEN -0.00906836207357 ELSE "ADS"."Feature_42" END AS impter_44, CASE WHEN ("ADS"."Feature_43" IS NULL) THEN 0.361653482208 ELSE "ADS"."Feature_43" END AS impter_45, CASE WHEN ("ADS"."Feature_44" IS NULL) THEN -0.184326078169 ELSE "ADS"."Feature_44" END AS impter_46, CASE WHEN ("ADS"."Feature_45" IS NULL) THEN -0.0805905309966 ELSE "ADS"."Feature_45" END AS impter_47, CASE WHEN ("ADS"."Feature_46" IS NULL) THEN -0.354057808305 ELSE "ADS"."Feature_46" END AS impter_48, CASE WHEN ("ADS"."Feature_47" IS NULL) THEN -0.144408613612 ELSE "ADS"."Feature_47" END AS impter_49, CASE WHEN ("ADS"."Feature_48" IS NULL) THEN -0.266676134359 ELSE "ADS"."Feature_48" END AS impter_50, CASE WHEN ("ADS"."Feature_49" IS NULL) THEN -0.206379378352 ELSE "ADS"."Feature_49" END AS impter_51, CASE WHEN ("ADS"."Feature_50" IS NULL) THEN 0.0607808553886 ELSE "ADS"."Feature_50" END AS impter_52, CASE WHEN ("ADS"."Feature_51" IS NULL) THEN 0.142255266692 ELSE "ADS"."Feature_51" END AS impter_53, CASE WHEN ("ADS"."Feature_52" IS NULL) THEN 0.400232695144 ELSE "ADS"."Feature_52" END AS impter_54, CASE WHEN ("ADS"."Feature_53" IS NULL) THEN 0.0853033478117 ELSE "ADS"."Feature_53" END AS impter_55, CASE WHEN ("ADS"."Feature_54" IS NULL) THEN 0.00555971517985 ELSE "ADS"."Feature_54" END AS impter_56, CASE WHEN ("ADS"."Feature_55" IS NULL) THEN 0.129710542901 ELSE "ADS"."Feature_55" END AS impter_57, CASE WHEN ("ADS"."Feature_56" IS NULL) THEN 0.0795652829989 ELSE "ADS"."Feature_56" END AS impter_58, CASE WHEN ("ADS"."Feature_57" IS NULL) THEN 0.0127104377198 ELSE "ADS"."Feature_57" END AS impter_59, CASE WHEN ("ADS"."Feature_58" IS NULL) THEN -0.0532859777103 ELSE "ADS"."Feature_58" END AS impter_60, CASE WHEN ("ADS"."Feature_59" IS NULL) THEN 0.161641828219 ELSE "ADS"."Feature_59" END AS impter_61, CASE WHEN ("ADS"."Feature_60" IS NULL) THEN 0.0763023188194 ELSE "ADS"."Feature_60" END AS impter_62, CASE WHEN ("ADS"."Feature_61" IS NULL) THEN 0.156044187656 ELSE "ADS"."Feature_61" END AS impter_63, CASE WHEN ("ADS"."Feature_62" IS NULL) THEN 0.0374126942748 ELSE "ADS"."Feature_62" END AS impter_64, CASE WHEN ("ADS"."Feature_63" IS NULL) THEN -0.132239791101 ELSE "ADS"."Feature_63" END AS impter_65, CASE WHEN ("ADS"."Feature_64" IS NULL) THEN 0.102572956113 ELSE "ADS"."Feature_64" END AS impter_66, CASE WHEN ("ADS"."Feature_65" IS NULL) THEN -0.0164557728275 ELSE "ADS"."Feature_65" END AS impter_67, CASE WHEN ("ADS"."Feature_66" IS NULL) THEN -0.369219271039 ELSE "ADS"."Feature_66" END AS impter_68, CASE WHEN ("ADS"."Feature_67" IS NULL) THEN -0.003661731082 ELSE "ADS"."Feature_67" END AS impter_69, CASE WHEN ("ADS"."Feature_68" IS NULL) THEN 0.114092362546 ELSE "ADS"."Feature_68" END AS impter_70, CASE WHEN ("ADS"."Feature_69" IS NULL) THEN -0.0800039800269 ELSE "ADS"."Feature_69" END AS impter_71, CASE WHEN ("ADS"."Feature_70" IS NULL) THEN 0.121938774529 ELSE "ADS"."Feature_70" END AS impter_72, CASE WHEN ("ADS"."Feature_71" IS NULL) THEN -0.191513340807 ELSE "ADS"."Feature_71" END AS impter_73, CASE WHEN ("ADS"."Feature_72" IS NULL) THEN 0.110566892442 ELSE "ADS"."Feature_72" END AS impter_74, CASE WHEN ("ADS"."Feature_73" IS NULL) THEN -0.162671496478 ELSE "ADS"."Feature_73" END AS impter_75, CASE WHEN ("ADS"."Feature_74" IS NULL) THEN 0.0469880776766 ELSE "ADS"."Feature_74" END AS impter_76, CASE WHEN ("ADS"."Feature_75" IS NULL) THEN -0.0478678108262 ELSE "ADS"."Feature_75" END AS impter_77, CASE WHEN ("ADS"."Feature_76" IS NULL) THEN -0.203649277218 ELSE "ADS"."Feature_76" END AS impter_78, CASE WHEN ("ADS"."Feature_77" IS NULL) THEN 0.258182820477 ELSE "ADS"."Feature_77" END AS impter_79, CASE WHEN ("ADS"."Feature_78" IS NULL) THEN 0.211309222471 ELSE "ADS"."Feature_78" END AS impter_80, CASE WHEN ("ADS"."Feature_79" IS NULL) THEN 0.411474342318 ELSE "ADS"."Feature_79" END AS impter_81, CASE WHEN ("ADS"."Feature_80" IS NULL) THEN -0.00392876204657 ELSE "ADS"."Feature_80" END AS impter_82, CASE WHEN ("ADS"."Feature_81" IS NULL) THEN -0.349137929219 ELSE "ADS"."Feature_81" END AS impter_83, CASE WHEN ("ADS"."Feature_82" IS NULL) THEN -0.338733839018 ELSE "ADS"."Feature_82" END AS impter_84, CASE WHEN ("ADS"."Feature_83" IS NULL) THEN -0.125480420953 ELSE "ADS"."Feature_83" END AS impter_85, CASE WHEN ("ADS"."Feature_84" IS NULL) THEN -0.345761548966 ELSE "ADS"."Feature_84" END AS impter_86, CASE WHEN ("ADS"."Feature_85" IS NULL) THEN -0.088740066186 ELSE "ADS"."Feature_85" END AS impter_87, CASE WHEN ("ADS"."Feature_86" IS NULL) THEN -0.0118603851944 ELSE "ADS"."Feature_86" END AS impter_88, CASE WHEN ("ADS"."Feature_87" IS NULL) THEN -0.248191975565 ELSE "ADS"."Feature_87" END AS impter_89, CASE WHEN ("ADS"."Feature_88" IS NULL) THEN 0.516460108477 ELSE "ADS"."Feature_88" END AS impter_90, CASE WHEN ("ADS"."Feature_89" IS NULL) THEN 0.224041856774 ELSE "ADS"."Feature_89" END AS impter_91, CASE WHEN ("ADS"."Feature_90" IS NULL) THEN 0.0428228008638 ELSE "ADS"."Feature_90" END AS impter_92, CASE WHEN ("ADS"."Feature_91" IS NULL) THEN 0.363410587274 ELSE "ADS"."Feature_91" END AS impter_93, CASE WHEN ("ADS"."Feature_92" IS NULL) THEN -0.378268356185 ELSE "ADS"."Feature_92" END AS impter_94, CASE WHEN ("ADS"."Feature_93" IS NULL) THEN -0.214738283901 ELSE "ADS"."Feature_93" END AS impter_95, CASE WHEN ("ADS"."Feature_94" IS NULL) THEN -0.247412293929 ELSE "ADS"."Feature_94" END AS impter_96, CASE WHEN ("ADS"."Feature_95" IS NULL) THEN 0.0516793156884 ELSE "ADS"."Feature_95" END AS impter_97, CASE WHEN ("ADS"."Feature_96" IS NULL) THEN 0.189031623101 ELSE "ADS"."Feature_96" END AS impter_98, CASE WHEN ("ADS"."Feature_97" IS NULL) THEN 0.00820390867189 ELSE "ADS"."Feature_97" END AS impter_99, CASE WHEN ("ADS"."Feature_98" IS NULL) THEN -0.352969166176 ELSE "ADS"."Feature_98" END AS impter_100, CASE WHEN ("ADS"."Feature_99" IS NULL) THEN 0.285295646776 ELSE "ADS"."Feature_99" END AS impter_101 
FROM "RandomReg_100" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.257890606372) / 1.01303541585 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - -0.349760417075) / 0.720363872948 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.146432612127) / 0.839780021369 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - -0.0694381955953) / 1.10099507445 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - -0.164116573335) / 0.902252891885 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - 0.0273800792431) / 0.837535986659 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.20752688264) / 1.03541626362 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.257805904306) / 1.08357779805 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - 0.201165130412) / 1.00002011203 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - 0.16804071992) / 1.01040051442 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS DOUBLE) - 0.0763244256068) / 1.0817285066 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS DOUBLE) - -0.168615721243) / 0.927799442402 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS DOUBLE) - -0.267383461416) / 0.769927174238 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS DOUBLE) - -0.24619466007) / 0.966337816326 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS DOUBLE) - 0.367862573461) / 0.868797786838 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS DOUBLE) - -0.039318543125) / 0.755138719888 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS DOUBLE) - 0.0535949509611) / 1.03659000099 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS DOUBLE) - 0.131793562903) / 0.915248510221 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS DOUBLE) - -0.0759607610352) / 0.759163026044 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS DOUBLE) - -0.326021196788) / 1.07162733457 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS DOUBLE) - -0.0721679442319) / 1.07667346696 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS DOUBLE) - -0.157513020334) / 1.07572320012 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS DOUBLE) - 0.167235437056) / 0.933685809175 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS DOUBLE) - 0.0624166493972) / 0.884432238585 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS DOUBLE) - -0.0342522908477) / 1.06338269848 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS DOUBLE) - -0.0741929272363) / 1.05339906064 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS DOUBLE) - -0.111075527526) / 1.28668546224 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS DOUBLE) - -0.227840837049) / 1.0842559273 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS DOUBLE) - 0.056439021092) / 1.0168546712 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS DOUBLE) - 0.602817406983) / 1.07273921031 AS scaler_31, (CAST("ADS_imp_1_OUT".impter_32 AS DOUBLE) - -0.050750488415) / 1.12637261407 AS scaler_32, (CAST("ADS_imp_1_OUT".impter_33 AS DOUBLE) - 0.259135911613) / 0.817169507968 AS scaler_33, (CAST("ADS_imp_1_OUT".impter_34 AS DOUBLE) - -0.232242858599) / 1.07402612157 AS scaler_34, (CAST("ADS_imp_1_OUT".impter_35 AS DOUBLE) - 0.186959618967) / 1.06885417706 AS scaler_35, (CAST("ADS_imp_1_OUT".impter_36 AS DOUBLE) - 0.086094506118) / 0.834640101255 AS scaler_36, (CAST("ADS_imp_1_OUT".impter_37 AS DOUBLE) - 0.443703914395) / 0.793020417989 AS scaler_37, (CAST("ADS_imp_1_OUT".impter_38 AS DOUBLE) - -0.173607851953) / 1.05154022524 AS scaler_38, (CAST("ADS_imp_1_OUT".impter_39 AS DOUBLE) - -0.2240124045) / 1.1006802075 AS scaler_39, (CAST("ADS_imp_1_OUT".impter_40 AS DOUBLE) - -0.139279341964) / 1.02567257085 AS scaler_40, (CAST("ADS_imp_1_OUT".impter_41 AS DOUBLE) - 0.14278994483) / 0.965343152002 AS scaler_41, (CAST("ADS_imp_1_OUT".impter_42 AS DOUBLE) - -0.361379844443) / 1.00095215837 AS scaler_42, (CAST("ADS_imp_1_OUT".impter_43 AS DOUBLE) - -0.0896026305066) / 0.932079552992 AS scaler_43, (CAST("ADS_imp_1_OUT".impter_44 AS DOUBLE) - -0.00906836207357) / 0.851907451369 AS scaler_44, (CAST("ADS_imp_1_OUT".impter_45 AS DOUBLE) - 0.361653482208) / 0.730192164132 AS scaler_45, (CAST("ADS_imp_1_OUT".impter_46 AS DOUBLE) - -0.184326078169) / 1.08011373952 AS scaler_46, (CAST("ADS_imp_1_OUT".impter_47 AS DOUBLE) - -0.0805905309966) / 0.942688668634 AS scaler_47, (CAST("ADS_imp_1_OUT".impter_48 AS DOUBLE) - -0.354057808305) / 0.820958237195 AS scaler_48, (CAST("ADS_imp_1_OUT".impter_49 AS DOUBLE) - -0.144408613612) / 0.830352426692 AS scaler_49, (CAST("ADS_imp_1_OUT".impter_50 AS DOUBLE) - -0.266676134359) / 1.04153127288 AS scaler_50, (CAST("ADS_imp_1_OUT".impter_51 AS DOUBLE) - -0.206379378352) / 0.956181904872 AS scaler_51, (CAST("ADS_imp_1_OUT".impter_52 AS DOUBLE) - 0.0607808553886) / 0.949661373529 AS scaler_52, (CAST("ADS_imp_1_OUT".impter_53 AS DOUBLE) - 0.142255266692) / 1.09019771927 AS scaler_53, (CAST("ADS_imp_1_OUT".impter_54 AS DOUBLE) - 0.400232695144) / 0.897560316412 AS scaler_54, (CAST("ADS_imp_1_OUT".impter_55 AS DOUBLE) - 0.0853033478117) / 1.01711628586 AS scaler_55, (CAST("ADS_imp_1_OUT".impter_56 AS DOUBLE) - 0.00555971517985) / 0.849161061045 AS scaler_56, (CAST("ADS_imp_1_OUT".impter_57 AS DOUBLE) - 0.129710542901) / 1.01759547936 AS scaler_57, (CAST("ADS_imp_1_OUT".impter_58 AS DOUBLE) - 0.0795652829989) / 0.831832638107 AS scaler_58, (CAST("ADS_imp_1_OUT".impter_59 AS DOUBLE) - 0.0127104377198) / 1.00540987868 AS scaler_59, (CAST("ADS_imp_1_OUT".impter_60 AS DOUBLE) - -0.0532859777103) / 0.941578310952 AS scaler_60, (CAST("ADS_imp_1_OUT".impter_61 AS DOUBLE) - 0.161641828219) / 1.15291504885 AS scaler_61, (CAST("ADS_imp_1_OUT".impter_62 AS DOUBLE) - 0.0763023188194) / 0.956394388626 AS scaler_62, (CAST("ADS_imp_1_OUT".impter_63 AS DOUBLE) - 0.156044187656) / 0.986031757144 AS scaler_63, (CAST("ADS_imp_1_OUT".impter_64 AS DOUBLE) - 0.0374126942748) / 1.1496545522 AS scaler_64, (CAST("ADS_imp_1_OUT".impter_65 AS DOUBLE) - -0.132239791101) / 1.08487424272 AS scaler_65, (CAST("ADS_imp_1_OUT".impter_66 AS DOUBLE) - 0.102572956113) / 1.14545711064 AS scaler_66, (CAST("ADS_imp_1_OUT".impter_67 AS DOUBLE) - -0.0164557728275) / 1.18629433815 AS scaler_67, (CAST("ADS_imp_1_OUT".impter_68 AS DOUBLE) - -0.369219271039) / 1.09984144597 AS scaler_68, (CAST("ADS_imp_1_OUT".impter_69 AS DOUBLE) - -0.003661731082) / 1.08665287844 AS scaler_69, (CAST("ADS_imp_1_OUT".impter_70 AS DOUBLE) - 0.114092362546) / 0.804011820711 AS scaler_70, (CAST("ADS_imp_1_OUT".impter_71 AS DOUBLE) - -0.0800039800269) / 0.930243229404 AS scaler_71, (CAST("ADS_imp_1_OUT".impter_72 AS DOUBLE) - 0.121938774529) / 1.1494341791 AS scaler_72, (CAST("ADS_imp_1_OUT".impter_73 AS DOUBLE) - -0.191513340807) / 0.848672313357 AS scaler_73, (CAST("ADS_imp_1_OUT".impter_74 AS DOUBLE) - 0.110566892442) / 1.40437700247 AS scaler_74, (CAST("ADS_imp_1_OUT".impter_75 AS DOUBLE) - -0.162671496478) / 0.959759687119 AS scaler_75, (CAST("ADS_imp_1_OUT".impter_76 AS DOUBLE) - 0.0469880776766) / 0.966264450738 AS scaler_76, (CAST("ADS_imp_1_OUT".impter_77 AS DOUBLE) - -0.0478678108262) / 0.822033667503 AS scaler_77, (CAST("ADS_imp_1_OUT".impter_78 AS DOUBLE) - -0.203649277218) / 1.04494337588 AS scaler_78, (CAST("ADS_imp_1_OUT".impter_79 AS DOUBLE) - 0.258182820477) / 0.838323355246 AS scaler_79, (CAST("ADS_imp_1_OUT".impter_80 AS DOUBLE) - 0.211309222471) / 0.741047548921 AS scaler_80, (CAST("ADS_imp_1_OUT".impter_81 AS DOUBLE) - 0.411474342318) / 1.00583059625 AS scaler_81, (CAST("ADS_imp_1_OUT".impter_82 AS DOUBLE) - -0.00392876204657) / 0.990820899242 AS scaler_82, (CAST("ADS_imp_1_OUT".impter_83 AS DOUBLE) - -0.349137929219) / 1.06227684721 AS scaler_83, (CAST("ADS_imp_1_OUT".impter_84 AS DOUBLE) - -0.338733839018) / 0.965739458181 AS scaler_84, (CAST("ADS_imp_1_OUT".impter_85 AS DOUBLE) - -0.125480420953) / 1.01363731248 AS scaler_85, (CAST("ADS_imp_1_OUT".impter_86 AS DOUBLE) - -0.345761548966) / 1.02968809101 AS scaler_86, (CAST("ADS_imp_1_OUT".impter_87 AS DOUBLE) - -0.088740066186) / 0.837447342391 AS scaler_87, (CAST("ADS_imp_1_OUT".impter_88 AS DOUBLE) - -0.0118603851944) / 1.05294522691 AS scaler_88, (CAST("ADS_imp_1_OUT".impter_89 AS DOUBLE) - -0.248191975565) / 0.960498061858 AS scaler_89, (CAST("ADS_imp_1_OUT".impter_90 AS DOUBLE) - 0.516460108477) / 0.967504774369 AS scaler_90, (CAST("ADS_imp_1_OUT".impter_91 AS DOUBLE) - 0.224041856774) / 0.803652069291 AS scaler_91, (CAST("ADS_imp_1_OUT".impter_92 AS DOUBLE) - 0.0428228008638) / 1.23600560556 AS scaler_92, (CAST("ADS_imp_1_OUT".impter_93 AS DOUBLE) - 0.363410587274) / 0.981615325153 AS scaler_93, (CAST("ADS_imp_1_OUT".impter_94 AS DOUBLE) - -0.378268356185) / 1.18655087178 AS scaler_94, (CAST("ADS_imp_1_OUT".impter_95 AS DOUBLE) - -0.214738283901) / 0.840497821103 AS scaler_95, (CAST("ADS_imp_1_OUT".impter_96 AS DOUBLE) - -0.247412293929) / 0.918484603328 AS scaler_96, (CAST("ADS_imp_1_OUT".impter_97 AS DOUBLE) - 0.0516793156884) / 1.01170661106 AS scaler_97, (CAST("ADS_imp_1_OUT".impter_98 AS DOUBLE) - 0.189031623101) / 0.808015481973 AS scaler_98, (CAST("ADS_imp_1_OUT".impter_99 AS DOUBLE) - 0.00820390867189) / 0.952000837482 AS scaler_99, (CAST("ADS_imp_1_OUT".impter_100 AS DOUBLE) - -0.352969166176) / 0.899775646279 AS scaler_100, (CAST("ADS_imp_1_OUT".impter_101 AS DOUBLE) - 0.285295646776) / 0.69486731272 AS scaler_101 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_97 <= -0.34770840406417847) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_71 <= 1.1249967813491821) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_54 <= -0.1359579861164093) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_21 <= 0.4153065085411072) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_62 <= -0.9772515296936035) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_59 <= -0.6260920166969299) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_25 <= 0.13653464615345) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_97' AS feature, -0.34770840406417847 AS threshold, 25 AS "count", 0 AS depth, NULL AS parent_id, 2.2737367544323206e-15 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'scaler_71' AS feature, 1.1249967813491821 AS threshold, 9 AS "count", 1 AS depth, 0 AS parent_id, -270.2099001460508 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'scaler_54' AS feature, -0.1359579861164093 AS threshold, 7 AS "count", 2 AS depth, 1 AS parent_id, -223.12193395590614 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 2 AS parent_id, -275.4100836625233 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS "count", 3 AS depth, 2 AS parent_id, -183.90582167594332 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, 'scaler_21' AS feature, 0.4153065085411072 AS threshold, 2 AS "count", 2 AS depth, 1 AS parent_id, -435.0177818115569 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 5 AS parent_id, -422.9731091350474 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 5 AS parent_id, -447.0624544880664 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, 'scaler_62' AS feature, -0.9772515296936035 AS threshold, 16 AS "count", 1 AS depth, 0 AS parent_id, 151.99306883215357 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, 'scaler_59' AS feature, -0.6260920166969299 AS threshold, 3 AS "count", 2 AS depth, 8 AS parent_id, -80.39525989453749 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 9 AS parent_id, -132.8143802343812 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS "count", 3 AS depth, 9 AS parent_id, -54.18569972461564 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, 'scaler_25' AS feature, 0.13653464615345 AS threshold, 13 AS "count", 2 AS depth, 8 AS parent_id, 205.6211446921592 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 7 AS "count", 3 AS depth, 12 AS parent_id, 293.22584676932405 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 6 AS "count", 3 AS depth, 12 AS parent_id, 103.41565893546685 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data"."count" AS "count", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"GB_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_97 <= -0.34770840406417847) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_101 <= -0.19683679938316345) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_62 <= -0.002492263913154602) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_100 <= -0.2864370346069336) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_62 <= -0.9772515296936035) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_44 <= 1.247582197189331) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_17 <= -0.11505425721406937) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_97' AS feature, -0.34770840406417847 AS threshold, 25 AS "count", 0 AS depth, NULL AS parent_id, 2.2737367544323206e-15 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'scaler_101' AS feature, -0.19683679938316345 AS threshold, 9 AS "count", 1 AS depth, 0 AS parent_id, -243.18891013144568 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'scaler_62' AS feature, -0.002492263913154602 AS threshold, 2 AS "count", 2 AS depth, 1 AS parent_id, -391.51600363040126 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, -380.6757982215427 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, -402.3562090392598 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, 'scaler_100' AS feature, -0.2864370346069336 AS threshold, 7 AS "count", 2 AS depth, 1 AS parent_id, -200.80974056031553 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 5 AS parent_id, -247.869075296271 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS "count", 3 AS depth, 5 AS parent_id, -165.51523950834897 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, 'scaler_62' AS feature, -0.9772515296936035 AS threshold, 16 AS "count", 1 AS depth, 0 AS parent_id, 136.79376194893823 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, 'scaler_44' AS feature, 1.247582197189331 AS threshold, 3 AS "count", 2 AS depth, 8 AS parent_id, -72.35573390508374 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS "count", 3 AS depth, 9 AS parent_id, -48.76712975215408 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 9 AS parent_id, -119.53294221094306 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, 'scaler_17' AS feature, -0.11505425721406937 AS threshold, 13 AS "count", 2 AS depth, 8 AS parent_id, 185.05903022294328 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 7 AS "count", 3 AS depth, 12 AS parent_id, 105.95291855623216 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 6 AS "count", 3 AS depth, 12 AS parent_id, 277.3494938341062 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1"."count" AS "count", "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"GB_Tree_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_97 <= -0.34770840406417847) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_93 <= -1.1869852542877197) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_51 <= 1.0452568531036377) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_24 <= -0.02099791169166565) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_57 <= -0.16512981057167053) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_74 <= 0.39951252937316895) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_65 <= 0.34818756580352783) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_97' AS feature, -0.34770840406417847 AS threshold, 25 AS "count", 0 AS depth, NULL AS parent_id, -6.8212102632969615e-15 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'scaler_93' AS feature, -1.1869852542877197 AS threshold, 9 AS "count", 1 AS depth, 0 AS parent_id, -218.87001911830112 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'scaler_51' AS feature, 1.0452568531036377 AS threshold, 2 AS "count", 2 AS depth, 1 AS parent_id, -352.3644032673611 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, -342.6082183993884 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, -362.12058813533383 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, 'scaler_24' AS feature, -0.02099791169166565 AS threshold, 7 AS "count", 2 AS depth, 1 AS parent_id, -180.728766504284 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS "count", 3 AS depth, 5 AS parent_id, -148.9637155575141 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 5 AS parent_id, -223.0821677666439 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, 'scaler_57' AS feature, -0.16512981057167053 AS threshold, 16 AS "count", 1 AS depth, 0 AS parent_id, 123.11438575404438 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, 'scaler_74' AS feature, 0.39951252937316895 AS threshold, 7 AS "count", 2 AS depth, 8 AS parent_id, 226.0059866472643 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 6 AS "count", 3 AS depth, 9 AS parent_id, 201.9214195382141 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 9 AS parent_id, 370.5133893015656 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, 'scaler_65' AS feature, 0.34818756580352783 AS threshold, 9 AS "count", 2 AS depth, 8 AS parent_id, 43.08758505931777 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS "count", 3 AS depth, 12 AS parent_id, -65.8390181823685 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS "count", 3 AS depth, 12 AS parent_id, 130.2288676526668 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2"."count" AS "count", "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"GB_Tree_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_97 <= -0.34770840406417847) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_101 <= -0.19683679938316345) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_76 <= -0.03331701457500458) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_20 <= 0.12621673941612244) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_41 <= 0.5973091125488281) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_34 <= 0.019928473979234695) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_42 <= -1.5121843814849854) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values"."count" AS "count", "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'scaler_97' AS feature, -0.34770840406417847 AS threshold, 25 AS "count", 0 AS depth, NULL AS parent_id, 0.0 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS node_id, 'scaler_101' AS feature, -0.19683679938316345 AS threshold, 9 AS "count", 1 AS depth, 0 AS parent_id, -196.983017206471 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS node_id, 'scaler_76' AS feature, -0.03331701457500458 AS threshold, 2 AS "count", 2 AS depth, 1 AS parent_id, -317.127962940625 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, -308.3473965594496 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 2 AS parent_id, -325.9085293218004 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, 'scaler_20' AS feature, 0.12621673941612244 AS threshold, 7 AS "count", 2 AS depth, 1 AS parent_id, -162.65588985385557 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS "count", 3 AS depth, 5 AS parent_id, -200.77395098997945 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS "count", 3 AS depth, 5 AS parent_id, -134.06734400176268 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, 'scaler_41' AS feature, 0.5973091125488281 AS threshold, 16 AS "count", 1 AS depth, 0 AS parent_id, 110.80294717863991 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, 'scaler_34' AS feature, 0.019928473979234695 AS threshold, 11 AS "count", 2 AS depth, 8 AS parent_id, 54.765974323520595 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 6 AS "count", 3 AS depth, 9 AS parent_id, -19.92189804791066 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 5 AS "count", 3 AS depth, 9 AS parent_id, 144.39142116923807 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS node_id, 'scaler_42' AS feature, -1.5121843814849854 AS threshold, 5 AS "count", 2 AS depth, 8 AS parent_id, 234.0842874599025 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS "count", 3 AS depth, 12 AS parent_id, 333.4620503714091 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 4 AS "count", 3 AS depth, 12 AS parent_id, 209.23984673202585 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3"."count" AS "count", "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"GB_Tree_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator" 
FROM (SELECT "GB_Tree_0_0"."KEY" AS "KEY", "GB_Tree_0_0"."Estimator" AS "Estimator" 
FROM "GB_Tree_0_0" UNION ALL SELECT "GB_Tree_1_0"."KEY" AS "KEY", "GB_Tree_1_0"."Estimator" AS "Estimator" 
FROM "GB_Tree_1_0" UNION ALL SELECT "GB_Tree_2_0"."KEY" AS "KEY", "GB_Tree_2_0"."Estimator" AS "Estimator" 
FROM "GB_Tree_2_0" UNION ALL SELECT "GB_Tree_3_0"."KEY" AS "KEY", "GB_Tree_3_0"."Estimator" AS "Estimator" 
FROM "GB_Tree_3_0") AS ensemble_score_union), 
"GradBoost_Sum_Scores" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "Score_Union_CTE"."KEY" AS "KEY", sum("Score_Union_CTE"."Estimator") AS "Estimator" 
FROM "Score_Union_CTE" GROUP BY "Score_Union_CTE"."KEY") AS "T")
 SELECT "GradBoost_Sum_Scores"."KEY" AS "KEY", -7.7591328832 + 0.1 * "GradBoost_Sum_Scores"."Estimator" AS "Estimator" 
FROM "GradBoost_Sum_Scores"