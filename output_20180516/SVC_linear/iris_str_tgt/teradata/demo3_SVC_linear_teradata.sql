-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_linear
-- Dataset : iris_str_tgt
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516132609_codegen_33nojk_kernagg_b0 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516132609_codegen_33nojk_kernagg_b0  (
	"KEY" BIGINT, 
	"OVO_Class1" LONG VARCHAR, 
	"OVO_Class2" LONG VARCHAR, 
	"OVO_Decision" BIGINT, 
	"OVO_Confidence" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516132609_codegen_33nojk_kernagg_b0 part 2. Populate

INSERT INTO tmp_20180516132609_codegen_33nojk_kernagg_b0 ("KEY", "OVO_Class1", "OVO_Class2", "OVO_Decision", "OVO_Confidence") SELECT "U"."KEY", "U"."OVO_Class1", "U"."OVO_Class2", "U"."OVO_Decision", "U"."OVO_Confidence" 
FROM (WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE PRECISION) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE PRECISION) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE PRECISION) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE PRECISION) AS "Feature_3", CAST("ADS"."TGT" AS DOUBLE PRECISION) AS "TGT" 
FROM iris_str_tgt AS "ADS"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"SV_data_CLASS_0_CLASS_1" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE PRECISION) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE PRECISION) AS sv_0, CAST("Values".sv_1 AS DOUBLE PRECISION) AS sv_1, CAST("Values".sv_2 AS DOUBLE PRECISION) AS sv_2, CAST("Values".sv_3 AS DOUBLE PRECISION) AS sv_3 
FROM (SELECT 0 AS sv_idx, CAST(0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(4.8 AS DOUBLE PRECISION) AS sv_0, CAST(3.4 AS DOUBLE PRECISION) AS sv_1, CAST(1.9 AS DOUBLE PRECISION) AS sv_2, CAST(0.2 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 1 AS sv_idx, CAST(0.670981038666924 AS DOUBLE PRECISION) AS dual_coeff, CAST(5.1 AS DOUBLE PRECISION) AS sv_0, CAST(3.3 AS DOUBLE PRECISION) AS sv_1, CAST(1.7 AS DOUBLE PRECISION) AS sv_2, CAST(0.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 2 AS sv_idx, CAST(0.076950689163573 AS DOUBLE PRECISION) AS dual_coeff, CAST(4.5 AS DOUBLE PRECISION) AS sv_0, CAST(2.3 AS DOUBLE PRECISION) AS sv_1, CAST(1.3 AS DOUBLE PRECISION) AS sv_2, CAST(0.3 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 3 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.0 AS DOUBLE PRECISION) AS sv_0, CAST(2.9 AS DOUBLE PRECISION) AS sv_1, CAST(4.5 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 4 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(5.6 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(4.5 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 5 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.3 AS DOUBLE PRECISION) AS sv_0, CAST(3.3 AS DOUBLE PRECISION) AS sv_1, CAST(4.7 AS DOUBLE PRECISION) AS sv_2, CAST(1.6 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 6 AS sv_idx, CAST(-0.747931727830497 AS DOUBLE PRECISION) AS dual_coeff, CAST(5.1 AS DOUBLE PRECISION) AS sv_0, CAST(2.5 AS DOUBLE PRECISION) AS sv_1, CAST(3.0 AS DOUBLE PRECISION) AS sv_2, CAST(1.1 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 7 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.2 AS DOUBLE PRECISION) AS sv_0, CAST(2.2 AS DOUBLE PRECISION) AS sv_1, CAST(4.5 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 8 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(5.9 AS DOUBLE PRECISION) AS sv_0, CAST(3.2 AS DOUBLE PRECISION) AS sv_1, CAST(4.8 AS DOUBLE PRECISION) AS sv_2, CAST(1.8 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 9 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.3 AS DOUBLE PRECISION) AS sv_0, CAST(2.5 AS DOUBLE PRECISION) AS sv_1, CAST(4.9 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 10 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.1 AS DOUBLE PRECISION) AS sv_0, CAST(2.9 AS DOUBLE PRECISION) AS sv_1, CAST(4.7 AS DOUBLE PRECISION) AS sv_2, CAST(1.4 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 11 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(5.4 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(4.5 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 12 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.7 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(5.0 AS DOUBLE PRECISION) AS sv_2, CAST(1.7 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 13 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.9 AS DOUBLE PRECISION) AS sv_0, CAST(3.1 AS DOUBLE PRECISION) AS sv_1, CAST(4.9 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte) AS "Values"), 
"kernel_dp_CLASS_0_CLASS_1" AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE PRECISION)) + CAST(1.451946666980716 AS DOUBLE PRECISION) AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data_CLASS_0_CLASS_1".dual_coeff * (kernel_input."Feature_0" * "SV_data_CLASS_0_CLASS_1".sv_0 + kernel_input."Feature_1" * "SV_data_CLASS_0_CLASS_1".sv_1 + kernel_input."Feature_2" * "SV_data_CLASS_0_CLASS_1".sv_2 + kernel_input."Feature_3" * "SV_data_CLASS_0_CLASS_1".sv_3) AS dot_prod1 
FROM kernel_input, "SV_data_CLASS_0_CLASS_1") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t), 
"kernel_cte_CLASS_0_CLASS_1" AS 
(SELECT "kernel_dp_CLASS_0_CLASS_1"."KEY" AS "KEY", 'CLASS_0' AS "OVO_Class1", 'CLASS_1' AS "OVO_Class2", CASE WHEN (-"kernel_dp_CLASS_0_CLASS_1".dot_product >= CAST(0.0 AS DOUBLE PRECISION)) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-"kernel_dp_CLASS_0_CLASS_1".dot_product, CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-((-"kernel_dp_CLASS_0_CLASS_1".dot_product) * CAST(-2.164713606055471 AS DOUBLE PRECISION) + CAST(-0.568835278866267 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION))))) AS "OVO_Confidence" 
FROM "kernel_dp_CLASS_0_CLASS_1")
 SELECT "KernAgg_B0"."KEY", "KernAgg_B0"."OVO_Class1", "KernAgg_B0"."OVO_Class2", "KernAgg_B0"."OVO_Decision", "KernAgg_B0"."OVO_Confidence" 
FROM (SELECT "KernAgg_esu_0"."KEY" AS "KEY", "KernAgg_esu_0"."OVO_Class1" AS "OVO_Class1", "KernAgg_esu_0"."OVO_Class2" AS "OVO_Class2", "KernAgg_esu_0"."OVO_Decision" AS "OVO_Decision", "KernAgg_esu_0"."OVO_Confidence" AS "OVO_Confidence" 
FROM (SELECT "kernel_cte_CLASS_0_CLASS_1"."KEY" AS "KEY", "kernel_cte_CLASS_0_CLASS_1"."OVO_Class1" AS "OVO_Class1", "kernel_cte_CLASS_0_CLASS_1"."OVO_Class2" AS "OVO_Class2", "kernel_cte_CLASS_0_CLASS_1"."OVO_Decision" AS "OVO_Decision", "kernel_cte_CLASS_0_CLASS_1"."OVO_Confidence" AS "OVO_Confidence" 
FROM "kernel_cte_CLASS_0_CLASS_1") AS "KernAgg_esu_0") AS "KernAgg_B0") AS "U"

-- Code For temporary table tmp_20180516132609_codegen_igskgb_kernagg_b1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516132609_codegen_igskgb_kernagg_b1  (
	"KEY" BIGINT, 
	"OVO_Class1" LONG VARCHAR, 
	"OVO_Class2" LONG VARCHAR, 
	"OVO_Decision" BIGINT, 
	"OVO_Confidence" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516132609_codegen_igskgb_kernagg_b1 part 2. Populate

INSERT INTO tmp_20180516132609_codegen_igskgb_kernagg_b1 ("KEY", "OVO_Class1", "OVO_Class2", "OVO_Decision", "OVO_Confidence") SELECT "U"."KEY", "U"."OVO_Class1", "U"."OVO_Class2", "U"."OVO_Decision", "U"."OVO_Confidence" 
FROM (WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE PRECISION) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE PRECISION) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE PRECISION) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE PRECISION) AS "Feature_3", CAST("ADS"."TGT" AS DOUBLE PRECISION) AS "TGT" 
FROM iris_str_tgt AS "ADS"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"SV_data_CLASS_0_CLASS_2" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE PRECISION) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE PRECISION) AS sv_0, CAST("Values".sv_1 AS DOUBLE PRECISION) AS sv_1, CAST("Values".sv_2 AS DOUBLE PRECISION) AS sv_2, CAST("Values".sv_3 AS DOUBLE PRECISION) AS sv_3 
FROM (SELECT 0 AS sv_idx, CAST(0.159435500033212 AS DOUBLE PRECISION) AS dual_coeff, CAST(4.8 AS DOUBLE PRECISION) AS sv_0, CAST(3.4 AS DOUBLE PRECISION) AS sv_1, CAST(1.9 AS DOUBLE PRECISION) AS sv_2, CAST(0.2 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 1 AS sv_idx, CAST(0.044248343249857 AS DOUBLE PRECISION) AS dual_coeff, CAST(5.1 AS DOUBLE PRECISION) AS sv_0, CAST(3.3 AS DOUBLE PRECISION) AS sv_1, CAST(1.7 AS DOUBLE PRECISION) AS sv_2, CAST(0.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 2 AS sv_idx, CAST(0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(4.5 AS DOUBLE PRECISION) AS sv_0, CAST(2.3 AS DOUBLE PRECISION) AS sv_1, CAST(1.3 AS DOUBLE PRECISION) AS sv_2, CAST(0.3 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 14 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.5 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(5.2 AS DOUBLE PRECISION) AS sv_2, CAST(2.0 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 15 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.1 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(4.9 AS DOUBLE PRECISION) AS sv_2, CAST(1.8 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 16 AS sv_idx, CAST(-0.20368384328307 AS DOUBLE PRECISION) AS dual_coeff, CAST(4.9 AS DOUBLE PRECISION) AS sv_0, CAST(2.5 AS DOUBLE PRECISION) AS sv_1, CAST(4.5 AS DOUBLE PRECISION) AS sv_2, CAST(1.7 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 17 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.9 AS DOUBLE PRECISION) AS sv_0, CAST(3.1 AS DOUBLE PRECISION) AS sv_1, CAST(5.1 AS DOUBLE PRECISION) AS sv_2, CAST(2.3 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 18 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.5 AS DOUBLE PRECISION) AS sv_0, CAST(3.2 AS DOUBLE PRECISION) AS sv_1, CAST(5.1 AS DOUBLE PRECISION) AS sv_2, CAST(2.0 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 19 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.3 AS DOUBLE PRECISION) AS sv_0, CAST(2.7 AS DOUBLE PRECISION) AS sv_1, CAST(4.9 AS DOUBLE PRECISION) AS sv_2, CAST(1.8 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 20 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(5.9 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(5.1 AS DOUBLE PRECISION) AS sv_2, CAST(1.8 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 21 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.0 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(4.8 AS DOUBLE PRECISION) AS sv_2, CAST(1.8 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 22 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.3 AS DOUBLE PRECISION) AS sv_0, CAST(2.8 AS DOUBLE PRECISION) AS sv_1, CAST(5.1 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 23 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(7.2 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(5.8 AS DOUBLE PRECISION) AS sv_2, CAST(1.6 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 24 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.0 AS DOUBLE PRECISION) AS sv_0, CAST(2.2 AS DOUBLE PRECISION) AS sv_1, CAST(5.0 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 25 AS sv_idx, CAST(-0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.3 AS DOUBLE PRECISION) AS sv_0, CAST(2.5 AS DOUBLE PRECISION) AS sv_1, CAST(5.0 AS DOUBLE PRECISION) AS sv_2, CAST(1.9 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte) AS "Values"), 
"kernel_dp_CLASS_0_CLASS_2" AS 
(SELECT t_1."KEY" AS "KEY", t_1.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_1."KEY" AS "KEY", sum(CAST(full_join_data_sv_1.dot_prod1 AS DOUBLE PRECISION)) + CAST(1.507287853833415 AS DOUBLE PRECISION) AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data_CLASS_0_CLASS_2".dual_coeff * (kernel_input."Feature_0" * "SV_data_CLASS_0_CLASS_2".sv_0 + kernel_input."Feature_1" * "SV_data_CLASS_0_CLASS_2".sv_1 + kernel_input."Feature_2" * "SV_data_CLASS_0_CLASS_2".sv_2 + kernel_input."Feature_3" * "SV_data_CLASS_0_CLASS_2".sv_3) AS dot_prod1 
FROM kernel_input, "SV_data_CLASS_0_CLASS_2") AS full_join_data_sv_1 GROUP BY full_join_data_sv_1."KEY") AS t_1), 
"kernel_cte_CLASS_0_CLASS_2" AS 
(SELECT "kernel_dp_CLASS_0_CLASS_2"."KEY" AS "KEY", 'CLASS_0' AS "OVO_Class1", 'CLASS_2' AS "OVO_Class2", CASE WHEN (-"kernel_dp_CLASS_0_CLASS_2".dot_product >= CAST(0.0 AS DOUBLE PRECISION)) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-"kernel_dp_CLASS_0_CLASS_2".dot_product, CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-((-"kernel_dp_CLASS_0_CLASS_2".dot_product) * CAST(-2.769902638911342 AS DOUBLE PRECISION) + CAST(-0.238169047278889 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION))))) AS "OVO_Confidence" 
FROM "kernel_dp_CLASS_0_CLASS_2")
 SELECT "KernAgg_B1"."KEY", "KernAgg_B1"."OVO_Class1", "KernAgg_B1"."OVO_Class2", "KernAgg_B1"."OVO_Decision", "KernAgg_B1"."OVO_Confidence" 
FROM (SELECT "KernAgg_esu_1"."KEY" AS "KEY", "KernAgg_esu_1"."OVO_Class1" AS "OVO_Class1", "KernAgg_esu_1"."OVO_Class2" AS "OVO_Class2", "KernAgg_esu_1"."OVO_Decision" AS "OVO_Decision", "KernAgg_esu_1"."OVO_Confidence" AS "OVO_Confidence" 
FROM (SELECT "kernel_cte_CLASS_0_CLASS_2"."KEY" AS "KEY", "kernel_cte_CLASS_0_CLASS_2"."OVO_Class1" AS "OVO_Class1", "kernel_cte_CLASS_0_CLASS_2"."OVO_Class2" AS "OVO_Class2", "kernel_cte_CLASS_0_CLASS_2"."OVO_Decision" AS "OVO_Decision", "kernel_cte_CLASS_0_CLASS_2"."OVO_Confidence" AS "OVO_Confidence" 
FROM "kernel_cte_CLASS_0_CLASS_2") AS "KernAgg_esu_1") AS "KernAgg_B1") AS "U"

-- Code For temporary table tmp_20180516132609_codegen_xqg8bt_kernagg_b2 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516132609_codegen_xqg8bt_kernagg_b2  (
	"KEY" BIGINT, 
	"OVO_Class1" LONG VARCHAR, 
	"OVO_Class2" LONG VARCHAR, 
	"OVO_Decision" BIGINT, 
	"OVO_Confidence" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516132609_codegen_xqg8bt_kernagg_b2 part 2. Populate

INSERT INTO tmp_20180516132609_codegen_xqg8bt_kernagg_b2 ("KEY", "OVO_Class1", "OVO_Class2", "OVO_Decision", "OVO_Confidence") SELECT "U"."KEY", "U"."OVO_Class1", "U"."OVO_Class2", "U"."OVO_Decision", "U"."OVO_Confidence" 
FROM (WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE PRECISION) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE PRECISION) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE PRECISION) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE PRECISION) AS "Feature_3", CAST("ADS"."TGT" AS DOUBLE PRECISION) AS "TGT" 
FROM iris_str_tgt AS "ADS"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"SV_data_CLASS_1_CLASS_2" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE PRECISION) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE PRECISION) AS sv_0, CAST("Values".sv_1 AS DOUBLE PRECISION) AS sv_1, CAST("Values".sv_2 AS DOUBLE PRECISION) AS sv_2, CAST("Values".sv_3 AS DOUBLE PRECISION) AS sv_3 
FROM (SELECT 3 AS sv_idx, CAST(0.043778112278412 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.0 AS DOUBLE PRECISION) AS sv_0, CAST(2.9 AS DOUBLE PRECISION) AS sv_1, CAST(4.5 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 4 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(5.6 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(4.5 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 5 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.3 AS DOUBLE PRECISION) AS sv_0, CAST(3.3 AS DOUBLE PRECISION) AS sv_1, CAST(4.7 AS DOUBLE PRECISION) AS sv_2, CAST(1.6 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 6 AS sv_idx, CAST(0.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(5.1 AS DOUBLE PRECISION) AS sv_0, CAST(2.5 AS DOUBLE PRECISION) AS sv_1, CAST(3.0 AS DOUBLE PRECISION) AS sv_2, CAST(1.1 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 7 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.2 AS DOUBLE PRECISION) AS sv_0, CAST(2.2 AS DOUBLE PRECISION) AS sv_1, CAST(4.5 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 8 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(5.9 AS DOUBLE PRECISION) AS sv_0, CAST(3.2 AS DOUBLE PRECISION) AS sv_1, CAST(4.8 AS DOUBLE PRECISION) AS sv_2, CAST(1.8 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 9 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.3 AS DOUBLE PRECISION) AS sv_0, CAST(2.5 AS DOUBLE PRECISION) AS sv_1, CAST(4.9 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 10 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.1 AS DOUBLE PRECISION) AS sv_0, CAST(2.9 AS DOUBLE PRECISION) AS sv_1, CAST(4.7 AS DOUBLE PRECISION) AS sv_2, CAST(1.4 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 11 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(5.4 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(4.5 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 12 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.7 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(5.0 AS DOUBLE PRECISION) AS sv_2, CAST(1.7 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 13 AS sv_idx, CAST(1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.9 AS DOUBLE PRECISION) AS sv_0, CAST(3.1 AS DOUBLE PRECISION) AS sv_1, CAST(4.9 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 14 AS sv_idx, CAST(-0.110866693191066 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.5 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(5.2 AS DOUBLE PRECISION) AS sv_2, CAST(2.0 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 15 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.1 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(4.9 AS DOUBLE PRECISION) AS sv_2, CAST(1.8 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 16 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(4.9 AS DOUBLE PRECISION) AS sv_0, CAST(2.5 AS DOUBLE PRECISION) AS sv_1, CAST(4.5 AS DOUBLE PRECISION) AS sv_2, CAST(1.7 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 17 AS sv_idx, CAST(-0.39443743790143 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.9 AS DOUBLE PRECISION) AS sv_0, CAST(3.1 AS DOUBLE PRECISION) AS sv_1, CAST(5.1 AS DOUBLE PRECISION) AS sv_2, CAST(2.3 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 18 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.5 AS DOUBLE PRECISION) AS sv_0, CAST(3.2 AS DOUBLE PRECISION) AS sv_1, CAST(5.1 AS DOUBLE PRECISION) AS sv_2, CAST(2.0 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 19 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.3 AS DOUBLE PRECISION) AS sv_0, CAST(2.7 AS DOUBLE PRECISION) AS sv_1, CAST(4.9 AS DOUBLE PRECISION) AS sv_2, CAST(1.8 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 20 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(5.9 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(5.1 AS DOUBLE PRECISION) AS sv_2, CAST(1.8 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 21 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.0 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(4.8 AS DOUBLE PRECISION) AS sv_2, CAST(1.8 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 22 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.3 AS DOUBLE PRECISION) AS sv_0, CAST(2.8 AS DOUBLE PRECISION) AS sv_1, CAST(5.1 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 23 AS sv_idx, CAST(-0.14906106870064 AS DOUBLE PRECISION) AS dual_coeff, CAST(7.2 AS DOUBLE PRECISION) AS sv_0, CAST(3.0 AS DOUBLE PRECISION) AS sv_1, CAST(5.8 AS DOUBLE PRECISION) AS sv_2, CAST(1.6 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 24 AS sv_idx, CAST(-1.0 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.0 AS DOUBLE PRECISION) AS sv_0, CAST(2.2 AS DOUBLE PRECISION) AS sv_1, CAST(5.0 AS DOUBLE PRECISION) AS sv_2, CAST(1.5 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 25 AS sv_idx, CAST(-0.389412912485276 AS DOUBLE PRECISION) AS dual_coeff, CAST(6.3 AS DOUBLE PRECISION) AS sv_0, CAST(2.5 AS DOUBLE PRECISION) AS sv_1, CAST(5.0 AS DOUBLE PRECISION) AS sv_2, CAST(1.9 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte) AS "Values"), 
"kernel_dp_CLASS_1_CLASS_2" AS 
(SELECT t_2."KEY" AS "KEY", t_2.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_2."KEY" AS "KEY", sum(CAST(full_join_data_sv_2.dot_prod1 AS DOUBLE PRECISION)) + CAST(6.454311462025748 AS DOUBLE PRECISION) AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data_CLASS_1_CLASS_2".dual_coeff * (kernel_input."Feature_0" * "SV_data_CLASS_1_CLASS_2".sv_0 + kernel_input."Feature_1" * "SV_data_CLASS_1_CLASS_2".sv_1 + kernel_input."Feature_2" * "SV_data_CLASS_1_CLASS_2".sv_2 + kernel_input."Feature_3" * "SV_data_CLASS_1_CLASS_2".sv_3) AS dot_prod1 
FROM kernel_input, "SV_data_CLASS_1_CLASS_2") AS full_join_data_sv_2 GROUP BY full_join_data_sv_2."KEY") AS t_2), 
"kernel_cte_CLASS_1_CLASS_2" AS 
(SELECT "kernel_dp_CLASS_1_CLASS_2"."KEY" AS "KEY", 'CLASS_1' AS "OVO_Class1", 'CLASS_2' AS "OVO_Class2", CASE WHEN (-"kernel_dp_CLASS_1_CLASS_2".dot_product >= CAST(0.0 AS DOUBLE PRECISION)) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-"kernel_dp_CLASS_1_CLASS_2".dot_product, CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -(-((-"kernel_dp_CLASS_1_CLASS_2".dot_product) * CAST(-2.384988869023787 AS DOUBLE PRECISION) + CAST(-0.082351794433318 AS DOUBLE PRECISION)))), CAST(100.0 AS DOUBLE PRECISION))))) AS "OVO_Confidence" 
FROM "kernel_dp_CLASS_1_CLASS_2")
 SELECT "KernAgg_B2"."KEY", "KernAgg_B2"."OVO_Class1", "KernAgg_B2"."OVO_Class2", "KernAgg_B2"."OVO_Decision", "KernAgg_B2"."OVO_Confidence" 
FROM (SELECT "KernAgg_esu_2"."KEY" AS "KEY", "KernAgg_esu_2"."OVO_Class1" AS "OVO_Class1", "KernAgg_esu_2"."OVO_Class2" AS "OVO_Class2", "KernAgg_esu_2"."OVO_Decision" AS "OVO_Decision", "KernAgg_esu_2"."OVO_Confidence" AS "OVO_Confidence" 
FROM (SELECT "kernel_cte_CLASS_1_CLASS_2"."KEY" AS "KEY", "kernel_cte_CLASS_1_CLASS_2"."OVO_Class1" AS "OVO_Class1", "kernel_cte_CLASS_1_CLASS_2"."OVO_Class2" AS "OVO_Class2", "kernel_cte_CLASS_1_CLASS_2"."OVO_Decision" AS "OVO_Decision", "kernel_cte_CLASS_1_CLASS_2"."OVO_Confidence" AS "OVO_Confidence" 
FROM "kernel_cte_CLASS_1_CLASS_2") AS "KernAgg_esu_2") AS "KernAgg_B2") AS "U"

-- Code For temporary table tmp_20180516132609_codegen_zmmgvv_kernagg part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516132609_codegen_zmmgvv_kernagg  (
	"KEY" BIGINT, 
	"OVO_Vote_CLASS_0" BIGINT, 
	"OVO_SumConfidence_CLASS_0" DOUBLE PRECISION, 
	"OVO_Vote_CLASS_1" BIGINT, 
	"OVO_SumConfidence_CLASS_1" DOUBLE PRECISION, 
	"OVO_Vote_CLASS_2" BIGINT, 
	"OVO_SumConfidence_CLASS_2" DOUBLE PRECISION, 
	max_abs_confidence DOUBLE PRECISION, 
	"OVO_Scale" DOUBLE PRECISION, 
	"Score_CLASS_0" DOUBLE PRECISION, 
	"Score_CLASS_1" DOUBLE PRECISION, 
	"Score_CLASS_2" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516132609_codegen_zmmgvv_kernagg part 2. Populate

INSERT INTO tmp_20180516132609_codegen_zmmgvv_kernagg ("KEY", "OVO_Vote_CLASS_0", "OVO_SumConfidence_CLASS_0", "OVO_Vote_CLASS_1", "OVO_SumConfidence_CLASS_1", "OVO_Vote_CLASS_2", "OVO_SumConfidence_CLASS_2", max_abs_confidence, "OVO_Scale", "Score_CLASS_0", "Score_CLASS_1", "Score_CLASS_2") SELECT "U"."KEY", "U"."OVO_Vote_CLASS_0", "U"."OVO_SumConfidence_CLASS_0", "U"."OVO_Vote_CLASS_1", "U"."OVO_SumConfidence_CLASS_1", "U"."OVO_Vote_CLASS_2", "U"."OVO_SumConfidence_CLASS_2", "U".max_abs_confidence, "U"."OVO_Scale", "U"."Score_CLASS_0", "U"."Score_CLASS_1", "U"."Score_CLASS_2" 
FROM (WITH "KernAgg_Union" AS 
(SELECT "KernAgg_EnsembleUnion"."KEY" AS "KEY", "KernAgg_EnsembleUnion"."OVO_Class1" AS "OVO_Class1", "KernAgg_EnsembleUnion"."OVO_Class2" AS "OVO_Class2", "KernAgg_EnsembleUnion"."OVO_Decision" AS "OVO_Decision", "KernAgg_EnsembleUnion"."OVO_Confidence" AS "OVO_Confidence" 
FROM (SELECT "KernAgg_B0"."KEY" AS "KEY", "KernAgg_B0"."OVO_Class1" AS "OVO_Class1", "KernAgg_B0"."OVO_Class2" AS "OVO_Class2", "KernAgg_B0"."OVO_Decision" AS "OVO_Decision", "KernAgg_B0"."OVO_Confidence" AS "OVO_Confidence" 
FROM tmp_20180516132609_codegen_33nojk_kernagg_b0 AS "KernAgg_B0" UNION ALL SELECT "KernAgg_B1"."KEY" AS "KEY", "KernAgg_B1"."OVO_Class1" AS "OVO_Class1", "KernAgg_B1"."OVO_Class2" AS "OVO_Class2", "KernAgg_B1"."OVO_Decision" AS "OVO_Decision", "KernAgg_B1"."OVO_Confidence" AS "OVO_Confidence" 
FROM tmp_20180516132609_codegen_igskgb_kernagg_b1 AS "KernAgg_B1" UNION ALL SELECT "KernAgg_B2"."KEY" AS "KEY", "KernAgg_B2"."OVO_Class1" AS "OVO_Class1", "KernAgg_B2"."OVO_Class2" AS "OVO_Class2", "KernAgg_B2"."OVO_Decision" AS "OVO_Decision", "KernAgg_B2"."OVO_Confidence" AS "OVO_Confidence" 
FROM tmp_20180516132609_codegen_xqg8bt_kernagg_b2 AS "KernAgg_B2") AS "KernAgg_EnsembleUnion"), 
"OVO_Votes" AS 
(SELECT "Votes_Sel"."KEY" AS "KEY", "Votes_Sel"."OVO_Vote_CLASS_0" AS "OVO_Vote_CLASS_0", "Votes_Sel"."OVO_SumConfidence_CLASS_0" AS "OVO_SumConfidence_CLASS_0", "Votes_Sel"."OVO_Vote_CLASS_1" AS "OVO_Vote_CLASS_1", "Votes_Sel"."OVO_SumConfidence_CLASS_1" AS "OVO_SumConfidence_CLASS_1", "Votes_Sel"."OVO_Vote_CLASS_2" AS "OVO_Vote_CLASS_2", "Votes_Sel"."OVO_SumConfidence_CLASS_2" AS "OVO_SumConfidence_CLASS_2" 
FROM (SELECT "KernAgg_Union"."KEY" AS "KEY", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_0' OR "KernAgg_Union"."OVO_Class2" = 'CLASS_0') THEN 1 ELSE 0 END * (CASE WHEN ("KernAgg_Union"."OVO_Decision" = 0 AND "KernAgg_Union"."OVO_Class1" = 'CLASS_0') THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Decision" = 1 AND "KernAgg_Union"."OVO_Class2" = 'CLASS_0') THEN 1 ELSE 0 END)) AS "OVO_Vote_CLASS_0", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_0' OR "KernAgg_Union"."OVO_Class2" = 'CLASS_0') THEN 1 ELSE 0 END * "KernAgg_Union"."OVO_Confidence" * (-CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_0') THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Class2" = 'CLASS_0') THEN 1 ELSE 0 END)) AS "OVO_SumConfidence_CLASS_0", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_1' OR "KernAgg_Union"."OVO_Class2" = 'CLASS_1') THEN 1 ELSE 0 END * (CASE WHEN ("KernAgg_Union"."OVO_Decision" = 0 AND "KernAgg_Union"."OVO_Class1" = 'CLASS_1') THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Decision" = 1 AND "KernAgg_Union"."OVO_Class2" = 'CLASS_1') THEN 1 ELSE 0 END)) AS "OVO_Vote_CLASS_1", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_1' OR "KernAgg_Union"."OVO_Class2" = 'CLASS_1') THEN 1 ELSE 0 END * "KernAgg_Union"."OVO_Confidence" * (-CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_1') THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Class2" = 'CLASS_1') THEN 1 ELSE 0 END)) AS "OVO_SumConfidence_CLASS_1", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_2' OR "KernAgg_Union"."OVO_Class2" = 'CLASS_2') THEN 1 ELSE 0 END * (CASE WHEN ("KernAgg_Union"."OVO_Decision" = 0 AND "KernAgg_Union"."OVO_Class1" = 'CLASS_2') THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Decision" = 1 AND "KernAgg_Union"."OVO_Class2" = 'CLASS_2') THEN 1 ELSE 0 END)) AS "OVO_Vote_CLASS_2", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_2' OR "KernAgg_Union"."OVO_Class2" = 'CLASS_2') THEN 1 ELSE 0 END * "KernAgg_Union"."OVO_Confidence" * (-CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_2') THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Class2" = 'CLASS_2') THEN 1 ELSE 0 END)) AS "OVO_SumConfidence_CLASS_2" 
FROM "KernAgg_Union" GROUP BY "KernAgg_Union"."KEY") AS "Votes_Sel"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"OVO_SumConf_CTE" AS 
(SELECT "Values"."KEY" AS "KEY", CAST("Values"."OVO_SumConfidence" AS DOUBLE PRECISION) AS "OVO_SumConfidence" 
FROM (SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_SumConfidence_CLASS_0" AS "OVO_SumConfidence" 
FROM "OVO_Votes", dummy_cte UNION ALL SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_SumConfidence_CLASS_1" AS "OVO_SumConfidence" 
FROM "OVO_Votes", dummy_cte UNION ALL SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_SumConfidence_CLASS_2" AS "OVO_SumConfidence" 
FROM "OVO_Votes", dummy_cte) AS "Values"), 
"MinMaxConf" AS 
(SELECT min("OVO_SumConf_CTE"."OVO_SumConfidence") AS "OVO_min_conf", max("OVO_SumConf_CTE"."OVO_SumConfidence") AS "OVO_max_conf" 
FROM "OVO_SumConf_CTE"), 
"OVO_Votes_WithScale" AS 
(SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_Vote_CLASS_0" AS "OVO_Vote_CLASS_0", "OVO_Votes"."OVO_SumConfidence_CLASS_0" AS "OVO_SumConfidence_CLASS_0", "OVO_Votes"."OVO_Vote_CLASS_1" AS "OVO_Vote_CLASS_1", "OVO_Votes"."OVO_SumConfidence_CLASS_1" AS "OVO_SumConfidence_CLASS_1", "OVO_Votes"."OVO_Vote_CLASS_2" AS "OVO_Vote_CLASS_2", "OVO_Votes"."OVO_SumConfidence_CLASS_2" AS "OVO_SumConfidence_CLASS_2", CAST(CASE WHEN (abs("MinMaxConf"."OVO_min_conf") >= abs("MinMaxConf"."OVO_max_conf")) THEN abs("MinMaxConf"."OVO_min_conf") ELSE abs("MinMaxConf"."OVO_max_conf") END AS DOUBLE PRECISION) AS max_abs_confidence, CASE WHEN ("MinMaxConf"."OVO_max_conf" - "MinMaxConf"."OVO_min_conf" <= CAST(0.0 AS DOUBLE PRECISION)) THEN CAST(0.0 AS DOUBLE PRECISION) ELSE CAST(0.5 AS DOUBLE PRECISION) / CAST(CASE WHEN (abs("MinMaxConf"."OVO_min_conf") >= abs("MinMaxConf"."OVO_max_conf")) THEN abs("MinMaxConf"."OVO_min_conf") ELSE abs("MinMaxConf"."OVO_max_conf") END AS DOUBLE PRECISION) END AS "OVO_Scale" 
FROM "OVO_Votes", "MinMaxConf")
 SELECT "KernAgg"."KEY", "KernAgg"."OVO_Vote_CLASS_0", "KernAgg"."OVO_SumConfidence_CLASS_0", "KernAgg"."OVO_Vote_CLASS_1", "KernAgg"."OVO_SumConfidence_CLASS_1", "KernAgg"."OVO_Vote_CLASS_2", "KernAgg"."OVO_SumConfidence_CLASS_2", "KernAgg".max_abs_confidence, "KernAgg"."OVO_Scale", "KernAgg"."Score_CLASS_0", "KernAgg"."Score_CLASS_1", "KernAgg"."Score_CLASS_2" 
FROM (SELECT "OVO_Votes_WithScale"."KEY" AS "KEY", "OVO_Votes_WithScale"."OVO_Vote_CLASS_0" AS "OVO_Vote_CLASS_0", "OVO_Votes_WithScale"."OVO_SumConfidence_CLASS_0" AS "OVO_SumConfidence_CLASS_0", "OVO_Votes_WithScale"."OVO_Vote_CLASS_1" AS "OVO_Vote_CLASS_1", "OVO_Votes_WithScale"."OVO_SumConfidence_CLASS_1" AS "OVO_SumConfidence_CLASS_1", "OVO_Votes_WithScale"."OVO_Vote_CLASS_2" AS "OVO_Vote_CLASS_2", "OVO_Votes_WithScale"."OVO_SumConfidence_CLASS_2" AS "OVO_SumConfidence_CLASS_2", "OVO_Votes_WithScale".max_abs_confidence AS max_abs_confidence, "OVO_Votes_WithScale"."OVO_Scale" AS "OVO_Scale", "OVO_Votes_WithScale"."OVO_Vote_CLASS_0" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_CLASS_0" AS "Score_CLASS_0", "OVO_Votes_WithScale"."OVO_Vote_CLASS_1" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_CLASS_1" AS "Score_CLASS_1", "OVO_Votes_WithScale"."OVO_Vote_CLASS_2" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_CLASS_2" AS "Score_CLASS_2" 
FROM "OVO_Votes_WithScale") AS "KernAgg") AS "U"

-- Model deployment code

WITH orig_cte AS 
(SELECT "KernAgg"."KEY" AS "KEY", "KernAgg"."Score_CLASS_0" AS "Score_CLASS_0", "KernAgg"."Score_CLASS_1" AS "Score_CLASS_1", "KernAgg"."Score_CLASS_2" AS "Score_CLASS_2", CAST(NULL AS DOUBLE PRECISION) AS "Proba_CLASS_0", CAST(NULL AS DOUBLE PRECISION) AS "Proba_CLASS_1", CAST(NULL AS DOUBLE PRECISION) AS "Proba_CLASS_2", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_CLASS_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_CLASS_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_CLASS_2", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM tmp_20180516132609_codegen_zmmgvv_kernagg AS "KernAgg"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu."class" AS "class", scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_0' AS "class", orig_cte."LogProba_CLASS_0" AS "LogProba", orig_cte."Proba_CLASS_0" AS "Proba", orig_cte."Score_CLASS_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_1' AS "class", orig_cte."LogProba_CLASS_1" AS "LogProba", orig_cte."Proba_CLASS_1" AS "Proba", orig_cte."Score_CLASS_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_2' AS "class", orig_cte."LogProba_CLASS_2" AS "LogProba", orig_cte."Proba_CLASS_2" AS "Proba", orig_cte."Score_CLASS_2" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_CLASS_0" AS "Score_CLASS_0", orig_cte."Score_CLASS_1" AS "Score_CLASS_1", orig_cte."Score_CLASS_2" AS "Score_CLASS_2", orig_cte."Proba_CLASS_0" AS "Proba_CLASS_0", orig_cte."Proba_CLASS_1" AS "Proba_CLASS_1", orig_cte."Proba_CLASS_2" AS "Proba_CLASS_2", orig_cte."LogProba_CLASS_0" AS "LogProba_CLASS_0", orig_cte."LogProba_CLASS_1" AS "LogProba_CLASS_1", orig_cte."LogProba_CLASS_2" AS "LogProba_CLASS_2", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union."class" AS "class", score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_CLASS_0" AS "Score_CLASS_0", score_max."Score_CLASS_1" AS "Score_CLASS_1", score_max."Score_CLASS_2" AS "Score_CLASS_2", score_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_CLASS_0" AS "Score_CLASS_0", score_max."Score_CLASS_1" AS "Score_CLASS_1", score_max."Score_CLASS_2" AS "Score_CLASS_2", score_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max."class") AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_max."KEY" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_CLASS_0" AS "Score_CLASS_0", arg_max_cte."Score_CLASS_1" AS "Score_CLASS_1", arg_max_cte."Score_CLASS_2" AS "Score_CLASS_2", arg_max_cte."Proba_CLASS_0" AS "Proba_CLASS_0", arg_max_cte."Proba_CLASS_1" AS "Proba_CLASS_1", arg_max_cte."Proba_CLASS_2" AS "Proba_CLASS_2", CASE WHEN (arg_max_cte."Proba_CLASS_0" IS NULL OR arg_max_cte."Proba_CLASS_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_CLASS_0") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_0", CASE WHEN (arg_max_cte."Proba_CLASS_1" IS NULL OR arg_max_cte."Proba_CLASS_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_CLASS_1") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_1", CASE WHEN (arg_max_cte."Proba_CLASS_2" IS NULL OR arg_max_cte."Proba_CLASS_2" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_CLASS_2") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_2", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."arg_max_Score" = 'CLASS_0') THEN arg_max_cte."Proba_CLASS_0" WHEN (arg_max_cte."arg_max_Score" = 'CLASS_1') THEN arg_max_cte."Proba_CLASS_1" WHEN (arg_max_cte."arg_max_Score" = 'CLASS_2') THEN arg_max_cte."Proba_CLASS_2" END AS "DecisionProba" 
FROM arg_max_cte