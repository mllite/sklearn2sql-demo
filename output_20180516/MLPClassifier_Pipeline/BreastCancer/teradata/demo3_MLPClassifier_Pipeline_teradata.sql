-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPClassifier_Pipeline
-- Dataset : BreastCancer
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516111759_codegen_96c8o0_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516111759_codegen_96c8o0_ads_imp_1_out  (
	"KEY" BIGINT, 
	impter_2 DOUBLE PRECISION, 
	impter_3 DOUBLE PRECISION, 
	impter_4 DOUBLE PRECISION, 
	impter_5 DOUBLE PRECISION, 
	impter_6 DOUBLE PRECISION, 
	impter_7 DOUBLE PRECISION, 
	impter_8 DOUBLE PRECISION, 
	impter_9 DOUBLE PRECISION, 
	impter_10 DOUBLE PRECISION, 
	impter_11 DOUBLE PRECISION, 
	impter_12 DOUBLE PRECISION, 
	impter_13 DOUBLE PRECISION, 
	impter_14 DOUBLE PRECISION, 
	impter_15 DOUBLE PRECISION, 
	impter_16 DOUBLE PRECISION, 
	impter_17 DOUBLE PRECISION, 
	impter_18 DOUBLE PRECISION, 
	impter_19 DOUBLE PRECISION, 
	impter_20 DOUBLE PRECISION, 
	impter_21 DOUBLE PRECISION, 
	impter_22 DOUBLE PRECISION, 
	impter_23 DOUBLE PRECISION, 
	impter_24 DOUBLE PRECISION, 
	impter_25 DOUBLE PRECISION, 
	impter_26 DOUBLE PRECISION, 
	impter_27 DOUBLE PRECISION, 
	impter_28 DOUBLE PRECISION, 
	impter_29 DOUBLE PRECISION, 
	impter_30 DOUBLE PRECISION, 
	impter_31 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516111759_codegen_96c8o0_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516111759_codegen_96c8o0_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14, impter_15, impter_16, impter_17, impter_18, impter_19, impter_20, impter_21, impter_22, impter_23, impter_24, impter_25, impter_26, impter_27, impter_28, impter_29, impter_30, impter_31) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11, "U".impter_12, "U".impter_13, "U".impter_14, "U".impter_15, "U".impter_16, "U".impter_17, "U".impter_18, "U".impter_19, "U".impter_20, "U".impter_21, "U".impter_22, "U".impter_23, "U".impter_24, "U".impter_25, "U".impter_26, "U".impter_27, "U".impter_28, "U".impter_29, "U".impter_30, "U".impter_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14, "ADS_imp_1_OUT".impter_15, "ADS_imp_1_OUT".impter_16, "ADS_imp_1_OUT".impter_17, "ADS_imp_1_OUT".impter_18, "ADS_imp_1_OUT".impter_19, "ADS_imp_1_OUT".impter_20, "ADS_imp_1_OUT".impter_21, "ADS_imp_1_OUT".impter_22, "ADS_imp_1_OUT".impter_23, "ADS_imp_1_OUT".impter_24, "ADS_imp_1_OUT".impter_25, "ADS_imp_1_OUT".impter_26, "ADS_imp_1_OUT".impter_27, "ADS_imp_1_OUT".impter_28, "ADS_imp_1_OUT".impter_29, "ADS_imp_1_OUT".impter_30, "ADS_imp_1_OUT".impter_31 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 14.077712087912083 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.03905494505495 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 91.66178021978023 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 650.9676923076925 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.09642184615384615 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.10441613186813191 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.08826232681318694 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.048516399999999966 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.1815885714285715 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.06294030769230768 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.4099173626373627 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.2170694505494501 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.90524901098901 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 40.87988571428572 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.007055971428571433 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.025567830769230776 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.03199925626373623 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.011972369230769237 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.020896200000000014 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.0038465518681318647 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 16.17776483516484 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 25.26505494505494 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 106.68156043956041 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 870.8639560439567 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.1318275604395605 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.24991806593406582 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.2654615934065932 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.11348798021978022 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.2897881318681319 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.08364145054945049 ELSE "ADS"."Feature_29" END AS impter_31 
FROM "BreastCancer" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516111759_codegen_2m2eus_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516111759_codegen_2m2eus_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_2 DOUBLE PRECISION, 
	scaler_3 DOUBLE PRECISION, 
	scaler_4 DOUBLE PRECISION, 
	scaler_5 DOUBLE PRECISION, 
	scaler_6 DOUBLE PRECISION, 
	scaler_7 DOUBLE PRECISION, 
	scaler_8 DOUBLE PRECISION, 
	scaler_9 DOUBLE PRECISION, 
	scaler_10 DOUBLE PRECISION, 
	scaler_11 DOUBLE PRECISION, 
	scaler_12 DOUBLE PRECISION, 
	scaler_13 DOUBLE PRECISION, 
	scaler_14 DOUBLE PRECISION, 
	scaler_15 DOUBLE PRECISION, 
	scaler_16 DOUBLE PRECISION, 
	scaler_17 DOUBLE PRECISION, 
	scaler_18 DOUBLE PRECISION, 
	scaler_19 DOUBLE PRECISION, 
	scaler_20 DOUBLE PRECISION, 
	scaler_21 DOUBLE PRECISION, 
	scaler_22 DOUBLE PRECISION, 
	scaler_23 DOUBLE PRECISION, 
	scaler_24 DOUBLE PRECISION, 
	scaler_25 DOUBLE PRECISION, 
	scaler_26 DOUBLE PRECISION, 
	scaler_27 DOUBLE PRECISION, 
	scaler_28 DOUBLE PRECISION, 
	scaler_29 DOUBLE PRECISION, 
	scaler_30 DOUBLE PRECISION, 
	scaler_31 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516111759_codegen_2m2eus_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516111759_codegen_2m2eus_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14, scaler_15, scaler_16, scaler_17, scaler_18, scaler_19, scaler_20, scaler_21, scaler_22, scaler_23, scaler_24, scaler_25, scaler_26, scaler_27, scaler_28, scaler_29, scaler_30, scaler_31) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11, "U".scaler_12, "U".scaler_13, "U".scaler_14, "U".scaler_15, "U".scaler_16, "U".scaler_17, "U".scaler_18, "U".scaler_19, "U".scaler_20, "U".scaler_21, "U".scaler_22, "U".scaler_23, "U".scaler_24, "U".scaler_25, "U".scaler_26, "U".scaler_27, "U".scaler_28, "U".scaler_29, "U".scaler_30, "U".scaler_31 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14, "ADS_sca_2_OUT".scaler_15, "ADS_sca_2_OUT".scaler_16, "ADS_sca_2_OUT".scaler_17, "ADS_sca_2_OUT".scaler_18, "ADS_sca_2_OUT".scaler_19, "ADS_sca_2_OUT".scaler_20, "ADS_sca_2_OUT".scaler_21, "ADS_sca_2_OUT".scaler_22, "ADS_sca_2_OUT".scaler_23, "ADS_sca_2_OUT".scaler_24, "ADS_sca_2_OUT".scaler_25, "ADS_sca_2_OUT".scaler_26, "ADS_sca_2_OUT".scaler_27, "ADS_sca_2_OUT".scaler_28, "ADS_sca_2_OUT".scaler_29, "ADS_sca_2_OUT".scaler_30, "ADS_sca_2_OUT".scaler_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - CAST(14.077712087912081 AS DOUBLE PRECISION)) / CAST(3.545149298700082 AS DOUBLE PRECISION) AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - CAST(19.039054945054946 AS DOUBLE PRECISION)) / CAST(4.16229715042182 AS DOUBLE PRECISION) AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - CAST(91.66178021978023 AS DOUBLE PRECISION)) / CAST(24.503971943475648 AS DOUBLE PRECISION) AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - CAST(650.9676923076925 AS DOUBLE PRECISION)) / CAST(355.702823163891 AS DOUBLE PRECISION) AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - CAST(0.096421846153846 AS DOUBLE PRECISION)) / CAST(0.014197819663072 AS DOUBLE PRECISION) AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - CAST(0.104416131868132 AS DOUBLE PRECISION)) / CAST(0.053403694669734 AS DOUBLE PRECISION) AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - CAST(0.088262326813187 AS DOUBLE PRECISION)) / CAST(0.081912001626314 AS DOUBLE PRECISION) AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - CAST(0.0485164 AS DOUBLE PRECISION)) / CAST(0.03937311739673 AS DOUBLE PRECISION) AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - CAST(0.181588571428572 AS DOUBLE PRECISION)) / CAST(0.027790058328748 AS DOUBLE PRECISION) AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - CAST(0.062940307692308 AS DOUBLE PRECISION)) / CAST(0.007019354586173 AS DOUBLE PRECISION) AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS DOUBLE PRECISION) - CAST(0.409917362637363 AS DOUBLE PRECISION)) / CAST(0.29120400836827 AS DOUBLE PRECISION) AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS DOUBLE PRECISION) - CAST(1.21706945054945 AS DOUBLE PRECISION)) / CAST(0.536389639633626 AS DOUBLE PRECISION) AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS DOUBLE PRECISION) - CAST(2.90524901098901 AS DOUBLE PRECISION)) / CAST(2.142494429980862 AS DOUBLE PRECISION) AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS DOUBLE PRECISION) - CAST(40.87988571428572 AS DOUBLE PRECISION)) / CAST(48.224754479577314 AS DOUBLE PRECISION) AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS DOUBLE PRECISION) - CAST(0.007055971428571 AS DOUBLE PRECISION)) / CAST(0.002863651656569 AS DOUBLE PRECISION) AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS DOUBLE PRECISION) - CAST(0.025567830769231 AS DOUBLE PRECISION)) / CAST(0.017947013631032 AS DOUBLE PRECISION) AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS DOUBLE PRECISION) - CAST(0.031999256263736 AS DOUBLE PRECISION)) / CAST(0.031664936721364 AS DOUBLE PRECISION) AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS DOUBLE PRECISION) - CAST(0.011972369230769 AS DOUBLE PRECISION)) / CAST(0.006392005589397 AS DOUBLE PRECISION) AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS DOUBLE PRECISION) - CAST(0.0208962 AS DOUBLE PRECISION)) / CAST(0.008582910079869 AS DOUBLE PRECISION) AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS DOUBLE PRECISION) - CAST(0.003846551868132 AS DOUBLE PRECISION)) / CAST(0.002743607586619 AS DOUBLE PRECISION) AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS DOUBLE PRECISION) - CAST(16.17776483516484 AS DOUBLE PRECISION)) / CAST(4.817458816201383 AS DOUBLE PRECISION) AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS DOUBLE PRECISION) - CAST(25.26505494505494 AS DOUBLE PRECISION)) / CAST(5.92332412866667 AS DOUBLE PRECISION) AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS DOUBLE PRECISION) - CAST(106.68156043956041 AS DOUBLE PRECISION)) / CAST(33.70385837605481 AS DOUBLE PRECISION) AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS DOUBLE PRECISION) - CAST(870.8639560439567 AS DOUBLE PRECISION)) / CAST(566.9950559872813 AS DOUBLE PRECISION) AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS DOUBLE PRECISION) - CAST(0.131827560439561 AS DOUBLE PRECISION)) / CAST(0.022748207522289 AS DOUBLE PRECISION) AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS DOUBLE PRECISION) - CAST(0.249918065934066 AS DOUBLE PRECISION)) / CAST(0.15246893644279 AS DOUBLE PRECISION) AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS DOUBLE PRECISION) - CAST(0.265461593406593 AS DOUBLE PRECISION)) / CAST(0.206925686782041 AS DOUBLE PRECISION) AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS DOUBLE PRECISION) - CAST(0.11348798021978 AS DOUBLE PRECISION)) / CAST(0.066381412785207 AS DOUBLE PRECISION) AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS DOUBLE PRECISION) - CAST(0.289788131868132 AS DOUBLE PRECISION)) / CAST(0.062204706650519 AS DOUBLE PRECISION) AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS DOUBLE PRECISION) - CAST(0.08364145054945 AS DOUBLE PRECISION)) / CAST(0.017065145806948 AS DOUBLE PRECISION) AS scaler_31 
