-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.877208798 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 1004.64849472 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.51124663095 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.52841733634 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman2 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 43.877208798) / 29.3945533624 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 1004.64849472) / 448.305568642 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.51124663095) / 0.293373615691 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.52841733634) / 2.95922944014 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, -0.600602488623 AS sv_0, -1.16704034684 AS sv_1, 0.357361287435 AS sv_2, 1.21188503331 AS sv_3 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, 0.0919270978112 AS sv_0, -1.27696099885 AS sv_1, -0.443806767591 AS sv_2, -0.40189677164 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, -1.03877981039 AS sv_0, 0.70347535862 AS sv_1, -1.14620576845 AS sv_2, 0.445000358122 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, -1.0481924807 AS sv_0, 1.35127793057 AS sv_1, 1.08794229007 AS sv_2, 1.23901962536 AS sv_3 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, -0.442001283249 AS sv_0, -0.246538003372 AS sv_1, 1.24791671716 AS sv_2, 1.40054970569 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, -0.881334131967 AS sv_0, 0.820574814447 AS sv_1, -1.23240412588 AS sv_2, -1.22160008794 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, -1.14908688162 AS sv_0, -1.45849433342 AS sv_1, 1.59806351256 AS sv_2, 0.783459243829 AS sv_3 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, 0.930577430359 AS sv_0, 1.00375715411 AS sv_1, -1.53465825524 AS sv_2, 0.425928587482 AS sv_3 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, -0.891533457942 AS sv_0, -1.58729479927 AS sv_1, -0.776415783041 AS sv_2, 0.886282113059 AS sv_3 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, -1.07761640573 AS sv_0, 0.841637837538 AS sv_1, 1.30329053696 AS sv_2, 0.46590667546 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 0.584251072494 AS sv_0, 0.748355986255 AS sv_1, 1.52712681576 AS sv_2, -0.819021179202 AS sv_3 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.829606841679 AS sv_0, -0.922282436537 AS sv_1, -1.64791856612 AS sv_2, 0.454252577021 AS sv_3 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, -0.367233314259 AS sv_0, 0.0915444324174 AS sv_1, 0.850735439005 AS sv_2, 0.604819237569 AS sv_3 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, -0.55634140432 AS sv_0, 0.971110744283 AS sv_1, -0.386247400973 AS sv_2, 1.35268796611 AS sv_3 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 0.833561105437 AS sv_0, -0.632471344185 AS sv_1, -1.19707114788 AS sv_2, -1.02429290911 AS sv_3 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 1.04539366642 AS sv_0, 1.49872353724 AS sv_1, -0.263695240417 AS sv_2, -0.539475819613 AS sv_3 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.669307886345 AS sv_0, 0.864936821032 AS sv_1, -0.847682889523 AS sv_2, -0.0281806147253 AS sv_3 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, -1.32895533941 AS sv_0, 0.772626982733 AS sv_1, 1.43968000969 AS sv_2, 0.570841828671 AS sv_3 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, -1.17041408799 AS sv_0, -0.344674422294 AS sv_1, -1.62475902772 AS sv_2, -1.38727621599 AS sv_3 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, -0.554496317929 AS sv_0, -0.275394869261 AS sv_1, -0.604804203937 AS sv_2, 0.225237151448 AS sv_3 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, -0.729327831956 AS sv_0, -1.61190307679 AS sv_1, 0.582518985351 AS sv_2, -1.3182993033 AS sv_3 UNION ALL SELECT 21 AS sv_idx, -1.0 AS dual_coeff, -0.423279208538 AS sv_0, -0.614444310312 AS sv_1, -0.873049459881 AS sv_2, -1.26497953666 AS sv_3 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, 1.18113026369 AS sv_0, -0.858808924315 AS sv_1, 0.403637249769 AS sv_2, -0.7179325258 AS sv_3 UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, -1.09195896729 AS sv_0, 0.742609757759 AS sv_1, -0.350935340398 AS sv_2, -0.600154102118 AS sv_3 UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, 1.85908986877 AS sv_0, -0.996296069854 AS sv_1, -0.815523491807 AS sv_2, 0.146976111669 AS sv_3 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 0.226028055225 AS sv_0, 0.742133013294 AS sv_1, -1.13632642786 AS sv_2, -0.0802557763143 AS sv_3 UNION ALL SELECT 26 AS sv_idx, -1.0 AS dual_coeff, -0.00947809323625 AS sv_0, 0.0847284370358 AS sv_1, -1.23199085042 AS sv_2, -0.962699760076 AS sv_3 UNION ALL SELECT 27 AS sv_idx, -1.0 AS dual_coeff, -1.13251364428 AS sv_0, -1.39725538503 AS sv_1, -1.15369520881 AS sv_2, -1.70248410641 AS sv_3 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, -1.48310092752 AS sv_0, 1.45170263426 AS sv_1, 0.0337512237954 AS sv_2, 0.609066766813 AS sv_3 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, -1.18048292062 AS sv_0, 1.52103372422 AS sv_1, -0.779046831757 AS sv_2, 1.24787573695 AS sv_3 UNION ALL SELECT 30 AS sv_idx, -1.0 AS dual_coeff, 1.39840880646 AS sv_0, -0.423792351597 AS sv_1, -1.07485566194 AS sv_2, -0.566144104739 AS sv_3 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, -0.824706440037 AS sv_0, -0.37561792647 AS sv_1, 1.65605342609 AS sv_2, 0.671435407831 AS sv_3 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, 1.43696942288 AS sv_0, 0.992710397628 AS sv_1, 0.751105855566 AS sv_2, -0.460250397817 AS sv_3 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, 0.363770931859 AS sv_0, 0.383892899412 AS sv_1, 1.42576489715 AS sv_2, -1.53074994009 AS sv_3 UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, 1.4556965326 AS sv_0, 0.586953348817 AS sv_1, 1.54626907876 AS sv_2, 0.622513722031 AS sv_3 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, -0.248995047539 AS sv_0, -0.644085278726 AS sv_1, 1.5146572445 AS sv_2, -1.80575605447 AS sv_3 UNION ALL SELECT 36 AS sv_idx, -1.0 AS dual_coeff, -1.33201051567 AS sv_0, -1.30662177222 AS sv_1, 0.289181064552 AS sv_2, 0.613029390361 AS sv_3 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, -0.255392346917 AS sv_0, 1.29708186366 AS sv_1, -0.6019278071 AS sv_2, -0.258138245366 AS sv_3 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, -0.0449538429169 AS sv_0, 1.01106291817 AS sv_1, 1.24555753291 AS sv_2, 1.38175543303 AS sv_3 UNION ALL SELECT 39 AS sv_idx, -1.0 AS dual_coeff, -1.03938504704 AS sv_0, -0.828165614172 AS sv_1, -1.4824698113 AS sv_2, -0.99438654423 AS sv_3 UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, -0.845712037333 AS sv_0, 0.235506378792 AS sv_1, 1.28649127132 AS sv_2, -1.45186344995 AS sv_3 UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, 0.316332556702 AS sv_0, -1.2676882006 AS sv_1, -0.3391625311 AS sv_2, 1.49622316498 AS sv_3 UNION ALL SELECT 42 AS sv_idx, 1.0 AS dual_coeff, -0.0675163027525 AS sv_0, -0.854129483758 AS sv_1, 1.55382052179 AS sv_2, -1.7597675714 AS sv_3 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, -1.44837584736 AS sv_0, -0.00369825478945 AS sv_1, -0.124607342019 AS sv_2, -1.24549014507 AS sv_3 UNION ALL SELECT 44 AS sv_idx, -1.0 AS dual_coeff, -0.175310414056 AS sv_0, -0.604364603265 AS sv_1, -0.89930149014 AS sv_2, 0.132454149063 AS sv_3 UNION ALL SELECT 45 AS sv_idx, -1.0 AS dual_coeff, 0.807705077743 AS sv_0, -0.962244794477 AS sv_1, 0.167179119458 AS sv_2, 1.19331794045 AS sv_3 UNION ALL SELECT 46 AS sv_idx, -1.0 AS dual_coeff, 1.26898749018 AS sv_0, -1.19919503381 AS sv_1, 0.0494828278708 AS sv_2, 1.36913685782 AS sv_3 UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, 1.40575994244 AS sv_0, 1.62819938814 AS sv_1, -0.488523676217 AS sv_2, -1.43672518604 AS sv_3 UNION ALL SELECT 48 AS sv_idx, 1.0 AS dual_coeff, 0.345265860739 AS sv_0, 1.52137520429 AS sv_1, 0.4914826858 AS sv_2, 0.530048730017 AS sv_3 UNION ALL SELECT 49 AS sv_idx, 1.0 AS dual_coeff, 1.02801766284 AS sv_0, 0.0230054083665 AS sv_1, 0.230038626736 AS sv_2, -1.03632103201 AS sv_3 UNION ALL SELECT 50 AS sv_idx, -1.0 AS dual_coeff, 0.673736299764 AS sv_0, -0.455557080003 AS sv_1, -0.313414500031 AS sv_2, 1.49845364046 AS sv_3 UNION ALL SELECT 51 AS sv_idx, 1.0 AS dual_coeff, -0.754876763298 AS sv_0, 1.55618730444 AS sv_1, 1.43967966996 AS sv_2, 0.807821894235 AS sv_3 UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, 1.69955320792 AS sv_0, 1.37874624597 AS sv_1, 0.396123834475 AS sv_2, 0.918088244286 AS sv_3 UNION ALL SELECT 53 AS sv_idx, 1.0 AS dual_coeff, 0.0854271561192 AS sv_0, 1.60797967492 AS sv_1, 0.750868180384 AS sv_2, -0.935764045989 AS sv_3 UNION ALL SELECT 54 AS sv_idx, 1.0 AS dual_coeff, 0.0661242168991 AS sv_0, -0.245089930646 AS sv_1, 1.21188667261 AS sv_2, 0.754197552961 AS sv_3 UNION ALL SELECT 55 AS sv_idx, 1.0 AS dual_coeff, -1.36135719096 AS sv_0, -0.0104932987824 AS sv_1, 0.604876613309 AS sv_2, -1.18342407889 AS sv_3 UNION ALL SELECT 56 AS sv_idx, -1.0 AS dual_coeff, -1.43774514287 AS sv_0, -0.781901770811 AS sv_1, -1.4540052669 AS sv_2, -0.722118145971 AS sv_3 UNION ALL SELECT 57 AS sv_idx, 1.0 AS dual_coeff, 1.46965067555 AS sv_0, 1.33899729026 AS sv_1, 0.0894591408417 AS sv_2, 1.05749392773 AS sv_3 UNION ALL SELECT 58 AS sv_idx, -1.0 AS dual_coeff, 1.12993034995 AS sv_0, 0.122086399398 AS sv_1, -0.762445465179 AS sv_2, 1.30905125261 AS sv_3 UNION ALL SELECT 59 AS sv_idx, 1.0 AS dual_coeff, -0.708451070738 AS sv_0, 0.722285176164 AS sv_1, 0.656280331014 AS sv_2, 0.927363013595 AS sv_3 UNION ALL SELECT 60 AS sv_idx, -1.0 AS dual_coeff, 0.237981307111 AS sv_0, -0.182825676669 AS sv_1, -0.683917164688 AS sv_2, -0.793059026713 AS sv_3 UNION ALL SELECT 61 AS sv_idx, -1.0 AS dual_coeff, -0.320001221134 AS sv_0, -1.06486395527 AS sv_1, -0.712150441392 AS sv_2, 0.748743961221 AS sv_3 UNION ALL SELECT 62 AS sv_idx, -1.0 AS dual_coeff, 1.75862248545 AS sv_0, -1.64500174655 AS sv_1, 1.39298993773 AS sv_2, -1.3104203024 AS sv_3 UNION ALL SELECT 63 AS sv_idx, -1.0 AS dual_coeff, 0.274838181761 AS sv_0, -1.88295304334 AS sv_1, -1.09505357583 AS sv_2, -0.491349200576 AS sv_3 UNION ALL SELECT 64 AS sv_idx, -1.0 AS dual_coeff, 1.86702488619 AS sv_0, -0.904307673035 AS sv_1, -0.781565722436 AS sv_2, 0.872809847704 AS sv_3 UNION ALL SELECT 65 AS sv_idx, 1.0 AS dual_coeff, 1.63984295002 AS sv_0, 0.121566670768 AS sv_1, 0.217296833329 AS sv_2, 0.125088499904 AS sv_3) AS "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 409.123986631 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data".dual_coeff * ("ADS_sca_2_OUT".scaler_output_2 * "SV_data".sv_0 + "ADS_sca_2_OUT".scaler_output_3 * "SV_data".sv_1 + "ADS_sca_2_OUT".scaler_output_4 * "SV_data".sv_2 + "ADS_sca_2_OUT".scaler_output_5 * "SV_data".sv_3) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_cte."KEY" AS "KEY", kernel_cte.dot_product AS "Estimator" 
FROM kernel_cte