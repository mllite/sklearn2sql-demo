-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0618292052381 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.177024637672 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.041383850049 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.130606468058 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.0595581047198 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.0489290898701 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.191017978617 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0220495967327 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.0577298140341 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.052549592052 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.0618292052381) / 1.22838395621 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 0.177024637672) / 0.940821656314 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.041383850049) / 1.07418248888 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.130606468058) / 1.07922445597 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - -0.0595581047198) / 1.10958911905 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - -0.0489290898701) / 1.3781871812 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.191017978617) / 0.97352852463 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.0220495967327) / 0.474603012038 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - -0.0577298140341) / 1.06460752484 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - -0.052549592052) / 1.22453288966 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
linear_model_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", -0.9314318738821378 * "ADS_sca_2_OUT".scaler_2 + -0.1326575904739844 * "ADS_sca_2_OUT".scaler_3 + -0.5682853512619962 * "ADS_sca_2_OUT".scaler_4 + 0.4955731075646611 * "ADS_sca_2_OUT".scaler_5 + -0.37876113904349756 * "ADS_sca_2_OUT".scaler_6 + -0.6482694340632381 * "ADS_sca_2_OUT".scaler_7 + -0.3629172484072307 * "ADS_sca_2_OUT".scaler_8 + -1.053270325805898 * "ADS_sca_2_OUT".scaler_9 + 0.12349574979497674 * "ADS_sca_2_OUT".scaler_10 + 1.1305705271030866 * "ADS_sca_2_OUT".scaler_11 + 0.4626170175 AS lincomb 
FROM "ADS_sca_2_OUT")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END)) AS "Proba_0", 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END)) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END)) IS NULL) THEN 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END)) ELSE CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END)) > 0.0) THEN log(1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END))) ELSE -1.79769313486231e+308 END END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END)) IS NULL) THEN 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END)) ELSE CASE WHEN (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END)) > 0.0) THEN log(1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END))) ELSE -1.79769313486231e+308 END END AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END)) <= 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END))) THEN 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END)) ELSE 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END >= -709.782712893) THEN CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END ELSE -709.782712893 END)) END AS "DecisionProba" 
FROM linear_model_cte