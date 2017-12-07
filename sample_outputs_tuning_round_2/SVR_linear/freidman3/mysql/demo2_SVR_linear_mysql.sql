-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `SV_data` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, -0.000515185006062 AS dual_coeff, 40.4423309192 AS sv_0, 551.071191104 AS sv_1, 0.0386627494746 AS sv_2, 4.57807630246 AS sv_3 UNION ALL SELECT 1 AS sv_idx, -0.00415823692668 AS dual_coeff, 38.249289801 AS sv_0, 135.905602947 AS sv_1, 0.647936205746 AS sv_2, 2.17946138644 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -0.000308151859497 AS dual_coeff, 56.4870997353 AS sv_0, 1282.86669841 AS sv_1, 0.167903280202 AS sv_2, 4.67128839413 AS sv_3 UNION ALL SELECT 3 AS sv_idx, -0.0046113549174 AS dual_coeff, 99.9666236358 AS sv_0, 209.472368404 AS sv_1, 0.790207220272 AS sv_2, 1.80229599416 AS sv_3 UNION ALL SELECT 4 AS sv_idx, -0.000302974626498 AS dual_coeff, 38.9673897304 AS sv_0, 1162.82736485 AS sv_1, 0.0135180455089 AS sv_2, 6.78077577736 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -0.0405679890141 AS dual_coeff, 14.3540248452 AS sv_0, 1727.58754933 AS sv_1, 0.00580741797988 AS sv_2, 3.51841519377 AS sv_3 UNION ALL SELECT 6 AS sv_idx, 0.000308151859497 AS dual_coeff, 5.55568327919 AS sv_0, 1271.87739004 AS sv_1, 0.265232229103 AS sv_2, 2.19597639819 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 0.000515185006062 AS dual_coeff, 0.118360992162 AS sv_0, 559.894743992 AS sv_1, 0.995587810765 AS sv_2, 8.37954291312 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 0.044072218849 AS dual_coeff, 35.2041226256 AS sv_0, 1709.61373918 AS sv_1, 0.538410230599 AS sv_2, 3.80377505473 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -0.000246393973704 AS dual_coeff, 49.3998858198 AS sv_0, 243.935156659 AS sv_1, 0.413747780428 AS sv_2, 6.0193130914 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 0.00901598581779 AS dual_coeff, 1.50213102531 AS sv_0, 126.649446594 AS sv_1, 0.340402710487 AS sv_2, 9.81303909642 AS sv_3 UNION ALL SELECT 11 AS sv_idx, -0.00320125520845 AS dual_coeff, 89.7924036083 AS sv_0, 1393.00598758 AS sv_1, 0.848421537264 AS sv_2, 9.3495323077 AS sv_3) AS `Values`), 
kernel_dp AS 
(SELECT t.`KEY` AS `KEY`, t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.`KEY` AS `KEY`, sum(full_join_data_sv.dot_prod1) + -1.37520650896 AS dot_product 
FROM (SELECT `ADS`.`KEY` AS `KEY`, `SV_data`.dual_coeff * (`ADS`.`Feature_0` * `SV_data`.sv_0 + `ADS`.`Feature_1` * `SV_data`.sv_1 + `ADS`.`Feature_2` * `SV_data`.sv_2 + `ADS`.`Feature_3` * `SV_data`.sv_3) AS dot_prod1 
FROM freidman3 AS `ADS`, `SV_data`) AS full_join_data_sv GROUP BY full_join_data_sv.`KEY`) AS t)
 SELECT kernel_dp.`KEY` AS `KEY`, kernel_dp.dot_product AS `Estimator` 
FROM kernel_dp