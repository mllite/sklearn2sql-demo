-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor
-- Dataset : RandomReg_100
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602144937_zg7_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602144937_zg7_hl_1_relu_1  (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE PRECISION, 
	"NEUR_1_2" DOUBLE PRECISION, 
	"NEUR_1_3" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602144937_zg7_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180602144937_zg7_hl_1_relu_1 ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE PRECISION) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE PRECISION) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE PRECISION) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE PRECISION) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE PRECISION) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE PRECISION) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE PRECISION) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE PRECISION) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE PRECISION) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE PRECISION) AS "Feature_9", CAST("ADS"."Feature_10" AS DOUBLE PRECISION) AS "Feature_10", CAST("ADS"."Feature_11" AS DOUBLE PRECISION) AS "Feature_11", CAST("ADS"."Feature_12" AS DOUBLE PRECISION) AS "Feature_12", CAST("ADS"."Feature_13" AS DOUBLE PRECISION) AS "Feature_13", CAST("ADS"."Feature_14" AS DOUBLE PRECISION) AS "Feature_14", CAST("ADS"."Feature_15" AS DOUBLE PRECISION) AS "Feature_15", CAST("ADS"."Feature_16" AS DOUBLE PRECISION) AS "Feature_16", CAST("ADS"."Feature_17" AS DOUBLE PRECISION) AS "Feature_17", CAST("ADS"."Feature_18" AS DOUBLE PRECISION) AS "Feature_18", CAST("ADS"."Feature_19" AS DOUBLE PRECISION) AS "Feature_19", CAST("ADS"."Feature_20" AS DOUBLE PRECISION) AS "Feature_20", CAST("ADS"."Feature_21" AS DOUBLE PRECISION) AS "Feature_21", CAST("ADS"."Feature_22" AS DOUBLE PRECISION) AS "Feature_22", CAST("ADS"."Feature_23" AS DOUBLE PRECISION) AS "Feature_23", CAST("ADS"."Feature_24" AS DOUBLE PRECISION) AS "Feature_24", CAST("ADS"."Feature_25" AS DOUBLE PRECISION) AS "Feature_25", CAST("ADS"."Feature_26" AS DOUBLE PRECISION) AS "Feature_26", CAST("ADS"."Feature_27" AS DOUBLE PRECISION) AS "Feature_27", CAST("ADS"."Feature_28" AS DOUBLE PRECISION) AS "Feature_28", CAST("ADS"."Feature_29" AS DOUBLE PRECISION) AS "Feature_29", CAST("ADS"."Feature_30" AS DOUBLE PRECISION) AS "Feature_30", CAST("ADS"."Feature_31" AS DOUBLE PRECISION) AS "Feature_31", CAST("ADS"."Feature_32" AS DOUBLE PRECISION) AS "Feature_32", CAST("ADS"."Feature_33" AS DOUBLE PRECISION) AS "Feature_33", CAST("ADS"."Feature_34" AS DOUBLE PRECISION) AS "Feature_34", CAST("ADS"."Feature_35" AS DOUBLE PRECISION) AS "Feature_35", CAST("ADS"."Feature_36" AS DOUBLE PRECISION) AS "Feature_36", CAST("ADS"."Feature_37" AS DOUBLE PRECISION) AS "Feature_37", CAST("ADS"."Feature_38" AS DOUBLE PRECISION) AS "Feature_38", CAST("ADS"."Feature_39" AS DOUBLE PRECISION) AS "Feature_39", CAST("ADS"."Feature_40" AS DOUBLE PRECISION) AS "Feature_40", CAST("ADS"."Feature_41" AS DOUBLE PRECISION) AS "Feature_41", CAST("ADS"."Feature_42" AS DOUBLE PRECISION) AS "Feature_42", CAST("ADS"."Feature_43" AS DOUBLE PRECISION) AS "Feature_43", CAST("ADS"."Feature_44" AS DOUBLE PRECISION) AS "Feature_44", CAST("ADS"."Feature_45" AS DOUBLE PRECISION) AS "Feature_45", CAST("ADS"."Feature_46" AS DOUBLE PRECISION) AS "Feature_46", CAST("ADS"."Feature_47" AS DOUBLE PRECISION) AS "Feature_47", CAST("ADS"."Feature_48" AS DOUBLE PRECISION) AS "Feature_48", CAST("ADS"."Feature_49" AS DOUBLE PRECISION) AS "Feature_49", CAST("ADS"."Feature_50" AS DOUBLE PRECISION) AS "Feature_50", CAST("ADS"."Feature_51" AS DOUBLE PRECISION) AS "Feature_51", CAST("ADS"."Feature_52" AS DOUBLE PRECISION) AS "Feature_52", CAST("ADS"."Feature_53" AS DOUBLE PRECISION) AS "Feature_53", CAST("ADS"."Feature_54" AS DOUBLE PRECISION) AS "Feature_54", CAST("ADS"."Feature_55" AS DOUBLE PRECISION) AS "Feature_55", CAST("ADS"."Feature_56" AS DOUBLE PRECISION) AS "Feature_56", CAST("ADS"."Feature_57" AS DOUBLE PRECISION) AS "Feature_57", CAST("ADS"."Feature_58" AS DOUBLE PRECISION) AS "Feature_58", CAST("ADS"."Feature_59" AS DOUBLE PRECISION) AS "Feature_59", CAST("ADS"."Feature_60" AS DOUBLE PRECISION) AS "Feature_60", CAST("ADS"."Feature_61" AS DOUBLE PRECISION) AS "Feature_61", CAST("ADS"."Feature_62" AS DOUBLE PRECISION) AS "Feature_62", CAST("ADS"."Feature_63" AS DOUBLE PRECISION) AS "Feature_63", CAST("ADS"."Feature_64" AS DOUBLE PRECISION) AS "Feature_64", CAST("ADS"."Feature_65" AS DOUBLE PRECISION) AS "Feature_65", CAST("ADS"."Feature_66" AS DOUBLE PRECISION) AS "Feature_66", CAST("ADS"."Feature_67" AS DOUBLE PRECISION) AS "Feature_67", CAST("ADS"."Feature_68" AS DOUBLE PRECISION) AS "Feature_68", CAST("ADS"."Feature_69" AS DOUBLE PRECISION) AS "Feature_69", CAST("ADS"."Feature_70" AS DOUBLE PRECISION) AS "Feature_70", CAST("ADS"."Feature_71" AS DOUBLE PRECISION) AS "Feature_71", CAST("ADS"."Feature_72" AS DOUBLE PRECISION) AS "Feature_72", CAST("ADS"."Feature_73" AS DOUBLE PRECISION) AS "Feature_73", CAST("ADS"."Feature_74" AS DOUBLE PRECISION) AS "Feature_74", CAST("ADS"."Feature_75" AS DOUBLE PRECISION) AS "Feature_75", CAST("ADS"."Feature_76" AS DOUBLE PRECISION) AS "Feature_76", CAST("ADS"."Feature_77" AS DOUBLE PRECISION) AS "Feature_77", CAST("ADS"."Feature_78" AS DOUBLE PRECISION) AS "Feature_78", CAST("ADS"."Feature_79" AS DOUBLE PRECISION) AS "Feature_79", CAST("ADS"."Feature_80" AS DOUBLE PRECISION) AS "Feature_80", CAST("ADS"."Feature_81" AS DOUBLE PRECISION) AS "Feature_81", CAST("ADS"."Feature_82" AS DOUBLE PRECISION) AS "Feature_82", CAST("ADS"."Feature_83" AS DOUBLE PRECISION) AS "Feature_83", CAST("ADS"."Feature_84" AS DOUBLE PRECISION) AS "Feature_84", CAST("ADS"."Feature_85" AS DOUBLE PRECISION) AS "Feature_85", CAST("ADS"."Feature_86" AS DOUBLE PRECISION) AS "Feature_86", CAST("ADS"."Feature_87" AS DOUBLE PRECISION) AS "Feature_87", CAST("ADS"."Feature_88" AS DOUBLE PRECISION) AS "Feature_88", CAST("ADS"."Feature_89" AS DOUBLE PRECISION) AS "Feature_89", CAST("ADS"."Feature_90" AS DOUBLE PRECISION) AS "Feature_90", CAST("ADS"."Feature_91" AS DOUBLE PRECISION) AS "Feature_91", CAST("ADS"."Feature_92" AS DOUBLE PRECISION) AS "Feature_92", CAST("ADS"."Feature_93" AS DOUBLE PRECISION) AS "Feature_93", CAST("ADS"."Feature_94" AS DOUBLE PRECISION) AS "Feature_94", CAST("ADS"."Feature_95" AS DOUBLE PRECISION) AS "Feature_95", CAST("ADS"."Feature_96" AS DOUBLE PRECISION) AS "Feature_96", CAST("ADS"."Feature_97" AS DOUBLE PRECISION) AS "Feature_97", CAST("ADS"."Feature_98" AS DOUBLE PRECISION) AS "Feature_98", CAST("ADS"."Feature_99" AS DOUBLE PRECISION) AS "Feature_99" 
