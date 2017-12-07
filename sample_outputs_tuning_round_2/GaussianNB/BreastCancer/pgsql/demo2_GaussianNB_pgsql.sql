-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "RawScores" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "Proba_0", -1.04512360372 + (-0.5 * 4.17257020151 - (0.5 * (CAST("ADS"."Feature_0" AS FLOAT) - 17.6404375) * (CAST("ADS"."Feature_0" AS FLOAT) - 17.6404375)) / 10.326290667) + (-0.5 * 4.45242336266 - (0.5 * (CAST("ADS"."Feature_1" AS FLOAT) - 21.2335625) * (CAST("ADS"."Feature_1" AS FLOAT) - 21.2335625)) / 13.661016917) + (-0.5 * 8.01537385775 - (0.5 * (CAST("ADS"."Feature_2" AS FLOAT) - 116.71625) * (CAST("ADS"."Feature_2" AS FLOAT) - 116.71625)) / 481.784438671) + (-0.5 * 13.6953712212 - (0.5 * (CAST("ADS"."Feature_3" AS FLOAT) - 997.973125) * (CAST("ADS"."Feature_3" AS FLOAT) - 997.973125)) / 141138.104537) + (-0.5 * -5.78155325965 - (0.5 * (CAST("ADS"."Feature_4" AS FLOAT) - 0.103676625) * (CAST("ADS"."Feature_4" AS FLOAT) - 0.103676625)) / 0.000490821359623) + (-0.5 * -3.87298720518 - (0.5 * (CAST("ADS"."Feature_5" AS FLOAT) - 0.1495689375) * (CAST("ADS"."Feature_5" AS FLOAT) - 0.1495689375)) / 0.00330981073301) + (-0.5 * -3.21729346865 - (0.5 * (CAST("ADS"."Feature_6" AS FLOAT) - 0.1660915625) * (CAST("ADS"."Feature_6" AS FLOAT) - 0.1660915625)) / 0.00637627929045) + (-0.5 * -4.66711761608 - (0.5 * (CAST("ADS"."Feature_7" AS FLOAT) - 0.0910146875) * (CAST("ADS"."Feature_7" AS FLOAT) - 0.0910146875)) / 0.00149594871342) + (-0.5 * -4.96836689784 - (0.5 * (CAST("ADS"."Feature_8" AS FLOAT) - 0.19494125) * (CAST("ADS"."Feature_8" AS FLOAT) - 0.19494125)) / 0.00110684244195) + (-0.5 * -6.0319855385 - (0.5 * (CAST("ADS"."Feature_9" AS FLOAT) - 0.06299825) * (CAST("ADS"."Feature_9" AS FLOAT) - 0.06299825)) / 0.000382086855452) + (-0.5 * -0.174943891315 - (0.5 * (CAST("ADS"."Feature_10" AS FLOAT) - 0.641806875) * (CAST("ADS"."Feature_10" AS FLOAT) - 0.641806875)) / 0.133611230909) + (-0.5 * 0.521647104048 - (0.5 * (CAST("ADS"."Feature_11" AS FLOAT) - 1.23094) * (CAST("ADS"."Feature_11" AS FLOAT) - 1.23094)) / 0.268144312919) + (-0.5 * 3.86016488549 - (0.5 * (CAST("ADS"."Feature_12" AS FLOAT) - 4.58268125) * (CAST("ADS"."Feature_12" AS FLOAT) - 4.58268125)) / 7.55559100054) + (-0.5 * 10.2340615756 - (0.5 * (CAST("ADS"."Feature_13" AS FLOAT) - 77.180875) * (CAST("ADS"."Feature_13" AS FLOAT) - 77.180875)) / 4430.13133447) + (-0.5 * -6.18504188515 - (0.5 * (CAST("ADS"."Feature_14" AS FLOAT) - 0.00683034375) * (CAST("ADS"."Feature_14" AS FLOAT) - 0.00683034375)) / 0.000327861612552) + (-0.5 * -5.53003213234 - (0.5 * (CAST("ADS"."Feature_15" AS FLOAT) - 0.03308685625) * (CAST("ADS"."Feature_15" AS FLOAT) - 0.03308685625)) / 0.00063118648595) + (-0.5 * -5.34794312632 - (0.5 * (CAST("ADS"."Feature_16" AS FLOAT) - 0.0422500625) * (CAST("ADS"."Feature_16" AS FLOAT) - 0.0422500625)) / 0.000757247664135) + (-0.5 * -6.11254589182 - (0.5 * (CAST("ADS"."Feature_17" AS FLOAT) - 0.01566620625) * (CAST("ADS"."Feature_17" AS FLOAT) - 0.01566620625)) / 0.000352513034803) + (-0.5 * -5.89704573381 - (0.5 * (CAST("ADS"."Feature_18" AS FLOAT) - 0.0213653875) * (CAST("ADS"."Feature_18" AS FLOAT) - 0.0213653875)) / 0.000437286137514) + (-0.5 * -6.19268298094 - (0.5 * (CAST("ADS"."Feature_19" AS FLOAT) - 0.00413925625) * (CAST("ADS"."Feature_19" AS FLOAT) - 0.00413925625)) / 0.000325365937555) + (-0.5 * 4.70616381044 - (0.5 * (CAST("ADS"."Feature_20" AS FLOAT) - 21.339375) * (CAST("ADS"."Feature_20" AS FLOAT) - 21.339375)) / 17.6068273428) + (-0.5 * 5.15882258011 - (0.5 * (CAST("ADS"."Feature_21" AS FLOAT) - 28.7075625) * (CAST("ADS"."Feature_21" AS FLOAT) - 28.7075625)) / 27.686516167) + (-0.5 * 8.57714985944 - (0.5 * (CAST("ADS"."Feature_22" AS FLOAT) - 143.081875) * (CAST("ADS"."Feature_22" AS FLOAT) - 143.081875)) / 844.946061718) + (-0.5 * 14.6206026847 - (0.5 * (CAST("ADS"."Feature_23" AS FLOAT) - 1445.17375) * (CAST("ADS"."Feature_23" AS FLOAT) - 1445.17375)) / 356014.100882) + (-0.5 * -5.26482500522 - (0.5 * (CAST("ADS"."Feature_24" AS FLOAT) - 0.1450574375) * (CAST("ADS"."Feature_24" AS FLOAT) - 0.1450574375)) / 0.000822878440073) + (-0.5 * -1.76167709964 - (0.5 * (CAST("ADS"."Feature_25" AS FLOAT) - 0.3767940625) * (CAST("ADS"."Feature_25" AS FLOAT) - 0.3767940625)) / 0.0273359070064) + (-0.5 * -1.56983821968 - (0.5 * (CAST("ADS"."Feature_26" AS FLOAT) - 0.44977675) * (CAST("ADS"."Feature_26" AS FLOAT) - 0.44977675)) / 0.033116776368) + (-0.5 * -4.19894960896 - (0.5 * (CAST("ADS"."Feature_27" AS FLOAT) - 0.1863309375) * (CAST("ADS"."Feature_27" AS FLOAT) - 0.1863309375)) / 0.00238912837701) + (-0.5 * -3.24885218246 - (0.5 * (CAST("ADS"."Feature_28" AS FLOAT) - 0.3258075) * (CAST("ADS"."Feature_28" AS FLOAT) - 0.3258075)) / 0.00617819421226) + (-0.5 * -5.38817242626 - (0.5 * (CAST("ADS"."Feature_29" AS FLOAT) - 0.09126925) * (CAST("ADS"."Feature_29" AS FLOAT) - 0.09126925)) / 0.000727388749202) AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "Proba_1", -0.433322062611 + (-0.5 * 2.99042150448 - (0.5 * (CAST("ADS"."Feature_0" AS FLOAT) - 12.1453864407) * (CAST("ADS"."Feature_0" AS FLOAT) - 12.1453864407)) / 3.16623896796) + (-0.5 * 4.56465984701 - (0.5 * (CAST("ADS"."Feature_1" AS FLOAT) - 17.8488135593) * (CAST("ADS"."Feature_1" AS FLOAT) - 17.8488135593)) / 15.2836370249) + (-0.5 * 6.77726090475 - (0.5 * (CAST("ADS"."Feature_2" AS FLOAT) - 78.0729152542) * (CAST("ADS"."Feature_2" AS FLOAT) - 78.0729152542)) / 139.684155019) + (-0.5 * 11.6286565649 - (0.5 * (CAST("ADS"."Feature_3" AS FLOAT) - 462.761355932) * (CAST("ADS"."Feature_3" AS FLOAT) - 462.761355932)) / 17868.2289976) + (-0.5 * -5.77001182544 - (0.5 * (CAST("ADS"."Feature_4" AS FLOAT) - 0.0924870508475) * (CAST("ADS"."Feature_4" AS FLOAT) - 0.0924870508475)) / 0.000496518958037) + (-0.5 * -4.73773456318 - (0.5 * (CAST("ADS"."Feature_5" AS FLOAT) - 0.0799264745763) * (CAST("ADS"."Feature_5" AS FLOAT) - 0.0799264745763)) / 0.00139395307464) + (-0.5 * -4.22876889128 - (0.5 * (CAST("ADS"."Feature_6" AS FLOAT) - 0.04604986) * (CAST("ADS"."Feature_6" AS FLOAT) - 0.04604986)) / 0.00231893799777) + (-0.5 * -5.64141638542 - (0.5 * (CAST("ADS"."Feature_7" AS FLOAT) - 0.0254664813559) * (CAST("ADS"."Feature_7" AS FLOAT) - 0.0254664813559)) / 0.000564656231492) + (-0.5 * -5.13438399355 - (0.5 * (CAST("ADS"."Feature_8" AS FLOAT) - 0.174346440678) * (CAST("ADS"."Feature_8" AS FLOAT) - 0.174346440678)) / 0.000937530694405) + (-0.5 * -6.0788170301 - (0.5 * (CAST("ADS"."Feature_9" AS FLOAT) - 0.0629088813559) * (CAST("ADS"."Feature_9" AS FLOAT) - 0.0629088813559)) / 0.000364605687517) + (-0.5 * -2.44242417016 - (0.5 * (CAST("ADS"."Feature_10" AS FLOAT) - 0.284146779661) * (CAST("ADS"."Feature_10" AS FLOAT) - 0.284146779661)) / 0.0138384927984) + (-0.5 * 0.629436739525 - (0.5 * (CAST("ADS"."Feature_11" AS FLOAT) - 1.20954644068) * (CAST("ADS"."Feature_11" AS FLOAT) - 1.20954644068)) / 0.298662732593) + (-0.5 * 1.37366971383 - (0.5 * (CAST("ADS"."Feature_12" AS FLOAT) - 1.99545525424) * (CAST("ADS"."Feature_12" AS FLOAT) - 1.99545525424)) / 0.628633192239) + (-0.5 * 6.24263393263 - (0.5 * (CAST("ADS"."Feature_13" AS FLOAT) - 21.1912135593) * (CAST("ADS"."Feature_13" AS FLOAT) - 21.1912135593)) / 81.8392425395) + (-0.5 * -6.17663458235 - (0.5 * (CAST("ADS"."Feature_14" AS FLOAT) - 0.00717834576271) * (CAST("ADS"."Feature_14" AS FLOAT) - 0.00717834576271)) / 0.000330629664025) + (-0.5 * -5.57570732713 - (0.5 * (CAST("ADS"."Feature_15" AS FLOAT) - 0.0214897152542) * (CAST("ADS"."Feature_15" AS FLOAT) - 0.0214897152542)) / 0.000603005407548) + (-0.5 * -4.63568182955 - (0.5 * (CAST("ADS"."Feature_16" AS FLOAT) - 0.0264394969492) * (CAST("ADS"."Feature_16" AS FLOAT) - 0.0264394969492)) / 0.00154372199915) + (-0.5 * -6.10197973299 - (0.5 * (CAST("ADS"."Feature_17" AS FLOAT) - 0.00996893220339) * (CAST("ADS"."Feature_17" AS FLOAT) - 0.00996893220339)) / 0.00035625749094) + (-0.5 * -6.05843875391 - (0.5 * (CAST("ADS"."Feature_18" AS FLOAT) - 0.0206417254237) * (CAST("ADS"."Feature_18" AS FLOAT) - 0.0206417254237)) / 0.000372111945456) + (-0.5 * -6.17576902664 - (0.5 * (CAST("ADS"."Feature_19" AS FLOAT) - 0.00368779694915) * (CAST("ADS"."Feature_19" AS FLOAT) - 0.00368779694915)) / 0.000330915966304) + (-0.5 * 3.21385980308 - (0.5 * (CAST("ADS"."Feature_20" AS FLOAT) - 13.3782474576) * (CAST("ADS"."Feature_20" AS FLOAT) - 13.3782474576)) / 3.95896543233) + (-0.5 * 5.21155548558 - (0.5 * (CAST("ADS"."Feature_21" AS FLOAT) - 23.3979322034) * (CAST("ADS"."Feature_21" AS FLOAT) - 23.3979322034)) / 29.1856870381) + (-0.5 * 7.06028716212 - (0.5 * (CAST("ADS"."Feature_22" AS FLOAT) - 86.9390169492) * (CAST("ADS"."Feature_22" AS FLOAT) - 86.9390169492)) / 185.380430686) + (-0.5 * 12.035414914 - (0.5 * (CAST("ADS"."Feature_23" AS FLOAT) - 559.373898305) * (CAST("ADS"."Feature_23" AS FLOAT) - 559.373898305)) / 26837.0278097) + (-0.5 * -5.42474139987 - (0.5 * (CAST("ADS"."Feature_24" AS FLOAT) - 0.124652033898) * (CAST("ADS"."Feature_24" AS FLOAT) - 0.124652033898)) / 0.000701269379208) + (-0.5 * -2.98314425449 - (0.5 * (CAST("ADS"."Feature_25" AS FLOAT) - 0.181103966102) * (CAST("ADS"."Feature_25" AS FLOAT) - 0.181103966102)) / 0.0080585525666) + (-0.5 * -2.06633378382 - (0.5 * (CAST("ADS"."Feature_26" AS FLOAT) - 0.165494050847) * (CAST("ADS"."Feature_26" AS FLOAT) - 0.165494050847)) / 0.0201568549941) + (-0.5 * -4.6266459246 - (0.5 * (CAST("ADS"."Feature_27" AS FLOAT) - 0.0739799355932) * (CAST("ADS"."Feature_27" AS FLOAT) - 0.0739799355932)) / 0.00155773413522) + (-0.5 * -4.36295881911 - (0.5 * (CAST("ADS"."Feature_28" AS FLOAT) - 0.27025220339) * (CAST("ADS"."Feature_28" AS FLOAT) - 0.27025220339)) / 0.0020277349734) + (-0.5 * -5.75937768305 - (0.5 * (CAST("ADS"."Feature_29" AS FLOAT) - 0.0795043389831) * (CAST("ADS"."Feature_29" AS FLOAT) - 0.0795043389831)) / 0.000501827185535) AS "Score_1" 
FROM "BreastCancer" AS "ADS"), 
orig_cte AS 
(SELECT "RawScores"."KEY" AS "KEY", "RawScores"."Score_0" AS "Score_0", "RawScores"."Score_1" AS "Score_1", "RawScores"."Proba_0" AS "Proba_0", "RawScores"."Proba_1" AS "Proba_1", "RawScores"."LogProba_0" AS "LogProba_0", "RawScores"."LogProba_1" AS "LogProba_1", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "RawScores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(CASE WHEN (score_max."Score_0" - score_max."max_Score" >= -709.782712893) THEN score_max."Score_0" - score_max."max_Score" ELSE -709.782712893 END) AS "exp_delta_Score_0", exp(CASE WHEN (score_max."Score_1" - score_max."max_Score" >= -709.782712893) THEN score_max."Score_1" - score_max."max_Score" ELSE -709.782712893 END) AS "exp_delta_Score_1" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS class, score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS class, score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") AS sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."SoftProba_0" <= arg_max_cte."SoftProba_1") THEN arg_max_cte."SoftProba_1" ELSE arg_max_cte."SoftProba_0" END AS "DecisionProba" 
FROM arg_max_cte