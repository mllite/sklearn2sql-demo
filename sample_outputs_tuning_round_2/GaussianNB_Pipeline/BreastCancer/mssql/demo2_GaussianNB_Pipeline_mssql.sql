-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 14.0777120879 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 19.0390549451 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 91.6617802198 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 650.967692308 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN 0.0964218461538 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.104416131868 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.0882623268132 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.0485164 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.181588571429 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.0629403076923 ELSE [ADS].[Feature_9] END AS impter_11, CASE WHEN ([ADS].[Feature_10] IS NULL) THEN 0.409917362637 ELSE [ADS].[Feature_10] END AS impter_12, CASE WHEN ([ADS].[Feature_11] IS NULL) THEN 1.21706945055 ELSE [ADS].[Feature_11] END AS impter_13, CASE WHEN ([ADS].[Feature_12] IS NULL) THEN 2.90524901099 ELSE [ADS].[Feature_12] END AS impter_14, CASE WHEN ([ADS].[Feature_13] IS NULL) THEN 40.8798857143 ELSE [ADS].[Feature_13] END AS impter_15, CASE WHEN ([ADS].[Feature_14] IS NULL) THEN 0.00705597142857 ELSE [ADS].[Feature_14] END AS impter_16, CASE WHEN ([ADS].[Feature_15] IS NULL) THEN 0.0255678307692 ELSE [ADS].[Feature_15] END AS impter_17, CASE WHEN ([ADS].[Feature_16] IS NULL) THEN 0.0319992562637 ELSE [ADS].[Feature_16] END AS impter_18, CASE WHEN ([ADS].[Feature_17] IS NULL) THEN 0.0119723692308 ELSE [ADS].[Feature_17] END AS impter_19, CASE WHEN ([ADS].[Feature_18] IS NULL) THEN 0.0208962 ELSE [ADS].[Feature_18] END AS impter_20, CASE WHEN ([ADS].[Feature_19] IS NULL) THEN 0.00384655186813 ELSE [ADS].[Feature_19] END AS impter_21, CASE WHEN ([ADS].[Feature_20] IS NULL) THEN 16.1777648352 ELSE [ADS].[Feature_20] END AS impter_22, CASE WHEN ([ADS].[Feature_21] IS NULL) THEN 25.2650549451 ELSE [ADS].[Feature_21] END AS impter_23, CASE WHEN ([ADS].[Feature_22] IS NULL) THEN 106.68156044 ELSE [ADS].[Feature_22] END AS impter_24, CASE WHEN ([ADS].[Feature_23] IS NULL) THEN 870.863956044 ELSE [ADS].[Feature_23] END AS impter_25, CASE WHEN ([ADS].[Feature_24] IS NULL) THEN 0.13182756044 ELSE [ADS].[Feature_24] END AS impter_26, CASE WHEN ([ADS].[Feature_25] IS NULL) THEN 0.249918065934 ELSE [ADS].[Feature_25] END AS impter_27, CASE WHEN ([ADS].[Feature_26] IS NULL) THEN 0.265461593407 ELSE [ADS].[Feature_26] END AS impter_28, CASE WHEN ([ADS].[Feature_27] IS NULL) THEN 0.11348798022 ELSE [ADS].[Feature_27] END AS impter_29, CASE WHEN ([ADS].[Feature_28] IS NULL) THEN 0.289788131868 ELSE [ADS].[Feature_28] END AS impter_30, CASE WHEN ([ADS].[Feature_29] IS NULL) THEN 0.0836414505495 ELSE [ADS].[Feature_29] END AS impter_31 
FROM [BreastCancer] AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 14.0777120879) / 3.5451492987 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - 19.0390549451) / 4.16229715042 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 91.6617802198) / 24.5039719435 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - 650.967692308) / 355.702823164 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - 0.0964218461538) / 0.0141978196631 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - 0.104416131868) / 0.0534036946697 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 0.0882623268132) / 0.0819120016263 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - 0.0485164) / 0.0393731173967 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - 0.181588571429) / 0.0277900583287 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - 0.0629403076923) / 0.00701935458617 AS scaler_11, (CAST([ADS_imp_1_OUT].impter_12 AS FLOAT) - 0.409917362637) / 0.291204008368 AS scaler_12, (CAST([ADS_imp_1_OUT].impter_13 AS FLOAT) - 1.21706945055) / 0.536389639634 AS scaler_13, (CAST([ADS_imp_1_OUT].impter_14 AS FLOAT) - 2.90524901099) / 2.14249442998 AS scaler_14, (CAST([ADS_imp_1_OUT].impter_15 AS FLOAT) - 40.8798857143) / 48.2247544796 AS scaler_15, (CAST([ADS_imp_1_OUT].impter_16 AS FLOAT) - 0.00705597142857) / 0.00286365165657 AS scaler_16, (CAST([ADS_imp_1_OUT].impter_17 AS FLOAT) - 0.0255678307692) / 0.017947013631 AS scaler_17, (CAST([ADS_imp_1_OUT].impter_18 AS FLOAT) - 0.0319992562637) / 0.0316649367214 AS scaler_18, (CAST([ADS_imp_1_OUT].impter_19 AS FLOAT) - 0.0119723692308) / 0.0063920055894 AS scaler_19, (CAST([ADS_imp_1_OUT].impter_20 AS FLOAT) - 0.0208962) / 0.00858291007987 AS scaler_20, (CAST([ADS_imp_1_OUT].impter_21 AS FLOAT) - 0.00384655186813) / 0.00274360758662 AS scaler_21, (CAST([ADS_imp_1_OUT].impter_22 AS FLOAT) - 16.1777648352) / 4.8174588162 AS scaler_22, (CAST([ADS_imp_1_OUT].impter_23 AS FLOAT) - 25.2650549451) / 5.92332412867 AS scaler_23, (CAST([ADS_imp_1_OUT].impter_24 AS FLOAT) - 106.68156044) / 33.7038583761 AS scaler_24, (CAST([ADS_imp_1_OUT].impter_25 AS FLOAT) - 870.863956044) / 566.995055987 AS scaler_25, (CAST([ADS_imp_1_OUT].impter_26 AS FLOAT) - 0.13182756044) / 0.0227482075223 AS scaler_26, (CAST([ADS_imp_1_OUT].impter_27 AS FLOAT) - 0.249918065934) / 0.152468936443 AS scaler_27, (CAST([ADS_imp_1_OUT].impter_28 AS FLOAT) - 0.265461593407) / 0.206925686782 AS scaler_28, (CAST([ADS_imp_1_OUT].impter_29 AS FLOAT) - 0.11348798022) / 0.0663814127852 AS scaler_29, (CAST([ADS_imp_1_OUT].impter_30 AS FLOAT) - 0.289788131868) / 0.0622047066505 AS scaler_30, (CAST([ADS_imp_1_OUT].impter_31 AS FLOAT) - 0.0836414505495) / 0.0170651458069 AS scaler_31 
FROM [ADS_imp_1_OUT]), 
[RawScores] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [LogProba_0], CAST(NULL AS FLOAT) AS [Proba_0], -1.04512360372 + (-0.5 * 1.64137852096 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_2 AS FLOAT) - 1.00495779216) * (CAST([ADS_sca_2_OUT].scaler_2 AS FLOAT) - 1.00495779216)) / 0.821602526353) + (-0.5 * 1.60026558777 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_3 AS FLOAT) - 0.527234715744) * (CAST([ADS_sca_2_OUT].scaler_3 AS FLOAT) - 0.527234715744)) / 0.788508984171) + (-0.5 * 1.61770274262 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_4 AS FLOAT) - 1.02246565732) * (CAST([ADS_sca_2_OUT].scaler_4 AS FLOAT) - 1.02246565732)) / 0.802378912035) + (-0.5 * 1.94717998813 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_5 AS FLOAT) - 0.975548716779) * (CAST([ADS_sca_2_OUT].scaler_5 AS FLOAT) - 0.975548716779)) / 1.11550020841) + (-0.5 * 1.66359676912 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_6 AS FLOAT) - 0.510978376844) * (CAST([ADS_sca_2_OUT].scaler_6 AS FLOAT) - 0.510978376844)) / 0.840061397724) + (-0.5 * 1.8845862947 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_7 AS FLOAT) - 0.845499658986) * (CAST([ADS_sca_2_OUT].scaler_7 AS FLOAT) - 0.845499658986)) / 1.04781728915) + (-0.5 * 1.7351919745 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_8 AS FLOAT) - 0.950156682068) * (CAST([ADS_sca_2_OUT].scaler_8 AS FLOAT) - 0.950156682068)) / 0.902411105297) + (-0.5 * 1.56027877614 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_9 AS FLOAT) - 1.07937319445) * (CAST([ADS_sca_2_OUT].scaler_9 AS FLOAT) - 1.07937319445)) / 0.757601096126) + (-0.5 * 1.85466138182 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_10 AS FLOAT) - 0.480484006671) * (CAST([ADS_sca_2_OUT].scaler_10 AS FLOAT) - 0.480484006671)) / 1.01692596341) + (-0.5 * 2.04488653731 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_11 AS FLOAT) - 0.00825464891123) * (CAST([ADS_sca_2_OUT].scaler_11 AS FLOAT) - 0.00825464891123)) / 1.22999422088) + (-0.5 * 2.29010949493 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_12 AS FLOAT) - 0.796312913624) * (CAST([ADS_sca_2_OUT].scaler_12 AS FLOAT) - 0.796312913624)) / 1.57181724128) + (-0.5 * 1.76623635132 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_13 AS FLOAT) - 0.025859092767) * (CAST([ADS_sca_2_OUT].scaler_13 AS FLOAT) - 0.025859092767)) / 0.930865281584) + (-0.5 * 2.33618079269 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_14 AS FLOAT) - 0.782934235692) * (CAST([ADS_sca_2_OUT].scaler_14 AS FLOAT) - 0.782934235692)) / 1.64592695877) + (-0.5 * 2.4823165683 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_15 AS FLOAT) - 0.752745963716) * (CAST([ADS_sca_2_OUT].scaler_15 AS FLOAT) - 0.752745963716)) / 1.90491902649) + (-0.5 * 1.58657075163 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_16 AS FLOAT) - -0.0787901971435) * (CAST([ADS_sca_2_OUT].scaler_16 AS FLOAT) - -0.0787901971435)) / 0.777784088305) + (-0.5 * 1.79864368051 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_17 AS FLOAT) - 0.418956915917) * (CAST([ADS_sca_2_OUT].scaler_17 AS FLOAT) - 0.418956915917)) / 0.961526276288) + (-0.5 * 1.00455855896 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_18 AS FLOAT) - 0.323727355796) * (CAST([ADS_sca_2_OUT].scaler_18 AS FLOAT) - 0.323727355796)) / 0.434604651857) + (-0.5 * 1.56272382018 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_19 AS FLOAT) - 0.577883884419) * (CAST([ADS_sca_2_OUT].scaler_19 AS FLOAT) - 0.577883884419)) / 0.759455730576) + (-0.5 * 2.29021927564 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_20 AS FLOAT) - 0.0546653169652) * (CAST([ADS_sca_2_OUT].scaler_20 AS FLOAT) - 0.0546653169652)) / 1.57198980597) + (-0.5 * 1.17582030399 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_21 AS FLOAT) - 0.106685950023) * (CAST([ADS_sca_2_OUT].scaler_21 AS FLOAT) - 0.106685950023)) / 0.515789386553) + (-0.5 * 1.56165240761 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_22 AS FLOAT) - 1.07143835822) * (CAST([ADS_sca_2_OUT].scaler_22 AS FLOAT) - 1.07143835822)) / 0.758642475907) + (-0.5 * 1.6010153707 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_23 AS FLOAT) - 0.581178318148) * (CAST([ADS_sca_2_OUT].scaler_23 AS FLOAT) - 0.581178318148)) / 0.789100416445) + (-0.5 * 1.54192483496 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_24 AS FLOAT) - 1.08000437678) * (CAST([ADS_sca_2_OUT].scaler_24 AS FLOAT) - 1.08000437678)) / 0.743822958514) + (-0.5 * 1.9399015165 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_25 AS FLOAT) - 1.01290088492) * (CAST([ADS_sca_2_OUT].scaler_25 AS FLOAT) - 1.01290088492)) / 1.10741054768) + (-0.5 * 1.80629866977 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_26 AS FLOAT) - 0.581578880335) * (CAST([ADS_sca_2_OUT].scaler_26 AS FLOAT) - 0.581578880335)) / 0.968914993795) + (-0.5 * 1.98808151782 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_27 AS FLOAT) - 0.832143251773) * (CAST([ADS_sca_2_OUT].scaler_27 AS FLOAT) - 0.832143251773)) / 1.16207180566) + (-0.5 * 1.5711978894 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_28 AS FLOAT) - 0.890731157933) * (CAST([ADS_sca_2_OUT].scaler_28 AS FLOAT) - 0.890731157933)) / 0.765918756399) + (-0.5 * 1.08120843928 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_29 AS FLOAT) - 1.09733966518) * (CAST([ADS_sca_2_OUT].scaler_29 AS FLOAT) - 1.09733966518)) / 0.469226996235) + (-0.5 * 2.25235916532 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_30 AS FLOAT) - 0.579045703635) * (CAST([ADS_sca_2_OUT].scaler_30 AS FLOAT) - 0.579045703635)) / 1.51358664949) + (-0.5 * 2.16992083242 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_31 AS FLOAT) - 0.446981205836) * (CAST([ADS_sca_2_OUT].scaler_31 AS FLOAT) - 0.446981205836)) / 1.39381384885) AS [Score_0], CAST(NULL AS FLOAT) AS [LogProba_1], CAST(NULL AS FLOAT) AS [Proba_1], -0.433322062611 + (-0.5 * 0.459159419732 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_2 AS FLOAT) - -0.545061853373) * (CAST([ADS_sca_2_OUT].scaler_2 AS FLOAT) - -0.545061853373)) / 0.251901372593) + (-0.5 * 1.71250457047 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_3 AS FLOAT) - -0.285957811929) * (CAST([ADS_sca_2_OUT].scaler_3 AS FLOAT) - -0.285957811929)) / 0.882168237288) + (-0.5 * 0.379588158444 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_4 AS FLOAT) - -0.55455764465) * (CAST([ADS_sca_2_OUT].scaler_4 AS FLOAT) - -0.55455764465)) / 0.232633992538) + (-0.5 * -0.119534677732 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_5 AS FLOAT) - -0.529111168423) * (CAST([ADS_sca_2_OUT].scaler_5 AS FLOAT) - -0.529111168423)) / 0.141223470772) + (-0.5 * 1.69668943075 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_6 AS FLOAT) - -0.277140814559) * (CAST([ADS_sca_2_OUT].scaler_6 AS FLOAT) - -0.277140814559)) / 0.868326367424) + (-0.5 * 0.85983658584 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_7 AS FLOAT) - -0.45857608623) * (CAST([ADS_sca_2_OUT].scaler_7 AS FLOAT) - -0.45857608623)) / 0.376047249257) + (-0.5 * 0.626214980619 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_8 AS FLOAT) - -0.515339217393) * (CAST([ADS_sca_2_OUT].scaler_8 AS FLOAT) - -0.515339217393)) / 0.29770206163) + (-0.5 * -0.0145170370172 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_9 AS FLOAT) - -0.585422749533) * (CAST([ADS_sca_2_OUT].scaler_9 AS FLOAT) - -0.585422749533)) / 0.156861174536) + (-0.5 * 1.61184413008 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_10 AS FLOAT) - -0.260601495144) * (CAST([ADS_sca_2_OUT].scaler_10 AS FLOAT) - -0.260601495144)) / 0.797691828193) + (-0.5 * 1.70457464414 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_11 AS FLOAT) - -0.00447709771457) * (CAST([ADS_sca_2_OUT].scaler_11 AS FLOAT) - -0.00447709771457)) / 0.875200371996) + (-0.5 * 0.00153303749093 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_12 AS FLOAT) - -0.431898529423) * (CAST([ADS_sca_2_OUT].scaler_12 AS FLOAT) - -0.431898529423)) / 0.159399120705) + (-0.5 * 1.87414863605 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_13 AS FLOAT) - -0.0140252706533) * (CAST([ADS_sca_2_OUT].scaler_13 AS FLOAT) - -0.0140252706533)) / 1.03693740898) + (-0.5 * -0.150783353698 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_14 AS FLOAT) - -0.424642297324) * (CAST([ADS_sca_2_OUT].scaler_14 AS FLOAT) - -0.424642297324)) / 0.136878662592) + (-0.5 * -1.50911490246 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_15 AS FLOAT) - -0.40826899727) * (CAST([ADS_sca_2_OUT].scaler_15 AS FLOAT) - -0.40826899727)) / 0.0351900478154) + (-0.5 * 1.94702804226 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_16 AS FLOAT) - 0.0427336662473) * (CAST([ADS_sca_2_OUT].scaler_16 AS FLOAT) - 0.0427336662473)) / 1.11533072563) + (-0.5 * 1.70324025556 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_17 AS FLOAT) - -0.22723086965) * (CAST([ADS_sca_2_OUT].scaler_17 AS FLOAT) - -0.22723086965)) / 0.874033293458) + (-0.5 * 2.03589650302 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_18 AS FLOAT) - -0.175580938737) * (CAST([ADS_sca_2_OUT].scaler_18 AS FLOAT) - -0.175580938737)) / 1.21898608655) + (-0.5 * 1.67665368457 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_19 AS FLOAT) - -0.313428547482) * (CAST([ADS_sca_2_OUT].scaler_19 AS FLOAT) - -0.313428547482)) / 0.85110192916) + (-0.5 * 1.46284670035 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_20 AS FLOAT) - -0.0296489854727) * (CAST([ADS_sca_2_OUT].scaler_20 AS FLOAT) - -0.0296489854727)) / 0.687268408843) + (-0.5 * 2.06349857332 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_21 AS FLOAT) - -0.057863566114) * (CAST([ADS_sca_2_OUT].scaler_21 AS FLOAT) - -0.057863566114)) / 1.25310128533) + (-0.5 * 0.069285456797 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_22 AS FLOAT) - -0.581119109544) * (CAST([ADS_sca_2_OUT].scaler_22 AS FLOAT) - -0.581119109544)) / 0.170573053182) + (-0.5 * 1.65374887256 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_23 AS FLOAT) - -0.315215358996) * (CAST([ADS_sca_2_OUT].scaler_23 AS FLOAT) - -0.315215358996)) / 0.83182916161) + (-0.5 * 0.0250607887102 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_24 AS FLOAT) - -0.58576508571) * (CAST([ADS_sca_2_OUT].scaler_24 AS FLOAT) - -0.58576508571)) / 0.163193889703) + (-0.5 * -0.645286254162 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_25 AS FLOAT) - -0.549369971483) * (CAST([ADS_sca_2_OUT].scaler_25 AS FLOAT) - -0.549369971483)) / 0.0834787374748) + (-0.5 * 1.52851226217 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_26 AS FLOAT) - -0.315432613063) * (CAST([ADS_sca_2_OUT].scaler_26 AS FLOAT) - -0.315432613063)) / 0.733912986615) + (-0.5 * 0.737733544796 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_27 AS FLOAT) - -0.451331933165) * (CAST([ADS_sca_2_OUT].scaler_27 AS FLOAT) - -0.451331933165)) / 0.332823312931) + (-0.5 * 1.06837968042 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_28 AS FLOAT) - -0.483108424642) * (CAST([ADS_sca_2_OUT].scaler_28 AS FLOAT) - -0.483108424642)) / 0.463245843658) + (-0.5 * 0.566881374153 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_29 AS FLOAT) - -0.595167276032) * (CAST([ADS_sca_2_OUT].scaler_29 AS FLOAT) - -0.595167276032)) / 0.28055213907) + (-0.5 * 1.01906992054 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_30 AS FLOAT) - -0.314058686717) * (CAST([ADS_sca_2_OUT].scaler_30 AS FLOAT) - -0.314058686717)) / 0.440957338696) + (-0.5 * 1.35866579987 - (0.5 * (CAST([ADS_sca_2_OUT].scaler_31 AS FLOAT) - -0.242430484521) * (CAST([ADS_sca_2_OUT].scaler_31 AS FLOAT) - -0.242430484521)) / 0.619271639498) AS [Score_1] 
FROM [ADS_sca_2_OUT]), 
orig_cte AS 
(SELECT [RawScores].[KEY] AS [KEY], [RawScores].[Score_0] AS [Score_0], [RawScores].[Score_1] AS [Score_1], [RawScores].[Proba_0] AS [Proba_0], [RawScores].[Proba_1] AS [Proba_1], [RawScores].[LogProba_0] AS [LogProba_0], [RawScores].[LogProba_1] AS [LogProba_1], CAST(NULL AS INTEGER) AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba] 
FROM [RawScores]), 
score_class_union AS 
(SELECT scu.[KEY_u] AS [KEY_u], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY_u], 0 AS class, orig_cte.[LogProba_0] AS [LogProba], orig_cte.[Proba_0] AS [Proba], orig_cte.[Score_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 1 AS class, orig_cte.[LogProba_1] AS [LogProba], orig_cte.[Proba_1] AS [Proba], orig_cte.[Score_1] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_0] AS [Score_0], orig_cte.[Score_1] AS [Score_1], orig_cte.[Proba_0] AS [Proba_0], orig_cte.[Proba_1] AS [Proba_1], orig_cte.[LogProba_0] AS [LogProba_0], orig_cte.[LogProba_1] AS [LogProba_1], orig_cte.[Decision] AS [Decision], orig_cte.[DecisionProba] AS [DecisionProba], max_select.[KEY_m] AS [KEY_m], max_select.[max_Score] AS [max_Score] 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.[KEY_u] AS [KEY_m], max(score_class_union.[Score]) AS [max_Score] 
FROM score_class_union GROUP BY score_class_union.[KEY_u]) AS max_select ON orig_cte.[KEY] = max_select.[KEY_m]), 
score_soft_max_deltas AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Score] AS [max_Score], exp(score_max.[Score_0] - score_max.[max_Score]) AS [exp_delta_Score_0], exp(score_max.[Score_1] - score_max.[max_Score]) AS [exp_delta_Score_1] 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.[KEY] AS [KEY], soft_scu.class AS class, soft_scu.[exp_delta_Score] AS [exp_delta_Score] 
FROM (SELECT score_soft_max_deltas.[KEY] AS [KEY], 0 AS class, score_soft_max_deltas.[exp_delta_Score_0] AS [exp_delta_Score] 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.[KEY] AS [KEY], 1 AS class, score_soft_max_deltas.[exp_delta_Score_1] AS [exp_delta_Score] 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas.[KEY] AS [KEY], score_soft_max_deltas.[Score_0] AS [Score_0], score_soft_max_deltas.[Score_1] AS [Score_1], score_soft_max_deltas.[Proba_0] AS [Proba_0], score_soft_max_deltas.[Proba_1] AS [Proba_1], score_soft_max_deltas.[LogProba_0] AS [LogProba_0], score_soft_max_deltas.[LogProba_1] AS [LogProba_1], score_soft_max_deltas.[Decision] AS [Decision], score_soft_max_deltas.[DecisionProba] AS [DecisionProba], score_soft_max_deltas.[KEY_m] AS [KEY_m], score_soft_max_deltas.[max_Score] AS [max_Score], score_soft_max_deltas.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max_deltas.[exp_delta_Score_1] AS [exp_delta_Score_1], sum_exp_t.[KEY_sum] AS [KEY_sum], sum_exp_t.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore] 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft.[KEY] AS [KEY_sum], sum(score_class_union_soft.[exp_delta_Score]) AS [sum_ExpDeltaScore] 
FROM score_class_union_soft GROUP BY score_class_union_soft.[KEY]) AS sum_exp_t ON score_soft_max_deltas.[KEY] = sum_exp_t.[KEY_sum]), 
union_with_max AS 
(SELECT score_class_union.[KEY_u] AS [KEY_u], score_class_union.class AS class, score_class_union.[LogProba] AS [LogProba], score_class_union.[Proba] AS [Proba], score_class_union.[Score] AS [Score], score_soft_max.[KEY] AS [KEY], score_soft_max.[Score_0] AS [Score_0], score_soft_max.[Score_1] AS [Score_1], score_soft_max.[Proba_0] AS [Proba_0], score_soft_max.[Proba_1] AS [Proba_1], score_soft_max.[LogProba_0] AS [LogProba_0], score_soft_max.[LogProba_1] AS [LogProba_1], score_soft_max.[Decision] AS [Decision], score_soft_max.[DecisionProba] AS [DecisionProba], score_soft_max.[KEY_m] AS [KEY_m], score_soft_max.[max_Score] AS [max_Score], score_soft_max.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max.[KEY_sum] AS [KEY_sum], score_soft_max.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore] 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union.[KEY_u] = score_soft_max.[KEY]), 
arg_max_cte AS 
(SELECT score_soft_max.[KEY] AS [KEY], score_soft_max.[Score_0] AS [Score_0], score_soft_max.[Score_1] AS [Score_1], score_soft_max.[Proba_0] AS [Proba_0], score_soft_max.[Proba_1] AS [Proba_1], score_soft_max.[LogProba_0] AS [LogProba_0], score_soft_max.[LogProba_1] AS [LogProba_1], score_soft_max.[Decision] AS [Decision], score_soft_max.[DecisionProba] AS [DecisionProba], score_soft_max.[KEY_m] AS [KEY_m], score_soft_max.[max_Score] AS [max_Score], score_soft_max.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max.[KEY_sum] AS [KEY_sum], score_soft_max.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore], [arg_max_t_Score].[KEY_Score] AS [KEY_Score], [arg_max_t_Score].[arg_max_Score] AS [arg_max_Score], soft_max_comp.[KEY_softmax] AS [KEY_softmax], soft_max_comp.[SoftProba_0] AS [SoftProba_0], soft_max_comp.[SoftProba_1] AS [SoftProba_1] 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max.[KEY] AS [KEY_Score], min(union_with_max.class) AS [arg_max_Score] 
FROM union_with_max 
WHERE union_with_max.[max_Score] <= union_with_max.[Score] GROUP BY union_with_max.[KEY]) AS [arg_max_t_Score] ON score_soft_max.[KEY] = [arg_max_t_Score].[KEY_Score] LEFT OUTER JOIN (SELECT score_soft_max.[KEY] AS [KEY_softmax], score_soft_max.[exp_delta_Score_0] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_0], score_soft_max.[exp_delta_Score_1] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_1] 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp.[KEY_softmax] = [arg_max_t_Score].[KEY_Score])
 SELECT arg_max_cte.[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], arg_max_cte.[SoftProba_0] AS [Proba_0], arg_max_cte.[SoftProba_1] AS [Proba_1], CASE WHEN (arg_max_cte.[SoftProba_0] IS NULL OR arg_max_cte.[SoftProba_0] > 0.0) THEN log(arg_max_cte.[SoftProba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[SoftProba_1] IS NULL OR arg_max_cte.[SoftProba_1] > 0.0) THEN log(arg_max_cte.[SoftProba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], arg_max_cte.[arg_max_Score] AS [Decision], CASE WHEN (arg_max_cte.[SoftProba_0] <= arg_max_cte.[SoftProba_1]) THEN arg_max_cte.[SoftProba_1] ELSE arg_max_cte.[SoftProba_0] END AS [DecisionProba] 
FROM arg_max_cte