-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 46.1969026835 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 932.057168507 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.53256951047 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 5.64980080498 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman2 "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 46.1969026835) / 27.5095473965 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 932.057168507) / 497.483310467 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.53256951047) / 0.285314750188 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 5.64980080498) / 2.69276071556 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 1.0 AS dual_coeff, 0.796261860813 AS sv_0, -0.423998178957 AS sv_1, 0.415424522651 AS sv_2, -0.550680613946 AS sv_3 FROM DUAL UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, 1.73036372397 AS sv_0, -1.6176219434 AS sv_1, -1.14309788239 AS sv_2, 1.21374917307 AS sv_3 FROM DUAL UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, 0.995712295519 AS sv_0, -0.717368199722 AS sv_1, 0.753707003307 AS sv_2, -0.504051516778 AS sv_3 FROM DUAL UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, -0.912546153645 AS sv_0, -1.5486730264 AS sv_1, -0.45550738769 AS sv_2, -1.65950853064 AS sv_3 FROM DUAL UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 1.51660034818 AS sv_0, -1.21462224871 AS sv_1, 1.32573501536 AS sv_2, 1.08234716862 AS sv_3 FROM DUAL UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, -0.0562281926269 AS sv_0, -0.339419866139 AS sv_1, -0.483478330473 AS sv_2, 0.137292863664 AS sv_3 FROM DUAL UNION ALL SELECT 6 AS sv_idx, 1.0 AS dual_coeff, -0.915337424869 AS sv_0, 0.669632014361 AS sv_1, -0.169584768155 AS sv_2, -0.430218538438 AS sv_3 FROM DUAL UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, -0.183700149292 AS sv_0, -1.27431361339 AS sv_1, 1.40576872465 AS sv_2, 0.982143135134 AS sv_3 FROM DUAL UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 1.43991284901 AS sv_0, 0.508346135673 AS sv_1, 1.58152669439 AS sv_2, 0.320692640078 AS sv_3 FROM DUAL UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, -1.56500306062 AS sv_0, 0.606593680495 AS sv_1, -1.84073671961 AS sv_2, 0.442307795714 AS sv_3 FROM DUAL UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 0.252224596685 AS sv_0, 0.712178775051 AS sv_1, 0.861532768306 AS sv_2, 1.10395676913 AS sv_3 FROM DUAL UNION ALL SELECT 11 AS sv_idx, 0.223177278869 AS dual_coeff, 0.690760757561 AS sv_0, 1.56280827327 AS sv_1, -1.11854607398 AS sv_2, -1.11855233414 AS sv_3 FROM DUAL UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 1.32749558309 AS sv_0, 1.39942834236 AS sv_1, -1.66796978058 AS sv_2, 1.0008823743 AS sv_3 FROM DUAL UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, -1.38582646709 AS sv_0, -0.817882099052 AS sv_1, -0.926214123632 AS sv_2, -1.59721099685 AS sv_3 FROM DUAL UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 0.113321247204 AS sv_0, -0.951606478609 AS sv_1, -0.409802570699 AS sv_2, -1.32593482629 AS sv_3 FROM DUAL UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 1.64486439226 AS sv_0, 0.183443612705 AS sv_1, -0.85930261441 AS sv_2, 0.900328864505 AS sv_3 FROM DUAL UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.492980799284 AS sv_0, -1.39614269544 AS sv_1, 0.34802103843 AS sv_2, -0.609314062169 AS sv_3 FROM DUAL UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, 0.486376760885 AS sv_0, 1.45215496373 AS sv_1, 0.546451117477 AS sv_2, -0.178058040115 AS sv_3 FROM DUAL UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, 0.780696166381 AS sv_0, 0.911651112337 AS sv_1, -1.35037541535 AS sv_2, 1.4723532876 AS sv_3 FROM DUAL UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, 0.145959572461 AS sv_0, -1.00316199405 AS sv_1, 0.783921760881 AS sv_2, -0.570344880466 AS sv_3 FROM DUAL UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, -1.16660571297 AS sv_0, 1.23946311726 AS sv_1, 1.27326642834 AS sv_2, 0.939821083286 AS sv_3 FROM DUAL UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, 1.87977771177 AS sv_0, 1.47796430716 AS sv_1, 0.871785858126 AS sv_2, -0.580603119457 AS sv_3 FROM DUAL UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, -0.373608447027 AS sv_0, 0.834994370014 AS sv_1, 0.268671194634 AS sv_2, -0.816080473286 AS sv_3 FROM DUAL UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, 0.859203081506 AS sv_0, 0.967662991614 AS sv_1, -0.589315721591 AS sv_2, 1.72140883151 AS sv_3 FROM DUAL UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, 0.510764949019 AS sv_0, -1.44209346076 AS sv_1, -0.778520213637 AS sv_2, -0.464601773141 AS sv_3 FROM DUAL UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, -0.719969829795 AS sv_0, -0.510172731028 AS sv_1, -0.913134932994 AS sv_2, 0.728709148435 AS sv_3 FROM DUAL UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.309158077095 AS sv_0, 1.24090869138 AS sv_1, -0.0706430451346 AS sv_2, -0.10125182689 AS sv_3 FROM DUAL UNION ALL SELECT 27 AS sv_idx, -1.0 AS dual_coeff, -0.330214535334 AS sv_0, -1.55424954415 AS sv_1, 1.0945550216 AS sv_2, -1.56130795931 AS sv_3 FROM DUAL UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 1.49841662151 AS sv_0, 0.443124518418 AS sv_1, 1.3930458896 AS sv_2, -0.12331946157 AS sv_3 FROM DUAL UNION ALL SELECT 29 AS sv_idx, 0.776822721131 AS dual_coeff, 0.938731997585 AS sv_0, 0.109329070107 AS sv_1, -0.582957879012 AS sv_2, -0.645786400181 AS sv_3 FROM DUAL UNION ALL SELECT 30 AS sv_idx, -1.0 AS dual_coeff, -0.345411674178 AS sv_0, -1.17099342915 AS sv_1, -1.43164934008 AS sv_2, -1.36476183678 AS sv_3 FROM DUAL UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, -0.485131293884 AS sv_0, 0.220152800562 AS sv_1, 0.295837774972 AS sv_2, -0.796057675822 AS sv_3 FROM DUAL UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, -0.938335738981 AS sv_0, -0.981255559387 AS sv_1, 1.52254640646 AS sv_2, 0.786863338116 AS sv_3 FROM DUAL UNION ALL SELECT 33 AS sv_idx, -1.0 AS dual_coeff, -0.0219791281617 AS sv_0, 0.36273210438 AS sv_1, -1.77957850193 AS sv_2, 0.722733021086 AS sv_3 FROM DUAL UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, -1.48923134551 AS sv_0, 0.551949538044 AS sv_1, 1.17630075848 AS sv_2, -0.311820378566 AS sv_3 FROM DUAL UNION ALL SELECT 35 AS sv_idx, -1.0 AS dual_coeff, -1.5353417299 AS sv_0, 0.552439764614 AS sv_1, -1.84722203204 AS sv_2, -1.2185065471 AS sv_3 FROM DUAL UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, -0.929707252904 AS sv_0, 0.178081951912 AS sv_1, 0.0326961864267 AS sv_2, 0.959866160844 AS sv_3 FROM DUAL UNION ALL SELECT 37 AS sv_idx, -1.0 AS dual_coeff, -0.955966431414 AS sv_0, 0.499901049564 AS sv_1, -1.69270873906 AS sv_2, 1.60214068917 AS sv_3 FROM DUAL UNION ALL SELECT 38 AS sv_idx, -1.0 AS dual_coeff, -0.0262379475847 AS sv_0, -1.30795464041 AS sv_1, -0.942817698671 AS sv_2, 0.645039615578 AS sv_3 FROM DUAL UNION ALL SELECT 39 AS sv_idx, -1.0 AS dual_coeff, 1.28206538984 AS sv_0, -0.610456734547 AS sv_1, -0.194224519947 AS sv_2, 1.19218887176 AS sv_3 FROM DUAL UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, 1.82441635125 AS sv_0, 1.47966942811 AS sv_1, -0.24249419271 AS sv_2, -0.0612887833714 AS sv_3 FROM DUAL UNION ALL SELECT 41 AS sv_idx, 1.0 AS dual_coeff, -0.710548696512 AS sv_0, 0.89419448127 AS sv_1, 0.0571402553901 AS sv_2, 0.300412641671 AS sv_3 FROM DUAL UNION ALL SELECT 42 AS sv_idx, -1.0 AS dual_coeff, -0.305473215957 AS sv_0, -0.7407139647 AS sv_1, -0.524665253734 AS sv_2, 1.76614848236 AS sv_3 FROM DUAL UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, -0.985818964789 AS sv_0, 1.01374412203 AS sv_1, -0.224936070982 AS sv_2, -1.35701117292 AS sv_3 FROM DUAL UNION ALL SELECT 44 AS sv_idx, 1.0 AS dual_coeff, -0.485352312783 AS sv_0, 0.631207471285 AS sv_1, -0.0451330838513 AS sv_2, 0.481611450459 AS sv_3 FROM DUAL UNION ALL SELECT 45 AS sv_idx, -1.0 AS dual_coeff, 0.222107422246 AS sv_0, 0.272752067264 AS sv_1, -0.885807384349 AS sv_2, -0.213745321544 AS sv_3 FROM DUAL UNION ALL SELECT 46 AS sv_idx, -1.0 AS dual_coeff, 1.66609687599 AS sv_0, -1.44267786925 AS sv_1, -1.05047135854 AS sv_2, -0.144294654925 AS sv_3 FROM DUAL UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, 0.240833266861 AS sv_0, 0.817315351232 AS sv_1, 0.677491486249 AS sv_2, 0.106210098791 AS sv_3 FROM DUAL UNION ALL SELECT 48 AS sv_idx, -1.0 AS dual_coeff, 0.835209841888 AS sv_0, -0.900961258346 AS sv_1, -0.316006011672 AS sv_2, 0.347120785362 AS sv_3 FROM DUAL UNION ALL SELECT 49 AS sv_idx, 1.0 AS dual_coeff, -0.649107768631 AS sv_0, -0.240801262667 AS sv_1, 0.592030314999 AS sv_2, -0.509478057004 AS sv_3 FROM DUAL UNION ALL SELECT 50 AS sv_idx, 1.0 AS dual_coeff, 0.697429972516 AS sv_0, 1.11085565616 AS sv_1, 0.327528617217 AS sv_2, -1.38359569475 AS sv_3 FROM DUAL UNION ALL SELECT 51 AS sv_idx, 1.0 AS dual_coeff, -1.60593834735 AS sv_0, 1.55113356894 AS sv_1, 1.42259428619 AS sv_2, -1.54672067952 AS sv_3 FROM DUAL UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, -1.6131179217 AS sv_0, 0.428335413182 AS sv_1, 0.893675515036 AS sv_2, 0.823760290144 AS sv_3 FROM DUAL UNION ALL SELECT 53 AS sv_idx, 1.0 AS dual_coeff, -1.3514728187 AS sv_0, 0.870657922467 AS sv_1, 1.42856996942 AS sv_2, -1.25321318143 AS sv_3 FROM DUAL UNION ALL SELECT 54 AS sv_idx, -1.0 AS dual_coeff, -1.45248896907 AS sv_0, -1.20387266907 AS sv_1, 0.0989083319064 AS sv_2, -1.5055197231 AS sv_3 FROM DUAL UNION ALL SELECT 55 AS sv_idx, -1.0 AS dual_coeff, 0.557828601377 AS sv_0, -1.06394641399 AS sv_1, 1.11884135906 AS sv_2, 0.643537250798 AS sv_3 FROM DUAL UNION ALL SELECT 56 AS sv_idx, -1.0 AS dual_coeff, 0.289042453902 AS sv_0, -0.925596877456 AS sv_1, -0.9397121911 AS sv_2, -0.529956650261 AS sv_3 FROM DUAL UNION ALL SELECT 57 AS sv_idx, 1.0 AS dual_coeff, -0.652026350855 AS sv_0, 0.234020084803 AS sv_1, 1.35377435252 AS sv_2, -1.3720655229 AS sv_3 FROM DUAL UNION ALL SELECT 58 AS sv_idx, 1.0 AS dual_coeff, -0.589414659901 AS sv_0, 1.01729703181 AS sv_1, 0.257861739666 AS sv_2, 1.65381335892 AS sv_3 FROM DUAL UNION ALL SELECT 59 AS sv_idx, 1.0 AS dual_coeff, 0.215925068547 AS sv_0, 0.0648740221245 AS sv_1, 0.9254749052 AS sv_2, 0.119300340911 AS sv_3 FROM DUAL UNION ALL SELECT 60 AS sv_idx, -1.0 AS dual_coeff, 1.0105462428 AS sv_0, -1.52588345689 AS sv_1, -1.86228767227 AS sv_2, 1.73250509888 AS sv_3 FROM DUAL UNION ALL SELECT 61 AS sv_idx, -1.0 AS dual_coeff, -1.20445969481 AS sv_0, 1.04765165216 AS sv_1, -0.998964476841 AS sv_2, -0.0504130391614 AS sv_3 FROM DUAL UNION ALL SELECT 62 AS sv_idx, -1.0 AS dual_coeff, -0.370379488864 AS sv_0, -1.57873113828 AS sv_1, 1.08988834749 AS sv_2, -1.182834431 AS sv_3 FROM DUAL UNION ALL SELECT 63 AS sv_idx, 1.0 AS dual_coeff, -0.858529119792 AS sv_0, 0.834195854895 AS sv_1, 0.275636559446 AS sv_2, -1.07337388642 AS sv_3 FROM DUAL UNION ALL SELECT 64 AS sv_idx, 1.0 AS dual_coeff, -1.13569986167 AS sv_0, 0.683405699456 AS sv_1, 1.62526285073 AS sv_2, 0.135778686647 AS sv_3 FROM DUAL UNION ALL SELECT 65 AS sv_idx, 1.0 AS dual_coeff, 1.40373331591 AS sv_0, 0.370235112802 AS sv_1, -0.0627730971247 AS sv_2, 1.10186178761 AS sv_3 FROM DUAL UNION ALL SELECT 66 AS sv_idx, -1.0 AS dual_coeff, -0.348607487745 AS sv_0, -1.50131477105 AS sv_1, 0.305166029632 AS sv_2, 1.54459748607 AS sv_3 FROM DUAL) "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 367.389369355 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data".dual_coeff * exp(-0.25 * (power("ADS_sca_2_OUT".scaler_output_2 - "SV_data".sv_0, 2) + power("ADS_sca_2_OUT".scaler_output_3 - "SV_data".sv_1, 2) + power("ADS_sca_2_OUT".scaler_output_4 - "SV_data".sv_2, 2) + power("ADS_sca_2_OUT".scaler_output_5 - "SV_data".sv_3, 2))) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data") full_join_data_sv GROUP BY full_join_data_sv."KEY") t)
 SELECT kernel_cte."KEY" AS "KEY", kernel_cte.dot_product AS "Estimator" 
FROM kernel_cte