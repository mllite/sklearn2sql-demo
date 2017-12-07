-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8475 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.03666666667 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.845 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM iris AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 5.8475) / 0.827039146595 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 3.03666666667) / 0.436259352017 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 3.845) / 1.7098172417 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 1.245) / 0.749872211336 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"SV_data_0_1" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.942246179473 AS dual_coeff, -0.54108684195 AS sv_0, 0.832837924628 AS sv_1, -1.37149160905 AS sv_2, -1.12685866635 AS sv_3 FROM rdb$database UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, -0.903826624263 AS sv_0, 0.603616477483 AS sv_1, -1.25452004325 AS sv_2, -0.993502611162 AS sv_3 FROM rdb$database UNION ALL SELECT 2 AS sv_idx, 0.190636686316 AS dual_coeff, -1.62930618889 AS sv_0, -1.68859799397 AS sv_1, -1.48846317486 AS sv_2, -1.26021472154 AS sv_3 FROM rdb$database UNION ALL SELECT 3 AS sv_idx, -0.0 AS dual_coeff, 0.184392722676 AS sv_0, -0.313269311099 AS sv_1, 0.383081878008 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 4 AS sv_idx, -0.0 AS dual_coeff, 1.15169880884 AS sv_0, -0.542490758244 AS sv_1, 0.558539226715 AS sv_2, 0.206701885544 AS sv_3 FROM rdb$database UNION ALL SELECT 5 AS sv_idx, -0.0 AS dual_coeff, -0.420173581179 AS sv_0, -1.23015509968 AS sv_1, 0.0906529634982 AS sv_2, 0.0733458303543 AS sv_3 FROM rdb$database UNION ALL SELECT 6 AS sv_idx, -0.0 AS dual_coeff, 0.547132504989 AS sv_0, 0.603616477483 AS sv_1, 0.500053443813 AS sv_2, 0.473413995923 AS sv_3 FROM rdb$database UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, -0.903826624263 AS sv_0, -1.23015509968 AS sv_1, -0.494204865522 AS sv_2, -0.193366280025 AS sv_3 FROM rdb$database UNION ALL SELECT 8 AS sv_idx, -0.0 AS dual_coeff, 1.39352533039 AS sv_0, 0.374395030337 AS sv_1, 0.500053443813 AS sv_2, 0.206701885544 AS sv_3 FROM rdb$database UNION ALL SELECT 9 AS sv_idx, -0.0 AS dual_coeff, 0.909872287302 AS sv_0, -0.0840478639533 AS sv_1, 0.324596095106 AS sv_2, 0.206701885544 AS sv_3 FROM rdb$database UNION ALL SELECT 10 AS sv_idx, -0.0 AS dual_coeff, -0.420173581179 AS sv_0, -1.68859799397 AS sv_1, 0.0906529634982 AS sv_2, 0.0733458303543 AS sv_3 FROM rdb$database UNION ALL SELECT 11 AS sv_idx, -0.0 AS dual_coeff, -0.420173581179 AS sv_0, -1.00093365253 AS sv_1, 0.324596095106 AS sv_2, -0.0600102248353 AS sv_3 FROM rdb$database UNION ALL SELECT 12 AS sv_idx, -0.0 AS dual_coeff, -0.782913363492 AS sv_0, -0.771712205389 AS sv_1, 0.0321671805961 AS sv_2, 0.206701885544 AS sv_3 FROM rdb$database UNION ALL SELECT 13 AS sv_idx, -0.0 AS dual_coeff, 0.547132504989 AS sv_0, -1.68859799397 AS sv_1, 0.324596095106 AS sv_2, 0.0733458303543 AS sv_3 FROM rdb$database UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, -0.178347059637 AS sv_0, -0.0840478639533 AS sv_1, 0.207624529302 AS sv_2, -0.0600102248353 AS sv_3 FROM rdb$database UNION ALL SELECT 15 AS sv_idx, -0.0 AS dual_coeff, -0.178347059637 AS sv_0, -0.542490758244 AS sv_1, 0.383081878008 AS sv_2, 0.0733458303543 AS sv_3 FROM rdb$database UNION ALL SELECT 16 AS sv_idx, -0.0 AS dual_coeff, 0.426219244218 AS sv_0, -1.91781944112 AS sv_1, 0.383081878008 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 17 AS sv_idx, -0.0 AS dual_coeff, 0.0634794619048 AS sv_0, 0.374395030337 AS sv_1, 0.558539226715 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 18 AS sv_idx, -0.0 AS dual_coeff, 0.184392722676 AS sv_0, 0.832837924628 AS sv_1, 0.383081878008 AS sv_2, 0.473413995923 AS sv_3 FROM rdb$database UNION ALL SELECT 19 AS sv_idx, -0.0 AS dual_coeff, 1.03078554807 AS sv_0, 0.145173583192 AS sv_1, 0.500053443813 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 20 AS sv_idx, -0.0 AS dual_coeff, 0.547132504989 AS sv_0, -1.23015509968 AS sv_1, 0.617025009617 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 21 AS sv_idx, -0.0 AS dual_coeff, 0.305305983447 AS sv_0, -0.313269311099 AS sv_1, 0.500053443813 AS sv_2, 0.206701885544 AS sv_3 FROM rdb$database UNION ALL SELECT 22 AS sv_idx, -0.0 AS dual_coeff, -0.54108684195 AS sv_0, -0.0840478639533 AS sv_1, 0.383081878008 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 23 AS sv_idx, -0.0 AS dual_coeff, 1.03078554807 AS sv_0, -0.0840478639533 AS sv_1, 0.675510792519 AS sv_2, 0.606770051113 AS sv_3 FROM rdb$database UNION ALL SELECT 24 AS sv_idx, -0.13288286579 AS dual_coeff, -0.178347059637 AS sv_0, -1.00093365253 AS sv_1, -0.201775951012 AS sv_2, -0.326722335214 AS sv_3 FROM rdb$database UNION ALL SELECT 25 AS sv_idx, -0.0 AS dual_coeff, 0.305305983447 AS sv_0, -0.542490758244 AS sv_1, 0.500053443813 AS sv_2, -0.0600102248353 AS sv_3 FROM rdb$database UNION ALL SELECT 26 AS sv_idx, -0.0 AS dual_coeff, 0.66804576576 AS sv_0, 0.374395030337 AS sv_1, 0.383081878008 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 27 AS sv_idx, -0.0 AS dual_coeff, 1.27261206961 AS sv_0, 0.145173583192 AS sv_1, 0.617025009617 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database) AS "Values"), 
kernel_dp_0_1 AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + -0.996328376128 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data_0_1".dual_coeff * power(0.25 * ("ADS_sca_2_OUT".scaler_output_2 * "SV_data_0_1".sv_0 + "ADS_sca_2_OUT".scaler_output_3 * "SV_data_0_1".sv_1 + "ADS_sca_2_OUT".scaler_output_4 * "SV_data_0_1".sv_2 + "ADS_sca_2_OUT".scaler_output_5 * "SV_data_0_1".sv_3) + 0.0, 3) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data_0_1") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t), 
kernel_cte_0_1 AS 
(SELECT kernel_dp_0_1."KEY" AS "KEY", 0 AS "OVO_Class1", 1 AS "OVO_Class2", CASE WHEN (-kernel_dp_0_1.dot_product >= 0.0) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-kernel_dp_0_1.dot_product, 1.0 / (1.0 + exp(CASE WHEN ((-kernel_dp_0_1.dot_product) * -2.4598204944 + 0.470980337169 >= -709.782712893) THEN (-kernel_dp_0_1.dot_product) * -2.4598204944 + 0.470980337169 ELSE -709.782712893 END))) AS "OVO_Confidence" 
FROM kernel_dp_0_1), 
"SV_data_0_2" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.672550006839 AS dual_coeff, -0.54108684195 AS sv_0, 0.832837924628 AS sv_1, -1.37149160905 AS sv_2, -1.12685866635 AS sv_3 FROM rdb$database UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, -0.903826624263 AS sv_0, 0.603616477483 AS sv_1, -1.25452004325 AS sv_2, -0.993502611162 AS sv_3 FROM rdb$database UNION ALL SELECT 2 AS sv_idx, 0.0579483746902 AS dual_coeff, -1.62930618889 AS sv_0, -1.68859799397 AS sv_1, -1.48846317486 AS sv_2, -1.26021472154 AS sv_3 FROM rdb$database UNION ALL SELECT 28 AS sv_idx, -0.0 AS dual_coeff, 0.788959026531 AS sv_0, -0.0840478639533 AS sv_1, 0.792482358323 AS sv_2, 1.00683821668 AS sv_3 FROM rdb$database UNION ALL SELECT 29 AS sv_idx, -0.0 AS dual_coeff, -0.0574337988662 AS sv_0, -0.771712205389 AS sv_1, 0.733996575421 AS sv_2, 0.873482161492 AS sv_3 FROM rdb$database UNION ALL SELECT 30 AS sv_idx, -0.0 AS dual_coeff, 0.305305983447 AS sv_0, -0.0840478639533 AS sv_1, 0.617025009617 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 31 AS sv_idx, -0.26573481609 AS dual_coeff, -1.1456531458 AS sv_0, -1.23015509968 AS sv_1, 0.383081878008 AS sv_2, 0.606770051113 AS sv_3 FROM rdb$database UNION ALL SELECT 32 AS sv_idx, -0.0 AS dual_coeff, -0.178347059637 AS sv_0, -1.23015509968 AS sv_1, 0.675510792519 AS sv_2, 1.00683821668 AS sv_3 FROM rdb$database UNION ALL SELECT 33 AS sv_idx, -0.0 AS dual_coeff, 0.788959026531 AS sv_0, 0.374395030337 AS sv_1, 0.733996575421 AS sv_2, 1.00683821668 AS sv_3 FROM rdb$database UNION ALL SELECT 34 AS sv_idx, -0.0 AS dual_coeff, 0.66804576576 AS sv_0, 0.374395030337 AS sv_1, 0.850968141225 AS sv_2, 1.40690638225 AS sv_3 FROM rdb$database UNION ALL SELECT 35 AS sv_idx, -0.0 AS dual_coeff, 0.547132504989 AS sv_0, -0.771712205389 AS sv_1, 0.617025009617 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 36 AS sv_idx, -0.46476356544 AS dual_coeff, 0.0634794619048 AS sv_0, -0.0840478639533 AS sv_1, 0.733996575421 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 37 AS sv_idx, -0.0 AS dual_coeff, 0.547132504989 AS sv_0, -0.313269311099 AS sv_1, 1.02642548993 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 38 AS sv_idx, -1.0 AS dual_coeff, 0.184392722676 AS sv_0, -0.0840478639533 AS sv_1, 0.558539226715 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 39 AS sv_idx, -0.0 AS dual_coeff, 0.305305983447 AS sv_0, -1.00093365253 AS sv_1, 1.02642548993 AS sv_2, 0.206701885544 AS sv_3 FROM rdb$database UNION ALL SELECT 40 AS sv_idx, -0.0 AS dual_coeff, -0.299260320408 AS sv_0, -0.542490758244 AS sv_1, 0.617025009617 AS sv_2, 1.00683821668 AS sv_3 FROM rdb$database UNION ALL SELECT 41 AS sv_idx, -0.0 AS dual_coeff, 0.426219244218 AS sv_0, 0.832837924628 AS sv_1, 0.909453924127 AS sv_2, 1.40690638225 AS sv_3 FROM rdb$database UNION ALL SELECT 42 AS sv_idx, -0.0 AS dual_coeff, 0.547132504989 AS sv_0, -0.542490758244 AS sv_1, 0.733996575421 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 43 AS sv_idx, -0.0 AS dual_coeff, 0.788959026531 AS sv_0, -0.0840478639533 AS sv_1, 0.967939707029 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 44 AS sv_idx, -0.0 AS dual_coeff, -0.0574337988662 AS sv_0, -0.771712205389 AS sv_1, 0.733996575421 AS sv_2, 0.873482161492 AS sv_3 FROM rdb$database UNION ALL SELECT 45 AS sv_idx, -0.0 AS dual_coeff, 1.63535185193 AS sv_0, -0.0840478639533 AS sv_1, 1.14339705574 AS sv_2, 0.473413995923 AS sv_3 FROM rdb$database UNION ALL SELECT 46 AS sv_idx, -0.0 AS dual_coeff, 0.184392722676 AS sv_0, -1.91781944112 AS sv_1, 0.675510792519 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 47 AS sv_idx, -0.0 AS dual_coeff, 0.66804576576 AS sv_0, -0.771712205389 AS sv_1, 0.850968141225 AS sv_2, 0.873482161492 AS sv_3 FROM rdb$database UNION ALL SELECT 48 AS sv_idx, -0.0 AS dual_coeff, 0.547132504989 AS sv_0, -1.23015509968 AS sv_1, 0.675510792519 AS sv_2, 0.873482161492 AS sv_3 FROM rdb$database) AS "Values"), 
kernel_dp_0_2 AS 
(SELECT t_1."KEY" AS "KEY", t_1.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_1."KEY" AS "KEY", sum(full_join_data_sv_1.dot_prod1) + -0.803635075964 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data_0_2".dual_coeff * power(0.25 * ("ADS_sca_2_OUT".scaler_output_2 * "SV_data_0_2".sv_0 + "ADS_sca_2_OUT".scaler_output_3 * "SV_data_0_2".sv_1 + "ADS_sca_2_OUT".scaler_output_4 * "SV_data_0_2".sv_2 + "ADS_sca_2_OUT".scaler_output_5 * "SV_data_0_2".sv_3) + 0.0, 3) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data_0_2") AS full_join_data_sv_1 GROUP BY full_join_data_sv_1."KEY") AS t_1), 
kernel_cte_0_2 AS 
(SELECT kernel_dp_0_2."KEY" AS "KEY", 0 AS "OVO_Class1", 2 AS "OVO_Class2", CASE WHEN (-kernel_dp_0_2.dot_product >= 0.0) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-kernel_dp_0_2.dot_product, 1.0 / (1.0 + exp(CASE WHEN ((-kernel_dp_0_2.dot_product) * -2.0840925789 + 0.0428141275995 >= -709.782712893) THEN (-kernel_dp_0_2.dot_product) * -2.0840925789 + 0.0428141275995 ELSE -709.782712893 END))) AS "OVO_Confidence" 
FROM kernel_dp_0_2), 
"SV_data_1_2" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 3 AS sv_idx, 1.0 AS dual_coeff, 0.184392722676 AS sv_0, -0.313269311099 AS sv_1, 0.383081878008 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 1.15169880884 AS sv_0, -0.542490758244 AS sv_1, 0.558539226715 AS sv_2, 0.206701885544 AS sv_3 FROM rdb$database UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, -0.420173581179 AS sv_0, -1.23015509968 AS sv_1, 0.0906529634982 AS sv_2, 0.0733458303543 AS sv_3 FROM rdb$database UNION ALL SELECT 6 AS sv_idx, 1.0 AS dual_coeff, 0.547132504989 AS sv_0, 0.603616477483 AS sv_1, 0.500053443813 AS sv_2, 0.473413995923 AS sv_3 FROM rdb$database UNION ALL SELECT 7 AS sv_idx, 0.0 AS dual_coeff, -0.903826624263 AS sv_0, -1.23015509968 AS sv_1, -0.494204865522 AS sv_2, -0.193366280025 AS sv_3 FROM rdb$database UNION ALL SELECT 8 AS sv_idx, 0.945028605904 AS dual_coeff, 1.39352533039 AS sv_0, 0.374395030337 AS sv_1, 0.500053443813 AS sv_2, 0.206701885544 AS sv_3 FROM rdb$database UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, 0.909872287302 AS sv_0, -0.0840478639533 AS sv_1, 0.324596095106 AS sv_2, 0.206701885544 AS sv_3 FROM rdb$database UNION ALL SELECT 10 AS sv_idx, 0.406425390618 AS dual_coeff, -0.420173581179 AS sv_0, -1.68859799397 AS sv_1, 0.0906529634982 AS sv_2, 0.0733458303543 AS sv_3 FROM rdb$database UNION ALL SELECT 11 AS sv_idx, 1.0 AS dual_coeff, -0.420173581179 AS sv_0, -1.00093365253 AS sv_1, 0.324596095106 AS sv_2, -0.0600102248353 AS sv_3 FROM rdb$database UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, -0.782913363492 AS sv_0, -0.771712205389 AS sv_1, 0.0321671805961 AS sv_2, 0.206701885544 AS sv_3 FROM rdb$database UNION ALL SELECT 13 AS sv_idx, 0.805361214113 AS dual_coeff, 0.547132504989 AS sv_0, -1.68859799397 AS sv_1, 0.324596095106 AS sv_2, 0.0733458303543 AS sv_3 FROM rdb$database UNION ALL SELECT 14 AS sv_idx, 0.0 AS dual_coeff, -0.178347059637 AS sv_0, -0.0840478639533 AS sv_1, 0.207624529302 AS sv_2, -0.0600102248353 AS sv_3 FROM rdb$database UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, -0.178347059637 AS sv_0, -0.542490758244 AS sv_1, 0.383081878008 AS sv_2, 0.0733458303543 AS sv_3 FROM rdb$database UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, 0.426219244218 AS sv_0, -1.91781944112 AS sv_1, 0.383081878008 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, 0.0634794619048 AS sv_0, 0.374395030337 AS sv_1, 0.558539226715 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, 0.184392722676 AS sv_0, 0.832837924628 AS sv_1, 0.383081878008 AS sv_2, 0.473413995923 AS sv_3 FROM rdb$database UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, 1.03078554807 AS sv_0, 0.145173583192 AS sv_1, 0.500053443813 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 0.547132504989 AS sv_0, -1.23015509968 AS sv_1, 0.617025009617 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, 0.305305983447 AS sv_0, -0.313269311099 AS sv_1, 0.500053443813 AS sv_2, 0.206701885544 AS sv_3 FROM rdb$database UNION ALL SELECT 22 AS sv_idx, 0.132876508343 AS dual_coeff, -0.54108684195 AS sv_0, -0.0840478639533 AS sv_1, 0.383081878008 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, 1.03078554807 AS sv_0, -0.0840478639533 AS sv_1, 0.675510792519 AS sv_2, 0.606770051113 AS sv_3 FROM rdb$database UNION ALL SELECT 24 AS sv_idx, 0.0 AS dual_coeff, -0.178347059637 AS sv_0, -1.00093365253 AS sv_1, -0.201775951012 AS sv_2, -0.326722335214 AS sv_3 FROM rdb$database UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, 0.305305983447 AS sv_0, -0.542490758244 AS sv_1, 0.500053443813 AS sv_2, -0.0600102248353 AS sv_3 FROM rdb$database UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.66804576576 AS sv_0, 0.374395030337 AS sv_1, 0.383081878008 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 1.27261206961 AS sv_0, 0.145173583192 AS sv_1, 0.617025009617 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 28 AS sv_idx, -1.0 AS dual_coeff, 0.788959026531 AS sv_0, -0.0840478639533 AS sv_1, 0.792482358323 AS sv_2, 1.00683821668 AS sv_3 FROM rdb$database UNION ALL SELECT 29 AS sv_idx, -1.0 AS dual_coeff, -0.0574337988662 AS sv_0, -0.771712205389 AS sv_1, 0.733996575421 AS sv_2, 0.873482161492 AS sv_3 FROM rdb$database UNION ALL SELECT 30 AS sv_idx, -1.0 AS dual_coeff, 0.305305983447 AS sv_0, -0.0840478639533 AS sv_1, 0.617025009617 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 31 AS sv_idx, -1.0 AS dual_coeff, -1.1456531458 AS sv_0, -1.23015509968 AS sv_1, 0.383081878008 AS sv_2, 0.606770051113 AS sv_3 FROM rdb$database UNION ALL SELECT 32 AS sv_idx, -1.0 AS dual_coeff, -0.178347059637 AS sv_0, -1.23015509968 AS sv_1, 0.675510792519 AS sv_2, 1.00683821668 AS sv_3 FROM rdb$database UNION ALL SELECT 33 AS sv_idx, -1.0 AS dual_coeff, 0.788959026531 AS sv_0, 0.374395030337 AS sv_1, 0.733996575421 AS sv_2, 1.00683821668 AS sv_3 FROM rdb$database UNION ALL SELECT 34 AS sv_idx, -0.289691718979 AS dual_coeff, 0.66804576576 AS sv_0, 0.374395030337 AS sv_1, 0.850968141225 AS sv_2, 1.40690638225 AS sv_3 FROM rdb$database UNION ALL SELECT 35 AS sv_idx, -1.0 AS dual_coeff, 0.547132504989 AS sv_0, -0.771712205389 AS sv_1, 0.617025009617 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 36 AS sv_idx, -1.0 AS dual_coeff, 0.0634794619048 AS sv_0, -0.0840478639533 AS sv_1, 0.733996575421 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 37 AS sv_idx, -1.0 AS dual_coeff, 0.547132504989 AS sv_0, -0.313269311099 AS sv_1, 1.02642548993 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 38 AS sv_idx, -1.0 AS dual_coeff, 0.184392722676 AS sv_0, -0.0840478639533 AS sv_1, 0.558539226715 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 39 AS sv_idx, -1.0 AS dual_coeff, 0.305305983447 AS sv_0, -1.00093365253 AS sv_1, 1.02642548993 AS sv_2, 0.206701885544 AS sv_3 FROM rdb$database UNION ALL SELECT 40 AS sv_idx, -1.0 AS dual_coeff, -0.299260320408 AS sv_0, -0.542490758244 AS sv_1, 0.617025009617 AS sv_2, 1.00683821668 AS sv_3 FROM rdb$database UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, 0.426219244218 AS sv_0, 0.832837924628 AS sv_1, 0.909453924127 AS sv_2, 1.40690638225 AS sv_3 FROM rdb$database UNION ALL SELECT 42 AS sv_idx, -1.0 AS dual_coeff, 0.547132504989 AS sv_0, -0.542490758244 AS sv_1, 0.733996575421 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 43 AS sv_idx, -1.0 AS dual_coeff, 0.788959026531 AS sv_0, -0.0840478639533 AS sv_1, 0.967939707029 AS sv_2, 0.740126106302 AS sv_3 FROM rdb$database UNION ALL SELECT 44 AS sv_idx, -1.0 AS dual_coeff, -0.0574337988662 AS sv_0, -0.771712205389 AS sv_1, 0.733996575421 AS sv_2, 0.873482161492 AS sv_3 FROM rdb$database UNION ALL SELECT 45 AS sv_idx, -1.0 AS dual_coeff, 1.63535185193 AS sv_0, -0.0840478639533 AS sv_1, 1.14339705574 AS sv_2, 0.473413995923 AS sv_3 FROM rdb$database UNION ALL SELECT 46 AS sv_idx, -1.0 AS dual_coeff, 0.184392722676 AS sv_0, -1.91781944112 AS sv_1, 0.675510792519 AS sv_2, 0.340057940733 AS sv_3 FROM rdb$database UNION ALL SELECT 47 AS sv_idx, -1.0 AS dual_coeff, 0.66804576576 AS sv_0, -0.771712205389 AS sv_1, 0.850968141225 AS sv_2, 0.873482161492 AS sv_3 FROM rdb$database UNION ALL SELECT 48 AS sv_idx, -1.0 AS dual_coeff, 0.547132504989 AS sv_0, -1.23015509968 AS sv_1, 0.675510792519 AS sv_2, 0.873482161492 AS sv_3 FROM rdb$database) AS "Values"), 
kernel_dp_1_2 AS 
(SELECT t_2."KEY" AS "KEY", t_2.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_2."KEY" AS "KEY", sum(full_join_data_sv_2.dot_prod1) + 1.05158964405 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data_1_2".dual_coeff * power(0.25 * ("ADS_sca_2_OUT".scaler_output_2 * "SV_data_1_2".sv_0 + "ADS_sca_2_OUT".scaler_output_3 * "SV_data_1_2".sv_1 + "ADS_sca_2_OUT".scaler_output_4 * "SV_data_1_2".sv_2 + "ADS_sca_2_OUT".scaler_output_5 * "SV_data_1_2".sv_3) + 0.0, 3) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data_1_2") AS full_join_data_sv_2 GROUP BY full_join_data_sv_2."KEY") AS t_2), 
kernel_cte_1_2 AS 
(SELECT kernel_dp_1_2."KEY" AS "KEY", 1 AS "OVO_Class1", 2 AS "OVO_Class2", CASE WHEN (-kernel_dp_1_2.dot_product >= 0.0) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-kernel_dp_1_2.dot_product, 1.0 / (1.0 + exp(CASE WHEN ((-kernel_dp_1_2.dot_product) * -3.07452398693 + 1.17242300389 >= -709.782712893) THEN (-kernel_dp_1_2.dot_product) * -3.07452398693 + 1.17242300389 ELSE -709.782712893 END))) AS "OVO_Confidence" 
FROM kernel_dp_1_2), 
"OVO_Score_Union_CTE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."OVO_Class1" AS "OVO_Class1", ensemble_score_union."OVO_Class2" AS "OVO_Class2", ensemble_score_union."OVO_Decision" AS "OVO_Decision", ensemble_score_union."OVO_Confidence" AS "OVO_Confidence" 
FROM (SELECT kernel_cte_0_1."KEY" AS "KEY", kernel_cte_0_1."OVO_Class1" AS "OVO_Class1", kernel_cte_0_1."OVO_Class2" AS "OVO_Class2", kernel_cte_0_1."OVO_Decision" AS "OVO_Decision", kernel_cte_0_1."OVO_Confidence" AS "OVO_Confidence" 
FROM kernel_cte_0_1 UNION ALL SELECT kernel_cte_0_2."KEY" AS "KEY", kernel_cte_0_2."OVO_Class1" AS "OVO_Class1", kernel_cte_0_2."OVO_Class2" AS "OVO_Class2", kernel_cte_0_2."OVO_Decision" AS "OVO_Decision", kernel_cte_0_2."OVO_Confidence" AS "OVO_Confidence" 
FROM kernel_cte_0_2 UNION ALL SELECT kernel_cte_1_2."KEY" AS "KEY", kernel_cte_1_2."OVO_Class1" AS "OVO_Class1", kernel_cte_1_2."OVO_Class2" AS "OVO_Class2", kernel_cte_1_2."OVO_Decision" AS "OVO_Decision", kernel_cte_1_2."OVO_Confidence" AS "OVO_Confidence" 
FROM kernel_cte_1_2) AS ensemble_score_union), 
"OVO_Votes" AS 
(SELECT "Votes_Sel"."KEY" AS "KEY", "Votes_Sel"."OVO_Vote_0" AS "OVO_Vote_0", "Votes_Sel"."OVO_SumConfidence_0" AS "OVO_SumConfidence_0", "Votes_Sel"."OVO_Vote_1" AS "OVO_Vote_1", "Votes_Sel"."OVO_SumConfidence_1" AS "OVO_SumConfidence_1", "Votes_Sel"."OVO_Vote_2" AS "OVO_Vote_2", "Votes_Sel"."OVO_SumConfidence_2" AS "OVO_SumConfidence_2" 
FROM (SELECT "OVO_Score_Union_CTE"."KEY" AS "KEY", sum(CASE WHEN ("OVO_Score_Union_CTE"."OVO_Class1" = 0 OR "OVO_Score_Union_CTE"."OVO_Class2" = 0) THEN 1 ELSE 0 END * (CASE WHEN ("OVO_Score_Union_CTE"."OVO_Decision" = 0 AND "OVO_Score_Union_CTE"."OVO_Class1" = 0) THEN 1 ELSE 0 END + CASE WHEN ("OVO_Score_Union_CTE"."OVO_Decision" = 1 AND "OVO_Score_Union_CTE"."OVO_Class2" = 0) THEN 1 ELSE 0 END)) AS "OVO_Vote_0", sum(CASE WHEN ("OVO_Score_Union_CTE"."OVO_Class1" = 0 OR "OVO_Score_Union_CTE"."OVO_Class2" = 0) THEN 1 ELSE 0 END * "OVO_Score_Union_CTE"."OVO_Confidence" * (-CASE WHEN ("OVO_Score_Union_CTE"."OVO_Class1" = 0) THEN 1 ELSE 0 END + CASE WHEN ("OVO_Score_Union_CTE"."OVO_Class2" = 0) THEN 1 ELSE 0 END)) AS "OVO_SumConfidence_0", sum(CASE WHEN ("OVO_Score_Union_CTE"."OVO_Class1" = 1 OR "OVO_Score_Union_CTE"."OVO_Class2" = 1) THEN 1 ELSE 0 END * (CASE WHEN ("OVO_Score_Union_CTE"."OVO_Decision" = 0 AND "OVO_Score_Union_CTE"."OVO_Class1" = 1) THEN 1 ELSE 0 END + CASE WHEN ("OVO_Score_Union_CTE"."OVO_Decision" = 1 AND "OVO_Score_Union_CTE"."OVO_Class2" = 1) THEN 1 ELSE 0 END)) AS "OVO_Vote_1", sum(CASE WHEN ("OVO_Score_Union_CTE"."OVO_Class1" = 1 OR "OVO_Score_Union_CTE"."OVO_Class2" = 1) THEN 1 ELSE 0 END * "OVO_Score_Union_CTE"."OVO_Confidence" * (-CASE WHEN ("OVO_Score_Union_CTE"."OVO_Class1" = 1) THEN 1 ELSE 0 END + CASE WHEN ("OVO_Score_Union_CTE"."OVO_Class2" = 1) THEN 1 ELSE 0 END)) AS "OVO_SumConfidence_1", sum(CASE WHEN ("OVO_Score_Union_CTE"."OVO_Class1" = 2 OR "OVO_Score_Union_CTE"."OVO_Class2" = 2) THEN 1 ELSE 0 END * (CASE WHEN ("OVO_Score_Union_CTE"."OVO_Decision" = 0 AND "OVO_Score_Union_CTE"."OVO_Class1" = 2) THEN 1 ELSE 0 END + CASE WHEN ("OVO_Score_Union_CTE"."OVO_Decision" = 1 AND "OVO_Score_Union_CTE"."OVO_Class2" = 2) THEN 1 ELSE 0 END)) AS "OVO_Vote_2", sum(CASE WHEN ("OVO_Score_Union_CTE"."OVO_Class1" = 2 OR "OVO_Score_Union_CTE"."OVO_Class2" = 2) THEN 1 ELSE 0 END * "OVO_Score_Union_CTE"."OVO_Confidence" * (-CASE WHEN ("OVO_Score_Union_CTE"."OVO_Class1" = 2) THEN 1 ELSE 0 END + CASE WHEN ("OVO_Score_Union_CTE"."OVO_Class2" = 2) THEN 1 ELSE 0 END)) AS "OVO_SumConfidence_2" 
FROM "OVO_Score_Union_CTE" GROUP BY "OVO_Score_Union_CTE"."KEY") AS "Votes_Sel"), 
"OVO_SumConf_CTE" AS 
(SELECT "Values"."KEY" AS "KEY", "Values"."OVO_SumConfidence" AS "OVO_SumConfidence" 
FROM (SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_SumConfidence_0" AS "OVO_SumConfidence" 
FROM "OVO_Votes" UNION ALL SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_SumConfidence_1" AS "OVO_SumConfidence" 
FROM "OVO_Votes" UNION ALL SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_SumConfidence_2" AS "OVO_SumConfidence" 
FROM "OVO_Votes") AS "Values"), 
"MinMaxConf" AS 
(SELECT min("OVO_SumConf_CTE"."OVO_SumConfidence") AS "OVO_min_conf", max("OVO_SumConf_CTE"."OVO_SumConfidence") AS "OVO_max_conf" 
FROM "OVO_SumConf_CTE"), 
"OVO_Votes_WithScale" AS 
(SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_Vote_0" AS "OVO_Vote_0", "OVO_Votes"."OVO_SumConfidence_0" AS "OVO_SumConfidence_0", "OVO_Votes"."OVO_Vote_1" AS "OVO_Vote_1", "OVO_Votes"."OVO_SumConfidence_1" AS "OVO_SumConfidence_1", "OVO_Votes"."OVO_Vote_2" AS "OVO_Vote_2", "OVO_Votes"."OVO_SumConfidence_2" AS "OVO_SumConfidence_2", CASE WHEN (abs("MinMaxConf"."OVO_min_conf") >= abs("MinMaxConf"."OVO_max_conf")) THEN abs("MinMaxConf"."OVO_min_conf") ELSE abs("MinMaxConf"."OVO_max_conf") END AS max_abs_confidence, CASE WHEN ("MinMaxConf"."OVO_max_conf" - "MinMaxConf"."OVO_min_conf" <= 0.0) THEN 0.0 ELSE 0.4999999999999998 / CASE WHEN (abs("MinMaxConf"."OVO_min_conf") >= abs("MinMaxConf"."OVO_max_conf")) THEN abs("MinMaxConf"."OVO_min_conf") ELSE abs("MinMaxConf"."OVO_max_conf") END END AS "OVO_Scale" 
FROM "OVO_Votes", "MinMaxConf"), 
"KernAggregate_CTE" AS 
(SELECT "OVO_Votes_WithScale"."KEY" AS "KEY", "OVO_Votes_WithScale"."OVO_Vote_0" AS "OVO_Vote_0", "OVO_Votes_WithScale"."OVO_SumConfidence_0" AS "OVO_SumConfidence_0", "OVO_Votes_WithScale"."OVO_Vote_1" AS "OVO_Vote_1", "OVO_Votes_WithScale"."OVO_SumConfidence_1" AS "OVO_SumConfidence_1", "OVO_Votes_WithScale"."OVO_Vote_2" AS "OVO_Vote_2", "OVO_Votes_WithScale"."OVO_SumConfidence_2" AS "OVO_SumConfidence_2", "OVO_Votes_WithScale".max_abs_confidence AS max_abs_confidence, "OVO_Votes_WithScale"."OVO_Scale" AS "OVO_Scale", "OVO_Votes_WithScale"."OVO_Vote_0" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_0" AS "Score_0", "OVO_Votes_WithScale"."OVO_Vote_1" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_1" AS "Score_1", "OVO_Votes_WithScale"."OVO_Vote_2" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_2" AS "Score_2" 
FROM "OVO_Votes_WithScale"), 
orig_cte AS 
(SELECT "KernAggregate_CTE"."KEY" AS "KEY", "KernAggregate_CTE"."Score_0" AS "Score_0", "KernAggregate_CTE"."Score_1" AS "Score_1", "KernAggregate_CTE"."Score_2" AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "KernAggregate_CTE"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_max."KEY" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0" WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1" WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2" END AS "DecisionProba" 
FROM arg_max_cte