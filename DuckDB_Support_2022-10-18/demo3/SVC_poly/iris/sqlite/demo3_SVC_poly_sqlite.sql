-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_poly
-- Dataset : iris
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190449_ZBMZWZX_KernAgg_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190449_ZBMZWZX_KernAgg_B0" (
	"KEY" BIGINT, 
	"OVO_Class1" BIGINT, 
	"OVO_Class2" BIGINT, 
	"OVO_Decision" BIGINT, 
	"OVO_Conf" FLOAT
)



-- Code For temporary table TMP_20221018190449_ZBMZWZX_KernAgg_B0 part 2. Populate

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."TGT" AS FLOAT) AS "TGT" 
FROM iris AS "ADS"), 
"SV_data_0_1" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.0 AS dual_coeff, 4.8 AS sv_0, 3.4 AS sv_1, 1.9 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.49581829572140784 AS dual_coeff, 5.1 AS sv_0, 3.3 AS sv_1, 1.7 AS sv_2, 0.5 AS sv_3 UNION ALL SELECT 2 AS sv_idx, 0.0 AS dual_coeff, 5.1 AS sv_0, 3.8 AS sv_1, 1.9 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 0.028515264659597972 AS dual_coeff, 4.5 AS sv_0, 2.3 AS sv_1, 1.3 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 4 AS sv_idx, -0.0 AS dual_coeff, 5.6 AS sv_0, 3.0 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -0.5243335603810059 AS dual_coeff, 5.1 AS sv_0, 2.5 AS sv_1, 3.0 AS sv_2, 1.1 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -0.0 AS dual_coeff, 6.2 AS sv_0, 2.2 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 7 AS sv_idx, -0.0 AS dual_coeff, 5.9 AS sv_0, 3.2 AS sv_1, 4.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 8 AS sv_idx, -0.0 AS dual_coeff, 6.3 AS sv_0, 2.5 AS sv_1, 4.9 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -0.0 AS dual_coeff, 5.4 AS sv_0, 3.0 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 10 AS sv_idx, -0.0 AS dual_coeff, 6.7 AS sv_0, 3.0 AS sv_1, 5.0 AS sv_2, 1.7 AS sv_3) AS "Values"), 
kernel_dp_0_1 AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 1.1361110212790335 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data_0_1".dual_coeff * power(0.06541912694449836 * (kernel_input."Feature_0" * "SV_data_0_1".sv_0 + kernel_input."Feature_1" * "SV_data_0_1".sv_1 + kernel_input."Feature_2" * "SV_data_0_1".sv_2 + kernel_input."Feature_3" * "SV_data_0_1".sv_3) + 0.0, 3) AS dot_prod1 
FROM kernel_input, "SV_data_0_1") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t), 
kernel_cte_0_1 AS 
(SELECT kernel_dp_0_1."KEY" AS "KEY", 0 AS "OVO_Class1", 1 AS "OVO_Class2", CASE WHEN (-kernel_dp_0_1.dot_product >= 0.0) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-kernel_dp_0_1.dot_product, 1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-((-kernel_dp_0_1.dot_product) * -1.628012575327851 + -0.938132247071702))))))) AS "OVO_Conf" 
FROM kernel_dp_0_1)
 INSERT INTO "TMP_20221018190449_ZBMZWZX_KernAgg_B0" ("KEY", "OVO_Class1", "OVO_Class2", "OVO_Decision", "OVO_Conf") SELECT "T"."KEY", "T"."OVO_Class1", "T"."OVO_Class2", "T"."OVO_Decision", "T"."OVO_Conf" 
FROM (SELECT "KernAgg_B0"."KEY" AS "KEY", "KernAgg_B0"."OVO_Class1" AS "OVO_Class1", "KernAgg_B0"."OVO_Class2" AS "OVO_Class2", "KernAgg_B0"."OVO_Decision" AS "OVO_Decision", "KernAgg_B0"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT "KernAgg_esu_0"."KEY" AS "KEY", "KernAgg_esu_0"."OVO_Class1" AS "OVO_Class1", "KernAgg_esu_0"."OVO_Class2" AS "OVO_Class2", "KernAgg_esu_0"."OVO_Decision" AS "OVO_Decision", "KernAgg_esu_0"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT kernel_cte_0_1."KEY" AS "KEY", kernel_cte_0_1."OVO_Class1" AS "OVO_Class1", kernel_cte_0_1."OVO_Class2" AS "OVO_Class2", kernel_cte_0_1."OVO_Decision" AS "OVO_Decision", kernel_cte_0_1."OVO_Conf" AS "OVO_Conf" 
FROM kernel_cte_0_1) AS "KernAgg_esu_0") AS "KernAgg_B0") AS "T"

