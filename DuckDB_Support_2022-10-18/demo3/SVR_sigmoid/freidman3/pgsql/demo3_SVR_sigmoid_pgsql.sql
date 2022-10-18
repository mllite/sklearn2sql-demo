-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_sigmoid
-- Dataset : freidman3
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."TGT" AS FLOAT) AS "TGT" 
FROM freidman3 AS "ADS"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.1 AS dual_coeff, 54.38834102865398 AS sv_0, 1647.6623950430826 AS sv_1, 0.5671724252803599 AS sv_2, 3.09911625029609 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.1 AS dual_coeff, 20.562836726629964 AS sv_0, 1667.9257595716754 AS sv_1, 0.4895624792598544 AS sv_2, 7.371731407367831 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -0.1 AS dual_coeff, 40.442330919192635 AS sv_0, 551.0711911042478 AS sv_1, 0.03866274947464787 AS sv_2, 4.578076302455036 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 0.1 AS dual_coeff, 48.69438373960177 AS sv_0, 1664.2552781105514 AS sv_1, 0.31144836807627496 AS sv_2, 4.632624341589297 AS sv_3 UNION ALL SELECT 4 AS sv_idx, 0.1 AS dual_coeff, 44.88554870850716 AS sv_0, 1627.38160654522 AS sv_1, 0.8255815423347828 AS sv_2, 10.063448888684775 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -0.1 AS dual_coeff, 50.620296436646505 AS sv_0, 412.32368442868733 AS sv_1, 0.10447729455745358 AS sv_2, 2.8853801455282126 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -0.1 AS dual_coeff, 82.50361197375535 AS sv_0, 515.4406205692956 AS sv_1, 0.533834716927703 AS sv_2, 4.786980133087125 AS sv_3 UNION ALL SELECT 7 AS sv_idx, -0.1 AS dual_coeff, 99.96662363577734 AS sv_0, 209.47236840414524 AS sv_1, 0.7902072202716324 AS sv_2, 1.8022959941601326 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 0.1 AS dual_coeff, 6.292766107513681 AS sv_0, 1199.6652317213232 AS sv_1, 0.8040097090382655 AS sv_2, 5.490646907281224 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -0.1 AS dual_coeff, 62.911872734919996 AS sv_0, 456.23422619927044 AS sv_1, 0.054305830277497025 AS sv_2, 10.085281642538757 AS sv_3 UNION ALL SELECT 10 AS sv_idx, -0.1 AS dual_coeff, 38.96738973035813 AS sv_0, 1162.8273648517609 AS sv_1, 0.013518045508856713 AS sv_2, 6.780775777362427 AS sv_3 UNION ALL SELECT 11 AS sv_idx, -0.1 AS dual_coeff, 61.677300727460114 AS sv_0, 819.5815430545475 AS sv_1, 0.19176235240070616 AS sv_2, 8.475580701491157 AS sv_3 UNION ALL SELECT 12 AS sv_idx, -0.1 AS dual_coeff, 14.354024845151192 AS sv_0, 1727.5875493321003 AS sv_1, 0.005807417979881824 AS sv_2, 3.518415193774599 AS sv_3 UNION ALL SELECT 13 AS sv_idx, -0.1 AS dual_coeff, 87.46073175788041 AS sv_0, 658.8446347865661 AS sv_1, 0.30293111693014707 AS sv_2, 3.766979759593161 AS sv_3 UNION ALL SELECT 14 AS sv_idx, 0.1 AS dual_coeff, 5.555683279187528 AS sv_0, 1271.8773900420756 AS sv_1, 0.26523222910347455 AS sv_2, 2.1959763981915064 AS sv_3 UNION ALL SELECT 15 AS sv_idx, 0.1 AS dual_coeff, 60.58860696643238 AS sv_0, 1469.843035787915 AS sv_1, 0.6089512168171621 AS sv_2, 2.3367948536223095 AS sv_3 UNION ALL SELECT 16 AS sv_idx, 0.1 AS dual_coeff, 9.844209111159174 AS sv_0, 1641.9469469028431 AS sv_1, 0.7075346096235595 AS sv_2, 5.986957496499917 AS sv_3 UNION ALL SELECT 17 AS sv_idx, 0.1 AS dual_coeff, 35.204122625647635 AS sv_0, 1709.6137391765267 AS sv_1, 0.5384102305994837 AS sv_2, 3.8037750547337037 AS sv_3 UNION ALL SELECT 18 AS sv_idx, -0.1 AS dual_coeff, 96.45390231426003 AS sv_0, 990.2254318826166 AS sv_1, 0.18310123438213766 AS sv_2, 1.134096666285749 AS sv_3 UNION ALL SELECT 19 AS sv_idx, 0.1 AS dual_coeff, 69.85214811522404 AS sv_0, 1639.1260281796144 AS sv_1, 0.4296756544509407 AS sv_2, 7.464140755060015 AS sv_3 UNION ALL SELECT 20 AS sv_idx, 0.1 AS dual_coeff, 39.22420371373826 AS sv_0, 1480.0362298674247 AS sv_1, 0.979651504500836 AS sv_2, 10.93827839877219 AS sv_3 UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, 49.3998858198411 AS sv_0, 243.93515665851513 AS sv_1, 0.41374778042760696 AS sv_2, 6.0193130914022674 AS sv_3 UNION ALL SELECT 22 AS sv_idx, 0.1 AS dual_coeff, 15.326716261726414 AS sv_0, 180.5390310694927 AS sv_1, 0.7104185591645422 AS sv_2, 9.612317521518237 AS sv_3 UNION ALL SELECT 23 AS sv_idx, -0.1 AS dual_coeff, 75.72356153727631 AS sv_0, 979.5390758373206 AS sv_1, 0.3441595308948491 AS sv_2, 6.689958461053408 AS sv_3 UNION ALL SELECT 24 AS sv_idx, -0.1 AS dual_coeff, 91.36045636770356 AS sv_0, 303.1369476103539 AS sv_1, 0.5593024980266833 AS sv_2, 3.665227001304319 AS sv_3 UNION ALL SELECT 25 AS sv_idx, -0.1 AS dual_coeff, 72.53396569676332 AS sv_0, 405.5391157928623 AS sv_1, 0.5709666936221692 AS sv_2, 6.973867159743634 AS sv_3 UNION ALL SELECT 26 AS sv_idx, 0.1 AS dual_coeff, 45.60940687108932 AS sv_0, 1252.3574286270157 AS sv_1, 0.7470342432713207 AS sv_2, 1.6312457787809178 AS sv_3 UNION ALL SELECT 27 AS sv_idx, 0.1 AS dual_coeff, 28.195299489394664 AS sv_0, 1658.7104507269821 AS sv_1, 0.6353041988507154 AS sv_2, 8.577711433319472 AS sv_3 UNION ALL SELECT 28 AS sv_idx, -0.1 AS dual_coeff, 78.24559083961029 AS sv_0, 711.0171497771485 AS sv_1, 0.21965300342994898 AS sv_2, 9.625089118836724 AS sv_3 UNION ALL SELECT 29 AS sv_idx, 0.1 AS dual_coeff, 11.920432983287899 AS sv_0, 1644.054573840725 AS sv_1, 0.044505714773144245 AS sv_2, 1.9788585131261551 AS sv_3 UNION ALL SELECT 30 AS sv_idx, -0.1 AS dual_coeff, 68.93874612467783 AS sv_0, 576.2510600295009 AS sv_1, 0.23995122524602408 AS sv_2, 7.786878726514889 AS sv_3 UNION ALL SELECT 31 AS sv_idx, 0.1 AS dual_coeff, 43.578536957972446 AS sv_0, 1663.9708446048005 AS sv_1, 0.41510811578335083 AS sv_2, 3.0852135693019114 AS sv_3 UNION ALL SELECT 32 AS sv_idx, -0.1 AS dual_coeff, 76.49456162036661 AS sv_0, 219.86925500897718 AS sv_1, 0.7651752581595906 AS sv_2, 6.7113407760374235 AS sv_3 UNION ALL SELECT 33 AS sv_idx, -0.1 AS dual_coeff, 41.58280576983873 AS sv_0, 435.19550661562505 AS sv_1, 0.09995386118122851 AS sv_2, 2.4819345970599818 AS sv_3 UNION ALL SELECT 34 AS sv_idx, 0.1 AS dual_coeff, 0.14719983074734655 AS sv_0, 264.70492824904755 AS sv_1, 0.4977162892084863 AS sv_2, 8.753034147728435 AS sv_3 UNION ALL SELECT 35 AS sv_idx, 0.1 AS dual_coeff, 1.5021310253122144 AS sv_0, 126.64944659397821 AS sv_1, 0.3404027104874394 AS sv_2, 9.813039096423058 AS sv_3 UNION ALL SELECT 36 AS sv_idx, -0.1 AS dual_coeff, 16.01146852626628 AS sv_0, 598.7469724076399 AS sv_1, 0.058327505702267746 AS sv_2, 10.06589099949547 AS sv_3 UNION ALL SELECT 37 AS sv_idx, 0.1 AS dual_coeff, 49.065466008392974 AS sv_0, 1317.9965671708464 AS sv_1, 0.7514738660771196 AS sv_2, 2.3145116809009814 AS sv_3 UNION ALL SELECT 38 AS sv_idx, 0.1 AS dual_coeff, 89.79240360827384 AS sv_0, 1393.0059875788913 AS sv_1, 0.8484215372640762 AS sv_2, 9.34953230770002 AS sv_3 UNION ALL SELECT 39 AS sv_idx, -0.1 AS dual_coeff, 48.144031373730044 AS sv_0, 761.0600872268959 AS sv_1, 0.307483000073309 AS sv_2, 1.151070185174692 AS sv_3 UNION ALL SELECT 40 AS sv_idx, 0.1 AS dual_coeff, 79.10109600325073 AS sv_0, 1315.2821922174621 AS sv_1, 0.9863618489333056 AS sv_2, 5.911474588008384 AS sv_3 UNION ALL SELECT 41 AS sv_idx, -0.1 AS dual_coeff, 18.02682544461097 AS sv_0, 861.2889920462572 AS sv_1, 0.10216025778626836 AS sv_2, 6.7984751522819336 AS sv_3) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 0.9721567367462156 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * ((exp(1.159796590742935e-06 * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3) + 0.0) - exp(-(1.159796590742935e-06 * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3) + 0.0))) / (exp(1.159796590742935e-06 * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3) + 0.0) + exp(-(1.159796590742935e-06 * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3) + 0.0)))) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp