-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 14.0777120879 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.0390549451 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 91.6617802198 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 650.967692308 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0964218461538 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.104416131868 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.0882623268132 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0485164 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.181588571429 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.0629403076923 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.409917362637 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.21706945055 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.90524901099 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 40.8798857143 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.00705597142857 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.0255678307692 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.0319992562637 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.0119723692308 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.0208962 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.00384655186813 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 16.1777648352 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 25.2650549451 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 106.68156044 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 870.863956044 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.13182756044 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.249918065934 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.265461593407 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.11348798022 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.289788131868 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.0836414505495 ELSE "ADS"."Feature_29" END AS impter_31 
FROM "BreastCancer" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 14.0777120879) / 3.5451492987 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 19.0390549451) / 4.16229715042 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 91.6617802198) / 24.5039719435 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 650.967692308) / 355.702823164 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.0964218461538) / 0.0141978196631 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.104416131868) / 0.0534036946697 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.0882623268132) / 0.0819120016263 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.0485164) / 0.0393731173967 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.181588571429) / 0.0277900583287 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.0629403076923) / 0.00701935458617 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 0.409917362637) / 0.291204008368 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 1.21706945055) / 0.536389639634 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - 2.90524901099) / 2.14249442998 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - 40.8798857143) / 48.2247544796 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - 0.00705597142857) / 0.00286365165657 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - 0.0255678307692) / 0.017947013631 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - 0.0319992562637) / 0.0316649367214 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - 0.0119723692308) / 0.0063920055894 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - 0.0208962) / 0.00858291007987 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - 0.00384655186813) / 0.00274360758662 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - 16.1777648352) / 4.8174588162 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - 25.2650549451) / 5.92332412867 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - 106.68156044) / 33.7038583761 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - 870.863956044) / 566.995055987 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - 0.13182756044) / 0.0227482075223 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - 0.249918065934) / 0.152468936443 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - 0.265461593407) / 0.206925686782 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - 0.11348798022) / 0.0663814127852 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - 0.289788131868) / 0.0622047066505 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - 0.0836414505495) / 0.0170651458069 AS scaler_31 
FROM "ADS_imp_1_OUT"), 
random_number_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", random() AS uniform 
FROM "ADS_sca_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.351648351648) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 1 END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.351648351648 AS "Proba_0", CASE WHEN (0.351648351648 IS NULL OR 0.351648351648 > 0.0) THEN ln(0.351648351648) ELSE -1.79769313486231e+308 END AS "LogProba_0", 0.648351648352 AS "Proba_1", CASE WHEN (0.648351648352 IS NULL OR 0.648351648352 > 0.0) THEN ln(0.648351648352) ELSE -1.79769313486231e+308 END AS "LogProba_1", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM dummy_class_reg_cte