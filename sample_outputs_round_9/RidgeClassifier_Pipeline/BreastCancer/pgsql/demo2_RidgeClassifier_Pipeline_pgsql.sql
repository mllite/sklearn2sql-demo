-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 13.8597887324 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.5079577465 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 90.2345774648 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 631.54084507 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0950171830986 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.103067887324 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.0864928380282 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0468693521127 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.180978169014 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.0631552112676 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.412326056338 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.27143450704 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.98328169014 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 41.2231690141 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.00734775352113 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.0264921690141 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.032405528169 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.0118757676056 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.0213508450704 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.00392323450704 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 15.8818169014 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 25.8104225352 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 105.106619718 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 837.940140845 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.130144507042 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.248377464789 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.259110753521 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.109523584507 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.286747183099 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.0836747887324 ELSE "ADS"."Feature_29" END AS impter_31 
FROM "BreastCancer" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 13.8597887324) / 3.48110212803 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 19.5079577465) / 4.43362115357 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 90.2345774648) / 24.1038025643 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 631.54084507) / 344.884606371 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.0950171830986) / 0.013946197592 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.103067887324) / 0.051633665263 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.0864928380282) / 0.0758957535964 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.0468693521127) / 0.0384321726563 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.180978169014) / 0.0276998070777 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.0631552112676) / 0.00648056962788 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 0.412326056338) / 0.320867363603 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 1.27143450704) / 0.550314789435 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - 2.98328169014) / 2.45069631007 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - 41.2231690141) / 52.9190319751 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - 0.00734775352113) / 0.00276275575882 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - 0.0264921690141) / 0.0174086380412 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - 0.032405528169) / 0.0245629776833 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - 0.0118757676056) / 0.00653221319467 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - 0.0213508450704) / 0.00782019780134 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - 0.00392323450704) / 0.00195872778537 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - 15.8818169014) / 4.65228595124 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - 25.8104225352) / 6.24340698716 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - 105.106619718) / 33.2876907395 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - 837.940140845) / 516.877799198 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - 0.130144507042) / 0.0225481406303 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - 0.248377464789) / 0.152062558695 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - 0.259110753521) / 0.192531701725 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - 0.109523584507) / 0.0679243013098 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - 0.286747183099) / 0.0597538503605 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - 0.0836747887324) / 0.0156791725456 AS scaler_31 
FROM "ADS_imp_1_OUT"), 
linear_model_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", -0.0968483745833615 * "ADS_sca_2_OUT".scaler_2 + 0.10342922550281793 * "ADS_sca_2_OUT".scaler_3 + -0.14538798306917586 * "ADS_sca_2_OUT".scaler_4 + 0.08079574444618097 * "ADS_sca_2_OUT".scaler_5 + -0.0023397995277216798 * "ADS_sca_2_OUT".scaler_6 + 0.2247274149795115 * "ADS_sca_2_OUT".scaler_7 + 0.06809353075179868 * "ADS_sca_2_OUT".scaler_8 + -0.34242706399873424 * "ADS_sca_2_OUT".scaler_9 + -0.053617070434160266 * "ADS_sca_2_OUT".scaler_10 + -0.17479234868288984 * "ADS_sca_2_OUT".scaler_11 + -0.4356143310870618 * "ADS_sca_2_OUT".scaler_12 + 0.1947141734708895 * "ADS_sca_2_OUT".scaler_13 + 0.24355095840521152 * "ADS_sca_2_OUT".scaler_14 + 0.2576058111575991 * "ADS_sca_2_OUT".scaler_15 + -0.10287904698580401 * "ADS_sca_2_OUT".scaler_16 + -0.2832633298872991 * "ADS_sca_2_OUT".scaler_17 + 0.24104379924838112 * "ADS_sca_2_OUT".scaler_18 + 0.17778804226766157 * "ADS_sca_2_OUT".scaler_19 + -0.12796838107767824 * "ADS_sca_2_OUT".scaler_20 + -0.0009095265091247165 * "ADS_sca_2_OUT".scaler_21 + -0.3802857490694176 * "ADS_sca_2_OUT".scaler_22 + -0.2791927016044744 * "ADS_sca_2_OUT".scaler_23 + 0.01103862203889478 * "ADS_sca_2_OUT".scaler_24 + 0.11813354001752838 * "ADS_sca_2_OUT".scaler_25 + -0.04120468605907165 * "ADS_sca_2_OUT".scaler_26 + 0.22967869571070396 * "ADS_sca_2_OUT".scaler_27 + -0.38740799274899884 * "ADS_sca_2_OUT".scaler_28 + -0.32405419296427285 * "ADS_sca_2_OUT".scaler_29 + 0.06056557647617741 * "ADS_sca_2_OUT".scaler_30 + 0.13035236136329423 * "ADS_sca_2_OUT".scaler_31 + 0.295774647887 AS lincomb 
FROM "ADS_sca_2_OUT")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM linear_model_cte