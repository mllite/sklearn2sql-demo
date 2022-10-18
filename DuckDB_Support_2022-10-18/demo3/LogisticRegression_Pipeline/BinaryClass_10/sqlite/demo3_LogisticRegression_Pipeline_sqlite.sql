-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LogisticRegression_Pipeline
-- Dataset : BinaryClass_10
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018184835_5AIXR4P_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184835_5AIXR4P_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 FLOAT, 
	imputer_output_3 FLOAT, 
	imputer_output_4 FLOAT, 
	imputer_output_5 FLOAT, 
	imputer_output_6 FLOAT, 
	imputer_output_7 FLOAT, 
	imputer_output_8 FLOAT, 
	imputer_output_9 FLOAT, 
	imputer_output_10 FLOAT, 
	imputer_output_11 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018184835_5AIXR4P_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018184835_5AIXR4P_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9, imputer_output_10, imputer_output_11) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9, "T".imputer_output_10, "T".imputer_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9, "ADS_imp_1_OUT".imputer_output_10 AS imputer_output_10, "ADS_imp_1_OUT".imputer_output_11 AS imputer_output_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS imputer_output_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS imputer_output_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS imputer_output_11 
FROM "BinaryClass_10" AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018184835_5AIXR4P_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018184835_5AIXR4P_ADS_imp_1_OUT_KEY" ON "TMP_20221018184835_5AIXR4P_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018184835_R4OELRK_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018184835_R4OELRK_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 FLOAT, 
	scaler_output_3 FLOAT, 
	scaler_output_4 FLOAT, 
	scaler_output_5 FLOAT, 
	scaler_output_6 FLOAT, 
	scaler_output_7 FLOAT, 
	scaler_output_8 FLOAT, 
	scaler_output_9 FLOAT, 
	scaler_output_10 FLOAT, 
	scaler_output_11 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20221018184835_R4OELRK_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018184835_R4OELRK_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9, scaler_output_10, scaler_output_11) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9, "T".scaler_output_10, "T".scaler_output_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9, "ADS_sca_2_OUT".scaler_output_10 AS scaler_output_10, "ADS_sca_2_OUT".scaler_output_11 AS scaler_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 0.061829205238134496) / 1.2283839562090673 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 0.17702463767183324) / 0.940821656314017 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.04138385004903454) / 1.0741824888811282 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 0.13060646805847148) / 1.0792244559733761 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS FLOAT) - -0.05955810471983082) / 1.1095891190508123 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS FLOAT) - -0.04892908987010584) / 1.3781871812029047 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS FLOAT) - 0.19101797861713127) / 0.9735285246303208 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS FLOAT) - 0.02204959673267471) / 0.47460301203797095 AS scaler_output_9, (CAST("ADS_imp_1_OUT".imputer_output_10 AS FLOAT) - -0.057729814034140035) / 1.064607524840552 AS scaler_output_10, (CAST("ADS_imp_1_OUT".imputer_output_11 AS FLOAT) - -0.05254959205203237) / 1.2245328896554564 AS scaler_output_11 
FROM "TMP_20221018184835_5AIXR4P_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018184835_R4OELRK_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018184835_R4OELRK_ADS_sca_2_OUT_KEY" ON "TMP_20221018184835_R4OELRK_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH linear_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS FLOAT) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS FLOAT) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS FLOAT) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS FLOAT) AS scaler_output_5, CAST("ADS_sca_2_OUT".scaler_output_6 AS FLOAT) AS scaler_output_6, CAST("ADS_sca_2_OUT".scaler_output_7 AS FLOAT) AS scaler_output_7, CAST("ADS_sca_2_OUT".scaler_output_8 AS FLOAT) AS scaler_output_8, CAST("ADS_sca_2_OUT".scaler_output_9 AS FLOAT) AS scaler_output_9, CAST("ADS_sca_2_OUT".scaler_output_10 AS FLOAT) AS scaler_output_10, CAST("ADS_sca_2_OUT".scaler_output_11 AS FLOAT) AS scaler_output_11 
FROM "TMP_20221018184835_R4OELRK_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", -0.9462587171612229 * linear_input.scaler_output_2 + -0.13571527458048596 * linear_input.scaler_output_3 + -0.5797229218880026 * linear_input.scaler_output_4 + 0.49299281062828865 * linear_input.scaler_output_5 + -0.38750936682853504 * linear_input.scaler_output_6 + -0.6623150291871884 * linear_input.scaler_output_7 + -0.37294084180684145 * linear_input.scaler_output_8 + -1.0705891561740277 * linear_input.scaler_output_9 + 0.13401488752124086 * linear_input.scaler_output_10 + 1.1495278040879093 * linear_input.scaler_output_11 + 0.5312675782144469 AS lincomb 
FROM linear_input), 
dot_prod_logistic AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte.lincomb AS dot_prod, 1.0 / (1.0 + exp(min(100.0, max(-100.0, -linear_model_cte.lincomb)))) AS logistic 
FROM linear_model_cte)
 SELECT dot_prod_logistic."KEY" AS "KEY", -dot_prod_logistic.dot_prod AS "Score_0", dot_prod_logistic.dot_prod AS "Score_1", 1.0 - dot_prod_logistic.logistic AS "Proba_0", dot_prod_logistic.logistic AS "Proba_1", CASE WHEN (1.0 - dot_prod_logistic.logistic IS NULL OR 1.0 - dot_prod_logistic.logistic > 0.0) THEN ln(1.0 - dot_prod_logistic.logistic) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (dot_prod_logistic.logistic IS NULL OR dot_prod_logistic.logistic > 0.0) THEN ln(dot_prod_logistic.logistic) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (dot_prod_logistic.dot_prod > 0.0) THEN 1 ELSE 0 END AS "Decision", max(1.0 - dot_prod_logistic.logistic, dot_prod_logistic.logistic) AS "DecisionProba" 
FROM dot_prod_logistic