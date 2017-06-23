-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.00587058434841 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.206310474688 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0555958221574 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0384701934716 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.429944388318 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.204565353815 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.40838482592 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0127764293619 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.21646556202 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.052903813543 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.00587058434841) / 1.36610141231 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.206310474688) / 0.924614068395 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.0555958221574) / 1.27201752306 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.0384701934716) / 1.11679928013 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.429944388318) / 1.02812853106 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.204565353815) / 1.42979903307 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.40838482592) / 1.06633430275 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.0127764293619) / 0.54624498456 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.21646556202) / 1.03979793567 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - -0.052903813543) / 1.44168001857 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.873085236055 AS dual_coeff, 0.592030681137 AS sv_0, 0.47230166571 AS sv_1, 0.559149493401 AS sv_2, -1.29815919154 AS sv_3, -0.818052756232 AS sv_4, 0.057889053127 AS sv_5, -1.00325654576 AS sv_6, 0.595582318235 AS sv_7, 0.753126474979 AS sv_8, -0.591620761271 AS sv_9 FROM DUAL UNION ALL SELECT 1 AS sv_idx, -0.154048866263 AS dual_coeff, 0.420258571296 AS sv_0, -0.478406930732 AS sv_1, 0.298313479654 AS sv_2, 1.16486438071 AS sv_3, -1.41636087082 AS sv_4, -0.128878678735 AS sv_5, -0.973092592248 AS sv_6, 0.400061897756 AS sv_7, -1.60352285565 AS sv_8, -0.381360814764 AS sv_9 FROM DUAL UNION ALL SELECT 2 AS sv_idx, -0.665584559906 AS dual_coeff, -0.0130148347092 AS sv_0, -1.18656750671 AS sv_1, -0.441783632096 AS sv_2, -0.251875397208 AS sv_3, 0.557827941634 AS sv_4, 0.867049709957 AS sv_5, 0.22364429285 AS sv_6, 0.102964033338 AS sv_7, -1.509718421 AS sv_8, -0.184221754643 AS sv_9 FROM DUAL UNION ALL SELECT 3 AS sv_idx, -0.79911843507 AS dual_coeff, 0.33417429082 AS sv_0, 0.660926524399 AS sv_1, -0.382827349224 AS sv_2, -0.202088962974 AS sv_3, 1.38191136659 AS sv_4, 0.0259350693782 AS sv_5, 0.772467157294 AS sv_6, 0.335278094836 AS sv_7, -0.408178298178 AS sv_8, -0.332411861119 AS sv_9 FROM DUAL UNION ALL SELECT 4 AS sv_idx, -0.11291228895 AS dual_coeff, -0.650864758369 AS sv_0, 0.318770079536 AS sv_1, 0.151227512036 AS sv_2, 0.743948439958 AS sv_3, 2.35971667626 AS sv_4, 1.5217598564 AS sv_5, 2.06917666151 AS sv_6, -0.442870053674 AS sv_7, -0.270732924227 AS sv_8, 0.290311704904 AS sv_9 FROM DUAL UNION ALL SELECT 5 AS sv_idx, -0.121304584053 AS dual_coeff, 0.527351826589 AS sv_0, -0.371238876727 AS sv_1, 1.43062233635 AS sv_2, 1.32975150962 AS sv_3, -0.0301018234166 AS sv_4, -0.822064942015 AS sv_5, -0.394032711091 AS sv_6, 0.413749142271 AS sv_7, -0.405822256986 AS sv_8, -0.328553618208 AS sv_9 FROM DUAL UNION ALL SELECT 6 AS sv_idx, -0.348903856464 AS dual_coeff, 0.132263958405 AS sv_0, 0.535949102835 AS sv_1, -0.179221634867 AS sv_2, -0.953364810094 AS sv_3, -0.958225579337 AS sv_4, -0.0834634101922 AS sv_5, 1.74152739088 AS sv_6, 0.120173432431 AS sv_7, -0.228126826246 AS sv_8, -0.110277285908 AS sv_9 FROM DUAL UNION ALL SELECT 7 AS sv_idx, -0.742985403904 AS dual_coeff, 0.495868794872 AS sv_0, 0.059712246519 AS sv_1, 0.319794949172 AS sv_2, 0.0615046228257 AS sv_3, 0.640775140953 AS sv_4, 1.37608583602 AS sv_5, -0.555916296962 AS sv_6, 0.676285895015 AS sv_7, 0.111988106272 AS sv_8, -0.797071599157 AS sv_9 FROM DUAL UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, -0.229183919683 AS sv_0, -0.314193987632 AS sv_1, -0.146399960639 AS sv_2, 0.467308594467 AS sv_3, -0.768019301914 AS sv_4, 0.778467665774 AS sv_5, 0.954699846602 AS sv_6, -0.123516320822 AS sv_7, 0.934051257647 AS sv_8, 0.0471168509588 AS sv_9 FROM DUAL UNION ALL SELECT 9 AS sv_idx, -0.321202673027 AS dual_coeff, 0.710910690531 AS sv_0, 0.93591241358 AS sv_1, -0.163964639523 AS sv_2, 1.06478507607 AS sv_3, -0.974972975562 AS sv_4, 0.547022235659 AS sv_5, 0.238395314643 AS sv_6, 0.778997697903 AS sv_7, 0.350680070771 AS sv_8, -0.818878128371 AS sv_9 FROM DUAL UNION ALL SELECT 10 AS sv_idx, 0.204706908872 AS dual_coeff, 0.293814701556 AS sv_0, 1.99043944384 AS sv_1, -3.18146901813 AS sv_2, 0.716164119103 AS sv_3, 0.944134580085 AS sv_4, 1.65387975532 AS sv_5, 1.89982699833 AS sv_6, 0.512789279923 AS sv_7, 0.0986045758053 AS sv_8, -0.662742031924 AS sv_9 FROM DUAL UNION ALL SELECT 11 AS sv_idx, 0.616441396932 AS dual_coeff, -0.724776672884 AS sv_0, 1.8726725083 AS sv_1, 1.45074162966 AS sv_2, 0.881202526286 AS sv_3, 1.40806984877 AS sv_4, 0.15621273143 AS sv_5, -1.66188329496 AS sv_6, -0.698773704482 AS sv_7, -0.936502579108 AS sv_8, 0.672696314734 AS sv_9 FROM DUAL UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, -1.31062063105 AS sv_0, 0.768951430966 AS sv_1, -0.0554841559732 AS sv_2, -0.337920468058 AS sv_3, 0.851956099895 AS sv_4, -0.271970357817 AS sv_5, -0.454186744037 AS sv_6, -1.33770525476 AS sv_7, -0.353023397005 AS sv_8, 1.34237928445 AS sv_9 FROM DUAL UNION ALL SELECT 13 AS sv_idx, 0.288361154187 AS dual_coeff, -1.40574278968 AS sv_0, 0.520146803654 AS sv_1, 0.636381022292 AS sv_2, 1.00775182976 AS sv_3, -0.79503004315 AS sv_4, -0.306854222369 AS sv_5, -1.90466559968 AS sv_6, -1.43681736305 AS sv_7, -1.10674362102 AS sv_8, 1.44324635903 AS sv_9 FROM DUAL UNION ALL SELECT 14 AS sv_idx, 0.252941256569 AS dual_coeff, -0.847170622923 AS sv_0, 0.135928820977 AS sv_1, -0.357102595744 AS sv_2, -1.83058431092 AS sv_3, -0.733135801047 AS sv_4, -1.08044430429 AS sv_5, -1.21411376114 AS sv_6, -0.98558962457 AS sv_7, 2.74491305542 AS sv_8, 1.07317700203 AS sv_9 FROM DUAL UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, -0.758006515324 AS sv_0, -1.28021208378 AS sv_1, 1.33605640096 AS sv_2, 0.782394807881 AS sv_3, 0.338456727333 AS sv_4, 0.712489725634 AS sv_5, 0.2137419099 AS sv_6, -0.65741856257 AS sv_7, 1.53292941453 AS sv_8, 0.578814392632 AS sv_9 FROM DUAL UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, 0.242145011436 AS sv_0, -0.827050964496 AS sv_1, -1.32955959575 AS sv_2, -0.487348612835 AS sv_3, 0.201531164174 AS sv_4, 1.88809609347 AS sv_5, 0.0777900371124 AS sv_6, 0.492789433298 AS sv_7, 0.700102781182 AS sv_8, -0.665454725192 AS sv_9 FROM DUAL UNION ALL SELECT 17 AS sv_idx, 0.776695187133 AS dual_coeff, -1.59308599313 AS sv_0, -0.241360941885 AS sv_1, 0.0338674253642 AS sv_2, 0.144391160765 AS sv_3, -1.54998804714 AS sv_4, -0.625713386592 AS sv_5, -0.695156873876 AS sv_6, -1.66545367294 AS sv_7, 0.326432226404 AS sv_8, 1.69872356009 AS sv_9 FROM DUAL) "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + -0.876965166771 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data".dual_coeff * power(0.1 * ("ADS_sca_2_OUT".scaler_2 * "SV_data".sv_0 + "ADS_sca_2_OUT".scaler_3 * "SV_data".sv_1 + "ADS_sca_2_OUT".scaler_4 * "SV_data".sv_2 + "ADS_sca_2_OUT".scaler_5 * "SV_data".sv_3 + "ADS_sca_2_OUT".scaler_6 * "SV_data".sv_4 + "ADS_sca_2_OUT".scaler_7 * "SV_data".sv_5 + "ADS_sca_2_OUT".scaler_8 * "SV_data".sv_6 + "ADS_sca_2_OUT".scaler_9 * "SV_data".sv_7 + "ADS_sca_2_OUT".scaler_10 * "SV_data".sv_8 + "ADS_sca_2_OUT".scaler_11 * "SV_data".sv_9) + 0.0, 3) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data") full_join_data_sv GROUP BY full_join_data_sv."KEY") t)
 SELECT kernel_dp."KEY" AS "KEY", -kernel_dp.dot_product AS "Score_0", kernel_dp.dot_product AS "Score_1", exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915) / (1.0 + exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915)) AS "Proba_0", 1.0 / (1.0 + exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915)) AS "Proba_1", CASE WHEN (exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915) / (1.0 + exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915)) IS NULL OR exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915) / (1.0 + exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915)) > 0.0) THEN ln(exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915) / (1.0 + exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915))) ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915)) IS NULL OR 1.0 / (1.0 + exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915)) > 0.0) THEN ln(1.0 / (1.0 + exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915))) ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS "Decision", CASE WHEN (exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915) / (1.0 + exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915)) <= 1.0 / (1.0 + exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915))) THEN 1.0 / (1.0 + exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915)) ELSE exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915) / (1.0 + exp(kernel_dp.dot_product * -2.53166939256 + 1.43005542915)) END AS "DecisionProba" 
FROM kernel_dp