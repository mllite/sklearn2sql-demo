-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier_Pipeline
-- Dataset : FourClass_10
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516112246_codegen_c5svf6_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516112246_codegen_c5svf6_ads_imp_1_out  (
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

-- Code For temporary table tmp_20180516112246_codegen_c5svf6_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516112246_codegen_c5svf6_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.003903374463034205 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.6152232215702322 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.042796236914291665 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.7709819558904074 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.43300733624893334 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.0424956965794036 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.29809080119845455 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.14672241507251663 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.01746942384662034 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.11507331415602866 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "FourClass_10" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516112246_codegen_hyuwon_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516112246_codegen_hyuwon_ads_sca_2_out  (
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

-- Code For temporary table tmp_20180516112246_codegen_hyuwon_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516112246_codegen_hyuwon_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - CAST(-0.003903374463034 AS DOUBLE PRECISION)) / CAST(0.9795060640184 AS DOUBLE PRECISION) AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - CAST(0.615223221570232 AS DOUBLE PRECISION)) / CAST(1.390080723620524 AS DOUBLE PRECISION) AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - CAST(0.042796236914292 AS DOUBLE PRECISION)) / CAST(1.496268513587076 AS DOUBLE PRECISION) AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - CAST(0.770981955890407 AS DOUBLE PRECISION)) / CAST(2.333356106011174 AS DOUBLE PRECISION) AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - CAST(-0.433007336248933 AS DOUBLE PRECISION)) / CAST(1.402975777264875 AS DOUBLE PRECISION) AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - CAST(-0.042495696579404 AS DOUBLE PRECISION)) / CAST(0.955809107687323 AS DOUBLE PRECISION) AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - CAST(-0.298090801198455 AS DOUBLE PRECISION)) / CAST(1.017013180721433 AS DOUBLE PRECISION) AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - CAST(0.146722415072517 AS DOUBLE PRECISION)) / CAST(1.600798539929603 AS DOUBLE PRECISION) AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - CAST(0.01746942384662 AS DOUBLE PRECISION)) / CAST(1.148729636167142 AS DOUBLE PRECISION) AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - CAST(0.115073314156029 AS DOUBLE PRECISION)) / CAST(0.969091185733622 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180516112246_codegen_c5svf6_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= CAST(-0.057175017893314 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= CAST(-1.091533422470093 AS DOUBLE PRECISION)) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(0.055714450776577 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= CAST(0.666355133056641 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= CAST(-0.717765927314758 AS DOUBLE PRECISION)) THEN 6 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= CAST(-1.836770176887512 AS DOUBLE PRECISION)) THEN 8 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= CAST(-1.298542737960816 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END END END ELSE 12 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= CAST(-1.725775718688965 AS DOUBLE PRECISION)) THEN 14 ELSE 15 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(0.13469922542572 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(0.161496639251709 AS DOUBLE PRECISION)) THEN 18 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(-0.047089215368032 AS DOUBLE PRECISION)) THEN 20 ELSE 21 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= CAST(0.885828495025635 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= CAST(0.318128287792206 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= CAST(-0.232108145952225 AS DOUBLE PRECISION)) THEN 25 ELSE 26 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(1.948196649551392 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= CAST(0.274374336004257 AS DOUBLE PRECISION)) THEN 29 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= CAST(0.492200374603272 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= CAST(-0.660323739051819 AS DOUBLE PRECISION)) THEN 32 ELSE 33 END ELSE 34 END END ELSE 35 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(-1.350844621658325 AS DOUBLE PRECISION)) THEN 37 ELSE 38 END END END END AS node_id_2 
FROM tmp_20180516112246_codegen_hyuwon_ads_sca_2_out AS "ADS_sca_2_OUT"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_0" AS DOUBLE PRECISION) AS "P_0", CAST("Values"."P_1" AS DOUBLE PRECISION) AS "P_1", CAST("Values"."P_2" AS DOUBLE PRECISION) AS "P_2", CAST("Values"."P_3" AS DOUBLE PRECISION) AS "P_3", CAST("Values"."D" AS DOUBLE PRECISION) AS "D", CAST("Values"."DP" AS DOUBLE PRECISION) AS "DP" 
FROM (SELECT 2 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(1.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 2 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 6 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 8 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(1.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 2 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 10 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(1.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 2 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 11 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(1.0 AS DOUBLE PRECISION) AS "P_3", 3 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 12 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(1.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 2 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 14 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(1.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 2 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 15 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 18 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(1.0 AS DOUBLE PRECISION) AS "P_3", 3 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 20 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 21 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(1.0 AS DOUBLE PRECISION) AS "P_3", 3 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 25 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 26 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 29 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 32 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 33 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(1.0 AS DOUBLE PRECISION) AS "P_3", 3 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 34 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 35 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(1.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 2 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 37 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", CAST(0.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 38 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", CAST(1.0 AS DOUBLE PRECISION) AS "P_2", CAST(0.0 AS DOUBLE PRECISION) AS "P_3", 2 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_0" AS "P_0", "DT_node_data"."P_1" AS "P_1", "DT_node_data"."P_2" AS "P_2", "DT_node_data"."P_3" AS "P_3", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", CAST(NULL AS DOUBLE PRECISION) AS "Score_2", CAST(NULL AS DOUBLE PRECISION) AS "Score_3", "DT_Output"."P_0" AS "Proba_0", "DT_Output"."P_1" AS "Proba_1", "DT_Output"."P_2" AS "Proba_2", "DT_Output"."P_3" AS "Proba_3", CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output"."P_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output"."P_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN ("DT_Output"."P_2" IS NULL OR "DT_Output"."P_2" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output"."P_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN ("DT_Output"."P_3" IS NULL OR "DT_Output"."P_3" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output"."P_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", "DT_Output"."D" AS "Decision", "DT_Output"."DP" AS "DecisionProba" 
FROM "DT_Output"