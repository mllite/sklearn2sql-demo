-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier_Pipeline
-- Dataset : FourClass_100
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180416233546_bg4ybr_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416233546_bg4ybr_ads_  (
	"KEY" BIGINT, 
	impter_2 FLOAT, 
	impter_3 FLOAT, 
	impter_4 FLOAT, 
	impter_5 FLOAT, 
	impter_6 FLOAT, 
	impter_7 FLOAT, 
	impter_8 FLOAT, 
	impter_9 FLOAT, 
	impter_10 FLOAT, 
	impter_11 FLOAT, 
	impter_12 FLOAT, 
	impter_13 FLOAT, 
	impter_14 FLOAT, 
	impter_15 FLOAT, 
	impter_16 FLOAT, 
	impter_17 FLOAT, 
	impter_18 FLOAT, 
	impter_19 FLOAT, 
	impter_20 FLOAT, 
	impter_21 FLOAT, 
	impter_22 FLOAT, 
	impter_23 FLOAT, 
	impter_24 FLOAT, 
	impter_25 FLOAT, 
	impter_26 FLOAT, 
	impter_27 FLOAT, 
	impter_28 FLOAT, 
	impter_29 FLOAT, 
	impter_30 FLOAT, 
	impter_31 FLOAT, 
	impter_32 FLOAT, 
	impter_33 FLOAT, 
	impter_34 FLOAT, 
	impter_35 FLOAT, 
	impter_36 FLOAT, 
	impter_37 FLOAT, 
	impter_38 FLOAT, 
	impter_39 FLOAT, 
	impter_40 FLOAT, 
	impter_41 FLOAT, 
	impter_42 FLOAT, 
	impter_43 FLOAT, 
	impter_44 FLOAT, 
	impter_45 FLOAT, 
	impter_46 FLOAT, 
	impter_47 FLOAT, 
	impter_48 FLOAT, 
	impter_49 FLOAT, 
	impter_50 FLOAT, 
	impter_51 FLOAT, 
	impter_52 FLOAT, 
	impter_53 FLOAT, 
	impter_54 FLOAT, 
	impter_55 FLOAT, 
	impter_56 FLOAT, 
	impter_57 FLOAT, 
	impter_58 FLOAT, 
	impter_59 FLOAT, 
	impter_60 FLOAT, 
	impter_61 FLOAT, 
	impter_62 FLOAT, 
	impter_63 FLOAT, 
	impter_64 FLOAT, 
	impter_65 FLOAT, 
	impter_66 FLOAT, 
	impter_67 FLOAT, 
	impter_68 FLOAT, 
	impter_69 FLOAT, 
	impter_70 FLOAT, 
	impter_71 FLOAT, 
	impter_72 FLOAT, 
	impter_73 FLOAT, 
	impter_74 FLOAT, 
	impter_75 FLOAT, 
	impter_76 FLOAT, 
	impter_77 FLOAT, 
	impter_78 FLOAT, 
	impter_79 FLOAT, 
	impter_80 FLOAT, 
	impter_81 FLOAT, 
	impter_82 FLOAT, 
	impter_83 FLOAT, 
	impter_84 FLOAT, 
	impter_85 FLOAT, 
	impter_86 FLOAT, 
	impter_87 FLOAT, 
	impter_88 FLOAT, 
	impter_89 FLOAT, 
	impter_90 FLOAT, 
	impter_91 FLOAT, 
	impter_92 FLOAT, 
	impter_93 FLOAT, 
	impter_94 FLOAT, 
	impter_95 FLOAT, 
	impter_96 FLOAT, 
	impter_97 FLOAT, 
	impter_98 FLOAT, 
	impter_99 FLOAT, 
	impter_100 FLOAT, 
	impter_101 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416233546_bg4ybr_ads_ part 2/2. Populate

INSERT INTO tmp_20180416233546_bg4ybr_ads_ ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14, impter_15, impter_16, impter_17, impter_18, impter_19, impter_20, impter_21, impter_22, impter_23, impter_24, impter_25, impter_26, impter_27, impter_28, impter_29, impter_30, impter_31, impter_32, impter_33, impter_34, impter_35, impter_36, impter_37, impter_38, impter_39, impter_40, impter_41, impter_42, impter_43, impter_44, impter_45, impter_46, impter_47, impter_48, impter_49, impter_50, impter_51, impter_52, impter_53, impter_54, impter_55, impter_56, impter_57, impter_58, impter_59, impter_60, impter_61, impter_62, impter_63, impter_64, impter_65, impter_66, impter_67, impter_68, impter_69, impter_70, impter_71, impter_72, impter_73, impter_74, impter_75, impter_76, impter_77, impter_78, impter_79, impter_80, impter_81, impter_82, impter_83, impter_84, impter_85, impter_86, impter_87, impter_88, impter_89, impter_90, impter_91, impter_92, impter_93, impter_94, impter_95, impter_96, impter_97, impter_98, impter_99, impter_100, impter_101) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11, "U".impter_12, "U".impter_13, "U".impter_14, "U".impter_15, "U".impter_16, "U".impter_17, "U".impter_18, "U".impter_19, "U".impter_20, "U".impter_21, "U".impter_22, "U".impter_23, "U".impter_24, "U".impter_25, "U".impter_26, "U".impter_27, "U".impter_28, "U".impter_29, "U".impter_30, "U".impter_31, "U".impter_32, "U".impter_33, "U".impter_34, "U".impter_35, "U".impter_36, "U".impter_37, "U".impter_38, "U".impter_39, "U".impter_40, "U".impter_41, "U".impter_42, "U".impter_43, "U".impter_44, "U".impter_45, "U".impter_46, "U".impter_47, "U".impter_48, "U".impter_49, "U".impter_50, "U".impter_51, "U".impter_52, "U".impter_53, "U".impter_54, "U".impter_55, "U".impter_56, "U".impter_57, "U".impter_58, "U".impter_59, "U".impter_60, "U".impter_61, "U".impter_62, "U".impter_63, "U".impter_64, "U".impter_65, "U".impter_66, "U".impter_67, "U".impter_68, "U".impter_69, "U".impter_70, "U".impter_71, "U".impter_72, "U".impter_73, "U".impter_74, "U".impter_75, "U".impter_76, "U".impter_77, "U".impter_78, "U".impter_79, "U".impter_80, "U".impter_81, "U".impter_82, "U".impter_83, "U".impter_84, "U".impter_85, "U".impter_86, "U".impter_87, "U".impter_88, "U".impter_89, "U".impter_90, "U".impter_91, "U".impter_92, "U".impter_93, "U".impter_94, "U".impter_95, "U".impter_96, "U".impter_97, "U".impter_98, "U".impter_99, "U".impter_100, "U".impter_101 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14, "ADS_imp_1_OUT".impter_15, "ADS_imp_1_OUT".impter_16, "ADS_imp_1_OUT".impter_17, "ADS_imp_1_OUT".impter_18, "ADS_imp_1_OUT".impter_19, "ADS_imp_1_OUT".impter_20, "ADS_imp_1_OUT".impter_21, "ADS_imp_1_OUT".impter_22, "ADS_imp_1_OUT".impter_23, "ADS_imp_1_OUT".impter_24, "ADS_imp_1_OUT".impter_25, "ADS_imp_1_OUT".impter_26, "ADS_imp_1_OUT".impter_27, "ADS_imp_1_OUT".impter_28, "ADS_imp_1_OUT".impter_29, "ADS_imp_1_OUT".impter_30, "ADS_imp_1_OUT".impter_31, "ADS_imp_1_OUT".impter_32, "ADS_imp_1_OUT".impter_33, "ADS_imp_1_OUT".impter_34, "ADS_imp_1_OUT".impter_35, "ADS_imp_1_OUT".impter_36, "ADS_imp_1_OUT".impter_37, "ADS_imp_1_OUT".impter_38, "ADS_imp_1_OUT".impter_39, "ADS_imp_1_OUT".impter_40, "ADS_imp_1_OUT".impter_41, "ADS_imp_1_OUT".impter_42, "ADS_imp_1_OUT".impter_43, "ADS_imp_1_OUT".impter_44, "ADS_imp_1_OUT".impter_45, "ADS_imp_1_OUT".impter_46, "ADS_imp_1_OUT".impter_47, "ADS_imp_1_OUT".impter_48, "ADS_imp_1_OUT".impter_49, "ADS_imp_1_OUT".impter_50, "ADS_imp_1_OUT".impter_51, "ADS_imp_1_OUT".impter_52, "ADS_imp_1_OUT".impter_53, "ADS_imp_1_OUT".impter_54, "ADS_imp_1_OUT".impter_55, "ADS_imp_1_OUT".impter_56, "ADS_imp_1_OUT".impter_57, "ADS_imp_1_OUT".impter_58, "ADS_imp_1_OUT".impter_59, "ADS_imp_1_OUT".impter_60, "ADS_imp_1_OUT".impter_61, "ADS_imp_1_OUT".impter_62, "ADS_imp_1_OUT".impter_63, "ADS_imp_1_OUT".impter_64, "ADS_imp_1_OUT".impter_65, "ADS_imp_1_OUT".impter_66, "ADS_imp_1_OUT".impter_67, "ADS_imp_1_OUT".impter_68, "ADS_imp_1_OUT".impter_69, "ADS_imp_1_OUT".impter_70, "ADS_imp_1_OUT".impter_71, "ADS_imp_1_OUT".impter_72, "ADS_imp_1_OUT".impter_73, "ADS_imp_1_OUT".impter_74, "ADS_imp_1_OUT".impter_75, "ADS_imp_1_OUT".impter_76, "ADS_imp_1_OUT".impter_77, "ADS_imp_1_OUT".impter_78, "ADS_imp_1_OUT".impter_79, "ADS_imp_1_OUT".impter_80, "ADS_imp_1_OUT".impter_81, "ADS_imp_1_OUT".impter_82, "ADS_imp_1_OUT".impter_83, "ADS_imp_1_OUT".impter_84, "ADS_imp_1_OUT".impter_85, "ADS_imp_1_OUT".impter_86, "ADS_imp_1_OUT".impter_87, "ADS_imp_1_OUT".impter_88, "ADS_imp_1_OUT".impter_89, "ADS_imp_1_OUT".impter_90, "ADS_imp_1_OUT".impter_91, "ADS_imp_1_OUT".impter_92, "ADS_imp_1_OUT".impter_93, "ADS_imp_1_OUT".impter_94, "ADS_imp_1_OUT".impter_95, "ADS_imp_1_OUT".impter_96, "ADS_imp_1_OUT".impter_97, "ADS_imp_1_OUT".impter_98, "ADS_imp_1_OUT".impter_99, "ADS_imp_1_OUT".impter_100, "ADS_imp_1_OUT".impter_101 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.006535740121159998 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.16767827125978743 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -0.05514704173583139 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0015211693051869056 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.03142760191039923 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.026179683178748685 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.011254713122120081 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -0.016886211800947296 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.027342702964496257 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.16370127884822097 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.03541225073893643 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN -0.028529123475633158 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN -0.026749444989609742 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 0.38601982291131526 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.01621452573135814 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.22723775077839256 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.5663734566941232 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.2776964106161551 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.005994326812351447 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN -0.021852534469692157 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN -0.028375425917008895 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 0.015164323296291698 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 0.017469134548764743 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 0.03493909449429536 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN -0.1443616076343936 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.1461046774436175 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.06761584237384538 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN -0.3083684560804083 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.9525753017609152 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN -0.05813383910109171 ELSE "ADS"."Feature_29" END AS impter_31, CASE WHEN ("ADS"."Feature_30" IS NULL) THEN -0.013124412714914525 ELSE "ADS"."Feature_30" END AS impter_32, CASE WHEN ("ADS"."Feature_31" IS NULL) THEN -0.3375512543306959 ELSE "ADS"."Feature_31" END AS impter_33, CASE WHEN ("ADS"."Feature_32" IS NULL) THEN 0.03902651459317101 ELSE "ADS"."Feature_32" END AS impter_34, CASE WHEN ("ADS"."Feature_33" IS NULL) THEN -0.0402939442131795 ELSE "ADS"."Feature_33" END AS impter_35, CASE WHEN ("ADS"."Feature_34" IS NULL) THEN -0.17161188573704908 ELSE "ADS"."Feature_34" END AS impter_36, CASE WHEN ("ADS"."Feature_35" IS NULL) THEN 0.012647786868640112 ELSE "ADS"."Feature_35" END AS impter_37, CASE WHEN ("ADS"."Feature_36" IS NULL) THEN 0.005193735308514513 ELSE "ADS"."Feature_36" END AS impter_38, CASE WHEN ("ADS"."Feature_37" IS NULL) THEN -0.017160876576937396 ELSE "ADS"."Feature_37" END AS impter_39, CASE WHEN ("ADS"."Feature_38" IS NULL) THEN 0.045036155997948996 ELSE "ADS"."Feature_38" END AS impter_40, CASE WHEN ("ADS"."Feature_39" IS NULL) THEN -0.12035820022636322 ELSE "ADS"."Feature_39" END AS impter_41, CASE WHEN ("ADS"."Feature_40" IS NULL) THEN -0.17640392282213266 ELSE "ADS"."Feature_40" END AS impter_42, CASE WHEN ("ADS"."Feature_41" IS NULL) THEN -0.015157075927040681 ELSE "ADS"."Feature_41" END AS impter_43, CASE WHEN ("ADS"."Feature_42" IS NULL) THEN -0.3068740190578085 ELSE "ADS"."Feature_42" END AS impter_44, CASE WHEN ("ADS"."Feature_43" IS NULL) THEN -0.04035458069305412 ELSE "ADS"."Feature_43" END AS impter_45, CASE WHEN ("ADS"."Feature_44" IS NULL) THEN -0.00789981512459992 ELSE "ADS"."Feature_44" END AS impter_46, CASE WHEN ("ADS"."Feature_45" IS NULL) THEN 0.002647932254171184 ELSE "ADS"."Feature_45" END AS impter_47, CASE WHEN ("ADS"."Feature_46" IS NULL) THEN -0.1492108459830671 ELSE "ADS"."Feature_46" END AS impter_48, CASE WHEN ("ADS"."Feature_47" IS NULL) THEN 0.24895399236878446 ELSE "ADS"."Feature_47" END AS impter_49, CASE WHEN ("ADS"."Feature_48" IS NULL) THEN -0.7004243979718509 ELSE "ADS"."Feature_48" END AS impter_50, CASE WHEN ("ADS"."Feature_49" IS NULL) THEN 0.025527673750135163 ELSE "ADS"."Feature_49" END AS impter_51, CASE WHEN ("ADS"."Feature_50" IS NULL) THEN -0.15642138685028584 ELSE "ADS"."Feature_50" END AS impter_52, CASE WHEN ("ADS"."Feature_51" IS NULL) THEN -0.12783857717811203 ELSE "ADS"."Feature_51" END AS impter_53, CASE WHEN ("ADS"."Feature_52" IS NULL) THEN -0.3698795238326839 ELSE "ADS"."Feature_52" END AS impter_54, CASE WHEN ("ADS"."Feature_53" IS NULL) THEN 0.04105474558890989 ELSE "ADS"."Feature_53" END AS impter_55, CASE WHEN ("ADS"."Feature_54" IS NULL) THEN -0.10047427531359215 ELSE "ADS"."Feature_54" END AS impter_56, CASE WHEN ("ADS"."Feature_55" IS NULL) THEN -0.1312728865356366 ELSE "ADS"."Feature_55" END AS impter_57, CASE WHEN ("ADS"."Feature_56" IS NULL) THEN 0.3685784313653654 ELSE "ADS"."Feature_56" END AS impter_58, CASE WHEN ("ADS"."Feature_57" IS NULL) THEN 0.22281246520596887 ELSE "ADS"."Feature_57" END AS impter_59, CASE WHEN ("ADS"."Feature_58" IS NULL) THEN -0.006274087618403553 ELSE "ADS"."Feature_58" END AS impter_60, CASE WHEN ("ADS"."Feature_59" IS NULL) THEN 0.014268598957774136 ELSE "ADS"."Feature_59" END AS impter_61, CASE WHEN ("ADS"."Feature_60" IS NULL) THEN -0.028545511573860538 ELSE "ADS"."Feature_60" END AS impter_62, CASE WHEN ("ADS"."Feature_61" IS NULL) THEN -0.4374918318496328 ELSE "ADS"."Feature_61" END AS impter_63, CASE WHEN ("ADS"."Feature_62" IS NULL) THEN -0.3689927805875731 ELSE "ADS"."Feature_62" END AS impter_64, CASE WHEN ("ADS"."Feature_63" IS NULL) THEN 0.0011690418193188894 ELSE "ADS"."Feature_63" END AS impter_65, CASE WHEN ("ADS"."Feature_64" IS NULL) THEN -0.011564873717580429 ELSE "ADS"."Feature_64" END AS impter_66, CASE WHEN ("ADS"."Feature_65" IS NULL) THEN -0.04358769989694412 ELSE "ADS"."Feature_65" END AS impter_67, CASE WHEN ("ADS"."Feature_66" IS NULL) THEN -0.1618634137390173 ELSE "ADS"."Feature_66" END AS impter_68, CASE WHEN ("ADS"."Feature_67" IS NULL) THEN -0.01727264153501617 ELSE "ADS"."Feature_67" END AS impter_69, CASE WHEN ("ADS"."Feature_68" IS NULL) THEN -0.36403022036864674 ELSE "ADS"."Feature_68" END AS impter_70, CASE WHEN ("ADS"."Feature_69" IS NULL) THEN -0.049273006502403176 ELSE "ADS"."Feature_69" END AS impter_71, CASE WHEN ("ADS"."Feature_70" IS NULL) THEN -0.015468512657334297 ELSE "ADS"."Feature_70" END AS impter_72, CASE WHEN ("ADS"."Feature_71" IS NULL) THEN -0.19162939351279548 ELSE "ADS"."Feature_71" END AS impter_73, CASE WHEN ("ADS"."Feature_72" IS NULL) THEN 0.023782830321603186 ELSE "ADS"."Feature_72" END AS impter_74, CASE WHEN ("ADS"."Feature_73" IS NULL) THEN 0.020454799672569742 ELSE "ADS"."Feature_73" END AS impter_75, CASE WHEN ("ADS"."Feature_74" IS NULL) THEN -0.17335534659313448 ELSE "ADS"."Feature_74" END AS impter_76, CASE WHEN ("ADS"."Feature_75" IS NULL) THEN 0.02758228824576348 ELSE "ADS"."Feature_75" END AS impter_77, CASE WHEN ("ADS"."Feature_76" IS NULL) THEN -0.015452336678168777 ELSE "ADS"."Feature_76" END AS impter_78, CASE WHEN ("ADS"."Feature_77" IS NULL) THEN -0.0425555457732581 ELSE "ADS"."Feature_77" END AS impter_79, CASE WHEN ("ADS"."Feature_78" IS NULL) THEN -0.009425736580365328 ELSE "ADS"."Feature_78" END AS impter_80, CASE WHEN ("ADS"."Feature_79" IS NULL) THEN 0.007423677489325057 ELSE "ADS"."Feature_79" END AS impter_81, CASE WHEN ("ADS"."Feature_80" IS NULL) THEN 0.0498533264368169 ELSE "ADS"."Feature_80" END AS impter_82, CASE WHEN ("ADS"."Feature_81" IS NULL) THEN 0.027960221179443 ELSE "ADS"."Feature_81" END AS impter_83, CASE WHEN ("ADS"."Feature_82" IS NULL) THEN -0.005270502487579236 ELSE "ADS"."Feature_82" END AS impter_84, CASE WHEN ("ADS"."Feature_83" IS NULL) THEN -0.053393611774246875 ELSE "ADS"."Feature_83" END AS impter_85, CASE WHEN ("ADS"."Feature_84" IS NULL) THEN 0.17162033288561043 ELSE "ADS"."Feature_84" END AS impter_86, CASE WHEN ("ADS"."Feature_85" IS NULL) THEN 0.037211997007404414 ELSE "ADS"."Feature_85" END AS impter_87, CASE WHEN ("ADS"."Feature_86" IS NULL) THEN 0.01843497333044896 ELSE "ADS"."Feature_86" END AS impter_88, CASE WHEN ("ADS"."Feature_87" IS NULL) THEN 0.5605216326173627 ELSE "ADS"."Feature_87" END AS impter_89, CASE WHEN ("ADS"."Feature_88" IS NULL) THEN -0.05285046291900049 ELSE "ADS"."Feature_88" END AS impter_90, CASE WHEN ("ADS"."Feature_89" IS NULL) THEN 0.07939021734244131 ELSE "ADS"."Feature_89" END AS impter_91, CASE WHEN ("ADS"."Feature_90" IS NULL) THEN -2.088667163118704 ELSE "ADS"."Feature_90" END AS impter_92, CASE WHEN ("ADS"."Feature_91" IS NULL) THEN -1.0831020638954625 ELSE "ADS"."Feature_91" END AS impter_93, CASE WHEN ("ADS"."Feature_92" IS NULL) THEN -0.30470236282124374 ELSE "ADS"."Feature_92" END AS impter_94, CASE WHEN ("ADS"."Feature_93" IS NULL) THEN -0.9354262595637257 ELSE "ADS"."Feature_93" END AS impter_95, CASE WHEN ("ADS"."Feature_94" IS NULL) THEN -0.09841121992703274 ELSE "ADS"."Feature_94" END AS impter_96, CASE WHEN ("ADS"."Feature_95" IS NULL) THEN -0.5316534843603434 ELSE "ADS"."Feature_95" END AS impter_97, CASE WHEN ("ADS"."Feature_96" IS NULL) THEN 0.014127422137804999 ELSE "ADS"."Feature_96" END AS impter_98, CASE WHEN ("ADS"."Feature_97" IS NULL) THEN -0.012631277412677116 ELSE "ADS"."Feature_97" END AS impter_99, CASE WHEN ("ADS"."Feature_98" IS NULL) THEN 0.031286881233113274 ELSE "ADS"."Feature_98" END AS impter_100, CASE WHEN ("ADS"."Feature_99" IS NULL) THEN -0.45039051538460234 ELSE "ADS"."Feature_99" END AS impter_101 
FROM "FourClass_100" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180416233546_3zgs6s_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416233546_3zgs6s_ads_  (
	"KEY" BIGINT, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT, 
	scaler_12 FLOAT, 
	scaler_13 FLOAT, 
	scaler_14 FLOAT, 
	scaler_15 FLOAT, 
	scaler_16 FLOAT, 
	scaler_17 FLOAT, 
	scaler_18 FLOAT, 
	scaler_19 FLOAT, 
	scaler_20 FLOAT, 
	scaler_21 FLOAT, 
	scaler_22 FLOAT, 
	scaler_23 FLOAT, 
	scaler_24 FLOAT, 
	scaler_25 FLOAT, 
	scaler_26 FLOAT, 
	scaler_27 FLOAT, 
	scaler_28 FLOAT, 
	scaler_29 FLOAT, 
	scaler_30 FLOAT, 
	scaler_31 FLOAT, 
	scaler_32 FLOAT, 
	scaler_33 FLOAT, 
	scaler_34 FLOAT, 
	scaler_35 FLOAT, 
	scaler_36 FLOAT, 
	scaler_37 FLOAT, 
	scaler_38 FLOAT, 
	scaler_39 FLOAT, 
	scaler_40 FLOAT, 
	scaler_41 FLOAT, 
	scaler_42 FLOAT, 
	scaler_43 FLOAT, 
	scaler_44 FLOAT, 
	scaler_45 FLOAT, 
	scaler_46 FLOAT, 
	scaler_47 FLOAT, 
	scaler_48 FLOAT, 
	scaler_49 FLOAT, 
	scaler_50 FLOAT, 
	scaler_51 FLOAT, 
	scaler_52 FLOAT, 
	scaler_53 FLOAT, 
	scaler_54 FLOAT, 
	scaler_55 FLOAT, 
	scaler_56 FLOAT, 
	scaler_57 FLOAT, 
	scaler_58 FLOAT, 
	scaler_59 FLOAT, 
	scaler_60 FLOAT, 
	scaler_61 FLOAT, 
	scaler_62 FLOAT, 
	scaler_63 FLOAT, 
	scaler_64 FLOAT, 
	scaler_65 FLOAT, 
	scaler_66 FLOAT, 
	scaler_67 FLOAT, 
	scaler_68 FLOAT, 
	scaler_69 FLOAT, 
	scaler_70 FLOAT, 
	scaler_71 FLOAT, 
	scaler_72 FLOAT, 
	scaler_73 FLOAT, 
	scaler_74 FLOAT, 
	scaler_75 FLOAT, 
	scaler_76 FLOAT, 
	scaler_77 FLOAT, 
	scaler_78 FLOAT, 
	scaler_79 FLOAT, 
	scaler_80 FLOAT, 
	scaler_81 FLOAT, 
	scaler_82 FLOAT, 
	scaler_83 FLOAT, 
	scaler_84 FLOAT, 
	scaler_85 FLOAT, 
	scaler_86 FLOAT, 
	scaler_87 FLOAT, 
	scaler_88 FLOAT, 
	scaler_89 FLOAT, 
	scaler_90 FLOAT, 
	scaler_91 FLOAT, 
	scaler_92 FLOAT, 
	scaler_93 FLOAT, 
	scaler_94 FLOAT, 
	scaler_95 FLOAT, 
	scaler_96 FLOAT, 
	scaler_97 FLOAT, 
	scaler_98 FLOAT, 
	scaler_99 FLOAT, 
	scaler_100 FLOAT, 
	scaler_101 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416233546_3zgs6s_ads_ part 2/2. Populate

INSERT INTO tmp_20180416233546_3zgs6s_ads_ ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14, scaler_15, scaler_16, scaler_17, scaler_18, scaler_19, scaler_20, scaler_21, scaler_22, scaler_23, scaler_24, scaler_25, scaler_26, scaler_27, scaler_28, scaler_29, scaler_30, scaler_31, scaler_32, scaler_33, scaler_34, scaler_35, scaler_36, scaler_37, scaler_38, scaler_39, scaler_40, scaler_41, scaler_42, scaler_43, scaler_44, scaler_45, scaler_46, scaler_47, scaler_48, scaler_49, scaler_50, scaler_51, scaler_52, scaler_53, scaler_54, scaler_55, scaler_56, scaler_57, scaler_58, scaler_59, scaler_60, scaler_61, scaler_62, scaler_63, scaler_64, scaler_65, scaler_66, scaler_67, scaler_68, scaler_69, scaler_70, scaler_71, scaler_72, scaler_73, scaler_74, scaler_75, scaler_76, scaler_77, scaler_78, scaler_79, scaler_80, scaler_81, scaler_82, scaler_83, scaler_84, scaler_85, scaler_86, scaler_87, scaler_88, scaler_89, scaler_90, scaler_91, scaler_92, scaler_93, scaler_94, scaler_95, scaler_96, scaler_97, scaler_98, scaler_99, scaler_100, scaler_101) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11, "U".scaler_12, "U".scaler_13, "U".scaler_14, "U".scaler_15, "U".scaler_16, "U".scaler_17, "U".scaler_18, "U".scaler_19, "U".scaler_20, "U".scaler_21, "U".scaler_22, "U".scaler_23, "U".scaler_24, "U".scaler_25, "U".scaler_26, "U".scaler_27, "U".scaler_28, "U".scaler_29, "U".scaler_30, "U".scaler_31, "U".scaler_32, "U".scaler_33, "U".scaler_34, "U".scaler_35, "U".scaler_36, "U".scaler_37, "U".scaler_38, "U".scaler_39, "U".scaler_40, "U".scaler_41, "U".scaler_42, "U".scaler_43, "U".scaler_44, "U".scaler_45, "U".scaler_46, "U".scaler_47, "U".scaler_48, "U".scaler_49, "U".scaler_50, "U".scaler_51, "U".scaler_52, "U".scaler_53, "U".scaler_54, "U".scaler_55, "U".scaler_56, "U".scaler_57, "U".scaler_58, "U".scaler_59, "U".scaler_60, "U".scaler_61, "U".scaler_62, "U".scaler_63, "U".scaler_64, "U".scaler_65, "U".scaler_66, "U".scaler_67, "U".scaler_68, "U".scaler_69, "U".scaler_70, "U".scaler_71, "U".scaler_72, "U".scaler_73, "U".scaler_74, "U".scaler_75, "U".scaler_76, "U".scaler_77, "U".scaler_78, "U".scaler_79, "U".scaler_80, "U".scaler_81, "U".scaler_82, "U".scaler_83, "U".scaler_84, "U".scaler_85, "U".scaler_86, "U".scaler_87, "U".scaler_88, "U".scaler_89, "U".scaler_90, "U".scaler_91, "U".scaler_92, "U".scaler_93, "U".scaler_94, "U".scaler_95, "U".scaler_96, "U".scaler_97, "U".scaler_98, "U".scaler_99, "U".scaler_100, "U".scaler_101 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14, "ADS_sca_2_OUT".scaler_15, "ADS_sca_2_OUT".scaler_16, "ADS_sca_2_OUT".scaler_17, "ADS_sca_2_OUT".scaler_18, "ADS_sca_2_OUT".scaler_19, "ADS_sca_2_OUT".scaler_20, "ADS_sca_2_OUT".scaler_21, "ADS_sca_2_OUT".scaler_22, "ADS_sca_2_OUT".scaler_23, "ADS_sca_2_OUT".scaler_24, "ADS_sca_2_OUT".scaler_25, "ADS_sca_2_OUT".scaler_26, "ADS_sca_2_OUT".scaler_27, "ADS_sca_2_OUT".scaler_28, "ADS_sca_2_OUT".scaler_29, "ADS_sca_2_OUT".scaler_30, "ADS_sca_2_OUT".scaler_31, "ADS_sca_2_OUT".scaler_32, "ADS_sca_2_OUT".scaler_33, "ADS_sca_2_OUT".scaler_34, "ADS_sca_2_OUT".scaler_35, "ADS_sca_2_OUT".scaler_36, "ADS_sca_2_OUT".scaler_37, "ADS_sca_2_OUT".scaler_38, "ADS_sca_2_OUT".scaler_39, "ADS_sca_2_OUT".scaler_40, "ADS_sca_2_OUT".scaler_41, "ADS_sca_2_OUT".scaler_42, "ADS_sca_2_OUT".scaler_43, "ADS_sca_2_OUT".scaler_44, "ADS_sca_2_OUT".scaler_45, "ADS_sca_2_OUT".scaler_46, "ADS_sca_2_OUT".scaler_47, "ADS_sca_2_OUT".scaler_48, "ADS_sca_2_OUT".scaler_49, "ADS_sca_2_OUT".scaler_50, "ADS_sca_2_OUT".scaler_51, "ADS_sca_2_OUT".scaler_52, "ADS_sca_2_OUT".scaler_53, "ADS_sca_2_OUT".scaler_54, "ADS_sca_2_OUT".scaler_55, "ADS_sca_2_OUT".scaler_56, "ADS_sca_2_OUT".scaler_57, "ADS_sca_2_OUT".scaler_58, "ADS_sca_2_OUT".scaler_59, "ADS_sca_2_OUT".scaler_60, "ADS_sca_2_OUT".scaler_61, "ADS_sca_2_OUT".scaler_62, "ADS_sca_2_OUT".scaler_63, "ADS_sca_2_OUT".scaler_64, "ADS_sca_2_OUT".scaler_65, "ADS_sca_2_OUT".scaler_66, "ADS_sca_2_OUT".scaler_67, "ADS_sca_2_OUT".scaler_68, "ADS_sca_2_OUT".scaler_69, "ADS_sca_2_OUT".scaler_70, "ADS_sca_2_OUT".scaler_71, "ADS_sca_2_OUT".scaler_72, "ADS_sca_2_OUT".scaler_73, "ADS_sca_2_OUT".scaler_74, "ADS_sca_2_OUT".scaler_75, "ADS_sca_2_OUT".scaler_76, "ADS_sca_2_OUT".scaler_77, "ADS_sca_2_OUT".scaler_78, "ADS_sca_2_OUT".scaler_79, "ADS_sca_2_OUT".scaler_80, "ADS_sca_2_OUT".scaler_81, "ADS_sca_2_OUT".scaler_82, "ADS_sca_2_OUT".scaler_83, "ADS_sca_2_OUT".scaler_84, "ADS_sca_2_OUT".scaler_85, "ADS_sca_2_OUT".scaler_86, "ADS_sca_2_OUT".scaler_87, "ADS_sca_2_OUT".scaler_88, "ADS_sca_2_OUT".scaler_89, "ADS_sca_2_OUT".scaler_90, "ADS_sca_2_OUT".scaler_91, "ADS_sca_2_OUT".scaler_92, "ADS_sca_2_OUT".scaler_93, "ADS_sca_2_OUT".scaler_94, "ADS_sca_2_OUT".scaler_95, "ADS_sca_2_OUT".scaler_96, "ADS_sca_2_OUT".scaler_97, "ADS_sca_2_OUT".scaler_98, "ADS_sca_2_OUT".scaler_99, "ADS_sca_2_OUT".scaler_100, "ADS_sca_2_OUT".scaler_101 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.00653574012116) / 0.985821711919416 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.167678271259787) / 4.178932779057346 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - -0.055147041735831) / 4.08515606391014 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.001521169305187) / 1.058399422125588 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.031427601910399) / 0.958502901404168 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.026179683178749) / 0.993854807715344 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.01125471312212) / 0.995945599636728 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - -0.016886211800947) / 1.04542967803467 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.027342702964496) / 4.331356741820494 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - -0.163701278848221) / 4.458898205934484 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 0.035412250738936) / 1.036616487810755 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - -0.028529123475633) / 1.004676205552298 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - -0.02674944498961) / 0.999624026710058 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - 0.386019822911315) / 4.144804786518486 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - 0.016214525731358) / 1.017281296667399 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - 0.227237750778393) / 4.367112620179618 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - 0.566373456694123) / 4.118156884045948 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - 0.277696410616155) / 4.014328975715426 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - 0.005994326812351) / 0.972439502321079 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - -0.021852534469692) / 0.985687517726374 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - -0.028375425917009) / 1.023103469868883 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - 0.015164323296292) / 4.353145169181992 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - 0.017469134548765) / 1.001805654268762 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - 0.034939094494295) / 0.992721649767531 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - -0.144361607634394) / 4.467397668863504 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - 0.146104677443618) / 4.107342778563649 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - 0.067615842373845) / 4.277643036456076 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - -0.308368456080408) / 4.030195686259092 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - 0.952575301760915) / 4.017302623019134 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - -0.058133839101092) / 4.03353195749377 AS scaler_31, (CAST("ADS_imp_1_OUT".impter_32 AS FLOAT) - -0.013124412714915) / 0.955198781566282 AS scaler_32, (CAST("ADS_imp_1_OUT".impter_33 AS FLOAT) - -0.337551254330696) / 4.106571680414476 AS scaler_33, (CAST("ADS_imp_1_OUT".impter_34 AS FLOAT) - 0.039026514593171) / 0.990359225336864 AS scaler_34, (CAST("ADS_imp_1_OUT".impter_35 AS FLOAT) - -0.04029394421318) / 1.015296116761204 AS scaler_35, (CAST("ADS_imp_1_OUT".impter_36 AS FLOAT) - -0.171611885737049) / 4.179229563019858 AS scaler_36, (CAST("ADS_imp_1_OUT".impter_37 AS FLOAT) - 0.01264778686864) / 1.007830761864778 AS scaler_37, (CAST("ADS_imp_1_OUT".impter_38 AS FLOAT) - 0.005193735308515) / 4.297332183672822 AS scaler_38, (CAST("ADS_imp_1_OUT".impter_39 AS FLOAT) - -0.017160876576937) / 1.017378855706664 AS scaler_39, (CAST("ADS_imp_1_OUT".impter_40 AS FLOAT) - 0.045036155997949) / 3.904281136786187 AS scaler_40, (CAST("ADS_imp_1_OUT".impter_41 AS FLOAT) - -0.120358200226363) / 3.984028603622864 AS scaler_41, (CAST("ADS_imp_1_OUT".impter_42 AS FLOAT) - -0.176403922822133) / 4.069314637621373 AS scaler_42, (CAST("ADS_imp_1_OUT".impter_43 AS FLOAT) - -0.015157075927041) / 1.029157389545088 AS scaler_43, (CAST("ADS_imp_1_OUT".impter_44 AS FLOAT) - -0.306874019057808) / 4.347912512213832 AS scaler_44, (CAST("ADS_imp_1_OUT".impter_45 AS FLOAT) - -0.040354580693054) / 4.05064377380716 AS scaler_45, (CAST("ADS_imp_1_OUT".impter_46 AS FLOAT) - -0.0078998151246) / 1.006375476591226 AS scaler_46, (CAST("ADS_imp_1_OUT".impter_47 AS FLOAT) - 0.002647932254171) / 1.002144775585071 AS scaler_47, (CAST("ADS_imp_1_OUT".impter_48 AS FLOAT) - -0.149210845983067) / 4.103402009893949 AS scaler_48, (CAST("ADS_imp_1_OUT".impter_49 AS FLOAT) - 0.248953992368784) / 4.232200380326286 AS scaler_49, (CAST("ADS_imp_1_OUT".impter_50 AS FLOAT) - -0.700424397971851) / 4.220766541993596 AS scaler_50, (CAST("ADS_imp_1_OUT".impter_51 AS FLOAT) - 0.025527673750135) / 1.020674092725397 AS scaler_51, (CAST("ADS_imp_1_OUT".impter_52 AS FLOAT) - -0.156421386850286) / 4.078310671245766 AS scaler_52, (CAST("ADS_imp_1_OUT".impter_53 AS FLOAT) - -0.127838577178112) / 4.247236801364964 AS scaler_53, (CAST("ADS_imp_1_OUT".impter_54 AS FLOAT) - -0.369879523832684) / 4.037675848477055 AS scaler_54, (CAST("ADS_imp_1_OUT".impter_55 AS FLOAT) - 0.04105474558891) / 4.445571371438813 AS scaler_55, (CAST("ADS_imp_1_OUT".impter_56 AS FLOAT) - -0.100474275313592) / 4.045836826444958 AS scaler_56, (CAST("ADS_imp_1_OUT".impter_57 AS FLOAT) - -0.131272886535637) / 4.256606009499922 AS scaler_57, (CAST("ADS_imp_1_OUT".impter_58 AS FLOAT) - 0.368578431365365) / 4.04294690880675 AS scaler_58, (CAST("ADS_imp_1_OUT".impter_59 AS FLOAT) - 0.222812465205969) / 4.252398068764952 AS scaler_59, (CAST("ADS_imp_1_OUT".impter_60 AS FLOAT) - -0.006274087618404) / 1.013175429895288 AS scaler_60, (CAST("ADS_imp_1_OUT".impter_61 AS FLOAT) - 0.014268598957774) / 0.975232456173164 AS scaler_61, (CAST("ADS_imp_1_OUT".impter_62 AS FLOAT) - -0.028545511573861) / 0.99601766121793 AS scaler_62, (CAST("ADS_imp_1_OUT".impter_63 AS FLOAT) - -0.437491831849633) / 4.238759256560504 AS scaler_63, (CAST("ADS_imp_1_OUT".impter_64 AS FLOAT) - -0.368992780587573) / 4.18274187652401 AS scaler_64, (CAST("ADS_imp_1_OUT".impter_65 AS FLOAT) - 0.001169041819319) / 1.043336524991625 AS scaler_65, (CAST("ADS_imp_1_OUT".impter_66 AS FLOAT) - -0.01156487371758) / 4.081504294152238 AS scaler_66, (CAST("ADS_imp_1_OUT".impter_67 AS FLOAT) - -0.043587699896944) / 1.058664519012294 AS scaler_67, (CAST("ADS_imp_1_OUT".impter_68 AS FLOAT) - -0.161863413739017) / 4.259666235165136 AS scaler_68, (CAST("ADS_imp_1_OUT".impter_69 AS FLOAT) - -0.017272641535016) / 1.010305833440296 AS scaler_69, (CAST("ADS_imp_1_OUT".impter_70 AS FLOAT) - -0.364030220368647) / 4.23529048916204 AS scaler_70, (CAST("ADS_imp_1_OUT".impter_71 AS FLOAT) - -0.049273006502403) / 4.310802365306347 AS scaler_71, (CAST("ADS_imp_1_OUT".impter_72 AS FLOAT) - -0.015468512657334) / 1.010660801531323 AS scaler_72, (CAST("ADS_imp_1_OUT".impter_73 AS FLOAT) - -0.191629393512795) / 4.116044965548444 AS scaler_73, (CAST("ADS_imp_1_OUT".impter_74 AS FLOAT) - 0.023782830321603) / 0.997185935238241 AS scaler_74, (CAST("ADS_imp_1_OUT".impter_75 AS FLOAT) - 0.02045479967257) / 0.96404748767937 AS scaler_75, (CAST("ADS_imp_1_OUT".impter_76 AS FLOAT) - -0.173355346593134) / 4.268840083291991 AS scaler_76, (CAST("ADS_imp_1_OUT".impter_77 AS FLOAT) - 0.027582288245763) / 1.002873637150224 AS scaler_77, (CAST("ADS_imp_1_OUT".impter_78 AS FLOAT) - -0.015452336678169) / 0.951796972877656 AS scaler_78, (CAST("ADS_imp_1_OUT".impter_79 AS FLOAT) - -0.042555545773258) / 1.026041980115793 AS scaler_79, (CAST("ADS_imp_1_OUT".impter_80 AS FLOAT) - -0.009425736580365) / 0.981547933162807 AS scaler_80, (CAST("ADS_imp_1_OUT".impter_81 AS FLOAT) - 0.007423677489325) / 1.017144763796163 AS scaler_81, (CAST("ADS_imp_1_OUT".impter_82 AS FLOAT) - 0.049853326436817) / 1.013812175189716 AS scaler_82, (CAST("ADS_imp_1_OUT".impter_83 AS FLOAT) - 0.027960221179443) / 1.004933108786332 AS scaler_83, (CAST("ADS_imp_1_OUT".impter_84 AS FLOAT) - -0.005270502487579) / 1.023325284914829 AS scaler_84, (CAST("ADS_imp_1_OUT".impter_85 AS FLOAT) - -0.053393611774247) / 1.004589191993288 AS scaler_85, (CAST("ADS_imp_1_OUT".impter_86 AS FLOAT) - 0.17162033288561) / 4.24884427578287 AS scaler_86, (CAST("ADS_imp_1_OUT".impter_87 AS FLOAT) - 0.037211997007404) / 4.254048583081736 AS scaler_87, (CAST("ADS_imp_1_OUT".impter_88 AS FLOAT) - 0.018434973330449) / 3.949728840889438 AS scaler_88, (CAST("ADS_imp_1_OUT".impter_89 AS FLOAT) - 0.560521632617363) / 4.331332438981666 AS scaler_89, (CAST("ADS_imp_1_OUT".impter_90 AS FLOAT) - -0.052850462919) / 1.0358397102155 AS scaler_90, (CAST("ADS_imp_1_OUT".impter_91 AS FLOAT) - 0.079390217342441) / 0.969876446027829 AS scaler_91, (CAST("ADS_imp_1_OUT".impter_92 AS FLOAT) - -2.088667163118704) / 15.30221524651991 AS scaler_92, (CAST("ADS_imp_1_OUT".impter_93 AS FLOAT) - -1.083102063895462) / 4.36710902027052 AS scaler_93, (CAST("ADS_imp_1_OUT".impter_94 AS FLOAT) - -0.304702362821244) / 4.204292362348631 AS scaler_94, (CAST("ADS_imp_1_OUT".impter_95 AS FLOAT) - -0.935426259563726) / 15.357005766716696 AS scaler_95, (CAST("ADS_imp_1_OUT".impter_96 AS FLOAT) - -0.098411219927033) / 0.952484869943965 AS scaler_96, (CAST("ADS_imp_1_OUT".impter_97 AS FLOAT) - -0.531653484360343) / 3.977000718240084 AS scaler_97, (CAST("ADS_imp_1_OUT".impter_98 AS FLOAT) - 0.014127422137805) / 0.987925892541105 AS scaler_98, (CAST("ADS_imp_1_OUT".impter_99 AS FLOAT) - -0.012631277412677) / 1.015196444834118 AS scaler_99, (CAST("ADS_imp_1_OUT".impter_100 AS FLOAT) - 0.031286881233113) / 0.989361802421023 AS scaler_100, (CAST("ADS_imp_1_OUT".impter_101 AS FLOAT) - -0.450390515384602) / 4.244700325091398 AS scaler_101 
FROM tmp_20180416233546_bg4ybr_ads_ AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH random_number_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", random() AS uniform 
FROM tmp_20180416233546_3zgs6s_ads_ AS "ADS_sca_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.245) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.49375) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 0.74625) THEN 2 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 3 END END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.245 AS "Proba_0", CASE WHEN (0.245 IS NULL OR 0.245 > 0.0) THEN ln(0.245) ELSE -1.79769313486231e+308 END AS "LogProba_0", 0.24875 AS "Proba_1", CASE WHEN (0.24875 IS NULL OR 0.24875 > 0.0) THEN ln(0.24875) ELSE -1.79769313486231e+308 END AS "LogProba_1", 0.2525 AS "Proba_2", CASE WHEN (0.2525 IS NULL OR 0.2525 > 0.0) THEN ln(0.2525) ELSE -1.79769313486231e+308 END AS "LogProba_2", 0.25375 AS "Proba_3", CASE WHEN (0.25375 IS NULL OR 0.25375 > 0.0) THEN ln(0.25375) ELSE -1.79769313486231e+308 END AS "LogProba_3", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."Proba_2" AS "Proba_2", dummy_class_reg_cte."Proba_3" AS "Proba_3", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."LogProba_2" AS "LogProba_2", dummy_class_reg_cte."LogProba_3" AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM dummy_class_reg_cte