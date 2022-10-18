-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_sigmoid_Pipeline
-- Dataset : freidman3
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190330_LTFTIBF_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190330_LTFTIBF_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 FLOAT, 
	imputer_output_3 FLOAT, 
	imputer_output_4 FLOAT, 
	imputer_output_5 FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190330_LTFTIBF_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018190330_LTFTIBF_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.79128122207401 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.9672833084396 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.5310009099975209 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.139967152050499 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman3 AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018190330_LTFTIBF_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190330_LTFTIBF_ADS_imp_1_OUT_KEY" ON "TMP_20221018190330_LTFTIBF_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018190330_5E7FQJT_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190330_5E7FQJT_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 FLOAT, 
	scaler_output_3 FLOAT, 
	scaler_output_4 FLOAT, 
	scaler_output_5 FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190330_5E7FQJT_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018190330_5E7FQJT_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM "TMP_20221018190330_LTFTIBF_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018190330_5E7FQJT_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190330_5E7FQJT_ADS_sca_2_OUT_KEY" ON "TMP_20221018190330_5E7FQJT_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS FLOAT) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS FLOAT) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS FLOAT) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS FLOAT) AS scaler_output_5 
FROM "TMP_20221018190330_5E7FQJT_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, -0.1 AS dual_coeff, -0.12862954071664834 AS sv_0, -0.855762437264239 AS sv_1, -1.6966276928077146 AS sv_2, -0.5082762490187378 AS sv_3 UNION ALL SELECT 1 AS sv_idx, -0.1 AS dual_coeff, -0.21286186615867886 AS sv_0, -1.7554500325668299 AS sv_1, 0.40296624747161036 AS sv_2, -1.2888423126888915 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -0.1 AS dual_coeff, 0.26229505103186884 AS sv_0, -1.156436226701534 AS sv_1, -1.469826707772466 AS sv_2, -1.0591196409203139 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 0.1 AS dual_coeff, -1.3354814047760004 AS sv_0, -0.97426350987175 AS sv_1, -0.3716476350789736 AS sv_2, 0.7811055410829204 AS sv_3 UNION ALL SELECT 4 AS sv_idx, -0.1 AS dual_coeff, 2.1576338377007738 AS sv_0, -1.5960266405607315 AS sv_1, 0.8932409458054494 AS sv_2, -1.4115808580223888 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -0.1 AS dual_coeff, 0.7344011353085581 AS sv_0, -1.0612795690667527 AS sv_1, -1.6427206707260704 AS sv_2, 1.2838987122205305 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -0.1 AS dual_coeff, -0.18528042847112391 AS sv_0, 0.4699482106570824 AS sv_1, -1.7832778948365522 AS sv_2, 0.2085342932233457 AS sv_3 UNION ALL SELECT 7 AS sv_idx, -0.1 AS dual_coeff, -1.1306530181901988 AS sv_0, 1.693815859594952 AS sv_1, -1.8098491932723488 AS sv_2, -0.8531150536577624 AS sv_3 UNION ALL SELECT 8 AS sv_idx, -0.1 AS dual_coeff, -1.677429392157608 AS sv_0, -0.836641293061437 AS sv_1, 1.6009951386266825 AS sv_2, 0.7288109585406721 AS sv_3 UNION ALL SELECT 9 AS sv_idx, 0.1 AS dual_coeff, 0.9728908499577125 AS sv_0, 0.5638179474733811 AS sv_1, -0.9647633676782364 AS sv_2, -0.35511879074667424 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 0.1 AS dual_coeff, -0.7108886199867888 AS sv_0, -0.9144078676440471 AS sv_1, 0.4058045686346802 AS sv_2, -0.7553415501998626 AS sv_3 UNION ALL SELECT 11 AS sv_idx, -0.1 AS dual_coeff, -0.17541648253457842 AS sv_0, 1.157357979471062 AS sv_1, 1.5460776435053638 AS sv_2, 1.5614840452774303 AS sv_3 UNION ALL SELECT 12 AS sv_idx, 0.1 AS dual_coeff, 0.6164412059817497 AS sv_0, 0.5135313271464818 AS sv_1, 0.1901494810656995 AS sv_2, -1.1516753084142997 AS sv_3 UNION ALL SELECT 13 AS sv_idx, -0.020209524999158637 AS dual_coeff, 0.21542040586608754 AS sv_0, -1.521343805623405 AS sv_1, -0.40406152244102767 AS sv_2, -0.03926368695421065 AS sv_3 UNION ALL SELECT 14 AS sv_idx, 0.1 AS dual_coeff, 1.2264841754879965 AS sv_0, 0.07275199619597457 AS sv_1, -0.6438669259586074 AS sv_2, 0.17898018904797883 AS sv_3 UNION ALL SELECT 15 AS sv_idx, -0.1 AS dual_coeff, 1.8270803081155385 AS sv_0, -1.3930501356795733 AS sv_1, 0.0975290193831754 AS sv_2, -0.8053390167713217 AS sv_3 UNION ALL SELECT 16 AS sv_idx, 0.07176094136524497 AS dual_coeff, 0.06983222981743986 AS sv_0, 0.6639649839228917 AS sv_1, 0.7444642020285951 AS sv_2, -1.467244646493467 AS sv_3 UNION ALL SELECT 17 AS sv_idx, 0.1 AS dual_coeff, 1.3409510329682315 AS sv_0, -0.1336266063564132 AS sv_1, 1.116727246485082 AS sv_2, 0.8675103253586427 AS sv_3 UNION ALL SELECT 18 AS sv_idx, -0.1 AS dual_coeff, -1.2241246362115 AS sv_0, 1.512795119938024 AS sv_1, -1.676492473707462 AS sv_2, -1.3541232354999226 AS sv_3 UNION ALL SELECT 19 AS sv_idx, 0.1 AS dual_coeff, -0.026701854468432252 AS sv_0, -0.028542073748357124 AS sv_1, -0.7442367085789723 AS sv_2, 0.1618427895801297 AS sv_3 UNION ALL SELECT 20 AS sv_idx, 0.1 AS dual_coeff, -1.3530021564771337 AS sv_0, 0.47937339709127175 AS sv_1, -1.0882400181353251 AS sv_2, 1.4264179411454836 AS sv_3 UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, 1.2560974505775302 AS sv_0, -1.5734959921280032 AS sv_1, 0.806979259164098 AS sv_2, 0.18593850041668145 AS sv_3 UNION ALL SELECT 22 AS sv_idx, -0.1 AS dual_coeff, -0.08482514143628933 AS sv_0, -1.1068716787463535 AS sv_1, -1.4854147384149081 AS sv_2, -1.1904103710707925 AS sv_3 UNION ALL SELECT 23 AS sv_idx, 0.1 AS dual_coeff, -1.6763217237163097 AS sv_0, -1.4763345216405568 AS sv_1, -0.11470085787237269 AS sv_2, 0.8503538460077694 AS sv_3 UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, -1.6242802893869952 AS sv_0, -1.775508653244122 AS sv_1, -0.6568131609880984 AS sv_2, 1.1953045443253554 AS sv_3 UNION ALL SELECT 25 AS sv_idx, 0.04844858363391367 AS dual_coeff, 0.9906526079000334 AS sv_0, -0.0012687796111743863 AS sv_1, 0.9053420656856961 AS sv_2, 1.4770111795319902 AS sv_3 UNION ALL SELECT 26 AS sv_idx, -0.1 AS dual_coeff, -1.0669924080933233 AS sv_0, -0.7524462900242421 AS sv_1, -1.628861728957462 AS sv_2, 1.2775885380398857 AS sv_3 UNION ALL SELECT 27 AS sv_idx, 0.1 AS dual_coeff, -1.5704880612339405 AS sv_0, 0.3075457547535036 AS sv_1, -0.3438102857110602 AS sv_2, 1.2752554901076483 AS sv_3 UNION ALL SELECT 28 AS sv_idx, 0.1 AS dual_coeff, 0.16718440174526195 AS sv_0, -0.4007044787483432 AS sv_1, -0.770256515182922 AS sv_2, -1.6235051493651826 AS sv_3 UNION ALL SELECT 29 AS sv_idx, -0.1 AS dual_coeff, -1.6143668628687107 AS sv_0, -0.2665480603895422 AS sv_1, 1.3614338477237014 AS sv_2, 1.174351653344988 AS sv_3 UNION ALL SELECT 30 AS sv_idx, 0.1 AS dual_coeff, -0.923065553671842 AS sv_0, -1.460057588221313 AS sv_1, -0.28039707608225506 AS sv_2, -1.3915237626329608 AS sv_3 UNION ALL SELECT 31 AS sv_idx, 0.1 AS dual_coeff, -0.3815315849937636 AS sv_0, 0.21390512132680975 AS sv_1, 0.7558550941684732 AS sv_2, -1.567869367101613 AS sv_3) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 1.3798759803914387 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * ((exp(0.2499999999999999 * (kernel_input.scaler_output_2 * "SV_data".sv_0 + kernel_input.scaler_output_3 * "SV_data".sv_1 + kernel_input.scaler_output_4 * "SV_data".sv_2 + kernel_input.scaler_output_5 * "SV_data".sv_3) + 0.0) - exp(-(0.2499999999999999 * (kernel_input.scaler_output_2 * "SV_data".sv_0 + kernel_input.scaler_output_3 * "SV_data".sv_1 + kernel_input.scaler_output_4 * "SV_data".sv_2 + kernel_input.scaler_output_5 * "SV_data".sv_3) + 0.0))) / (exp(0.2499999999999999 * (kernel_input.scaler_output_2 * "SV_data".sv_0 + kernel_input.scaler_output_3 * "SV_data".sv_1 + kernel_input.scaler_output_4 * "SV_data".sv_2 + kernel_input.scaler_output_5 * "SV_data".sv_3) + 0.0) + exp(-(0.2499999999999999 * (kernel_input.scaler_output_2 * "SV_data".sv_0 + kernel_input.scaler_output_3 * "SV_data".sv_1 + kernel_input.scaler_output_4 * "SV_data".sv_2 + kernel_input.scaler_output_5 * "SV_data".sv_3) + 0.0)))) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp