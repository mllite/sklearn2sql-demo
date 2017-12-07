-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.295059151009 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 5.10438413361 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 11.791927627 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 11.8482950592 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 5.82324286708 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 1.39457202505 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.134307585247 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.00556715379262 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 1.97703549061 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 10.3625608907 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 12.0306193459 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 10.2713987474 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 8.12178148921 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 1.89213639527 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.117606123869 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.00208768267223 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 2.54279749478 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 9.93528183716 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 7.09951287404 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 7.1329157968 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 7.81419624217 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 1.84342379958 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 0.0577592205985 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.000695894224078 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 2.48086290884 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 9.14335421016 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 8.96033402923 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 10.0368823939 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 7.59498956159 ELSE "ADS"."Feature_29" END AS impter_31, CASE WHEN ("ADS"."Feature_30" IS NULL) THEN 2.33750869868 ELSE "ADS"."Feature_30" END AS impter_32, CASE WHEN ("ADS"."Feature_31" IS NULL) THEN 0.00278357689631 ELSE "ADS"."Feature_31" END AS impter_33, CASE WHEN ("ADS"."Feature_32" IS NULL) THEN 0.0 ELSE "ADS"."Feature_32" END AS impter_34, CASE WHEN ("ADS"."Feature_33" IS NULL) THEN 2.33194154489 ELSE "ADS"."Feature_33" END AS impter_35, CASE WHEN ("ADS"."Feature_34" IS NULL) THEN 7.60890744607 ELSE "ADS"."Feature_34" END AS impter_36, CASE WHEN ("ADS"."Feature_35" IS NULL) THEN 9.02853166319 ELSE "ADS"."Feature_35" END AS impter_37, CASE WHEN ("ADS"."Feature_36" IS NULL) THEN 10.2700069589 ELSE "ADS"."Feature_36" END AS impter_38, CASE WHEN ("ADS"."Feature_37" IS NULL) THEN 8.80654140571 ELSE "ADS"."Feature_37" END AS impter_39, CASE WHEN ("ADS"."Feature_38" IS NULL) THEN 2.87543493389 ELSE "ADS"."Feature_38" END AS impter_40, CASE WHEN ("ADS"."Feature_39" IS NULL) THEN 0.0 ELSE "ADS"."Feature_39" END AS impter_41, CASE WHEN ("ADS"."Feature_40" IS NULL) THEN 0.0104384133612 ELSE "ADS"."Feature_40" END AS impter_42, CASE WHEN ("ADS"."Feature_41" IS NULL) THEN 1.57550452331 ELSE "ADS"."Feature_41" END AS impter_43, CASE WHEN ("ADS"."Feature_42" IS NULL) THEN 6.85873347251 ELSE "ADS"."Feature_42" END AS impter_44, CASE WHEN ("ADS"."Feature_43" IS NULL) THEN 7.25887265136 ELSE "ADS"."Feature_43" END AS impter_45, CASE WHEN ("ADS"."Feature_44" IS NULL) THEN 7.71050800278 ELSE "ADS"."Feature_44" END AS impter_46, CASE WHEN ("ADS"."Feature_45" IS NULL) THEN 8.28114126653 ELSE "ADS"."Feature_45" END AS impter_47, CASE WHEN ("ADS"."Feature_46" IS NULL) THEN 3.43215031315 ELSE "ADS"."Feature_46" END AS impter_48, CASE WHEN ("ADS"."Feature_47" IS NULL) THEN 0.0313152400835 ELSE "ADS"."Feature_47" END AS impter_49, CASE WHEN ("ADS"."Feature_48" IS NULL) THEN 0.00904662491301 ELSE "ADS"."Feature_48" END AS impter_50, CASE WHEN ("ADS"."Feature_49" IS NULL) THEN 0.708420320111 ELSE "ADS"."Feature_49" END AS impter_51, CASE WHEN ("ADS"."Feature_50" IS NULL) THEN 7.49269311065 ELSE "ADS"."Feature_50" END AS impter_52, CASE WHEN ("ADS"."Feature_51" IS NULL) THEN 9.52957550452 ELSE "ADS"."Feature_51" END AS impter_53, CASE WHEN ("ADS"."Feature_52" IS NULL) THEN 9.54140570633 ELSE "ADS"."Feature_52" END AS impter_54, CASE WHEN ("ADS"."Feature_53" IS NULL) THEN 8.7543493389 ELSE "ADS"."Feature_53" END AS impter_55, CASE WHEN ("ADS"."Feature_54" IS NULL) THEN 3.73973556019 ELSE "ADS"."Feature_54" END AS impter_56, CASE WHEN ("ADS"."Feature_55" IS NULL) THEN 0.219206680585 ELSE "ADS"."Feature_55" END AS impter_57, CASE WHEN ("ADS"."Feature_56" IS NULL) THEN 0.000695894224078 ELSE "ADS"."Feature_56" END AS impter_58, CASE WHEN ("ADS"."Feature_57" IS NULL) THEN 0.263743910926 ELSE "ADS"."Feature_57" END AS impter_59, CASE WHEN ("ADS"."Feature_58" IS NULL) THEN 5.47459986082 ELSE "ADS"."Feature_58" END AS impter_60, CASE WHEN ("ADS"."Feature_59" IS NULL) THEN 12.0974251914 ELSE "ADS"."Feature_59" END AS impter_61, CASE WHEN ("ADS"."Feature_60" IS NULL) THEN 11.8580375783 ELSE "ADS"."Feature_60" END AS impter_62, CASE WHEN ("ADS"."Feature_61" IS NULL) THEN 6.7167710508 ELSE "ADS"."Feature_61" END AS impter_63, CASE WHEN ("ADS"."Feature_62" IS NULL) THEN 2.08698677801 ELSE "ADS"."Feature_62" END AS impter_64, CASE WHEN ("ADS"."Feature_63" IS NULL) THEN 0.386221294363 ELSE "ADS"."Feature_63" END AS impter_65 
FROM digits AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.0) / 1.0 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 0.295059151009) / 0.886335971514 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 5.10438413361) / 4.71456252236 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 11.791927627) / 4.24270517756 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - 11.8482950592) / 4.29860785049 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - 5.82324286708) / 5.66405259335 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 1.39457202505) / 3.36725374989 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.134307585247) / 1.07384889611 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - 0.00556715379262) / 0.0912125950052 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - 1.97703549061) / 3.17657595134 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS DOUBLE) - 10.3625608907) / 5.42745576804 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS DOUBLE) - 12.0306193459) / 3.9240043127 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS DOUBLE) - 10.2713987474) / 4.75130678201 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS DOUBLE) - 8.12178148921) / 6.05574247042 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS DOUBLE) - 1.89213639527) / 3.63584960156 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS DOUBLE) - 0.117606123869) / 0.880913584841 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS DOUBLE) - 0.00208768267223) / 0.0456434469918 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS DOUBLE) - 2.54279749478) / 3.5359391483 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS DOUBLE) - 9.93528183716) / 5.67423342754 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS DOUBLE) - 7.09951287404) / 5.82896862212 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS DOUBLE) - 7.1329157968) / 6.16416638076 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS DOUBLE) - 7.81419624217) / 6.23721464144 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS DOUBLE) - 1.84342379958) / 3.35529684953 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS DOUBLE) - 0.0577592205985) / 0.470571680845 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS DOUBLE) - 0.000695894224078) / 0.0263706267523 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS DOUBLE) - 2.48086290884) / 3.15795311405 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS DOUBLE) - 9.14335421016) / 6.21144862077 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS DOUBLE) - 8.96033402923) / 5.8724993369 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS DOUBLE) - 10.0368823939) / 6.13119413882 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS DOUBLE) - 7.59498956159) / 5.88300951231 AS scaler_31, (CAST("ADS_imp_1_OUT".impter_32 AS DOUBLE) - 2.33750869868) / 3.7555163121 AS scaler_32, (CAST("ADS_imp_1_OUT".impter_33 AS DOUBLE) - 0.00278357689631) / 0.0526861328622 AS scaler_33, (CAST("ADS_imp_1_OUT".impter_34 AS DOUBLE) - 0.0) / 1.0 AS scaler_34, (CAST("ADS_imp_1_OUT".impter_35 AS DOUBLE) - 2.33194154489) / 3.5203616767 AS scaler_35, (CAST("ADS_imp_1_OUT".impter_36 AS DOUBLE) - 7.60890744607) / 6.33742712715 AS scaler_36, (CAST("ADS_imp_1_OUT".impter_37 AS DOUBLE) - 9.02853166319) / 6.25539879291 AS scaler_37, (CAST("ADS_imp_1_OUT".impter_38 AS DOUBLE) - 10.2700069589) / 5.9183282366 AS scaler_38, (CAST("ADS_imp_1_OUT".impter_39 AS DOUBLE) - 8.80654140571) / 5.86250594875 AS scaler_39, (CAST("ADS_imp_1_OUT".impter_40 AS DOUBLE) - 2.87543493389) / 3.52155138888 AS scaler_40, (CAST("ADS_imp_1_OUT".impter_41 AS DOUBLE) - 0.0) / 1.0 AS scaler_41, (CAST("ADS_imp_1_OUT".impter_42 AS DOUBLE) - 0.0104384133612) / 0.160122221498 AS scaler_42, (CAST("ADS_imp_1_OUT".impter_43 AS DOUBLE) - 1.57550452331) / 3.01481585756 AS scaler_43, (CAST("ADS_imp_1_OUT".impter_44 AS DOUBLE) - 6.85873347251) / 6.54220934077 AS scaler_44, (CAST("ADS_imp_1_OUT".impter_45 AS DOUBLE) - 7.25887265136) / 6.49091755443 AS scaler_45, (CAST("ADS_imp_1_OUT".impter_46 AS DOUBLE) - 7.71050800278) / 6.29287362068 AS scaler_46, (CAST("ADS_imp_1_OUT".impter_47 AS DOUBLE) - 8.28114126653) / 5.71330954915 AS scaler_47, (CAST("ADS_imp_1_OUT".impter_48 AS DOUBLE) - 3.43215031315) / 4.32650025914 AS scaler_48, (CAST("ADS_imp_1_OUT".impter_49 AS DOUBLE) - 0.0313152400835) / 0.333254145983 AS scaler_49, (CAST("ADS_imp_1_OUT".impter_50 AS DOUBLE) - 0.00904662491301) / 0.228276642221 AS scaler_50, (CAST("ADS_imp_1_OUT".impter_51 AS DOUBLE) - 0.708420320111) / 1.76307682322 AS scaler_51, (CAST("ADS_imp_1_OUT".impter_52 AS DOUBLE) - 7.49269311065) / 5.67473574734 AS scaler_52, (CAST("ADS_imp_1_OUT".impter_53 AS DOUBLE) - 9.52957550452) / 5.23079002251 AS scaler_53, (CAST("ADS_imp_1_OUT".impter_54 AS DOUBLE) - 9.54140570633) / 5.25155551469 AS scaler_54, (CAST("ADS_imp_1_OUT".impter_55 AS DOUBLE) - 8.7543493389) / 6.03436489776 AS scaler_55, (CAST("ADS_imp_1_OUT".impter_56 AS DOUBLE) - 3.73973556019) / 4.95383426986 AS scaler_56, (CAST("ADS_imp_1_OUT".impter_57 AS DOUBLE) - 0.219206680585) / 1.02574714206 AS scaler_57, (CAST("ADS_imp_1_OUT".impter_58 AS DOUBLE) - 0.000695894224078) / 0.0263706267523 AS scaler_58, (CAST("ADS_imp_1_OUT".impter_59 AS DOUBLE) - 0.263743910926) / 0.893431165158 AS scaler_59, (CAST("ADS_imp_1_OUT".impter_60 AS DOUBLE) - 5.47459986082) / 5.06659361292 AS scaler_60, (CAST("ADS_imp_1_OUT".impter_61 AS DOUBLE) - 12.0974251914) / 4.35996530676 AS scaler_61, (CAST("ADS_imp_1_OUT".impter_62 AS DOUBLE) - 11.8580375783) / 4.88924228226 AS scaler_62, (CAST("ADS_imp_1_OUT".impter_63 AS DOUBLE) - 6.7167710508) / 5.87255780346 AS scaler_63, (CAST("ADS_imp_1_OUT".impter_64 AS DOUBLE) - 2.08698677801) / 4.12826085472 AS scaler_64, (CAST("ADS_imp_1_OUT".impter_65 AS DOUBLE) - 0.386221294363) / 1.9151535006 AS scaler_65 
FROM "ADS_imp_1_OUT"), 
random_number_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", rand() AS uniform 
FROM "ADS_sca_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.0960334029228) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.198329853862) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 0.301322199026) THEN 2 ELSE CASE WHEN (random_number_cte.uniform <= 0.402226861517) THEN 3 ELSE CASE WHEN (random_number_cte.uniform <= 0.507306889353) THEN 4 ELSE CASE WHEN (random_number_cte.uniform <= 0.60751565762) THEN 5 ELSE CASE WHEN (random_number_cte.uniform <= 0.706332637439) THEN 6 ELSE CASE WHEN (random_number_cte.uniform <= 0.80375782881) THEN 7 ELSE CASE WHEN (random_number_cte.uniform <= 0.897703549061) THEN 8 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 9 END END END END END END END END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.0960334029228 AS "Proba_0", CASE WHEN (0.0960334029228 IS NULL) THEN 0.0960334029228 ELSE CASE WHEN (0.0960334029228 > 0.0) THEN log(0.0960334029228) ELSE -1.79769313486231e+308 END END AS "LogProba_0", 0.102296450939 AS "Proba_1", CASE WHEN (0.102296450939 IS NULL) THEN 0.102296450939 ELSE CASE WHEN (0.102296450939 > 0.0) THEN log(0.102296450939) ELSE -1.79769313486231e+308 END END AS "LogProba_1", 0.102992345164 AS "Proba_2", CASE WHEN (0.102992345164 IS NULL) THEN 0.102992345164 ELSE CASE WHEN (0.102992345164 > 0.0) THEN log(0.102992345164) ELSE -1.79769313486231e+308 END END AS "LogProba_2", 0.100904662491 AS "Proba_3", CASE WHEN (0.100904662491 IS NULL) THEN 0.100904662491 ELSE CASE WHEN (0.100904662491 > 0.0) THEN log(0.100904662491) ELSE -1.79769313486231e+308 END END AS "LogProba_3", 0.105080027836 AS "Proba_4", CASE WHEN (0.105080027836 IS NULL) THEN 0.105080027836 ELSE CASE WHEN (0.105080027836 > 0.0) THEN log(0.105080027836) ELSE -1.79769313486231e+308 END END AS "LogProba_4", 0.100208768267 AS "Proba_5", CASE WHEN (0.100208768267 IS NULL) THEN 0.100208768267 ELSE CASE WHEN (0.100208768267 > 0.0) THEN log(0.100208768267) ELSE -1.79769313486231e+308 END END AS "LogProba_5", 0.0988169798191 AS "Proba_6", CASE WHEN (0.0988169798191 IS NULL) THEN 0.0988169798191 ELSE CASE WHEN (0.0988169798191 > 0.0) THEN log(0.0988169798191) ELSE -1.79769313486231e+308 END END AS "LogProba_6", 0.0974251913709 AS "Proba_7", CASE WHEN (0.0974251913709 IS NULL) THEN 0.0974251913709 ELSE CASE WHEN (0.0974251913709 > 0.0) THEN log(0.0974251913709) ELSE -1.79769313486231e+308 END END AS "LogProba_7", 0.0939457202505 AS "Proba_8", CASE WHEN (0.0939457202505 IS NULL) THEN 0.0939457202505 ELSE CASE WHEN (0.0939457202505 > 0.0) THEN log(0.0939457202505) ELSE -1.79769313486231e+308 END END AS "LogProba_8", 0.102296450939 AS "Proba_9", CASE WHEN (0.102296450939 IS NULL) THEN 0.102296450939 ELSE CASE WHEN (0.102296450939 > 0.0) THEN log(0.102296450939) ELSE -1.79769313486231e+308 END END AS "LogProba_9", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", CAST(NULL AS DOUBLE) AS "Score_2", CAST(NULL AS DOUBLE) AS "Score_3", CAST(NULL AS DOUBLE) AS "Score_4", CAST(NULL AS DOUBLE) AS "Score_5", CAST(NULL AS DOUBLE) AS "Score_6", CAST(NULL AS DOUBLE) AS "Score_7", CAST(NULL AS DOUBLE) AS "Score_8", CAST(NULL AS DOUBLE) AS "Score_9", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."Proba_2" AS "Proba_2", dummy_class_reg_cte."Proba_3" AS "Proba_3", dummy_class_reg_cte."Proba_4" AS "Proba_4", dummy_class_reg_cte."Proba_5" AS "Proba_5", dummy_class_reg_cte."Proba_6" AS "Proba_6", dummy_class_reg_cte."Proba_7" AS "Proba_7", dummy_class_reg_cte."Proba_8" AS "Proba_8", dummy_class_reg_cte."Proba_9" AS "Proba_9", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."LogProba_2" AS "LogProba_2", dummy_class_reg_cte."LogProba_3" AS "LogProba_3", dummy_class_reg_cte."LogProba_4" AS "LogProba_4", dummy_class_reg_cte."LogProba_5" AS "LogProba_5", dummy_class_reg_cte."LogProba_6" AS "LogProba_6", dummy_class_reg_cte."LogProba_7" AS "LogProba_7", dummy_class_reg_cte."LogProba_8" AS "LogProba_8", dummy_class_reg_cte."LogProba_9" AS "LogProba_9", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM dummy_class_reg_cte