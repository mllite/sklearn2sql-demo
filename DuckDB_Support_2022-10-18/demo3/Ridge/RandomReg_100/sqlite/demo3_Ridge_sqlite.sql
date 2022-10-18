-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : Ridge
-- Dataset : RandomReg_100
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."Feature_8" AS FLOAT) AS "Feature_8", CAST("ADS"."Feature_9" AS FLOAT) AS "Feature_9", CAST("ADS"."Feature_10" AS FLOAT) AS "Feature_10", CAST("ADS"."Feature_11" AS FLOAT) AS "Feature_11", CAST("ADS"."Feature_12" AS FLOAT) AS "Feature_12", CAST("ADS"."Feature_13" AS FLOAT) AS "Feature_13", CAST("ADS"."Feature_14" AS FLOAT) AS "Feature_14", CAST("ADS"."Feature_15" AS FLOAT) AS "Feature_15", CAST("ADS"."Feature_16" AS FLOAT) AS "Feature_16", CAST("ADS"."Feature_17" AS FLOAT) AS "Feature_17", CAST("ADS"."Feature_18" AS FLOAT) AS "Feature_18", CAST("ADS"."Feature_19" AS FLOAT) AS "Feature_19", CAST("ADS"."Feature_20" AS FLOAT) AS "Feature_20", CAST("ADS"."Feature_21" AS FLOAT) AS "Feature_21", CAST("ADS"."Feature_22" AS FLOAT) AS "Feature_22", CAST("ADS"."Feature_23" AS FLOAT) AS "Feature_23", CAST("ADS"."Feature_24" AS FLOAT) AS "Feature_24", CAST("ADS"."Feature_25" AS FLOAT) AS "Feature_25", CAST("ADS"."Feature_26" AS FLOAT) AS "Feature_26", CAST("ADS"."Feature_27" AS FLOAT) AS "Feature_27", CAST("ADS"."Feature_28" AS FLOAT) AS "Feature_28", CAST("ADS"."Feature_29" AS FLOAT) AS "Feature_29", CAST("ADS"."Feature_30" AS FLOAT) AS "Feature_30", CAST("ADS"."Feature_31" AS FLOAT) AS "Feature_31", CAST("ADS"."Feature_32" AS FLOAT) AS "Feature_32", CAST("ADS"."Feature_33" AS FLOAT) AS "Feature_33", CAST("ADS"."Feature_34" AS FLOAT) AS "Feature_34", CAST("ADS"."Feature_35" AS FLOAT) AS "Feature_35", CAST("ADS"."Feature_36" AS FLOAT) AS "Feature_36", CAST("ADS"."Feature_37" AS FLOAT) AS "Feature_37", CAST("ADS"."Feature_38" AS FLOAT) AS "Feature_38", CAST("ADS"."Feature_39" AS FLOAT) AS "Feature_39", CAST("ADS"."Feature_40" AS FLOAT) AS "Feature_40", CAST("ADS"."Feature_41" AS FLOAT) AS "Feature_41", CAST("ADS"."Feature_42" AS FLOAT) AS "Feature_42", CAST("ADS"."Feature_43" AS FLOAT) AS "Feature_43", CAST("ADS"."Feature_44" AS FLOAT) AS "Feature_44", CAST("ADS"."Feature_45" AS FLOAT) AS "Feature_45", CAST("ADS"."Feature_46" AS FLOAT) AS "Feature_46", CAST("ADS"."Feature_47" AS FLOAT) AS "Feature_47", CAST("ADS"."Feature_48" AS FLOAT) AS "Feature_48", CAST("ADS"."Feature_49" AS FLOAT) AS "Feature_49", CAST("ADS"."Feature_50" AS FLOAT) AS "Feature_50", CAST("ADS"."Feature_51" AS FLOAT) AS "Feature_51", CAST("ADS"."Feature_52" AS FLOAT) AS "Feature_52", CAST("ADS"."Feature_53" AS FLOAT) AS "Feature_53", CAST("ADS"."Feature_54" AS FLOAT) AS "Feature_54", CAST("ADS"."Feature_55" AS FLOAT) AS "Feature_55", CAST("ADS"."Feature_56" AS FLOAT) AS "Feature_56", CAST("ADS"."Feature_57" AS FLOAT) AS "Feature_57", CAST("ADS"."Feature_58" AS FLOAT) AS "Feature_58", CAST("ADS"."Feature_59" AS FLOAT) AS "Feature_59", CAST("ADS"."Feature_60" AS FLOAT) AS "Feature_60", CAST("ADS"."Feature_61" AS FLOAT) AS "Feature_61", CAST("ADS"."Feature_62" AS FLOAT) AS "Feature_62", CAST("ADS"."Feature_63" AS FLOAT) AS "Feature_63", CAST("ADS"."Feature_64" AS FLOAT) AS "Feature_64", CAST("ADS"."Feature_65" AS FLOAT) AS "Feature_65", CAST("ADS"."Feature_66" AS FLOAT) AS "Feature_66", CAST("ADS"."Feature_67" AS FLOAT) AS "Feature_67", CAST("ADS"."Feature_68" AS FLOAT) AS "Feature_68", CAST("ADS"."Feature_69" AS FLOAT) AS "Feature_69", CAST("ADS"."Feature_70" AS FLOAT) AS "Feature_70", CAST("ADS"."Feature_71" AS FLOAT) AS "Feature_71", CAST("ADS"."Feature_72" AS FLOAT) AS "Feature_72", CAST("ADS"."Feature_73" AS FLOAT) AS "Feature_73", CAST("ADS"."Feature_74" AS FLOAT) AS "Feature_74", CAST("ADS"."Feature_75" AS FLOAT) AS "Feature_75", CAST("ADS"."Feature_76" AS FLOAT) AS "Feature_76", CAST("ADS"."Feature_77" AS FLOAT) AS "Feature_77", CAST("ADS"."Feature_78" AS FLOAT) AS "Feature_78", CAST("ADS"."Feature_79" AS FLOAT) AS "Feature_79", CAST("ADS"."Feature_80" AS FLOAT) AS "Feature_80", CAST("ADS"."Feature_81" AS FLOAT) AS "Feature_81", CAST("ADS"."Feature_82" AS FLOAT) AS "Feature_82", CAST("ADS"."Feature_83" AS FLOAT) AS "Feature_83", CAST("ADS"."Feature_84" AS FLOAT) AS "Feature_84", CAST("ADS"."Feature_85" AS FLOAT) AS "Feature_85", CAST("ADS"."Feature_86" AS FLOAT) AS "Feature_86", CAST("ADS"."Feature_87" AS FLOAT) AS "Feature_87", CAST("ADS"."Feature_88" AS FLOAT) AS "Feature_88", CAST("ADS"."Feature_89" AS FLOAT) AS "Feature_89", CAST("ADS"."Feature_90" AS FLOAT) AS "Feature_90", CAST("ADS"."Feature_91" AS FLOAT) AS "Feature_91", CAST("ADS"."Feature_92" AS FLOAT) AS "Feature_92", CAST("ADS"."Feature_93" AS FLOAT) AS "Feature_93", CAST("ADS"."Feature_94" AS FLOAT) AS "Feature_94", CAST("ADS"."Feature_95" AS FLOAT) AS "Feature_95", CAST("ADS"."Feature_96" AS FLOAT) AS "Feature_96", CAST("ADS"."Feature_97" AS FLOAT) AS "Feature_97", CAST("ADS"."Feature_98" AS FLOAT) AS "Feature_98", CAST("ADS"."Feature_99" AS FLOAT) AS "Feature_99" 
FROM "RandomReg_100" AS "ADS"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", 5.052048526010427 * linear_input."Feature_0" + -4.173063313870417 * linear_input."Feature_1" + -9.150314042305034 * linear_input."Feature_2" + 8.517954885585343 * linear_input."Feature_3" + 2.3252715572311065 * linear_input."Feature_4" + -3.8928579338000127 * linear_input."Feature_5" + 1.1404539687525286 * linear_input."Feature_6" + 1.5018911343304522 * linear_input."Feature_7" + 10.443581449286864 * linear_input."Feature_8" + -0.4826805823779998 * linear_input."Feature_9" + -7.200566620743421 * linear_input."Feature_10" + 4.168758230329681 * linear_input."Feature_11" + 7.055161468550921 * linear_input."Feature_12" + -6.072330713716106 * linear_input."Feature_13" + -5.8582951120049245 * linear_input."Feature_14" + -0.9200235852537333 * linear_input."Feature_15" + 32.15196614733424 * linear_input."Feature_16" + 3.986907860431799 * linear_input."Feature_17" + 9.53172656226137 * linear_input."Feature_18" + -9.754616748793868 * linear_input."Feature_19" + 5.01944520389465 * linear_input."Feature_20" + 3.4405498590089527 * linear_input."Feature_21" + 0.740633499687867 * linear_input."Feature_22" + -8.072391468011995 * linear_input."Feature_23" + -3.4846000533948303 * linear_input."Feature_24" + 9.389049188712512 * linear_input."Feature_25" + -2.0351697991411664 * linear_input."Feature_26" + 4.37205709715867 * linear_input."Feature_27" + -1.048108220218946 * linear_input."Feature_28" + 10.793433975213988 * linear_input."Feature_29" + 0.2207801806338332 * linear_input."Feature_30" + 0.7597889169208321 * linear_input."Feature_31" + 0.27481880204430653 * linear_input."Feature_32" + 0.025252571310513172 * linear_input."Feature_33" + -15.46043032163268 * linear_input."Feature_34" + 1.5743902274350665 * linear_input."Feature_35" + -4.81622968446013 * linear_input."Feature_36" + -12.738602401472217 * linear_input."Feature_37" + 8.575767576170069 * linear_input."Feature_38" + 44.18315482621692 * linear_input."Feature_39" + -6.246067811185428 * linear_input."Feature_40" + 58.668988258803594 * linear_input."Feature_41" + -7.03903958569536 * linear_input."Feature_42" + -5.397661852707799 * linear_input."Feature_43" + 8.770123796486427 * linear_input."Feature_44" + -7.431690305830077 * linear_input."Feature_45" + -4.231476445783376 * linear_input."Feature_46" + -6.869978820742702 * linear_input."Feature_47" + -1.4158057620244828 * linear_input."Feature_48" + 18.388440380255304 * linear_input."Feature_49" + 1.1065243240752243 * linear_input."Feature_50" + -5.712547915760668 * linear_input."Feature_51" + 2.22405248347357 * linear_input."Feature_52" + 0.0020938314553831106 * linear_input."Feature_53" + 0.7432958374183256 * linear_input."Feature_54" + -0.3874503176294837 * linear_input."Feature_55" + -9.359458684161076 * linear_input."Feature_56" + -7.956614683168057 * linear_input."Feature_57" + 12.981270784611665 * linear_input."Feature_58" + -4.5127760862432105 * linear_input."Feature_59" + 1.058966678737435 * linear_input."Feature_60" + -8.767198001176316 * linear_input."Feature_61" + -16.000847672888003 * linear_input."Feature_62" + 57.93818298260199 * linear_input."Feature_63" + 12.496940202156152 * linear_input."Feature_64" + -7.350223647117248 * linear_input."Feature_65" + -0.08200932243349146 * linear_input."Feature_66" + -12.750503775271563 * linear_input."Feature_67" + 25.202260688230577 * linear_input."Feature_68" + -6.676584344749835 * linear_input."Feature_69" + -9.730774149339513 * linear_input."Feature_70" + 3.8576310864886434 * linear_input."Feature_71" + -3.133292051235167 * linear_input."Feature_72" + -3.8094921786024227 * linear_input."Feature_73" + 12.976570565489684 * linear_input."Feature_74" + 1.0694512093261364 * linear_input."Feature_75" + 1.6010448997717832 * linear_input."Feature_76" + -15.49728359059848 * linear_input."Feature_77" + 0.4749086008852945 * linear_input."Feature_78" + 1.1371476751425087 * linear_input."Feature_79" + 80.12359087192003 * linear_input."Feature_80" + 1.611599299247672 * linear_input."Feature_81" + 4.667130132683449 * linear_input."Feature_82" + -6.660432954344366 * linear_input."Feature_83" + -4.428467289509885 * linear_input."Feature_84" + 15.913129324427143 * linear_input."Feature_85" + 6.4473195963590975 * linear_input."Feature_86" + 9.150158543150528 * linear_input."Feature_87" + 3.9501219766348306 * linear_input."Feature_88" + 2.4647446160205435 * linear_input."Feature_89" + 6.748906534282158 * linear_input."Feature_90" + 7.718533738660037 * linear_input."Feature_91" + 3.016865196287564 * linear_input."Feature_92" + -9.495083153446073 * linear_input."Feature_93" + -1.3148730821202999 * linear_input."Feature_94" + 63.58173359756996 * linear_input."Feature_95" + -6.77126319850424 * linear_input."Feature_96" + 6.014152633190385 * linear_input."Feature_97" + -7.9142154724208975 * linear_input."Feature_98" + -3.2588642110029777 * linear_input."Feature_99" + -12.056985258831595 AS "Estimator" 
FROM linear_input)
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte