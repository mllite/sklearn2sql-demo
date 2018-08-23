-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier_Pipeline
-- Dataset : BinaryClass_10
-- Database : oracle


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table 20180602_C5M_ADS_IMP_1_OUT part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "20180602_C5M_ADS_IMP_1_OUT" (
	"KEY" NUMBER(19), 
	impter_2 BINARY_DOUBLE, 
	impter_3 BINARY_DOUBLE, 
	impter_4 BINARY_DOUBLE, 
	impter_5 BINARY_DOUBLE, 
	impter_6 BINARY_DOUBLE, 
	impter_7 BINARY_DOUBLE, 
	impter_8 BINARY_DOUBLE, 
	impter_9 BINARY_DOUBLE, 
	impter_10 BINARY_DOUBLE, 
	impter_11 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table 20180602_C5M_ADS_IMP_1_OUT part 2. Populate

INSERT INTO "20180602_C5M_ADS_IMP_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BINARYCLASS_10" "ADS") "ADS_imp_1_OUT") "U"

-- Code For temporary table 20180602_5XH_ADS_SCA_2_OUT part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "20180602_5XH_ADS_SCA_2_OUT" (
	"KEY" NUMBER(19), 
	scaler_2 BINARY_DOUBLE, 
	scaler_3 BINARY_DOUBLE, 
	scaler_4 BINARY_DOUBLE, 
	scaler_5 BINARY_DOUBLE, 
	scaler_6 BINARY_DOUBLE, 
	scaler_7 BINARY_DOUBLE, 
	scaler_8 BINARY_DOUBLE, 
	scaler_9 BINARY_DOUBLE, 
	scaler_10 BINARY_DOUBLE, 
	scaler_11 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table 20180602_5XH_ADS_SCA_2_OUT part 2. Populate

INSERT INTO "20180602_5XH_ADS_SCA_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS BINARY_DOUBLE) - 0.061829205238134496) / 1.2283839562090673 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS BINARY_DOUBLE) - 0.17702463767183324) / 0.940821656314017 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS BINARY_DOUBLE) - 0.04138385004903454) / 1.0741824888811282 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS BINARY_DOUBLE) - 0.13060646805847148) / 1.0792244559733761 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS BINARY_DOUBLE) - -0.05955810471983082) / 1.1095891190508123 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS BINARY_DOUBLE) - -0.04892908987010584) / 1.3781871812029047 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS BINARY_DOUBLE) - 0.19101797861713127) / 0.9735285246303208 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS BINARY_DOUBLE) - 0.02204959673267471) / 0.47460301203797095 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS BINARY_DOUBLE) - -0.057729814034140035) / 1.064607524840552 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS BINARY_DOUBLE) - -0.05254959205203237) / 1.2245328896554564 AS scaler_11 
FROM "20180602_C5M_ADS_IMP_1_OUT" "ADS_imp_1_OUT") "ADS_sca_2_OUT") "U"

-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.07101128250360489) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.7556507587432861) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.8114416599273682) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.8498867750167847) THEN 4 ELSE 5 END ELSE 6 END ELSE 7 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 1.7904822826385498) THEN 9 ELSE 10 END END AS node_id_2 
FROM "20180602_5XH_ADS_SCA_2_OUT" "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_0" AS BINARY_DOUBLE) AS "P_0", CAST("Values"."P_1" AS BINARY_DOUBLE) AS "P_1", CAST("Values"."D" AS BINARY_DOUBLE) AS "D", CAST("Values"."DP" AS BINARY_DOUBLE) AS "DP" 
FROM (SELECT 4 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 5 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 6 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 7 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 9 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 10 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_0" AS "P_0", "DT_node_data"."P_1" AS "P_1", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", "DT_Output"."P_0" AS "Proba_0", "DT_Output"."P_1" AS "Proba_1", CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > 0.0) THEN ln("DT_Output"."P_0") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_0", CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > 0.0) THEN ln("DT_Output"."P_1") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_1", "DT_Output"."D" AS "Decision", "DT_Output"."DP" AS "DecisionProba" 
FROM "DT_Output"