-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier_Pipeline
-- Dataset : iris_date_tgt
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190521_OYX42RO_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190521_OYX42RO_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 FLOAT, 
	imputer_output_3 FLOAT, 
	imputer_output_4 FLOAT, 
	imputer_output_5 FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190521_OYX42RO_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018190521_OYX42RO_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.040833333333332 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.844166666666667 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.2458333333333336 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM iris_date_tgt AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018190521_OYX42RO_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190521_OYX42RO_ADS_imp_1_OUT_KEY" ON "TMP_20221018190521_OYX42RO_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018190521_2TV5S8M_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190521_2TV5S8M_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 FLOAT, 
	scaler_output_3 FLOAT, 
	scaler_output_4 FLOAT, 
	scaler_output_5 FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190521_2TV5S8M_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018190521_2TV5S8M_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 3.040833333333332) / 0.43922200789830873 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 3.844166666666667) / 1.7109839193347847 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 1.2458333333333336) / 0.7486538845747673 AS scaler_output_5 
FROM "TMP_20221018190521_OYX42RO_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018190521_2TV5S8M_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190521_2TV5S8M_ADS_sca_2_OUT_KEY" ON "TMP_20221018190521_2TV5S8M_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH dummy_class_reg_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0.30833333333333335 AS "Proba_1789-07-14T00:00:00.000000000", CASE WHEN (0.30833333333333335 IS NULL OR 0.30833333333333335 > 0.0) THEN ln(0.30833333333333335) ELSE '-Infinity'::float8 END AS "LogProba_1789-07-14T00:00:00.000000000", 0.3333333333333333 AS "Proba_1789-08-14T00:00:00.000000000", CASE WHEN (0.3333333333333333 IS NULL OR 0.3333333333333333 > 0.0) THEN ln(0.3333333333333333) ELSE '-Infinity'::float8 END AS "LogProba_1789-08-14T00:00:00.000000000", 0.35833333333333334 AS "Proba_1789-09-14T00:00:00.000000000", CASE WHEN (0.35833333333333334 IS NULL OR 0.35833333333333334 > 0.0) THEN ln(0.35833333333333334) ELSE '-Infinity'::float8 END AS "LogProba_1789-09-14T00:00:00.000000000", 2 AS "Decision", CASE WHEN (2 = '1789-07-14T00:00:00.000000000') THEN 0.30833333333333335 WHEN (2 = '1789-08-14T00:00:00.000000000') THEN 0.3333333333333333 WHEN (2 = '1789-09-14T00:00:00.000000000') THEN 0.35833333333333334 END AS "DecisionProba" 
FROM "TMP_20221018190521_2TV5S8M_ADS_sca_2_OUT" AS "ADS_sca_2_OUT")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_1789-07-14T00:00:00.000000000", CAST(NULL AS FLOAT) AS "Score_1789-08-14T00:00:00.000000000", CAST(NULL AS FLOAT) AS "Score_1789-09-14T00:00:00.000000000", dummy_class_reg_cte."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", dummy_class_reg_cte."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", dummy_class_reg_cte."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", dummy_class_reg_cte."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", dummy_class_reg_cte."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", dummy_class_reg_cte."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", dummy_class_reg_cte."Decision" AS "Decision", dummy_class_reg_cte."DecisionProba" AS "DecisionProba" 
FROM dummy_class_reg_cte