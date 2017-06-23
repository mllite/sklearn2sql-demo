-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.9229475975783199 * "ADS"."Feature_0" + -0.7808396609438114 * "ADS"."Feature_1" + 1.04001110128767 * "ADS"."Feature_2" + -0.04690855566325371 * "ADS"."Feature_3" + -0.0245949211863375 * "ADS"."Feature_4" + -0.11992766393099415 * "ADS"."Feature_5" + -0.1516797174571931 * "ADS"."Feature_6" + -0.07582348672319744 * "ADS"."Feature_7" + -0.04100149863151293 * "ADS"."Feature_8" + -0.007572843950286233 * "ADS"."Feature_9" + 0.01544647961413622 * "ADS"."Feature_10" + 0.43147107006151836 * "ADS"."Feature_11" + -0.3645335598848823 * "ADS"."Feature_12" + 0.010312591988373608 * "ADS"."Feature_13" + -0.004324562266063892 * "ADS"."Feature_14" + -0.025535890978864797 * "ADS"."Feature_15" + -0.03126095202258381 * "ADS"."Feature_16" + -0.011410443695060793 * "ADS"."Feature_17" + -0.012329596822306603 * "ADS"."Feature_18" + -0.001954864061274269 * "ADS"."Feature_19" + 1.0200928917361842 * "ADS"."Feature_20" + 0.2286986654019693 * "ADS"."Feature_21" + -0.48637970869241853 * "ADS"."Feature_22" + -0.04388023537744522 * "ADS"."Feature_23" + -0.045031184418048674 * "ADS"."Feature_24" + -0.3020350431065183 * "ADS"."Feature_25" + -0.3533054320934225 * "ADS"."Feature_26" + -0.13218860964824797 * "ADS"."Feature_27" + -0.1048876736834541 * "ADS"."Feature_28" + -0.020914634902175648 * "ADS"."Feature_29" + 0.132138974837 AS lincomb 
FROM "BreastCancer" "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", 1.0 - 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) AS "Proba_0", 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) IS NULL OR 1.0 - 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(-linear_model_cte.lincomb))) ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(-linear_model_cte.lincomb)) IS NULL OR 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) > 0.0) THEN ln(1.0 / (1.0 + exp(-linear_model_cte.lincomb))) ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", CASE WHEN (1.0 - 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) <= 1.0 / (1.0 + exp(-linear_model_cte.lincomb))) THEN 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) ELSE 1.0 - 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) END AS "DecisionProba" 
FROM linear_model_cte