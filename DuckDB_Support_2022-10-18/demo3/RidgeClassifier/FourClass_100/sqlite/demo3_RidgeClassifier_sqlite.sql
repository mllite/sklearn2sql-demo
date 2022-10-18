-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : RidgeClassifier
-- Dataset : FourClass_100
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."Feature_8" AS FLOAT) AS "Feature_8", CAST("ADS"."Feature_9" AS FLOAT) AS "Feature_9", CAST("ADS"."Feature_10" AS FLOAT) AS "Feature_10", CAST("ADS"."Feature_11" AS FLOAT) AS "Feature_11", CAST("ADS"."Feature_12" AS FLOAT) AS "Feature_12", CAST("ADS"."Feature_13" AS FLOAT) AS "Feature_13", CAST("ADS"."Feature_14" AS FLOAT) AS "Feature_14", CAST("ADS"."Feature_15" AS FLOAT) AS "Feature_15", CAST("ADS"."Feature_16" AS FLOAT) AS "Feature_16", CAST("ADS"."Feature_17" AS FLOAT) AS "Feature_17", CAST("ADS"."Feature_18" AS FLOAT) AS "Feature_18", CAST("ADS"."Feature_19" AS FLOAT) AS "Feature_19", CAST("ADS"."Feature_20" AS FLOAT) AS "Feature_20", CAST("ADS"."Feature_21" AS FLOAT) AS "Feature_21", CAST("ADS"."Feature_22" AS FLOAT) AS "Feature_22", CAST("ADS"."Feature_23" AS FLOAT) AS "Feature_23", CAST("ADS"."Feature_24" AS FLOAT) AS "Feature_24", CAST("ADS"."Feature_25" AS FLOAT) AS "Feature_25", CAST("ADS"."Feature_26" AS FLOAT) AS "Feature_26", CAST("ADS"."Feature_27" AS FLOAT) AS "Feature_27", CAST("ADS"."Feature_28" AS FLOAT) AS "Feature_28", CAST("ADS"."Feature_29" AS FLOAT) AS "Feature_29", CAST("ADS"."Feature_30" AS FLOAT) AS "Feature_30", CAST("ADS"."Feature_31" AS FLOAT) AS "Feature_31", CAST("ADS"."Feature_32" AS FLOAT) AS "Feature_32", CAST("ADS"."Feature_33" AS FLOAT) AS "Feature_33", CAST("ADS"."Feature_34" AS FLOAT) AS "Feature_34", CAST("ADS"."Feature_35" AS FLOAT) AS "Feature_35", CAST("ADS"."Feature_36" AS FLOAT) AS "Feature_36", CAST("ADS"."Feature_37" AS FLOAT) AS "Feature_37", CAST("ADS"."Feature_38" AS FLOAT) AS "Feature_38", CAST("ADS"."Feature_39" AS FLOAT) AS "Feature_39", CAST("ADS"."Feature_40" AS FLOAT) AS "Feature_40", CAST("ADS"."Feature_41" AS FLOAT) AS "Feature_41", CAST("ADS"."Feature_42" AS FLOAT) AS "Feature_42", CAST("ADS"."Feature_43" AS FLOAT) AS "Feature_43", CAST("ADS"."Feature_44" AS FLOAT) AS "Feature_44", CAST("ADS"."Feature_45" AS FLOAT) AS "Feature_45", CAST("ADS"."Feature_46" AS FLOAT) AS "Feature_46", CAST("ADS"."Feature_47" AS FLOAT) AS "Feature_47", CAST("ADS"."Feature_48" AS FLOAT) AS "Feature_48", CAST("ADS"."Feature_49" AS FLOAT) AS "Feature_49", CAST("ADS"."Feature_50" AS FLOAT) AS "Feature_50", CAST("ADS"."Feature_51" AS FLOAT) AS "Feature_51", CAST("ADS"."Feature_52" AS FLOAT) AS "Feature_52", CAST("ADS"."Feature_53" AS FLOAT) AS "Feature_53", CAST("ADS"."Feature_54" AS FLOAT) AS "Feature_54", CAST("ADS"."Feature_55" AS FLOAT) AS "Feature_55", CAST("ADS"."Feature_56" AS FLOAT) AS "Feature_56", CAST("ADS"."Feature_57" AS FLOAT) AS "Feature_57", CAST("ADS"."Feature_58" AS FLOAT) AS "Feature_58", CAST("ADS"."Feature_59" AS FLOAT) AS "Feature_59", CAST("ADS"."Feature_60" AS FLOAT) AS "Feature_60", CAST("ADS"."Feature_61" AS FLOAT) AS "Feature_61", CAST("ADS"."Feature_62" AS FLOAT) AS "Feature_62", CAST("ADS"."Feature_63" AS FLOAT) AS "Feature_63", CAST("ADS"."Feature_64" AS FLOAT) AS "Feature_64", CAST("ADS"."Feature_65" AS FLOAT) AS "Feature_65", CAST("ADS"."Feature_66" AS FLOAT) AS "Feature_66", CAST("ADS"."Feature_67" AS FLOAT) AS "Feature_67", CAST("ADS"."Feature_68" AS FLOAT) AS "Feature_68", CAST("ADS"."Feature_69" AS FLOAT) AS "Feature_69", CAST("ADS"."Feature_70" AS FLOAT) AS "Feature_70", CAST("ADS"."Feature_71" AS FLOAT) AS "Feature_71", CAST("ADS"."Feature_72" AS FLOAT) AS "Feature_72", CAST("ADS"."Feature_73" AS FLOAT) AS "Feature_73", CAST("ADS"."Feature_74" AS FLOAT) AS "Feature_74", CAST("ADS"."Feature_75" AS FLOAT) AS "Feature_75", CAST("ADS"."Feature_76" AS FLOAT) AS "Feature_76", CAST("ADS"."Feature_77" AS FLOAT) AS "Feature_77", CAST("ADS"."Feature_78" AS FLOAT) AS "Feature_78", CAST("ADS"."Feature_79" AS FLOAT) AS "Feature_79", CAST("ADS"."Feature_80" AS FLOAT) AS "Feature_80", CAST("ADS"."Feature_81" AS FLOAT) AS "Feature_81", CAST("ADS"."Feature_82" AS FLOAT) AS "Feature_82", CAST("ADS"."Feature_83" AS FLOAT) AS "Feature_83", CAST("ADS"."Feature_84" AS FLOAT) AS "Feature_84", CAST("ADS"."Feature_85" AS FLOAT) AS "Feature_85", CAST("ADS"."Feature_86" AS FLOAT) AS "Feature_86", CAST("ADS"."Feature_87" AS FLOAT) AS "Feature_87", CAST("ADS"."Feature_88" AS FLOAT) AS "Feature_88", CAST("ADS"."Feature_89" AS FLOAT) AS "Feature_89", CAST("ADS"."Feature_90" AS FLOAT) AS "Feature_90", CAST("ADS"."Feature_91" AS FLOAT) AS "Feature_91", CAST("ADS"."Feature_92" AS FLOAT) AS "Feature_92", CAST("ADS"."Feature_93" AS FLOAT) AS "Feature_93", CAST("ADS"."Feature_94" AS FLOAT) AS "Feature_94", CAST("ADS"."Feature_95" AS FLOAT) AS "Feature_95", CAST("ADS"."Feature_96" AS FLOAT) AS "Feature_96", CAST("ADS"."Feature_97" AS FLOAT) AS "Feature_97", CAST("ADS"."Feature_98" AS FLOAT) AS "Feature_98", CAST("ADS"."Feature_99" AS FLOAT) AS "Feature_99" 
FROM "FourClass_100" AS "ADS"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", -0.08183835289892238 * linear_input."Feature_0" + 0.2508309267511031 * linear_input."Feature_1" + -0.10136179878492507 * linear_input."Feature_2" + -0.1740498912416253 * linear_input."Feature_3" + 0.1577503778931213 * linear_input."Feature_4" + 0.034073085474515444 * linear_input."Feature_5" + -0.014179018229729348 * linear_input."Feature_6" + -0.2826588666578927 * linear_input."Feature_7" + 0.11794436697346916 * linear_input."Feature_8" + 0.08432942013090525 * linear_input."Feature_9" + 0.2988805246979944 * linear_input."Feature_10" + -0.2656901213812592 * linear_input."Feature_11" + 0.21097830896491496 * linear_input."Feature_12" + 0.22846657001664672 * linear_input."Feature_13" + -0.018853092641942668 * linear_input."Feature_14" + 0.2972811879677969 * linear_input."Feature_15" + 0.06902144210947055 * linear_input."Feature_16" + -0.08896749830023204 * linear_input."Feature_17" + 0.061006906748243474 * linear_input."Feature_18" + 0.11230108817335141 * linear_input."Feature_19" + -0.18980421686524854 * linear_input."Feature_20" + 0.0016946772903992935 * linear_input."Feature_21" + -0.14772431191270977 * linear_input."Feature_22" + 0.022598782675412654 * linear_input."Feature_23" + -0.11001016590854798 * linear_input."Feature_24" + -0.08970917726478543 * linear_input."Feature_25" + -0.07469973771089627 * linear_input."Feature_26" + -0.08875820636801154 * linear_input."Feature_27" + 0.04202548875486675 * linear_input."Feature_28" + -0.01586285937884996 * linear_input."Feature_29" + 0.16810286227202711 * linear_input."Feature_30" + 0.09409230867243852 * linear_input."Feature_31" + -0.26591898650607015 * linear_input."Feature_32" + -0.09280482476997998 * linear_input."Feature_33" + 0.2776704506895646 * linear_input."Feature_34" + -0.11441282182399513 * linear_input."Feature_35" + -0.11558318433661803 * linear_input."Feature_36" + 0.10085959559893001 * linear_input."Feature_37" + -0.2508378869983066 * linear_input."Feature_38" + -0.21833568994856714 * linear_input."Feature_39" + 0.0659737586319504 * linear_input."Feature_40" + -0.19078122154272625 * linear_input."Feature_41" + 0.2034011190395708 * linear_input."Feature_42" + 0.015306063023267032 * linear_input."Feature_43" + -0.06882313210635523 * linear_input."Feature_44" + 0.09492868061200588 * linear_input."Feature_45" + 0.028918908887499907 * linear_input."Feature_46" + -0.26918317789384116 * linear_input."Feature_47" + -0.035997920308904974 * linear_input."Feature_48" + 0.09430888119587735 * linear_input."Feature_49" + 0.10232054995621567 * linear_input."Feature_50" + -0.054427047494158665 * linear_input."Feature_51" + 0.08280778400757786 * linear_input."Feature_52" + -0.08775728980319417 * linear_input."Feature_53" + -0.03766573058222115 * linear_input."Feature_54" + 0.05872968418398465 * linear_input."Feature_55" + 0.015124074640652518 * linear_input."Feature_56" + 0.11031466835697999 * linear_input."Feature_57" + -0.001728507808870905 * linear_input."Feature_58" + 0.08774402205274492 * linear_input."Feature_59" + 0.11469958038229246 * linear_input."Feature_60" + 0.07385709865886811 * linear_input."Feature_61" + 0.16103887556281554 * linear_input."Feature_62" + -0.25173835081159424 * linear_input."Feature_63" + 0.0020417723233526405 * linear_input."Feature_64" + -0.28774781991772536 * linear_input."Feature_65" + -0.061595052324904254 * linear_input."Feature_66" + 0.002240929692244882 * linear_input."Feature_67" + 0.07086707606642523 * linear_input."Feature_68" + -0.06620491508003683 * linear_input."Feature_69" + -0.04333640745069819 * linear_input."Feature_70" + 0.043632814735496905 * linear_input."Feature_71" + 0.15112891553066388 * linear_input."Feature_72" + 0.0931800570456379 * linear_input."Feature_73" + -0.15077988590823105 * linear_input."Feature_74" + 0.0919317356888854 * linear_input."Feature_75" + 0.17848717597537384 * linear_input."Feature_76" + -0.1774512888226733 * linear_input."Feature_77" + 0.21488533688502082 * linear_input."Feature_78" + -0.19729346046792973 * linear_input."Feature_79" + 0.010876475726737361 * linear_input."Feature_80" + 0.10519346082935073 * linear_input."Feature_81" + -0.19677595769298772 * linear_input."Feature_82" + -0.01043099342645612 * linear_input."Feature_83" + 0.008555415771581795 * linear_input."Feature_84" + 0.1605819453449524 * linear_input."Feature_85" + 0.31708246530831347 * linear_input."Feature_86" + -0.03417428599526785 * linear_input."Feature_87" + 0.014331400884987439 * linear_input."Feature_88" + -0.06453252011951789 * linear_input."Feature_89" + -0.18250403997687484 * linear_input."Feature_90" + -0.11205754986849412 * linear_input."Feature_91" + -0.26631912330027324 * linear_input."Feature_92" + 0.08100699438912923 * linear_input."Feature_93" + -0.1217517315782185 * linear_input."Feature_94" + 0.15567032464672947 * linear_input."Feature_95" + -0.035911407075352536 * linear_input."Feature_96" + 0.014456605374966236 * linear_input."Feature_97" + 0.020369988723325204 * linear_input."Feature_98" + 0.07665352816713746 * linear_input."Feature_99" + -0.2176570213618903 AS "Score_0", 0.03226504942135315 * linear_input."Feature_0" + -0.0496535223020973 * linear_input."Feature_1" + 0.3379469152486601 * linear_input."Feature_2" + 0.36236785511646913 * linear_input."Feature_3" + -0.25723431629185484 * linear_input."Feature_4" + -0.07660555823604875 * linear_input."Feature_5" + 0.19534223657207012 * linear_input."Feature_6" + 0.3962077000475909 * linear_input."Feature_7" + -0.22472585545009277 * linear_input."Feature_8" + -0.007487039404899259 * linear_input."Feature_9" + -0.04884949981934666 * linear_input."Feature_10" + 0.05038267143336114 * linear_input."Feature_11" + 0.007799085323984663 * linear_input."Feature_12" + -0.2358556352550932 * linear_input."Feature_13" + -0.01623608609660068 * linear_input."Feature_14" + -0.12734734763538125 * linear_input."Feature_15" + 0.022030171465805867 * linear_input."Feature_16" + -0.07252486163349957 * linear_input."Feature_17" + -0.0059999645488972315 * linear_input."Feature_18" + -0.022172403364160372 * linear_input."Feature_19" + -0.10796301326434221 * linear_input."Feature_20" + -0.06379959803333775 * linear_input."Feature_21" + 0.1547091863500894 * linear_input."Feature_22" + -0.016714040017336198 * linear_input."Feature_23" + -0.07502347038659449 * linear_input."Feature_24" + -0.06617019117728884 * linear_input."Feature_25" + 0.051025031715211784 * linear_input."Feature_26" + 0.07759593586684065 * linear_input."Feature_27" + -0.1480838725374039 * linear_input."Feature_28" + -0.1135453786918579 * linear_input."Feature_29" + 0.03502822558209812 * linear_input."Feature_30" + 0.06852288557119196 * linear_input."Feature_31" + 0.07158407831953159 * linear_input."Feature_32" + 0.03729135660785457 * linear_input."Feature_33" + -0.3191125180631432 * linear_input."Feature_34" + 0.12510552056157923 * linear_input."Feature_35" + -0.03040677818290648 * linear_input."Feature_36" + 0.40966568134710807 * linear_input."Feature_37" + -0.07061381055348076 * linear_input."Feature_38" + 0.1757937858551172 * linear_input."Feature_39" + 0.0008312996644311444 * linear_input."Feature_40" + 0.0548370838491035 * linear_input."Feature_41" + -0.15864556935560553 * linear_input."Feature_42" + -0.18229578641599606 * linear_input."Feature_43" + 0.08520090224899939 * linear_input."Feature_44" + 0.09865086036184632 * linear_input."Feature_45" + -0.26442900003448644 * linear_input."Feature_46" + 0.1459468249257679 * linear_input."Feature_47" + 0.031236541848988754 * linear_input."Feature_48" + 0.04739366888766472 * linear_input."Feature_49" + -0.1535163623657397 * linear_input."Feature_50" + 0.11141726347919238 * linear_input."Feature_51" + -0.11212742996951298 * linear_input."Feature_52" + -0.05354739913040785 * linear_input."Feature_53" + 0.10379593353538619 * linear_input."Feature_54" + 0.00251530441996033 * linear_input."Feature_55" + 0.05026093471393237 * linear_input."Feature_56" + 0.1594576955385656 * linear_input."Feature_57" + 0.04812879868755504 * linear_input."Feature_58" + 0.03674788379886734 * linear_input."Feature_59" + -0.02348875600604215 * linear_input."Feature_60" + 0.1694206399366347 * linear_input."Feature_61" + -0.20329716130276929 * linear_input."Feature_62" + 0.3782187913080797 * linear_input."Feature_63" + 0.3097597960709872 * linear_input."Feature_64" + 0.3414387542776827 * linear_input."Feature_65" + -0.02144224076204734 * linear_input."Feature_66" + -0.15271664964454867 * linear_input."Feature_67" + 0.20845294368126982 * linear_input."Feature_68" + 0.027624723566492353 * linear_input."Feature_69" + 0.15148322301986553 * linear_input."Feature_70" + -0.012477437729990201 * linear_input."Feature_71" + -0.18801505110138564 * linear_input."Feature_72" + -0.13527738354171742 * linear_input."Feature_73" + 0.4437564557278667 * linear_input."Feature_74" + -0.06470324630788908 * linear_input."Feature_75" + -0.013940970569427587 * linear_input."Feature_76" + 0.2946397833976092 * linear_input."Feature_77" + -0.07829878854788642 * linear_input."Feature_78" + 0.1033817009405227 * linear_input."Feature_79" + -0.016717690788818778 * linear_input."Feature_80" + -0.2349432472531133 * linear_input."Feature_81" + 0.34047416283354 * linear_input."Feature_82" + -0.0722833660683429 * linear_input."Feature_83" + -0.005420462249320335 * linear_input."Feature_84" + -0.06673028098816311 * linear_input."Feature_85" + -0.2700633553214452 * linear_input."Feature_86" + 0.41007552362906813 * linear_input."Feature_87" + -0.0427613521388969 * linear_input."Feature_88" + -0.27584673854062025 * linear_input."Feature_89" + 0.23072627960745498 * linear_input."Feature_90" + 0.07223602970623365 * linear_input."Feature_91" + 0.22886209667507446 * linear_input."Feature_92" + -0.0004850652465075572 * linear_input."Feature_93" + 0.15297081957124947 * linear_input."Feature_94" + 0.04572176355842226 * linear_input."Feature_95" + -0.027293785086123262 * linear_input."Feature_96" + -0.005351263053705391 * linear_input."Feature_97" + -0.0444801100601053 * linear_input."Feature_98" + -0.05739904321297793 * linear_input."Feature_99" + -0.6674166826671414 AS "Score_1", -0.039230390885086786 * linear_input."Feature_0" + -0.03392133983933693 * linear_input."Feature_1" + -0.2113984871498355 * linear_input."Feature_2" + -0.18883753592463 * linear_input."Feature_3" + 0.1519983829398719 * linear_input."Feature_4" + 0.0645733394517741 * linear_input."Feature_5" + -0.0803479905379938 * linear_input."Feature_6" + -0.18522036053213736 * linear_input."Feature_7" + 0.04998109974233769 * linear_input."Feature_8" + -0.011152765551341925 * linear_input."Feature_9" + -0.26056160866306893 * linear_input."Feature_10" + 0.09475264079222251 * linear_input."Feature_11" + -0.1451775754620387 * linear_input."Feature_12" + -0.08631496133273575 * linear_input."Feature_13" + 0.026976594942264148 * linear_input."Feature_14" + -0.2659943689145525 * linear_input."Feature_15" + -0.17577690908269944 * linear_input."Feature_16" + -0.002963193432543476 * linear_input."Feature_17" + -0.03157333866438876 * linear_input."Feature_18" + -0.08301523720614445 * linear_input."Feature_19" + 0.05154133913749201 * linear_input."Feature_20" + -0.0402932011374407 * linear_input."Feature_21" + -0.01925329111494809 * linear_input."Feature_22" + -0.07680765725177709 * linear_input."Feature_23" + 0.08422704747505952 * linear_input."Feature_24" + 0.0559146747626006 * linear_input."Feature_25" + -0.038515322888800274 * linear_input."Feature_26" + 0.05706647325650299 * linear_input."Feature_27" + 0.0750066487410277 * linear_input."Feature_28" + 0.11866355746936585 * linear_input."Feature_29" + 0.1339022605829621 * linear_input."Feature_30" + -0.12429200784543992 * linear_input."Feature_31" + 0.02390780656919761 * linear_input."Feature_32" + 0.039015035332670395 * linear_input."Feature_33" + -0.07566191147856999 * linear_input."Feature_34" + -0.06172837992038222 * linear_input."Feature_35" + -0.04929282469441337 * linear_input."Feature_36" + -0.2897111777706595 * linear_input."Feature_37" + 0.2716486017522178 * linear_input."Feature_38" + 0.013212052869930824 * linear_input."Feature_39" + 0.09134088633614379 * linear_input."Feature_40" + -0.041940905635126674 * linear_input."Feature_41" + -0.15464105884183646 * linear_input."Feature_42" + -0.01431907058327872 * linear_input."Feature_43" + -0.18579723528858633 * linear_input."Feature_44" + -0.03792094795603092 * linear_input."Feature_45" + 0.15822228240937708 * linear_input."Feature_46" + 0.014387277288256103 * linear_input."Feature_47" + 0.044210031243963194 * linear_input."Feature_48" + -0.13572603779756492 * linear_input."Feature_49" + 0.07307693145402755 * linear_input."Feature_50" + -0.19660801350265403 * linear_input."Feature_51" + 0.024624987358757806 * linear_input."Feature_52" + 0.17526901503906928 * linear_input."Feature_53" + -0.004341105700139597 * linear_input."Feature_54" + 0.14388938384000685 * linear_input."Feature_55" + -0.09589199447992536 * linear_input."Feature_56" + -0.1203889953025509 * linear_input."Feature_57" + -0.04244333355015839 * linear_input."Feature_58" + -0.1698148482928159 * linear_input."Feature_59" + -0.051858356095228236 * linear_input."Feature_60" + -0.16877840391893698 * linear_input."Feature_61" + 0.1471401237354718 * linear_input."Feature_62" + -0.2209771561442238 * linear_input."Feature_63" + -0.2687785939831053 * linear_input."Feature_64" + -0.27051133031148056 * linear_input."Feature_65" + 0.029580931117151044 * linear_input."Feature_66" + 0.033691326340655844 * linear_input."Feature_67" + -0.1327118446404009 * linear_input."Feature_68" + -0.04310331226107449 * linear_input."Feature_69" + 0.02733714398313508 * linear_input."Feature_70" + 0.13427395227586783 * linear_input."Feature_71" + 0.2283095847472418 * linear_input."Feature_72" + -0.12354909049066823 * linear_input."Feature_73" + 0.013774741222151887 * linear_input."Feature_74" + -0.06341432691406657 * linear_input."Feature_75" + 0.08663608069614369 * linear_input."Feature_76" + -0.034346456699981695 * linear_input."Feature_77" + -0.04937678565689896 * linear_input."Feature_78" + 0.1990748259597714 * linear_input."Feature_79" + -0.12780634990641543 * linear_input."Feature_80" + 0.17844199759847582 * linear_input."Feature_81" + -0.22520883832658364 * linear_input."Feature_82" + 0.11650753891282678 * linear_input."Feature_83" + -0.15250512112802034 * linear_input."Feature_84" + 0.15037261877398683 * linear_input."Feature_85" + 0.11275640190831425 * linear_input."Feature_86" + -0.20385242481237242 * linear_input."Feature_87" + 0.08702790021968271 * linear_input."Feature_88" + 0.08776226051851249 * linear_input."Feature_89" + 0.0435589679562688 * linear_input."Feature_90" + 0.08815857158417889 * linear_input."Feature_91" + 0.09250517170739805 * linear_input."Feature_92" + 0.042793390503506 * linear_input."Feature_93" + 0.07273511882895246 * linear_input."Feature_94" + -0.008211274289240678 * linear_input."Feature_95" + -0.022568651295469894 * linear_input."Feature_96" + 0.16071309751855747 * linear_input."Feature_97" + -0.11564385003249371 * linear_input."Feature_98" + 0.042016349620615526 * linear_input."Feature_99" + -0.693234462761408 AS "Score_2", 0.08880369436265585 * linear_input."Feature_0" + -0.16725606460966802 * linear_input."Feature_1" + -0.025186629313900283 * linear_input."Feature_2" + 0.0005195720497857895 * linear_input."Feature_3" + -0.05251444454113663 * linear_input."Feature_4" + -0.022040866690239247 * linear_input."Feature_5" + -0.10081522780434754 * linear_input."Feature_6" + 0.0716715271424389 * linear_input."Feature_7" + 0.05680038873428535 * linear_input."Feature_8" + -0.06568961517466368 * linear_input."Feature_9" + 0.010530583784419956 * linear_input."Feature_10" + 0.12055480915567582 * linear_input."Feature_11" + -0.07359981882685926 * linear_input."Feature_12" + 0.09370402657118235 * linear_input."Feature_13" + 0.008112583796280298 * linear_input."Feature_14" + 0.09606052858213737 * linear_input."Feature_15" + 0.08472529550742129 * linear_input."Feature_16" + 0.16445555336627604 * linear_input."Feature_17" + -0.023433603534958075 * linear_input."Feature_18" + -0.007113447603046108 * linear_input."Feature_19" + 0.24622589099209752 * linear_input."Feature_20" + 0.10239812188037961 * linear_input."Feature_21" + 0.012268416677570004 * linear_input."Feature_22" + 0.07092291459369982 * linear_input."Feature_23" + 0.10080658882008256 * linear_input."Feature_24" + 0.09996469367947425 * linear_input."Feature_25" + 0.062190028884484924 * linear_input."Feature_26" + -0.0459042027553328 * linear_input."Feature_27" + 0.03105173504151 * linear_input."Feature_28" + 0.010744680601341261 * linear_input."Feature_29" + -0.3370333484370871 * linear_input."Feature_30" + -0.03832318639819032 * linear_input."Feature_31" + 0.17042710161734126 * linear_input."Feature_32" + 0.016498432829455317 * linear_input."Feature_33" + 0.11710397885214954 * linear_input."Feature_34" + 0.05103568118279883 * linear_input."Feature_35" + 0.19528278721393885 * linear_input."Feature_36" + -0.22081409917537903 * linear_input."Feature_37" + 0.04980309579956822 * linear_input."Feature_38" + 0.029329851223520054 * linear_input."Feature_39" + -0.15814594463252385 * linear_input."Feature_40" + 0.17788504332874877 * linear_input."Feature_41" + 0.10988550915786943 * linear_input."Feature_42" + 0.18130879397600813 * linear_input."Feature_43" + 0.16941946514594247 * linear_input."Feature_44" + -0.1556585930178221 * linear_input."Feature_45" + 0.07728780873760968 * linear_input."Feature_46" + 0.10884907567981653 * linear_input."Feature_47" + -0.039448652784047994 * linear_input."Feature_48" + -0.0059765122859782305 * linear_input."Feature_49" + -0.021881119044501407 * linear_input."Feature_50" + 0.13961779751762216 * linear_input."Feature_51" + 0.004694658603177054 * linear_input."Feature_52" + -0.03396432610546529 * linear_input."Feature_53" + -0.06178909725302542 * linear_input."Feature_54" + -0.20513437244395263 * linear_input."Feature_55" + 0.030506985125343555 * linear_input."Feature_56" + -0.14938336859299614 * linear_input."Feature_57" + -0.0039569573285243576 * linear_input."Feature_58" + 0.045322942441202996 * linear_input."Feature_59" + -0.039352468281022485 * linear_input."Feature_60" + -0.07449933467656525 * linear_input."Feature_61" + -0.10488183799551973 * linear_input."Feature_62" + 0.09449671564773704 * linear_input."Feature_63" + -0.04302297441123628 * linear_input."Feature_64" + 0.2168203959515227 * linear_input."Feature_65" + 0.05345636196979994 * linear_input."Feature_66" + 0.11678439361164708 * linear_input."Feature_67" + -0.14660817510729343 * linear_input."Feature_68" + 0.08168350377461982 * linear_input."Feature_69" + -0.1354839595523028 * linear_input."Feature_70" + -0.16542932928137433 * linear_input."Feature_71" + -0.19142344917651932 * linear_input."Feature_72" + 0.16564641698674826 * linear_input."Feature_73" + -0.30675131104178865 * linear_input."Feature_74" + 0.036185837533070586 * linear_input."Feature_75" + -0.25118228610208815 * linear_input."Feature_76" + -0.0828420378749529 * linear_input."Feature_77" + -0.08720976268023645 * linear_input."Feature_78" + -0.10516306643236362 * linear_input."Feature_79" + 0.13364756496849622 * linear_input."Feature_80" + -0.048692211174715005 * linear_input."Feature_81" + 0.08151063318603108 * linear_input."Feature_82" + -0.03379317941802837 * linear_input."Feature_83" + 0.14937016760575822 * linear_input."Feature_84" + -0.24422428313077466 * linear_input."Feature_85" + -0.15977551189518266 * linear_input."Feature_86" + -0.17204881282142817 * linear_input."Feature_87" + -0.0585979489657702 * linear_input."Feature_88" + 0.2526169981416256 * linear_input."Feature_89" + -0.09178120758684832 * linear_input."Feature_90" + -0.048337051421918686 * linear_input."Feature_91" + -0.055048145082200295 * linear_input."Feature_92" + -0.12331531964612874 * linear_input."Feature_93" + -0.10395420682198359 * linear_input."Feature_94" + -0.19318081391591296 * linear_input."Feature_95" + 0.08577384345694661 * linear_input."Feature_96" + -0.16981843983981879 * linear_input."Feature_97" + 0.13975397136927353 * linear_input."Feature_98" + -0.06127083457477607 * linear_input."Feature_99" + -0.42169183320956216 AS "Score_3" 
FROM linear_input), 
linear_model_cte_logistic AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3" 
FROM linear_model_cte), 
orig_cte AS 
(SELECT linear_model_cte_logistic."KEY" AS "KEY", linear_model_cte_logistic."Score_0" AS "Score_0", linear_model_cte_logistic."Score_1" AS "Score_1", linear_model_cte_logistic."Score_2" AS "Score_2", linear_model_cte_logistic."Score_3" AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM linear_model_cte_logistic), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", max(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_max."KEY" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0" WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1" WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2" WHEN (arg_max_cte."arg_max_Score" = 3) THEN arg_max_cte."Proba_3" END AS "DecisionProba" 
FROM arg_max_cte