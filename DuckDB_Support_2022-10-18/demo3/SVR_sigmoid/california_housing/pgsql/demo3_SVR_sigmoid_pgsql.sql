-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_sigmoid
-- Dataset : california_housing
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."TGT" AS FLOAT) AS "TGT" 
FROM california_housing AS "ADS"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7 
FROM (SELECT 0 AS sv_idx, 0.1 AS dual_coeff, 3.4219 AS sv_0, 32.0 AS sv_1, 5.228228228228228 AS sv_2, 1.12012012012012 AS sv_3, 872.0 AS sv_4, 2.6186186186186187 AS sv_5, 34.13 AS sv_6, -117.87 AS sv_7 UNION ALL SELECT 1 AS sv_idx, 0.1 AS dual_coeff, 3.6719 AS sv_0, 46.0 AS sv_1, 4.296774193548387 AS sv_2, 1.0612903225806452 AS sv_3, 746.0 AS sv_4, 2.4064516129032256 AS sv_5, 34.43 AS sv_6, -119.72 AS sv_7 UNION ALL SELECT 2 AS sv_idx, -0.1 AS dual_coeff, 0.9196 AS sv_0, 52.0 AS sv_1, 1.550408719346049 AS sv_2, 1.103542234332425 AS sv_3, 509.0 AS sv_4, 1.3869209809264305 AS sv_5, 38.58 AS sv_6, -121.49 AS sv_7 UNION ALL SELECT 3 AS sv_idx, -0.1 AS dual_coeff, 2.3611 AS sv_0, 30.0 AS sv_1, 3.4295302013422817 AS sv_2, 1.0268456375838926 AS sv_3, 1152.0 AS sv_4, 7.731543624161074 AS sv_5, 34.06 AS sv_6, -118.21 AS sv_7 UNION ALL SELECT 4 AS sv_idx, -0.1 AS dual_coeff, 1.7344 AS sv_0, 6.0 AS sv_1, 3.3983572895277208 AS sv_2, 1.1006160164271048 AS sv_3, 1201.0 AS sv_4, 2.46611909650924 AS sv_5, 33.89 AS sv_6, -118.16 AS sv_7 UNION ALL SELECT 5 AS sv_idx, -0.1 AS dual_coeff, 2.3583 AS sv_0, 21.0 AS sv_1, 5.206896551724138 AS sv_2, 1.2727272727272727 AS sv_3, 789.0 AS sv_4, 2.4733542319749215 AS sv_5, 38.77 AS sv_6, -120.58 AS sv_7 UNION ALL SELECT 6 AS sv_idx, -0.1 AS dual_coeff, 3.5179 AS sv_0, 15.0 AS sv_1, 6.145833333333333 AS sv_2, 1.1412037037037037 AS sv_3, 1200.0 AS sv_4, 2.7777777777777777 AS sv_5, 39.33 AS sv_6, -121.4 AS sv_7 UNION ALL SELECT 7 AS sv_idx, 0.1 AS dual_coeff, 3.4196 AS sv_0, 43.0 AS sv_1, 5.023404255319149 AS sv_2, 1.0404255319148936 AS sv_3, 824.0 AS sv_4, 1.7531914893617022 AS sv_5, 32.76 AS sv_6, -117.15 AS sv_7 UNION ALL SELECT 8 AS sv_idx, 0.1 AS dual_coeff, 4.9609 AS sv_0, 29.0 AS sv_1, 5.45398773006135 AS sv_2, 1.01840490797546 AS sv_3, 597.0 AS sv_4, 3.6625766871165646 AS sv_5, 33.91 AS sv_6, -118.11 AS sv_7 UNION ALL SELECT 9 AS sv_idx, 0.1 AS dual_coeff, 3.155 AS sv_0, 25.0 AS sv_1, 5.411589895988113 AS sv_2, 1.0787518573551262 AS sv_3, 1729.0 AS sv_4, 2.5690936106983657 AS sv_5, 35.11 AS sv_6, -120.59 AS sv_7 UNION ALL SELECT 10 AS sv_idx, -0.1 AS dual_coeff, 1.6164 AS sv_0, 17.0 AS sv_1, 4.672297297297297 AS sv_2, 1.1722972972972974 AS sv_3, 719.0 AS sv_4, 2.429054054054054 AS sv_5, 38.98 AS sv_6, -122.83 AS sv_7 UNION ALL SELECT 11 AS sv_idx, -0.1 AS dual_coeff, 1.1638 AS sv_0, 35.0 AS sv_1, 4.558011049723757 AS sv_2, 0.988950276243094 AS sv_3, 670.0 AS sv_4, 3.701657458563536 AS sv_5, 35.37 AS sv_6, -118.98 AS sv_7 UNION ALL SELECT 12 AS sv_idx, -0.1 AS dual_coeff, 1.8917 AS sv_0, 43.0 AS sv_1, 3.5139664804469275 AS sv_2, 1.0642458100558658 AS sv_3, 1276.0 AS sv_4, 3.564245810055866 AS sv_5, 34.0 AS sv_6, -118.27 AS sv_7 UNION ALL SELECT 13 AS sv_idx, 0.1 AS dual_coeff, 5.7705 AS sv_0, 25.0 AS sv_1, 6.494755244755245 AS sv_2, 1.0052447552447552 AS sv_3, 1640.0 AS sv_4, 2.867132867132867 AS sv_5, 33.78 AS sv_6, -118.04 AS sv_7 UNION ALL SELECT 14 AS sv_idx, 0.1 AS dual_coeff, 4.0125 AS sv_0, 52.0 AS sv_1, 4.375621890547263 AS sv_2, 0.9626865671641791 AS sv_3, 980.0 AS sv_4, 2.4378109452736316 AS sv_5, 34.42 AS sv_6, -119.72 AS sv_7 UNION ALL SELECT 15 AS sv_idx, -0.1 AS dual_coeff, 2.0133 AS sv_0, 33.0 AS sv_1, 4.5974576271186445 AS sv_2, 1.0593220338983051 AS sv_3, 1425.0 AS sv_4, 3.0190677966101696 AS sv_5, 34.11 AS sv_6, -117.23 AS sv_7 UNION ALL SELECT 16 AS sv_idx, 0.1 AS dual_coeff, 3.1104 AS sv_0, 24.0 AS sv_1, 3.8397694524495676 AS sv_2, 1.067435158501441 AS sv_3, 3792.0 AS sv_4, 2.185590778097983 AS sv_5, 33.95 AS sv_6, -118.13 AS sv_7 UNION ALL SELECT 17 AS sv_idx, 0.1 AS dual_coeff, 0.8543 AS sv_0, 27.0 AS sv_1, 2.297872340425532 AS sv_2, 1.175531914893617 AS sv_3, 1211.0 AS sv_4, 1.610372340425532 AS sv_5, 37.78 AS sv_6, -122.42 AS sv_7 UNION ALL SELECT 18 AS sv_idx, -0.1 AS dual_coeff, 1.7 AS sv_0, 48.0 AS sv_1, 2.86 AS sv_2, 0.82 AS sv_3, 222.0 AS sv_4, 4.44 AS sv_5, 33.79 AS sv_6, -118.22 AS sv_7 UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, 2.625 AS sv_0, 25.0 AS sv_1, 59.875 AS sv_2, 15.3125 AS sv_3, 28.0 AS sv_4, 1.75 AS sv_5, 40.27 AS sv_6, -121.25 AS sv_7 UNION ALL SELECT 20 AS sv_idx, -0.1 AS dual_coeff, 3.5802 AS sv_0, 5.0 AS sv_1, 5.089689265536723 AS sv_2, 1.0519067796610169 AS sv_3, 7608.0 AS sv_4, 2.6864406779661016 AS sv_5, 38.7 AS sv_6, -121.35 AS sv_7 UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, 2.1949 AS sv_0, 35.0 AS sv_1, 3.6588921282798834 AS sv_2, 1.0029154518950438 AS sv_3, 1782.0 AS sv_4, 5.19533527696793 AS sv_5, 33.89 AS sv_6, -118.23 AS sv_7 UNION ALL SELECT 22 AS sv_idx, -0.1 AS dual_coeff, 3.0521 AS sv_0, 27.0 AS sv_1, 4.115 AS sv_2, 0.855 AS sv_3, 798.0 AS sv_4, 3.99 AS sv_5, 36.64 AS sv_6, -119.59 AS sv_7 UNION ALL SELECT 23 AS sv_idx, 0.1 AS dual_coeff, 7.2217 AS sv_0, 28.0 AS sv_1, 7.304721030042918 AS sv_2, 1.0665236051502145 AS sv_3, 1134.0 AS sv_4, 2.4334763948497855 AS sv_5, 33.54 AS sv_6, -117.77 AS sv_7 UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, 3.488 AS sv_0, 23.0 AS sv_1, 4.7391732283464565 AS sv_2, 1.063976377952756 AS sv_3, 3232.0 AS sv_4, 3.1811023622047245 AS sv_5, 33.94 AS sv_6, -118.02 AS sv_7 UNION ALL SELECT 25 AS sv_idx, 0.1 AS dual_coeff, 6.4095 AS sv_0, 28.0 AS sv_1, 5.80060422960725 AS sv_2, 0.9501510574018127 AS sv_3, 1883.0 AS sv_4, 2.8444108761329305 AS sv_5, 37.31 AS sv_6, -121.98 AS sv_7 UNION ALL SELECT 26 AS sv_idx, 0.1 AS dual_coeff, 4.0049 AS sv_0, 37.0 AS sv_1, 5.124087591240876 AS sv_2, 0.9708029197080292 AS sv_3, 889.0 AS sv_4, 3.2445255474452557 AS sv_5, 34.23 AS sv_6, -118.4 AS sv_7 UNION ALL SELECT 27 AS sv_idx, -0.1 AS dual_coeff, 3.7656 AS sv_0, 7.0 AS sv_1, 6.156937799043062 AS sv_2, 1.1492822966507177 AS sv_3, 2733.0 AS sv_4, 2.615311004784689 AS sv_5, 36.86 AS sv_6, -119.8 AS sv_7 UNION ALL SELECT 28 AS sv_idx, -0.1 AS dual_coeff, 3.0368 AS sv_0, 25.0 AS sv_1, 4.948453608247423 AS sv_2, 0.979381443298969 AS sv_3, 1434.0 AS sv_4, 3.695876288659794 AS sv_5, 34.97 AS sv_6, -120.45 AS sv_7 UNION ALL SELECT 29 AS sv_idx, -0.1 AS dual_coeff, 3.8904 AS sv_0, 21.0 AS sv_1, 5.211965811965812 AS sv_2, 0.9948717948717949 AS sv_3, 2355.0 AS sv_4, 4.0256410256410255 AS sv_5, 32.71 AS sv_6, -116.99 AS sv_7 UNION ALL SELECT 30 AS sv_idx, 0.1 AS dual_coeff, 5.4786 AS sv_0, 18.0 AS sv_1, 6.488921713441655 AS sv_2, 0.948301329394387 AS sv_3, 2095.0 AS sv_4, 3.0945347119645494 AS sv_5, 33.11 AS sv_6, -117.05 AS sv_7 UNION ALL SELECT 31 AS sv_idx, 0.1 AS dual_coeff, 2.7375 AS sv_0, 36.0 AS sv_1, 4.870036101083032 AS sv_2, 1.1245487364620939 AS sv_3, 1544.0 AS sv_4, 2.7870036101083033 AS sv_5, 34.2 AS sv_6, -118.44 AS sv_7 UNION ALL SELECT 32 AS sv_idx, 0.1 AS dual_coeff, 6.7836 AS sv_0, 18.0 AS sv_1, 6.667910447761194 AS sv_2, 0.9402985074626866 AS sv_3, 1803.0 AS sv_4, 3.3638059701492535 AS sv_5, 37.24 AS sv_6, -121.84 AS sv_7 UNION ALL SELECT 33 AS sv_idx, 0.1 AS dual_coeff, 4.526 AS sv_0, 21.0 AS sv_1, 6.285714285714286 AS sv_2, 1.0259165613147914 AS sv_3, 4185.0 AS sv_4, 2.645385587863464 AS sv_5, 33.8 AS sv_6, -118.29 AS sv_7 UNION ALL SELECT 34 AS sv_idx, -0.1 AS dual_coeff, 2.8306 AS sv_0, 29.0 AS sv_1, 4.713798977853492 AS sv_2, 1.0425894378194207 AS sv_3, 1437.0 AS sv_4, 2.4480408858603067 AS sv_5, 32.75 AS sv_6, -117.05 AS sv_7 UNION ALL SELECT 35 AS sv_idx, 0.1 AS dual_coeff, 5.431 AS sv_0, 8.0 AS sv_1, 6.424471299093655 AS sv_2, 1.0709969788519638 AS sv_3, 1883.0 AS sv_4, 2.8444108761329305 AS sv_5, 37.95 AS sv_6, -121.97 AS sv_7 UNION ALL SELECT 36 AS sv_idx, -0.1 AS dual_coeff, 0.9687 AS sv_0, 27.0 AS sv_1, 3.1849056603773587 AS sv_2, 0.939622641509434 AS sv_3, 583.0 AS sv_4, 2.2 AS sv_5, 37.94 AS sv_6, -122.36 AS sv_7 UNION ALL SELECT 37 AS sv_idx, 0.1 AS dual_coeff, 3.375 AS sv_0, 22.0 AS sv_1, 4.639405204460966 AS sv_2, 1.0074349442379182 AS sv_3, 579.0 AS sv_4, 2.1524163568773234 AS sv_5, 37.82 AS sv_6, -121.99 AS sv_7 UNION ALL SELECT 38 AS sv_idx, -0.1 AS dual_coeff, 2.7863 AS sv_0, 19.0 AS sv_1, 5.668817204301075 AS sv_2, 1.124731182795699 AS sv_3, 1184.0 AS sv_4, 2.546236559139785 AS sv_5, 39.79 AS sv_6, -121.58 AS sv_7 UNION ALL SELECT 39 AS sv_idx, 0.1 AS dual_coeff, 3.7813 AS sv_0, 35.0 AS sv_1, 5.002331002331002 AS sv_2, 1.0023310023310024 AS sv_3, 1230.0 AS sv_4, 2.867132867132867 AS sv_5, 33.86 AS sv_6, -117.96 AS sv_7 UNION ALL SELECT 40 AS sv_idx, -0.09023038314288226 AS dual_coeff, 2.4934 AS sv_0, 44.0 AS sv_1, 4.754716981132075 AS sv_2, 1.0766509433962264 AS sv_3, 1622.0 AS sv_4, 1.9127358490566038 AS sv_5, 34.01 AS sv_6, -118.32 AS sv_7 UNION ALL SELECT 41 AS sv_idx, -0.00976961685711775 AS dual_coeff, 5.3098 AS sv_0, 22.0 AS sv_1, 5.589147286821706 AS sv_2, 0.9069767441860465 AS sv_3, 367.0 AS sv_4, 2.8449612403100777 AS sv_5, 38.0 AS sv_6, -121.88 AS sv_7 UNION ALL SELECT 42 AS sv_idx, 0.1 AS dual_coeff, 2.3713 AS sv_0, 18.0 AS sv_1, 3.526605504587156 AS sv_2, 1.0293577981651376 AS sv_3, 1096.0 AS sv_4, 2.0110091743119267 AS sv_5, 37.35 AS sv_6, -121.94 AS sv_7) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 1.57864665765204 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * ((exp(2.7129316632155275e-07 * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3 + kernel_input."Feature_4" * "SV_data".sv_4 + kernel_input."Feature_5" * "SV_data".sv_5 + kernel_input."Feature_6" * "SV_data".sv_6 + kernel_input."Feature_7" * "SV_data".sv_7) + 0.0) - exp(-(2.7129316632155275e-07 * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3 + kernel_input."Feature_4" * "SV_data".sv_4 + kernel_input."Feature_5" * "SV_data".sv_5 + kernel_input."Feature_6" * "SV_data".sv_6 + kernel_input."Feature_7" * "SV_data".sv_7) + 0.0))) / (exp(2.7129316632155275e-07 * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3 + kernel_input."Feature_4" * "SV_data".sv_4 + kernel_input."Feature_5" * "SV_data".sv_5 + kernel_input."Feature_6" * "SV_data".sv_6 + kernel_input."Feature_7" * "SV_data".sv_7) + 0.0) + exp(-(2.7129316632155275e-07 * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3 + kernel_input."Feature_4" * "SV_data".sv_4 + kernel_input."Feature_5" * "SV_data".sv_5 + kernel_input."Feature_6" * "SV_data".sv_6 + kernel_input."Feature_7" * "SV_data".sv_7) + 0.0)))) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp