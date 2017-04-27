-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9, "Values".sv_10 AS sv_10, "Values".sv_11 AS sv_11, "Values".sv_12 AS sv_12, "Values".sv_13 AS sv_13, "Values".sv_14 AS sv_14, "Values".sv_15 AS sv_15, "Values".sv_16 AS sv_16, "Values".sv_17 AS sv_17, "Values".sv_18 AS sv_18, "Values".sv_19 AS sv_19, "Values".sv_20 AS sv_20, "Values".sv_21 AS sv_21, "Values".sv_22 AS sv_22, "Values".sv_23 AS sv_23, "Values".sv_24 AS sv_24, "Values".sv_25 AS sv_25, "Values".sv_26 AS sv_26, "Values".sv_27 AS sv_27, "Values".sv_28 AS sv_28, "Values".sv_29 AS sv_29 
FROM (SELECT 0 AS sv_idx, -7.48527553831e-12 AS dual_coeff, 14.99 AS sv_0, 25.2 AS sv_1, 95.54 AS sv_2, 698.8 AS sv_3, 0.09387 AS sv_4, 0.05131 AS sv_5, 0.02398 AS sv_6, 0.02899 AS sv_7, 0.1565 AS sv_8, 0.05504 AS sv_9, 1.214 AS sv_10, 2.188 AS sv_11, 8.077 AS sv_12, 106.0 AS sv_13, 0.006883 AS sv_14, 0.01094 AS sv_15, 0.01818 AS sv_16, 0.01917 AS sv_17, 0.007882 AS sv_18, 0.001754 AS sv_19, 14.99 AS sv_20, 25.2 AS sv_21, 95.54 AS sv_22, 698.8 AS sv_23, 0.09387 AS sv_24, 0.05131 AS sv_25, 0.02398 AS sv_26, 0.02899 AS sv_27, 0.1565 AS sv_28, 0.05504 AS sv_29 FROM DUAL UNION ALL SELECT 1 AS sv_idx, -1.50904597883e-09 AS dual_coeff, 11.76 AS sv_0, 18.14 AS sv_1, 75.0 AS sv_2, 431.1 AS sv_3, 0.09968 AS sv_4, 0.05914 AS sv_5, 0.02685 AS sv_6, 0.03515 AS sv_7, 0.1619 AS sv_8, 0.06287 AS sv_9, 0.645 AS sv_10, 2.105 AS sv_11, 4.138 AS sv_12, 49.11 AS sv_13, 0.005596 AS sv_14, 0.01005 AS sv_15, 0.01272 AS sv_16, 0.01432 AS sv_17, 0.01575 AS sv_18, 0.002758 AS sv_19, 13.36 AS sv_20, 23.39 AS sv_21, 85.1 AS sv_22, 553.6 AS sv_23, 0.1137 AS sv_24, 0.07974 AS sv_25, 0.0612 AS sv_26, 0.0716 AS sv_27, 0.1978 AS sv_28, 0.06915 AS sv_29 FROM DUAL UNION ALL SELECT 2 AS sv_idx, -2.06690336128e-13 AS dual_coeff, 27.22 AS sv_0, 21.87 AS sv_1, 182.1 AS sv_2, 2250.0 AS sv_3, 0.1094 AS sv_4, 0.1914 AS sv_5, 0.2871 AS sv_6, 0.1878 AS sv_7, 0.18 AS sv_8, 0.0577 AS sv_9, 0.8361 AS sv_10, 1.481 AS sv_11, 5.82 AS sv_12, 128.7 AS sv_13, 0.004631 AS sv_14, 0.02537 AS sv_15, 0.03109 AS sv_16, 0.01241 AS sv_17, 0.01575 AS sv_18, 0.002747 AS sv_19, 33.12 AS sv_20, 32.85 AS sv_21, 220.8 AS sv_22, 3216.0 AS sv_23, 0.1472 AS sv_24, 0.4034 AS sv_25, 0.534 AS sv_26, 0.2688 AS sv_27, 0.2856 AS sv_28, 0.08082 AS sv_29 FROM DUAL UNION ALL SELECT 3 AS sv_idx, -1.96769908667e-09 AS dual_coeff, 11.08 AS sv_0, 18.83 AS sv_1, 73.3 AS sv_2, 361.6 AS sv_3, 0.1216 AS sv_4, 0.2154 AS sv_5, 0.1689 AS sv_6, 0.06367 AS sv_7, 0.2196 AS sv_8, 0.0795 AS sv_9, 0.2114 AS sv_10, 1.027 AS sv_11, 1.719 AS sv_12, 13.99 AS sv_13, 0.007405 AS sv_14, 0.04549 AS sv_15, 0.04588 AS sv_16, 0.01339 AS sv_17, 0.01738 AS sv_18, 0.004435 AS sv_19, 13.24 AS sv_20, 32.82 AS sv_21, 91.76 AS sv_22, 508.1 AS sv_23, 0.2184 AS sv_24, 0.9379 AS sv_25, 0.8402 AS sv_26, 0.2524 AS sv_27, 0.4154 AS sv_28, 0.1403 AS sv_29 FROM DUAL UNION ALL SELECT 4 AS sv_idx, -6.39801512412e-13 AS dual_coeff, 21.37 AS sv_0, 15.1 AS sv_1, 141.3 AS sv_2, 1386.0 AS sv_3, 0.1001 AS sv_4, 0.1515 AS sv_5, 0.1932 AS sv_6, 0.1255 AS sv_7, 0.1973 AS sv_8, 0.06183 AS sv_9, 0.3414 AS sv_10, 1.309 AS sv_11, 2.407 AS sv_12, 39.06 AS sv_13, 0.004426 AS sv_14, 0.02675 AS sv_15, 0.03437 AS sv_16, 0.01343 AS sv_17, 0.01675 AS sv_18, 0.004367 AS sv_19, 22.69 AS sv_20, 21.84 AS sv_21, 152.1 AS sv_22, 1535.0 AS sv_23, 0.1192 AS sv_24, 0.284 AS sv_25, 0.4024 AS sv_26, 0.1966 AS sv_27, 0.273 AS sv_28, 0.08666 AS sv_29 FROM DUAL UNION ALL SELECT 5 AS sv_idx, -4.71041929602e-13 AS dual_coeff, 28.11 AS sv_0, 18.47 AS sv_1, 188.5 AS sv_2, 2499.0 AS sv_3, 0.1142 AS sv_4, 0.1516 AS sv_5, 0.3201 AS sv_6, 0.1595 AS sv_7, 0.1648 AS sv_8, 0.05525 AS sv_9, 2.873 AS sv_10, 1.476 AS sv_11, 21.98 AS sv_12, 525.6 AS sv_13, 0.01345 AS sv_14, 0.02772 AS sv_15, 0.06389 AS sv_16, 0.01407 AS sv_17, 0.04783 AS sv_18, 0.004476 AS sv_19, 28.11 AS sv_20, 18.47 AS sv_21, 188.5 AS sv_22, 2499.0 AS sv_23, 0.1142 AS sv_24, 0.1516 AS sv_25, 0.3201 AS sv_26, 0.1595 AS sv_27, 0.1648 AS sv_28, 0.05525 AS sv_29 FROM DUAL UNION ALL SELECT 6 AS sv_idx, 4.05707386552e-11 AS dual_coeff, 11.93 AS sv_0, 10.91 AS sv_1, 76.14 AS sv_2, 442.7 AS sv_3, 0.08872 AS sv_4, 0.05242 AS sv_5, 0.02606 AS sv_6, 0.01796 AS sv_7, 0.1601 AS sv_8, 0.05541 AS sv_9, 0.2522 AS sv_10, 1.045 AS sv_11, 1.649 AS sv_12, 18.95 AS sv_13, 0.006175 AS sv_14, 0.01204 AS sv_15, 0.01376 AS sv_16, 0.005832 AS sv_17, 0.01096 AS sv_18, 0.001857 AS sv_19, 13.8 AS sv_20, 20.14 AS sv_21, 87.64 AS sv_22, 589.5 AS sv_23, 0.1374 AS sv_24, 0.1575 AS sv_25, 0.1514 AS sv_26, 0.06876 AS sv_27, 0.246 AS sv_28, 0.07262 AS sv_29 FROM DUAL UNION ALL SELECT 7 AS sv_idx, 1.39636075903e-11 AS dual_coeff, 13.27 AS sv_0, 14.76 AS sv_1, 84.74 AS sv_2, 551.7 AS sv_3, 0.07355 AS sv_4, 0.05055 AS sv_5, 0.03261 AS sv_6, 0.02648 AS sv_7, 0.1386 AS sv_8, 0.05318 AS sv_9, 0.4057 AS sv_10, 1.153 AS sv_11, 2.701 AS sv_12, 36.35 AS sv_13, 0.004481 AS sv_14, 0.01038 AS sv_15, 0.01358 AS sv_16, 0.01082 AS sv_17, 0.01069 AS sv_18, 0.001435 AS sv_19, 16.36 AS sv_20, 22.35 AS sv_21, 104.5 AS sv_22, 830.6 AS sv_23, 0.1006 AS sv_24, 0.1238 AS sv_25, 0.135 AS sv_26, 0.1001 AS sv_27, 0.2027 AS sv_28, 0.06206 AS sv_29 FROM DUAL UNION ALL SELECT 8 AS sv_idx, 8.93063299362e-14 AS dual_coeff, 16.84 AS sv_0, 19.46 AS sv_1, 108.4 AS sv_2, 880.2 AS sv_3, 0.07445 AS sv_4, 0.07223 AS sv_5, 0.0515 AS sv_6, 0.02771 AS sv_7, 0.1844 AS sv_8, 0.05268 AS sv_9, 0.4789 AS sv_10, 2.06 AS sv_11, 3.479 AS sv_12, 46.61 AS sv_13, 0.003443 AS sv_14, 0.02661 AS sv_15, 0.03056 AS sv_16, 0.0111 AS sv_17, 0.0152 AS sv_18, 0.001519 AS sv_19, 18.22 AS sv_20, 28.07 AS sv_21, 120.3 AS sv_22, 1032.0 AS sv_23, 0.08774 AS sv_24, 0.171 AS sv_25, 0.1882 AS sv_26, 0.08436 AS sv_27, 0.2527 AS sv_28, 0.05972 AS sv_29 FROM DUAL UNION ALL SELECT 9 AS sv_idx, 1.04318009952e-12 AS dual_coeff, 14.34 AS sv_0, 13.47 AS sv_1, 92.51 AS sv_2, 641.2 AS sv_3, 0.09906 AS sv_4, 0.07624 AS sv_5, 0.05724 AS sv_6, 0.04603 AS sv_7, 0.2075 AS sv_8, 0.05448 AS sv_9, 0.522 AS sv_10, 0.8121 AS sv_11, 3.763 AS sv_12, 48.29 AS sv_13, 0.007089 AS sv_14, 0.01428 AS sv_15, 0.0236 AS sv_16, 0.01286 AS sv_17, 0.02266 AS sv_18, 0.001463 AS sv_19, 16.77 AS sv_20, 16.9 AS sv_21, 110.4 AS sv_22, 873.2 AS sv_23, 0.1297 AS sv_24, 0.1525 AS sv_25, 0.1632 AS sv_26, 0.1087 AS sv_27, 0.3062 AS sv_28, 0.06072 AS sv_29 FROM DUAL UNION ALL SELECT 10 AS sv_idx, 7.48527553831e-12 AS dual_coeff, 14.41 AS sv_0, 19.73 AS sv_1, 96.03 AS sv_2, 651.0 AS sv_3, 0.08757 AS sv_4, 0.1676 AS sv_5, 0.1362 AS sv_6, 0.06602 AS sv_7, 0.1714 AS sv_8, 0.07192 AS sv_9, 0.8811 AS sv_10, 1.77 AS sv_11, 4.36 AS sv_12, 77.11 AS sv_13, 0.007762 AS sv_14, 0.1064 AS sv_15, 0.0996 AS sv_16, 0.02771 AS sv_17, 0.04077 AS sv_18, 0.02286 AS sv_19, 15.77 AS sv_20, 22.13 AS sv_21, 101.7 AS sv_22, 767.3 AS sv_23, 0.09983 AS sv_24, 0.2472 AS sv_25, 0.222 AS sv_26, 0.1021 AS sv_27, 0.2272 AS sv_28, 0.08799 AS sv_29 FROM DUAL UNION ALL SELECT 11 AS sv_idx, 1.34748174623e-14 AS dual_coeff, 11.41 AS sv_0, 10.82 AS sv_1, 73.34 AS sv_2, 403.3 AS sv_3, 0.09373 AS sv_4, 0.06685 AS sv_5, 0.03512 AS sv_6, 0.02623 AS sv_7, 0.1667 AS sv_8, 0.06113 AS sv_9, 0.1408 AS sv_10, 0.4607 AS sv_11, 1.103 AS sv_12, 10.5 AS sv_13, 0.00604 AS sv_14, 0.01529 AS sv_15, 0.01514 AS sv_16, 0.00646 AS sv_17, 0.01344 AS sv_18, 0.002206 AS sv_19, 12.82 AS sv_20, 15.97 AS sv_21, 83.74 AS sv_22, 510.5 AS sv_23, 0.1548 AS sv_24, 0.239 AS sv_25, 0.2102 AS sv_26, 0.08958 AS sv_27, 0.3016 AS sv_28, 0.08523 AS sv_29 FROM DUAL UNION ALL SELECT 12 AS sv_idx, 1.4551259286e-11 AS dual_coeff, 12.21 AS sv_0, 18.02 AS sv_1, 78.31 AS sv_2, 458.4 AS sv_3, 0.09231 AS sv_4, 0.07175 AS sv_5, 0.04392 AS sv_6, 0.02027 AS sv_7, 0.1695 AS sv_8, 0.05916 AS sv_9, 0.2527 AS sv_10, 0.7786 AS sv_11, 1.874 AS sv_12, 18.57 AS sv_13, 0.005833 AS sv_14, 0.01388 AS sv_15, 0.02 AS sv_16, 0.007087 AS sv_17, 0.01938 AS sv_18, 0.00196 AS sv_19, 14.29 AS sv_20, 24.04 AS sv_21, 93.85 AS sv_22, 624.6 AS sv_23, 0.1368 AS sv_24, 0.217 AS sv_25, 0.2413 AS sv_26, 0.08829 AS sv_27, 0.3218 AS sv_28, 0.0747 AS sv_29 FROM DUAL UNION ALL SELECT 13 AS sv_idx, 8.92172906436e-15 AS dual_coeff, 15.27 AS sv_0, 12.91 AS sv_1, 98.17 AS sv_2, 725.5 AS sv_3, 0.08182 AS sv_4, 0.0623 AS sv_5, 0.05892 AS sv_6, 0.03157 AS sv_7, 0.1359 AS sv_8, 0.05526 AS sv_9, 0.2134 AS sv_10, 0.3628 AS sv_11, 1.525 AS sv_12, 20.0 AS sv_13, 0.004291 AS sv_14, 0.01236 AS sv_15, 0.01841 AS sv_16, 0.007373 AS sv_17, 0.009539 AS sv_18, 0.001656 AS sv_19, 17.38 AS sv_20, 15.92 AS sv_21, 113.7 AS sv_22, 932.7 AS sv_23, 0.1222 AS sv_24, 0.2186 AS sv_25, 0.2962 AS sv_26, 0.1035 AS sv_27, 0.232 AS sv_28, 0.07474 AS sv_29 FROM DUAL UNION ALL SELECT 14 AS sv_idx, 1.24291942624e-09 AS dual_coeff, 11.71 AS sv_0, 16.67 AS sv_1, 74.72 AS sv_2, 423.6 AS sv_3, 0.1051 AS sv_4, 0.06095 AS sv_5, 0.03592 AS sv_6, 0.026 AS sv_7, 0.1339 AS sv_8, 0.05945 AS sv_9, 0.4489 AS sv_10, 2.508 AS sv_11, 3.258 AS sv_12, 34.37 AS sv_13, 0.006578 AS sv_14, 0.0138 AS sv_15, 0.02662 AS sv_16, 0.01307 AS sv_17, 0.01359 AS sv_18, 0.003707 AS sv_19, 13.33 AS sv_20, 25.48 AS sv_21, 86.16 AS sv_22, 546.7 AS sv_23, 0.1271 AS sv_24, 0.1028 AS sv_25, 0.1046 AS sv_26, 0.06968 AS sv_27, 0.1712 AS sv_28, 0.07343 AS sv_29 FROM DUAL UNION ALL SELECT 15 AS sv_idx, 1.53553236864e-10 AS dual_coeff, 11.68 AS sv_0, 16.17 AS sv_1, 75.49 AS sv_2, 420.5 AS sv_3, 0.1128 AS sv_4, 0.09263 AS sv_5, 0.04279 AS sv_6, 0.03132 AS sv_7, 0.1853 AS sv_8, 0.06401 AS sv_9, 0.3713 AS sv_10, 1.154 AS sv_11, 2.554 AS sv_12, 27.57 AS sv_13, 0.008998 AS sv_14, 0.01292 AS sv_15, 0.01851 AS sv_16, 0.01167 AS sv_17, 0.02152 AS sv_18, 0.003213 AS sv_19, 13.32 AS sv_20, 21.59 AS sv_21, 86.57 AS sv_22, 549.8 AS sv_23, 0.1526 AS sv_24, 0.1477 AS sv_25, 0.149 AS sv_26, 0.09815 AS sv_27, 0.2804 AS sv_28, 0.08024 AS sv_29 FROM DUAL UNION ALL SELECT 16 AS sv_idx, 1.47427420812e-10 AS dual_coeff, 11.45 AS sv_0, 20.97 AS sv_1, 73.81 AS sv_2, 401.5 AS sv_3, 0.1102 AS sv_4, 0.09362 AS sv_5, 0.04591 AS sv_6, 0.02233 AS sv_7, 0.1842 AS sv_8, 0.07005 AS sv_9, 0.3251 AS sv_10, 2.174 AS sv_11, 2.077 AS sv_12, 24.62 AS sv_13, 0.01037 AS sv_14, 0.01706 AS sv_15, 0.02586 AS sv_16, 0.007506 AS sv_17, 0.01816 AS sv_18, 0.003976 AS sv_19, 13.11 AS sv_20, 32.16 AS sv_21, 84.53 AS sv_22, 525.1 AS sv_23, 0.1557 AS sv_24, 0.1676 AS sv_25, 0.1755 AS sv_26, 0.06127 AS sv_27, 0.2762 AS sv_28, 0.08851 AS sv_29 FROM DUAL UNION ALL SELECT 17 AS sv_idx, 3.32216433156e-10 AS dual_coeff, 11.75 AS sv_0, 20.18 AS sv_1, 76.1 AS sv_2, 419.8 AS sv_3, 0.1089 AS sv_4, 0.1141 AS sv_5, 0.06843 AS sv_6, 0.03738 AS sv_7, 0.1993 AS sv_8, 0.06453 AS sv_9, 0.5018 AS sv_10, 1.693 AS sv_11, 3.926 AS sv_12, 38.34 AS sv_13, 0.009433 AS sv_14, 0.02405 AS sv_15, 0.04167 AS sv_16, 0.01152 AS sv_17, 0.03397 AS sv_18, 0.005061 AS sv_19, 13.32 AS sv_20, 26.21 AS sv_21, 88.91 AS sv_22, 543.9 AS sv_23, 0.1358 AS sv_24, 0.1892 AS sv_25, 0.1956 AS sv_26, 0.07909 AS sv_27, 0.3168 AS sv_28, 0.07987 AS sv_29 FROM DUAL UNION ALL SELECT 18 AS sv_idx, 1.12573315728e-10 AS dual_coeff, 12.06 AS sv_0, 18.9 AS sv_1, 76.66 AS sv_2, 445.3 AS sv_3, 0.08386 AS sv_4, 0.05794 AS sv_5, 0.00751 AS sv_6, 0.008488 AS sv_7, 0.1555 AS sv_8, 0.06048 AS sv_9, 0.243 AS sv_10, 1.152 AS sv_11, 1.559 AS sv_12, 18.02 AS sv_13, 0.00718 AS sv_14, 0.01096 AS sv_15, 0.005832 AS sv_16, 0.005495 AS sv_17, 0.01982 AS sv_18, 0.002754 AS sv_19, 13.64 AS sv_20, 27.06 AS sv_21, 86.54 AS sv_22, 562.6 AS sv_23, 0.1289 AS sv_24, 0.1352 AS sv_25, 0.04506 AS sv_26, 0.05093 AS sv_27, 0.288 AS sv_28, 0.08083 AS sv_29 FROM DUAL UNION ALL SELECT 19 AS sv_idx, 1.08306192026e-11 AS dual_coeff, 12.45 AS sv_0, 16.41 AS sv_1, 82.85 AS sv_2, 476.7 AS sv_3, 0.09514 AS sv_4, 0.1511 AS sv_5, 0.1544 AS sv_6, 0.04846 AS sv_7, 0.2082 AS sv_8, 0.07325 AS sv_9, 0.3921 AS sv_10, 1.207 AS sv_11, 5.004 AS sv_12, 30.19 AS sv_13, 0.007234 AS sv_14, 0.07471 AS sv_15, 0.1114 AS sv_16, 0.02721 AS sv_17, 0.03232 AS sv_18, 0.009627 AS sv_19, 13.78 AS sv_20, 21.03 AS sv_21, 97.82 AS sv_22, 580.6 AS sv_23, 0.1175 AS sv_24, 0.4061 AS sv_25, 0.4896 AS sv_26, 0.1342 AS sv_27, 0.3231 AS sv_28, 0.1034 AS sv_29 FROM DUAL UNION ALL SELECT 20 AS sv_idx, 7.76783751459e-12 AS dual_coeff, 12.39 AS sv_0, 17.48 AS sv_1, 80.64 AS sv_2, 462.9 AS sv_3, 0.1042 AS sv_4, 0.1297 AS sv_5, 0.05892 AS sv_6, 0.0288 AS sv_7, 0.1779 AS sv_8, 0.06588 AS sv_9, 0.2608 AS sv_10, 0.873 AS sv_11, 2.117 AS sv_12, 19.2 AS sv_13, 0.006715 AS sv_14, 0.03705 AS sv_15, 0.04757 AS sv_16, 0.01051 AS sv_17, 0.01838 AS sv_18, 0.006884 AS sv_19, 14.18 AS sv_20, 23.13 AS sv_21, 95.23 AS sv_22, 600.5 AS sv_23, 0.1427 AS sv_24, 0.3593 AS sv_25, 0.3206 AS sv_26, 0.09804 AS sv_27, 0.2819 AS sv_28, 0.1118 AS sv_29 FROM DUAL UNION ALL SELECT 21 AS sv_idx, 1.40053382125e-09 AS dual_coeff, 10.82 AS sv_0, 24.21 AS sv_1, 68.89 AS sv_2, 361.6 AS sv_3, 0.08192 AS sv_4, 0.06602 AS sv_5, 0.01548 AS sv_6, 0.00816 AS sv_7, 0.1976 AS sv_8, 0.06328 AS sv_9, 0.5196 AS sv_10, 1.918 AS sv_11, 3.564 AS sv_12, 33.0 AS sv_13, 0.008263 AS sv_14, 0.0187 AS sv_15, 0.01277 AS sv_16, 0.005917 AS sv_17, 0.02466 AS sv_18, 0.002977 AS sv_19, 13.03 AS sv_20, 31.45 AS sv_21, 83.9 AS sv_22, 505.6 AS sv_23, 0.1204 AS sv_24, 0.1633 AS sv_25, 0.06194 AS sv_26, 0.03264 AS sv_27, 0.3059 AS sv_28, 0.07626 AS sv_29 FROM DUAL) "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 1.67580850475 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * power(0.03333333333333333 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9 + "ADS"."Feature_10" * "SV_data".sv_10 + "ADS"."Feature_11" * "SV_data".sv_11 + "ADS"."Feature_12" * "SV_data".sv_12 + "ADS"."Feature_13" * "SV_data".sv_13 + "ADS"."Feature_14" * "SV_data".sv_14 + "ADS"."Feature_15" * "SV_data".sv_15 + "ADS"."Feature_16" * "SV_data".sv_16 + "ADS"."Feature_17" * "SV_data".sv_17 + "ADS"."Feature_18" * "SV_data".sv_18 + "ADS"."Feature_19" * "SV_data".sv_19 + "ADS"."Feature_20" * "SV_data".sv_20 + "ADS"."Feature_21" * "SV_data".sv_21 + "ADS"."Feature_22" * "SV_data".sv_22 + "ADS"."Feature_23" * "SV_data".sv_23 + "ADS"."Feature_24" * "SV_data".sv_24 + "ADS"."Feature_25" * "SV_data".sv_25 + "ADS"."Feature_26" * "SV_data".sv_26 + "ADS"."Feature_27" * "SV_data".sv_27 + "ADS"."Feature_28" * "SV_data".sv_28 + "ADS"."Feature_29" * "SV_data".sv_29) + 0.0, 3) AS dot_prod1 
FROM "BreastCancer" "ADS", "SV_data") full_join_data_sv GROUP BY full_join_data_sv."KEY") t)
 SELECT kernel_cte."KEY" AS "KEY", -kernel_cte.dot_product AS "Score_0", kernel_cte.dot_product AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (kernel_cte.dot_product >= 0.0) THEN 1 ELSE 0 END AS "Decision" 
FROM kernel_cte