-- Code For temporary table TMP_20221018190449_WS0HYD5_KernAgg_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190449_WS0HYD5_KernAgg_B1" (
	"KEY" BIGINT, 
	"OVO_Class1" BIGINT, 
	"OVO_Class2" BIGINT, 
	"OVO_Decision" BIGINT, 
	"OVO_Conf" FLOAT
)



-- Code For temporary table TMP_20221018190449_WS0HYD5_KernAgg_B1 part 2. Populate

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."TGT" AS FLOAT) AS "TGT" 
FROM iris AS "ADS"), 
"SV_data_0_2" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.03552060575884974 AS dual_coeff, 4.8 AS sv_0, 3.4 AS sv_1, 1.9 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.027396535056970383 AS dual_coeff, 5.1 AS sv_0, 3.3 AS sv_1, 1.7 AS sv_2, 0.5 AS sv_3 UNION ALL SELECT 2 AS sv_idx, 0.03847586820516666 AS dual_coeff, 5.1 AS sv_0, 3.8 AS sv_1, 1.9 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 0.0 AS dual_coeff, 4.5 AS sv_0, 2.3 AS sv_1, 1.3 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 11 AS sv_idx, -0.0 AS dual_coeff, 6.1 AS sv_0, 3.0 AS sv_1, 4.9 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 12 AS sv_idx, -0.10139300902098677 AS dual_coeff, 4.9 AS sv_0, 2.5 AS sv_1, 4.5 AS sv_2, 1.7 AS sv_3 UNION ALL SELECT 13 AS sv_idx, -0.0 AS dual_coeff, 6.5 AS sv_0, 3.2 AS sv_1, 5.1 AS sv_2, 2.0 AS sv_3 UNION ALL SELECT 14 AS sv_idx, -0.0 AS dual_coeff, 6.3 AS sv_0, 2.7 AS sv_1, 4.9 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 15 AS sv_idx, -0.0 AS dual_coeff, 6.0 AS sv_0, 3.0 AS sv_1, 4.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 16 AS sv_idx, -0.0 AS dual_coeff, 6.3 AS sv_0, 2.8 AS sv_1, 5.1 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 17 AS sv_idx, -0.0 AS dual_coeff, 6.0 AS sv_0, 2.2 AS sv_1, 5.0 AS sv_2, 1.5 AS sv_3) AS "Values"), 
kernel_dp_0_2 AS 
(SELECT t_1."KEY" AS "KEY", t_1.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_1."KEY" AS "KEY", sum(CAST(full_join_data_sv_1.dot_prod1 AS FLOAT)) + 1.1836485013121598 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data_0_2".dual_coeff * power(0.06541912694449836 * (kernel_input."Feature_0" * "SV_data_0_2".sv_0 + kernel_input."Feature_1" * "SV_data_0_2".sv_1 + kernel_input."Feature_2" * "SV_data_0_2".sv_2 + kernel_input."Feature_3" * "SV_data_0_2".sv_3) + 0.0, 3) AS dot_prod1 
FROM kernel_input, "SV_data_0_2") AS full_join_data_sv_1 GROUP BY full_join_data_sv_1."KEY") AS t_1), 
kernel_cte_0_2 AS 
(SELECT kernel_dp_0_2."KEY" AS "KEY", 0 AS "OVO_Class1", 2 AS "OVO_Class2", CASE WHEN (-kernel_dp_0_2.dot_product >= 0.0) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-kernel_dp_0_2.dot_product, 1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-((-kernel_dp_0_2.dot_product) * -1.9507655732507698 + -0.8273683250050299))))))) AS "OVO_Conf" 
FROM kernel_dp_0_2)
 INSERT INTO "TMP_20221018190449_WS0HYD5_KernAgg_B1" ("KEY", "OVO_Class1", "OVO_Class2", "OVO_Decision", "OVO_Conf") SELECT "T"."KEY", "T"."OVO_Class1", "T"."OVO_Class2", "T"."OVO_Decision", "T"."OVO_Conf" 
