-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 13.8597887324 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 19.5079577465 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 90.2345774648 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 631.54084507 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.0950171830986 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.103067887324 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.0864928380282 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.0468693521127 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.180978169014 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.0631552112676 ELSE `ADS`.`Feature_9` END AS impter_11, CASE WHEN (`ADS`.`Feature_10` IS NULL) THEN 0.412326056338 ELSE `ADS`.`Feature_10` END AS impter_12, CASE WHEN (`ADS`.`Feature_11` IS NULL) THEN 1.27143450704 ELSE `ADS`.`Feature_11` END AS impter_13, CASE WHEN (`ADS`.`Feature_12` IS NULL) THEN 2.98328169014 ELSE `ADS`.`Feature_12` END AS impter_14, CASE WHEN (`ADS`.`Feature_13` IS NULL) THEN 41.2231690141 ELSE `ADS`.`Feature_13` END AS impter_15, CASE WHEN (`ADS`.`Feature_14` IS NULL) THEN 0.00734775352113 ELSE `ADS`.`Feature_14` END AS impter_16, CASE WHEN (`ADS`.`Feature_15` IS NULL) THEN 0.0264921690141 ELSE `ADS`.`Feature_15` END AS impter_17, CASE WHEN (`ADS`.`Feature_16` IS NULL) THEN 0.032405528169 ELSE `ADS`.`Feature_16` END AS impter_18, CASE WHEN (`ADS`.`Feature_17` IS NULL) THEN 0.0118757676056 ELSE `ADS`.`Feature_17` END AS impter_19, CASE WHEN (`ADS`.`Feature_18` IS NULL) THEN 0.0213508450704 ELSE `ADS`.`Feature_18` END AS impter_20, CASE WHEN (`ADS`.`Feature_19` IS NULL) THEN 0.00392323450704 ELSE `ADS`.`Feature_19` END AS impter_21, CASE WHEN (`ADS`.`Feature_20` IS NULL) THEN 15.8818169014 ELSE `ADS`.`Feature_20` END AS impter_22, CASE WHEN (`ADS`.`Feature_21` IS NULL) THEN 25.8104225352 ELSE `ADS`.`Feature_21` END AS impter_23, CASE WHEN (`ADS`.`Feature_22` IS NULL) THEN 105.106619718 ELSE `ADS`.`Feature_22` END AS impter_24, CASE WHEN (`ADS`.`Feature_23` IS NULL) THEN 837.940140845 ELSE `ADS`.`Feature_23` END AS impter_25, CASE WHEN (`ADS`.`Feature_24` IS NULL) THEN 0.130144507042 ELSE `ADS`.`Feature_24` END AS impter_26, CASE WHEN (`ADS`.`Feature_25` IS NULL) THEN 0.248377464789 ELSE `ADS`.`Feature_25` END AS impter_27, CASE WHEN (`ADS`.`Feature_26` IS NULL) THEN 0.259110753521 ELSE `ADS`.`Feature_26` END AS impter_28, CASE WHEN (`ADS`.`Feature_27` IS NULL) THEN 0.109523584507 ELSE `ADS`.`Feature_27` END AS impter_29, CASE WHEN (`ADS`.`Feature_28` IS NULL) THEN 0.286747183099 ELSE `ADS`.`Feature_28` END AS impter_30, CASE WHEN (`ADS`.`Feature_29` IS NULL) THEN 0.0836747887324 ELSE `ADS`.`Feature_29` END AS impter_31 
FROM `BreastCancer` AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 13.8597887324) / 3.48110212803 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - 19.5079577465) / 4.43362115357 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 90.2345774648) / 24.1038025643 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 631.54084507) / 344.884606371 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - 0.0950171830986) / 0.013946197592 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - 0.103067887324) / 0.051633665263 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - 0.0864928380282) / 0.0758957535964 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.0468693521127) / 0.0384321726563 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 0.180978169014) / 0.0276998070777 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.0631552112676) / 0.00648056962788 AS scaler_11, (CAST(`ADS_imp_1_OUT`.impter_12 AS DOUBLE) - 0.412326056338) / 0.320867363603 AS scaler_12, (CAST(`ADS_imp_1_OUT`.impter_13 AS DOUBLE) - 1.27143450704) / 0.550314789435 AS scaler_13, (CAST(`ADS_imp_1_OUT`.impter_14 AS DOUBLE) - 2.98328169014) / 2.45069631007 AS scaler_14, (CAST(`ADS_imp_1_OUT`.impter_15 AS DOUBLE) - 41.2231690141) / 52.9190319751 AS scaler_15, (CAST(`ADS_imp_1_OUT`.impter_16 AS DOUBLE) - 0.00734775352113) / 0.00276275575882 AS scaler_16, (CAST(`ADS_imp_1_OUT`.impter_17 AS DOUBLE) - 0.0264921690141) / 0.0174086380412 AS scaler_17, (CAST(`ADS_imp_1_OUT`.impter_18 AS DOUBLE) - 0.032405528169) / 0.0245629776833 AS scaler_18, (CAST(`ADS_imp_1_OUT`.impter_19 AS DOUBLE) - 0.0118757676056) / 0.00653221319467 AS scaler_19, (CAST(`ADS_imp_1_OUT`.impter_20 AS DOUBLE) - 0.0213508450704) / 0.00782019780134 AS scaler_20, (CAST(`ADS_imp_1_OUT`.impter_21 AS DOUBLE) - 0.00392323450704) / 0.00195872778537 AS scaler_21, (CAST(`ADS_imp_1_OUT`.impter_22 AS DOUBLE) - 15.8818169014) / 4.65228595124 AS scaler_22, (CAST(`ADS_imp_1_OUT`.impter_23 AS DOUBLE) - 25.8104225352) / 6.24340698716 AS scaler_23, (CAST(`ADS_imp_1_OUT`.impter_24 AS DOUBLE) - 105.106619718) / 33.2876907395 AS scaler_24, (CAST(`ADS_imp_1_OUT`.impter_25 AS DOUBLE) - 837.940140845) / 516.877799198 AS scaler_25, (CAST(`ADS_imp_1_OUT`.impter_26 AS DOUBLE) - 0.130144507042) / 0.0225481406303 AS scaler_26, (CAST(`ADS_imp_1_OUT`.impter_27 AS DOUBLE) - 0.248377464789) / 0.152062558695 AS scaler_27, (CAST(`ADS_imp_1_OUT`.impter_28 AS DOUBLE) - 0.259110753521) / 0.192531701725 AS scaler_28, (CAST(`ADS_imp_1_OUT`.impter_29 AS DOUBLE) - 0.109523584507) / 0.0679243013098 AS scaler_29, (CAST(`ADS_imp_1_OUT`.impter_30 AS DOUBLE) - 0.286747183099) / 0.0597538503605 AS scaler_30, (CAST(`ADS_imp_1_OUT`.impter_31 AS DOUBLE) - 0.0836747887324) / 0.0156791725456 AS scaler_31 
FROM `ADS_imp_1_OUT`), 
`SV_data` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3, `Values`.sv_4 AS sv_4, `Values`.sv_5 AS sv_5, `Values`.sv_6 AS sv_6, `Values`.sv_7 AS sv_7, `Values`.sv_8 AS sv_8, `Values`.sv_9 AS sv_9, `Values`.sv_10 AS sv_10, `Values`.sv_11 AS sv_11, `Values`.sv_12 AS sv_12, `Values`.sv_13 AS sv_13, `Values`.sv_14 AS sv_14, `Values`.sv_15 AS sv_15, `Values`.sv_16 AS sv_16, `Values`.sv_17 AS sv_17, `Values`.sv_18 AS sv_18, `Values`.sv_19 AS sv_19, `Values`.sv_20 AS sv_20, `Values`.sv_21 AS sv_21, `Values`.sv_22 AS sv_22, `Values`.sv_23 AS sv_23, `Values`.sv_24 AS sv_24, `Values`.sv_25 AS sv_25, `Values`.sv_26 AS sv_26, `Values`.sv_27 AS sv_27, `Values`.sv_28 AS sv_28, `Values`.sv_29 AS sv_29 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 0.502775041706 AS sv_0, -0.0288607758865 AS sv_1, 0.405140330416 AS sv_2, 0.368410629475 AS sv_3, -1.19152069866 AS sv_4, -0.908474869738 AS sv_5, -0.585050360845 AS sv_6, -0.478748684786 AS sv_7, -0.948676968774 AS sv_8, -1.34636486738 AS sv_9, -0.568852046181 AS sv_10, -0.495415555381 AS sv_11, -0.591375473243 AS sv_12, -0.359854825444 AS sv_13, -1.63668232586 AS sv_14, -0.998766760094 AS sv_15, -0.785553299676 AS sv_16, -1.02595665602 AS sv_17, -1.43485438035 AS sv_18, -1.31628015199 AS sv_19, 0.435954092214 AS sv_20, 0.938522424829 AS sv_21, 0.32424539047 AS sv_22, 0.291480615706 AS sv_23, -0.964359208095 AS sv_24, -0.445063304007 AS sv_25, -0.171975592718 AS sv_26, -0.351031722775 AS sv_27, -0.308719571832 AS sv_28, -0.981224531308 AS sv_29 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, 0.287326033773 AS sv_0, 0.834992915562 AS sv_1, 0.421735222402 AS sv_2, 0.115572438413 AS sv_3, 0.672786746314 AS sv_4, 1.83857009167 AS sv_5, 1.09633488079 AS sv_6, 1.09050946097 AS sv_7, -0.262751613889 AS sv_8, 0.550073363467 AS sv_9, -0.413647729229 AS sv_10, -0.561922944792 AS sv_11, 0.247977812413 AS sv_12, -0.302786510184 AS sv_13, 0.265404017902 AS sv_14, 1.42043455251 AS sv_15, 0.940621781644 AS sv_16, 1.06460585212 AS sv_17, 0.524175351278 AS sv_18, 0.198478571582 AS sv_19, 0.0425990793921 AS sv_20, 0.315465172916 AS sv_21, 0.40535645405 AS sv_22, -0.103003342236 AS sv_23, 0.064550464786 AS sv_24, 1.42324670233 AS sv_25, 1.03769532336 AS sv_26, 0.930100336326 AS sv_27, 0.221790174548 AS sv_28, 0.212716025536 AS sv_29 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, 0.646407713662 AS sv_0, -0.328841300593 AS sv_1, 0.616725203234 AS sv_2, 0.526144546835 AS sv_3, 0.157234033645 AS sv_4, 0.205914351071 AS sv_5, 0.105106828694 AS sv_6, 0.326826380586 AS sv_7, 0.184904933509 AS sv_8, -0.104190110805 AS sv_9, 0.911822069958 AS sv_10, 0.110056088116 AS sv_11, 0.632358364231 AS sv_12, 0.620888738127 AS sv_13, -0.20912218508 AS sv_14, -0.408542529131 AS sv_15, -0.0706562612802 AS sv_16, -0.031500442423 AS sv_17, -0.332580471299 AS sv_18, -0.249771566369 AS sv_19, 0.867999762034 AS sv_20, -0.0865589150799 AS sv_21, 0.717784254506 AS sv_22, 0.76431965112 AS sv_23, 0.0556805538129 AS sv_24, -0.162942574433 AS sv_25, 0.109536488225 AS sv_26, 0.177792266686 AS sv_27, -0.126304548628 AS sv_28, -0.1336032706 AS sv_29 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, -0.132081368338 AS sv_0, 0.228265388148 AS sv_1, -0.0661546019775 AS sv_2, -0.21700256749 AS sv_3, 1.11735236781 AS sv_4, 0.848905698497 AS sv_5, 0.764300494074 AS sv_6, 0.906809203813 AS sv_7, 1.10548896243 AS sv_8, 1.55770083682 AS sv_9, -0.067710396265 AS sv_10, -0.619344625268 AS sv_11, 0.0447702595415 AS sv_12, -0.142730672353 AS sv_13, -0.699936472832 AS sv_14, -0.220704744678 AS sv_15, 0.0860836930378 AS sv_16, 0.224155634657 AS sv_17, -0.549966277028 AS sv_18, 0.0417441839384 AS sv_19, 0.113531950557 AS sv_20, 0.616582816514 AS sv_21, 0.246138440356 AS sv_22, 0.0124978460382 AS sv_23, 1.20876898032 AS sv_24, 0.90240843235 AS sv_25, 1.30622252972 AS sv_26, 1.40710193038 AS sv_27, 1.20080658348 AS sv_28, 1.73639337078 AS sv_29 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.433831359168 AS sv_0, 0.733495745549 AS sv_1, 0.413437776409 AS sv_2, 0.280265205068 AS sv_3, -0.216344496676 AS sv_4, 0.010305537547 AS sv_5, 0.338716736493 AS sv_6, 0.727532323955 AS sv_7, -0.334954282825 AS sv_8, -0.337194319802 AS sv_9, -0.30986652934 AS sv_10, -0.781615386865 AS sv_11, -0.37062188669 AS sv_12, -0.222664107303 AS sv_13, 0.917289366163 AS sv_14, -0.117882226583 AS sv_15, 0.525362681893 AS sv_16, 0.880900886557 AS sv_17, 0.429548588784 AS sv_18, -0.909383386678 AS sv_19, 0.117830912445 AS sv_20, 0.00473739175574 AS sv_21, 0.0718998593329 AS sv_22, -0.0136205131193 AS sv_23, -0.197111908921 AS sv_24, -0.320114729138 AS sv_25, 0.132389867489 AS sv_26, 0.560571323646 AS sv_27, -0.521258176848 AS sv_28, -0.981862320067 AS sv_29 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 0.0287872242525 AS sv_0, -0.55439056729 AS sv_1, 0.0495947696228 AS sv_2, -0.0844944788259 AS sv_3, 1.04564823531 AS sv_4, 0.48092872256 AS sv_5, 0.15016863832 AS sv_6, 0.145467911411 AS sv_7, 0.354581205507 AS sv_8, -0.286272870154 AS sv_9, 0.0394990114285 AS sv_10, -0.838855353162 AS sv_11, -0.171494806768 AS sv_12, -0.103614310569 AS sv_13, -0.360782352165 AS sv_14, 0.0171082301332 AS sv_15, -0.0494861895282 AS sv_16, 0.236402632361 AS sv_17, -0.0934560849979 AS sv_18, -0.627057274734 AS sv_19, 0.109232988668 AS sv_20, -0.599099585034 AS sv_21, 0.0899245401284 AS sv_22, -0.0231005101469 AS sv_23, 0.933801740151 AS sv_24, 0.511779729863 AS sv_25, 0.320930246423 AS sv_26, 0.410404155146 AS sv_27, 0.33559037251 AS sv_28, -0.261798811158 AS sv_29 UNION ALL SELECT 6 AS sv_idx, -0.73970421249 AS dual_coeff, -0.246987505902 AS sv_0, 0.521479434854 AS sv_1, -0.113450044137 AS sv_2, -0.323994875405 AS sv_3, 2.31481138055 AS sv_4, 1.74560748723 AS sv_5, 1.30978555797 AS sv_6, 1.21410382662 AS sv_7, 1.95026018898 AS sv_8, 1.65645758765 AS sv_9, -0.330435776165 AS sv_10, -0.489600701662 AS sv_11, -0.23555823207 AS sv_12, -0.319415688141 AS sv_13, -0.585195964559 AS sv_14, 0.489862042379 AS sv_15, 0.127202486249 AS sv_16, 0.0588211656471 AS sv_17, 0.0101218577315 AS sv_18, -0.0889528950084 AS sv_19, -0.0842202963264 AS sv_20, 0.78796360303 AS sv_21, 0.032846384276 AS sv_22, -0.190838416736 AS sv_23, 1.78087823808 AS sv_24, 1.91843763326 AS sv_25, 1.45373070498 AS sv_26, 1.42035197466 AS sv_27, 2.52791771559 AS sv_28, 1.50041152995 AS sv_29 UNION ALL SELECT 7 AS sv_idx, -0.760667876581 AS dual_coeff, -0.0257931910906 AS sv_0, 0.627487590201 AS sv_1, 0.0164049856514 AS sv_2, -0.123638006112 AS sv_3, 1.7913712133 AS sv_4, 0.457688071449 AS sv_5, 0.685244687712 AS sv_6, 0.478522202004 AS sv_7, 0.0874313304466 AS sv_8, 0.866403580981 AS sv_9, 0.644421861234 AS sv_10, 1.52742668214 AS sv_11, 0.784560005237 AS sv_12, 0.160184921559 AS sv_13, 2.33543861352 AS sv_14, 0.401400211169 AS sv_15, 0.579916328331 AS sv_16, 1.33557067633 AS sv_17, 0.70831391613 AS sv_18, 0.195415358794 AS sv_19, 0.109232988668 AS sv_20, 1.31331778973 AS sv_21, 0.195068511436 AS sv_22, -0.0600531516215 AS sv_23, 1.93166672463 AS sv_24, 0.419712358906 AS sv_25, 0.632567236397 AS sv_26, 0.85060007065 AS sv_27, 0.355672760386 AS sv_28, 0.615798521223 AS sv_29 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, -0.0114299238951 AS sv_0, 1.12369597693 AS sv_1, 0.0869332765906 AS sv_2, -0.103341362334 AS sv_3, 1.5188955098 AS sv_4, 1.2594905348 AS sv_5, 0.648351978076 AS sv_6, 0.539148490839 AS sv_7, 1.67950018047 AS sv_8, 1.42191030442 AS sv_9, 0.195638294145 AS sv_10, 0.466215878408 AS sv_11, -0.00378736855428 AS sv_12, -0.0410659253009 AS sv_13, 0.844173963415 AS sv_14, 0.693209368667 AS sv_15, 0.0958544953849 AS sv_16, 0.655862303738 AS sv_17, 0.382235207537 AS sv_18, 1.5682452232 AS sv_19, 0.0275527127814 AS sv_20, 1.14193700322 AS sv_21, 0.0268381573441 AS sv_22, -0.096618854442 AS sv_23, 2.18445918736 AS sv_24, 0.974747080958 AS sv_25, 0.410266183549 AS sv_26, 0.626821545043 AS sv_27, 1.3112597168 AS sv_28, 2.20835705244 AS sv_29 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, 0.689497515249 AS sv_0, 0.535012390855 AS sv_1, 0.716294555148 AS sv_2, 0.566157930283 AS sv_3, 1.54040674955 AS sv_4, 0.488675606264 AS sv_5, 1.23072975161 AS sv_6, 0.857111258889 AS sv_7, 0.213786001083 AS sv_8, 0.334042971019 AS sv_9, 0.493269062596 AS sv_10, 0.337198811517 AS sv_11, -0.00909198338828 AS sv_12, 0.311737202481 AS sv_13, 1.16269651004 AS sv_14, 0.635766621128 AS sv_15, 1.05787140981 AS sv_16, -0.00241382287502 AS sv_17, 2.41287438105 AS sv_18, 1.15573256777 AS sv_19, 0.397263435215 AS sv_20, -0.0961690526415 AS sv_21, 0.25815489422 AS sv_22, 0.265555725875 AS sv_23, 0.552395568307 AS sv_24, -0.241857463825 AS sv_25, 0.391048569167 AS sv_26, -0.0710141203373 AS sv_27, -0.220022358714 AS sv_28, -0.264349966194 AS sv_29 UNION ALL SELECT 10 AS sv_idx, -0.993393305924 AS dual_coeff, 1.06581511577 AS sv_0, -1.00548910068 AS sv_1, 1.02744877988 AS sv_2, 0.938166415526 AS sv_3, 0.247581240594 AS sv_4, 0.244648769591 AS sv_5, 0.161499970565 AS sv_6, 0.849825696282 AS sv_7, -0.255531346996 AS sv_8, -0.25695445975 AS sv_9, 0.585830673308 AS sv_10, -0.815777652465 AS sv_11, 0.682140134211 AS sv_12, 0.375608363268 AS sv_13, -0.622839538251 AS sv_14, 0.220455556421 AS sv_15, 0.067763438637 AS sv_16, 0.254773128918 AS sv_17, -0.268643469614 AS sv_18, -0.0925266432608 AS sv_19, 0.887345090534 AS sv_20, -1.0075304314 AS sv_21, 0.895026948995 AS sv_22, 0.752711491494 AS sv_23, -0.205981819894 AS sv_24, 0.215848894645 AS sv_25, -0.0530341415447 AS sv_26, 0.531126780803 AS sv_27, -0.186551712255 AS sv_28, -0.286034784 AS sv_29 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, -0.0717556461165 AS sv_0, 1.16880583027 AS sv_1, -0.102663364346 AS sv_2, -0.170900190909 AS sv_3, -0.174756099826 AS sv_4, -0.473487349763 AS sv_5, -0.443276948103 AS sv_6, -0.416821402628 AS sv_7, -0.176108411167 AS sv_8, -0.286272870154 AS sv_9, -0.565112183122 AS sv_10, -0.4841492763 AS sv_11, -0.50242116295 AS sv_12, -0.404262289305 AS sv_13, -1.1798920374 AS sv_14, -0.847405120329 AS sv_15, -0.588101668912 AS sv_16, -0.764789429976 AS sv_17, -1.0384449699 AS sv_18, -1.25501589624 AS sv_19, 0.216707035887 AS sv_20, 1.57439319349 AS sv_21, 0.24313432689 AS sv_22, 0.0208170271031 AS sv_23, 0.751968565202 AS sv_24, 0.26319782828 AS sv_25, 0.625815101614 AS sv_26, 0.34415393375 AS sv_27, 1.00835036634 AS sv_28, -0.298152770421 AS sv_29 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 0.0345325311308 AS sv_0, 0.0252710481207 AS sv_1, 0.0367337283338 AS sv_2, -0.092903088391 AS sv_3, 0.787513358313 AS sv_4, 0.198167467367 AS sv_5, 0.343987123584 AS sv_6, 0.462129686139 AS sv_7, -0.508240688269 AS sv_8, 0.3525598618 AS sv_9, -0.596901019124 AS sv_10, -0.578095506698 AS sv_11, -0.563628257188 AS sv_12, -0.422781146575 AS sv_13, -0.736132216766 AS sv_14, -0.492983368013 AS sv_15, -0.429733247536 AS sv_16, -0.353443394578 AS sv_17, -1.16631897327 AS sv_18, -0.549966419574 AS sv_19, 0.248949250053 AS sv_20, 0.799175430185 AS sv_21, 0.264163121152 AS sv_22, 0.0606717084842 AS sv_23, 1.38173224429 AS sv_24, 0.71301269781 AS sv_25, 0.767609932052 AS sv_26, 1.07732305054 AS sv_27, 0.521352460359 AS sv_28, 1.39198744092 AS sv_29 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 1.21232044117 AS sv_0, 0.525990420188 AS sv_1, 1.12701813179 AS sv_2, 1.13794338071 AS sv_3, -1.52781308009 AS sv_4, -0.322423117537 AS sv_5, 0.313682397811 AS sv_6, 0.283893600939 AS sv_7, -0.143617210146 AS sv_8, -1.50530151325 AS sv_9, 0.697714909826 AS sv_10, 0.0609932598617 AS sv_11, 0.542179912053 AS sv_12, 0.663973426469 AS sv_13, -0.657949409868 AS sv_14, 1.52038493323 AS sv_15, 1.16820005298 AS sv_16, 0.392551853093 AS sv_17, 0.00628563763043 AS sv_18, 0.568106247978 AS sv_19, 0.833608066924 AS sv_20, -0.177855221916 AS sv_21, 0.720788367972 AS sv_22, 0.754646184765 AS sv_23, -1.85933322528 AS sv_24, -0.342473947799 AS sv_25, -0.0291419723134 AS sv_26, -0.260784198961 AS sv_27, -0.834208721243 AS sv_28, -1.154065285 AS sv_29 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, -0.252732812781 AS sv_0, -0.0356272538874 AS sv_1, -0.23708198943 AS sv_2, -0.340812094535 AS sv_3, 0.0554141654962 AS sv_4, 0.182673699959 AS sv_5, -0.203210816117 AS sv_6, -0.451948222339 AS sv_7, -0.176108411167 AS sv_8, 0.346387564873 AS sv_9, -0.448553117781 AS sv_10, -1.28114766417 AS sv_11, -0.21148344167 AS sv_12, -0.388766918937 AS sv_13, -0.586643794317 AS sv_14, 0.347978455958 AS sv_15, 0.469180568397 AS sv_16, -0.31609005158 AS sv_17, 0.787595798219 AS sv_18, 0.331217792387 AS sv_19, -0.314214757375 AS sv_20, -0.618319860158 AS sv_21, -0.177141146992 AS sv_22, -0.393981210183 AS sv_23, -0.0596282888376 AS sv_24, 0.505861113158 AS sv_25, 0.44039109258 AS sv_26, -0.161114421437 AS sv_27, 1.21921543904 AS sv_28, 0.50928779847 AS sv_29 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 0.206891737478 AS sv_0, -1.31900258139 AS sv_1, 0.168248247321 AS sv_2, 0.0790384796132 AS sv_3, 0.236825620719 AS sv_4, -0.268969619979 AS sv_5, -0.0562987759617 AS sv_6, -0.087930290668 AS sv_7, -0.255531346996 AS sv_8, -1.04237924372 AS sv_9, 0.0130083147601 AS sv_10, -1.17702543976 AS sv_11, -0.172310901357 AS sv_12, -0.0777257039777 AS sv_13, -0.86679885237 AS sv_14, -0.48092039103 AS sv_15, -0.083683997743 AS sv_16, -0.494130780708 AS sv_17, -0.762237122621 AS sv_18, -0.838418957094 AS sv_19, 0.18876378361 AS sv_20, -1.37271565875 AS sv_21, 0.101940993992 AS sv_22, 0.0465484476065 AS sv_23, -0.347900395464 AS sv_24, -0.365490790538 AS sv_25, -0.0514759565949 AS sv_26, -0.26004808539 AS sv_27, -0.404110914241 AS sv_28, -0.841548793088 AS sv_29 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, -0.100482180508 AS sv_0, -0.139379916568 AS sv_1, -0.0885577061582 AS sv_2, -0.212943238735 AS sv_3, 0.780342945063 AS sv_4, 0.225281560331 AS sv_5, -0.00912881149917 AS sv_6, 0.180594731122 AS sv_7, -0.0136524060628 AS sv_8, -0.364969655974 AS sv_9, -0.619340197478 AS sv_10, 0.110056088116 AS sv_11, -0.599944466437 AS sv_12, -0.414466557597 AS sv_13, -0.68980166453 AS sv_14, -0.397628407098 AS sv_15, 0.0258304118974 AS sv_16, 0.274674500188 AS sv_17, -1.04867489017 AS sv_18, -0.744990967065 AS sv_19, -0.232534481489 AS sv_20, 0.222567176486 AS sv_21, -0.233618480151 AS sv_22, -0.314852255402 AS sv_23, 0.56126547928 AS sv_24, 0.0567038677058 AS sv_25, 0.439871697597 AS sv_26, 0.526710099376 AS sv_27, -0.337169621322 AS sv_28, -0.434639564847 AS sv_29 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, 0.316052568164 AS sv_0, -0.0920145705616 AS sv_1, 0.281923257423 AS sv_2, 0.161674814995 AS sv_3, -0.365489092274 AS sv_4, -0.0936963761782 AS sv_5, -0.356974359491 AS sv_6, 0.034363081659 AS sv_7, 0.249887335551 AS sv_8, -0.715247506587 AS sv_9, -0.388403653581 AS sv_10, -0.587726358171 AS sv_11, -0.331449346377 AS sv_12, -0.309022451918 AS sv_13, -0.729616982858 AS sv_14, -0.306868865987 AS sv_15, -0.693952027672 AS sv_16, -0.000882948161965 AS sv_17, -0.783975703194 AS sv_18, -0.565793018978 AS sv_19, 0.0791402554465 AS sv_20, 0.060796527532 AS sv_21, 0.119965674788 AS sv_22, -0.0544425411359 AS sv_23, 0.0512455983264 AS sv_24, 0.359210943706 AS sv_25, -0.408819705098 AS sv_26, 0.579710276494 AS sv_27, 0.158195946276 AS sv_28, 0.0666623997257 AS sv_29 UNION ALL SELECT 18 AS sv_idx, 0.125188893118 AS dual_coeff, -0.0688829926774 AS sv_0, 0.839503900896 AS sv_1, -0.126311085426 AS sv_2, -0.169160478585 AS sv_3, -0.183360595726 AS sv_4, -0.68943173301 AS sv_5, -0.747773562273 AS sv_6, -0.583868945254 AS sv_7, -0.526291355503 AS sv_8, -0.793944292407 AS sv_9, -0.206708639961 AS sv_10, 0.117324655265 AS sv_11, -0.374294312344 AS sv_12, -0.188649879665 AS sv_13, -0.535607795369 AS sv_14, -0.316059705593 AS sv_15, -0.496500396908 AS sv_16, -0.430446392645 AS sv_17, -0.0614875841555 AS sv_18, -0.684237246774 AS sv_19, -0.114313029548 AS sv_20, 0.525286509678 AS sv_21, -0.226108196486 AS sv_22, -0.20921800281 AS sv_23, -0.37894508387 AS sv_24, -0.635774286703 AS sv_25, -0.800962917481 AS sv_26, -0.556260186391 AS sv_27, -0.377334397073 AS sv_28, -0.902138725192 AS sv_29 UNION ALL SELECT 19 AS sv_idx, 0.368576501877 AS dual_coeff, -0.606069185792 AS sv_0, 0.151578637471 AS sv_1, -0.586404465729 AS sv_2, -0.613946929375 AS sv_3, 0.995455342561 AS sv_4, 0.213661234775 AS sv_5, -0.237995370917 AS sv_6, -0.246911674693 AS sv_7, 0.661442548482 AS sv_8, 0.212140106709 AS sv_9, 0.278850247209 AS sv_10, 0.766044273297 AS sv_11, 0.384673656212 AS sv_12, -0.0544826484249 AS sv_13, 0.754770475897 AS sv_14, -0.140284898124 AS sv_15, 0.377172179628 AS sv_16, -0.0544635631189 AS sv_17, 1.61366185999 AS sv_18, 0.580869634594 AS sv_19, -0.550657661257 AS sv_20, 0.0639999067192 AS sv_21, -0.486564833982 AS sv_22, -0.568877481875 AS sv_23, 0.250818595221 AS sv_24, -0.389165257355 AS sv_25, -0.329871667638 AS sv_26, -0.448051491442 AS sv_27, 0.502943604807 AS sv_28, -0.242665148388 AS sv_29 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, -0.623305106426 AS sv_0, 1.1124185136 AS sv_1, -0.575202913639 AS sv_2, -0.652800504607 AS sv_3, 2.0495060903 AS sv_4, 1.00965353535 AS sv_5, -0.5447318996 AS sv_6, -0.0405741337244 AS sv_7, 1.15964096414 AS sv_8, 1.68114677536 AS sv_9, -0.363471233187 AS sv_10, 1.28392968265 AS sv_11, -0.336753961211 AS sv_12, -0.383097880997 AS sv_13, 2.00243776932 AS sv_14, 0.485841050052 AS sv_15, -0.560010612164 AS sv_16, 0.885493510696 AS sv_17, -0.735383581914 AS sv_18, 0.970408194111 AS sv_19, -0.623740013366 AS sv_20, 1.0218102837 AS sv_21, -0.570379599681 AS sv_22, -0.677607243701 AS sv_23, 2.06915034471 AS sv_24, 0.504545865002 AS sv_25, -0.621252253263 AS sv_26, 0.313237163764 AS sv_27, -0.107895693076 AS sv_28, 1.0220699607 AS sv_29 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, -0.215388318072 AS sv_0, 0.683874906875 AS sv_1, -0.13336391452 AS sv_2, -0.296159478224 AS sv_3, 0.371629389818 AS sv_4, 0.87601979146 AS sv_5, 0.00734114815954 AS sv_6, 0.10799930372 AS sv_7, 0.145193465595 AS sv_8, 1.53455472334 AS sv_9, -0.683229524738 AS sv_10, -0.634426902102 AS sv_11, -0.608921506925 AS sv_12, -0.493833088753 AS sv_13, -0.758935535445 AS sv_14, 0.225050976224 AS sv_15, -0.290906430854 AS sv_16, -0.546792870837 AS sv_17, 0.484534410233 AS sv_18, 0.140277528613 AS sv_19, -0.286271505098 AS sv_20, 0.536498336834 AS sv_21, -0.169030040634 AS sv_22, -0.384307743829 AS sv_23, 0.210903995842 AS sv_24, 1.26147117908 AS sv_25, 0.296518682209 AS sv_26, 0.0452918238927 AS sv_27, 2.10953463485 AS sv_28, 1.52592308031 AS sv_29 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, 0.10347621367 AS sv_0, 1.88154151304 AS sv_1, 0.0960604671827 AS sv_2, -0.0221547872224 AS sv_3, -0.916893871193 AS sv_4, 0.0161157003249 AS sv_5, 0.313682397811 AS sv_6, -0.072578569461 AS sv_7, -1.68875432536 AS sv_8, -0.287815944386 AS sv_9, -0.239744096982 AS sv_10, 1.91266074102 AS sv_11, -0.358380467842 AS sv_12, -0.212837774874 AS sv_13, -0.376708479497 AS sv_14, 0.112463191048 AS sv_15, 0.248116165294 AS sv_16, -0.270316897659 AS sv_17, -1.21491109455 AS sv_18, -0.17063856935 AS sv_19, -0.0283337917725 AS sv_20, 2.35922109436 AS sv_21, -0.0783058139631 AS sv_22, -0.143051492944 AS sv_23, -0.977664074555 AS sv_24, -0.0379939995638 AS sv_25, 0.245617973846 AS sv_26, -0.402412450036 AS sv_27, -1.63583070394 AS sv_28, -0.364482801357 AS sv_29 UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, 0.290198687212 AS sv_0, 0.158345115472 AS sv_1, 0.244169878155 AS sv_2, 0.143117883541 AS sv_3, 0.0611504960961 AS sv_4, -0.379943729038 AS sv_5, -0.240498804785 AS sv_6, 0.0687093053764 AS sv_7, -1.16528497558 AS sv_8, -0.875727226691 AS sv_9, -0.561060664808 AS sv_10, 0.662467191427 AS sv_11, -0.566076540958 AS sv_12, -0.366279735109 AS sv_13, -0.699574515393 AS sv_14, -0.734242907677 AS sv_15, -0.442760983999 AS sv_16, -0.00700644701418 AS sv_17, -0.225166308469 AS sv_18, -1.07786009001 AS sv_19, 0.0275527127814 AS sv_20, 0.427583444468 AS sv_21, -0.0362482254402 AS sv_22, -0.105131504834 AS sv_23, -0.37894508387 AS sv_24, -0.720607792799 AS sv_25, -0.46283678336 AS sv_26, -0.115180934602 AS sv_27, -0.834208721243 AS sv_28, -1.12791594588 AS sv_29 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, -0.0918642201903 AS sv_0, -1.1611180947 AS sv_1, -0.115109533335 AS sv_2, -0.189167170309 AS sv_3, 0.198822430495 AS sv_4, -0.421776901039 AS sv_5, -0.261580353148 AS sv_6, 0.0244755324071 AS sv_7, 0.271548136232 AS sv_8, -0.847951890519 AS sv_9, -0.443878288957 AS sv_10, -0.877378759051 AS sv_11, -0.377558690704 AS sv_12, -0.333777250922 AS sv_13, 0.403309802292 AS sv_14, -0.683118862367 AS sv_15, -0.347495661115 AS sv_16, 0.195069015109 AS sv_17, -0.198312767761 AS sv_18, -0.828718783266 AS sv_19, -0.165900572213 AS sv_20, -1.04917436084 AS sv_21, -0.162420991009 AS sv_22, -0.245203297649 AS sv_23, 0.614484945119 AS sv_24, -0.467422522668 AS sv_25, -0.10445424489 AS sv_26, 0.283792620921 AS sv_27, 0.18329893112 AS sv_28, -0.706975364939 AS sv_29 UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, 0.16667458933 AS sv_0, -0.976167696013 AS sv_1, 0.154972333732 AS sv_2, 0.0248174455208 AS sv_3, 0.335777323568 AS sv_4, -0.0187452763427 AS sv_5, -0.0213824614852 AS sv_6, 0.219884729466 AS sv_7, -0.309683348697 AS sv_8, -0.361883507511 AS sv_9, -0.535193278649 AS sv_10, -0.966782134982 AS sv_11, -0.352259758418 AS sv_12, -0.378373682714 AS sv_13, -0.594244900543 AS sv_14, -0.202323065466 AS sv_15, -0.0515217733505 AS sv_16, 0.467564714033 AS sv_17, -0.870930025486 AS sv_18, -0.712316697329 AS sv_19, -0.00683898232867 AS sv_20, -0.954674674815 AS sv_21, 0.104945107458 AS sv_22, -0.137440882459 AS sv_23, 0.064550464786 AS sv_24, 0.165211840619 AS sv_25, 0.265874378195 AS sv_26, 0.74165526213 AS sv_27, -0.295331313248 AS sv_28, -0.436552931124 AS sv_29 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, -0.404983445054 AS sv_0, -0.698742097976 AS sv_1, -0.306365663471 AS sv_2, -0.448964210666 AS sv_3, 0.00880647937173 AS sv_4, 0.930247977388 AS sv_5, 0.894742574571 AS sv_6, 0.0413884456012 AS sv_7, 0.982744425244 AS sv_8, 1.55770083682 AS sv_9, -0.0630355674411 AS sv_10, -0.117086635284 AS sv_11, 0.824548640139 AS sv_12, -0.208491512454 AS sv_13, -0.0411739332236 AS sv_14, 2.7697646922 AS sv_15, 3.21599737822 AS sv_16, 2.34747886166 AS sv_17, 1.40266975443 AS sv_18, 2.91197456612 AS sv_19, -0.451781537815 AS sv_20, -0.76567530277 AS sv_21, -0.218898324168 AS sv_22, -0.497874238832 AS sv_23, -0.560778258818 AS sv_24, 1.03722136839 AS sv_25, 1.19714958323 AS sv_26, 0.363292886597 AS sv_27, 0.608376141153 AS sv_28, 1.25805180153 AS sv_29 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, -0.945042291607 AS sv_0, 0.160600608139 AS sv_1, -0.833253484017 AS sv_2, -0.85025785336 AS sv_3, -0.30740874495 AS sv_4, 1.21881939536 AS sv_5, 1.86449379928 AS sv_6, 0.326305983257 AS sv_7, 1.3654185706 AS sv_8, 3.29365934756 AS sv_9, -0.937540212755 AS sv_10, -0.0734752323915 AS sv_11, -0.253104265752 AS sv_12, -0.64239967636 AS sv_13, 0.416702227548 AS sv_14, 2.86856621797 AS sv_15, 4.92995895661 AS sv_16, 2.65059205485 AS sv_17, -0.662495399993 AS sv_18, 4.22558231663 AS sv_19, -1.08157945452 AS sv_20, -0.478972865514 AS sv_21, -0.859074903756 AS sv_22, -0.940338589893 AS sv_23, -0.702696834388 AS sv_24, 0.746551525802 AS sv_25, 1.78614349428 AS sv_26, 0.544376825082 AS sv_27, -0.452643351607 AS sv_28, 2.31678114147 AS sv_29 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, -0.399238138176 AS sv_0, -0.20478920391 AS sv_1, -0.379383188208 AS sv_2, -0.43388670386 AS sv_3, 0.332192116943 AS sv_4, 0.0529133979186 AS sv_5, -0.0848906259292 AS sv_6, -0.225315185538 AS sv_7, 0.415953474102 AS sv_8, 0.0886941681671 AS sv_9, -0.0505693572442 AS sv_10, -0.413280746599 AS sv_11, -0.198425928233 AS sv_12, -0.206601833141 AS sv_13, -0.14288397368 AS sv_14, -0.424052070966 AS sv_15, -0.219660997073 AS sv_16, -0.23051415512 AS sv_17, -0.451503294433 AS sv_18, -0.172170175744 AS sv_19, -0.195993305434 AS sv_20, -0.187465359477 AS sv_21, -0.272071132515 AS sv_22, -0.309628583571 AS sv_23, 0.552395568307 AS sv_24, -0.0695599553203 AS sv_25, 0.0414957454139 AS sv_26, -0.118125388886 AS sv_27, 0.24521962707 AS sv_28, 0.243967674727 AS sv_29) AS `Values`), 
kernel_dp AS 
(SELECT t.`KEY` AS `KEY`, t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.`KEY` AS `KEY`, sum(full_join_data_sv.dot_prod1) + 0.420508394913 AS dot_product 
FROM (SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, `SV_data`.dual_coeff * ((exp(0.03333333333333333 * (`ADS_sca_2_OUT`.scaler_2 * `SV_data`.sv_0 + `ADS_sca_2_OUT`.scaler_3 * `SV_data`.sv_1 + `ADS_sca_2_OUT`.scaler_4 * `SV_data`.sv_2 + `ADS_sca_2_OUT`.scaler_5 * `SV_data`.sv_3 + `ADS_sca_2_OUT`.scaler_6 * `SV_data`.sv_4 + `ADS_sca_2_OUT`.scaler_7 * `SV_data`.sv_5 + `ADS_sca_2_OUT`.scaler_8 * `SV_data`.sv_6 + `ADS_sca_2_OUT`.scaler_9 * `SV_data`.sv_7 + `ADS_sca_2_OUT`.scaler_10 * `SV_data`.sv_8 + `ADS_sca_2_OUT`.scaler_11 * `SV_data`.sv_9 + `ADS_sca_2_OUT`.scaler_12 * `SV_data`.sv_10 + `ADS_sca_2_OUT`.scaler_13 * `SV_data`.sv_11 + `ADS_sca_2_OUT`.scaler_14 * `SV_data`.sv_12 + `ADS_sca_2_OUT`.scaler_15 * `SV_data`.sv_13 + `ADS_sca_2_OUT`.scaler_16 * `SV_data`.sv_14 + `ADS_sca_2_OUT`.scaler_17 * `SV_data`.sv_15 + `ADS_sca_2_OUT`.scaler_18 * `SV_data`.sv_16 + `ADS_sca_2_OUT`.scaler_19 * `SV_data`.sv_17 + `ADS_sca_2_OUT`.scaler_20 * `SV_data`.sv_18 + `ADS_sca_2_OUT`.scaler_21 * `SV_data`.sv_19 + `ADS_sca_2_OUT`.scaler_22 * `SV_data`.sv_20 + `ADS_sca_2_OUT`.scaler_23 * `SV_data`.sv_21 + `ADS_sca_2_OUT`.scaler_24 * `SV_data`.sv_22 + `ADS_sca_2_OUT`.scaler_25 * `SV_data`.sv_23 + `ADS_sca_2_OUT`.scaler_26 * `SV_data`.sv_24 + `ADS_sca_2_OUT`.scaler_27 * `SV_data`.sv_25 + `ADS_sca_2_OUT`.scaler_28 * `SV_data`.sv_26 + `ADS_sca_2_OUT`.scaler_29 * `SV_data`.sv_27 + `ADS_sca_2_OUT`.scaler_30 * `SV_data`.sv_28 + `ADS_sca_2_OUT`.scaler_31 * `SV_data`.sv_29) + 0.0) - exp(-(0.03333333333333333 * (`ADS_sca_2_OUT`.scaler_2 * `SV_data`.sv_0 + `ADS_sca_2_OUT`.scaler_3 * `SV_data`.sv_1 + `ADS_sca_2_OUT`.scaler_4 * `SV_data`.sv_2 + `ADS_sca_2_OUT`.scaler_5 * `SV_data`.sv_3 + `ADS_sca_2_OUT`.scaler_6 * `SV_data`.sv_4 + `ADS_sca_2_OUT`.scaler_7 * `SV_data`.sv_5 + `ADS_sca_2_OUT`.scaler_8 * `SV_data`.sv_6 + `ADS_sca_2_OUT`.scaler_9 * `SV_data`.sv_7 + `ADS_sca_2_OUT`.scaler_10 * `SV_data`.sv_8 + `ADS_sca_2_OUT`.scaler_11 * `SV_data`.sv_9 + `ADS_sca_2_OUT`.scaler_12 * `SV_data`.sv_10 + `ADS_sca_2_OUT`.scaler_13 * `SV_data`.sv_11 + `ADS_sca_2_OUT`.scaler_14 * `SV_data`.sv_12 + `ADS_sca_2_OUT`.scaler_15 * `SV_data`.sv_13 + `ADS_sca_2_OUT`.scaler_16 * `SV_data`.sv_14 + `ADS_sca_2_OUT`.scaler_17 * `SV_data`.sv_15 + `ADS_sca_2_OUT`.scaler_18 * `SV_data`.sv_16 + `ADS_sca_2_OUT`.scaler_19 * `SV_data`.sv_17 + `ADS_sca_2_OUT`.scaler_20 * `SV_data`.sv_18 + `ADS_sca_2_OUT`.scaler_21 * `SV_data`.sv_19 + `ADS_sca_2_OUT`.scaler_22 * `SV_data`.sv_20 + `ADS_sca_2_OUT`.scaler_23 * `SV_data`.sv_21 + `ADS_sca_2_OUT`.scaler_24 * `SV_data`.sv_22 + `ADS_sca_2_OUT`.scaler_25 * `SV_data`.sv_23 + `ADS_sca_2_OUT`.scaler_26 * `SV_data`.sv_24 + `ADS_sca_2_OUT`.scaler_27 * `SV_data`.sv_25 + `ADS_sca_2_OUT`.scaler_28 * `SV_data`.sv_26 + `ADS_sca_2_OUT`.scaler_29 * `SV_data`.sv_27 + `ADS_sca_2_OUT`.scaler_30 * `SV_data`.sv_28 + `ADS_sca_2_OUT`.scaler_31 * `SV_data`.sv_29) + 0.0))) / (exp(0.03333333333333333 * (`ADS_sca_2_OUT`.scaler_2 * `SV_data`.sv_0 + `ADS_sca_2_OUT`.scaler_3 * `SV_data`.sv_1 + `ADS_sca_2_OUT`.scaler_4 * `SV_data`.sv_2 + `ADS_sca_2_OUT`.scaler_5 * `SV_data`.sv_3 + `ADS_sca_2_OUT`.scaler_6 * `SV_data`.sv_4 + `ADS_sca_2_OUT`.scaler_7 * `SV_data`.sv_5 + `ADS_sca_2_OUT`.scaler_8 * `SV_data`.sv_6 + `ADS_sca_2_OUT`.scaler_9 * `SV_data`.sv_7 + `ADS_sca_2_OUT`.scaler_10 * `SV_data`.sv_8 + `ADS_sca_2_OUT`.scaler_11 * `SV_data`.sv_9 + `ADS_sca_2_OUT`.scaler_12 * `SV_data`.sv_10 + `ADS_sca_2_OUT`.scaler_13 * `SV_data`.sv_11 + `ADS_sca_2_OUT`.scaler_14 * `SV_data`.sv_12 + `ADS_sca_2_OUT`.scaler_15 * `SV_data`.sv_13 + `ADS_sca_2_OUT`.scaler_16 * `SV_data`.sv_14 + `ADS_sca_2_OUT`.scaler_17 * `SV_data`.sv_15 + `ADS_sca_2_OUT`.scaler_18 * `SV_data`.sv_16 + `ADS_sca_2_OUT`.scaler_19 * `SV_data`.sv_17 + `ADS_sca_2_OUT`.scaler_20 * `SV_data`.sv_18 + `ADS_sca_2_OUT`.scaler_21 * `SV_data`.sv_19 + `ADS_sca_2_OUT`.scaler_22 * `SV_data`.sv_20 + `ADS_sca_2_OUT`.scaler_23 * `SV_data`.sv_21 + `ADS_sca_2_OUT`.scaler_24 * `SV_data`.sv_22 + `ADS_sca_2_OUT`.scaler_25 * `SV_data`.sv_23 + `ADS_sca_2_OUT`.scaler_26 * `SV_data`.sv_24 + `ADS_sca_2_OUT`.scaler_27 * `SV_data`.sv_25 + `ADS_sca_2_OUT`.scaler_28 * `SV_data`.sv_26 + `ADS_sca_2_OUT`.scaler_29 * `SV_data`.sv_27 + `ADS_sca_2_OUT`.scaler_30 * `SV_data`.sv_28 + `ADS_sca_2_OUT`.scaler_31 * `SV_data`.sv_29) + 0.0) + exp(-(0.03333333333333333 * (`ADS_sca_2_OUT`.scaler_2 * `SV_data`.sv_0 + `ADS_sca_2_OUT`.scaler_3 * `SV_data`.sv_1 + `ADS_sca_2_OUT`.scaler_4 * `SV_data`.sv_2 + `ADS_sca_2_OUT`.scaler_5 * `SV_data`.sv_3 + `ADS_sca_2_OUT`.scaler_6 * `SV_data`.sv_4 + `ADS_sca_2_OUT`.scaler_7 * `SV_data`.sv_5 + `ADS_sca_2_OUT`.scaler_8 * `SV_data`.sv_6 + `ADS_sca_2_OUT`.scaler_9 * `SV_data`.sv_7 + `ADS_sca_2_OUT`.scaler_10 * `SV_data`.sv_8 + `ADS_sca_2_OUT`.scaler_11 * `SV_data`.sv_9 + `ADS_sca_2_OUT`.scaler_12 * `SV_data`.sv_10 + `ADS_sca_2_OUT`.scaler_13 * `SV_data`.sv_11 + `ADS_sca_2_OUT`.scaler_14 * `SV_data`.sv_12 + `ADS_sca_2_OUT`.scaler_15 * `SV_data`.sv_13 + `ADS_sca_2_OUT`.scaler_16 * `SV_data`.sv_14 + `ADS_sca_2_OUT`.scaler_17 * `SV_data`.sv_15 + `ADS_sca_2_OUT`.scaler_18 * `SV_data`.sv_16 + `ADS_sca_2_OUT`.scaler_19 * `SV_data`.sv_17 + `ADS_sca_2_OUT`.scaler_20 * `SV_data`.sv_18 + `ADS_sca_2_OUT`.scaler_21 * `SV_data`.sv_19 + `ADS_sca_2_OUT`.scaler_22 * `SV_data`.sv_20 + `ADS_sca_2_OUT`.scaler_23 * `SV_data`.sv_21 + `ADS_sca_2_OUT`.scaler_24 * `SV_data`.sv_22 + `ADS_sca_2_OUT`.scaler_25 * `SV_data`.sv_23 + `ADS_sca_2_OUT`.scaler_26 * `SV_data`.sv_24 + `ADS_sca_2_OUT`.scaler_27 * `SV_data`.sv_25 + `ADS_sca_2_OUT`.scaler_28 * `SV_data`.sv_26 + `ADS_sca_2_OUT`.scaler_29 * `SV_data`.sv_27 + `ADS_sca_2_OUT`.scaler_30 * `SV_data`.sv_28 + `ADS_sca_2_OUT`.scaler_31 * `SV_data`.sv_29) + 0.0)))) AS dot_prod1 
FROM `ADS_sca_2_OUT`, `SV_data`) AS full_join_data_sv GROUP BY full_join_data_sv.`KEY`) AS t)
 SELECT kernel_dp.`KEY` AS `KEY`, -kernel_dp.dot_product AS `Score_0`, kernel_dp.dot_product AS `Score_1`, exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812) / (1.0 + exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812)) AS `Proba_0`, 1.0 / (1.0 + exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812)) AS `Proba_1`, CASE WHEN (exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812) / (1.0 + exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812)) IS NULL OR exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812) / (1.0 + exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812)) > 0.0) THEN ln(exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812) / (1.0 + exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812))) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (1.0 / (1.0 + exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812)) IS NULL OR 1.0 / (1.0 + exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812)) > 0.0) THEN ln(1.0 / (1.0 + exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812))) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS `Decision`, CASE WHEN (exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812) / (1.0 + exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812)) <= 1.0 / (1.0 + exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812))) THEN 1.0 / (1.0 + exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812)) ELSE exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812) / (1.0 + exp(kernel_dp.dot_product * -2.70570037876 + -0.260508692812)) END AS `DecisionProba` 
FROM kernel_dp