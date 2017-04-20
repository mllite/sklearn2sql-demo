-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `SV_data` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, -4.71647525119e-10 AS dual_coeff, 66.9328436704 AS sv_0, 343.320687085 AS sv_1, 0.682659795355 AS sv_2, 9.13846586597 AS sv_3 UNION ALL SELECT 1 AS sv_idx, -7.18141686612e-12 AS dual_coeff, 99.0406083369 AS sv_0, 1505.00036561 AS sv_1, 0.165712400817 AS sv_2, 8.93980233659 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -1.4089288873e-11 AS dual_coeff, 96.7140207925 AS sv_0, 1552.84297504 AS sv_1, 0.632037538888 AS sv_2, 8.43407361059 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 9.26981077961e-11 AS dual_coeff, 69.516345205 AS sv_0, 312.019102007 AS sv_1, 0.884502850735 AS sv_2, 6.48661554899 AS sv_3 UNION ALL SELECT 4 AS sv_idx, -1.56486911795e-08 AS dual_coeff, 9.8252237916 AS sv_0, 210.540879859 AS sv_1, 0.100490941303 AS sv_2, 4.46728094806 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -3.74811014555e-14 AS dual_coeff, 43.7260418335 AS sv_0, 1320.74478545 AS sv_1, 0.356219664692 AS sv_2, 9.69637306514 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -3.15943773495e-09 AS dual_coeff, 92.6523975046 AS sv_0, 958.419561375 AS sv_1, 0.630742048835 AS sv_2, 5.76474428838 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 2.76776423991e-10 AS dual_coeff, 46.7003140866 AS sv_0, 1743.40781116 AS sv_1, 0.787152101549 AS sv_2, 6.81335677522 AS sv_3 UNION ALL SELECT 8 AS sv_idx, -2.87478083249e-08 AS dual_coeff, 65.3144557758 AS sv_0, 201.67837507 AS sv_1, 0.0668121655526 AS sv_2, 3.11440208104 AS sv_3 UNION ALL SELECT 9 AS sv_idx, 6.2023161502e-10 AS dual_coeff, 81.6633364197 AS sv_0, 1730.18377728 AS sv_1, 0.612716746763 AS sv_2, 6.29040902294 AS sv_3 UNION ALL SELECT 10 AS sv_idx, -1.44120408142e-12 AS dual_coeff, 29.6857862679 AS sv_0, 1521.70455205 AS sv_1, 0.80935695738 AS sv_2, 4.3901506392 AS sv_3 UNION ALL SELECT 11 AS sv_idx, -3.39157383179e-12 AS dual_coeff, 46.5711479514 AS sv_0, 1024.05251853 AS sv_1, 0.409433476848 AS sv_2, 3.04244263542 AS sv_3 UNION ALL SELECT 12 AS sv_idx, -1.26608417093e-11 AS dual_coeff, 11.187807931 AS sv_0, 1465.58059398 AS sv_1, 0.457618179125 AS sv_2, 2.70321917488 AS sv_3 UNION ALL SELECT 13 AS sv_idx, -2.4079925449e-11 AS dual_coeff, 72.7444149697 AS sv_0, 1644.34766241 AS sv_1, 0.764778108137 AS sv_2, 2.88367592119 AS sv_3 UNION ALL SELECT 14 AS sv_idx, -5.47698640624e-12 AS dual_coeff, 41.1015254455 AS sv_0, 994.588189159 AS sv_1, 0.130765559895 AS sv_2, 1.76858261146 AS sv_3 UNION ALL SELECT 15 AS sv_idx, -7.50128150134e-10 AS dual_coeff, 26.2486900881 AS sv_0, 1725.96971764 AS sv_1, 0.630930824316 AS sv_2, 6.2726831636 AS sv_3 UNION ALL SELECT 16 AS sv_idx, -8.51100722172e-10 AS dual_coeff, 71.388836164 AS sv_0, 957.03065834 AS sv_1, 0.232731407932 AS sv_2, 10.1613804504 AS sv_3 UNION ALL SELECT 17 AS sv_idx, 5.93164379511e-10 AS dual_coeff, 74.555253266 AS sv_0, 329.507154747 AS sv_1, 0.881886131144 AS sv_2, 2.58301765542 AS sv_3 UNION ALL SELECT 18 AS sv_idx, 5.2317816546e-11 AS dual_coeff, 94.7265151533 AS sv_0, 786.813476236 AS sv_1, 0.423536383299 AS sv_2, 6.79289357078 AS sv_3 UNION ALL SELECT 19 AS sv_idx, 3.96624560667e-08 AS dual_coeff, 73.2976597187 AS sv_0, 175.520019395 AS sv_1, 0.797127156927 AS sv_2, 6.81013963603 AS sv_3 UNION ALL SELECT 20 AS sv_idx, 3.98943220567e-09 AS dual_coeff, 88.1698963736 AS sv_0, 960.352781123 AS sv_1, 0.910388593538 AS sv_2, 7.282773976 AS sv_3 UNION ALL SELECT 21 AS sv_idx, 8.5211085525e-08 AS dual_coeff, 31.7134679875 AS sv_0, 446.189678433 AS sv_1, 0.947487906615 AS sv_2, 9.29318291531 AS sv_3 UNION ALL SELECT 22 AS sv_idx, -7.45802889065e-13 AS dual_coeff, 2.72326671354 AS sv_0, 985.898055813 AS sv_1, 0.262448592152 AS sv_2, 10.1779888234 AS sv_3 UNION ALL SELECT 23 AS sv_idx, -4.90062564504e-09 AS dual_coeff, 70.6851344508 AS sv_0, 249.632338878 AS sv_1, 0.52208215399 AS sv_2, 10.9575068411 AS sv_3 UNION ALL SELECT 24 AS sv_idx, -5.2317816546e-11 AS dual_coeff, 9.9272800356 AS sv_0, 793.142637804 AS sv_1, 0.388664165597 AS sv_2, 5.13308998444 AS sv_3 UNION ALL SELECT 25 AS sv_idx, 3.39157383179e-12 AS dual_coeff, 24.1024626559 AS sv_0, 1045.29549551 AS sv_1, 0.854512671772 AS sv_2, 4.20777910341 AS sv_3 UNION ALL SELECT 26 AS sv_idx, 6.77471069391e-11 AS dual_coeff, 19.044932414 AS sv_0, 683.573828946 AS sv_1, 0.746662406638 AS sv_2, 2.4402570134 AS sv_3 UNION ALL SELECT 27 AS sv_idx, -8.61370907676e-11 AS dual_coeff, 74.0366504906 AS sv_0, 1645.21875648 AS sv_1, 0.55570307651 AS sv_2, 2.21876073937 AS sv_3 UNION ALL SELECT 28 AS sv_idx, -2.14214962187e-10 AS dual_coeff, 22.7376866371 AS sv_0, 290.522642405 AS sv_1, 0.495378830835 AS sv_2, 8.01336582906 AS sv_3 UNION ALL SELECT 29 AS sv_idx, -6.77471069391e-11 AS dual_coeff, 62.453010566 AS sv_0, 665.964499879 AS sv_1, 0.11637567637 AS sv_2, 5.8541755992 AS sv_3 UNION ALL SELECT 30 AS sv_idx, 2.64311488154e-11 AS dual_coeff, 2.35817445231 AS sv_0, 912.376717352 AS sv_1, 0.927526686139 AS sv_2, 10.1377366647 AS sv_3 UNION ALL SELECT 31 AS sv_idx, 9.63437088339e-09 AS dual_coeff, 47.0290188731 AS sv_0, 235.564088517 AS sv_1, 0.910051430261 AS sv_2, 8.52988852085 AS sv_3 UNION ALL SELECT 32 AS sv_idx, -8.5211085525e-08 AS dual_coeff, 38.246587562 AS sv_0, 448.385974934 AS sv_1, 0.225617406214 AS sv_2, 9.5635569585 AS sv_3 UNION ALL SELECT 33 AS sv_idx, -5.65487031024e-14 AS dual_coeff, 41.5618640745 AS sv_0, 1353.03542454 AS sv_1, 0.26583175901 AS sv_2, 3.87904882894 AS sv_3) AS `Values`), 
kernel_cte AS 
(SELECT t.`KEY` AS `KEY`, t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.`KEY` AS `KEY`, sum(full_join_data_sv.dot_prod1) + -95.9400239609 AS dot_product 
FROM (SELECT `ADS`.`KEY` AS `KEY`, `SV_data`.dual_coeff * power(0.25 * (`ADS`.`Feature_0` * `SV_data`.sv_0 + `ADS`.`Feature_1` * `SV_data`.sv_1 + `ADS`.`Feature_2` * `SV_data`.sv_2 + `ADS`.`Feature_3` * `SV_data`.sv_3) + 0.0, 3) AS dot_prod1 
FROM freidman2 AS `ADS`, `SV_data`) AS full_join_data_sv GROUP BY full_join_data_sv.`KEY`) AS t)
 SELECT kernel_cte.`KEY` AS `KEY`, kernel_cte.dot_product AS `Estimator` 
FROM kernel_cte