FROM tmp_20180516111759_codegen_96c8o0_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table tmp_20180516111759_codegen_kowgng_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516111759_codegen_kowgng_hl_1_relu_1  (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE PRECISION, 
	"NEUR_1_2" DOUBLE PRECISION, 
	"NEUR_1_3" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516111759_codegen_kowgng_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180516111759_codegen_kowgng_hl_1_relu_1 ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE PRECISION) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE PRECISION) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE PRECISION) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE PRECISION) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE PRECISION) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE PRECISION) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE PRECISION) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE PRECISION) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE PRECISION) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE PRECISION) AS scaler_11, CAST("ADS_sca_2_OUT".scaler_12 AS DOUBLE PRECISION) AS scaler_12, CAST("ADS_sca_2_OUT".scaler_13 AS DOUBLE PRECISION) AS scaler_13, CAST("ADS_sca_2_OUT".scaler_14 AS DOUBLE PRECISION) AS scaler_14, CAST("ADS_sca_2_OUT".scaler_15 AS DOUBLE PRECISION) AS scaler_15, CAST("ADS_sca_2_OUT".scaler_16 AS DOUBLE PRECISION) AS scaler_16, CAST("ADS_sca_2_OUT".scaler_17 AS DOUBLE PRECISION) AS scaler_17, CAST("ADS_sca_2_OUT".scaler_18 AS DOUBLE PRECISION) AS scaler_18, CAST("ADS_sca_2_OUT".scaler_19 AS DOUBLE PRECISION) AS scaler_19, CAST("ADS_sca_2_OUT".scaler_20 AS DOUBLE PRECISION) AS scaler_20, CAST("ADS_sca_2_OUT".scaler_21 AS DOUBLE PRECISION) AS scaler_21, CAST("ADS_sca_2_OUT".scaler_22 AS DOUBLE PRECISION) AS scaler_22, CAST("ADS_sca_2_OUT".scaler_23 AS DOUBLE PRECISION) AS scaler_23, CAST("ADS_sca_2_OUT".scaler_24 AS DOUBLE PRECISION) AS scaler_24, CAST("ADS_sca_2_OUT".scaler_25 AS DOUBLE PRECISION) AS scaler_25, CAST("ADS_sca_2_OUT".scaler_26 AS DOUBLE PRECISION) AS scaler_26, CAST("ADS_sca_2_OUT".scaler_27 AS DOUBLE PRECISION) AS scaler_27, CAST("ADS_sca_2_OUT".scaler_28 AS DOUBLE PRECISION) AS scaler_28, CAST("ADS_sca_2_OUT".scaler_29 AS DOUBLE PRECISION) AS scaler_29, CAST("ADS_sca_2_OUT".scaler_30 AS DOUBLE PRECISION) AS scaler_30, CAST("ADS_sca_2_OUT".scaler_31 AS DOUBLE PRECISION) AS scaler_31 
FROM tmp_20180516111759_codegen_2m2eus_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", CAST(0.603552138769655 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(1.219275391998759 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(0.364567812947593 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(-0.094033608046767 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(-0.70191309947309 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(1.072204272387407 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(-1.018869880459989 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(-0.982551604492906 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(-0.111651669777273 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(-1.321465868155152 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(-2.160094151598582 AS DOUBLE PRECISION) * "IL".scaler_12 + CAST(-0.397148229262771 AS DOUBLE PRECISION) * "IL".scaler_13 + CAST(-0.981194619753564 AS DOUBLE PRECISION) * "IL".scaler_14 + CAST(-0.950872665193756 AS DOUBLE PRECISION) * "IL".scaler_15 + CAST(0.829142373846283 AS DOUBLE PRECISION) * "IL".scaler_16 + CAST(2.094348077387133 AS DOUBLE PRECISION) * "IL".scaler_17 + CAST(0.070883304536448 AS DOUBLE PRECISION) * "IL".scaler_18 + CAST(-0.446139637342987 AS DOUBLE PRECISION) * "IL".scaler_19 + CAST(0.935561916986043 AS DOUBLE PRECISION) * "IL".scaler_20 + CAST(1.056126842565889 AS DOUBLE PRECISION) * "IL".scaler_21 + CAST(-0.840258598328871 AS DOUBLE PRECISION) * "IL".scaler_22 + CAST(-0.031506340990445 AS DOUBLE PRECISION) * "IL".scaler_23 + CAST(0.102021546300185 AS DOUBLE PRECISION) * "IL".scaler_24 + CAST(-1.029677907986936 AS DOUBLE PRECISION) * "IL".scaler_25 + CAST(-0.685200869004523 AS DOUBLE PRECISION) * "IL".scaler_26 + CAST(0.756965839916104 AS DOUBLE PRECISION) * "IL".scaler_27 + CAST(-1.040078766135142 AS DOUBLE PRECISION) * "IL".scaler_28 + CAST(-0.571841843318626 AS DOUBLE PRECISION) * "IL".scaler_29 + CAST(-0.20226517211055 AS DOUBLE PRECISION) * "IL".scaler_30 + CAST(0.320175148461544 AS DOUBLE PRECISION) * "IL".scaler_31 + CAST(2.726584105428716 AS DOUBLE PRECISION) AS "NEUR_1_1", CAST(0.524038293729603 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(-0.625642624415757 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(0.168866498202524 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(0.45405057618929 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(0.621982809603038 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(0.607489190125822 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(-0.770894275627222 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(-0.680252725140362 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(-0.288679688523197 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(-0.557248646860598 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(-1.57747919560752 AS DOUBLE PRECISION) * "IL".scaler_12 + CAST(-1.452116282100998 AS DOUBLE PRECISION) * "IL".scaler_13 + CAST(-1.056540959904738 AS DOUBLE PRECISION) * "IL".scaler_14 + CAST(-0.54763863843023 AS DOUBLE PRECISION) * "IL".scaler_15 + CAST(1.22647867379433 AS DOUBLE PRECISION) * "IL".scaler_16 + CAST(0.382851175226248 AS DOUBLE PRECISION) * "IL".scaler_17 + CAST(-0.109398753396576 AS DOUBLE PRECISION) * "IL".scaler_18 + CAST(-0.239294237321511 AS DOUBLE PRECISION) * "IL".scaler_19 + CAST(0.062949991016497 AS DOUBLE PRECISION) * "IL".scaler_20 + CAST(0.734165666177976 AS DOUBLE PRECISION) * "IL".scaler_21 + CAST(-0.577880515715947 AS DOUBLE PRECISION) * "IL".scaler_22 + CAST(-1.902243913208084 AS DOUBLE PRECISION) * "IL".scaler_23 + CAST(-0.337377556914292 AS DOUBLE PRECISION) * "IL".scaler_24 + CAST(-0.272103951070558 AS DOUBLE PRECISION) * "IL".scaler_25 + CAST(0.525820290796726 AS DOUBLE PRECISION) * "IL".scaler_26 + CAST(-0.335640646050352 AS DOUBLE PRECISION) * "IL".scaler_27 + CAST(-1.239325434530771 AS DOUBLE PRECISION) * "IL".scaler_28 + CAST(-0.233359652639262 AS DOUBLE PRECISION) * "IL".scaler_29 + CAST(-0.814021934951831 AS DOUBLE PRECISION) * "IL".scaler_30 + CAST(-0.932538023483281 AS DOUBLE PRECISION) * "IL".scaler_31 + CAST(1.033292019819117 AS DOUBLE PRECISION) AS "NEUR_1_2", CAST(1.357806413270515 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(0.376017584467175 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(1.119844878307635 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(1.048043836908615 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(-0.051742075437246 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(-0.040531124830208 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(1.875496684316986 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(1.855157975075874 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(-0.030320630538788 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(-0.044384826508055 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(1.127765251140445 AS DOUBLE PRECISION) * "IL".scaler_12 + CAST(-1.292843619868943 AS DOUBLE PRECISION) * "IL".scaler_13 + CAST(0.765546499018992 AS DOUBLE PRECISION) * "IL".scaler_14 + CAST(1.036331725573982 AS DOUBLE PRECISION) * "IL".scaler_15 + CAST(0.019817868649421 AS DOUBLE PRECISION) * "IL".scaler_16 + CAST(-1.296896993406463 AS DOUBLE PRECISION) * "IL".scaler_17 + CAST(-0.288549934692051 AS DOUBLE PRECISION) * "IL".scaler_18 + CAST(0.122534758265349 AS DOUBLE PRECISION) * "IL".scaler_19 + CAST(0.558032590359714 AS DOUBLE PRECISION) * "IL".scaler_20 + CAST(-1.372657113948846 AS DOUBLE PRECISION) * "IL".scaler_21 + CAST(1.632557519158884 AS DOUBLE PRECISION) * "IL".scaler_22 + CAST(2.54359096700899 AS DOUBLE PRECISION) * "IL".scaler_23 + CAST(0.98653108746193 AS DOUBLE PRECISION) * "IL".scaler_24 + CAST(1.907800850195801 AS DOUBLE PRECISION) * "IL".scaler_25 + CAST(1.43051870964817 AS DOUBLE PRECISION) * "IL".scaler_26 + CAST(-0.054902182663736 AS DOUBLE PRECISION) * "IL".scaler_27 + CAST(2.070973690573112 AS DOUBLE PRECISION) * "IL".scaler_28 + CAST(1.784445640056942 AS DOUBLE PRECISION) * "IL".scaler_29 + CAST(1.041438437963936 AS DOUBLE PRECISION) * "IL".scaler_30 + CAST(-0.564058838281535 AS DOUBLE PRECISION) * "IL".scaler_31 + CAST(0.200414314617036 AS DOUBLE PRECISION) AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table tmp_20180516111759_codegen_bkep8o_ol_logistic_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516111759_codegen_bkep8o_ol_logistic_1  (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516111759_codegen_bkep8o_ol_logistic_1 part 2. Populate

INSERT INTO tmp_20180516111759_codegen_bkep8o_ol_logistic_1 ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", CAST(0.498537844472407 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.575028258345002 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.720158581192721 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.027381825851223 AS DOUBLE PRECISION) AS "NEUR_2_1", CAST(-0.728808328433625 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.87895062136195 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(0.54839910691359 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(0.616617850106614 AS DOUBLE PRECISION) AS "NEUR_2_2", CAST(1.120858453237825 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(1.898932975359879 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-1.586039506641605 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.06436422118751 AS DOUBLE PRECISION) AS "NEUR_2_3", CAST(-0.528305269603438 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.642728204238112 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(2.507219246807902 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(1.621345835632673 AS DOUBLE PRECISION) AS "NEUR_2_4", CAST(-0.694750249061967 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.269509098533052 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.661681147907402 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.815750113657602 AS DOUBLE PRECISION) AS "NEUR_2_5" 
FROM tmp_20180516111759_codegen_kowgng_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", CAST(0.18834779952476 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_1" + CAST(-0.752837543213487 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_2" + CAST(2.336269951145561 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_3" + CAST(-2.654411756089052 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_4" + CAST(0.379344116031191 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_5" + CAST(-0.26660724200009 AS DOUBLE PRECISION) AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_logistic" AS 
(SELECT "OL_BA"."KEY" AS "KEY", CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -"OL_BA"."NEUR_3_1"), CAST(100.0 AS DOUBLE PRECISION)))) AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_logistic_1"."KEY", "OL_logistic_1"."NEUR_3_1" 
FROM (SELECT "OL_logistic"."KEY" AS "KEY", "OL_logistic"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_logistic") AS "OL_logistic_1") AS "U"

-- Model deployment code

WITH orig_cte AS 
(SELECT "OL_logistic_1"."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", CAST(1.0 AS DOUBLE PRECISION) - "OL_logistic_1"."NEUR_3_1" AS "Proba_0", "OL_logistic_1"."NEUR_3_1" AS "Proba_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM tmp_20180516111759_codegen_bkep8o_ol_logistic_1 AS "OL_logistic_1"), 
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
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte