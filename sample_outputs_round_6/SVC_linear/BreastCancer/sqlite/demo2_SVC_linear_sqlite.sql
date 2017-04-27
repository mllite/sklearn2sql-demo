-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9, "Values".sv_10 AS sv_10, "Values".sv_11 AS sv_11, "Values".sv_12 AS sv_12, "Values".sv_13 AS sv_13, "Values".sv_14 AS sv_14, "Values".sv_15 AS sv_15, "Values".sv_16 AS sv_16, "Values".sv_17 AS sv_17, "Values".sv_18 AS sv_18, "Values".sv_19 AS sv_19, "Values".sv_20 AS sv_20, "Values".sv_21 AS sv_21, "Values".sv_22 AS sv_22, "Values".sv_23 AS sv_23, "Values".sv_24 AS sv_24, "Values".sv_25 AS sv_25, "Values".sv_26 AS sv_26, "Values".sv_27 AS sv_27, "Values".sv_28 AS sv_28, "Values".sv_29 AS sv_29 
FROM (SELECT 0 AS sv_idx, -0.00230595326756 AS dual_coeff, 13.17 AS sv_0, 21.81 AS sv_1, 85.42 AS sv_2, 531.5 AS sv_3, 0.09714 AS sv_4, 0.1047 AS sv_5, 0.08259 AS sv_6, 0.05252 AS sv_7, 0.1746 AS sv_8, 0.06177 AS sv_9, 0.1938 AS sv_10, 0.6123 AS sv_11, 1.334 AS sv_12, 14.49 AS sv_13, 0.00335 AS sv_14, 0.01384 AS sv_15, 0.01452 AS sv_16, 0.006853 AS sv_17, 0.01113 AS sv_18, 0.00172 AS sv_19, 16.23 AS sv_20, 29.89 AS sv_21, 105.5 AS sv_22, 740.7 AS sv_23, 0.1503 AS sv_24, 0.3904 AS sv_25, 0.3728 AS sv_26, 0.1607 AS sv_27, 0.3693 AS sv_28, 0.09618 AS sv_29 UNION ALL SELECT 1 AS sv_idx, -0.00848495197928 AS dual_coeff, 14.99 AS sv_0, 25.2 AS sv_1, 95.54 AS sv_2, 698.8 AS sv_3, 0.09387 AS sv_4, 0.05131 AS sv_5, 0.02398 AS sv_6, 0.02899 AS sv_7, 0.1565 AS sv_8, 0.05504 AS sv_9, 1.214 AS sv_10, 2.188 AS sv_11, 8.077 AS sv_12, 106.0 AS sv_13, 0.006883 AS sv_14, 0.01094 AS sv_15, 0.01818 AS sv_16, 0.01917 AS sv_17, 0.007882 AS sv_18, 0.001754 AS sv_19, 14.99 AS sv_20, 25.2 AS sv_21, 95.54 AS sv_22, 698.8 AS sv_23, 0.09387 AS sv_24, 0.05131 AS sv_25, 0.02398 AS sv_26, 0.02899 AS sv_27, 0.1565 AS sv_28, 0.05504 AS sv_29 UNION ALL SELECT 2 AS sv_idx, -0.00843489775473 AS dual_coeff, 14.6 AS sv_0, 23.29 AS sv_1, 93.97 AS sv_2, 664.7 AS sv_3, 0.08682 AS sv_4, 0.06636 AS sv_5, 0.0839 AS sv_6, 0.05271 AS sv_7, 0.1627 AS sv_8, 0.05416 AS sv_9, 0.4157 AS sv_10, 1.627 AS sv_11, 2.914 AS sv_12, 33.01 AS sv_13, 0.008312 AS sv_14, 0.01742 AS sv_15, 0.03389 AS sv_16, 0.01576 AS sv_17, 0.0174 AS sv_18, 0.002871 AS sv_19, 15.79 AS sv_20, 31.71 AS sv_21, 102.2 AS sv_22, 758.2 AS sv_23, 0.1312 AS sv_24, 0.1581 AS sv_25, 0.2675 AS sv_26, 0.1359 AS sv_27, 0.2477 AS sv_28, 0.06836 AS sv_29 UNION ALL SELECT 3 AS sv_idx, -0.137003009096 AS dual_coeff, 11.76 AS sv_0, 18.14 AS sv_1, 75.0 AS sv_2, 431.1 AS sv_3, 0.09968 AS sv_4, 0.05914 AS sv_5, 0.02685 AS sv_6, 0.03515 AS sv_7, 0.1619 AS sv_8, 0.06287 AS sv_9, 0.645 AS sv_10, 2.105 AS sv_11, 4.138 AS sv_12, 49.11 AS sv_13, 0.005596 AS sv_14, 0.01005 AS sv_15, 0.01272 AS sv_16, 0.01432 AS sv_17, 0.01575 AS sv_18, 0.002758 AS sv_19, 13.36 AS sv_20, 23.39 AS sv_21, 85.1 AS sv_22, 553.6 AS sv_23, 0.1137 AS sv_24, 0.07974 AS sv_25, 0.0612 AS sv_26, 0.0716 AS sv_27, 0.1978 AS sv_28, 0.06915 AS sv_29 UNION ALL SELECT 4 AS sv_idx, -0.000193246909955 AS dual_coeff, 27.22 AS sv_0, 21.87 AS sv_1, 182.1 AS sv_2, 2250.0 AS sv_3, 0.1094 AS sv_4, 0.1914 AS sv_5, 0.2871 AS sv_6, 0.1878 AS sv_7, 0.18 AS sv_8, 0.0577 AS sv_9, 0.8361 AS sv_10, 1.481 AS sv_11, 5.82 AS sv_12, 128.7 AS sv_13, 0.004631 AS sv_14, 0.02537 AS sv_15, 0.03109 AS sv_16, 0.01241 AS sv_17, 0.01575 AS sv_18, 0.002747 AS sv_19, 33.12 AS sv_20, 32.85 AS sv_21, 220.8 AS sv_22, 3216.0 AS sv_23, 0.1472 AS sv_24, 0.4034 AS sv_25, 0.534 AS sv_26, 0.2688 AS sv_27, 0.2856 AS sv_28, 0.08082 AS sv_29 UNION ALL SELECT 5 AS sv_idx, -0.090236629684 AS dual_coeff, 11.08 AS sv_0, 18.83 AS sv_1, 73.3 AS sv_2, 361.6 AS sv_3, 0.1216 AS sv_4, 0.2154 AS sv_5, 0.1689 AS sv_6, 0.06367 AS sv_7, 0.2196 AS sv_8, 0.0795 AS sv_9, 0.2114 AS sv_10, 1.027 AS sv_11, 1.719 AS sv_12, 13.99 AS sv_13, 0.007405 AS sv_14, 0.04549 AS sv_15, 0.04588 AS sv_16, 0.01339 AS sv_17, 0.01738 AS sv_18, 0.004435 AS sv_19, 13.24 AS sv_20, 32.82 AS sv_21, 91.76 AS sv_22, 508.1 AS sv_23, 0.2184 AS sv_24, 0.9379 AS sv_25, 0.8402 AS sv_26, 0.2524 AS sv_27, 0.4154 AS sv_28, 0.1403 AS sv_29 UNION ALL SELECT 6 AS sv_idx, -0.000202672875075 AS dual_coeff, 21.37 AS sv_0, 15.1 AS sv_1, 141.3 AS sv_2, 1386.0 AS sv_3, 0.1001 AS sv_4, 0.1515 AS sv_5, 0.1932 AS sv_6, 0.1255 AS sv_7, 0.1973 AS sv_8, 0.06183 AS sv_9, 0.3414 AS sv_10, 1.309 AS sv_11, 2.407 AS sv_12, 39.06 AS sv_13, 0.004426 AS sv_14, 0.02675 AS sv_15, 0.03437 AS sv_16, 0.01343 AS sv_17, 0.01675 AS sv_18, 0.004367 AS sv_19, 22.69 AS sv_20, 21.84 AS sv_21, 152.1 AS sv_22, 1535.0 AS sv_23, 0.1192 AS sv_24, 0.284 AS sv_25, 0.4024 AS sv_26, 0.1966 AS sv_27, 0.273 AS sv_28, 0.08666 AS sv_29 UNION ALL SELECT 7 AS sv_idx, -0.00796924539958 AS dual_coeff, 15.37 AS sv_0, 22.76 AS sv_1, 100.2 AS sv_2, 728.2 AS sv_3, 0.092 AS sv_4, 0.1036 AS sv_5, 0.1122 AS sv_6, 0.07483 AS sv_7, 0.1717 AS sv_8, 0.06097 AS sv_9, 0.3129 AS sv_10, 0.8413 AS sv_11, 2.075 AS sv_12, 29.44 AS sv_13, 0.009882 AS sv_14, 0.02444 AS sv_15, 0.04531 AS sv_16, 0.01763 AS sv_17, 0.02471 AS sv_18, 0.002142 AS sv_19, 16.43 AS sv_20, 25.84 AS sv_21, 107.5 AS sv_22, 830.9 AS sv_23, 0.1257 AS sv_24, 0.1997 AS sv_25, 0.2846 AS sv_26, 0.1476 AS sv_27, 0.2556 AS sv_28, 0.06828 AS sv_29 UNION ALL SELECT 8 AS sv_idx, -8.66624899041e-05 AS dual_coeff, 14.45 AS sv_0, 20.22 AS sv_1, 94.49 AS sv_2, 642.7 AS sv_3, 0.09872 AS sv_4, 0.1206 AS sv_5, 0.118 AS sv_6, 0.0598 AS sv_7, 0.195 AS sv_8, 0.06466 AS sv_9, 0.2092 AS sv_10, 0.6509 AS sv_11, 1.446 AS sv_12, 19.42 AS sv_13, 0.004044 AS sv_14, 0.01597 AS sv_15, 0.02 AS sv_16, 0.007303 AS sv_17, 0.01522 AS sv_18, 0.001976 AS sv_19, 18.33 AS sv_20, 30.12 AS sv_21, 117.9 AS sv_22, 1044.0 AS sv_23, 0.1552 AS sv_24, 0.4056 AS sv_25, 0.4967 AS sv_26, 0.1838 AS sv_27, 0.4753 AS sv_28, 0.1013 AS sv_29 UNION ALL SELECT 9 AS sv_idx, 0.000139392406491 AS dual_coeff, 13.27 AS sv_0, 14.76 AS sv_1, 84.74 AS sv_2, 551.7 AS sv_3, 0.07355 AS sv_4, 0.05055 AS sv_5, 0.03261 AS sv_6, 0.02648 AS sv_7, 0.1386 AS sv_8, 0.05318 AS sv_9, 0.4057 AS sv_10, 1.153 AS sv_11, 2.701 AS sv_12, 36.35 AS sv_13, 0.004481 AS sv_14, 0.01038 AS sv_15, 0.01358 AS sv_16, 0.01082 AS sv_17, 0.01069 AS sv_18, 0.001435 AS sv_19, 16.36 AS sv_20, 22.35 AS sv_21, 104.5 AS sv_22, 830.6 AS sv_23, 0.1006 AS sv_24, 0.1238 AS sv_25, 0.135 AS sv_26, 0.1001 AS sv_27, 0.2027 AS sv_28, 0.06206 AS sv_29 UNION ALL SELECT 10 AS sv_idx, 0.0088115927759 AS dual_coeff, 15.1 AS sv_0, 16.39 AS sv_1, 99.58 AS sv_2, 674.5 AS sv_3, 0.115 AS sv_4, 0.1807 AS sv_5, 0.1138 AS sv_6, 0.08534 AS sv_7, 0.2001 AS sv_8, 0.06467 AS sv_9, 0.4309 AS sv_10, 1.068 AS sv_11, 2.796 AS sv_12, 39.84 AS sv_13, 0.009006 AS sv_14, 0.04185 AS sv_15, 0.03204 AS sv_16, 0.02258 AS sv_17, 0.02353 AS sv_18, 0.004984 AS sv_19, 16.11 AS sv_20, 18.33 AS sv_21, 105.9 AS sv_22, 762.6 AS sv_23, 0.1386 AS sv_24, 0.2883 AS sv_25, 0.196 AS sv_26, 0.1423 AS sv_27, 0.259 AS sv_28, 0.07779 AS sv_29 UNION ALL SELECT 11 AS sv_idx, 4.54266799037e-05 AS dual_coeff, 16.84 AS sv_0, 19.46 AS sv_1, 108.4 AS sv_2, 880.2 AS sv_3, 0.07445 AS sv_4, 0.07223 AS sv_5, 0.0515 AS sv_6, 0.02771 AS sv_7, 0.1844 AS sv_8, 0.05268 AS sv_9, 0.4789 AS sv_10, 2.06 AS sv_11, 3.479 AS sv_12, 46.61 AS sv_13, 0.003443 AS sv_14, 0.02661 AS sv_15, 0.03056 AS sv_16, 0.0111 AS sv_17, 0.0152 AS sv_18, 0.001519 AS sv_19, 18.22 AS sv_20, 28.07 AS sv_21, 120.3 AS sv_22, 1032.0 AS sv_23, 0.08774 AS sv_24, 0.171 AS sv_25, 0.1882 AS sv_26, 0.08436 AS sv_27, 0.2527 AS sv_28, 0.05972 AS sv_29 UNION ALL SELECT 12 AS sv_idx, 0.000183141079611 AS dual_coeff, 14.34 AS sv_0, 13.47 AS sv_1, 92.51 AS sv_2, 641.2 AS sv_3, 0.09906 AS sv_4, 0.07624 AS sv_5, 0.05724 AS sv_6, 0.04603 AS sv_7, 0.2075 AS sv_8, 0.05448 AS sv_9, 0.522 AS sv_10, 0.8121 AS sv_11, 3.763 AS sv_12, 48.29 AS sv_13, 0.007089 AS sv_14, 0.01428 AS sv_15, 0.0236 AS sv_16, 0.01286 AS sv_17, 0.02266 AS sv_18, 0.001463 AS sv_19, 16.77 AS sv_20, 16.9 AS sv_21, 110.4 AS sv_22, 873.2 AS sv_23, 0.1297 AS sv_24, 0.1525 AS sv_25, 0.1632 AS sv_26, 0.1087 AS sv_27, 0.3062 AS sv_28, 0.06072 AS sv_29 UNION ALL SELECT 13 AS sv_idx, 0.000252807547069 AS dual_coeff, 14.69 AS sv_0, 13.98 AS sv_1, 98.22 AS sv_2, 656.1 AS sv_3, 0.1031 AS sv_4, 0.1836 AS sv_5, 0.145 AS sv_6, 0.063 AS sv_7, 0.2086 AS sv_8, 0.07406 AS sv_9, 0.5462 AS sv_10, 1.511 AS sv_11, 4.795 AS sv_12, 49.45 AS sv_13, 0.009976 AS sv_14, 0.05244 AS sv_15, 0.05278 AS sv_16, 0.0158 AS sv_17, 0.02653 AS sv_18, 0.005444 AS sv_19, 16.46 AS sv_20, 18.34 AS sv_21, 114.1 AS sv_22, 809.2 AS sv_23, 0.1312 AS sv_24, 0.3635 AS sv_25, 0.3219 AS sv_26, 0.1108 AS sv_27, 0.2827 AS sv_28, 0.09208 AS sv_29 UNION ALL SELECT 14 AS sv_idx, 2.68371483609e-06 AS dual_coeff, 14.2 AS sv_0, 20.53 AS sv_1, 92.41 AS sv_2, 618.4 AS sv_3, 0.08931 AS sv_4, 0.1108 AS sv_5, 0.05063 AS sv_6, 0.03058 AS sv_7, 0.1506 AS sv_8, 0.06009 AS sv_9, 0.3478 AS sv_10, 1.018 AS sv_11, 2.749 AS sv_12, 31.01 AS sv_13, 0.004107 AS sv_14, 0.03288 AS sv_15, 0.02821 AS sv_16, 0.0135 AS sv_17, 0.0161 AS sv_18, 0.002744 AS sv_19, 16.45 AS sv_20, 27.26 AS sv_21, 112.1 AS sv_22, 828.5 AS sv_23, 0.1153 AS sv_24, 0.3429 AS sv_25, 0.2512 AS sv_26, 0.1339 AS sv_27, 0.2534 AS sv_28, 0.07858 AS sv_29 UNION ALL SELECT 15 AS sv_idx, 0.00725141912706 AS dual_coeff, 14.41 AS sv_0, 19.73 AS sv_1, 96.03 AS sv_2, 651.0 AS sv_3, 0.08757 AS sv_4, 0.1676 AS sv_5, 0.1362 AS sv_6, 0.06602 AS sv_7, 0.1714 AS sv_8, 0.07192 AS sv_9, 0.8811 AS sv_10, 1.77 AS sv_11, 4.36 AS sv_12, 77.11 AS sv_13, 0.007762 AS sv_14, 0.1064 AS sv_15, 0.0996 AS sv_16, 0.02771 AS sv_17, 0.04077 AS sv_18, 0.02286 AS sv_19, 15.77 AS sv_20, 22.13 AS sv_21, 101.7 AS sv_22, 767.3 AS sv_23, 0.09983 AS sv_24, 0.2472 AS sv_25, 0.222 AS sv_26, 0.1021 AS sv_27, 0.2272 AS sv_28, 0.08799 AS sv_29 UNION ALL SELECT 16 AS sv_idx, 1.50935896675e-06 AS dual_coeff, 14.47 AS sv_0, 24.99 AS sv_1, 95.81 AS sv_2, 656.4 AS sv_3, 0.08837 AS sv_4, 0.123 AS sv_5, 0.1009 AS sv_6, 0.0389 AS sv_7, 0.1872 AS sv_8, 0.06341 AS sv_9, 0.2542 AS sv_10, 1.079 AS sv_11, 2.615 AS sv_12, 23.11 AS sv_13, 0.007138 AS sv_14, 0.04653 AS sv_15, 0.03829 AS sv_16, 0.01162 AS sv_17, 0.02068 AS sv_18, 0.006111 AS sv_19, 16.22 AS sv_20, 31.73 AS sv_21, 113.5 AS sv_22, 808.9 AS sv_23, 0.134 AS sv_24, 0.4202 AS sv_25, 0.404 AS sv_26, 0.1205 AS sv_27, 0.3187 AS sv_28, 0.1023 AS sv_29 UNION ALL SELECT 17 AS sv_idx, 0.0664393499274 AS dual_coeff, 11.71 AS sv_0, 16.67 AS sv_1, 74.72 AS sv_2, 423.6 AS sv_3, 0.1051 AS sv_4, 0.06095 AS sv_5, 0.03592 AS sv_6, 0.026 AS sv_7, 0.1339 AS sv_8, 0.05945 AS sv_9, 0.4489 AS sv_10, 2.508 AS sv_11, 3.258 AS sv_12, 34.37 AS sv_13, 0.006578 AS sv_14, 0.0138 AS sv_15, 0.02662 AS sv_16, 0.01307 AS sv_17, 0.01359 AS sv_18, 0.003707 AS sv_19, 13.33 AS sv_20, 25.48 AS sv_21, 86.16 AS sv_22, 546.7 AS sv_23, 0.1271 AS sv_24, 0.1028 AS sv_25, 0.1046 AS sv_26, 0.06968 AS sv_27, 0.1712 AS sv_28, 0.07343 AS sv_29 UNION ALL SELECT 18 AS sv_idx, 0.00230595326756 AS dual_coeff, 13.46 AS sv_0, 18.75 AS sv_1, 87.44 AS sv_2, 551.1 AS sv_3, 0.1075 AS sv_4, 0.1138 AS sv_5, 0.04201 AS sv_6, 0.03152 AS sv_7, 0.1723 AS sv_8, 0.06317 AS sv_9, 0.1998 AS sv_10, 0.6068 AS sv_11, 1.443 AS sv_12, 16.07 AS sv_13, 0.004413 AS sv_14, 0.01443 AS sv_15, 0.01509 AS sv_16, 0.007369 AS sv_17, 0.01354 AS sv_18, 0.001787 AS sv_19, 15.35 AS sv_20, 25.16 AS sv_21, 101.9 AS sv_22, 719.8 AS sv_23, 0.1624 AS sv_24, 0.3124 AS sv_25, 0.2654 AS sv_26, 0.1427 AS sv_27, 0.3518 AS sv_28, 0.08665 AS sv_29 UNION ALL SELECT 19 AS sv_idx, 0.00796924539958 AS dual_coeff, 14.95 AS sv_0, 18.77 AS sv_1, 97.84 AS sv_2, 689.5 AS sv_3, 0.08138 AS sv_4, 0.1167 AS sv_5, 0.0905 AS sv_6, 0.03562 AS sv_7, 0.1744 AS sv_8, 0.06493 AS sv_9, 0.422 AS sv_10, 1.909 AS sv_11, 3.271 AS sv_12, 39.43 AS sv_13, 0.00579 AS sv_14, 0.04877 AS sv_15, 0.05303 AS sv_16, 0.01527 AS sv_17, 0.03356 AS sv_18, 0.009368 AS sv_19, 16.25 AS sv_20, 25.47 AS sv_21, 107.1 AS sv_22, 809.7 AS sv_23, 0.0997 AS sv_24, 0.2521 AS sv_25, 0.25 AS sv_26, 0.08405 AS sv_27, 0.2852 AS sv_28, 0.09218 AS sv_29 UNION ALL SELECT 20 AS sv_idx, 0.00937799211268 AS dual_coeff, 11.45 AS sv_0, 20.97 AS sv_1, 73.81 AS sv_2, 401.5 AS sv_3, 0.1102 AS sv_4, 0.09362 AS sv_5, 0.04591 AS sv_6, 0.02233 AS sv_7, 0.1842 AS sv_8, 0.07005 AS sv_9, 0.3251 AS sv_10, 2.174 AS sv_11, 2.077 AS sv_12, 24.62 AS sv_13, 0.01037 AS sv_14, 0.01706 AS sv_15, 0.02586 AS sv_16, 0.007506 AS sv_17, 0.01816 AS sv_18, 0.003976 AS sv_19, 13.11 AS sv_20, 32.16 AS sv_21, 84.53 AS sv_22, 525.1 AS sv_23, 0.1557 AS sv_24, 0.1676 AS sv_25, 0.1755 AS sv_26, 0.06127 AS sv_27, 0.2762 AS sv_28, 0.08851 AS sv_29 UNION ALL SELECT 21 AS sv_idx, 0.10191085484 AS dual_coeff, 11.75 AS sv_0, 20.18 AS sv_1, 76.1 AS sv_2, 419.8 AS sv_3, 0.1089 AS sv_4, 0.1141 AS sv_5, 0.06843 AS sv_6, 0.03738 AS sv_7, 0.1993 AS sv_8, 0.06453 AS sv_9, 0.5018 AS sv_10, 1.693 AS sv_11, 3.926 AS sv_12, 38.34 AS sv_13, 0.009433 AS sv_14, 0.02405 AS sv_15, 0.04167 AS sv_16, 0.01152 AS sv_17, 0.03397 AS sv_18, 0.005061 AS sv_19, 13.32 AS sv_20, 26.21 AS sv_21, 88.91 AS sv_22, 543.9 AS sv_23, 0.1358 AS sv_24, 0.1892 AS sv_25, 0.1956 AS sv_26, 0.07909 AS sv_27, 0.3168 AS sv_28, 0.07987 AS sv_29 UNION ALL SELECT 22 AS sv_idx, 1.51794134336e-06 AS dual_coeff, 14.22 AS sv_0, 27.85 AS sv_1, 92.55 AS sv_2, 623.9 AS sv_3, 0.08223 AS sv_4, 0.1039 AS sv_5, 0.1103 AS sv_6, 0.04408 AS sv_7, 0.1342 AS sv_8, 0.06129 AS sv_9, 0.3354 AS sv_10, 2.324 AS sv_11, 2.105 AS sv_12, 29.96 AS sv_13, 0.006307 AS sv_14, 0.02845 AS sv_15, 0.0385 AS sv_16, 0.01011 AS sv_17, 0.01185 AS sv_18, 0.003589 AS sv_19, 15.75 AS sv_20, 40.54 AS sv_21, 102.5 AS sv_22, 764.0 AS sv_23, 0.1081 AS sv_24, 0.2426 AS sv_25, 0.3064 AS sv_26, 0.08219 AS sv_27, 0.189 AS sv_28, 0.07796 AS sv_29 UNION ALL SELECT 23 AS sv_idx, 0.000902425359976 AS dual_coeff, 14.59 AS sv_0, 22.68 AS sv_1, 96.39 AS sv_2, 657.1 AS sv_3, 0.08473 AS sv_4, 0.133 AS sv_5, 0.1029 AS sv_6, 0.03736 AS sv_7, 0.1454 AS sv_8, 0.06147 AS sv_9, 0.2254 AS sv_10, 1.108 AS sv_11, 2.224 AS sv_12, 19.54 AS sv_13, 0.004242 AS sv_14, 0.04639 AS sv_15, 0.06578 AS sv_16, 0.01606 AS sv_17, 0.01638 AS sv_18, 0.004406 AS sv_19, 15.48 AS sv_20, 27.27 AS sv_21, 105.9 AS sv_22, 733.5 AS sv_23, 0.1026 AS sv_24, 0.3171 AS sv_25, 0.3662 AS sv_26, 0.1105 AS sv_27, 0.2258 AS sv_28, 0.08004 AS sv_29 UNION ALL SELECT 24 AS sv_idx, 0.000631417876991 AS dual_coeff, 12.39 AS sv_0, 17.48 AS sv_1, 80.64 AS sv_2, 462.9 AS sv_3, 0.1042 AS sv_4, 0.1297 AS sv_5, 0.05892 AS sv_6, 0.0288 AS sv_7, 0.1779 AS sv_8, 0.06588 AS sv_9, 0.2608 AS sv_10, 0.873 AS sv_11, 2.117 AS sv_12, 19.2 AS sv_13, 0.006715 AS sv_14, 0.03705 AS sv_15, 0.04757 AS sv_16, 0.01051 AS sv_17, 0.01838 AS sv_18, 0.006884 AS sv_19, 14.18 AS sv_20, 23.13 AS sv_21, 95.23 AS sv_22, 600.5 AS sv_23, 0.1427 AS sv_24, 0.3593 AS sv_25, 0.3206 AS sv_26, 0.09804 AS sv_27, 0.2819 AS sv_28, 0.1118 AS sv_29 UNION ALL SELECT 25 AS sv_idx, 0.0486905400408 AS dual_coeff, 10.82 AS sv_0, 24.21 AS sv_1, 68.89 AS sv_2, 361.6 AS sv_3, 0.08192 AS sv_4, 0.06602 AS sv_5, 0.01548 AS sv_6, 0.00816 AS sv_7, 0.1976 AS sv_8, 0.06328 AS sv_9, 0.5196 AS sv_10, 1.918 AS sv_11, 3.564 AS sv_12, 33.0 AS sv_13, 0.008263 AS sv_14, 0.0187 AS sv_15, 0.01277 AS sv_16, 0.005917 AS sv_17, 0.02466 AS sv_18, 0.002977 AS sv_19, 13.03 AS sv_20, 31.45 AS sv_21, 83.9 AS sv_22, 505.6 AS sv_23, 0.1204 AS sv_24, 0.1633 AS sv_25, 0.06194 AS sv_26, 0.03264 AS sv_27, 0.3059 AS sv_28, 0.07626 AS sv_29) AS "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 124.159079662 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9 + "ADS"."Feature_10" * "SV_data".sv_10 + "ADS"."Feature_11" * "SV_data".sv_11 + "ADS"."Feature_12" * "SV_data".sv_12 + "ADS"."Feature_13" * "SV_data".sv_13 + "ADS"."Feature_14" * "SV_data".sv_14 + "ADS"."Feature_15" * "SV_data".sv_15 + "ADS"."Feature_16" * "SV_data".sv_16 + "ADS"."Feature_17" * "SV_data".sv_17 + "ADS"."Feature_18" * "SV_data".sv_18 + "ADS"."Feature_19" * "SV_data".sv_19 + "ADS"."Feature_20" * "SV_data".sv_20 + "ADS"."Feature_21" * "SV_data".sv_21 + "ADS"."Feature_22" * "SV_data".sv_22 + "ADS"."Feature_23" * "SV_data".sv_23 + "ADS"."Feature_24" * "SV_data".sv_24 + "ADS"."Feature_25" * "SV_data".sv_25 + "ADS"."Feature_26" * "SV_data".sv_26 + "ADS"."Feature_27" * "SV_data".sv_27 + "ADS"."Feature_28" * "SV_data".sv_28 + "ADS"."Feature_29" * "SV_data".sv_29) AS dot_prod1 
FROM "BreastCancer" AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_cte."KEY" AS "KEY", -kernel_cte.dot_product AS "Score_0", kernel_cte.dot_product AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (kernel_cte.dot_product >= 0.0) THEN 1 ELSE 0 END AS "Decision" 
FROM kernel_cte