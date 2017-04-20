-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.00186047721287 AS dual_coeff, 73.0720172618 AS sv_0, 517.958725474 AS sv_1, 0.770664381821 AS sv_2, 7.14677734784 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.126770060516 AS dual_coeff, 12.7816215066 AS sv_0, 586.538124984 AS sv_1, 0.387465731903 AS sv_2, 1.42807482425 AS sv_3 UNION ALL SELECT 2 AS sv_idx, 0.101720306587 AS dual_coeff, 40.3486756526 AS sv_0, 723.180350922 AS sv_1, 0.683449722095 AS sv_2, 9.3826994318 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 0.0320302248668 AS dual_coeff, 37.7447399142 AS sv_0, 786.658892943 AS sv_1, 0.316068978971 AS sv_2, 10.0334365923 AS sv_3 UNION ALL SELECT 4 AS sv_idx, 0.140758389368 AS dual_coeff, 39.8371227545 AS sv_0, 1079.24926317 AS sv_1, 0.874458850065 AS sv_2, 1.8602166587 AS sv_3 UNION ALL SELECT 5 AS sv_idx, 0.090635421805 AS dual_coeff, 50.9425535961 AS sv_0, 783.916255407 AS sv_1, 0.702151378378 AS sv_2, 7.30206427222 AS sv_3 UNION ALL SELECT 6 AS sv_idx, 0.108657767376 AS dual_coeff, 18.873161903 AS sv_0, 1334.11743018 AS sv_1, 0.189492164935 AS sv_2, 6.05634488337 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 0.155536836936 AS dual_coeff, 1.86745061453 AS sv_0, 271.475005514 AS sv_1, 0.249858005817 AS sv_2, 7.99369409216 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 0.0941130179912 AS dual_coeff, 50.5159942277 AS sv_0, 1090.50447736 AS sv_1, 0.520056892964 AS sv_2, 1.17486019723 AS sv_3 UNION ALL SELECT 9 AS sv_idx, 0.182393219594 AS dual_coeff, 0.539487225562 AS sv_0, 1074.74015192 AS sv_1, 0.946841550557 AS sv_2, 4.17607443237 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 0.155568164361 AS dual_coeff, 12.0683052899 AS sv_0, 601.354250584 AS sv_1, 0.724562135477 AS sv_2, 4.92261998025 AS sv_3 UNION ALL SELECT 11 AS sv_idx, 0.112798157056 AS dual_coeff, 43.9559657465 AS sv_0, 1537.68255164 AS sv_1, 0.406586054532 AS sv_2, 10.3369092735 AS sv_3 UNION ALL SELECT 12 AS sv_idx, -0.600391905481 AS dual_coeff, 91.7853607242 AS sv_0, 901.331252276 AS sv_1, 0.0677742207786 AS sv_2, 7.36428678319 AS sv_3 UNION ALL SELECT 13 AS sv_idx, 0.0872841696449 AS dual_coeff, 15.9431517609 AS sv_0, 1470.24052252 AS sv_1, 0.112693143931 AS sv_2, 9.28491364268 AS sv_3 UNION ALL SELECT 14 AS sv_idx, 0.166266022732 AS dual_coeff, 8.18252441301 AS sv_0, 1641.93849326 AS sv_1, 0.294901382102 AS sv_2, 1.42880940572 AS sv_3 UNION ALL SELECT 15 AS sv_idx, -0.397277163114 AS dual_coeff, 93.8847708233 AS sv_0, 727.575957219 AS sv_1, 0.130373822476 AS sv_2, 6.61923232106 AS sv_3 UNION ALL SELECT 16 AS sv_idx, 0.126968715789 AS dual_coeff, 21.5495124189 AS sv_0, 1252.46008228 AS sv_1, 0.306535231322 AS sv_2, 8.50311021306 AS sv_3 UNION ALL SELECT 17 AS sv_idx, 0.102158176102 AS dual_coeff, 91.9526186253 AS sv_0, 1714.735859 AS sv_1, 0.659643809912 AS sv_2, 6.91778448422 AS sv_3 UNION ALL SELECT 18 AS sv_idx, -0.855731707778 AS dual_coeff, 67.3348455237 AS sv_0, 529.312219977 AS sv_1, 0.0438782070567 AS sv_2, 6.99638273786 AS sv_3 UNION ALL SELECT 19 AS sv_idx, 0.160587328691 AS dual_coeff, 9.17923829675 AS sv_0, 488.523463864 AS sv_1, 0.827534943637 AS sv_2, 8.39486790693 AS sv_3 UNION ALL SELECT 20 AS sv_idx, 0.0644725515731 AS dual_coeff, 87.4437352562 AS sv_0, 1012.60853058 AS sv_1, 0.726708108813 AS sv_2, 7.80066184813 AS sv_3 UNION ALL SELECT 21 AS sv_idx, 0.0415934741168 AS dual_coeff, 53.920755742 AS sv_0, 1161.58956992 AS sv_1, 0.32621090462 AS sv_2, 9.99358653891 AS sv_3 UNION ALL SELECT 22 AS sv_idx, -0.822639494406 AS dual_coeff, 66.4689771722 AS sv_0, 135.926535357 AS sv_1, 0.186855792364 AS sv_2, 9.7398536646 AS sv_3 UNION ALL SELECT 23 AS sv_idx, 0.136089556898 AS dual_coeff, 39.3420388505 AS sv_0, 1428.59194681 AS sv_1, 0.584355661135 AS sv_2, 8.60806362882 AS sv_3 UNION ALL SELECT 24 AS sv_idx, -0.216501186644 AS dual_coeff, 74.9520612378 AS sv_0, 394.011658693 AS sv_1, 0.278381583123 AS sv_2, 9.78051135428 AS sv_3 UNION ALL SELECT 25 AS sv_idx, -0.0873594833586 AS dual_coeff, 19.0183004804 AS sv_0, 287.406255396 AS sv_1, 0.13018579732 AS sv_2, 2.29508804301 AS sv_3 UNION ALL SELECT 26 AS sv_idx, 0.0701497822168 AS dual_coeff, 87.3100829479 AS sv_0, 1300.20234926 AS sv_1, 0.590941285649 AS sv_2, 4.68824789342 AS sv_3 UNION ALL SELECT 27 AS sv_idx, 0.156590876308 AS dual_coeff, 31.4781536418 AS sv_0, 1438.62819377 AS sv_1, 0.82324649783 AS sv_2, 10.3798806423 AS sv_3 UNION ALL SELECT 28 AS sv_idx, 0.0822084195938 AS dual_coeff, 88.4023070697 AS sv_0, 1008.52569369 AS sv_1, 0.866557402996 AS sv_2, 6.22363991542 AS sv_3 UNION ALL SELECT 29 AS sv_idx, 0.0829203175832 AS dual_coeff, 86.271454731 AS sv_0, 1500.73312007 AS sv_1, 0.571481389346 AS sv_2, 10.7330358905 AS sv_3 UNION ALL SELECT 30 AS sv_idx, 0.0794358595005 AS dual_coeff, 30.7048762496 AS sv_0, 1601.76067458 AS sv_1, 0.184518019565 AS sv_2, 3.00064041016 AS sv_3 UNION ALL SELECT 31 AS sv_idx, 0.12434955095 AS dual_coeff, 84.4153429108 AS sv_0, 1699.4231469 AS sv_1, 0.841754353883 AS sv_2, 3.72917273935 AS sv_3 UNION ALL SELECT 32 AS sv_idx, -0.0448793729856 AS dual_coeff, 30.0758315035 AS sv_0, 1409.34289574 AS sv_1, 0.0467377454726 AS sv_2, 3.46977589359 AS sv_3 UNION ALL SELECT 33 AS sv_idx, 0.167298549421 AS dual_coeff, 17.3877468068 AS sv_0, 1454.0652895 AS sv_1, 0.748480289757 AS sv_2, 2.13189095859 AS sv_3 UNION ALL SELECT 34 AS sv_idx, 0.175231378089 AS dual_coeff, 9.20320340333 AS sv_0, 1338.15272932 AS sv_1, 0.89820399371 AS sv_2, 8.81042026449 AS sv_3 UNION ALL SELECT 35 AS sv_idx, 0.0693887230935 AS dual_coeff, 27.6539883597 AS sv_0, 314.01747037 AS sv_1, 0.770692362342 AS sv_2, 4.32408798521 AS sv_3 UNION ALL SELECT 36 AS sv_idx, 0.130592760832 AS dual_coeff, 69.230376882 AS sv_0, 1394.03067603 AS sv_1, 0.94380645817 AS sv_2, 5.8222096784 AS sv_3 UNION ALL SELECT 37 AS sv_idx, 0.0952013731948 AS dual_coeff, 33.6134716725 AS sv_0, 1156.54847079 AS sv_1, 0.330213920926 AS sv_2, 5.19846438279 AS sv_3 UNION ALL SELECT 38 AS sv_idx, -0.0917338704603 AS dual_coeff, 22.8060737816 AS sv_0, 528.503819648 AS sv_1, 0.0840439228869 AS sv_2, 9.3596923404 AS sv_3 UNION ALL SELECT 39 AS sv_idx, 0.10300194172 AS dual_coeff, 51.2782041258 AS sv_0, 1317.74626418 AS sv_1, 0.482539715566 AS sv_2, 4.40832966224 AS sv_3 UNION ALL SELECT 40 AS sv_idx, 0.0329425695935 AS dual_coeff, 38.1814271756 AS sv_0, 672.440182995 AS sv_1, 0.374353918607 AS sv_2, 10.1997960831 AS sv_3 UNION ALL SELECT 41 AS sv_idx, 0.0524131284366 AS dual_coeff, 94.264946354 AS sv_0, 790.219070035 AS sv_1, 0.906474899876 AS sv_2, 6.49282409683 AS sv_3 UNION ALL SELECT 42 AS sv_idx, -0.344431668919 AS dual_coeff, 66.2725564241 AS sv_0, 173.481131902 AS sv_1, 0.428690477968 AS sv_2, 2.79604073253 AS sv_3 UNION ALL SELECT 43 AS sv_idx, 0.0853577183517 AS dual_coeff, 35.6031267685 AS sv_0, 1612.34228389 AS sv_1, 0.224737230118 AS sv_2, 3.7117629268 AS sv_3 UNION ALL SELECT 44 AS sv_idx, 0.162580860992 AS dual_coeff, 21.881499145 AS sv_0, 1112.39690339 AS sv_1, 0.981690024668 AS sv_2, 5.19153399717 AS sv_3 UNION ALL SELECT 45 AS sv_idx, 0.0201541238024 AS dual_coeff, 95.4530249568 AS sv_0, 659.466862594 AS sv_1, 0.879354637477 AS sv_2, 9.46557859926 AS sv_3 UNION ALL SELECT 46 AS sv_idx, 0.0480582640745 AS dual_coeff, 42.5616259936 AS sv_0, 1295.74930835 AS sv_1, 0.242075202576 AS sv_2, 8.41122442928 AS sv_3 UNION ALL SELECT 47 AS sv_idx, -0.626519158054 AS dual_coeff, 42.5040930221 AS sv_0, 1697.83899846 AS sv_1, 0.0157233607978 AS sv_2, 9.93492464673 AS sv_3 UNION ALL SELECT 48 AS sv_idx, 0.0012922844755 AS dual_coeff, 2.93968140409 AS sv_0, 270.134612686 AS sv_1, 0.0649513741658 AS sv_2, 5.51606114861 AS sv_3 UNION ALL SELECT 49 AS sv_idx, -0.162819808171 AS dual_coeff, 96.6905776516 AS sv_0, 1577.54377871 AS sv_1, 0.10092675372 AS sv_2, 8.97738916899 AS sv_3 UNION ALL SELECT 50 AS sv_idx, 0.0904974676219 AS dual_coeff, 41.8778524675 AS sv_0, 643.409454297 AS sv_1, 0.701153035835 AS sv_2, 10.4419524027 AS sv_3 UNION ALL SELECT 51 AS sv_idx, 0.142159228773 AS dual_coeff, 10.654371839 AS sv_0, 1332.79051449 AS sv_1, 0.196086500314 AS sv_2, 8.53646964532 AS sv_3 UNION ALL SELECT 52 AS sv_idx, 0.0837634087644 AS dual_coeff, 95.8118367701 AS sv_0, 1126.20898492 AS sv_1, 0.85413179688 AS sv_2, 4.03317453477 AS sv_3 UNION ALL SELECT 53 AS sv_idx, 0.00643419276572 AS dual_coeff, 59.8748823532 AS sv_0, 611.267544506 AS sv_1, 0.549986067677 AS sv_2, 1.66097661272 AS sv_3) AS "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 1.28769045428 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * exp(CASE WHEN (-0.25 * (power("ADS"."Feature_0" - "SV_data".sv_0, 2) + power("ADS"."Feature_1" - "SV_data".sv_1, 2) + power("ADS"."Feature_2" - "SV_data".sv_2, 2) + power("ADS"."Feature_3" - "SV_data".sv_3, 2)) >= -709.782712893) THEN -0.25 * (power("ADS"."Feature_0" - "SV_data".sv_0, 2) + power("ADS"."Feature_1" - "SV_data".sv_1, 2) + power("ADS"."Feature_2" - "SV_data".sv_2, 2) + power("ADS"."Feature_3" - "SV_data".sv_3, 2)) ELSE -709.782712893 END) AS dot_prod1 
FROM freidman3 AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_cte."KEY" AS "KEY", kernel_cte.dot_product AS "Estimator" 
FROM kernel_cte