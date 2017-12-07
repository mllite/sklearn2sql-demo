-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 1.0 AS dual_coeff, 54.3883410287 AS sv_0, 1647.66239504 AS sv_1, 0.56717242528 AS sv_2, 3.0991162503 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, 20.5628367266 AS sv_0, 1667.92575957 AS sv_1, 0.48956247926 AS sv_2, 7.37173140737 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS sv_idx, -0.464019026939 AS dual_coeff, 40.4423309192 AS sv_0, 551.071191104 AS sv_1, 0.0386627494746 AS sv_2, 4.57807630246 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 48.6943837396 AS sv_0, 1664.25527811 AS sv_1, 0.311448368076 AS sv_2, 4.63262434159 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 62.4125610398 AS sv_0, 1030.79425047 AS sv_1, 0.712812257328 AS sv_2, 10.4049205548 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 48.406952321 AS sv_0, 1631.01815735 AS sv_1, 0.127069258993 AS sv_2, 4.26189897695 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS sv_idx, -0.0927909210518 AS dual_coeff, 42.1812417857 AS sv_0, 1121.24332356 AS sv_1, 0.765544437759 AS sv_2, 7.07448099704 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, 38.249289801 AS sv_0, 135.905602947 AS sv_1, 0.647936205746 AS sv_2, 2.17946138644 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 44.8855487085 AS sv_0, 1627.38160655 AS sv_1, 0.825581542335 AS sv_2, 10.0634488887 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, 42.7318934332 AS sv_0, 1100.67869674 AS sv_1, 0.973809456368 AS sv_2, 2.80652676045 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, 56.4870997353 AS sv_0, 1282.86669841 AS sv_1, 0.167903280202 AS sv_2, 4.67128839413 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS sv_idx, -0.379848455958 AS dual_coeff, 50.6202964366 AS sv_0, 412.323684429 AS sv_1, 0.104477294557 AS sv_2, 2.88538014553 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS sv_idx, 0.282873666274 AS dual_coeff, 99.9666236358 AS sv_0, 209.472368404 AS sv_1, 0.790207220272 AS sv_2, 1.80229599416 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, 6.29276610751 AS sv_0, 1199.66523172 AS sv_1, 0.804009709038 AS sv_2, 5.49064690728 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS sv_idx, -0.353367925172 AS dual_coeff, 62.9118727349 AS sv_0, 456.234226199 AS sv_1, 0.0543058302775 AS sv_2, 10.0852816425 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 38.9673897304 AS sv_0, 1162.82736485 AS sv_1, 0.0135180455089 AS sv_2, 6.78077577736 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 14.3540248452 AS sv_0, 1727.58754933 AS sv_1, 0.00580741797988 AS sv_2, 3.51841519377 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 5.55568327919 AS sv_0, 1271.87739004 AS sv_1, 0.265232229103 AS sv_2, 2.19597639819 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS sv_idx, 0.309679667422 AS dual_coeff, 40.2785671379 AS sv_0, 366.216284652 AS sv_1, 0.996685324158 AS sv_2, 1.65698693167 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, 0.118360992162 AS sv_0, 559.894743992 AS sv_1, 0.995587810765 AS sv_2, 8.37954291312 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 72.4369816449 AS sv_0, 1121.86786944 AS sv_1, 0.948448631443 AS sv_2, 6.42752868678 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS sv_idx, 0.0207902157805 AS dual_coeff, 60.5886069664 AS sv_0, 1469.84303579 AS sv_1, 0.608951216817 AS sv_2, 2.33679485362 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, 9.84420911116 AS sv_0, 1641.9469469 AS sv_1, 0.707534609624 AS sv_2, 5.9869574965 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, 35.2041226256 AS sv_0, 1709.61373918 AS sv_1, 0.538410230599 AS sv_2, 3.80377505473 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, 69.1211011723 AS sv_0, 1206.14405022 AS sv_1, 0.251039770735 AS sv_2, 5.04871649681 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS sv_idx, -0.0428709823176 AS dual_coeff, 96.4539023143 AS sv_0, 990.225431883 AS sv_1, 0.183101234382 AS sv_2, 1.13409666629 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS sv_idx, -0.885929746474 AS dual_coeff, 69.8521481152 AS sv_0, 1639.12602818 AS sv_1, 0.429675654451 AS sv_2, 7.46414075506 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 39.2242037137 AS sv_0, 1480.03622987 AS sv_1, 0.979651504501 AS sv_2, 10.9382783988 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 28 AS sv_idx, -0.0419815421938 AS dual_coeff, 59.8407124179 AS sv_0, 1182.93902393 AS sv_1, 0.58617968972 AS sv_2, 2.60096423899 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 29 AS sv_idx, -1.0 AS dual_coeff, 49.3998858198 AS sv_0, 243.935156659 AS sv_1, 0.413747780428 AS sv_2, 6.0193130914 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 30 AS sv_idx, -0.0655921163656 AS dual_coeff, 15.3267162617 AS sv_0, 180.539031069 AS sv_1, 0.710418559165 AS sv_2, 9.61231752152 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 31 AS sv_idx, -1.0 AS dual_coeff, 75.7235615373 AS sv_0, 979.539075837 AS sv_1, 0.344159530895 AS sv_2, 6.68995846105 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 32 AS sv_idx, -0.0323099595003 AS dual_coeff, 91.3604563677 AS sv_0, 303.13694761 AS sv_1, 0.559302498027 AS sv_2, 3.6652270013 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 33 AS sv_idx, 0.0419815421938 AS dual_coeff, 45.6094068711 AS sv_0, 1252.35742863 AS sv_1, 0.747034243271 AS sv_2, 1.63124577878 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 34 AS sv_idx, -1.0 AS dual_coeff, 30.6908524691 AS sv_0, 1259.33928567 AS sv_1, 0.261732730585 AS sv_2, 5.86687827376 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, 28.1952994894 AS sv_0, 1658.71045073 AS sv_1, 0.635304198851 AS sv_2, 8.57771143332 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 36 AS sv_idx, -1.0 AS dual_coeff, 11.9204329833 AS sv_0, 1644.05457384 AS sv_1, 0.0445057147731 AS sv_2, 1.97885851313 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 37 AS sv_idx, -0.630091224773 AS dual_coeff, 43.578536958 AS sv_0, 1663.9708446 AS sv_1, 0.415108115783 AS sv_2, 3.0852135693 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 38 AS sv_idx, -1.0 AS dual_coeff, 17.8681314293 AS sv_0, 1485.9419331 AS sv_1, 0.0535957522929 AS sv_2, 6.34232576023 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 39 AS sv_idx, -1.0 AS dual_coeff, 8.56502637821 AS sv_0, 1167.17666686 AS sv_1, 0.215208534919 AS sv_2, 10.5232314385 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 40 AS sv_idx, -0.765313536987 AS dual_coeff, 76.4945616204 AS sv_0, 219.869255009 AS sv_1, 0.76517525816 AS sv_2, 6.71134077604 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 41 AS sv_idx, 1.0 AS dual_coeff, 1.50213102531 AS sv_0, 126.649446594 AS sv_1, 0.340402710487 AS sv_2, 9.81303909642 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 42 AS sv_idx, -0.621192656207 AS dual_coeff, 16.0114685263 AS sv_0, 598.746972408 AS sv_1, 0.0583275057023 AS sv_2, 10.0658909995 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, 49.0654660084 AS sv_0, 1317.99656717 AS sv_1, 0.751473866077 AS sv_2, 2.3145116809 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 44 AS sv_idx, -0.32738157313 AS dual_coeff, 2.90264522883 AS sv_0, 1087.88589464 AS sv_1, 0.431231865585 AS sv_2, 10.0587217363 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, 89.7924036083 AS sv_0, 1393.00598758 AS sv_1, 0.848421537264 AS sv_2, 9.3495323077 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 46 AS sv_idx, 0.407928704059 AS dual_coeff, 69.3923955194 AS sv_0, 246.843175283 AS sv_1, 0.935497099023 AS sv_2, 5.64078334156 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, 78.0336420374 AS sv_0, 1032.47929511 AS sv_1, 0.972339378695 AS sv_2, 1.23044223996 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 48 AS sv_idx, 1.0 AS dual_coeff, 1.76023326649 AS sv_0, 822.96727437 AS sv_1, 0.926070399375 AS sv_2, 9.74865259645 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 49 AS sv_idx, -0.360564128661 AS dual_coeff, 19.7586939305 AS sv_0, 272.216005062 AS sv_1, 0.449633512047 AS sv_2, 1.86392978842 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 50 AS sv_idx, 1.0 AS dual_coeff, 79.1010960033 AS sv_0, 1315.28219222 AS sv_1, 0.986361848933 AS sv_2, 5.91147458801 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 51 AS sv_idx, 1.0 AS dual_coeff, 33.9011199472 AS sv_0, 988.504148586 AS sv_1, 0.964502355546 AS sv_2, 2.81120906172 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 52 AS sv_idx, -1.0 AS dual_coeff, 18.0268254446 AS sv_0, 861.288992046 AS sv_1, 0.102160257786 AS sv_2, 6.79847515228 AS sv_3 FROM SYSIBM.SYSDUMMY1) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 648.22319774 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3) AS dot_prod1 
FROM freidman2 AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp