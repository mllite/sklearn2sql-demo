-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_poly
-- Dataset : boston
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT `ADS`.`KEY` AS `KEY`, `ADS`.`Feature_0` AS `Feature_0`, `ADS`.`Feature_1` AS `Feature_1`, `ADS`.`Feature_2` AS `Feature_2`, `ADS`.`Feature_3` AS `Feature_3`, `ADS`.`Feature_4` AS `Feature_4`, `ADS`.`Feature_5` AS `Feature_5`, `ADS`.`Feature_6` AS `Feature_6`, `ADS`.`Feature_7` AS `Feature_7`, `ADS`.`Feature_8` AS `Feature_8`, `ADS`.`Feature_9` AS `Feature_9`, `ADS`.`Feature_10` AS `Feature_10`, `ADS`.`Feature_11` AS `Feature_11`, `ADS`.`Feature_12` AS `Feature_12`, `ADS`.`TGT` AS `TGT` 
FROM boston AS `ADS`), 
`SV_data` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3, `Values`.sv_4 AS sv_4, `Values`.sv_5 AS sv_5, `Values`.sv_6 AS sv_6, `Values`.sv_7 AS sv_7, `Values`.sv_8 AS sv_8, `Values`.sv_9 AS sv_9, `Values`.sv_10 AS sv_10, `Values`.sv_11 AS sv_11, `Values`.sv_12 AS sv_12 
FROM (SELECT 0 AS sv_idx, -2.0800211720204343e-11 AS dual_coeff, 12.8023 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.74 AS sv_4, 5.854 AS sv_5, 96.6 AS sv_6, 1.8956 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 240.52 AS sv_11, 23.79 AS sv_12 UNION ALL SELECT 1 AS sv_idx, 1.432815429768868e-10 AS dual_coeff, 0.1415 AS sv_0, 0.0 AS sv_1, 6.91 AS sv_2, 0.0 AS sv_3, 0.448 AS sv_4, 6.169 AS sv_5, 6.6 AS sv_6, 5.7209 AS sv_7, 3.0 AS sv_8, 233.0 AS sv_9, 17.9 AS sv_10, 383.37 AS sv_11, 5.81 AS sv_12 UNION ALL SELECT 2 AS sv_idx, 5.294060744758227e-09 AS dual_coeff, 7.99248 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.7 AS sv_4, 5.52 AS sv_5, 100.0 AS sv_6, 1.5331 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 396.9 AS sv_11, 24.56 AS sv_12 UNION ALL SELECT 3 AS sv_idx, 1.2894450263335723e-10 AS dual_coeff, 11.1604 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.74 AS sv_4, 6.629 AS sv_5, 94.6 AS sv_6, 2.1247 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 109.85 AS sv_11, 23.27 AS sv_12 UNION ALL SELECT 4 AS sv_idx, -5.074846586929845e-10 AS dual_coeff, 0.03537 AS sv_0, 34.0 AS sv_1, 6.09 AS sv_2, 0.0 AS sv_3, 0.433 AS sv_4, 6.59 AS sv_5, 40.4 AS sv_6, 5.4917 AS sv_7, 7.0 AS sv_8, 329.0 AS sv_9, 16.1 AS sv_10, 395.75 AS sv_11, 9.5 AS sv_12 UNION ALL SELECT 5 AS sv_idx, -9.13812734636301e-10 AS dual_coeff, 10.8342 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.679 AS sv_4, 6.782 AS sv_5, 90.8 AS sv_6, 1.8195 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 21.57 AS sv_11, 25.79 AS sv_12 UNION ALL SELECT 6 AS sv_idx, 8.957164419168462e-10 AS dual_coeff, 0.12744 AS sv_0, 0.0 AS sv_1, 6.91 AS sv_2, 0.0 AS sv_3, 0.448 AS sv_4, 6.77 AS sv_5, 2.9 AS sv_6, 5.7209 AS sv_7, 3.0 AS sv_8, 233.0 AS sv_9, 17.9 AS sv_10, 385.41 AS sv_11, 4.84 AS sv_12 UNION ALL SELECT 7 AS sv_idx, -3.9580306716118705e-12 AS dual_coeff, 0.08707 AS sv_0, 0.0 AS sv_1, 12.83 AS sv_2, 0.0 AS sv_3, 0.437 AS sv_4, 6.14 AS sv_5, 45.8 AS sv_6, 4.0905 AS sv_7, 5.0 AS sv_8, 398.0 AS sv_9, 18.7 AS sv_10, 386.96 AS sv_11, 10.27 AS sv_12 UNION ALL SELECT 8 AS sv_idx, 1.7627563336197792e-09 AS dual_coeff, 0.40771 AS sv_0, 0.0 AS sv_1, 6.2 AS sv_2, 1.0 AS sv_3, 0.507 AS sv_4, 6.164 AS sv_5, 91.3 AS sv_6, 3.048 AS sv_7, 8.0 AS sv_8, 307.0 AS sv_9, 17.4 AS sv_10, 395.24 AS sv_11, 21.46 AS sv_12 UNION ALL SELECT 9 AS sv_idx, 4.429316838208875e-11 AS dual_coeff, 0.03961 AS sv_0, 0.0 AS sv_1, 5.19 AS sv_2, 0.0 AS sv_3, 0.515 AS sv_4, 6.037 AS sv_5, 34.5 AS sv_6, 5.9853 AS sv_7, 5.0 AS sv_8, 224.0 AS sv_9, 20.2 AS sv_10, 396.9 AS sv_11, 8.01 AS sv_12 UNION ALL SELECT 10 AS sv_idx, 4.905950144645143e-11 AS dual_coeff, 12.2472 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.584 AS sv_4, 5.837 AS sv_5, 59.7 AS sv_6, 1.9976 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 24.65 AS sv_11, 15.69 AS sv_12 UNION ALL SELECT 11 AS sv_idx, -1.894457937066494e-12 AS dual_coeff, 0.0315 AS sv_0, 95.0 AS sv_1, 1.47 AS sv_2, 0.0 AS sv_3, 0.403 AS sv_4, 6.975 AS sv_5, 15.3 AS sv_6, 7.6534 AS sv_7, 3.0 AS sv_8, 402.0 AS sv_9, 17.0 AS sv_10, 396.9 AS sv_11, 4.56 AS sv_12 UNION ALL SELECT 12 AS sv_idx, -7.322123697962947e-10 AS dual_coeff, 0.17171 AS sv_0, 25.0 AS sv_1, 5.13 AS sv_2, 0.0 AS sv_3, 0.453 AS sv_4, 5.966 AS sv_5, 93.4 AS sv_6, 6.8185 AS sv_7, 8.0 AS sv_8, 284.0 AS sv_9, 19.7 AS sv_10, 378.08 AS sv_11, 14.44 AS sv_12 UNION ALL SELECT 13 AS sv_idx, -1.910655927042692e-11 AS dual_coeff, 0.12579 AS sv_0, 45.0 AS sv_1, 3.44 AS sv_2, 0.0 AS sv_3, 0.437 AS sv_4, 6.556 AS sv_5, 29.1 AS sv_6, 4.5667 AS sv_7, 5.0 AS sv_8, 398.0 AS sv_9, 15.2 AS sv_10, 382.84 AS sv_11, 4.56 AS sv_12 UNION ALL SELECT 14 AS sv_idx, 8.824085635428548e-11 AS dual_coeff, 7.75223 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.713 AS sv_4, 6.301 AS sv_5, 83.7 AS sv_6, 2.7831 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 272.21 AS sv_11, 16.23 AS sv_12 UNION ALL SELECT 15 AS sv_idx, -1.2403605985105325e-11 AS dual_coeff, 0.34006 AS sv_0, 0.0 AS sv_1, 21.89 AS sv_2, 0.0 AS sv_3, 0.624 AS sv_4, 6.458 AS sv_5, 98.9 AS sv_6, 2.1185 AS sv_7, 4.0 AS sv_8, 437.0 AS sv_9, 21.2 AS sv_10, 395.04 AS sv_11, 12.6 AS sv_12 UNION ALL SELECT 16 AS sv_idx, 5.515931359402975e-10 AS dual_coeff, 0.02009 AS sv_0, 95.0 AS sv_1, 2.68 AS sv_2, 0.0 AS sv_3, 0.4161 AS sv_4, 8.034 AS sv_5, 31.9 AS sv_6, 5.118 AS sv_7, 4.0 AS sv_8, 224.0 AS sv_9, 14.7 AS sv_10, 390.55 AS sv_11, 2.88 AS sv_12 UNION ALL SELECT 17 AS sv_idx, -8.396756961895601e-10 AS dual_coeff, 0.16211 AS sv_0, 20.0 AS sv_1, 6.96 AS sv_2, 0.0 AS sv_3, 0.464 AS sv_4, 6.24 AS sv_5, 16.3 AS sv_6, 4.429 AS sv_7, 3.0 AS sv_8, 223.0 AS sv_9, 18.6 AS sv_10, 396.9 AS sv_11, 6.59 AS sv_12 UNION ALL SELECT 18 AS sv_idx, 7.531153460464156e-10 AS dual_coeff, 1.25179 AS sv_0, 0.0 AS sv_1, 8.14 AS sv_2, 0.0 AS sv_3, 0.538 AS sv_4, 5.57 AS sv_5, 98.1 AS sv_6, 3.7979 AS sv_7, 4.0 AS sv_8, 307.0 AS sv_9, 21.0 AS sv_10, 376.57 AS sv_11, 21.02 AS sv_12 UNION ALL SELECT 19 AS sv_idx, 3.7636295401430833e-10 AS dual_coeff, 0.16439 AS sv_0, 22.0 AS sv_1, 5.86 AS sv_2, 0.0 AS sv_3, 0.431 AS sv_4, 6.433 AS sv_5, 49.1 AS sv_6, 7.8265 AS sv_7, 7.0 AS sv_8, 330.0 AS sv_9, 19.1 AS sv_10, 374.71 AS sv_11, 9.52 AS sv_12 UNION ALL SELECT 20 AS sv_idx, 4.480758166700965e-10 AS dual_coeff, 8.20058 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.713 AS sv_4, 5.936 AS sv_5, 80.3 AS sv_6, 2.7792 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 3.5 AS sv_11, 16.94 AS sv_12 UNION ALL SELECT 21 AS sv_idx, 8.126083174125734e-11 AS dual_coeff, 5.73116 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.532 AS sv_4, 7.061 AS sv_5, 77.0 AS sv_6, 3.4106 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 395.28 AS sv_11, 7.01 AS sv_12 UNION ALL SELECT 22 AS sv_idx, -2.2883204669350163e-09 AS dual_coeff, 2.77974 AS sv_0, 0.0 AS sv_1, 19.58 AS sv_2, 0.0 AS sv_3, 0.871 AS sv_4, 4.903 AS sv_5, 97.8 AS sv_6, 1.3459 AS sv_7, 5.0 AS sv_8, 403.0 AS sv_9, 14.7 AS sv_10, 396.9 AS sv_11, 29.29 AS sv_12 UNION ALL SELECT 23 AS sv_idx, -2.417484754271352e-09 AS dual_coeff, 4.03841 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.532 AS sv_4, 6.229 AS sv_5, 90.7 AS sv_6, 3.0993 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 395.33 AS sv_11, 12.87 AS sv_12 UNION ALL SELECT 24 AS sv_idx, -1.534847517482151e-12 AS dual_coeff, 2.44668 AS sv_0, 0.0 AS sv_1, 19.58 AS sv_2, 0.0 AS sv_3, 0.871 AS sv_4, 5.272 AS sv_5, 94.0 AS sv_6, 1.7364 AS sv_7, 5.0 AS sv_8, 403.0 AS sv_9, 14.7 AS sv_10, 88.63 AS sv_11, 16.14 AS sv_12 UNION ALL SELECT 25 AS sv_idx, 4.84388778074545e-09 AS dual_coeff, 1.51902 AS sv_0, 0.0 AS sv_1, 19.58 AS sv_2, 1.0 AS sv_3, 0.605 AS sv_4, 8.375 AS sv_5, 93.9 AS sv_6, 2.162 AS sv_7, 5.0 AS sv_8, 403.0 AS sv_9, 14.7 AS sv_10, 388.45 AS sv_11, 3.32 AS sv_12 UNION ALL SELECT 26 AS sv_idx, 1.0237321033472757e-09 AS dual_coeff, 6.80117 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.713 AS sv_4, 6.081 AS sv_5, 84.4 AS sv_6, 2.7175 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 396.9 AS sv_11, 14.7 AS sv_12 UNION ALL SELECT 27 AS sv_idx, -2.3562186096574572e-09 AS dual_coeff, 0.17783 AS sv_0, 0.0 AS sv_1, 9.69 AS sv_2, 0.0 AS sv_3, 0.585 AS sv_4, 5.569 AS sv_5, 73.5 AS sv_6, 2.3999 AS sv_7, 6.0 AS sv_8, 391.0 AS sv_9, 19.2 AS sv_10, 395.77 AS sv_11, 15.1 AS sv_12 UNION ALL SELECT 28 AS sv_idx, -3.2363131106677243e-10 AS dual_coeff, 0.08014 AS sv_0, 0.0 AS sv_1, 5.96 AS sv_2, 0.0 AS sv_3, 0.499 AS sv_4, 5.85 AS sv_5, 41.5 AS sv_6, 3.9342 AS sv_7, 5.0 AS sv_8, 279.0 AS sv_9, 19.2 AS sv_10, 396.9 AS sv_11, 8.77 AS sv_12 UNION ALL SELECT 29 AS sv_idx, -2.4165568011906165e-10 AS dual_coeff, 0.10084 AS sv_0, 0.0 AS sv_1, 10.01 AS sv_2, 0.0 AS sv_3, 0.547 AS sv_4, 6.715 AS sv_5, 81.6 AS sv_6, 2.6775 AS sv_7, 6.0 AS sv_8, 432.0 AS sv_9, 17.8 AS sv_10, 395.59 AS sv_11, 10.16 AS sv_12 UNION ALL SELECT 30 AS sv_idx, 2.6880598285408797e-10 AS dual_coeff, 0.19539 AS sv_0, 0.0 AS sv_1, 10.81 AS sv_2, 0.0 AS sv_3, 0.413 AS sv_4, 6.245 AS sv_5, 6.2 AS sv_6, 5.2873 AS sv_7, 4.0 AS sv_8, 305.0 AS sv_9, 19.2 AS sv_10, 377.17 AS sv_11, 7.54 AS sv_12 UNION ALL SELECT 31 AS sv_idx, 4.824240832551767e-09 AS dual_coeff, 0.12083 AS sv_0, 0.0 AS sv_1, 2.89 AS sv_2, 0.0 AS sv_3, 0.445 AS sv_4, 8.069 AS sv_5, 76.0 AS sv_6, 3.4952 AS sv_7, 2.0 AS sv_8, 276.0 AS sv_9, 18.0 AS sv_10, 396.9 AS sv_11, 4.21 AS sv_12 UNION ALL SELECT 32 AS sv_idx, 4.889659390474921e-10 AS dual_coeff, 6.71772 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.713 AS sv_4, 6.749 AS sv_5, 92.6 AS sv_6, 2.3236 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 0.32 AS sv_11, 17.44 AS sv_12 UNION ALL SELECT 33 AS sv_idx, -3.985882307774993e-09 AS dual_coeff, 9.59571 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.693 AS sv_4, 6.404 AS sv_5, 100.0 AS sv_6, 1.639 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 376.11 AS sv_11, 20.31 AS sv_12 UNION ALL SELECT 34 AS sv_idx, -7.255415648163502e-09 AS dual_coeff, 0.49298 AS sv_0, 0.0 AS sv_1, 9.9 AS sv_2, 0.0 AS sv_3, 0.544 AS sv_4, 6.635 AS sv_5, 82.5 AS sv_6, 3.3175 AS sv_7, 4.0 AS sv_8, 304.0 AS sv_9, 18.4 AS sv_10, 396.9 AS sv_11, 4.54 AS sv_12 UNION ALL SELECT 35 AS sv_idx, -1.4490186464117636e-10 AS dual_coeff, 15.1772 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.74 AS sv_4, 6.152 AS sv_5, 100.0 AS sv_6, 1.9142 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 9.32 AS sv_11, 26.45 AS sv_12) AS `Values`), 
kernel_dp AS 
(SELECT t.`KEY` AS `KEY`, t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.`KEY` AS `KEY`, sum(full_join_data_sv.dot_prod1) + 137.834417682856 AS dot_product 
FROM (SELECT kernel_input.`KEY` AS `KEY`, `SV_data`.dual_coeff * power(0.07692307692307693 * (kernel_input.`Feature_0` * `SV_data`.sv_0 + kernel_input.`Feature_1` * `SV_data`.sv_1 + kernel_input.`Feature_2` * `SV_data`.sv_2 + kernel_input.`Feature_3` * `SV_data`.sv_3 + kernel_input.`Feature_4` * `SV_data`.sv_4 + kernel_input.`Feature_5` * `SV_data`.sv_5 + kernel_input.`Feature_6` * `SV_data`.sv_6 + kernel_input.`Feature_7` * `SV_data`.sv_7 + kernel_input.`Feature_8` * `SV_data`.sv_8 + kernel_input.`Feature_9` * `SV_data`.sv_9 + kernel_input.`Feature_10` * `SV_data`.sv_10 + kernel_input.`Feature_11` * `SV_data`.sv_11 + kernel_input.`Feature_12` * `SV_data`.sv_12) + 0.0, 3) AS dot_prod1 
FROM kernel_input, `SV_data`) AS full_join_data_sv GROUP BY full_join_data_sv.`KEY`) AS t)
 SELECT kernel_dp.`KEY` AS `KEY`, kernel_dp.dot_product AS `Estimator` 
FROM kernel_dp