-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 32.38960653257123 * "ADS"."Feature_0" + 16.848940781328483 * "ADS"."Feature_1" + -25.659689070028463 * "ADS"."Feature_2" + -4.4087207827699455 * "ADS"."Feature_3" + -144.27040158513668 * "ADS"."Feature_4" + 57.839362558967295 * "ADS"."Feature_5" + 4.722356912952843 * "ADS"."Feature_6" + -11.96916528385903 * "ADS"."Feature_7" + -14.567879851551114 * "ADS"."Feature_8" + 48.88996108038718 * "ADS"."Feature_9" + -8.84800248576374 * "ADS"."Feature_10" + 25.254947582974022 * "ADS"."Feature_11" + 1.5670270139544038 * "ADS"."Feature_12" + 16.34153900600994 * "ADS"."Feature_13" + -40.484834910939696 * "ADS"."Feature_14" + -38.4187394737882 * "ADS"."Feature_15" + 7.926438381131371 * "ADS"."Feature_16" + 37.29886697182138 * "ADS"."Feature_17" + -25.18414313863846 * "ADS"."Feature_18" + 4.800174122800533 * "ADS"."Feature_19" + 22.20004116635575 * "ADS"."Feature_20" + -4.310046118066552 * "ADS"."Feature_21" + -31.427097069012337 * "ADS"."Feature_22" + 27.19389656157693 * "ADS"."Feature_23" + 3.1043263762919393 * "ADS"."Feature_24" + -19.65940652771473 * "ADS"."Feature_25" + -6.568303929339932 * "ADS"."Feature_26" + 33.78701467717214 * "ADS"."Feature_27" + -21.2988342721529 * "ADS"."Feature_28" + 30.92164502404725 * "ADS"."Feature_29" + 14.082975180860704 * "ADS"."Feature_30" + -71.08380261153721 * "ADS"."Feature_31" + 23.391564914517115 * "ADS"."Feature_32" + -69.56618420769531 * "ADS"."Feature_33" + -38.47320678926467 * "ADS"."Feature_34" + -1.804725752824991 * "ADS"."Feature_35" + 5.476222827831484 * "ADS"."Feature_36" + 39.555221935251915 * "ADS"."Feature_37" + 5.218326110061625 * "ADS"."Feature_38" + -31.068277716045056 * "ADS"."Feature_39" + 6.844832869835411 * "ADS"."Feature_40" + -15.14366680766529 * "ADS"."Feature_41" + -25.38658362837183 * "ADS"."Feature_42" + -1.981432188058168 * "ADS"."Feature_43" + -50.30924692966287 * "ADS"."Feature_44" + -26.20399979490953 * "ADS"."Feature_45" + 1.8703612715706213 * "ADS"."Feature_46" + -10.352226023179965 * "ADS"."Feature_47" + -58.13722209241341 * "ADS"."Feature_48" + -15.000440132069013 * "ADS"."Feature_49" + 6.925815813698267 * "ADS"."Feature_50" + 9.308133679979804 * "ADS"."Feature_51" + -6.753817410825231 * "ADS"."Feature_52" + 11.92600513348284 * "ADS"."Feature_53" + -19.37493480215219 * "ADS"."Feature_54" + -15.69599390426894 * "ADS"."Feature_55" + 46.026747852480405 * "ADS"."Feature_56" + 154.53296627226638 * "ADS"."Feature_57" + 23.778124604077703 * "ADS"."Feature_58" + 20.071195348097074 * "ADS"."Feature_59" + -13.820746267574917 * "ADS"."Feature_60" + 8.332213195339092 * "ADS"."Feature_61" + 23.534160181609128 * "ADS"."Feature_62" + 17.427310260012188 * "ADS"."Feature_63" + 28.565710306603368 * "ADS"."Feature_64" + 17.429252356792134 * "ADS"."Feature_65" + -8.971184314919928 * "ADS"."Feature_66" + 63.28770393528832 * "ADS"."Feature_67" + -57.80258608011931 * "ADS"."Feature_68" + 5.153526102475977 * "ADS"."Feature_69" + 28.039364202347514 * "ADS"."Feature_70" + -60.51401968231515 * "ADS"."Feature_71" + -14.116883540011777 * "ADS"."Feature_72" + -47.601895856702996 * "ADS"."Feature_73" + 10.713114046314736 * "ADS"."Feature_74" + 34.85422695241244 * "ADS"."Feature_75" + -13.79555644418651 * "ADS"."Feature_76" + -58.56562652212241 * "ADS"."Feature_77" + 21.775845468998376 * "ADS"."Feature_78" + -0.6264111353099792 * "ADS"."Feature_79" + -37.83536922888091 * "ADS"."Feature_80" + -18.919284425689675 * "ADS"."Feature_81" + 43.29818534709374 * "ADS"."Feature_82" + 12.11050502467922 * "ADS"."Feature_83" + 40.58301415596903 * "ADS"."Feature_84" + -42.84313325781605 * "ADS"."Feature_85" + -2.7790320485572444 * "ADS"."Feature_86" + 8.390344424364708 * "ADS"."Feature_87" + 35.29416538489287 * "ADS"."Feature_88" + -36.47337065135497 * "ADS"."Feature_89" + -44.98308897368146 * "ADS"."Feature_90" + -25.443831580332873 * "ADS"."Feature_91" + -5.97689151632541 * "ADS"."Feature_92" + -20.24813938466566 * "ADS"."Feature_93" + -49.1648669168157 * "ADS"."Feature_94" + -63.943617316370066 * "ADS"."Feature_95" + 1.202780963846457 * "ADS"."Feature_96" + 14.388147019598678 * "ADS"."Feature_97" + -41.130137124124424 * "ADS"."Feature_98" + -6.178243769329853 * "ADS"."Feature_99" + 73.8231853297 AS lincomb 
FROM "BinaryClass_100" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM linear_model_cte