FROM "RandomReg_100" AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", CAST(0.508976929739076 AS DOUBLE PRECISION) * "IL"."Feature_0" + CAST(-0.532309163858939 AS DOUBLE PRECISION) * "IL"."Feature_1" + CAST(3.035011670813905 AS DOUBLE PRECISION) * "IL"."Feature_2" + CAST(-4.123218041302044 AS DOUBLE PRECISION) * "IL"."Feature_3" + CAST(0.305598670547447 AS DOUBLE PRECISION) * "IL"."Feature_4" + CAST(-1.736980054141705 AS DOUBLE PRECISION) * "IL"."Feature_5" + CAST(1.115842499361796 AS DOUBLE PRECISION) * "IL"."Feature_6" + CAST(-3.104449330980616 AS DOUBLE PRECISION) * "IL"."Feature_7" + CAST(0.124072931612431 AS DOUBLE PRECISION) * "IL"."Feature_8" + CAST(1.281379104350354 AS DOUBLE PRECISION) * "IL"."Feature_9" + CAST(0.770413595098577 AS DOUBLE PRECISION) * "IL"."Feature_10" + CAST(1.631454716962364 AS DOUBLE PRECISION) * "IL"."Feature_11" + CAST(1.259407407226662 AS DOUBLE PRECISION) * "IL"."Feature_12" + CAST(-0.097343274437255 AS DOUBLE PRECISION) * "IL"."Feature_13" + CAST(-1.492890383087199 AS DOUBLE PRECISION) * "IL"."Feature_14" + CAST(-1.572839242822281 AS DOUBLE PRECISION) * "IL"."Feature_15" + CAST(1.465879575749492 AS DOUBLE PRECISION) * "IL"."Feature_16" + CAST(1.075033774330134 AS DOUBLE PRECISION) * "IL"."Feature_17" + CAST(-2.037367245148668 AS DOUBLE PRECISION) * "IL"."Feature_18" + CAST(2.000955334398197 AS DOUBLE PRECISION) * "IL"."Feature_19" + CAST(-1.516810865952788 AS DOUBLE PRECISION) * "IL"."Feature_20" + CAST(-3.82226912500923 AS DOUBLE PRECISION) * "IL"."Feature_21" + CAST(1.268694897893827 AS DOUBLE PRECISION) * "IL"."Feature_22" + CAST(0.212011254668917 AS DOUBLE PRECISION) * "IL"."Feature_23" + CAST(-2.942094821147412 AS DOUBLE PRECISION) * "IL"."Feature_24" + CAST(-1.150259884928877 AS DOUBLE PRECISION) * "IL"."Feature_25" + CAST(2.44857895355668 AS DOUBLE PRECISION) * "IL"."Feature_26" + CAST(-2.921030051862188 AS DOUBLE PRECISION) * "IL"."Feature_27" + CAST(0.316129251872825 AS DOUBLE PRECISION) * "IL"."Feature_28" + CAST(-3.349397574383 AS DOUBLE PRECISION) * "IL"."Feature_29" + CAST(0.152400569711055 AS DOUBLE PRECISION) * "IL"."Feature_30" + CAST(2.857902679725856 AS DOUBLE PRECISION) * "IL"."Feature_31" + CAST(2.77730632041479 AS DOUBLE PRECISION) * "IL"."Feature_32" + CAST(1.012906124347418 AS DOUBLE PRECISION) * "IL"."Feature_33" + CAST(-2.604345400136123 AS DOUBLE PRECISION) * "IL"."Feature_34" + CAST(0.949989845610115 AS DOUBLE PRECISION) * "IL"."Feature_35" + CAST(2.92045362473699 AS DOUBLE PRECISION) * "IL"."Feature_36" + CAST(0.874906979059781 AS DOUBLE PRECISION) * "IL"."Feature_37" + CAST(-0.443374250525732 AS DOUBLE PRECISION) * "IL"."Feature_38" + CAST(-0.539470437285783 AS DOUBLE PRECISION) * "IL"."Feature_39" + CAST(-2.422906547587749 AS DOUBLE PRECISION) * "IL"."Feature_40" + CAST(-1.062239698198312 AS DOUBLE PRECISION) * "IL"."Feature_41" + CAST(-0.684639033875382 AS DOUBLE PRECISION) * "IL"."Feature_42" + CAST(-0.001270705902699 AS DOUBLE PRECISION) * "IL"."Feature_43" + CAST(4.449582619337779 AS DOUBLE PRECISION) * "IL"."Feature_44" + CAST(-2.396386310803572 AS DOUBLE PRECISION) * "IL"."Feature_45" + CAST(-0.540926928174058 AS DOUBLE PRECISION) * "IL"."Feature_46" + CAST(-0.754518153753733 AS DOUBLE PRECISION) * "IL"."Feature_47" + CAST(1.375327755511914 AS DOUBLE PRECISION) * "IL"."Feature_48" + CAST(1.593451769441499 AS DOUBLE PRECISION) * "IL"."Feature_49" + CAST(-1.094527776104486 AS DOUBLE PRECISION) * "IL"."Feature_50" + CAST(-0.497517735038335 AS DOUBLE PRECISION) * "IL"."Feature_51" + CAST(0.779128051254881 AS DOUBLE PRECISION) * "IL"."Feature_52" + CAST(-1.500996465133441 AS DOUBLE PRECISION) * "IL"."Feature_53" + CAST(-0.116282019806187 AS DOUBLE PRECISION) * "IL"."Feature_54" + CAST(1.192124830883914 AS DOUBLE PRECISION) * "IL"."Feature_55" + CAST(2.08774021423948 AS DOUBLE PRECISION) * "IL"."Feature_56" + CAST(0.596648188060932 AS DOUBLE PRECISION) * "IL"."Feature_57" + CAST(3.857348610169814 AS DOUBLE PRECISION) * "IL"."Feature_58" + CAST(-3.422898878733198 AS DOUBLE PRECISION) * "IL"."Feature_59" + CAST(1.578563524803384 AS DOUBLE PRECISION) * "IL"."Feature_60" + CAST(1.436727439777039 AS DOUBLE PRECISION) * "IL"."Feature_61" + CAST(-1.173025121827702 AS DOUBLE PRECISION) * "IL"."Feature_62" + CAST(0.253869951108771 AS DOUBLE PRECISION) * "IL"."Feature_63" + CAST(-0.000848925223499 AS DOUBLE PRECISION) * "IL"."Feature_64" + CAST(2.964327348896576 AS DOUBLE PRECISION) * "IL"."Feature_65" + CAST(-0.273298854926863 AS DOUBLE PRECISION) * "IL"."Feature_66" + CAST(-0.240401985152048 AS DOUBLE PRECISION) * "IL"."Feature_67" + CAST(-0.630642954696724 AS DOUBLE PRECISION) * "IL"."Feature_68" + CAST(2.358929358836707 AS DOUBLE PRECISION) * "IL"."Feature_69" + CAST(2.958303612462116 AS DOUBLE PRECISION) * "IL"."Feature_70" + CAST(-1.71304266921253 AS DOUBLE PRECISION) * "IL"."Feature_71" + CAST(-4.687902428575442 AS DOUBLE PRECISION) * "IL"."Feature_72" + CAST(3.374698760676387 AS DOUBLE PRECISION) * "IL"."Feature_73" + CAST(-3.146106489742112 AS DOUBLE PRECISION) * "IL"."Feature_74" + CAST(2.397011132119347 AS DOUBLE PRECISION) * "IL"."Feature_75" + CAST(0.393772928291837 AS DOUBLE PRECISION) * "IL"."Feature_76" + CAST(0.440671928622354 AS DOUBLE PRECISION) * "IL"."Feature_77" + CAST(0.160361991435669 AS DOUBLE PRECISION) * "IL"."Feature_78" + CAST(3.782301407454723 AS DOUBLE PRECISION) * "IL"."Feature_79" + CAST(-1.690913212780584 AS DOUBLE PRECISION) * "IL"."Feature_80" + CAST(-2.702853744947548 AS DOUBLE PRECISION) * "IL"."Feature_81" + CAST(-2.644953085062232 AS DOUBLE PRECISION) * "IL"."Feature_82" + CAST(-0.768368671519369 AS DOUBLE PRECISION) * "IL"."Feature_83" + CAST(-5.030728571896996 AS DOUBLE PRECISION) * "IL"."Feature_84" + CAST(-0.306457297809444 AS DOUBLE PRECISION) * "IL"."Feature_85" + CAST(0.060716855013222 AS DOUBLE PRECISION) * "IL"."Feature_86" + CAST(-1.077057426209607 AS DOUBLE PRECISION) * "IL"."Feature_87" + CAST(-2.31816116658388 AS DOUBLE PRECISION) * "IL"."Feature_88" + CAST(2.020139751320056 AS DOUBLE PRECISION) * "IL"."Feature_89" + CAST(-0.15335729274405 AS DOUBLE PRECISION) * "IL"."Feature_90" + CAST(-1.085254052162877 AS DOUBLE PRECISION) * "IL"."Feature_91" + CAST(1.142948635725425 AS DOUBLE PRECISION) * "IL"."Feature_92" + CAST(1.154244320241052 AS DOUBLE PRECISION) * "IL"."Feature_93" + CAST(0.975753501993877 AS DOUBLE PRECISION) * "IL"."Feature_94" + CAST(-3.471714798398066 AS DOUBLE PRECISION) * "IL"."Feature_95" + CAST(-1.854861481244826 AS DOUBLE PRECISION) * "IL"."Feature_96" + CAST(-1.580857814913538 AS DOUBLE PRECISION) * "IL"."Feature_97" + CAST(-2.376937170298687 AS DOUBLE PRECISION) * "IL"."Feature_98" + CAST(-1.66103142918344 AS DOUBLE PRECISION) * "IL"."Feature_99" + CAST(-6.675052190329697 AS DOUBLE PRECISION) AS "NEUR_1_1", CAST(-2.341674274066998 AS DOUBLE PRECISION) * "IL"."Feature_0" + CAST(0.703102060846893 AS DOUBLE PRECISION) * "IL"."Feature_1" + CAST(-3.212128243958964 AS DOUBLE PRECISION) * "IL"."Feature_2" + CAST(-2.219823904117352 AS DOUBLE PRECISION) * "IL"."Feature_3" + CAST(0.692180988293223 AS DOUBLE PRECISION) * "IL"."Feature_4" + CAST(1.965580401624215 AS DOUBLE PRECISION) * "IL"."Feature_5" + CAST(-0.880473246256079 AS DOUBLE PRECISION) * "IL"."Feature_6" + CAST(-1.33598701261212 AS DOUBLE PRECISION) * "IL"."Feature_7" + CAST(-1.342326882489951 AS DOUBLE PRECISION) * "IL"."Feature_8" + CAST(1.129199080794157 AS DOUBLE PRECISION) * "IL"."Feature_9" + CAST(-2.198853244046284 AS DOUBLE PRECISION) * "IL"."Feature_10" + CAST(1.299821900429303 AS DOUBLE PRECISION) * "IL"."Feature_11" + CAST(-1.913830451540483 AS DOUBLE PRECISION) * "IL"."Feature_12" + CAST(3.30865866786888 AS DOUBLE PRECISION) * "IL"."Feature_13" + CAST(1.006857898614232 AS DOUBLE PRECISION) * "IL"."Feature_14" + CAST(2.40677294615533 AS DOUBLE PRECISION) * "IL"."Feature_15" + CAST(1.133851536228168 AS DOUBLE PRECISION) * "IL"."Feature_16" + CAST(-0.719663466512447 AS DOUBLE PRECISION) * "IL"."Feature_17" + CAST(0.446362240523797 AS DOUBLE PRECISION) * "IL"."Feature_18" + CAST(-3.20032995903469 AS DOUBLE PRECISION) * "IL"."Feature_19" + CAST(0.494188948149507 AS DOUBLE PRECISION) * "IL"."Feature_20" + CAST(0.983850496461719 AS DOUBLE PRECISION) * "IL"."Feature_21" + CAST(-1.061334927959094 AS DOUBLE PRECISION) * "IL"."Feature_22" + CAST(-0.240789762604736 AS DOUBLE PRECISION) * "IL"."Feature_23" + CAST(5.457269561986675 AS DOUBLE PRECISION) * "IL"."Feature_24" + CAST(-0.057634626333242 AS DOUBLE PRECISION) * "IL"."Feature_25" + CAST(-0.980503265631415 AS DOUBLE PRECISION) * "IL"."Feature_26" + CAST(2.284056060603148 AS DOUBLE PRECISION) * "IL"."Feature_27" + CAST(-2.53463569540087 AS DOUBLE PRECISION) * "IL"."Feature_28" + CAST(2.422646326986613 AS DOUBLE PRECISION) * "IL"."Feature_29" + CAST(-3.157307175088309 AS DOUBLE PRECISION) * "IL"."Feature_30" + CAST(-0.712867181159824 AS DOUBLE PRECISION) * "IL"."Feature_31" + CAST(0.869433398699894 AS DOUBLE PRECISION) * "IL"."Feature_32" + CAST(0.465343083083622 AS DOUBLE PRECISION) * "IL"."Feature_33" + CAST(-1.331420617959446 AS DOUBLE PRECISION) * "IL"."Feature_34" + CAST(1.083323991392892 AS DOUBLE PRECISION) * "IL"."Feature_35" + CAST(-0.594322833171392 AS DOUBLE PRECISION) * "IL"."Feature_36" + CAST(-2.507604468470195 AS DOUBLE PRECISION) * "IL"."Feature_37" + CAST(1.907380381519282 AS DOUBLE PRECISION) * "IL"."Feature_38" + CAST(3.707533865891378 AS DOUBLE PRECISION) * "IL"."Feature_39" + CAST(-2.025192828516486 AS DOUBLE PRECISION) * "IL"."Feature_40" + CAST(0.693945951300318 AS DOUBLE PRECISION) * "IL"."Feature_41" + CAST(-1.695524489546279 AS DOUBLE PRECISION) * "IL"."Feature_42" + CAST(-1.42062394737099 AS DOUBLE PRECISION) * "IL"."Feature_43" + CAST(-1.347542265075882 AS DOUBLE PRECISION) * "IL"."Feature_44" + CAST(3.533437614499832 AS DOUBLE PRECISION) * "IL"."Feature_45" + CAST(2.967078481501212 AS DOUBLE PRECISION) * "IL"."Feature_46" + CAST(-1.99834040704636 AS DOUBLE PRECISION) * "IL"."Feature_47" + CAST(0.732820252594421 AS DOUBLE PRECISION) * "IL"."Feature_48" + CAST(0.250118413770464 AS DOUBLE PRECISION) * "IL"."Feature_49" + CAST(0.060914407716048 AS DOUBLE PRECISION) * "IL"."Feature_50" + CAST(1.864014158270021 AS DOUBLE PRECISION) * "IL"."Feature_51" + CAST(-0.977147998969984 AS DOUBLE PRECISION) * "IL"."Feature_52" + CAST(1.521609459717076 AS DOUBLE PRECISION) * "IL"."Feature_53" + CAST(-3.436604113024446 AS DOUBLE PRECISION) * "IL"."Feature_54" + CAST(1.342230181443738 AS DOUBLE PRECISION) * "IL"."Feature_55" + CAST(-4.427876565044524 AS DOUBLE PRECISION) * "IL"."Feature_56" + CAST(0.368201069213399 AS DOUBLE PRECISION) * "IL"."Feature_57" + CAST(-2.665729842182843 AS DOUBLE PRECISION) * "IL"."Feature_58" + CAST(1.052221075630956 AS DOUBLE PRECISION) * "IL"."Feature_59" + CAST(2.280222696112076 AS DOUBLE PRECISION) * "IL"."Feature_60" + CAST(0.492565433109664 AS DOUBLE PRECISION) * "IL"."Feature_61" + CAST(-2.914004212228604 AS DOUBLE PRECISION) * "IL"."Feature_62" + CAST(4.004587617309772 AS DOUBLE PRECISION) * "IL"."Feature_63" + CAST(-1.957944547780003 AS DOUBLE PRECISION) * "IL"."Feature_64" + CAST(-0.910760808121164 AS DOUBLE PRECISION) * "IL"."Feature_65" + CAST(0.493728922608778 AS DOUBLE PRECISION) * "IL"."Feature_66" + CAST(0.704221379571504 AS DOUBLE PRECISION) * "IL"."Feature_67" + CAST(3.596764709693794 AS DOUBLE PRECISION) * "IL"."Feature_68" + CAST(-1.171927583415723 AS DOUBLE PRECISION) * "IL"."Feature_69" + CAST(0.068945605570625 AS DOUBLE PRECISION) * "IL"."Feature_70" + CAST(4.459502661091082 AS DOUBLE PRECISION) * "IL"."Feature_71" + CAST(-0.068469655107004 AS DOUBLE PRECISION) * "IL"."Feature_72" + CAST(1.268707761493349 AS DOUBLE PRECISION) * "IL"."Feature_73" + CAST(1.999132103259243 AS DOUBLE PRECISION) * "IL"."Feature_74" + CAST(-2.073294004098526 AS DOUBLE PRECISION) * "IL"."Feature_75" + CAST(0.541955190338403 AS DOUBLE PRECISION) * "IL"."Feature_76" + CAST(-4.83808282019726 AS DOUBLE PRECISION) * "IL"."Feature_77" + CAST(-1.000622760724722 AS DOUBLE PRECISION) * "IL"."Feature_78" + CAST(-0.477514288167667 AS DOUBLE PRECISION) * "IL"."Feature_79" + CAST(6.960442275083802 AS DOUBLE PRECISION) * "IL"."Feature_80" + CAST(3.473421817438733 AS DOUBLE PRECISION) * "IL"."Feature_81" + CAST(2.687591460560823 AS DOUBLE PRECISION) * "IL"."Feature_82" + CAST(-0.29157386294113 AS DOUBLE PRECISION) * "IL"."Feature_83" + CAST(2.694369375431808 AS DOUBLE PRECISION) * "IL"."Feature_84" + CAST(-1.689337812277246 AS DOUBLE PRECISION) * "IL"."Feature_85" + CAST(-0.395257107989419 AS DOUBLE PRECISION) * "IL"."Feature_86" + CAST(-0.107607644554038 AS DOUBLE PRECISION) * "IL"."Feature_87" + CAST(0.969970675802488 AS DOUBLE PRECISION) * "IL"."Feature_88" + CAST(1.284227064373646 AS DOUBLE PRECISION) * "IL"."Feature_89" + CAST(0.947377042839454 AS DOUBLE PRECISION) * "IL"."Feature_90" + CAST(-1.497259284272894 AS DOUBLE PRECISION) * "IL"."Feature_91" + CAST(-3.469811892241835 AS DOUBLE PRECISION) * "IL"."Feature_92" + CAST(-1.94910582679086 AS DOUBLE PRECISION) * "IL"."Feature_93" + CAST(-2.704076676810306 AS DOUBLE PRECISION) * "IL"."Feature_94" + CAST(1.972112360368414 AS DOUBLE PRECISION) * "IL"."Feature_95" + CAST(0.90580749884966 AS DOUBLE PRECISION) * "IL"."Feature_96" + CAST(0.847249716368956 AS DOUBLE PRECISION) * "IL"."Feature_97" + CAST(0.763321159960391 AS DOUBLE PRECISION) * "IL"."Feature_98" + CAST(0.651362148183294 AS DOUBLE PRECISION) * "IL"."Feature_99" + CAST(-0.068488344093534 AS DOUBLE PRECISION) AS "NEUR_1_2", CAST(-2.905449389599528 AS DOUBLE PRECISION) * "IL"."Feature_0" + CAST(-8.997724795202672 AS DOUBLE PRECISION) * "IL"."Feature_1" + CAST(-3.822773482193038 AS DOUBLE PRECISION) * "IL"."Feature_2" + CAST(0.752095070019648 AS DOUBLE PRECISION) * "IL"."Feature_3" + CAST(0.069648844160671 AS DOUBLE PRECISION) * "IL"."Feature_4" + CAST(0.547187611048665 AS DOUBLE PRECISION) * "IL"."Feature_5" + CAST(0.526004717179383 AS DOUBLE PRECISION) * "IL"."Feature_6" + CAST(-2.404767767413194 AS DOUBLE PRECISION) * "IL"."Feature_7" + CAST(7.133448073581033 AS DOUBLE PRECISION) * "IL"."Feature_8" + CAST(3.254325309343574 AS DOUBLE PRECISION) * "IL"."Feature_9" + CAST(-0.874723447187549 AS DOUBLE PRECISION) * "IL"."Feature_10" + CAST(-0.031440343294502 AS DOUBLE PRECISION) * "IL"."Feature_11" + CAST(3.764311793099807 AS DOUBLE PRECISION) * "IL"."Feature_12" + CAST(-1.488310168179544 AS DOUBLE PRECISION) * "IL"."Feature_13" + CAST(0.977986305469622 AS DOUBLE PRECISION) * "IL"."Feature_14" + CAST(1.068567298584325 AS DOUBLE PRECISION) * "IL"."Feature_15" + CAST(7.682657060231856 AS DOUBLE PRECISION) * "IL"."Feature_16" + CAST(5.578665545537815 AS DOUBLE PRECISION) * "IL"."Feature_17" + CAST(0.092439732307196 AS DOUBLE PRECISION) * "IL"."Feature_18" + CAST(-6.182187596191429 AS DOUBLE PRECISION) * "IL"."Feature_19" + CAST(5.531264942782028 AS DOUBLE PRECISION) * "IL"."Feature_20" + CAST(0.049899735878186 AS DOUBLE PRECISION) * "IL"."Feature_21" + CAST(4.179050248147056 AS DOUBLE PRECISION) * "IL"."Feature_22" + CAST(-4.819085907243773 AS DOUBLE PRECISION) * "IL"."Feature_23" + CAST(1.193231102453876 AS DOUBLE PRECISION) * "IL"."Feature_24" + CAST(3.811471932729072 AS DOUBLE PRECISION) * "IL"."Feature_25" + CAST(3.576728164713621 AS DOUBLE PRECISION) * "IL"."Feature_26" + CAST(3.084255387006358 AS DOUBLE PRECISION) * "IL"."Feature_27" + CAST(2.160996081040555 AS DOUBLE PRECISION) * "IL"."Feature_28" + CAST(0.903441752902595 AS DOUBLE PRECISION) * "IL"."Feature_29" + CAST(2.498635822607578 AS DOUBLE PRECISION) * "IL"."Feature_30" + CAST(2.94475641837564 AS DOUBLE PRECISION) * "IL"."Feature_31" + CAST(-1.74804789961261 AS DOUBLE PRECISION) * "IL"."Feature_32" + CAST(5.626076508329681 AS DOUBLE PRECISION) * "IL"."Feature_33" + CAST(-3.904960226795004 AS DOUBLE PRECISION) * "IL"."Feature_34" + CAST(1.311206322741118 AS DOUBLE PRECISION) * "IL"."Feature_35" + CAST(1.080936732534265 AS DOUBLE PRECISION) * "IL"."Feature_36" + CAST(-3.840822282639822 AS DOUBLE PRECISION) * "IL"."Feature_37" + CAST(3.384931754031518 AS DOUBLE PRECISION) * "IL"."Feature_38" + CAST(14.151518774135369 AS DOUBLE PRECISION) * "IL"."Feature_39" + CAST(-3.300688188566404 AS DOUBLE PRECISION) * "IL"."Feature_40" + CAST(10.89088308484341 AS DOUBLE PRECISION) * "IL"."Feature_41" + CAST(-0.970441696845076 AS DOUBLE PRECISION) * "IL"."Feature_42" + CAST(1.807940662063329 AS DOUBLE PRECISION) * "IL"."Feature_43" + CAST(2.482394558084678 AS DOUBLE PRECISION) * "IL"."Feature_44" + CAST(-3.108542021892468 AS DOUBLE PRECISION) * "IL"."Feature_45" + CAST(-2.213739011472874 AS DOUBLE PRECISION) * "IL"."Feature_46" + CAST(-0.482853898198418 AS DOUBLE PRECISION) * "IL"."Feature_47" + CAST(1.325834517610601 AS DOUBLE PRECISION) * "IL"."Feature_48" + CAST(6.010169132325101 AS DOUBLE PRECISION) * "IL"."Feature_49" + CAST(1.898509219005236 AS DOUBLE PRECISION) * "IL"."Feature_50" + CAST(1.9109729318325 AS DOUBLE PRECISION) * "IL"."Feature_51" + CAST(0.621550928122374 AS DOUBLE PRECISION) * "IL"."Feature_52" + CAST(0.538743773442927 AS DOUBLE PRECISION) * "IL"."Feature_53" + CAST(1.764165375057549 AS DOUBLE PRECISION) * "IL"."Feature_54" + CAST(-2.565155258167129 AS DOUBLE PRECISION) * "IL"."Feature_55" + CAST(-4.470004088991926 AS DOUBLE PRECISION) * "IL"."Feature_56" + CAST(2.787883822741788 AS DOUBLE PRECISION) * "IL"."Feature_57" + CAST(0.83685420782958 AS DOUBLE PRECISION) * "IL"."Feature_58" + CAST(1.552992880968608 AS DOUBLE PRECISION) * "IL"."Feature_59" + CAST(6.432174239526953 AS DOUBLE PRECISION) * "IL"."Feature_60" + CAST(-3.331070909381207 AS DOUBLE PRECISION) * "IL"."Feature_61" + CAST(-3.3942105890379 AS DOUBLE PRECISION) * "IL"."Feature_62" + CAST(14.506160989875355 AS DOUBLE PRECISION) * "IL"."Feature_63" + CAST(4.098279357986052 AS DOUBLE PRECISION) * "IL"."Feature_64" + CAST(-2.994463826140821 AS DOUBLE PRECISION) * "IL"."Feature_65" + CAST(2.36877261809838 AS DOUBLE PRECISION) * "IL"."Feature_66" + CAST(-6.582456814757096 AS DOUBLE PRECISION) * "IL"."Feature_67" + CAST(4.019105980721581 AS DOUBLE PRECISION) * "IL"."Feature_68" + CAST(-5.35483323516875 AS DOUBLE PRECISION) * "IL"."Feature_69" + CAST(-2.023483870844333 AS DOUBLE PRECISION) * "IL"."Feature_70" + CAST(1.630619586799915 AS DOUBLE PRECISION) * "IL"."Feature_71" + CAST(-1.469671355593999 AS DOUBLE PRECISION) * "IL"."Feature_72" + CAST(-3.310114580611921 AS DOUBLE PRECISION) * "IL"."Feature_73" + CAST(2.404817637448736 AS DOUBLE PRECISION) * "IL"."Feature_74" + CAST(1.615183538076369 AS DOUBLE PRECISION) * "IL"."Feature_75" + CAST(-1.819167204970741 AS DOUBLE PRECISION) * "IL"."Feature_76" + CAST(-7.629502977869405 AS DOUBLE PRECISION) * "IL"."Feature_77" + CAST(2.489769138472959 AS DOUBLE PRECISION) * "IL"."Feature_78" + CAST(5.034776503414805 AS DOUBLE PRECISION) * "IL"."Feature_79" + CAST(22.461819882346568 AS DOUBLE PRECISION) * "IL"."Feature_80" + CAST(4.35384622735029 AS DOUBLE PRECISION) * "IL"."Feature_81" + CAST(2.327358249800162 AS DOUBLE PRECISION) * "IL"."Feature_82" + CAST(-0.145154554406695 AS DOUBLE PRECISION) * "IL"."Feature_83" + CAST(-3.889194298133352 AS DOUBLE PRECISION) * "IL"."Feature_84" + CAST(1.366211566683286 AS DOUBLE PRECISION) * "IL"."Feature_85" + CAST(-1.384984647723977 AS DOUBLE PRECISION) * "IL"."Feature_86" + CAST(2.371465317885481 AS DOUBLE PRECISION) * "IL"."Feature_87" + CAST(-1.359195778764014 AS DOUBLE PRECISION) * "IL"."Feature_88" + CAST(2.138539587333495 AS DOUBLE PRECISION) * "IL"."Feature_89" + CAST(-0.1182977276791 AS DOUBLE PRECISION) * "IL"."Feature_90" + CAST(5.613458304847611 AS DOUBLE PRECISION) * "IL"."Feature_91" + CAST(4.730067795960069 AS DOUBLE PRECISION) * "IL"."Feature_92" + CAST(-4.527346125441433 AS DOUBLE PRECISION) * "IL"."Feature_93" + CAST(-4.476717733555694 AS DOUBLE PRECISION) * "IL"."Feature_94" + CAST(12.045136379930462 AS DOUBLE PRECISION) * "IL"."Feature_95" + CAST(1.019815931318425 AS DOUBLE PRECISION) * "IL"."Feature_96" + CAST(2.474315240324317 AS DOUBLE PRECISION) * "IL"."Feature_97" + CAST(-3.397986122788646 AS DOUBLE PRECISION) * "IL"."Feature_98" + CAST(0.696156838112933 AS DOUBLE PRECISION) * "IL"."Feature_99" + CAST(1.170935316447562 AS DOUBLE PRECISION) AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table tmp_20180602144937_k6o_ol_identity_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602144937_k6o_ol_identity_1  (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602144937_k6o_ol_identity_1 part 2. Populate

INSERT INTO tmp_20180602144937_k6o_ol_identity_1 ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", CAST(-2.40789427059554 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(1.904698227061331 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(6.75523284054661 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-1.09410343277604 AS DOUBLE PRECISION) AS "NEUR_2_1", CAST(0.299660439075888 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.118987458242843 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-7.712848484385972 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(13.252876337239904 AS DOUBLE PRECISION) AS "NEUR_2_2", CAST(4.149634810181686 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(4.790667734177505 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(5.880771569316317 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-3.406247560335622 AS DOUBLE PRECISION) AS "NEUR_2_3", CAST(-0.274025678253058 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(6.331942556211917 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(3.691484752606042 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(7.194710136229631 AS DOUBLE PRECISION) AS "NEUR_2_4", CAST(-0.609346724061031 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.377668442836967 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.673001583196827 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.018078316226986 AS DOUBLE PRECISION) AS "NEUR_2_5" 
FROM tmp_20180602144937_zg7_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", CAST(0.266726593873282 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_1" + CAST(-14.769765461375615 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_2" + CAST(0.343967132509682 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_3" + CAST(-0.31629651413662 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_4" + CAST(-0.273475096602486 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_5" + CAST(-12.636120233148382 AS DOUBLE PRECISION) AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "U"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180602144937_k6o_ol_identity_1 AS "OL_identity_1"