FROM (SELECT "KernAgg_B1"."KEY" AS "KEY", "KernAgg_B1"."OVO_Class1" AS "OVO_Class1", "KernAgg_B1"."OVO_Class2" AS "OVO_Class2", "KernAgg_B1"."OVO_Decision" AS "OVO_Decision", "KernAgg_B1"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT "KernAgg_esu_1"."KEY" AS "KEY", "KernAgg_esu_1"."OVO_Class1" AS "OVO_Class1", "KernAgg_esu_1"."OVO_Class2" AS "OVO_Class2", "KernAgg_esu_1"."OVO_Decision" AS "OVO_Decision", "KernAgg_esu_1"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT kernel_cte_0_2."KEY" AS "KEY", kernel_cte_0_2."OVO_Class1" AS "OVO_Class1", kernel_cte_0_2."OVO_Class2" AS "OVO_Class2", kernel_cte_0_2."OVO_Decision" AS "OVO_Decision", kernel_cte_0_2."OVO_Conf" AS "OVO_Conf" 
FROM kernel_cte_0_2) AS "KernAgg_esu_1") AS "KernAgg_B1") AS "T"

-- Code For temporary table TMP_20221018190449_0TSF1L8_KernAgg_B2 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190449_0TSF1L8_KernAgg_B2" (
	"KEY" BIGINT, 
	"OVO_Class1" BIGINT, 
	"OVO_Class2" BIGINT, 
	"OVO_Decision" BIGINT, 
	"OVO_Conf" FLOAT
)



-- Code For temporary table TMP_20221018190449_0TSF1L8_KernAgg_B2 part 2. Populate

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."TGT" AS FLOAT) AS "TGT" 
FROM iris AS "ADS"), 
"SV_data_1_2" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 4 AS sv_idx, 0.7113043198510227 AS dual_coeff, 5.6 AS sv_0, 3.0 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 5 AS sv_idx, 0.0 AS dual_coeff, 5.1 AS sv_0, 2.5 AS sv_1, 3.0 AS sv_2, 1.1 AS sv_3 UNION ALL SELECT 6 AS sv_idx, 0.8632675129781251 AS dual_coeff, 6.2 AS sv_0, 2.2 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, 5.9 AS sv_0, 3.2 AS sv_1, 4.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 6.3 AS sv_0, 2.5 AS sv_1, 4.9 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, 5.4 AS sv_0, 3.0 AS sv_1, 4.5 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 6.7 AS sv_0, 3.0 AS sv_1, 5.0 AS sv_2, 1.7 AS sv_3 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 6.1 AS sv_0, 3.0 AS sv_1, 4.9 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 4.9 AS sv_0, 2.5 AS sv_1, 4.5 AS sv_2, 1.7 AS sv_3 UNION ALL SELECT 13 AS sv_idx, -0.07952498402657919 AS dual_coeff, 6.5 AS sv_0, 3.2 AS sv_1, 5.1 AS sv_2, 2.0 AS sv_3 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 2.7 AS sv_1, 4.9 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 6.0 AS sv_0, 3.0 AS sv_1, 4.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 6.3 AS sv_0, 2.8 AS sv_1, 5.1 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 17 AS sv_idx, -0.49504684880256855 AS dual_coeff, 6.0 AS sv_0, 2.2 AS sv_1, 5.0 AS sv_2, 1.5 AS sv_3) AS "Values"), 
kernel_dp_1_2 AS 
(SELECT t_2."KEY" AS "KEY", t_2.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_2."KEY" AS "KEY", sum(CAST(full_join_data_sv_2.dot_prod1 AS FLOAT)) + 3.4039755644222307 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data_1_2".dual_coeff * power(0.06541912694449836 * (kernel_input."Feature_0" * "SV_data_1_2".sv_0 + kernel_input."Feature_1" * "SV_data_1_2".sv_1 + kernel_input."Feature_2" * "SV_data_1_2".sv_2 + kernel_input."Feature_3" * "SV_data_1_2".sv_3) + 0.0, 3) AS dot_prod1 
FROM kernel_input, "SV_data_1_2") AS full_join_data_sv_2 GROUP BY full_join_data_sv_2."KEY") AS t_2), 
kernel_cte_1_2 AS 
(SELECT kernel_dp_1_2."KEY" AS "KEY", 1 AS "OVO_Class1", 2 AS "OVO_Class2", CASE WHEN (-kernel_dp_1_2.dot_product >= 0.0) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-kernel_dp_1_2.dot_product, 1.0 / (1.0 + exp(min(100.0, max(-100.0, -(-((-kernel_dp_1_2.dot_product) * -1.5347491197734429 + -0.12625662241528524))))))) AS "OVO_Conf" 
FROM kernel_dp_1_2)
 INSERT INTO "TMP_20221018190449_0TSF1L8_KernAgg_B2" ("KEY", "OVO_Class1", "OVO_Class2", "OVO_Decision", "OVO_Conf") SELECT "T"."KEY", "T"."OVO_Class1", "T"."OVO_Class2", "T"."OVO_Decision", "T"."OVO_Conf" 
