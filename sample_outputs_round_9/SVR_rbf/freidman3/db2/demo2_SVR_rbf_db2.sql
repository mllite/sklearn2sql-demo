-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.0606268344573 AS dual_coeff, 8.56502637821 AS sv_0, 1167.17666686 AS sv_1, 0.215208534919 AS sv_2, 10.5232314385 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS sv_idx, -0.131877312189 AS dual_coeff, 76.4945616204 AS sv_0, 219.869255009 AS sv_1, 0.76517525816 AS sv_2, 6.71134077604 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS sv_idx, -0.468711493374 AS dual_coeff, 41.5828057698 AS sv_0, 435.195506616 AS sv_1, 0.0999538611812 AS sv_2, 2.48193459706 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS sv_idx, 0.093321257114 AS dual_coeff, 0.147199830747 AS sv_0, 264.704928249 AS sv_1, 0.497716289208 AS sv_2, 8.75303414773 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS sv_idx, 0.0598666969697 AS dual_coeff, 1.50213102531 AS sv_0, 126.649446594 AS sv_1, 0.340402710487 AS sv_2, 9.81303909642 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS sv_idx, 0.00224373093198 AS dual_coeff, 69.5835396162 AS sv_0, 945.381798262 AS sv_1, 0.793718799817 AS sv_2, 10.6787002731 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS sv_idx, -0.135441530418 AS dual_coeff, 16.0114685263 AS sv_0, 598.746972408 AS sv_1, 0.0583275057023 AS sv_2, 10.0658909995 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS sv_idx, 0.08017992357 AS dual_coeff, 9.57321151681 AS sv_0, 1051.20316355 AS sv_1, 0.619711034028 AS sv_2, 8.32229650014 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS sv_idx, 0.0452133191059 AS dual_coeff, 49.0654660084 AS sv_0, 1317.99656717 AS sv_1, 0.751473866077 AS sv_2, 2.3145116809 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS sv_idx, 0.0885247285377 AS dual_coeff, 2.90264522883 AS sv_0, 1087.88589464 AS sv_1, 0.431231865585 AS sv_2, 10.0587217363 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS sv_idx, 0.0183438481515 AS dual_coeff, 89.7924036083 AS sv_0, 1393.00598758 AS sv_1, 0.848421537264 AS sv_2, 9.3495323077 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS sv_idx, 0.0171229252613 AS dual_coeff, 78.0336420374 AS sv_0, 1032.47929511 AS sv_1, 0.972339378695 AS sv_2, 1.23044223996 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS sv_idx, 0.0230936384951 AS dual_coeff, 32.7589158153 AS sv_0, 576.508787996 AS sv_1, 0.79038869077 AS sv_2, 7.5859072771 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS sv_idx, 0.0925529468044 AS dual_coeff, 1.76023326649 AS sv_0, 822.96727437 AS sv_1, 0.926070399375 AS sv_2, 9.74865259645 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS sv_idx, 0.0339664018381 AS dual_coeff, 79.1010960033 AS sv_0, 1315.28219222 AS sv_1, 0.986361848933 AS sv_2, 5.91147458801 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS sv_idx, 0.0106354351043 AS dual_coeff, 34.9922515668 AS sv_0, 681.515783895 AS sv_1, 0.613193649595 AS sv_2, 10.9862504575 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS sv_idx, 0.0510069933029 AS dual_coeff, 33.8578684927 AS sv_0, 1044.67493024 AS sv_1, 0.750339724436 AS sv_2, 1.3220343398 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS sv_idx, 0.0593316563375 AS dual_coeff, 33.9011199472 AS sv_0, 988.504148586 AS sv_1, 0.964502355546 AS sv_2, 2.81120906172 AS sv_3 FROM SYSIBM.SYSDUMMY1) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 1.37618459351 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * exp(-0.25 * (power("ADS"."Feature_0" - "SV_data".sv_0, 2) + power("ADS"."Feature_1" - "SV_data".sv_1, 2) + power("ADS"."Feature_2" - "SV_data".sv_2, 2) + power("ADS"."Feature_3" - "SV_data".sv_3, 2))) AS dot_prod1 
FROM freidman3 AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp