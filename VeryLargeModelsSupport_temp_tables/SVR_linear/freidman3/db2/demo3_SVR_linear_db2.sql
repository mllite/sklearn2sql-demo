-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_linear
-- Dataset : freidman3
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."TGT" AS DOUBLE) AS "TGT" 
FROM "FREIDMAN3" AS "ADS"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE) AS sv_0, CAST("Values".sv_1 AS DOUBLE) AS sv_1, CAST("Values".sv_2 AS DOUBLE) AS sv_2, CAST("Values".sv_3 AS DOUBLE) AS sv_3 
FROM (SELECT 0 AS sv_idx, -0.0005151850060619847 AS dual_coeff, 40.442330919192635 AS sv_0, 551.0711911042478 AS sv_1, 0.03866274947464787 AS sv_2, 4.578076302455036 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS sv_idx, -0.004158236926683148 AS dual_coeff, 38.24928980103384 AS sv_0, 135.90560294712617 AS sv_1, 0.6479362057456745 AS sv_2, 2.179461386442667 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS sv_idx, -0.00030815185949676553 AS dual_coeff, 56.48709973533751 AS sv_0, 1282.8666984094589 AS sv_1, 0.1679032802018684 AS sv_2, 4.671288394126134 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS sv_idx, -0.004611354917400281 AS dual_coeff, 99.96662363577734 AS sv_0, 209.47236840414524 AS sv_1, 0.7902072202716324 AS sv_2, 1.8022959941601326 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS sv_idx, -0.00030297462649771 AS dual_coeff, 38.96738973035813 AS sv_0, 1162.8273648517609 AS sv_1, 0.013518045508856713 AS sv_2, 6.780775777362427 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS sv_idx, -0.04056798901408041 AS dual_coeff, 14.354024845151192 AS sv_0, 1727.5875493321003 AS sv_1, 0.005807417979881824 AS sv_2, 3.518415193774599 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS sv_idx, 0.00030815185949676553 AS dual_coeff, 5.555683279187528 AS sv_0, 1271.8773900420756 AS sv_1, 0.26523222910347455 AS sv_2, 2.1959763981915064 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS sv_idx, 0.0005151850060619847 AS dual_coeff, 0.11836099216243623 AS sv_0, 559.8947439915403 AS sv_1, 0.995587810764828 AS sv_2, 8.379542913119769 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS sv_idx, 0.04407221884903289 AS dual_coeff, 35.204122625647635 AS sv_0, 1709.6137391765267 AS sv_1, 0.5384102305994837 AS sv_2, 3.8037750547337037 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS sv_idx, -0.0002463939737039072 AS dual_coeff, 49.3998858198411 AS sv_0, 243.93515665851513 AS sv_1, 0.41374778042760696 AS sv_2, 6.0193130914022674 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS sv_idx, 0.009015985817787339 AS dual_coeff, 1.5021310253122144 AS sv_0, 126.64944659397821 AS sv_1, 0.3404027104874394 AS sv_2, 9.813039096423058 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS sv_idx, -0.0032012552084547865 AS dual_coeff, 89.79240360827384 AS sv_0, 1393.0059875788913 AS sv_1, 0.8484215372640762 AS sv_2, 9.34953230770002 AS sv_3 FROM SYSIBM.SYSDUMMY1) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE)) + -1.375206508964953 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp