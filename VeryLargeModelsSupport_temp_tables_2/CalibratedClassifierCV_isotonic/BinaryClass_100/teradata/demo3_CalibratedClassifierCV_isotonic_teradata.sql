-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_isotonic
-- Dataset : BinaryClass_100
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180508180159_codegen_fl828s_calprob_b0 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180508180159_codegen_fl828s_calprob_b0  (
	"KEY" BIGINT, 
	"Proba_1" DOUBLE PRECISION, 
	"Proba_0" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180508180159_codegen_fl828s_calprob_b0 part 2. Populate

INSERT INTO tmp_20180508180159_codegen_fl828s_calprob_b0 ("KEY", "Proba_1", "Proba_0") SELECT "U"."KEY", "U"."Proba_1", "U"."Proba_0" 
FROM (WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= CAST(0.034406058490276 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_18" <= CAST(-1.167247533798218 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_77" <= CAST(0.39086040854454 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_88" <= CAST(1.831456422805786 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_18" <= CAST(1.509636044502258 AS DOUBLE PRECISION)) THEN 9 ELSE CASE WHEN ("ADS"."Feature_32" <= CAST(0.105468422174454 AS DOUBLE PRECISION)) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_0" AS DOUBLE PRECISION) AS "P_0", CAST("Values"."P_1" AS DOUBLE PRECISION) AS "P_1", CAST("Values"."D" AS DOUBLE PRECISION) AS "D", CAST("Values"."DP" AS DOUBLE PRECISION) AS "DP" 
FROM (SELECT 3 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 6 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 7 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 9 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 11 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 12 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_0" AS "P_0", "DT_node_data"."P_1" AS "P_1", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"Calibrated_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", "DT_Output"."P_0" AS "Proba_0", "DT_Output"."P_1" AS "Proba_1", CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output"."P_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output"."P_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba", coalesce(CAST(NULL AS DOUBLE PRECISION), "DT_Output"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS DOUBLE PRECISION), "DT_Output"."P_1") AS "ScoreOrProba_1" 
FROM "DT_Output"), 
isotonic_cte_0 AS 
(SELECT "Calibrated_Model_0"."KEY" AS "KEY", CASE WHEN ("Calibrated_Model_0"."ScoreOrProba_1" < CAST(0.0 AS DOUBLE PRECISION)) THEN CAST(0.181818181818182 AS DOUBLE PRECISION) WHEN ("Calibrated_Model_0"."ScoreOrProba_1" < CAST(1.0 AS DOUBLE PRECISION)) THEN ("Calibrated_Model_0"."ScoreOrProba_1" - CAST(0.0 AS DOUBLE PRECISION)) * CAST(0.618181818181818 AS DOUBLE PRECISION) + CAST(0.181818181818182 AS DOUBLE PRECISION) ELSE CAST(0.8 AS DOUBLE PRECISION) END AS "Proba_1", CAST(1.0 AS DOUBLE PRECISION) - CASE WHEN ("Calibrated_Model_0"."ScoreOrProba_1" < CAST(0.0 AS DOUBLE PRECISION)) THEN CAST(0.181818181818182 AS DOUBLE PRECISION) WHEN ("Calibrated_Model_0"."ScoreOrProba_1" < CAST(1.0 AS DOUBLE PRECISION)) THEN ("Calibrated_Model_0"."ScoreOrProba_1" - CAST(0.0 AS DOUBLE PRECISION)) * CAST(0.618181818181818 AS DOUBLE PRECISION) + CAST(0.181818181818182 AS DOUBLE PRECISION) ELSE CAST(0.8 AS DOUBLE PRECISION) END AS "Proba_0" 
FROM "Calibrated_Model_0"), 
"Normalized_Probas" AS 
(SELECT isotonic_cte_0."KEY" AS "KEY", isotonic_cte_0."Proba_1" / (isotonic_cte_0."Proba_0" + isotonic_cte_0."Proba_1") AS "Proba_1", isotonic_cte_0."Proba_0" / (isotonic_cte_0."Proba_0" + isotonic_cte_0."Proba_1") AS "Proba_0" 
FROM isotonic_cte_0), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= CAST(0.034406058490276 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_35" <= CAST(0.751033782958984 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_17" <= CAST(1.086324691772461 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_19" <= CAST(-2.369653940200806 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_77" <= CAST(0.424211502075195 AS DOUBLE PRECISION)) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_32" <= CAST(-0.650236487388611 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END END ELSE CASE WHEN ("ADS"."Feature_54" <= CAST(1.471251130104065 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
dummy_cte_1 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_0" AS DOUBLE PRECISION) AS "P_0", CAST("Values"."P_1" AS DOUBLE PRECISION) AS "P_1", CAST("Values"."D" AS DOUBLE PRECISION) AS "D", CAST("Values"."DP" AS DOUBLE PRECISION) AS "DP" 
FROM (SELECT 4 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_1 UNION ALL SELECT 5 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_1 UNION ALL SELECT 7 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_1 UNION ALL SELECT 8 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_1 UNION ALL SELECT 10 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_1 UNION ALL SELECT 11 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_1 UNION ALL SELECT 13 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_1 UNION ALL SELECT 14 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."P_0" AS "P_0", "DT_node_data_1"."P_1" AS "P_1", "DT_node_data_1"."D" AS "D", "DT_node_data_1"."DP" AS "DP" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"Calibrated_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", "DT_Output_1"."P_0" AS "Proba_0", "DT_Output_1"."P_1" AS "Proba_1", CASE WHEN ("DT_Output_1"."P_0" IS NULL OR "DT_Output_1"."P_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output_1"."P_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN ("DT_Output_1"."P_1" IS NULL OR "DT_Output_1"."P_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output_1"."P_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba", coalesce(CAST(NULL AS DOUBLE PRECISION), "DT_Output_1"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS DOUBLE PRECISION), "DT_Output_1"."P_1") AS "ScoreOrProba_1" 
FROM "DT_Output_1"), 
isotonic_cte_1 AS 
(SELECT "Calibrated_Model_1"."KEY" AS "KEY", CASE WHEN ("Calibrated_Model_1"."ScoreOrProba_1" < CAST(0.0 AS DOUBLE PRECISION)) THEN CAST(0.090909090909091 AS DOUBLE PRECISION) WHEN ("Calibrated_Model_1"."ScoreOrProba_1" < CAST(1.0 AS DOUBLE PRECISION)) THEN ("Calibrated_Model_1"."ScoreOrProba_1" - CAST(0.0 AS DOUBLE PRECISION)) * CAST(0.809090909090909 AS DOUBLE PRECISION) + CAST(0.090909090909091 AS DOUBLE PRECISION) ELSE CAST(0.9 AS DOUBLE PRECISION) END AS "Proba_1", CAST(1.0 AS DOUBLE PRECISION) - CASE WHEN ("Calibrated_Model_1"."ScoreOrProba_1" < CAST(0.0 AS DOUBLE PRECISION)) THEN CAST(0.090909090909091 AS DOUBLE PRECISION) WHEN ("Calibrated_Model_1"."ScoreOrProba_1" < CAST(1.0 AS DOUBLE PRECISION)) THEN ("Calibrated_Model_1"."ScoreOrProba_1" - CAST(0.0 AS DOUBLE PRECISION)) * CAST(0.809090909090909 AS DOUBLE PRECISION) + CAST(0.090909090909091 AS DOUBLE PRECISION) ELSE CAST(0.9 AS DOUBLE PRECISION) END AS "Proba_0" 
FROM "Calibrated_Model_1"), 
"Normalized_Probas_1" AS 
(SELECT isotonic_cte_1."KEY" AS "KEY", isotonic_cte_1."Proba_1" / (isotonic_cte_1."Proba_0" + isotonic_cte_1."Proba_1") AS "Proba_1", isotonic_cte_1."Proba_0" / (isotonic_cte_1."Proba_0" + isotonic_cte_1."Proba_1") AS "Proba_0" 
FROM isotonic_cte_1), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= CAST(0.034406058490276 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_17" <= CAST(1.086324691772461 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_88" <= CAST(-2.254085063934326 AS DOUBLE PRECISION)) THEN 3 ELSE CASE WHEN ("ADS"."Feature_19" <= CAST(-1.63329005241394 AS DOUBLE PRECISION)) THEN 5 ELSE 6 END END ELSE 7 END ELSE CASE WHEN ("ADS"."Feature_81" <= CAST(-1.887624859809876 AS DOUBLE PRECISION)) THEN 9 ELSE CASE WHEN ("ADS"."Feature_72" <= CAST(-1.987218618392944 AS DOUBLE PRECISION)) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
dummy_cte_2 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_0" AS DOUBLE PRECISION) AS "P_0", CAST("Values"."P_1" AS DOUBLE PRECISION) AS "P_1", CAST("Values"."D" AS DOUBLE PRECISION) AS "D", CAST("Values"."DP" AS DOUBLE PRECISION) AS "DP" 
FROM (SELECT 3 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_2 UNION ALL SELECT 5 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_2 UNION ALL SELECT 6 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_2 UNION ALL SELECT 7 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_2 UNION ALL SELECT 9 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_2 UNION ALL SELECT 11 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_2 UNION ALL SELECT 12 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_2) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."P_0" AS "P_0", "DT_node_data_2"."P_1" AS "P_1", "DT_node_data_2"."D" AS "D", "DT_node_data_2"."DP" AS "DP" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"Calibrated_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", "DT_Output_2"."P_0" AS "Proba_0", "DT_Output_2"."P_1" AS "Proba_1", CASE WHEN ("DT_Output_2"."P_0" IS NULL OR "DT_Output_2"."P_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output_2"."P_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN ("DT_Output_2"."P_1" IS NULL OR "DT_Output_2"."P_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output_2"."P_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba", coalesce(CAST(NULL AS DOUBLE PRECISION), "DT_Output_2"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS DOUBLE PRECISION), "DT_Output_2"."P_1") AS "ScoreOrProba_1" 
FROM "DT_Output_2"), 
isotonic_cte_2 AS 
(SELECT "Calibrated_Model_2"."KEY" AS "KEY", CASE WHEN ("Calibrated_Model_2"."ScoreOrProba_1" < CAST(0.0 AS DOUBLE PRECISION)) THEN CAST(0.2 AS DOUBLE PRECISION) WHEN ("Calibrated_Model_2"."ScoreOrProba_1" < CAST(1.0 AS DOUBLE PRECISION)) THEN ("Calibrated_Model_2"."ScoreOrProba_1" - CAST(0.0 AS DOUBLE PRECISION)) * CAST(0.577777777777778 AS DOUBLE PRECISION) + CAST(0.2 AS DOUBLE PRECISION) ELSE CAST(0.777777777777778 AS DOUBLE PRECISION) END AS "Proba_1", CAST(1.0 AS DOUBLE PRECISION) - CASE WHEN ("Calibrated_Model_2"."ScoreOrProba_1" < CAST(0.0 AS DOUBLE PRECISION)) THEN CAST(0.2 AS DOUBLE PRECISION) WHEN ("Calibrated_Model_2"."ScoreOrProba_1" < CAST(1.0 AS DOUBLE PRECISION)) THEN ("Calibrated_Model_2"."ScoreOrProba_1" - CAST(0.0 AS DOUBLE PRECISION)) * CAST(0.577777777777778 AS DOUBLE PRECISION) + CAST(0.2 AS DOUBLE PRECISION) ELSE CAST(0.777777777777778 AS DOUBLE PRECISION) END AS "Proba_0" 
FROM "Calibrated_Model_2"), 
"Normalized_Probas_2" AS 
(SELECT isotonic_cte_2."KEY" AS "KEY", isotonic_cte_2."Proba_1" / (isotonic_cte_2."Proba_0" + isotonic_cte_2."Proba_1") AS "Proba_1", isotonic_cte_2."Proba_0" / (isotonic_cte_2."Proba_0" + isotonic_cte_2."Proba_1") AS "Proba_0" 
FROM isotonic_cte_2), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= CAST(-0.201168149709702 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_60" <= CAST(-0.657723248004913 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_52" <= CAST(0.382782220840454 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_48" <= CAST(-1.101569175720215 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_77" <= CAST(0.436271697282791 AS DOUBLE PRECISION)) THEN 7 ELSE 8 END ELSE 9 END END ELSE CASE WHEN ("ADS"."Feature_70" <= CAST(-1.569040775299072 AS DOUBLE PRECISION)) THEN 11 ELSE 12 END END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
dummy_cte_3 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_0" AS DOUBLE PRECISION) AS "P_0", CAST("Values"."P_1" AS DOUBLE PRECISION) AS "P_1", CAST("Values"."D" AS DOUBLE PRECISION) AS "D", CAST("Values"."DP" AS DOUBLE PRECISION) AS "DP" 
FROM (SELECT 3 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_3 UNION ALL SELECT 4 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_3 UNION ALL SELECT 7 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_3 UNION ALL SELECT 8 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_3 UNION ALL SELECT 9 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_3 UNION ALL SELECT 11 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_3 UNION ALL SELECT 12 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte_3) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."P_0" AS "P_0", "DT_node_data_3"."P_1" AS "P_1", "DT_node_data_3"."D" AS "D", "DT_node_data_3"."DP" AS "DP" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"Calibrated_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", "DT_Output_3"."P_0" AS "Proba_0", "DT_Output_3"."P_1" AS "Proba_1", CASE WHEN ("DT_Output_3"."P_0" IS NULL OR "DT_Output_3"."P_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output_3"."P_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN ("DT_Output_3"."P_1" IS NULL OR "DT_Output_3"."P_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output_3"."P_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba", coalesce(CAST(NULL AS DOUBLE PRECISION), "DT_Output_3"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS DOUBLE PRECISION), "DT_Output_3"."P_1") AS "ScoreOrProba_1" 
FROM "DT_Output_3"), 
isotonic_cte_3 AS 
(SELECT "Calibrated_Model_3"."KEY" AS "KEY", CASE WHEN ("Calibrated_Model_3"."ScoreOrProba_1" < CAST(0.0 AS DOUBLE PRECISION)) THEN CAST(0.125 AS DOUBLE PRECISION) WHEN ("Calibrated_Model_3"."ScoreOrProba_1" < CAST(1.0 AS DOUBLE PRECISION)) THEN ("Calibrated_Model_3"."ScoreOrProba_1" - CAST(0.0 AS DOUBLE PRECISION)) * CAST(0.602272727272727 AS DOUBLE PRECISION) + CAST(0.125 AS DOUBLE PRECISION) ELSE CAST(0.727272727272727 AS DOUBLE PRECISION) END AS "Proba_1", CAST(1.0 AS DOUBLE PRECISION) - CASE WHEN ("Calibrated_Model_3"."ScoreOrProba_1" < CAST(0.0 AS DOUBLE PRECISION)) THEN CAST(0.125 AS DOUBLE PRECISION) WHEN ("Calibrated_Model_3"."ScoreOrProba_1" < CAST(1.0 AS DOUBLE PRECISION)) THEN ("Calibrated_Model_3"."ScoreOrProba_1" - CAST(0.0 AS DOUBLE PRECISION)) * CAST(0.602272727272727 AS DOUBLE PRECISION) + CAST(0.125 AS DOUBLE PRECISION) ELSE CAST(0.727272727272727 AS DOUBLE PRECISION) END AS "Proba_0" 
FROM "Calibrated_Model_3"), 
"Normalized_Probas_3" AS 
(SELECT isotonic_cte_3."KEY" AS "KEY", isotonic_cte_3."Proba_1" / (isotonic_cte_3."Proba_0" + isotonic_cte_3."Proba_1") AS "Proba_1", isotonic_cte_3."Proba_0" / (isotonic_cte_3."Proba_0" + isotonic_cte_3."Proba_1") AS "Proba_0" 
FROM isotonic_cte_3)
 SELECT "CalProb_B0"."KEY", "CalProb_B0"."Proba_1", "CalProb_B0"."Proba_0" 
FROM (SELECT "CalProb_esu_0"."KEY" AS "KEY", "CalProb_esu_0"."Proba_1" AS "Proba_1", "CalProb_esu_0"."Proba_0" AS "Proba_0" 
FROM (SELECT "Normalized_Probas"."KEY" AS "KEY", "Normalized_Probas"."Proba_1" AS "Proba_1", "Normalized_Probas"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas" UNION ALL SELECT "Normalized_Probas_1"."KEY" AS "KEY", "Normalized_Probas_1"."Proba_1" AS "Proba_1", "Normalized_Probas_1"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_1" UNION ALL SELECT "Normalized_Probas_2"."KEY" AS "KEY", "Normalized_Probas_2"."Proba_1" AS "Proba_1", "Normalized_Probas_2"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_2" UNION ALL SELECT "Normalized_Probas_3"."KEY" AS "KEY", "Normalized_Probas_3"."Proba_1" AS "Proba_1", "Normalized_Probas_3"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_3") AS "CalProb_esu_0") AS "CalProb_B0") AS "U"

-- Code For temporary table tmp_20180508180159_codegen_gw08t9_calprob_union part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180508180159_codegen_gw08t9_calprob_union  (
	"KEY" BIGINT, 
	"Proba_1" DOUBLE PRECISION, 
	"Proba_0" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180508180159_codegen_gw08t9_calprob_union part 2. Populate

INSERT INTO tmp_20180508180159_codegen_gw08t9_calprob_union ("KEY", "Proba_1", "Proba_0") SELECT "U"."KEY", "U"."Proba_1", "U"."Proba_0" 
FROM (SELECT "CalProb_Union"."KEY", "CalProb_Union"."Proba_1", "CalProb_Union"."Proba_0" 
FROM (SELECT "CalProb_EnsembleUnion"."KEY" AS "KEY", "CalProb_EnsembleUnion"."Proba_1" AS "Proba_1", "CalProb_EnsembleUnion"."Proba_0" AS "Proba_0" 
FROM (SELECT "CalProb_B0"."KEY" AS "KEY", "CalProb_B0"."Proba_1" AS "Proba_1", "CalProb_B0"."Proba_0" AS "Proba_0" 
FROM tmp_20180508180159_codegen_fl828s_calprob_b0 AS "CalProb_B0") AS "CalProb_EnsembleUnion") AS "CalProb_Union") AS "U"

-- Code For temporary table tmp_20180508180159_codegen_o08l2n_calprob_avg part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180508180159_codegen_o08l2n_calprob_avg  (
	"KEY" BIGINT, 
	"Proba_1" DOUBLE PRECISION, 
	"Proba_0" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180508180159_codegen_o08l2n_calprob_avg part 2. Populate

INSERT INTO tmp_20180508180159_codegen_o08l2n_calprob_avg ("KEY", "Proba_1", "Proba_0") SELECT "U"."KEY", "U"."Proba_1", "U"."Proba_0" 
FROM (SELECT "CalProb_avg"."KEY", "CalProb_avg"."Proba_1", "CalProb_avg"."Proba_0" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Proba_1" AS DOUBLE PRECISION) AS "Proba_1", CAST("T"."Proba_0" AS DOUBLE PRECISION) AS "Proba_0" 
FROM (SELECT "CalProb_Union"."KEY" AS "KEY", avg(CAST("CalProb_Union"."Proba_1" AS DOUBLE PRECISION)) AS "Proba_1", avg(CAST("CalProb_Union"."Proba_0" AS DOUBLE PRECISION)) AS "Proba_0" 
FROM tmp_20180508180159_codegen_gw08t9_calprob_union AS "CalProb_Union" GROUP BY "CalProb_Union"."KEY") AS "T") AS "CalProb_avg") AS "U"

-- Model deployment code

WITH orig_cte AS 
(SELECT "CalProb_avg"."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", "CalProb_avg"."Proba_0" AS "Proba_0", "CalProb_avg"."Proba_1" AS "Proba_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM tmp_20180508180159_codegen_o08l2n_calprob_avg AS "CalProb_avg"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu."class" AS "class", scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS "class", orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS "class", orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union."class" AS "class", score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max."class") AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."Proba" >= union_with_max."max_Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte