-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GaussianNB
-- Dataset : BreastCancer
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH centered_data AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE PRECISION) - CAST(17.640437500000008 AS DOUBLE PRECISION) AS "Feature_0_0", CAST("ADS"."Feature_1" AS DOUBLE PRECISION) - CAST(21.23356249999999 AS DOUBLE PRECISION) AS "Feature_1_0", CAST("ADS"."Feature_2" AS DOUBLE PRECISION) - CAST(116.71625000000002 AS DOUBLE PRECISION) AS "Feature_2_0", CAST("ADS"."Feature_3" AS DOUBLE PRECISION) - CAST(997.9731250000001 AS DOUBLE PRECISION) AS "Feature_3_0", CAST("ADS"."Feature_4" AS DOUBLE PRECISION) - CAST(0.103676625 AS DOUBLE PRECISION) AS "Feature_4_0", CAST("ADS"."Feature_5" AS DOUBLE PRECISION) - CAST(0.1495689375 AS DOUBLE PRECISION) AS "Feature_5_0", CAST("ADS"."Feature_6" AS DOUBLE PRECISION) - CAST(0.1660915625 AS DOUBLE PRECISION) AS "Feature_6_0", CAST("ADS"."Feature_7" AS DOUBLE PRECISION) - CAST(0.0910146875 AS DOUBLE PRECISION) AS "Feature_7_0", CAST("ADS"."Feature_8" AS DOUBLE PRECISION) - CAST(0.19494125 AS DOUBLE PRECISION) AS "Feature_8_0", CAST("ADS"."Feature_9" AS DOUBLE PRECISION) - CAST(0.06299825 AS DOUBLE PRECISION) AS "Feature_9_0", CAST("ADS"."Feature_10" AS DOUBLE PRECISION) - CAST(0.641806875 AS DOUBLE PRECISION) AS "Feature_10_0", CAST("ADS"."Feature_11" AS DOUBLE PRECISION) - CAST(1.23094 AS DOUBLE PRECISION) AS "Feature_11_0", CAST("ADS"."Feature_12" AS DOUBLE PRECISION) - CAST(4.582681250000002 AS DOUBLE PRECISION) AS "Feature_12_0", CAST("ADS"."Feature_13" AS DOUBLE PRECISION) - CAST(77.180875 AS DOUBLE PRECISION) AS "Feature_13_0", CAST("ADS"."Feature_14" AS DOUBLE PRECISION) - CAST(0.00683034375 AS DOUBLE PRECISION) AS "Feature_14_0", CAST("ADS"."Feature_15" AS DOUBLE PRECISION) - CAST(0.03308685625 AS DOUBLE PRECISION) AS "Feature_15_0", CAST("ADS"."Feature_16" AS DOUBLE PRECISION) - CAST(0.0422500625 AS DOUBLE PRECISION) AS "Feature_16_0", CAST("ADS"."Feature_17" AS DOUBLE PRECISION) - CAST(0.01566620625 AS DOUBLE PRECISION) AS "Feature_17_0", CAST("ADS"."Feature_18" AS DOUBLE PRECISION) - CAST(0.0213653875 AS DOUBLE PRECISION) AS "Feature_18_0", CAST("ADS"."Feature_19" AS DOUBLE PRECISION) - CAST(0.00413925625 AS DOUBLE PRECISION) AS "Feature_19_0", CAST("ADS"."Feature_20" AS DOUBLE PRECISION) - CAST(21.339374999999993 AS DOUBLE PRECISION) AS "Feature_20_0", CAST("ADS"."Feature_21" AS DOUBLE PRECISION) - CAST(28.707562499999995 AS DOUBLE PRECISION) AS "Feature_21_0", CAST("ADS"."Feature_22" AS DOUBLE PRECISION) - CAST(143.08187499999994 AS DOUBLE PRECISION) AS "Feature_22_0", CAST("ADS"."Feature_23" AS DOUBLE PRECISION) - CAST(1445.1737500000002 AS DOUBLE PRECISION) AS "Feature_23_0", CAST("ADS"."Feature_24" AS DOUBLE PRECISION) - CAST(0.1450574375 AS DOUBLE PRECISION) AS "Feature_24_0", CAST("ADS"."Feature_25" AS DOUBLE PRECISION) - CAST(0.3767940625 AS DOUBLE PRECISION) AS "Feature_25_0", CAST("ADS"."Feature_26" AS DOUBLE PRECISION) - CAST(0.44977675 AS DOUBLE PRECISION) AS "Feature_26_0", CAST("ADS"."Feature_27" AS DOUBLE PRECISION) - CAST(0.1863309375 AS DOUBLE PRECISION) AS "Feature_27_0", CAST("ADS"."Feature_28" AS DOUBLE PRECISION) - CAST(0.3258075 AS DOUBLE PRECISION) AS "Feature_28_0", CAST("ADS"."Feature_29" AS DOUBLE PRECISION) - CAST(0.09126925 AS DOUBLE PRECISION) AS "Feature_29_0", CAST("ADS"."Feature_0" AS DOUBLE PRECISION) - CAST(12.145386440677964 AS DOUBLE PRECISION) AS "Feature_0_1", CAST("ADS"."Feature_1" AS DOUBLE PRECISION) - CAST(17.84881355932203 AS DOUBLE PRECISION) AS "Feature_1_1", CAST("ADS"."Feature_2" AS DOUBLE PRECISION) - CAST(78.0729152542372 AS DOUBLE PRECISION) AS "Feature_2_1", CAST("ADS"."Feature_3" AS DOUBLE PRECISION) - CAST(462.7613559322033 AS DOUBLE PRECISION) AS "Feature_3_1", CAST("ADS"."Feature_4" AS DOUBLE PRECISION) - CAST(0.092487050847458 AS DOUBLE PRECISION) AS "Feature_4_1", CAST("ADS"."Feature_5" AS DOUBLE PRECISION) - CAST(0.079926474576271 AS DOUBLE PRECISION) AS "Feature_5_1", CAST("ADS"."Feature_6" AS DOUBLE PRECISION) - CAST(0.04604986 AS DOUBLE PRECISION) AS "Feature_6_1", CAST("ADS"."Feature_7" AS DOUBLE PRECISION) - CAST(0.025466481355932 AS DOUBLE PRECISION) AS "Feature_7_1", CAST("ADS"."Feature_8" AS DOUBLE PRECISION) - CAST(0.174346440677966 AS DOUBLE PRECISION) AS "Feature_8_1", CAST("ADS"."Feature_9" AS DOUBLE PRECISION) - CAST(0.062908881355932 AS DOUBLE PRECISION) AS "Feature_9_1", CAST("ADS"."Feature_10" AS DOUBLE PRECISION) - CAST(0.284146779661017 AS DOUBLE PRECISION) AS "Feature_10_1", CAST("ADS"."Feature_11" AS DOUBLE PRECISION) - CAST(1.209546440677966 AS DOUBLE PRECISION) AS "Feature_11_1", CAST("ADS"."Feature_12" AS DOUBLE PRECISION) - CAST(1.995455254237288 AS DOUBLE PRECISION) AS "Feature_12_1", CAST("ADS"."Feature_13" AS DOUBLE PRECISION) - CAST(21.19121355932202 AS DOUBLE PRECISION) AS "Feature_13_1", CAST("ADS"."Feature_14" AS DOUBLE PRECISION) - CAST(0.007178345762712 AS DOUBLE PRECISION) AS "Feature_14_1", CAST("ADS"."Feature_15" AS DOUBLE PRECISION) - CAST(0.021489715254237 AS DOUBLE PRECISION) AS "Feature_15_1", CAST("ADS"."Feature_16" AS DOUBLE PRECISION) - CAST(0.026439496949153 AS DOUBLE PRECISION) AS "Feature_16_1", CAST("ADS"."Feature_17" AS DOUBLE PRECISION) - CAST(0.00996893220339 AS DOUBLE PRECISION) AS "Feature_17_1", CAST("ADS"."Feature_18" AS DOUBLE PRECISION) - CAST(0.020641725423729 AS DOUBLE PRECISION) AS "Feature_18_1", CAST("ADS"."Feature_19" AS DOUBLE PRECISION) - CAST(0.003687796949153 AS DOUBLE PRECISION) AS "Feature_19_1", CAST("ADS"."Feature_20" AS DOUBLE PRECISION) - CAST(13.378247457627124 AS DOUBLE PRECISION) AS "Feature_20_1", CAST("ADS"."Feature_21" AS DOUBLE PRECISION) - CAST(23.397932203389832 AS DOUBLE PRECISION) AS "Feature_21_1", CAST("ADS"."Feature_22" AS DOUBLE PRECISION) - CAST(86.93901694915259 AS DOUBLE PRECISION) AS "Feature_22_1", CAST("ADS"."Feature_23" AS DOUBLE PRECISION) - CAST(559.3738983050844 AS DOUBLE PRECISION) AS "Feature_23_1", CAST("ADS"."Feature_24" AS DOUBLE PRECISION) - CAST(0.124652033898305 AS DOUBLE PRECISION) AS "Feature_24_1", CAST("ADS"."Feature_25" AS DOUBLE PRECISION) - CAST(0.181103966101695 AS DOUBLE PRECISION) AS "Feature_25_1", CAST("ADS"."Feature_26" AS DOUBLE PRECISION) - CAST(0.165494050847458 AS DOUBLE PRECISION) AS "Feature_26_1", CAST("ADS"."Feature_27" AS DOUBLE PRECISION) - CAST(0.07397993559322 AS DOUBLE PRECISION) AS "Feature_27_1", CAST("ADS"."Feature_28" AS DOUBLE PRECISION) - CAST(0.27025220338983 AS DOUBLE PRECISION) AS "Feature_28_1", CAST("ADS"."Feature_29" AS DOUBLE PRECISION) - CAST(0.079504338983051 AS DOUBLE PRECISION) AS "Feature_29_1" 
FROM "BreastCancer" AS "ADS"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"NaiveBayes_data" AS 
(SELECT "Values"."KEY" AS "KEY", CAST("Values"."Feature" AS DOUBLE PRECISION) AS "Feature", CAST("Values".log_proba_0 AS DOUBLE PRECISION) AS log_proba_0, CAST("Values".log_proba_1 AS DOUBLE PRECISION) AS log_proba_1 
FROM (SELECT centered_data."KEY" AS "KEY", 0 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(4.172570201510648 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_0_0" * centered_data."Feature_0_0") / CAST(10.326290666987266 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(2.990421504475016 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_0_1" * centered_data."Feature_0_1") / CAST(3.16623896795542 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 1 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(4.452423362655724 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_1_0" * centered_data."Feature_1_0") / CAST(13.661016916987258 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(4.564659847014308 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_1_1" * centered_data."Feature_1_1") / CAST(15.28363702490457 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 2 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(8.015373857751564 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_2_0" * centered_data."Feature_2_0") / CAST(481.78443867089345 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(6.777260904754837 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_2_1" * centered_data."Feature_2_1") / CAST(139.68415501858448 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 3 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(13.695371221206408 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_3_0" * centered_data."Feature_3_0") / CAST(141138.1045367178 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(11.62865656487327 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_3_1" * centered_data."Feature_3_1") / CAST(17868.228997610935 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 4 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-5.781553259650073 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_4_0" * centered_data."Feature_4_0") / CAST(0.000490821359623 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-5.77001182544145 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_4_1" * centered_data."Feature_4_1") / CAST(0.000496518958037 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 5 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-3.872987205178162 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_5_0" * centered_data."Feature_5_0") / CAST(0.00330981073301 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-4.737734563179293 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_5_1" * centered_data."Feature_5_1") / CAST(0.001393953074645 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 6 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-3.217293468649047 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_6_0" * centered_data."Feature_6_0") / CAST(0.006376279290448 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-4.228768891278335 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_6_1" * centered_data."Feature_6_1") / CAST(0.002318937997775 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 7 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-4.667117616083856 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_7_0" * centered_data."Feature_7_0") / CAST(0.001495948713416 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-5.641416385419427 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_7_1" * centered_data."Feature_7_1") / CAST(0.000564656231492 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 8 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-4.96836689783642 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_8_0" * centered_data."Feature_8_0") / CAST(0.001106842441952 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-5.134383993548121 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_8_1" * centered_data."Feature_8_1") / CAST(0.000937530694405 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 9 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-6.031985538501123 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_9_0" * centered_data."Feature_9_0") / CAST(0.000382086855452 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-6.078817030098811 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_9_1" * centered_data."Feature_9_1") / CAST(0.000364605687517 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 10 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-0.174943891315163 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_10_0" * centered_data."Feature_10_0") / CAST(0.133611230908748 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-2.442424170163384 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_10_1" * centered_data."Feature_10_1") / CAST(0.013838492798398 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 11 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(0.521647104048407 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_11_0" * centered_data."Feature_11_0") / CAST(0.268144312918514 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(0.629436739524652 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_11_1" * centered_data."Feature_11_1") / CAST(0.29866273259271 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 12 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(3.860164885486428 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_12_0" * centered_data."Feature_12_0") / CAST(7.555591000541953 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(1.373669713830903 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_12_1" * centered_data."Feature_12_1") / CAST(0.628633192238788 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 13 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(10.234061575615794 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_13_0" * centered_data."Feature_13_0") / CAST(4430.131334467768 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(6.242633932627197 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_13_1" * centered_data."Feature_13_1") / CAST(81.83924253948085 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 14 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-6.185041885151993 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_14_0" * centered_data."Feature_14_0") / CAST(0.000327861612552 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-6.176634582350061 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_14_1" * centered_data."Feature_14_1") / CAST(0.000330629664025 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 15 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-5.530032132344976 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_15_0" * centered_data."Feature_15_0") / CAST(0.00063118648595 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-5.575707327126337 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_15_1" * centered_data."Feature_15_1") / CAST(0.000603005407548 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 16 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-5.347943126320397 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_16_0" * centered_data."Feature_16_0") / CAST(0.000757247664135 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-4.635681829545936 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_16_1" * centered_data."Feature_16_1") / CAST(0.001543721999149 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 17 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-6.112545891822505 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_17_0" * centered_data."Feature_17_0") / CAST(0.000352513034803 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-6.101979732993327 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_17_1" * centered_data."Feature_17_1") / CAST(0.00035625749094 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 18 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-5.89704573381262 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_18_0" * centered_data."Feature_18_0") / CAST(0.000437286137514 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-6.0584387539077 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_18_1" * centered_data."Feature_18_1") / CAST(0.000372111945456 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 19 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-6.192682980938167 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_19_0" * centered_data."Feature_19_0") / CAST(0.000325365937555 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-6.175769026644788 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_19_1" * centered_data."Feature_19_1") / CAST(0.000330915966304 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 20 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(4.706163810435783 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_20_0" * centered_data."Feature_20_0") / CAST(17.606827342768515 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(3.213859803080148 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_20_1" * centered_data."Feature_20_1") / CAST(3.958965432327732 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 21 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(5.158822580111128 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_21_0" * centered_data."Feature_21_0") / CAST(27.686516166987257 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(5.211555485583606 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_21_1" * centered_data."Feature_21_1") / CAST(29.185687038119188 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 22 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(8.577149859442487 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_22_0" * centered_data."Feature_22_0") / CAST(844.9460617177685 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(7.06028716211734 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_22_1" * centered_data."Feature_22_1") / CAST(185.38043068649608 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 23 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(14.620602684679373 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_23_0" * centered_data."Feature_23_0") / CAST(356014.1008824211 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(12.035414914018736 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_23_1" * centered_data."Feature_23_1") / CAST(26837.02780967645 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 24 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-5.264825005222549 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_24_0" * centered_data."Feature_24_0") / CAST(0.000822878440073 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-5.424741399865948 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_24_1" * centered_data."Feature_24_1") / CAST(0.000701269379208 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 25 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-1.76167709963912 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_25_0" * centered_data."Feature_25_0") / CAST(0.027335907006385 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-2.983144254489076 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_25_1" * centered_data."Feature_25_1") / CAST(0.008058552566598 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 26 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-1.56983821967831 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_26_0" * centered_data."Feature_26_0") / CAST(0.033116776367952 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-2.066333783817483 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_26_1" * centered_data."Feature_26_1") / CAST(0.020156854994071 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 27 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-4.198949608958732 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_27_0" * centered_data."Feature_27_0") / CAST(0.00238912837701 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-4.62664592460118 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_27_1" * centered_data."Feature_27_1") / CAST(0.001557734135222 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 28 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-3.24885218246432 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_28_0" * centered_data."Feature_28_0") / CAST(0.006178194212264 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-4.362958819109134 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_28_1" * centered_data."Feature_28_1") / CAST(0.002027734973405 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte UNION ALL SELECT centered_data."KEY" AS "KEY", 29 AS "Feature", CAST(-0.5 AS DOUBLE PRECISION) * CAST(-5.388172426262818 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_29_0" * centered_data."Feature_29_0") / CAST(0.000727388749202 AS DOUBLE PRECISION) AS log_proba_0, CAST(-0.5 AS DOUBLE PRECISION) * CAST(-5.759377683054396 AS DOUBLE PRECISION) - (CAST(0.5 AS DOUBLE PRECISION) * centered_data."Feature_29_1" * centered_data."Feature_29_1") / CAST(0.000501827185535 AS DOUBLE PRECISION) AS log_proba_1 
FROM centered_data, dummy_cte) AS "Values"), 
"NaiveBayes_Scores" AS 
(SELECT nb_sums."KEY" AS "KEY", nb_sums."Score_0" AS "Score_0", nb_sums."Score_1" AS "Score_1" 
FROM (SELECT "NaiveBayes_data"."KEY" AS "KEY", CAST(-1.045123603717123 AS DOUBLE PRECISION) + sum("NaiveBayes_data".log_proba_0) AS "Score_0", CAST(-0.433322062611131 AS DOUBLE PRECISION) + sum("NaiveBayes_data".log_proba_1) AS "Score_1" 
FROM "NaiveBayes_data" GROUP BY "NaiveBayes_data"."KEY") AS nb_sums), 
orig_cte AS 
(SELECT "NaiveBayes_Scores"."KEY" AS "KEY", "NaiveBayes_Scores"."Score_0" AS "Score_0", "NaiveBayes_Scores"."Score_1" AS "Score_1", CAST(NULL AS DOUBLE PRECISION) AS "Proba_0", CAST(NULL AS DOUBLE PRECISION) AS "Proba_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM "NaiveBayes_Scores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu."class" AS "class", scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS "class", orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS "class", orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(score_max."Score_0" - score_max."max_Score") AS "exp_delta_Score_0", exp(score_max."Score_1" - score_max."max_Score") AS "exp_delta_Score_1" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu."class" AS "class", soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS "class", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS "class", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") AS sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union."class" AS "class", score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max."class") AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."SoftProba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."SoftProba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Score" AS "Decision", greatest(arg_max_cte."SoftProba_0", arg_max_cte."SoftProba_1") AS "DecisionProba" 
FROM arg_max_cte