-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 5.21329007545e-11 AS dual_coeff, 17.8681314293 AS sv_0, 1485.9419331 AS sv_1, 0.0535957522929 AS sv_2, 6.34232576023 AS sv_3 UNION ALL SELECT 1 AS sv_idx, -1.0732360779e-11 AS dual_coeff, 8.56502637821 AS sv_0, 1167.17666686 AS sv_1, 0.215208534919 AS sv_2, 10.5232314385 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -1.07350908148e-09 AS dual_coeff, 16.0114685263 AS sv_0, 598.746972408 AS sv_1, 0.0583275057023 AS sv_2, 10.0658909995 AS sv_3 UNION ALL SELECT 3 AS sv_idx, -9.18653993728e-11 AS dual_coeff, 49.0654660084 AS sv_0, 1317.99656717 AS sv_1, 0.751473866077 AS sv_2, 2.3145116809 AS sv_3 UNION ALL SELECT 4 AS sv_idx, -3.84897584847e-11 AS dual_coeff, 89.7924036083 AS sv_0, 1393.00598758 AS sv_1, 0.848421537264 AS sv_2, 9.3495323077 AS sv_3 UNION ALL SELECT 5 AS sv_idx, 1.05986593921e-09 AS dual_coeff, 32.7589158153 AS sv_0, 576.508787996 AS sv_1, 0.79038869077 AS sv_2, 7.5859072771 AS sv_3 UNION ALL SELECT 6 AS sv_idx, 5.60659996206e-10 AS dual_coeff, 1.76023326649 AS sv_0, 822.96727437 AS sv_1, 0.926070399375 AS sv_2, 9.74865259645 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 1.02597760152e-10 AS dual_coeff, 79.1010960033 AS sv_0, 1315.28219222 AS sv_1, 0.986361848933 AS sv_2, 5.91147458801 AS sv_3 UNION ALL SELECT 8 AS sv_idx, -5.60659996206e-10 AS dual_coeff, 18.0268254446 AS sv_0, 861.288992046 AS sv_1, 0.102160257786 AS sv_2, 6.79847515228 AS sv_3) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 467.494218648 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * power(0.25 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3) + 0.0, 3) AS dot_prod1 
FROM freidman2 AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp