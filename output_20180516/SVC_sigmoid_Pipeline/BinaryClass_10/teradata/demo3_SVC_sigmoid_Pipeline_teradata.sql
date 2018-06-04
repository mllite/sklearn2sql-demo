-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_sigmoid_Pipeline
-- Dataset : BinaryClass_10
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602141516_as3_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602141516_as3_ads_imp_1_out  (
	"KEY" BIGINT, 
	impter_2 DOUBLE PRECISION, 
	impter_3 DOUBLE PRECISION, 
	impter_4 DOUBLE PRECISION, 
	impter_5 DOUBLE PRECISION, 
	impter_6 DOUBLE PRECISION, 
	impter_7 DOUBLE PRECISION, 
	impter_8 DOUBLE PRECISION, 
	impter_9 DOUBLE PRECISION, 
	impter_10 DOUBLE PRECISION, 
	impter_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602141516_as3_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180602141516_as3_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180602141516_n9t_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602141516_n9t_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_2 DOUBLE PRECISION, 
	scaler_3 DOUBLE PRECISION, 
	scaler_4 DOUBLE PRECISION, 
	scaler_5 DOUBLE PRECISION, 
	scaler_6 DOUBLE PRECISION, 
	scaler_7 DOUBLE PRECISION, 
	scaler_8 DOUBLE PRECISION, 
	scaler_9 DOUBLE PRECISION, 
	scaler_10 DOUBLE PRECISION, 
	scaler_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602141516_n9t_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180602141516_n9t_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - CAST(0.061829205238134 AS DOUBLE PRECISION)) / CAST(1.228383956209067 AS DOUBLE PRECISION) AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - CAST(0.177024637671833 AS DOUBLE PRECISION)) / CAST(0.940821656314017 AS DOUBLE PRECISION) AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - CAST(0.041383850049035 AS DOUBLE PRECISION)) / CAST(1.074182488881128 AS DOUBLE PRECISION) AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - CAST(0.130606468058471 AS DOUBLE PRECISION)) / CAST(1.079224455973376 AS DOUBLE PRECISION) AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - CAST(-0.059558104719831 AS DOUBLE PRECISION)) / CAST(1.109589119050812 AS DOUBLE PRECISION) AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - CAST(-0.048929089870106 AS DOUBLE PRECISION)) / CAST(1.378187181202905 AS DOUBLE PRECISION) AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - CAST(0.191017978617131 AS DOUBLE PRECISION)) / CAST(0.973528524630321 AS DOUBLE PRECISION) AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - CAST(0.022049596732675 AS DOUBLE PRECISION)) / CAST(0.474603012037971 AS DOUBLE PRECISION) AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - CAST(-0.05772981403414 AS DOUBLE PRECISION)) / CAST(1.064607524840552 AS DOUBLE PRECISION) AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - CAST(-0.052549592052032 AS DOUBLE PRECISION)) / CAST(1.224532889655456 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180602141516_as3_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE PRECISION) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE PRECISION) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE PRECISION) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE PRECISION) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE PRECISION) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE PRECISION) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE PRECISION) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE PRECISION) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE PRECISION) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180602141516_n9t_ads_sca_2_out AS "ADS_sca_2_OUT"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE PRECISION) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE PRECISION) AS sv_0, CAST("Values".sv_1 AS DOUBLE PRECISION) AS sv_1, CAST("Values".sv_2 AS DOUBLE PRECISION) AS sv_2, CAST("Values".sv_3 AS DOUBLE PRECISION) AS sv_3, CAST("Values".sv_4 AS DOUBLE PRECISION) AS sv_4, CAST("Values".sv_5 AS DOUBLE PRECISION) AS sv_5, CAST("Values".sv_6 AS DOUBLE PRECISION) AS sv_6, CAST("Values".sv_7 AS DOUBLE PRECISION) AS sv_7, CAST("Values".sv_8 AS DOUBLE PRECISION) AS sv_8, CAST("Values".sv_9 AS DOUBLE PRECISION) AS sv_9 
FROM (SELECT 0 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.341210907588258 AS DOUBLE PRECISION) AS sv_0, CAST(1.861244182638373 AS DOUBLE PRECISION) AS sv_1, CAST(0.46295637462729 AS DOUBLE PRECISION) AS sv_2, CAST(0.724798554551473 AS DOUBLE PRECISION) AS sv_3, CAST(1.942533246398506 AS DOUBLE PRECISION) AS sv_4, CAST(-0.161031300600363 AS DOUBLE PRECISION) AS sv_5, CAST(-1.003296157410424 AS DOUBLE PRECISION) AS sv_6, CAST(0.326752939308351 AS DOUBLE PRECISION) AS sv_7, CAST(1.37400218199071 AS DOUBLE PRECISION) AS sv_8, CAST(-0.311440279234628 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 1 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.226287480084378 AS DOUBLE PRECISION) AS sv_0, CAST(-0.751838388782872 AS DOUBLE PRECISION) AS sv_1, CAST(-0.53771148251014 AS DOUBLE PRECISION) AS sv_2, CAST(-0.871593639272973 AS DOUBLE PRECISION) AS sv_3, CAST(-0.81292089983951 AS DOUBLE PRECISION) AS sv_4, CAST(1.16232466054196 AS DOUBLE PRECISION) AS sv_5, CAST(-0.668230718810992 AS DOUBLE PRECISION) AS sv_6, CAST(-0.060185860987474 AS DOUBLE PRECISION) AS sv_7, CAST(-1.6488255260391 AS DOUBLE PRECISION) AS sv_8, CAST(-0.065531351771815 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 2 AS sv_idx, CAST(-0.796946327124698 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.547194416773438 AS DOUBLE PRECISION) AS sv_0, CAST(1.179949379594733 AS DOUBLE PRECISION) AS sv_1, CAST(0.136109394621246 AS DOUBLE PRECISION) AS sv_2, CAST(0.153838684693009 AS DOUBLE PRECISION) AS sv_3, CAST(-0.536699177753615 AS DOUBLE PRECISION) AS sv_4, CAST(-0.375722399300336 AS DOUBLE PRECISION) AS sv_5, CAST(0.763777771315775 AS DOUBLE PRECISION) AS sv_6, CAST(0.506588694083328 AS DOUBLE PRECISION) AS sv_7, CAST(0.22268156631255 AS DOUBLE PRECISION) AS sv_8, CAST(-0.469170132370469 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 3 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.092774736033378 AS DOUBLE PRECISION) AS sv_0, CAST(-0.034051896683605 AS DOUBLE PRECISION) AS sv_1, CAST(0.458651468183668 AS DOUBLE PRECISION) AS sv_2, CAST(1.206040841350442 AS DOUBLE PRECISION) AS sv_3, CAST(0.719035608157022 AS DOUBLE PRECISION) AS sv_4, CAST(1.076104427337449 AS DOUBLE PRECISION) AS sv_5, CAST(-0.1616962592709 AS DOUBLE PRECISION) AS sv_6, CAST(0.064228028685119 AS DOUBLE PRECISION) AS sv_7, CAST(-0.773017816658179 AS DOUBLE PRECISION) AS sv_8, CAST(-0.181412433680192 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 4 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.080706166334365 AS DOUBLE PRECISION) AS sv_0, CAST(0.151451144214276 AS DOUBLE PRECISION) AS sv_1, CAST(1.28515556478042 AS DOUBLE PRECISION) AS sv_2, CAST(0.88908575708135 AS DOUBLE PRECISION) AS sv_3, CAST(0.245718337054878 AS DOUBLE PRECISION) AS sv_4, CAST(1.223838683163338 AS DOUBLE PRECISION) AS sv_5, CAST(-1.140943904783567 AS DOUBLE PRECISION) AS sv_6, CAST(0.264404050870584 AS DOUBLE PRECISION) AS sv_7, CAST(0.588348008630184 AS DOUBLE PRECISION) AS sv_8, CAST(-0.398941006414168 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 5 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.668977668139525 AS DOUBLE PRECISION) AS sv_0, CAST(0.399417390837344 AS DOUBLE PRECISION) AS sv_1, CAST(-0.257179286816236 AS DOUBLE PRECISION) AS sv_2, CAST(-1.297921514451534 AS DOUBLE PRECISION) AS sv_3, CAST(1.366213512598507 AS DOUBLE PRECISION) AS sv_4, CAST(1.155460477155868 AS DOUBLE PRECISION) AS sv_5, CAST(2.690986635988724 AS DOUBLE PRECISION) AS sv_6, CAST(-0.51611498113169 AS DOUBLE PRECISION) AS sv_7, CAST(0.634012155674219 AS DOUBLE PRECISION) AS sv_8, CAST(0.394155938303656 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 6 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.589173585334025 AS DOUBLE PRECISION) AS sv_0, CAST(0.952697454847182 AS DOUBLE PRECISION) AS sv_1, CAST(0.081129589938804 AS DOUBLE PRECISION) AS sv_2, CAST(-0.645694822158044 AS DOUBLE PRECISION) AS sv_3, CAST(-1.281876178034183 AS DOUBLE PRECISION) AS sv_4, CAST(-0.572995497135616 AS DOUBLE PRECISION) AS sv_5, CAST(0.077065243659326 AS DOUBLE PRECISION) AS sv_6, CAST(0.520475254248636 AS DOUBLE PRECISION) AS sv_7, CAST(1.248656036807721 AS DOUBLE PRECISION) AS sv_8, CAST(-0.461743871275444 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 7 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.783406831126148 AS DOUBLE PRECISION) AS sv_0, CAST(-1.303697748720344 AS DOUBLE PRECISION) AS sv_1, CAST(-0.288502484472416 AS DOUBLE PRECISION) AS sv_2, CAST(1.475131142024615 AS DOUBLE PRECISION) AS sv_3, CAST(0.899046122648314 AS DOUBLE PRECISION) AS sv_4, CAST(0.129963348682873 AS DOUBLE PRECISION) AS sv_5, CAST(-0.278721793882664 AS DOUBLE PRECISION) AS sv_6, CAST(0.824304800006351 AS DOUBLE PRECISION) AS sv_7, CAST(-1.862079632993571 AS DOUBLE PRECISION) AS sv_8, CAST(-0.84385424271433 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 8 AS sv_idx, CAST(-0.785834323069223 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.877924339111812 AS DOUBLE PRECISION) AS sv_0, CAST(0.530553017995241 AS DOUBLE PRECISION) AS sv_1, CAST(-1.409919329243701 AS DOUBLE PRECISION) AS sv_2, CAST(0.557611287302462 AS DOUBLE PRECISION) AS sv_3, CAST(1.402334189824453 AS DOUBLE PRECISION) AS sv_4, CAST(-1.02992385269834 AS DOUBLE PRECISION) AS sv_5, CAST(0.958377827237889 AS DOUBLE PRECISION) AS sv_6, CAST(0.74944440887941 AS DOUBLE PRECISION) AS sv_7, CAST(-0.184720079123433 AS DOUBLE PRECISION) AS sv_8, CAST(-0.642648542647434 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 9 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.554533208053368 AS DOUBLE PRECISION) AS sv_0, CAST(-0.442508000567123 AS DOUBLE PRECISION) AS sv_1, CAST(-0.926783821180184 AS DOUBLE PRECISION) AS sv_2, CAST(1.11235480710777 AS DOUBLE PRECISION) AS sv_3, CAST(0.646241011117277 AS DOUBLE PRECISION) AS sv_4, CAST(0.187431738473088 AS DOUBLE PRECISION) AS sv_5, CAST(-0.547708812966944 AS DOUBLE PRECISION) AS sv_6, CAST(0.597634151932254 AS DOUBLE PRECISION) AS sv_7, CAST(-0.416568063740909 AS DOUBLE PRECISION) AS sv_8, CAST(-0.621920909255694 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 10 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.387116228696137 AS DOUBLE PRECISION) AS sv_0, CAST(-0.238019735312575 AS DOUBLE PRECISION) AS sv_1, CAST(0.236621310699276 AS DOUBLE PRECISION) AS sv_2, CAST(-2.803630160803415 AS DOUBLE PRECISION) AS sv_3, CAST(1.191141069832706 AS DOUBLE PRECISION) AS sv_4, CAST(-0.524603517082948 AS DOUBLE PRECISION) AS sv_5, CAST(-1.216972043260527 AS DOUBLE PRECISION) AS sv_6, CAST(0.320015332081607 AS DOUBLE PRECISION) AS sv_7, CAST(-0.236325302242005 AS DOUBLE PRECISION) AS sv_8, CAST(-0.265209687137398 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 11 AS sv_idx, CAST(-0.766377315467845 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.146938886900809 AS DOUBLE PRECISION) AS sv_0, CAST(0.482640794017487 AS DOUBLE PRECISION) AS sv_1, CAST(-2.646361035735504 AS DOUBLE PRECISION) AS sv_2, CAST(0.973598886681535 AS DOUBLE PRECISION) AS sv_3, CAST(0.402890586759859 AS DOUBLE PRECISION) AS sv_4, CAST(0.002848181258833 AS DOUBLE PRECISION) AS sv_5, CAST(-0.443213150967048 AS DOUBLE PRECISION) AS sv_6, CAST(1.179024154251703 AS DOUBLE PRECISION) AS sv_7, CAST(-1.666303885370369 AS DOUBLE PRECISION) AS sv_8, CAST(-1.187125757819712 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 12 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.421820233221511 AS DOUBLE PRECISION) AS sv_0, CAST(-0.439037450704812 AS DOUBLE PRECISION) AS sv_1, CAST(0.366485163991133 AS DOUBLE PRECISION) AS sv_2, CAST(1.120048216611358 AS DOUBLE PRECISION) AS sv_3, CAST(-1.64618350505416 AS DOUBLE PRECISION) AS sv_4, CAST(0.05022817973524 AS DOUBLE PRECISION) AS sv_5, CAST(-0.842579485668891 AS DOUBLE PRECISION) AS sv_6, CAST(0.440912999884602 AS DOUBLE PRECISION) AS sv_7, CAST(-1.30859903442895 AS DOUBLE PRECISION) AS sv_8, CAST(-0.449277020365084 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 13 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.060028629154815 AS DOUBLE PRECISION) AS sv_0, CAST(-1.134998504358017 AS DOUBLE PRECISION) AS sv_1, CAST(-0.509917593137074 AS DOUBLE PRECISION) AS sv_2, CAST(-0.346017489507326 AS DOUBLE PRECISION) AS sv_3, CAST(0.183070052808581 AS DOUBLE PRECISION) AS sv_4, CAST(1.083453177459093 AS DOUBLE PRECISION) AS sv_5, CAST(0.468241470949123 AS DOUBLE PRECISION) AS sv_6, CAST(0.098967807281084 AS DOUBLE PRECISION) AS sv_7, CAST(-1.216980616151226 AS DOUBLE PRECISION) AS sv_8, CAST(-0.217179176151581 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 14 AS sv_idx, CAST(-0.391952704554615 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.326084810642871 AS DOUBLE PRECISION) AS sv_0, CAST(0.680668642514019 AS DOUBLE PRECISION) AS sv_1, CAST(-0.440103175490024 AS DOUBLE PRECISION) AS sv_2, CAST(-0.294497665614047 AS DOUBLE PRECISION) AS sv_3, CAST(0.946653316764496 AS DOUBLE PRECISION) AS sv_4, CAST(0.210839561395018 AS DOUBLE PRECISION) AS sv_5, CAST(1.069383226620098 AS DOUBLE PRECISION) AS sv_6, CAST(0.366349993482023 AS DOUBLE PRECISION) AS sv_7, CAST(-0.141110758913975 AS DOUBLE PRECISION) AS sv_8, CAST(-0.391647920325279 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 15 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.769389637289538 AS DOUBLE PRECISION) AS sv_0, CAST(0.344406546090789 AS DOUBLE PRECISION) AS sv_1, CAST(0.192309984127579 AS DOUBLE PRECISION) AS sv_2, CAST(0.684477453713439 AS DOUBLE PRECISION) AS sv_3, CAST(1.852672959021776 AS DOUBLE PRECISION) AS sv_4, CAST(1.762681621244409 AS DOUBLE PRECISION) AS sv_5, CAST(2.489707120655602 AS DOUBLE PRECISION) AS sv_6, CAST(-0.529260680254428 AS DOUBLE PRECISION) AS sv_7, CAST(-0.006868408783579 AS DOUBLE PRECISION) AS sv_8, CAST(0.341503577535989 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 16 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.540920003748863 AS DOUBLE PRECISION) AS sv_0, CAST(-0.333715586830768 AS DOUBLE PRECISION) AS sv_1, CAST(1.707334341995319 AS DOUBLE PRECISION) AS sv_2, CAST(1.290676139143406 AS DOUBLE PRECISION) AS sv_3, CAST(-0.361696794064541 AS DOUBLE PRECISION) AS sv_4, CAST(-0.668917276335446 AS DOUBLE PRECISION) AS sv_5, CAST(-0.208318240102978 AS DOUBLE PRECISION) AS sv_6, CAST(0.456666352643339 AS DOUBLE PRECISION) AS sv_7, CAST(-0.138809622852067 AS DOUBLE PRECISION) AS sv_8, CAST(-0.387105492957343 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 17 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.101537763379499 AS DOUBLE PRECISION) AS sv_0, CAST(0.557844214064197 AS DOUBLE PRECISION) AS sv_1, CAST(-0.198998857426582 AS DOUBLE PRECISION) AS sv_2, CAST(-1.071930312360028 AS DOUBLE PRECISION) AS sv_3, CAST(-1.221682258446869 AS DOUBLE PRECISION) AS sv_4, CAST(0.097344208628221 AS DOUBLE PRECISION) AS sv_5, CAST(2.13082327934 AS DOUBLE PRECISION) AS sv_6, CAST(0.11877498865803 AS DOUBLE PRECISION) AS sv_7, CAST(0.034744797674329 AS DOUBLE PRECISION) AS sv_8, CAST(-0.130122091806489 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 18 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.300433016388892 AS DOUBLE PRECISION) AS sv_0, CAST(-0.2776534132685 AS DOUBLE PRECISION) AS sv_1, CAST(-0.160132328520763 AS DOUBLE PRECISION) AS sv_2, CAST(0.398205975533651 AS DOUBLE PRECISION) AS sv_3, CAST(-1.045439992504385 AS DOUBLE PRECISION) AS sv_4, CAST(0.991553816582842 AS DOUBLE PRECISION) AS sv_5, CAST(1.268988027893366 AS DOUBLE PRECISION) AS sv_6, CAST(-0.161700065496476 AS DOUBLE PRECISION) AS sv_7, CAST(1.169839510339928 AS DOUBLE PRECISION) AS sv_8, CAST(0.055182838815729 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 19 AS sv_idx, CAST(-0.200748672098475 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.34142073093647 AS DOUBLE PRECISION) AS sv_0, CAST(-2.017065310230134 AS DOUBLE PRECISION) AS sv_1, CAST(0.420587358116101 AS DOUBLE PRECISION) AS sv_2, CAST(0.435688074934611 AS DOUBLE PRECISION) AS sv_3, CAST(-0.024493685553012 AS DOUBLE PRECISION) AS sv_4, CAST(-1.552322360631559 AS DOUBLE PRECISION) AS sv_5, CAST(0.182418863363109 AS DOUBLE PRECISION) AS sv_6, CAST(1.148275448336671 AS DOUBLE PRECISION) AS sv_7, CAST(-0.974385009504191 AS DOUBLE PRECISION) AS sv_8, CAST(-0.987434105565764 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 20 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.366684764924264 AS DOUBLE PRECISION) AS sv_0, CAST(-2.070020402899242 AS DOUBLE PRECISION) AS sv_1, CAST(-0.108010169283069 AS DOUBLE PRECISION) AS sv_2, CAST(-0.124535092840936 AS DOUBLE PRECISION) AS sv_3, CAST(-1.059701622795829 AS DOUBLE PRECISION) AS sv_4, CAST(-1.547883299600876 AS DOUBLE PRECISION) AS sv_5, CAST(0.047117216368861 AS DOUBLE PRECISION) AS sv_6, CAST(1.174895153882529 AS DOUBLE PRECISION) AS sv_7, CAST(0.345080597017935 AS DOUBLE PRECISION) AS sv_8, CAST(-1.014711398464895 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 21 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.479789985663826 AS DOUBLE PRECISION) AS sv_0, CAST(-0.283140827084127 AS DOUBLE PRECISION) AS sv_1, CAST(1.82019102060101 AS DOUBLE PRECISION) AS sv_2, CAST(0.447761261631074 AS DOUBLE PRECISION) AS sv_3, CAST(-0.170093680309566 AS DOUBLE PRECISION) AS sv_4, CAST(-1.488510524532206 AS DOUBLE PRECISION) AS sv_5, CAST(-0.734848277563321 AS DOUBLE PRECISION) AS sv_6, CAST(0.272320084974862 AS DOUBLE PRECISION) AS sv_7, CAST(-0.517568832452858 AS DOUBLE PRECISION) AS sv_8, CAST(-0.112612993776728 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 22 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.087861681908255 AS DOUBLE PRECISION) AS sv_0, CAST(0.422572702311531 AS DOUBLE PRECISION) AS sv_1, CAST(0.087342673282226 AS DOUBLE PRECISION) AS sv_2, CAST(1.023859337157937 AS DOUBLE PRECISION) AS sv_3, CAST(-0.659115776329744 AS DOUBLE PRECISION) AS sv_4, CAST(-0.68948849010222 AS DOUBLE PRECISION) AS sv_5, CAST(0.116730625486792 AS DOUBLE PRECISION) AS sv_6, CAST(-0.011949596994103 AS DOUBLE PRECISION) AS sv_7, CAST(-1.860187826125186 AS DOUBLE PRECISION) AS sv_8, CAST(0.086839723685646 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 23 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.654040137147955 AS DOUBLE PRECISION) AS sv_0, CAST(-1.51622664092023 AS DOUBLE PRECISION) AS sv_1, CAST(1.795851746303731 AS DOUBLE PRECISION) AS sv_2, CAST(-0.099492233685307 AS DOUBLE PRECISION) AS sv_3, CAST(-0.625319099192905 AS DOUBLE PRECISION) AS sv_4, CAST(-0.83931983168154 AS DOUBLE PRECISION) AS sv_5, CAST(2.020714428917183 AS DOUBLE PRECISION) AS sv_6, CAST(0.547642172665861 AS DOUBLE PRECISION) AS sv_7, CAST(0.948367495162778 AS DOUBLE PRECISION) AS sv_8, CAST(-0.460193518721602 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 24 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.03267981416396 AS DOUBLE PRECISION) AS sv_0, CAST(1.053894260274303 AS DOUBLE PRECISION) AS sv_1, CAST(1.045684405010207 AS DOUBLE PRECISION) AS sv_2, CAST(-1.346804509796147 AS DOUBLE PRECISION) AS sv_3, CAST(-0.683821771467797 AS DOUBLE PRECISION) AS sv_4, CAST(-1.134940635504217 AS DOUBLE PRECISION) AS sv_5, CAST(-0.845285506301488 AS DOUBLE PRECISION) AS sv_6, CAST(-0.134706147910845 AS DOUBLE PRECISION) AS sv_7, CAST(-1.579948339443035 AS DOUBLE PRECISION) AS sv_8, CAST(0.258740235709536 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 25 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.141724767201938 AS DOUBLE PRECISION) AS sv_0, CAST(-0.171583053017911 AS DOUBLE PRECISION) AS sv_1, CAST(-0.175863804434638 AS DOUBLE PRECISION) AS sv_2, CAST(-1.319968801418323 AS DOUBLE PRECISION) AS sv_3, CAST(-1.86396623063157 AS DOUBLE PRECISION) AS sv_4, CAST(2.176803354624279 AS DOUBLE PRECISION) AS sv_5, CAST(-2.315610775048862 AS DOUBLE PRECISION) AS sv_6, CAST(0.468412038965363 AS DOUBLE PRECISION) AS sv_7, CAST(-1.49874029327463 AS DOUBLE PRECISION) AS sv_8, CAST(-0.707696294909176 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 26 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.434386670695276 AS DOUBLE PRECISION) AS sv_0, CAST(0.949237894477265 AS DOUBLE PRECISION) AS sv_1, CAST(1.484468087698381 AS DOUBLE PRECISION) AS sv_2, CAST(1.566075132692076 AS DOUBLE PRECISION) AS sv_3, CAST(1.007336047857755 AS DOUBLE PRECISION) AS sv_4, CAST(-1.050704557172585 AS DOUBLE PRECISION) AS sv_5, CAST(-0.361635919218475 AS DOUBLE PRECISION) AS sv_6, CAST(0.290580881235907 AS DOUBLE PRECISION) AS sv_7, CAST(-0.854632930995224 AS DOUBLE PRECISION) AS sv_8, CAST(-0.178497474809226 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 27 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.626114078726028 AS DOUBLE PRECISION) AS sv_0, CAST(0.18323476713701 AS DOUBLE PRECISION) AS sv_1, CAST(-0.484125786668378 AS DOUBLE PRECISION) AS sv_2, CAST(0.896269654533276 AS DOUBLE PRECISION) AS sv_3, CAST(0.407715732368945 AS DOUBLE PRECISION) AS sv_4, CAST(-1.457540867756144 AS DOUBLE PRECISION) AS sv_5, CAST(0.381358699155423 AS DOUBLE PRECISION) AS sv_6, CAST(0.427275827860252 AS DOUBLE PRECISION) AS sv_7, CAST(1.120586436713441 AS DOUBLE PRECISION) AS sv_8, CAST(-0.271953173255711 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 28 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.58414562176183 AS DOUBLE PRECISION) AS sv_0, CAST(-0.398120159661453 AS DOUBLE PRECISION) AS sv_1, CAST(-0.398809409329283 AS DOUBLE PRECISION) AS sv_2, CAST(-0.007602293922002 AS DOUBLE PRECISION) AS sv_3, CAST(0.827592390456679 AS DOUBLE PRECISION) AS sv_4, CAST(1.256708131919336 AS DOUBLE PRECISION) AS sv_5, CAST(-0.369049244644942 AS DOUBLE PRECISION) AS sv_6, CAST(-0.413928095423677 AS DOUBLE PRECISION) AS sv_7, CAST(-1.345481632379046 AS DOUBLE PRECISION) AS sv_8, CAST(0.280308052598087 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 29 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.099543747316117 AS DOUBLE PRECISION) AS sv_0, CAST(-0.306414583820644 AS DOUBLE PRECISION) AS sv_1, CAST(-0.018954808640996 AS DOUBLE PRECISION) AS sv_2, CAST(0.509099357198941 AS DOUBLE PRECISION) AS sv_3, CAST(1.832494115246145 AS DOUBLE PRECISION) AS sv_4, CAST(-1.060891432015586 AS DOUBLE PRECISION) AS sv_5, CAST(0.148810341817514 AS DOUBLE PRECISION) AS sv_6, CAST(-0.259599976279078 AS DOUBLE PRECISION) AS sv_7, CAST(0.195193136532162 AS DOUBLE PRECISION) AS sv_8, CAST(0.37642501418081 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 30 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.678427514420413 AS DOUBLE PRECISION) AS sv_0, CAST(1.373275615567766 AS DOUBLE PRECISION) AS sv_1, CAST(-1.918166400326656 AS DOUBLE PRECISION) AS sv_2, CAST(-0.596886043055757 AS DOUBLE PRECISION) AS sv_3, CAST(1.041911134102811 AS DOUBLE PRECISION) AS sv_4, CAST(1.199264623828613 AS DOUBLE PRECISION) AS sv_5, CAST(-0.820777806559964 AS DOUBLE PRECISION) AS sv_6, CAST(-0.519330458726365 AS DOUBLE PRECISION) AS sv_7, CAST(-0.246901199751871 AS DOUBLE PRECISION) AS sv_8, CAST(0.392639813552325 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 31 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.662941469595308 AS DOUBLE PRECISION) AS sv_0, CAST(1.281356387108932 AS DOUBLE PRECISION) AS sv_1, CAST(-0.827939025927974 AS DOUBLE PRECISION) AS sv_2, CAST(-0.307135842198475 AS DOUBLE PRECISION) AS sv_3, CAST(-0.667642812918693 AS DOUBLE PRECISION) AS sv_4, CAST(1.087226432604571 AS DOUBLE PRECISION) AS sv_5, CAST(-0.534449951635971 AS DOUBLE PRECISION) AS sv_6, CAST(-0.520029836786576 AS DOUBLE PRECISION) AS sv_7, CAST(0.868574348968962 AS DOUBLE PRECISION) AS sv_8, CAST(0.405500225348442 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 32 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.901698236893383 AS DOUBLE PRECISION) AS sv_0, CAST(-0.068105615954461 AS DOUBLE PRECISION) AS sv_1, CAST(0.398010696635967 AS DOUBLE PRECISION) AS sv_2, CAST(-0.825678029924552 AS DOUBLE PRECISION) AS sv_3, CAST(0.176045623448733 AS DOUBLE PRECISION) AS sv_4, CAST(1.106300695021483 AS DOUBLE PRECISION) AS sv_5, CAST(0.340055625060241 AS DOUBLE PRECISION) AS sv_6, CAST(-0.762549519958052 AS DOUBLE PRECISION) AS sv_7, CAST(-0.396811303789883 AS DOUBLE PRECISION) AS sv_8, CAST(0.647553200044069 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 33 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.821849213196117 AS DOUBLE PRECISION) AS sv_0, CAST(-0.862243790041396 AS DOUBLE PRECISION) AS sv_1, CAST(-0.839886647537644 AS DOUBLE PRECISION) AS sv_2, CAST(1.518365773474975 AS DOUBLE PRECISION) AS sv_3, CAST(-0.083370535694336 AS DOUBLE PRECISION) AS sv_4, CAST(-1.282356930328167 AS DOUBLE PRECISION) AS sv_5, CAST(1.87435116986525 AS DOUBLE PRECISION) AS sv_6, CAST(0.654390661046692 AS DOUBLE PRECISION) AS sv_7, CAST(-0.098540509569082 AS DOUBLE PRECISION) AS sv_8, CAST(-0.519576960704159 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 34 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.141440705891935 AS DOUBLE PRECISION) AS sv_0, CAST(-3.327873773764086 AS DOUBLE PRECISION) AS sv_1, CAST(-0.508496926483442 AS DOUBLE PRECISION) AS sv_2, CAST(-0.238733422573163 AS DOUBLE PRECISION) AS sv_3, CAST(1.539338794849393 AS DOUBLE PRECISION) AS sv_4, CAST(-1.411054512744818 AS DOUBLE PRECISION) AS sv_5, CAST(-0.731712816450739 AS DOUBLE PRECISION) AS sv_6, CAST(-0.354575478263546 AS DOUBLE PRECISION) AS sv_7, CAST(-1.776469134156447 AS DOUBLE PRECISION) AS sv_8, CAST(0.51002177185114 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 35 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.693777148576122 AS DOUBLE PRECISION) AS sv_0, CAST(0.454303615618752 AS DOUBLE PRECISION) AS sv_1, CAST(0.210641053508053 AS DOUBLE PRECISION) AS sv_2, CAST(1.043390157323261 AS DOUBLE PRECISION) AS sv_3, CAST(0.037404590260061 AS DOUBLE PRECISION) AS sv_4, CAST(-1.036931473969185 AS DOUBLE PRECISION) AS sv_5, CAST(0.430256551972369 AS DOUBLE PRECISION) AS sv_6, CAST(0.559174478526407 AS DOUBLE PRECISION) AS sv_7, CAST(-0.103941549902454 AS DOUBLE PRECISION) AS sv_8, CAST(-0.450360710377898 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 36 AS sv_idx, CAST(0.941859342314857 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.648135226450511 AS DOUBLE PRECISION) AS sv_0, CAST(-1.704481068021942 AS DOUBLE PRECISION) AS sv_1, CAST(-0.76527625984912 AS DOUBLE PRECISION) AS sv_2, CAST(1.235464507836099 AS DOUBLE PRECISION) AS sv_3, CAST(0.153698109621372 AS DOUBLE PRECISION) AS sv_4, CAST(1.082240235162856 AS DOUBLE PRECISION) AS sv_5, CAST(0.885707629827985 AS DOUBLE PRECISION) AS sv_6, CAST(-0.50555419501604 AS DOUBLE PRECISION) AS sv_7, CAST(1.012057353094786 AS DOUBLE PRECISION) AS sv_8, CAST(0.391469923499373 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 37 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.281200398391332 AS DOUBLE PRECISION) AS sv_0, CAST(1.987277967650856 AS DOUBLE PRECISION) AS sv_1, CAST(-3.754178093373222 AS DOUBLE PRECISION) AS sv_2, CAST(0.655725779900305 AS DOUBLE PRECISION) AS sv_3, CAST(0.541015953604218 AS DOUBLE PRECISION) AS sv_4, CAST(1.899749289773591 AS DOUBLE PRECISION) AS sv_5, CAST(2.304213475171818 AS DOUBLE PRECISION) AS sv_6, CAST(0.570656734268112 AS DOUBLE PRECISION) AS sv_7, CAST(0.353862058677358 AS DOUBLE PRECISION) AS sv_8, CAST(-0.780555732279559 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 38 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.88854334713296 AS DOUBLE PRECISION) AS sv_0, CAST(-1.227029861006336 AS DOUBLE PRECISION) AS sv_1, CAST(1.595351947800018 AS DOUBLE PRECISION) AS sv_2, CAST(0.724262389815182 AS DOUBLE PRECISION) AS sv_3, CAST(-0.020196003467921 AS DOUBLE PRECISION) AS sv_4, CAST(0.923105062812805 AS DOUBLE PRECISION) AS sv_5, CAST(0.457395100913295 AS DOUBLE PRECISION) AS sv_6, CAST(-0.776195579436878 AS DOUBLE PRECISION) AS sv_7, CAST(1.754761424483568 AS DOUBLE PRECISION) AS sv_8, CAST(0.681166614532056 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte UNION ALL SELECT 39 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.223737879209693 AS DOUBLE PRECISION) AS sv_0, CAST(-0.781675373967292 AS DOUBLE PRECISION) AS sv_1, CAST(-1.561197607479468 AS DOUBLE PRECISION) AS sv_2, CAST(-0.589689059629718 AS DOUBLE PRECISION) AS sv_3, CAST(-0.147069163720574 AS DOUBLE PRECISION) AS sv_4, CAST(2.142736815978169 AS DOUBLE PRECISION) AS sv_5, CAST(0.308483033306134 AS DOUBLE PRECISION) AS sv_6, CAST(0.547637883494449 AS DOUBLE PRECISION) AS sv_7, CAST(0.941342963767164 AS DOUBLE PRECISION) AS sv_8, CAST(-0.78374946902146 AS DOUBLE PRECISION) AS sv_9 
FROM dummy_cte) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE PRECISION)) + CAST(0.067900263707381 AS DOUBLE PRECISION) AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * tanh(CAST(0.1 AS DOUBLE PRECISION) * (kernel_input.scaler_2 * "SV_data".sv_0 + kernel_input.scaler_3 * "SV_data".sv_1 + kernel_input.scaler_4 * "SV_data".sv_2 + kernel_input.scaler_5 * "SV_data".sv_3 + kernel_input.scaler_6 * "SV_data".sv_4 + kernel_input.scaler_7 * "SV_data".sv_5 + kernel_input.scaler_8 * "SV_data".sv_6 + kernel_input.scaler_9 * "SV_data".sv_7 + kernel_input.scaler_10 * "SV_data".sv_8 + kernel_input.scaler_11 * "SV_data".sv_9) + CAST(0.0 AS DOUBLE PRECISION)) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", -kernel_dp.dot_product AS "Score_0", kernel_dp.dot_product AS "Score_1", CAST(1.0 AS DOUBLE PRECISION) - CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-(kernel_dp.dot_product * CAST(-1.433732881951186 AS DOUBLE PRECISION) + CAST(0.182462705627825 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION)))) AS "Proba_0", CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-(kernel_dp.dot_product * CAST(-1.433732881951186 AS DOUBLE PRECISION) + CAST(0.182462705627825 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION)))) AS "Proba_1", CASE WHEN (CAST(1.0 AS DOUBLE PRECISION) - CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-(kernel_dp.dot_product * CAST(-1.433732881951186 AS DOUBLE PRECISION) + CAST(0.182462705627825 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION)))) IS NULL OR CAST(1.0 AS DOUBLE PRECISION) - CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-(kernel_dp.dot_product * CAST(-1.433732881951186 AS DOUBLE PRECISION) + CAST(0.182462705627825 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION)))) > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(CAST(1.0 AS DOUBLE PRECISION) - CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-(kernel_dp.dot_product * CAST(-1.433732881951186 AS DOUBLE PRECISION) + CAST(0.182462705627825 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION))))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-(kernel_dp.dot_product * CAST(-1.433732881951186 AS DOUBLE PRECISION) + CAST(0.182462705627825 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION)))) IS NULL OR CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-(kernel_dp.dot_product * CAST(-1.433732881951186 AS DOUBLE PRECISION) + CAST(0.182462705627825 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION)))) > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-(kernel_dp.dot_product * CAST(-1.433732881951186 AS DOUBLE PRECISION) + CAST(0.182462705627825 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION))))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (kernel_dp.dot_product > CAST(0.0 AS DOUBLE PRECISION)) THEN 1 ELSE 0 END AS "Decision", greatest(CAST(1.0 AS DOUBLE PRECISION) - CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-(kernel_dp.dot_product * CAST(-1.433732881951186 AS DOUBLE PRECISION) + CAST(0.182462705627825 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION)))), CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-(kernel_dp.dot_product * CAST(-1.433732881951186 AS DOUBLE PRECISION) + CAST(0.182462705627825 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION))))) AS "DecisionProba" 
FROM kernel_dp