FROM (SELECT "KernAgg_B2"."KEY" AS "KEY", "KernAgg_B2"."OVO_Class1" AS "OVO_Class1", "KernAgg_B2"."OVO_Class2" AS "OVO_Class2", "KernAgg_B2"."OVO_Decision" AS "OVO_Decision", "KernAgg_B2"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT "KernAgg_esu_2"."KEY" AS "KEY", "KernAgg_esu_2"."OVO_Class1" AS "OVO_Class1", "KernAgg_esu_2"."OVO_Class2" AS "OVO_Class2", "KernAgg_esu_2"."OVO_Decision" AS "OVO_Decision", "KernAgg_esu_2"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT kernel_cte_1_2."KEY" AS "KEY", kernel_cte_1_2."OVO_Class1" AS "OVO_Class1", kernel_cte_1_2."OVO_Class2" AS "OVO_Class2", kernel_cte_1_2."OVO_Decision" AS "OVO_Decision", kernel_cte_1_2."OVO_Conf" AS "OVO_Conf" 
FROM kernel_cte_1_2) AS "KernAgg_esu_2") AS "KernAgg_B2") AS "T"

-- Code For temporary table TMP_20221018190449_QGG3EDU_KernAgg_agg part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190449_QGG3EDU_KernAgg_agg" (
	"KEY" BIGINT NOT NULL, 
	"OVO_Vote_0" BIGINT, 
	"OVO_SumConfidence_0" FLOAT, 
	"OVO_Vote_1" BIGINT, 
	"OVO_SumConfidence_1" FLOAT, 
	"OVO_Vote_2" BIGINT, 
	"OVO_SumConfidence_2" FLOAT, 
	max_abs_confidence FLOAT, 
	"OVO_Scale" FLOAT, 
	"Score_0" FLOAT, 
	"Score_1" FLOAT, 
	"Score_2" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018190449_QGG3EDU_KernAgg_agg part 2. Populate

WITH "KernAgg_Union" AS 
(SELECT "KernAgg_EnsembleUnion"."KEY" AS "KEY", "KernAgg_EnsembleUnion"."OVO_Class1" AS "OVO_Class1", "KernAgg_EnsembleUnion"."OVO_Class2" AS "OVO_Class2", "KernAgg_EnsembleUnion"."OVO_Decision" AS "OVO_Decision", "KernAgg_EnsembleUnion"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT "KernAgg_B0"."KEY" AS "KEY", "KernAgg_B0"."OVO_Class1" AS "OVO_Class1", "KernAgg_B0"."OVO_Class2" AS "OVO_Class2", "KernAgg_B0"."OVO_Decision" AS "OVO_Decision", "KernAgg_B0"."OVO_Conf" AS "OVO_Conf" 
FROM "TMP_20221018190449_ZBMZWZX_KernAgg_B0" AS "KernAgg_B0" UNION ALL SELECT "KernAgg_B1"."KEY" AS "KEY", "KernAgg_B1"."OVO_Class1" AS "OVO_Class1", "KernAgg_B1"."OVO_Class2" AS "OVO_Class2", "KernAgg_B1"."OVO_Decision" AS "OVO_Decision", "KernAgg_B1"."OVO_Conf" AS "OVO_Conf" 
FROM "TMP_20221018190449_WS0HYD5_KernAgg_B1" AS "KernAgg_B1" UNION ALL SELECT "KernAgg_B2"."KEY" AS "KEY", "KernAgg_B2"."OVO_Class1" AS "OVO_Class1", "KernAgg_B2"."OVO_Class2" AS "OVO_Class2", "KernAgg_B2"."OVO_Decision" AS "OVO_Decision", "KernAgg_B2"."OVO_Conf" AS "OVO_Conf" 
FROM "TMP_20221018190449_0TSF1L8_KernAgg_B2" AS "KernAgg_B2") AS "KernAgg_EnsembleUnion"), 
"OVO_Votes" AS 
(SELECT "Votes_Sel"."KEY" AS "KEY", "Votes_Sel"."OVO_Vote_0" AS "OVO_Vote_0", "Votes_Sel"."OVO_SumConfidence_0" AS "OVO_SumConfidence_0", "Votes_Sel"."OVO_Vote_1" AS "OVO_Vote_1", "Votes_Sel"."OVO_SumConfidence_1" AS "OVO_SumConfidence_1", "Votes_Sel"."OVO_Vote_2" AS "OVO_Vote_2", "Votes_Sel"."OVO_SumConfidence_2" AS "OVO_SumConfidence_2" 
FROM (SELECT "KernAgg_Union"."KEY" AS "KEY", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 0 OR "KernAgg_Union"."OVO_Class2" = 0) THEN 1 ELSE 0 END * (CASE WHEN ("KernAgg_Union"."OVO_Decision" = 0 AND "KernAgg_Union"."OVO_Class1" = 0) THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Decision" = 1 AND "KernAgg_Union"."OVO_Class2" = 0) THEN 1 ELSE 0 END)) AS "OVO_Vote_0", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 0 OR "KernAgg_Union"."OVO_Class2" = 0) THEN 1 ELSE 0 END * "KernAgg_Union"."OVO_Conf" * (-CASE WHEN ("KernAgg_Union"."OVO_Class1" = 0) THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Class2" = 0) THEN 1 ELSE 0 END)) AS "OVO_SumConfidence_0", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 1 OR "KernAgg_Union"."OVO_Class2" = 1) THEN 1 ELSE 0 END * (CASE WHEN ("KernAgg_Union"."OVO_Decision" = 0 AND "KernAgg_Union"."OVO_Class1" = 1) THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Decision" = 1 AND "KernAgg_Union"."OVO_Class2" = 1) THEN 1 ELSE 0 END)) AS "OVO_Vote_1", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 1 OR "KernAgg_Union"."OVO_Class2" = 1) THEN 1 ELSE 0 END * "KernAgg_Union"."OVO_Conf" * (-CASE WHEN ("KernAgg_Union"."OVO_Class1" = 1) THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Class2" = 1) THEN 1 ELSE 0 END)) AS "OVO_SumConfidence_1", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 2 OR "KernAgg_Union"."OVO_Class2" = 2) THEN 1 ELSE 0 END * (CASE WHEN ("KernAgg_Union"."OVO_Decision" = 0 AND "KernAgg_Union"."OVO_Class1" = 2) THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Decision" = 1 AND "KernAgg_Union"."OVO_Class2" = 2) THEN 1 ELSE 0 END)) AS "OVO_Vote_2", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 2 OR "KernAgg_Union"."OVO_Class2" = 2) THEN 1 ELSE 0 END * "KernAgg_Union"."OVO_Conf" * (-CASE WHEN ("KernAgg_Union"."OVO_Class1" = 2) THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Class2" = 2) THEN 1 ELSE 0 END)) AS "OVO_SumConfidence_2" 
FROM "KernAgg_Union" GROUP BY "KernAgg_Union"."KEY") AS "Votes_Sel"), 
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
(SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_Vote_0" AS "OVO_Vote_0", "OVO_Votes"."OVO_SumConfidence_0" AS "OVO_SumConfidence_0", "OVO_Votes"."OVO_Vote_1" AS "OVO_Vote_1", "OVO_Votes"."OVO_SumConfidence_1" AS "OVO_SumConfidence_1", "OVO_Votes"."OVO_Vote_2" AS "OVO_Vote_2", "OVO_Votes"."OVO_SumConfidence_2" AS "OVO_SumConfidence_2", CAST(CASE WHEN (abs("MinMaxConf"."OVO_min_conf") >= abs("MinMaxConf"."OVO_max_conf")) THEN abs("MinMaxConf"."OVO_min_conf") ELSE abs("MinMaxConf"."OVO_max_conf") END AS FLOAT) AS max_abs_confidence, CASE WHEN ("MinMaxConf"."OVO_max_conf" - "MinMaxConf"."OVO_min_conf" <= 0.0) THEN 0.0 ELSE 0.4999999999999998 / CAST(CASE WHEN (abs("MinMaxConf"."OVO_min_conf") >= abs("MinMaxConf"."OVO_max_conf")) THEN abs("MinMaxConf"."OVO_min_conf") ELSE abs("MinMaxConf"."OVO_max_conf") END AS FLOAT) END AS "OVO_Scale" 
FROM "OVO_Votes", "MinMaxConf")
 INSERT INTO "TMP_20221018190449_QGG3EDU_KernAgg_agg" ("KEY", "OVO_Vote_0", "OVO_SumConfidence_0", "OVO_Vote_1", "OVO_SumConfidence_1", "OVO_Vote_2", "OVO_SumConfidence_2", max_abs_confidence, "OVO_Scale", "Score_0", "Score_1", "Score_2") SELECT "T"."KEY", "T"."OVO_Vote_0", "T"."OVO_SumConfidence_0", "T"."OVO_Vote_1", "T"."OVO_SumConfidence_1", "T"."OVO_Vote_2", "T"."OVO_SumConfidence_2", "T".max_abs_confidence, "T"."OVO_Scale", "T"."Score_0", "T"."Score_1", "T"."Score_2" 
FROM (SELECT "KernAgg_agg"."KEY" AS "KEY", "KernAgg_agg"."OVO_Vote_0" AS "OVO_Vote_0", "KernAgg_agg"."OVO_SumConfidence_0" AS "OVO_SumConfidence_0", "KernAgg_agg"."OVO_Vote_1" AS "OVO_Vote_1", "KernAgg_agg"."OVO_SumConfidence_1" AS "OVO_SumConfidence_1", "KernAgg_agg"."OVO_Vote_2" AS "OVO_Vote_2", "KernAgg_agg"."OVO_SumConfidence_2" AS "OVO_SumConfidence_2", "KernAgg_agg".max_abs_confidence AS max_abs_confidence, "KernAgg_agg"."OVO_Scale" AS "OVO_Scale", "KernAgg_agg"."Score_0" AS "Score_0", "KernAgg_agg"."Score_1" AS "Score_1", "KernAgg_agg"."Score_2" AS "Score_2" 
FROM (SELECT "OVO_Votes_WithScale"."KEY" AS "KEY", "OVO_Votes_WithScale"."OVO_Vote_0" AS "OVO_Vote_0", "OVO_Votes_WithScale"."OVO_SumConfidence_0" AS "OVO_SumConfidence_0", "OVO_Votes_WithScale"."OVO_Vote_1" AS "OVO_Vote_1", "OVO_Votes_WithScale"."OVO_SumConfidence_1" AS "OVO_SumConfidence_1", "OVO_Votes_WithScale"."OVO_Vote_2" AS "OVO_Vote_2", "OVO_Votes_WithScale"."OVO_SumConfidence_2" AS "OVO_SumConfidence_2", "OVO_Votes_WithScale".max_abs_confidence AS max_abs_confidence, "OVO_Votes_WithScale"."OVO_Scale" AS "OVO_Scale", "OVO_Votes_WithScale"."OVO_Vote_0" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_0" AS "Score_0", "OVO_Votes_WithScale"."OVO_Vote_1" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_1" AS "Score_1", "OVO_Votes_WithScale"."OVO_Vote_2" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_2" AS "Score_2" 
FROM "OVO_Votes_WithScale") AS "KernAgg_agg") AS "T"

-- Code For temporary table TMP_20221018190449_QGG3EDU_KernAgg_agg part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190449_QGG3EDU_KernAgg_agg_KEY" ON "TMP_20221018190449_QGG3EDU_KernAgg_agg" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "KernAgg_agg"."KEY" AS "KEY", "KernAgg_agg"."Score_0" AS "Score_0", "KernAgg_agg"."Score_1" AS "Score_1", "KernAgg_agg"."Score_2" AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "TMP_20221018190449_QGG3EDU_KernAgg_agg" AS "KernAgg_agg"), 
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
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", max(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_max."KEY" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0" WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1" WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2" END AS "DecisionProba" 
FROM arg_max_cte