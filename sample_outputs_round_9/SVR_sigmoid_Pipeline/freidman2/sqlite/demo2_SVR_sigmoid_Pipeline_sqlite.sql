-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 37.1024906382 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 820.420898922 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.566181762373 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.66448350657 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman2 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 37.1024906382) / 27.2361073362 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 820.420898922) / 386.031348182 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.566181762373) / 0.306900434257 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.66448350657) / 3.34652241867 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 0.220060490956 AS sv_0, 0.291104580959 AS sv_1, -0.818337617437 AS sv_2, -0.00812391265666 AS sv_3 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.706208085153 AS sv_0, 1.72400774526 AS sv_1, -1.67020294813 AS sv_2, -0.0962664240766 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, -1.047780577 AS sv_0, 0.898258054886 AS sv_1, -1.14360616108 AS sv_2, 1.15306202953 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, 0.534144963937 AS sv_0, 0.155962435619 AS sv_1, 0.00137430154175 AS sv_2, 0.850291379931 AS sv_3 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 1.44631795197 AS sv_0, -1.55570693091 AS sv_1, 0.648397569942 AS sv_2, 0.0140017796406 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 0.164499099534 AS sv_0, -0.997912200969 AS sv_1, -1.51915034699 AS sv_2, -1.24981948012 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, -1.35684921311 AS sv_0, -1.43956176951 AS sv_1, -0.223086921758 AS sv_2, 0.624095816454 AS sv_3 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, -1.30710160499 AS sv_0, -1.79718941375 AS sv_1, -0.735675244097 AS sv_2, 0.940844015355 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 1.19257310074 AS sv_0, 0.323706610689 AS sv_1, 0.741403439179 AS sv_2, 1.19951886296 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, -0.774377257792 AS sv_0, -0.574238148168 AS sv_1, -1.65478507028 AS sv_2, 1.01640062949 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, -1.01076408539 AS sv_0, 0.597832962823 AS sv_1, 0.174419015679 AS sv_2, 0.495383800308 AS sv_3 UNION ALL SELECT 11 AS sv_idx, 1.0 AS dual_coeff, 0.439232200934 AS sv_0, 1.28895145587 AS sv_1, 0.603753149299 AS sv_2, -1.29984840424 AS sv_3 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, -1.25568037265 AS sv_0, 0.692858227648 AS sv_1, -0.439718819933 AS sv_2, 1.01425832702 AS sv_3 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, 1.9345610707 AS sv_0, 1.48326059879 AS sv_1, 0.919646059068 AS sv_2, 0.802340001117 AS sv_3 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 1.18555506051 AS sv_0, -1.48583198318 AS sv_1, 1.20337182821 AS sv_2, -0.305899688374 AS sv_3 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 1.50282677675 AS sv_0, 0.54932947075 AS sv_1, 1.32341818709 AS sv_2, -1.62378749842 AS sv_3 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.40540083791 AS sv_0, -0.153771997987 AS sv_1, -0.842940359227 AS sv_2, -1.64750527014 AS sv_3 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, -0.159478546964 AS sv_0, -0.631845346433 AS sv_1, 0.730552659331 AS sv_2, 0.27533769545 AS sv_3 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, -1.29762513179 AS sv_0, 0.00659629188135 AS sv_1, 1.17265600446 AS sv_2, 0.921604192064 AS sv_3 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, -0.636794256008 AS sv_0, -1.42010460146 AS sv_1, -0.379759157422 AS sv_2, -1.43449023122 AS sv_3 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 1.54201938062 AS sv_0, 1.28191996745 AS sv_1, 1.36910880422 AS sv_2, -0.225012363389 AS sv_3 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, -0.119129437457 AS sv_0, 0.580921814701 AS sv_1, 0.600057678345 AS sv_2, -1.59641816142 AS sv_3 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, -0.11754141851 AS sv_0, 0.435413472133 AS sv_1, 1.29788214258 AS sv_2, -1.15142645492 AS sv_3 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, -0.700381481029 AS sv_0, 0.105867291132 AS sv_1, -1.51196105574 AS sv_2, 0.0400390701003 AS sv_3) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 419.726358335 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data".dual_coeff * tanh(0.25 * ("ADS_sca_2_OUT".scaler_output_2 * "SV_data".sv_0 + "ADS_sca_2_OUT".scaler_output_3 * "SV_data".sv_1 + "ADS_sca_2_OUT".scaler_output_4 * "SV_data".sv_2 + "ADS_sca_2_OUT".scaler_output_5 * "SV_data".sv_3) + 0.0) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp