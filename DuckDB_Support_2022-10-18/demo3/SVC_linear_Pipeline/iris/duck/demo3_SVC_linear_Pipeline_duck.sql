-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_linear_Pipeline
-- Dataset : iris
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190449_A9HF8TX_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190449_A9HF8TX_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190449_A9HF8TX_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018190449_A9HF8TX_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.040833333333332 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.844166666666667 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.2458333333333336 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM iris AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018190449_A9HF8TX_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190449_A9HF8TX_ADS_imp_1_OUT_KEY" ON "TMP_20221018190449_A9HF8TX_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018190449_JUTTAW4_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190449_JUTTAW4_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190449_JUTTAW4_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018190449_JUTTAW4_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 3.040833333333332) / 0.43922200789830873 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 3.844166666666667) / 1.7109839193347847 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 1.2458333333333336) / 0.7486538845747673 AS scaler_output_5 
FROM "TMP_20221018190449_A9HF8TX_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018190449_JUTTAW4_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190449_JUTTAW4_ADS_sca_2_OUT_KEY" ON "TMP_20221018190449_JUTTAW4_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20221018190449_OJJQO85_KernAgg_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190449_OJJQO85_KernAgg_B0" (
	"KEY" BIGINT, 
	"OVO_Class1" BIGINT, 
	"OVO_Class2" BIGINT, 
	"OVO_Decision" BIGINT, 
	"OVO_Conf" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190449_OJJQO85_KernAgg_B0 part 2. Populate

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) AS scaler_output_5 
FROM "TMP_20221018190449_JUTTAW4_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"SV_data_0_1" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.33218707084581567 AS dual_coeff, -0.903826624263008 AS sv_0, 0.5900584715843097 AS sv_1, -1.2531775678524786 AS sv_2, -0.9962325030303746 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.6109502707968126 AS dual_coeff, -1.6293061888888354 AS sv_0, -1.686694473435526 AS sv_1, -1.4869611794223154 AS sv_2, -1.2633786490943855 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -0.0 AS dual_coeff, 0.1843927226757343 AS sv_0, -0.3206427064236244 AS sv_1, 0.3833077131363777 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 3 AS sv_idx, -0.0 AS dual_coeff, 1.1516988088435047 AS sv_0, -0.5483180009256082 AS sv_1, 0.5586454218137551 AS sv_2, 0.2059251542576747 AS sv_3 UNION ALL SELECT 4 AS sv_idx, -0.0 AS dual_coeff, -0.29926032040815137 AS sv_0, -0.09296741192164064 AS sv_1, 0.3833077131363777 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -0.0 AS dual_coeff, 0.5471325049886481 AS sv_0, 0.5900584715843097 AS sv_1, 0.5001995189212961 AS sv_2, 0.4730713003216859 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -0.9085008805923557 AS dual_coeff, -0.903826624263008 AS sv_0, -1.2313438844315585 AS sv_1, -0.4933808302505097 AS sv_2, -0.19479406483834152 AS sv_3 UNION ALL SELECT 7 AS sv_idx, -0.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -1.686694473435526 AS sv_1, 0.32486181024391875 AS sv_2, 0.07235208122566938 AS sv_3 UNION ALL SELECT 8 AS sv_idx, -0.0 AS dual_coeff, 0.42621924421767715 AS sv_0, -1.914369767937509 AS sv_1, 0.3833077131363777 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -0.034636461050272814 AS dual_coeff, -1.1456531458049497 AS sv_0, -1.4590191789335423 AS sv_1, -0.3180431215731323 AS sv_2, -0.3283671378703471 AS sv_3 UNION ALL SELECT 10 AS sv_idx, -0.0 AS dual_coeff, 0.06347946190476342 AS sv_0, 0.3623831770823269 AS sv_1, 0.5586454218137551 AS sv_2, 0.7402174463856968 AS sv_3 UNION ALL SELECT 11 AS sv_idx, -0.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -1.2313438844315585 AS sv_1, 0.6170913247062145 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 12 AS sv_idx, -0.0 AS dual_coeff, 0.3053059834467052 AS sv_0, -0.3206427064236244 AS sv_1, 0.5001995189212961 AS sv_2, 0.2059251542576747 AS sv_3 UNION ALL SELECT 13 AS sv_idx, -0.0 AS dual_coeff, -0.5410868419500932 AS sv_0, -0.09296741192164064 AS sv_1, 0.3833077131363777 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 14 AS sv_idx, -0.0 AS dual_coeff, 1.0307855480725336 AS sv_0, -0.09296741192164064 AS sv_1, 0.6755372275986735 AS sv_2, 0.6066443733536911 AS sv_3 UNION ALL SELECT 15 AS sv_idx, -0.0 AS dual_coeff, 1.2726120696144765 AS sv_0, 0.13470788258034314 AS sv_1, 0.6170913247062145 AS sv_2, 0.33949822728968027 AS sv_3) AS "Values"), 
kernel_dp_0_1 AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE)) + -1.585927538143323 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data_0_1".dual_coeff * (kernel_input.scaler_output_2 * "SV_data_0_1".sv_0 + kernel_input.scaler_output_3 * "SV_data_0_1".sv_1 + kernel_input.scaler_output_4 * "SV_data_0_1".sv_2 + kernel_input.scaler_output_5 * "SV_data_0_1".sv_3) AS dot_prod1 
FROM kernel_input, "SV_data_0_1") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t), 
kernel_cte_0_1 AS 
(SELECT kernel_dp_0_1."KEY" AS "KEY", 0 AS "OVO_Class1", 1 AS "OVO_Class2", CASE WHEN (-kernel_dp_0_1.dot_product >= 0.0) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-kernel_dp_0_1.dot_product, 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(-((-kernel_dp_0_1.dot_product) * -2.2097558616045383 + -0.3784928789605067))))))) AS "OVO_Conf" 
FROM kernel_dp_0_1)
 INSERT INTO "TMP_20221018190449_OJJQO85_KernAgg_B0" ("KEY", "OVO_Class1", "OVO_Class2", "OVO_Decision", "OVO_Conf") SELECT "T"."KEY", "T"."OVO_Class1", "T"."OVO_Class2", "T"."OVO_Decision", "T"."OVO_Conf" 
FROM (SELECT "KernAgg_B0"."KEY" AS "KEY", "KernAgg_B0"."OVO_Class1" AS "OVO_Class1", "KernAgg_B0"."OVO_Class2" AS "OVO_Class2", "KernAgg_B0"."OVO_Decision" AS "OVO_Decision", "KernAgg_B0"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT "KernAgg_esu_0"."KEY" AS "KEY", "KernAgg_esu_0"."OVO_Class1" AS "OVO_Class1", "KernAgg_esu_0"."OVO_Class2" AS "OVO_Class2", "KernAgg_esu_0"."OVO_Decision" AS "OVO_Decision", "KernAgg_esu_0"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT kernel_cte_0_1."KEY" AS "KEY", kernel_cte_0_1."OVO_Class1" AS "OVO_Class1", kernel_cte_0_1."OVO_Class2" AS "OVO_Class2", kernel_cte_0_1."OVO_Decision" AS "OVO_Decision", kernel_cte_0_1."OVO_Conf" AS "OVO_Conf" 
FROM kernel_cte_0_1) AS "KernAgg_esu_0") AS "KernAgg_B0") AS "T"

-- Code For temporary table TMP_20221018190449_0XCCR9X_KernAgg_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190449_0XCCR9X_KernAgg_B1" (
	"KEY" BIGINT, 
	"OVO_Class1" BIGINT, 
	"OVO_Class2" BIGINT, 
	"OVO_Decision" BIGINT, 
	"OVO_Conf" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190449_0XCCR9X_KernAgg_B1 part 2. Populate

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) AS scaler_output_5 
FROM "TMP_20221018190449_JUTTAW4_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"SV_data_0_2" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.12227390337529176 AS dual_coeff, -0.903826624263008 AS sv_0, 0.5900584715843097 AS sv_1, -1.2531775678524786 AS sv_2, -0.9962325030303746 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.18490288564070492 AS dual_coeff, -1.6293061888888354 AS sv_0, -1.686694473435526 AS sv_1, -1.4869611794223154 AS sv_2, -1.2633786490943855 AS sv_3 UNION ALL SELECT 16 AS sv_idx, -0.0 AS dual_coeff, 0.3053059834467052 AS sv_0, -0.09296741192164064 AS sv_1, 0.6170913247062145 AS sv_2, 0.7402174463856968 AS sv_3 UNION ALL SELECT 17 AS sv_idx, -0.3071767890159967 AS dual_coeff, -1.1456531458049497 AS sv_0, -1.2313438844315585 AS sv_1, 0.3833077131363777 AS sv_2, 0.6066443733536911 AS sv_3 UNION ALL SELECT 18 AS sv_idx, -0.0 AS dual_coeff, 0.7889590265305909 AS sv_0, 0.3623831770823269 AS sv_1, 0.7339831304911324 AS sv_2, 1.0073635924497077 AS sv_3 UNION ALL SELECT 19 AS sv_idx, -0.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -0.775993295427591 AS sv_1, 0.6170913247062145 AS sv_2, 0.7402174463856968 AS sv_3 UNION ALL SELECT 20 AS sv_idx, -0.0 AS dual_coeff, 0.06347946190476342 AS sv_0, -0.09296741192164064 AS sv_1, 0.7339831304911324 AS sv_2, 0.7402174463856968 AS sv_3 UNION ALL SELECT 21 AS sv_idx, -0.0 AS dual_coeff, 0.1843927226757343 AS sv_0, -0.09296741192164064 AS sv_1, 0.5586454218137551 AS sv_2, 0.7402174463856968 AS sv_3 UNION ALL SELECT 22 AS sv_idx, -0.0 AS dual_coeff, 0.3053059834467052 AS sv_0, -1.0036685899295748 AS sv_1, 1.0262126449534283 AS sv_2, 0.2059251542576747 AS sv_3 UNION ALL SELECT 23 AS sv_idx, -0.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -0.5483180009256082 AS sv_1, 0.7339831304911324 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 24 AS sv_idx, -0.0 AS dual_coeff, 0.7889590265305909 AS sv_0, -0.09296741192164064 AS sv_1, 0.9677667420609692 AS sv_2, 0.7402174463856968 AS sv_3 UNION ALL SELECT 25 AS sv_idx, -0.0 AS dual_coeff, 1.6353518519273904 AS sv_0, -0.09296741192164064 AS sv_1, 1.1431044507383468 AS sv_2, 0.4730713003216859 AS sv_3 UNION ALL SELECT 26 AS sv_idx, -0.0 AS dual_coeff, 0.1843927226757343 AS sv_0, -1.914369767937509 AS sv_1, 0.6755372275986735 AS sv_2, 0.33949822728968027 AS sv_3) AS "Values"), 
kernel_dp_0_2 AS 
(SELECT t_1."KEY" AS "KEY", t_1.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_1."KEY" AS "KEY", sum(CAST(full_join_data_sv_1.dot_prod1 AS DOUBLE)) + -0.359967927861725 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data_0_2".dual_coeff * (kernel_input.scaler_output_2 * "SV_data_0_2".sv_0 + kernel_input.scaler_output_3 * "SV_data_0_2".sv_1 + kernel_input.scaler_output_4 * "SV_data_0_2".sv_2 + kernel_input.scaler_output_5 * "SV_data_0_2".sv_3) AS dot_prod1 
FROM kernel_input, "SV_data_0_2") AS full_join_data_sv_1 GROUP BY full_join_data_sv_1."KEY") AS t_1), 
kernel_cte_0_2 AS 
(SELECT kernel_dp_0_2."KEY" AS "KEY", 0 AS "OVO_Class1", 2 AS "OVO_Class2", CASE WHEN (-kernel_dp_0_2.dot_product >= 0.0) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-kernel_dp_0_2.dot_product, 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(-((-kernel_dp_0_2.dot_product) * -2.701594326089743 + -0.1012669546964477))))))) AS "OVO_Conf" 
FROM kernel_dp_0_2)
 INSERT INTO "TMP_20221018190449_0XCCR9X_KernAgg_B1" ("KEY", "OVO_Class1", "OVO_Class2", "OVO_Decision", "OVO_Conf") SELECT "T"."KEY", "T"."OVO_Class1", "T"."OVO_Class2", "T"."OVO_Decision", "T"."OVO_Conf" 
FROM (SELECT "KernAgg_B1"."KEY" AS "KEY", "KernAgg_B1"."OVO_Class1" AS "OVO_Class1", "KernAgg_B1"."OVO_Class2" AS "OVO_Class2", "KernAgg_B1"."OVO_Decision" AS "OVO_Decision", "KernAgg_B1"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT "KernAgg_esu_1"."KEY" AS "KEY", "KernAgg_esu_1"."OVO_Class1" AS "OVO_Class1", "KernAgg_esu_1"."OVO_Class2" AS "OVO_Class2", "KernAgg_esu_1"."OVO_Decision" AS "OVO_Decision", "KernAgg_esu_1"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT kernel_cte_0_2."KEY" AS "KEY", kernel_cte_0_2."OVO_Class1" AS "OVO_Class1", kernel_cte_0_2."OVO_Class2" AS "OVO_Class2", kernel_cte_0_2."OVO_Decision" AS "OVO_Decision", kernel_cte_0_2."OVO_Conf" AS "OVO_Conf" 
FROM kernel_cte_0_2) AS "KernAgg_esu_1") AS "KernAgg_B1") AS "T"

-- Code For temporary table TMP_20221018190449_2ITQ98G_KernAgg_B2 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190449_2ITQ98G_KernAgg_B2" (
	"KEY" BIGINT, 
	"OVO_Class1" BIGINT, 
	"OVO_Class2" BIGINT, 
	"OVO_Decision" BIGINT, 
	"OVO_Conf" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190449_2ITQ98G_KernAgg_B2 part 2. Populate

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) AS scaler_output_5 
FROM "TMP_20221018190449_JUTTAW4_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"SV_data_1_2" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 2 AS sv_idx, 1.0 AS dual_coeff, 0.1843927226757343 AS sv_0, -0.3206427064236244 AS sv_1, 0.3833077131363777 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 0.30892692556786083 AS dual_coeff, 1.1516988088435047 AS sv_0, -0.5483180009256082 AS sv_1, 0.5586454218137551 AS sv_2, 0.2059251542576747 AS sv_3 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, -0.29926032040815137 AS sv_0, -0.09296741192164064 AS sv_1, 0.3833077131363777 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 5 AS sv_idx, 0.024944052764996887 AS dual_coeff, 0.5471325049886481 AS sv_0, 0.5900584715843097 AS sv_1, 0.5001995189212961 AS sv_2, 0.4730713003216859 AS sv_3 UNION ALL SELECT 6 AS sv_idx, 0.0 AS dual_coeff, -0.903826624263008 AS sv_0, -1.2313438844315585 AS sv_1, -0.4933808302505097 AS sv_2, -0.19479406483834152 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 0.7127121801007332 AS dual_coeff, 0.5471325049886481 AS sv_0, -1.686694473435526 AS sv_1, 0.32486181024391875 AS sv_2, 0.07235208122566938 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 0.42621924421767715 AS sv_0, -1.914369767937509 AS sv_1, 0.3833077131363777 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 9 AS sv_idx, 0.0 AS dual_coeff, -1.1456531458049497 AS sv_0, -1.4590191789335423 AS sv_1, -0.3180431215731323 AS sv_2, -0.3283671378703471 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 0.06347946190476342 AS sv_0, 0.3623831770823269 AS sv_1, 0.5586454218137551 AS sv_2, 0.7402174463856968 AS sv_3 UNION ALL SELECT 11 AS sv_idx, 1.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -1.2313438844315585 AS sv_1, 0.6170913247062145 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 12 AS sv_idx, 0.9618180478741487 AS dual_coeff, 0.3053059834467052 AS sv_0, -0.3206427064236244 AS sv_1, 0.5001995189212961 AS sv_2, 0.2059251542576747 AS sv_3 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, -0.5410868419500932 AS sv_0, -0.09296741192164064 AS sv_1, 0.3833077131363777 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, 1.0307855480725336 AS sv_0, -0.09296741192164064 AS sv_1, 0.6755372275986735 AS sv_2, 0.6066443733536911 AS sv_3 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 1.2726120696144765 AS sv_0, 0.13470788258034314 AS sv_1, 0.6170913247062145 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.3053059834467052 AS sv_0, -0.09296741192164064 AS sv_1, 0.6170913247062145 AS sv_2, 0.7402174463856968 AS sv_3 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, -1.1456531458049497 AS sv_0, -1.2313438844315585 AS sv_1, 0.3833077131363777 AS sv_2, 0.6066443733536911 AS sv_3 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, 0.7889590265305909 AS sv_0, 0.3623831770823269 AS sv_1, 0.7339831304911324 AS sv_2, 1.0073635924497077 AS sv_3 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -0.775993295427591 AS sv_1, 0.6170913247062145 AS sv_2, 0.7402174463856968 AS sv_3 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, 0.06347946190476342 AS sv_0, -0.09296741192164064 AS sv_1, 0.7339831304911324 AS sv_2, 0.7402174463856968 AS sv_3 UNION ALL SELECT 21 AS sv_idx, -1.0 AS dual_coeff, 0.1843927226757343 AS sv_0, -0.09296741192164064 AS sv_1, 0.5586454218137551 AS sv_2, 0.7402174463856968 AS sv_3 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, 0.3053059834467052 AS sv_0, -1.0036685899295748 AS sv_1, 1.0262126449534283 AS sv_2, 0.2059251542576747 AS sv_3 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -0.5483180009256082 AS sv_1, 0.7339831304911324 AS sv_2, 0.33949822728968027 AS sv_3 UNION ALL SELECT 24 AS sv_idx, -0.00840120630773944 AS dual_coeff, 0.7889590265305909 AS sv_0, -0.09296741192164064 AS sv_1, 0.9677667420609692 AS sv_2, 0.7402174463856968 AS sv_3 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 1.6353518519273904 AS sv_0, -0.09296741192164064 AS sv_1, 1.1431044507383468 AS sv_2, 0.4730713003216859 AS sv_3 UNION ALL SELECT 26 AS sv_idx, -1.0 AS dual_coeff, 0.1843927226757343 AS sv_0, -1.914369767937509 AS sv_1, 0.6755372275986735 AS sv_2, 0.33949822728968027 AS sv_3) AS "Values"), 
kernel_dp_1_2 AS 
(SELECT t_2."KEY" AS "KEY", t_2.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_2."KEY" AS "KEY", sum(CAST(full_join_data_sv_2.dot_prod1 AS DOUBLE)) + 2.7116081964198955 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data_1_2".dual_coeff * (kernel_input.scaler_output_2 * "SV_data_1_2".sv_0 + kernel_input.scaler_output_3 * "SV_data_1_2".sv_1 + kernel_input.scaler_output_4 * "SV_data_1_2".sv_2 + kernel_input.scaler_output_5 * "SV_data_1_2".sv_3) AS dot_prod1 
FROM kernel_input, "SV_data_1_2") AS full_join_data_sv_2 GROUP BY full_join_data_sv_2."KEY") AS t_2), 
kernel_cte_1_2 AS 
(SELECT kernel_dp_1_2."KEY" AS "KEY", 1 AS "OVO_Class1", 2 AS "OVO_Class2", CASE WHEN (-kernel_dp_1_2.dot_product >= 0.0) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-kernel_dp_1_2.dot_product, 1.0 / (1.0 + exp(least(100.0, greatest(-100.0, -(-((-kernel_dp_1_2.dot_product) * -2.45600578892666 + -0.16329065362886566))))))) AS "OVO_Conf" 
FROM kernel_dp_1_2)
 INSERT INTO "TMP_20221018190449_2ITQ98G_KernAgg_B2" ("KEY", "OVO_Class1", "OVO_Class2", "OVO_Decision", "OVO_Conf") SELECT "T"."KEY", "T"."OVO_Class1", "T"."OVO_Class2", "T"."OVO_Decision", "T"."OVO_Conf" 
FROM (SELECT "KernAgg_B2"."KEY" AS "KEY", "KernAgg_B2"."OVO_Class1" AS "OVO_Class1", "KernAgg_B2"."OVO_Class2" AS "OVO_Class2", "KernAgg_B2"."OVO_Decision" AS "OVO_Decision", "KernAgg_B2"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT "KernAgg_esu_2"."KEY" AS "KEY", "KernAgg_esu_2"."OVO_Class1" AS "OVO_Class1", "KernAgg_esu_2"."OVO_Class2" AS "OVO_Class2", "KernAgg_esu_2"."OVO_Decision" AS "OVO_Decision", "KernAgg_esu_2"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT kernel_cte_1_2."KEY" AS "KEY", kernel_cte_1_2."OVO_Class1" AS "OVO_Class1", kernel_cte_1_2."OVO_Class2" AS "OVO_Class2", kernel_cte_1_2."OVO_Decision" AS "OVO_Decision", kernel_cte_1_2."OVO_Conf" AS "OVO_Conf" 
FROM kernel_cte_1_2) AS "KernAgg_esu_2") AS "KernAgg_B2") AS "T"

-- Code For temporary table TMP_20221018190449_RA4O8LS_KernAgg_agg part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190449_RA4O8LS_KernAgg_agg" (
	"KEY" BIGINT NOT NULL, 
	"OVO_Vote_0" BIGINT, 
	"OVO_SumConfidence_0" DOUBLE, 
	"OVO_Vote_1" BIGINT, 
	"OVO_SumConfidence_1" DOUBLE, 
	"OVO_Vote_2" BIGINT, 
	"OVO_SumConfidence_2" DOUBLE, 
	max_abs_confidence DOUBLE, 
	"OVO_Scale" DOUBLE, 
	"Score_0" DOUBLE, 
	"Score_1" DOUBLE, 
	"Score_2" DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190449_RA4O8LS_KernAgg_agg part 2. Populate

WITH "KernAgg_Union" AS 
(SELECT "KernAgg_EnsembleUnion"."KEY" AS "KEY", "KernAgg_EnsembleUnion"."OVO_Class1" AS "OVO_Class1", "KernAgg_EnsembleUnion"."OVO_Class2" AS "OVO_Class2", "KernAgg_EnsembleUnion"."OVO_Decision" AS "OVO_Decision", "KernAgg_EnsembleUnion"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT "KernAgg_B0"."KEY" AS "KEY", "KernAgg_B0"."OVO_Class1" AS "OVO_Class1", "KernAgg_B0"."OVO_Class2" AS "OVO_Class2", "KernAgg_B0"."OVO_Decision" AS "OVO_Decision", "KernAgg_B0"."OVO_Conf" AS "OVO_Conf" 
FROM "TMP_20221018190449_OJJQO85_KernAgg_B0" AS "KernAgg_B0" UNION ALL SELECT "KernAgg_B1"."KEY" AS "KEY", "KernAgg_B1"."OVO_Class1" AS "OVO_Class1", "KernAgg_B1"."OVO_Class2" AS "OVO_Class2", "KernAgg_B1"."OVO_Decision" AS "OVO_Decision", "KernAgg_B1"."OVO_Conf" AS "OVO_Conf" 
FROM "TMP_20221018190449_0XCCR9X_KernAgg_B1" AS "KernAgg_B1" UNION ALL SELECT "KernAgg_B2"."KEY" AS "KEY", "KernAgg_B2"."OVO_Class1" AS "OVO_Class1", "KernAgg_B2"."OVO_Class2" AS "OVO_Class2", "KernAgg_B2"."OVO_Decision" AS "OVO_Decision", "KernAgg_B2"."OVO_Conf" AS "OVO_Conf" 
FROM "TMP_20221018190449_2ITQ98G_KernAgg_B2" AS "KernAgg_B2") AS "KernAgg_EnsembleUnion"), 
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
(SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_Vote_0" AS "OVO_Vote_0", "OVO_Votes"."OVO_SumConfidence_0" AS "OVO_SumConfidence_0", "OVO_Votes"."OVO_Vote_1" AS "OVO_Vote_1", "OVO_Votes"."OVO_SumConfidence_1" AS "OVO_SumConfidence_1", "OVO_Votes"."OVO_Vote_2" AS "OVO_Vote_2", "OVO_Votes"."OVO_SumConfidence_2" AS "OVO_SumConfidence_2", CAST(CASE WHEN (abs("MinMaxConf"."OVO_min_conf") >= abs("MinMaxConf"."OVO_max_conf")) THEN abs("MinMaxConf"."OVO_min_conf") ELSE abs("MinMaxConf"."OVO_max_conf") END AS DOUBLE) AS max_abs_confidence, CASE WHEN ("MinMaxConf"."OVO_max_conf" - "MinMaxConf"."OVO_min_conf" <= 0.0) THEN 0.0 ELSE 0.4999999999999998 / CAST(CASE WHEN (abs("MinMaxConf"."OVO_min_conf") >= abs("MinMaxConf"."OVO_max_conf")) THEN abs("MinMaxConf"."OVO_min_conf") ELSE abs("MinMaxConf"."OVO_max_conf") END AS DOUBLE) END AS "OVO_Scale" 
FROM "OVO_Votes", "MinMaxConf")
 INSERT INTO "TMP_20221018190449_RA4O8LS_KernAgg_agg" ("KEY", "OVO_Vote_0", "OVO_SumConfidence_0", "OVO_Vote_1", "OVO_SumConfidence_1", "OVO_Vote_2", "OVO_SumConfidence_2", max_abs_confidence, "OVO_Scale", "Score_0", "Score_1", "Score_2") SELECT "T"."KEY", "T"."OVO_Vote_0", "T"."OVO_SumConfidence_0", "T"."OVO_Vote_1", "T"."OVO_SumConfidence_1", "T"."OVO_Vote_2", "T"."OVO_SumConfidence_2", "T".max_abs_confidence, "T"."OVO_Scale", "T"."Score_0", "T"."Score_1", "T"."Score_2" 
FROM (SELECT "KernAgg_agg"."KEY" AS "KEY", "KernAgg_agg"."OVO_Vote_0" AS "OVO_Vote_0", "KernAgg_agg"."OVO_SumConfidence_0" AS "OVO_SumConfidence_0", "KernAgg_agg"."OVO_Vote_1" AS "OVO_Vote_1", "KernAgg_agg"."OVO_SumConfidence_1" AS "OVO_SumConfidence_1", "KernAgg_agg"."OVO_Vote_2" AS "OVO_Vote_2", "KernAgg_agg"."OVO_SumConfidence_2" AS "OVO_SumConfidence_2", "KernAgg_agg".max_abs_confidence AS max_abs_confidence, "KernAgg_agg"."OVO_Scale" AS "OVO_Scale", "KernAgg_agg"."Score_0" AS "Score_0", "KernAgg_agg"."Score_1" AS "Score_1", "KernAgg_agg"."Score_2" AS "Score_2" 
FROM (SELECT "OVO_Votes_WithScale"."KEY" AS "KEY", "OVO_Votes_WithScale"."OVO_Vote_0" AS "OVO_Vote_0", "OVO_Votes_WithScale"."OVO_SumConfidence_0" AS "OVO_SumConfidence_0", "OVO_Votes_WithScale"."OVO_Vote_1" AS "OVO_Vote_1", "OVO_Votes_WithScale"."OVO_SumConfidence_1" AS "OVO_SumConfidence_1", "OVO_Votes_WithScale"."OVO_Vote_2" AS "OVO_Vote_2", "OVO_Votes_WithScale"."OVO_SumConfidence_2" AS "OVO_SumConfidence_2", "OVO_Votes_WithScale".max_abs_confidence AS max_abs_confidence, "OVO_Votes_WithScale"."OVO_Scale" AS "OVO_Scale", "OVO_Votes_WithScale"."OVO_Vote_0" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_0" AS "Score_0", "OVO_Votes_WithScale"."OVO_Vote_1" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_1" AS "Score_1", "OVO_Votes_WithScale"."OVO_Vote_2" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_2" AS "Score_2" 
FROM "OVO_Votes_WithScale") AS "KernAgg_agg") AS "T"

-- Code For temporary table TMP_20221018190449_RA4O8LS_KernAgg_agg part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190449_RA4O8LS_KernAgg_agg_KEY" ON "TMP_20221018190449_RA4O8LS_KernAgg_agg" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "KernAgg_agg"."KEY" AS "KEY", "KernAgg_agg"."Score_0" AS "Score_0", "KernAgg_agg"."Score_1" AS "Score_1", "KernAgg_agg"."Score_2" AS "Score_2", CAST(NULL AS DOUBLE) AS "Proba_0", CAST(NULL AS DOUBLE) AS "Proba_1", CAST(NULL AS DOUBLE) AS "Proba_2", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", CAST(NULL AS DOUBLE) AS "LogProba_2", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM "TMP_20221018190449_RA4O8LS_KernAgg_agg" AS "KernAgg_agg"), 
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
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE '-Infinity'::float8 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE '-Infinity'::float8 END AS "LogProba_2", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0" WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1" WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2" END AS "DecisionProba" 
FROM arg_max_cte