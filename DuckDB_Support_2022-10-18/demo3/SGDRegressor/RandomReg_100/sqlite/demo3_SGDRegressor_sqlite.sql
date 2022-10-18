-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDRegressor
-- Dataset : RandomReg_100
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."Feature_8" AS FLOAT) AS "Feature_8", CAST("ADS"."Feature_9" AS FLOAT) AS "Feature_9", CAST("ADS"."Feature_10" AS FLOAT) AS "Feature_10", CAST("ADS"."Feature_11" AS FLOAT) AS "Feature_11", CAST("ADS"."Feature_12" AS FLOAT) AS "Feature_12", CAST("ADS"."Feature_13" AS FLOAT) AS "Feature_13", CAST("ADS"."Feature_14" AS FLOAT) AS "Feature_14", CAST("ADS"."Feature_15" AS FLOAT) AS "Feature_15", CAST("ADS"."Feature_16" AS FLOAT) AS "Feature_16", CAST("ADS"."Feature_17" AS FLOAT) AS "Feature_17", CAST("ADS"."Feature_18" AS FLOAT) AS "Feature_18", CAST("ADS"."Feature_19" AS FLOAT) AS "Feature_19", CAST("ADS"."Feature_20" AS FLOAT) AS "Feature_20", CAST("ADS"."Feature_21" AS FLOAT) AS "Feature_21", CAST("ADS"."Feature_22" AS FLOAT) AS "Feature_22", CAST("ADS"."Feature_23" AS FLOAT) AS "Feature_23", CAST("ADS"."Feature_24" AS FLOAT) AS "Feature_24", CAST("ADS"."Feature_25" AS FLOAT) AS "Feature_25", CAST("ADS"."Feature_26" AS FLOAT) AS "Feature_26", CAST("ADS"."Feature_27" AS FLOAT) AS "Feature_27", CAST("ADS"."Feature_28" AS FLOAT) AS "Feature_28", CAST("ADS"."Feature_29" AS FLOAT) AS "Feature_29", CAST("ADS"."Feature_30" AS FLOAT) AS "Feature_30", CAST("ADS"."Feature_31" AS FLOAT) AS "Feature_31", CAST("ADS"."Feature_32" AS FLOAT) AS "Feature_32", CAST("ADS"."Feature_33" AS FLOAT) AS "Feature_33", CAST("ADS"."Feature_34" AS FLOAT) AS "Feature_34", CAST("ADS"."Feature_35" AS FLOAT) AS "Feature_35", CAST("ADS"."Feature_36" AS FLOAT) AS "Feature_36", CAST("ADS"."Feature_37" AS FLOAT) AS "Feature_37", CAST("ADS"."Feature_38" AS FLOAT) AS "Feature_38", CAST("ADS"."Feature_39" AS FLOAT) AS "Feature_39", CAST("ADS"."Feature_40" AS FLOAT) AS "Feature_40", CAST("ADS"."Feature_41" AS FLOAT) AS "Feature_41", CAST("ADS"."Feature_42" AS FLOAT) AS "Feature_42", CAST("ADS"."Feature_43" AS FLOAT) AS "Feature_43", CAST("ADS"."Feature_44" AS FLOAT) AS "Feature_44", CAST("ADS"."Feature_45" AS FLOAT) AS "Feature_45", CAST("ADS"."Feature_46" AS FLOAT) AS "Feature_46", CAST("ADS"."Feature_47" AS FLOAT) AS "Feature_47", CAST("ADS"."Feature_48" AS FLOAT) AS "Feature_48", CAST("ADS"."Feature_49" AS FLOAT) AS "Feature_49", CAST("ADS"."Feature_50" AS FLOAT) AS "Feature_50", CAST("ADS"."Feature_51" AS FLOAT) AS "Feature_51", CAST("ADS"."Feature_52" AS FLOAT) AS "Feature_52", CAST("ADS"."Feature_53" AS FLOAT) AS "Feature_53", CAST("ADS"."Feature_54" AS FLOAT) AS "Feature_54", CAST("ADS"."Feature_55" AS FLOAT) AS "Feature_55", CAST("ADS"."Feature_56" AS FLOAT) AS "Feature_56", CAST("ADS"."Feature_57" AS FLOAT) AS "Feature_57", CAST("ADS"."Feature_58" AS FLOAT) AS "Feature_58", CAST("ADS"."Feature_59" AS FLOAT) AS "Feature_59", CAST("ADS"."Feature_60" AS FLOAT) AS "Feature_60", CAST("ADS"."Feature_61" AS FLOAT) AS "Feature_61", CAST("ADS"."Feature_62" AS FLOAT) AS "Feature_62", CAST("ADS"."Feature_63" AS FLOAT) AS "Feature_63", CAST("ADS"."Feature_64" AS FLOAT) AS "Feature_64", CAST("ADS"."Feature_65" AS FLOAT) AS "Feature_65", CAST("ADS"."Feature_66" AS FLOAT) AS "Feature_66", CAST("ADS"."Feature_67" AS FLOAT) AS "Feature_67", CAST("ADS"."Feature_68" AS FLOAT) AS "Feature_68", CAST("ADS"."Feature_69" AS FLOAT) AS "Feature_69", CAST("ADS"."Feature_70" AS FLOAT) AS "Feature_70", CAST("ADS"."Feature_71" AS FLOAT) AS "Feature_71", CAST("ADS"."Feature_72" AS FLOAT) AS "Feature_72", CAST("ADS"."Feature_73" AS FLOAT) AS "Feature_73", CAST("ADS"."Feature_74" AS FLOAT) AS "Feature_74", CAST("ADS"."Feature_75" AS FLOAT) AS "Feature_75", CAST("ADS"."Feature_76" AS FLOAT) AS "Feature_76", CAST("ADS"."Feature_77" AS FLOAT) AS "Feature_77", CAST("ADS"."Feature_78" AS FLOAT) AS "Feature_78", CAST("ADS"."Feature_79" AS FLOAT) AS "Feature_79", CAST("ADS"."Feature_80" AS FLOAT) AS "Feature_80", CAST("ADS"."Feature_81" AS FLOAT) AS "Feature_81", CAST("ADS"."Feature_82" AS FLOAT) AS "Feature_82", CAST("ADS"."Feature_83" AS FLOAT) AS "Feature_83", CAST("ADS"."Feature_84" AS FLOAT) AS "Feature_84", CAST("ADS"."Feature_85" AS FLOAT) AS "Feature_85", CAST("ADS"."Feature_86" AS FLOAT) AS "Feature_86", CAST("ADS"."Feature_87" AS FLOAT) AS "Feature_87", CAST("ADS"."Feature_88" AS FLOAT) AS "Feature_88", CAST("ADS"."Feature_89" AS FLOAT) AS "Feature_89", CAST("ADS"."Feature_90" AS FLOAT) AS "Feature_90", CAST("ADS"."Feature_91" AS FLOAT) AS "Feature_91", CAST("ADS"."Feature_92" AS FLOAT) AS "Feature_92", CAST("ADS"."Feature_93" AS FLOAT) AS "Feature_93", CAST("ADS"."Feature_94" AS FLOAT) AS "Feature_94", CAST("ADS"."Feature_95" AS FLOAT) AS "Feature_95", CAST("ADS"."Feature_96" AS FLOAT) AS "Feature_96", CAST("ADS"."Feature_97" AS FLOAT) AS "Feature_97", CAST("ADS"."Feature_98" AS FLOAT) AS "Feature_98", CAST("ADS"."Feature_99" AS FLOAT) AS "Feature_99" 
FROM "RandomReg_100" AS "ADS"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", 6.1855022163481665 * linear_input."Feature_0" + -2.44639884423606 * linear_input."Feature_1" + -7.9870533367376115 * linear_input."Feature_2" + 8.176383376363795 * linear_input."Feature_3" + 3.11426292716362 * linear_input."Feature_4" + -4.755830104127581 * linear_input."Feature_5" + 0.9728316904322266 * linear_input."Feature_6" + 1.5406436789487725 * linear_input."Feature_7" + 10.04076624920828 * linear_input."Feature_8" + -2.141057886725753 * linear_input."Feature_9" + -7.384030253592248 * linear_input."Feature_10" + 3.6155619722698034 * linear_input."Feature_11" + 7.832856956306086 * linear_input."Feature_12" + -6.5121640547087996 * linear_input."Feature_13" + -5.118967891076786 * linear_input."Feature_14" + -0.51210594910742 * linear_input."Feature_15" + 33.06535511338081 * linear_input."Feature_16" + 3.723557337296151 * linear_input."Feature_17" + 10.224962682487867 * linear_input."Feature_18" + -9.593397863692989 * linear_input."Feature_19" + 5.799150875953645 * linear_input."Feature_20" + 2.9547067609214865 * linear_input."Feature_21" + 0.9643540610492191 * linear_input."Feature_22" + -7.789695822797856 * linear_input."Feature_23" + -4.355788357332545 * linear_input."Feature_24" + 8.671919424471719 * linear_input."Feature_25" + -3.1565258721822187 * linear_input."Feature_26" + 4.246772844392851 * linear_input."Feature_27" + -1.8368343495329262 * linear_input."Feature_28" + 11.355007847316418 * linear_input."Feature_29" + -0.22991989455281775 * linear_input."Feature_30" + 0.7259158211716076 * linear_input."Feature_31" + 1.70871002485511 * linear_input."Feature_32" + -1.8039433296356855 * linear_input."Feature_33" + -14.888061541513006 * linear_input."Feature_34" + 0.7209469730933823 * linear_input."Feature_35" + -3.1734193859917683 * linear_input."Feature_36" + -11.608762434771343 * linear_input."Feature_37" + 8.366698019598271 * linear_input."Feature_38" + 45.3171043290989 * linear_input."Feature_39" + -5.891485147715604 * linear_input."Feature_40" + 61.908239652557384 * linear_input."Feature_41" + -7.168780960655632 * linear_input."Feature_42" + -7.399012619146288 * linear_input."Feature_43" + 9.6832148050083 * linear_input."Feature_44" + -8.800929432867628 * linear_input."Feature_45" + -3.7665532301864744 * linear_input."Feature_46" + -7.7004397566548795 * linear_input."Feature_47" + -2.352739504474975 * linear_input."Feature_48" + 18.09009929987132 * linear_input."Feature_49" + 1.7327130187830648 * linear_input."Feature_50" + -5.022840667138696 * linear_input."Feature_51" + 2.4088925792473703 * linear_input."Feature_52" + 0.825471401854018 * linear_input."Feature_53" + -0.7964513730939499 * linear_input."Feature_54" + -1.4944775929557679 * linear_input."Feature_55" + -8.694434934710001 * linear_input."Feature_56" + -9.12255030554466 * linear_input."Feature_57" + 12.841951989897103 * linear_input."Feature_58" + -6.157053976160195 * linear_input."Feature_59" + 1.1703818714184753 * linear_input."Feature_60" + -9.117721660810476 * linear_input."Feature_61" + -16.618238868074265 * linear_input."Feature_62" + 60.88518875011208 * linear_input."Feature_63" + 12.868641096214388 * linear_input."Feature_64" + -7.809067055296644 * linear_input."Feature_65" + -0.6261935627147235 * linear_input."Feature_66" + -12.607557066529253 * linear_input."Feature_67" + 26.228077984366458 * linear_input."Feature_68" + -6.883466535082325 * linear_input."Feature_69" + -10.517893741015515 * linear_input."Feature_70" + 2.81464832245226 * linear_input."Feature_71" + -3.655836220559722 * linear_input."Feature_72" + -3.6152753032009954 * linear_input."Feature_73" + 13.250855545677553 * linear_input."Feature_74" + 1.229942574471383 * linear_input."Feature_75" + 1.4418816960683352 * linear_input."Feature_76" + -15.181976641268854 * linear_input."Feature_77" + 0.7641040586018121 * linear_input."Feature_78" + -0.39048952461587283 * linear_input."Feature_79" + 82.1746968491988 * linear_input."Feature_80" + -0.41193495103342537 * linear_input."Feature_81" + 5.072709077767765 * linear_input."Feature_82" + -7.47036926359815 * linear_input."Feature_83" + -4.1963272956283 * linear_input."Feature_84" + 15.149333175725873 * linear_input."Feature_85" + 7.8597450929139505 * linear_input."Feature_86" + 8.735794754864509 * linear_input."Feature_87" + 4.673189287062958 * linear_input."Feature_88" + 2.9004244549764966 * linear_input."Feature_89" + 7.3191383360864055 * linear_input."Feature_90" + 5.9228667533991795 * linear_input."Feature_91" + 3.1385165611348205 * linear_input."Feature_92" + -7.328720846110455 * linear_input."Feature_93" + -0.261068714027371 * linear_input."Feature_94" + 65.83686041536656 * linear_input."Feature_95" + -7.299691779864934 * linear_input."Feature_96" + 5.348926708659102 * linear_input."Feature_97" + -8.394430398002578 * linear_input."Feature_98" + -4.18945096929722 * linear_input."Feature_99" + -8.98074986173715 AS "Estimator" 
FROM linear_input)
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte