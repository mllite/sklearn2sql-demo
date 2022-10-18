-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_rbf
-- Dataset : freidman3
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."TGT" AS DOUBLE) AS "TGT" 
FROM freidman3 AS "ADS"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.1 AS dual_coeff, 20.562836726629964 AS sv_0, 1667.9257595716754 AS sv_1, 0.4895624792598544 AS sv_2, 7.371731407367831 AS sv_3 UNION ALL SELECT 1 AS sv_idx, -0.1 AS dual_coeff, 40.442330919192635 AS sv_0, 551.0711911042478 AS sv_1, 0.03866274947464787 AS sv_2, 4.578076302455036 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -0.07763723262797043 AS dual_coeff, 48.40695232096023 AS sv_0, 1631.018157352114 AS sv_1, 0.12706925899257115 AS sv_2, 4.261898976946841 AS sv_3 UNION ALL SELECT 3 AS sv_idx, -0.1 AS dual_coeff, 38.24928980103384 AS sv_0, 135.90560294712617 AS sv_1, 0.6479362057456745 AS sv_2, 2.179461386442667 AS sv_3 UNION ALL SELECT 4 AS sv_idx, -0.1 AS dual_coeff, 56.48709973533751 AS sv_0, 1282.8666984094589 AS sv_1, 0.1679032802018684 AS sv_2, 4.671288394126134 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -0.1 AS dual_coeff, 50.620296436646505 AS sv_0, 412.32368442868733 AS sv_1, 0.10447729455745358 AS sv_2, 2.8853801455282126 AS sv_3 UNION ALL SELECT 6 AS sv_idx, 0.1 AS dual_coeff, 9.02119007427775 AS sv_0, 496.38824586501664 AS sv_1, 0.4231538473843591 AS sv_2, 8.540239837506533 AS sv_3 UNION ALL SELECT 7 AS sv_idx, -0.1 AS dual_coeff, 99.96662363577734 AS sv_0, 209.47236840414524 AS sv_1, 0.7902072202716324 AS sv_2, 1.8022959941601326 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 0.1 AS dual_coeff, 6.292766107513681 AS sv_0, 1199.6652317213232 AS sv_1, 0.8040097090382655 AS sv_2, 5.490646907281224 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -0.1 AS dual_coeff, 62.911872734919996 AS sv_0, 456.23422619927044 AS sv_1, 0.054305830277497025 AS sv_2, 10.085281642538757 AS sv_3 UNION ALL SELECT 10 AS sv_idx, -0.1 AS dual_coeff, 38.96738973035813 AS sv_0, 1162.8273648517609 AS sv_1, 0.013518045508856713 AS sv_2, 6.780775777362427 AS sv_3 UNION ALL SELECT 11 AS sv_idx, 0.1 AS dual_coeff, 15.860104687264842 AS sv_0, 940.7646066666929 AS sv_1, 0.5770564111785556 AS sv_2, 10.338494091923241 AS sv_3 UNION ALL SELECT 12 AS sv_idx, -0.1 AS dual_coeff, 61.677300727460114 AS sv_0, 819.5815430545475 AS sv_1, 0.19176235240070616 AS sv_2, 8.475580701491157 AS sv_3 UNION ALL SELECT 13 AS sv_idx, -0.1 AS dual_coeff, 14.354024845151192 AS sv_0, 1727.5875493321003 AS sv_1, 0.005807417979881824 AS sv_2, 3.518415193774599 AS sv_3 UNION ALL SELECT 14 AS sv_idx, -0.1 AS dual_coeff, 87.46073175788041 AS sv_0, 658.8446347865661 AS sv_1, 0.30293111693014707 AS sv_2, 3.766979759593161 AS sv_3 UNION ALL SELECT 15 AS sv_idx, 0.1 AS dual_coeff, 40.27856713793895 AS sv_0, 366.2162846523089 AS sv_1, 0.9966853241577984 AS sv_2, 1.656986931673732 AS sv_3 UNION ALL SELECT 16 AS sv_idx, 0.1 AS dual_coeff, 0.11836099216243623 AS sv_0, 559.8947439915403 AS sv_1, 0.995587810764828 AS sv_2, 8.379542913119769 AS sv_3 UNION ALL SELECT 17 AS sv_idx, 0.1 AS dual_coeff, 20.778030637448996 AS sv_0, 848.8478666076559 AS sv_1, 0.6660011390251719 AS sv_2, 8.384615882629802 AS sv_3 UNION ALL SELECT 18 AS sv_idx, 0.1 AS dual_coeff, 9.844209111159174 AS sv_0, 1641.9469469028431 AS sv_1, 0.7075346096235595 AS sv_2, 5.986957496499917 AS sv_3 UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, 69.12110117232672 AS sv_0, 1206.1440502200699 AS sv_1, 0.2510397707351385 AS sv_2, 5.048716496806546 AS sv_3 UNION ALL SELECT 20 AS sv_idx, 0.1 AS dual_coeff, 25.282852707475843 AS sv_0, 524.0089478061485 AS sv_1, 0.6487598477422791 AS sv_2, 3.818865078416276 AS sv_3 UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, 96.45390231426003 AS sv_0, 990.2254318826166 AS sv_1, 0.18310123438213766 AS sv_2, 1.134096666285749 AS sv_3 UNION ALL SELECT 22 AS sv_idx, 0.07763723262797044 AS dual_coeff, 28.332097756867146 AS sv_0, 946.9080883858652 AS sv_1, 0.6508068217649317 AS sv_2, 9.247059834072795 AS sv_3 UNION ALL SELECT 23 AS sv_idx, -0.1 AS dual_coeff, 49.3998858198411 AS sv_0, 243.93515665851513 AS sv_1, 0.41374778042760696 AS sv_2, 6.0193130914022674 AS sv_3 UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, 15.326716261726414 AS sv_0, 180.5390310694927 AS sv_1, 0.7104185591645422 AS sv_2, 9.612317521518237 AS sv_3 UNION ALL SELECT 25 AS sv_idx, -0.1 AS dual_coeff, 91.36045636770356 AS sv_0, 303.1369476103539 AS sv_1, 0.5593024980266833 AS sv_2, 3.665227001304319 AS sv_3 UNION ALL SELECT 26 AS sv_idx, 0.1 AS dual_coeff, 28.195299489394664 AS sv_0, 1658.7104507269821 AS sv_1, 0.6353041988507154 AS sv_2, 8.577711433319472 AS sv_3 UNION ALL SELECT 27 AS sv_idx, -0.1 AS dual_coeff, 78.24559083961029 AS sv_0, 711.0171497771485 AS sv_1, 0.21965300342994898 AS sv_2, 9.625089118836724 AS sv_3 UNION ALL SELECT 28 AS sv_idx, -0.1 AS dual_coeff, 68.93874612467783 AS sv_0, 576.2510600295009 AS sv_1, 0.23995122524602408 AS sv_2, 7.786878726514889 AS sv_3 UNION ALL SELECT 29 AS sv_idx, -0.1 AS dual_coeff, 17.868131429293165 AS sv_0, 1485.9419331014494 AS sv_1, 0.05359575229286839 AS sv_2, 6.342325760231504 AS sv_3 UNION ALL SELECT 30 AS sv_idx, -0.1 AS dual_coeff, 76.49456162036661 AS sv_0, 219.86925500897718 AS sv_1, 0.7651752581595906 AS sv_2, 6.7113407760374235 AS sv_3 UNION ALL SELECT 31 AS sv_idx, -0.1 AS dual_coeff, 41.58280576983873 AS sv_0, 435.19550661562505 AS sv_1, 0.09995386118122851 AS sv_2, 2.4819345970599818 AS sv_3 UNION ALL SELECT 32 AS sv_idx, 0.1 AS dual_coeff, 0.14719983074734655 AS sv_0, 264.70492824904755 AS sv_1, 0.4977162892084863 AS sv_2, 8.753034147728435 AS sv_3 UNION ALL SELECT 33 AS sv_idx, 0.1 AS dual_coeff, 1.5021310253122144 AS sv_0, 126.64944659397821 AS sv_1, 0.3404027104874394 AS sv_2, 9.813039096423058 AS sv_3 UNION ALL SELECT 34 AS sv_idx, -0.1 AS dual_coeff, 16.01146852626628 AS sv_0, 598.7469724076399 AS sv_1, 0.058327505702267746 AS sv_2, 10.06589099949547 AS sv_3 UNION ALL SELECT 35 AS sv_idx, 0.1 AS dual_coeff, 9.573211516810986 AS sv_0, 1051.2031635481942 AS sv_1, 0.6197110340276971 AS sv_2, 8.322296500143658 AS sv_3 UNION ALL SELECT 36 AS sv_idx, 0.1 AS dual_coeff, 2.9026452288315685 AS sv_0, 1087.8858946398773 AS sv_1, 0.43123186558465754 AS sv_2, 10.05872173627677 AS sv_3 UNION ALL SELECT 37 AS sv_idx, 0.1 AS dual_coeff, 32.75891581529139 AS sv_0, 576.5087879963894 AS sv_1, 0.7903886907696169 AS sv_2, 7.585907277097894 AS sv_3 UNION ALL SELECT 38 AS sv_idx, 0.1 AS dual_coeff, 1.7602332664928388 AS sv_0, 822.9672743702864 AS sv_1, 0.9260703993753714 AS sv_2, 9.748652596447922 AS sv_3 UNION ALL SELECT 39 AS sv_idx, 0.1 AS dual_coeff, 19.75869393049412 AS sv_0, 272.21600506246267 AS sv_1, 0.44963351204713553 AS sv_2, 1.8639297884180575 AS sv_3 UNION ALL SELECT 40 AS sv_idx, 0.1 AS dual_coeff, 34.99225156681424 AS sv_0, 681.5157838950514 AS sv_1, 0.6131936495952924 AS sv_2, 10.986250457514332 AS sv_3 UNION ALL SELECT 41 AS sv_idx, 0.1 AS dual_coeff, 33.901119947237255 AS sv_0, 988.5041485863671 AS sv_1, 0.9645023555462153 AS sv_2, 2.81120906171767 AS sv_3) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE)) + 1.3608127242591626 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * exp(least(100.0, greatest(-100.0, -1.159796590742935e-06 * (power(kernel_input."Feature_0" - "SV_data".sv_0, 2) + power(kernel_input."Feature_1" - "SV_data".sv_1, 2) + power(kernel_input."Feature_2" - "SV_data".sv_2, 2) + power(kernel_input."Feature_3" - "SV_data".sv_3, 2))))) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp