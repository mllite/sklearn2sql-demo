-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LogisticRegression_Pipeline
-- Dataset : iris_str_tgt
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508190632_CODEGEN_2ZBIHC_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508190632_CODEGEN_2ZBIHC_ADS_imp_1_OUT` (
	`KEY` BIGINT NOT NULL, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508190632_CODEGEN_2ZBIHC_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180508190632_CODEGEN_2ZBIHC_ADS_imp_1_OUT` (`KEY`, imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT `U`.`KEY`, `U`.imputer_output_2, `U`.imputer_output_3, `U`.imputer_output_4, `U`.imputer_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.imputer_output_2, `ADS_imp_1_OUT`.imputer_output_3, `ADS_imp_1_OUT`.imputer_output_4, `ADS_imp_1_OUT`.imputer_output_5 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 5.8474999999999975 ELSE `ADS`.`Feature_0` END AS imputer_output_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 3.0366666666666657 ELSE `ADS`.`Feature_1` END AS imputer_output_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 3.8450000000000006 ELSE `ADS`.`Feature_2` END AS imputer_output_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 1.245 ELSE `ADS`.`Feature_3` END AS imputer_output_5 
FROM iris_str_tgt AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180508190632_CODEGEN_2ZBIHC_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508190632_CODEGEN_2ZBIHC_ADS_imp_1_OUT_KEY` ON `TMP_20180508190632_CODEGEN_2ZBIHC_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180508190632_CODEGEN_6O7JHQ_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180508190632_CODEGEN_6O7JHQ_ADS_sca_2_OUT` (
	`KEY` BIGINT NOT NULL, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180508190632_CODEGEN_6O7JHQ_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180508190632_CODEGEN_6O7JHQ_ADS_sca_2_OUT` (`KEY`, scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT `U`.`KEY`, `U`.scaler_output_2, `U`.scaler_output_3, `U`.scaler_output_4, `U`.scaler_output_5 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_output_2, `ADS_sca_2_OUT`.scaler_output_3, `ADS_sca_2_OUT`.scaler_output_4, `ADS_sca_2_OUT`.scaler_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.imputer_output_2 - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (`ADS_imp_1_OUT`.imputer_output_3 - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (`ADS_imp_1_OUT`.imputer_output_4 - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (`ADS_imp_1_OUT`.imputer_output_5 - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM `TMP_20180508190632_CODEGEN_2ZBIHC_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180508190632_CODEGEN_6O7JHQ_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180508190632_CODEGEN_6O7JHQ_ADS_sca_2_OUT_KEY` ON `TMP_20180508190632_CODEGEN_6O7JHQ_ADS_sca_2_OUT` (`KEY`)

-- Model deployment code

WITH linear_input AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, `ADS_sca_2_OUT`.scaler_output_2 AS scaler_output_2, `ADS_sca_2_OUT`.scaler_output_3 AS scaler_output_3, `ADS_sca_2_OUT`.scaler_output_4 AS scaler_output_4, `ADS_sca_2_OUT`.scaler_output_5 AS scaler_output_5 
FROM `TMP_20180508190632_CODEGEN_6O7JHQ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
linear_model_cte AS 
(SELECT linear_input.`KEY` AS `KEY`, -0.7667782391215096 * linear_input.scaler_output_2 + 1.3448861681776636 * linear_input.scaler_output_3 + -1.580922603723415 * linear_input.scaler_output_4 + -1.3558479456697266 * linear_input.scaler_output_5 + -1.6828122705601158 AS `Score_CLASS_0`, 0.25942149562528954 * linear_input.scaler_output_2 + -1.1816960057816397 * linear_input.scaler_output_3 + 0.5915514647222258 * linear_input.scaler_output_4 + -0.8653085151586484 * linear_input.scaler_output_5 + -0.8574940233658017 AS `Score_CLASS_1`, -0.0016242729026995305 * linear_input.scaler_output_2 + -0.20888723156912375 * linear_input.scaler_output_3 + 1.8774175353437146 * linear_input.scaler_output_4 + 2.521926697400801 * linear_input.scaler_output_5 + -2.3504810039846715 AS `Score_CLASS_2` 
FROM linear_input), 
linear_model_cte_logistic AS 
(SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Score_CLASS_0` AS `Score_CLASS_0`, 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.`Score_CLASS_0`), 100.0))) AS `Logistic_CLASS_0`, linear_model_cte.`Score_CLASS_1` AS `Score_CLASS_1`, 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.`Score_CLASS_1`), 100.0))) AS `Logistic_CLASS_1`, linear_model_cte.`Score_CLASS_2` AS `Score_CLASS_2`, 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.`Score_CLASS_2`), 100.0))) AS `Logistic_CLASS_2` 
FROM linear_model_cte), 
orig_cte AS 
(SELECT linear_model_cte_logistic.`KEY` AS `KEY`, linear_model_cte_logistic.`Score_CLASS_0` AS `Score_CLASS_0`, linear_model_cte_logistic.`Score_CLASS_1` AS `Score_CLASS_1`, linear_model_cte_logistic.`Score_CLASS_2` AS `Score_CLASS_2`, linear_model_cte_logistic.`Logistic_CLASS_0` / (linear_model_cte_logistic.`Logistic_CLASS_0` + linear_model_cte_logistic.`Logistic_CLASS_1` + linear_model_cte_logistic.`Logistic_CLASS_2`) AS `Proba_CLASS_0`, linear_model_cte_logistic.`Logistic_CLASS_1` / (linear_model_cte_logistic.`Logistic_CLASS_0` + linear_model_cte_logistic.`Logistic_CLASS_1` + linear_model_cte_logistic.`Logistic_CLASS_2`) AS `Proba_CLASS_1`, linear_model_cte_logistic.`Logistic_CLASS_2` / (linear_model_cte_logistic.`Logistic_CLASS_0` + linear_model_cte_logistic.`Logistic_CLASS_1` + linear_model_cte_logistic.`Logistic_CLASS_2`) AS `Proba_CLASS_2`, NULL AS `LogProba_CLASS_0`, NULL AS `LogProba_CLASS_1`, NULL AS `LogProba_CLASS_2`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM linear_model_cte_logistic), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 'CLASS_0' AS class, orig_cte.`LogProba_CLASS_0` AS `LogProba`, orig_cte.`Proba_CLASS_0` AS `Proba`, orig_cte.`Score_CLASS_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 'CLASS_1' AS class, orig_cte.`LogProba_CLASS_1` AS `LogProba`, orig_cte.`Proba_CLASS_1` AS `Proba`, orig_cte.`Score_CLASS_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 'CLASS_2' AS class, orig_cte.`LogProba_CLASS_2` AS `LogProba`, orig_cte.`Proba_CLASS_2` AS `Proba`, orig_cte.`Score_CLASS_2` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_CLASS_0` AS `Score_CLASS_0`, orig_cte.`Score_CLASS_1` AS `Score_CLASS_1`, orig_cte.`Score_CLASS_2` AS `Score_CLASS_2`, orig_cte.`Proba_CLASS_0` AS `Proba_CLASS_0`, orig_cte.`Proba_CLASS_1` AS `Proba_CLASS_1`, orig_cte.`Proba_CLASS_2` AS `Proba_CLASS_2`, orig_cte.`LogProba_CLASS_0` AS `LogProba_CLASS_0`, orig_cte.`LogProba_CLASS_1` AS `LogProba_CLASS_1`, orig_cte.`LogProba_CLASS_2` AS `LogProba_CLASS_2`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Proba` AS `max_Proba` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Proba`) AS `max_Proba` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_CLASS_0` AS `Score_CLASS_0`, score_max.`Score_CLASS_1` AS `Score_CLASS_1`, score_max.`Score_CLASS_2` AS `Score_CLASS_2`, score_max.`Proba_CLASS_0` AS `Proba_CLASS_0`, score_max.`Proba_CLASS_1` AS `Proba_CLASS_1`, score_max.`Proba_CLASS_2` AS `Proba_CLASS_2`, score_max.`LogProba_CLASS_0` AS `LogProba_CLASS_0`, score_max.`LogProba_CLASS_1` AS `LogProba_CLASS_1`, score_max.`LogProba_CLASS_2` AS `LogProba_CLASS_2`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_CLASS_0` AS `Score_CLASS_0`, score_max.`Score_CLASS_1` AS `Score_CLASS_1`, score_max.`Score_CLASS_2` AS `Score_CLASS_2`, score_max.`Proba_CLASS_0` AS `Proba_CLASS_0`, score_max.`Proba_CLASS_1` AS `Proba_CLASS_1`, score_max.`Proba_CLASS_2` AS `Proba_CLASS_2`, score_max.`LogProba_CLASS_0` AS `LogProba_CLASS_0`, score_max.`LogProba_CLASS_1` AS `LogProba_CLASS_1`, score_max.`LogProba_CLASS_2` AS `LogProba_CLASS_2`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Proba`, min(union_with_max.class) AS `arg_max_Proba` 
FROM union_with_max 
WHERE union_with_max.`max_Proba` <= union_with_max.`Proba` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Proba` ON score_max.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_CLASS_0` AS `Score_CLASS_0`, arg_max_cte.`Score_CLASS_1` AS `Score_CLASS_1`, arg_max_cte.`Score_CLASS_2` AS `Score_CLASS_2`, arg_max_cte.`Proba_CLASS_0` AS `Proba_CLASS_0`, arg_max_cte.`Proba_CLASS_1` AS `Proba_CLASS_1`, arg_max_cte.`Proba_CLASS_2` AS `Proba_CLASS_2`, CASE WHEN (arg_max_cte.`Proba_CLASS_0` IS NULL OR arg_max_cte.`Proba_CLASS_0` > 0.0) THEN ln(arg_max_cte.`Proba_CLASS_0`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_0`, CASE WHEN (arg_max_cte.`Proba_CLASS_1` IS NULL OR arg_max_cte.`Proba_CLASS_1` > 0.0) THEN ln(arg_max_cte.`Proba_CLASS_1`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_1`, CASE WHEN (arg_max_cte.`Proba_CLASS_2` IS NULL OR arg_max_cte.`Proba_CLASS_2` > 0.0) THEN ln(arg_max_cte.`Proba_CLASS_2`) ELSE -1.79769313486231e+308 END AS `LogProba_CLASS_2`, arg_max_cte.`arg_max_Proba` AS `Decision`, arg_max_cte.`max_Proba` AS `DecisionProba` 
FROM arg_max_cte