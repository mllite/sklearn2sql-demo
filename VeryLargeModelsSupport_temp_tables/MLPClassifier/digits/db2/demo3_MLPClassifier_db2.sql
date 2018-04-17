-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPClassifier
-- Dataset : digits
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180417025630_oz96gt_hl_1_relu_1 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417025630_oz96gt_hl_1_relu_1 (
	"KEY" BIGINT, 
	"NEUR_1_1" FLOAT, 
	"NEUR_1_2" FLOAT, 
	"NEUR_1_3" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417025630_oz96gt_hl_1_relu_1 part 2/2. Populate

INSERT INTO tmp_20180417025630_oz96gt_hl_1_relu_1 WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE) AS "Feature_9", CAST("ADS"."Feature_10" AS DOUBLE) AS "Feature_10", CAST("ADS"."Feature_11" AS DOUBLE) AS "Feature_11", CAST("ADS"."Feature_12" AS DOUBLE) AS "Feature_12", CAST("ADS"."Feature_13" AS DOUBLE) AS "Feature_13", CAST("ADS"."Feature_14" AS DOUBLE) AS "Feature_14", CAST("ADS"."Feature_15" AS DOUBLE) AS "Feature_15", CAST("ADS"."Feature_16" AS DOUBLE) AS "Feature_16", CAST("ADS"."Feature_17" AS DOUBLE) AS "Feature_17", CAST("ADS"."Feature_18" AS DOUBLE) AS "Feature_18", CAST("ADS"."Feature_19" AS DOUBLE) AS "Feature_19", CAST("ADS"."Feature_20" AS DOUBLE) AS "Feature_20", CAST("ADS"."Feature_21" AS DOUBLE) AS "Feature_21", CAST("ADS"."Feature_22" AS DOUBLE) AS "Feature_22", CAST("ADS"."Feature_23" AS DOUBLE) AS "Feature_23", CAST("ADS"."Feature_24" AS DOUBLE) AS "Feature_24", CAST("ADS"."Feature_25" AS DOUBLE) AS "Feature_25", CAST("ADS"."Feature_26" AS DOUBLE) AS "Feature_26", CAST("ADS"."Feature_27" AS DOUBLE) AS "Feature_27", CAST("ADS"."Feature_28" AS DOUBLE) AS "Feature_28", CAST("ADS"."Feature_29" AS DOUBLE) AS "Feature_29", CAST("ADS"."Feature_30" AS DOUBLE) AS "Feature_30", CAST("ADS"."Feature_31" AS DOUBLE) AS "Feature_31", CAST("ADS"."Feature_32" AS DOUBLE) AS "Feature_32", CAST("ADS"."Feature_33" AS DOUBLE) AS "Feature_33", CAST("ADS"."Feature_34" AS DOUBLE) AS "Feature_34", CAST("ADS"."Feature_35" AS DOUBLE) AS "Feature_35", CAST("ADS"."Feature_36" AS DOUBLE) AS "Feature_36", CAST("ADS"."Feature_37" AS DOUBLE) AS "Feature_37", CAST("ADS"."Feature_38" AS DOUBLE) AS "Feature_38", CAST("ADS"."Feature_39" AS DOUBLE) AS "Feature_39", CAST("ADS"."Feature_40" AS DOUBLE) AS "Feature_40", CAST("ADS"."Feature_41" AS DOUBLE) AS "Feature_41", CAST("ADS"."Feature_42" AS DOUBLE) AS "Feature_42", CAST("ADS"."Feature_43" AS DOUBLE) AS "Feature_43", CAST("ADS"."Feature_44" AS DOUBLE) AS "Feature_44", CAST("ADS"."Feature_45" AS DOUBLE) AS "Feature_45", CAST("ADS"."Feature_46" AS DOUBLE) AS "Feature_46", CAST("ADS"."Feature_47" AS DOUBLE) AS "Feature_47", CAST("ADS"."Feature_48" AS DOUBLE) AS "Feature_48", CAST("ADS"."Feature_49" AS DOUBLE) AS "Feature_49", CAST("ADS"."Feature_50" AS DOUBLE) AS "Feature_50", CAST("ADS"."Feature_51" AS DOUBLE) AS "Feature_51", CAST("ADS"."Feature_52" AS DOUBLE) AS "Feature_52", CAST("ADS"."Feature_53" AS DOUBLE) AS "Feature_53", CAST("ADS"."Feature_54" AS DOUBLE) AS "Feature_54", CAST("ADS"."Feature_55" AS DOUBLE) AS "Feature_55", CAST("ADS"."Feature_56" AS DOUBLE) AS "Feature_56", CAST("ADS"."Feature_57" AS DOUBLE) AS "Feature_57", CAST("ADS"."Feature_58" AS DOUBLE) AS "Feature_58", CAST("ADS"."Feature_59" AS DOUBLE) AS "Feature_59", CAST("ADS"."Feature_60" AS DOUBLE) AS "Feature_60", CAST("ADS"."Feature_61" AS DOUBLE) AS "Feature_61", CAST("ADS"."Feature_62" AS DOUBLE) AS "Feature_62", CAST("ADS"."Feature_63" AS DOUBLE) AS "Feature_63" 
FROM "DIGITS" AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.04349980492916753 * "IL"."Feature_0" + 0.25211417060296415 * "IL"."Feature_1" + 1.4936815563933135 * "IL"."Feature_2" + -0.2287669058589778 * "IL"."Feature_3" + 2.00364966541813 * "IL"."Feature_4" + 2.169674320450325 * "IL"."Feature_5" + -1.206920817873404 * "IL"."Feature_6" + -0.046002424730667145 * "IL"."Feature_7" + -0.09791367436747524 * "IL"."Feature_8" + 1.1695678544003627 * "IL"."Feature_9" + 0.4498970530407657 * "IL"."Feature_10" + 0.06874682140285386 * "IL"."Feature_11" + 0.9925747585275227 * "IL"."Feature_12" + 2.9369736096660426 * "IL"."Feature_13" + 0.86221055548846 * "IL"."Feature_14" + 0.12999286231239163 * "IL"."Feature_15" + -0.07004808799022355 * "IL"."Feature_16" + -0.6274005326949155 * "IL"."Feature_17" + -2.298753235862819 * "IL"."Feature_18" + -1.6844782652380885 * "IL"."Feature_19" + 3.3872199768378968 * "IL"."Feature_20" + 0.616224925643874 * "IL"."Feature_21" + 0.5636122967794039 * "IL"."Feature_22" + -0.24450302590435416 * "IL"."Feature_23" + 0.17413256683044334 * "IL"."Feature_24" + -1.5186113813723752 * "IL"."Feature_25" + -2.474368831415074 * "IL"."Feature_26" + -0.29957142539428877 * "IL"."Feature_27" + 2.271704610747708 * "IL"."Feature_28" + -1.8568159959542765 * "IL"."Feature_29" + -1.767329307760536 * "IL"."Feature_30" + 0.19245617930335673 * "IL"."Feature_31" + -0.29101522865560064 * "IL"."Feature_32" + -1.4672464293649536 * "IL"."Feature_33" + -2.870061782304601 * "IL"."Feature_34" + -0.024546530781279996 * "IL"."Feature_35" + 2.141854506807176 * "IL"."Feature_36" + -1.4889074757665566 * "IL"."Feature_37" + -3.3334412999981833 * "IL"."Feature_38" + 0.11352874552061201 * "IL"."Feature_39" + 0.02622077199615494 * "IL"."Feature_40" + 0.046763449947760376 * "IL"."Feature_41" + -2.019066995938978 * "IL"."Feature_42" + -0.09270448265674025 * "IL"."Feature_43" + -0.6361685827307577 * "IL"."Feature_44" + -1.738991155420743 * "IL"."Feature_45" + -0.13014401575715337 * "IL"."Feature_46" + 0.1364383322978907 * "IL"."Feature_47" + 0.06973665226453532 * "IL"."Feature_48" + 0.9275777585943112 * "IL"."Feature_49" + 0.5843372196534297 * "IL"."Feature_50" + 0.8146447099295683 * "IL"."Feature_51" + 2.9801751494085438 * "IL"."Feature_52" + 2.780584834700434 * "IL"."Feature_53" + 1.362898831304602 * "IL"."Feature_54" + -0.5371690730486779 * "IL"."Feature_55" + -0.11721324151207436 * "IL"."Feature_56" + 0.212342672016338 * "IL"."Feature_57" + 2.326505356969855 * "IL"."Feature_58" + 0.6775678077249581 * "IL"."Feature_59" + 2.341401798194978 * "IL"."Feature_60" + 1.83414931466166 * "IL"."Feature_61" + -0.07899440041573193 * "IL"."Feature_62" + -0.7341343148841231 * "IL"."Feature_63" + -0.254758480314627 AS "NEUR_1_1", 0.05795911672254544 * "IL"."Feature_0" + 0.002867850098875508 * "IL"."Feature_1" + -0.19878891751908867 * "IL"."Feature_2" + 0.12359428688926424 * "IL"."Feature_3" + 0.024278836738773332 * "IL"."Feature_4" + 0.1785813740279295 * "IL"."Feature_5" + -0.13727219537869062 * "IL"."Feature_6" + -0.2859431891292194 * "IL"."Feature_7" + 0.2522495400012134 * "IL"."Feature_8" + -0.04559100129424811 * "IL"."Feature_9" + -0.2067871386768382 * "IL"."Feature_10" + -0.1153004686513189 * "IL"."Feature_11" + -0.2545909546842983 * "IL"."Feature_12" + 0.09934817594395048 * "IL"."Feature_13" + 0.02266889561370415 * "IL"."Feature_14" + -0.14053574098968674 * "IL"."Feature_15" + 0.0866272142362231 * "IL"."Feature_16" + -0.1959320443338556 * "IL"."Feature_17" + 0.023122298492729742 * "IL"."Feature_18" + 0.11906802505761696 * "IL"."Feature_19" + -0.3334938230861079 * "IL"."Feature_20" + -0.04661719055230998 * "IL"."Feature_21" + -0.22338043064965357 * "IL"."Feature_22" + -0.0013668067884368906 * "IL"."Feature_23" + 0.13658211438455178 * "IL"."Feature_24" + -0.05273055143868943 * "IL"."Feature_25" + 0.04284008377051584 * "IL"."Feature_26" + 0.10932603111230384 * "IL"."Feature_27" + -0.10743216765282584 * "IL"."Feature_28" + -0.2729048747028812 * "IL"."Feature_29" + -0.031165660952282234 * "IL"."Feature_30" + -0.21137541497308895 * "IL"."Feature_31" + -0.24008806215573697 * "IL"."Feature_32" + 0.08021677990445863 * "IL"."Feature_33" + -0.23001779511508555 * "IL"."Feature_34" + 0.019610514661037727 * "IL"."Feature_35" + 0.18305645248743985 * "IL"."Feature_36" + -0.2912306868272452 * "IL"."Feature_37" + 0.24792818381945753 * "IL"."Feature_38" + 0.14785063062026402 * "IL"."Feature_39" + 0.2583410398521853 * "IL"."Feature_40" + 0.023764636196255125 * "IL"."Feature_41" + 0.1656674520613373 * "IL"."Feature_42" + 0.0010534132859118307 * "IL"."Feature_43" + 0.20534353452364343 * "IL"."Feature_44" + -0.22410398879029655 * "IL"."Feature_45" + 0.06506529957344974 * "IL"."Feature_46" + 0.20911011135293775 * "IL"."Feature_47" + -0.045732334400849006 * "IL"."Feature_48" + -0.10707659813146116 * "IL"."Feature_49" + 0.06497202505744928 * "IL"."Feature_50" + -0.14864672566692158 * "IL"."Feature_51" + -0.2454262555676773 * "IL"."Feature_52" + -0.09843831627817373 * "IL"."Feature_53" + 0.27128630653677094 * "IL"."Feature_54" + -0.05243089331570583 * "IL"."Feature_55" + 0.08182074130953944 * "IL"."Feature_56" + 0.06907966115164739 * "IL"."Feature_57" + 0.13415958648098353 * "IL"."Feature_58" + -0.17756548467761207 * "IL"."Feature_59" + -0.18545903485919477 * "IL"."Feature_60" + 0.2009991047263734 * "IL"."Feature_61" + -0.18884540860619084 * "IL"."Feature_62" + 0.08192393088370556 * "IL"."Feature_63" + 0.2828096222586792 AS "NEUR_1_2", 0.2835761795216313 * "IL"."Feature_0" + -0.1962274503912999 * "IL"."Feature_1" + 0.12575675057757424 * "IL"."Feature_2" + -0.018418202612177498 * "IL"."Feature_3" + -0.24313479750439054 * "IL"."Feature_4" + -0.1300117498719825 * "IL"."Feature_5" + 0.1844809314437911 * "IL"."Feature_6" + -0.17949155135602088 * "IL"."Feature_7" + -0.2231998849655415 * "IL"."Feature_8" + 0.23776388626329462 * "IL"."Feature_9" + -0.059661391649654394 * "IL"."Feature_10" + -0.05821341936579014 * "IL"."Feature_11" + 0.15016857149668694 * "IL"."Feature_12" + -0.2070287189729577 * "IL"."Feature_13" + -0.27023422563631344 * "IL"."Feature_14" + -0.22776318188132696 * "IL"."Feature_15" + 0.05994395677431329 * "IL"."Feature_16" + -0.04735279005920224 * "IL"."Feature_17" + 0.15404887734768347 * "IL"."Feature_18" + -0.07175161277956893 * "IL"."Feature_19" + -0.13488826430634623 * "IL"."Feature_20" + 0.1061377881580606 * "IL"."Feature_21" + -0.30125202632565307 * "IL"."Feature_22" + 0.16476109910141665 * "IL"."Feature_23" + 0.29108321810356563 * "IL"."Feature_24" + 0.050672158975574505 * "IL"."Feature_25" + 0.06745775465212657 * "IL"."Feature_26" + 0.22845218905461653 * "IL"."Feature_27" + 0.045559210311209034 * "IL"."Feature_28" + 0.05927431106235088 * "IL"."Feature_29" + -0.267422016731511 * "IL"."Feature_30" + 0.10994106193566937 * "IL"."Feature_31" + -0.21833348211288298 * "IL"."Feature_32" + -0.1458326754771082 * "IL"."Feature_33" + -0.09872036603844109 * "IL"."Feature_34" + -0.2674505269755817 * "IL"."Feature_35" + 0.15076960678308957 * "IL"."Feature_36" + 0.01833197306772777 * "IL"."Feature_37" + -0.038668858314369094 * "IL"."Feature_38" + -0.2614710649336075 * "IL"."Feature_39" + 0.04018896165900406 * "IL"."Feature_40" + -0.0864056281458875 * "IL"."Feature_41" + -0.15545888350317547 * "IL"."Feature_42" + -0.10231213666741967 * "IL"."Feature_43" + -0.07861837228901523 * "IL"."Feature_44" + -0.31531219492187407 * "IL"."Feature_45" + 0.22447734325600935 * "IL"."Feature_46" + 0.20039608171301349 * "IL"."Feature_47" + -0.051536406569482295 * "IL"."Feature_48" + -0.1367121432297324 * "IL"."Feature_49" + 0.12003285219750784 * "IL"."Feature_50" + -0.008892536446259258 * "IL"."Feature_51" + 0.24565963899760113 * "IL"."Feature_52" + 0.156265742346697 * "IL"."Feature_53" + -0.0550285677757887 * "IL"."Feature_54" + -0.1760785381553807 * "IL"."Feature_55" + 0.05006147989355194 * "IL"."Feature_56" + -0.046812456696156114 * "IL"."Feature_57" + -0.14942627461038896 * "IL"."Feature_58" + -0.06966282217038983 * "IL"."Feature_59" + -0.2090521250158524 * "IL"."Feature_60" + -0.2630186476038373 * "IL"."Feature_61" + -0.14100697185259914 * "IL"."Feature_62" + 0.1905426028307965 * "IL"."Feature_63" + -0.30053985923854604 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CAST(greatest("HL_BA_1"."NEUR_1_1", ?) AS DOUBLE) AS "NEUR_1_1", CAST(greatest("HL_BA_1"."NEUR_1_2", ?) AS DOUBLE) AS "NEUR_1_2", CAST(greatest("HL_BA_1"."NEUR_1_3", ?) AS DOUBLE) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1"

-- Code For temporary table tmp_20180417025630_clg0n7_ol_softmax_1 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417025630_clg0n7_ol_softmax_1 (
	"KEY" BIGINT, 
	"NEUR_3_1" FLOAT, 
	"NEUR_3_2" FLOAT, 
	"NEUR_3_3" FLOAT, 
	"NEUR_3_4" FLOAT, 
	"NEUR_3_5" FLOAT, 
	"NEUR_3_6" FLOAT, 
	"NEUR_3_7" FLOAT, 
	"NEUR_3_8" FLOAT, 
	"NEUR_3_9" FLOAT, 
	"NEUR_3_10" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417025630_clg0n7_ol_softmax_1 part 2/2. Populate

INSERT INTO tmp_20180417025630_clg0n7_ol_softmax_1 WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -0.5573364901029748 * "HL_1_relu_1"."NEUR_1_1" + -0.8641534243965675 * "HL_1_relu_1"."NEUR_1_2" + -0.2766604780895476 * "HL_1_relu_1"."NEUR_1_3" + 2.295386642805444 AS "NEUR_2_1", 0.011735522860248504 * "HL_1_relu_1"."NEUR_1_1" + -0.40341198658333843 * "HL_1_relu_1"."NEUR_1_2" + 0.18612367383081677 * "HL_1_relu_1"."NEUR_1_3" + -0.508232954910367 AS "NEUR_2_2", -0.05092130493601808 * "HL_1_relu_1"."NEUR_1_1" + 0.8491721010509943 * "HL_1_relu_1"."NEUR_1_2" + 0.8245555740350957 * "HL_1_relu_1"."NEUR_1_3" + -0.28455923399573535 AS "NEUR_2_3", -0.0038478434623372155 * "HL_1_relu_1"."NEUR_1_1" + 0.4002369724982778 * "HL_1_relu_1"."NEUR_1_2" + -0.2831833471670811 * "HL_1_relu_1"."NEUR_1_3" + -0.6915591457579999 AS "NEUR_2_4", 0.06290543230562325 * "HL_1_relu_1"."NEUR_1_1" + -0.26240803178662425 * "HL_1_relu_1"."NEUR_1_2" + 0.10991972529064754 * "HL_1_relu_1"."NEUR_1_3" + -3.8002843904832266 AS "NEUR_2_5" 
FROM tmp_20180417025630_oz96gt_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CAST(greatest("HL_BA_2"."NEUR_2_1", ?) AS DOUBLE) AS "NEUR_2_1", CAST(greatest("HL_BA_2"."NEUR_2_2", ?) AS DOUBLE) AS "NEUR_2_2", CAST(greatest("HL_BA_2"."NEUR_2_3", ?) AS DOUBLE) AS "NEUR_2_3", CAST(greatest("HL_BA_2"."NEUR_2_4", ?) AS DOUBLE) AS "NEUR_2_4", CAST(greatest("HL_BA_2"."NEUR_2_5", ?) AS DOUBLE) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 1.7631543743244673 * "HL_2_relu"."NEUR_2_1" + 0.08478900358861542 * "HL_2_relu"."NEUR_2_2" + -0.31067136477101054 * "HL_2_relu"."NEUR_2_3" + -1.623754710269348 * "HL_2_relu"."NEUR_2_4" + -2.1982781825403923 * "HL_2_relu"."NEUR_2_5" + 2.418473832045558 AS "NEUR_3_1", -1.479325083416576 * "HL_2_relu"."NEUR_2_1" + 0.1774594367698226 * "HL_2_relu"."NEUR_2_2" + -0.5627184075188656 * "HL_2_relu"."NEUR_2_3" + -0.10272848293932821 * "HL_2_relu"."NEUR_2_4" + 0.5029363782804251 * "HL_2_relu"."NEUR_2_5" + -0.4498782763969936 AS "NEUR_3_2", -2.458115466921616 * "HL_2_relu"."NEUR_2_1" + 0.04835942906779717 * "HL_2_relu"."NEUR_2_2" + -0.3021882866983094 * "HL_2_relu"."NEUR_2_3" + 1.5533702652537749 * "HL_2_relu"."NEUR_2_4" + 1.0498026762505868 * "HL_2_relu"."NEUR_2_5" + -6.0488670401063915 AS "NEUR_3_3", -2.321493263283275 * "HL_2_relu"."NEUR_2_1" + 0.7884566796564871 * "HL_2_relu"."NEUR_2_2" + 0.37717187722893847 * "HL_2_relu"."NEUR_2_3" + 0.6463747005857703 * "HL_2_relu"."NEUR_2_4" + 0.8280526719890983 * "HL_2_relu"."NEUR_2_5" + -4.921429725102976 AS "NEUR_3_4", 2.671400256313335 * "HL_2_relu"."NEUR_2_1" + -0.5455981949374265 * "HL_2_relu"."NEUR_2_2" + -0.05171142318335013 * "HL_2_relu"."NEUR_2_3" + -0.579261396741701 * "HL_2_relu"."NEUR_2_4" + -1.7071191910226649 * "HL_2_relu"."NEUR_2_5" + 0.9205226061588196 AS "NEUR_3_5", 0.6722143122863938 * "HL_2_relu"."NEUR_2_1" + 0.6067269957823982 * "HL_2_relu"."NEUR_2_2" + -0.5129783870992828 * "HL_2_relu"."NEUR_2_3" + 0.4160288680016551 * "HL_2_relu"."NEUR_2_4" + -0.010901967290849957 * "HL_2_relu"."NEUR_2_5" + 1.561244998748783 AS "NEUR_3_6", 1.9439298053984426 * "HL_2_relu"."NEUR_2_1" + -0.26371450108381644 * "HL_2_relu"."NEUR_2_2" + 0.18261869812780884 * "HL_2_relu"."NEUR_2_3" + -0.5653842051475331 * "HL_2_relu"."NEUR_2_4" + -0.40648565584758256 * "HL_2_relu"."NEUR_2_5" + 2.165341102861783 AS "NEUR_3_7", 0.5843352354619888 * "HL_2_relu"."NEUR_2_1" + 0.3118541162145854 * "HL_2_relu"."NEUR_2_2" + -0.35897521439152547 * "HL_2_relu"."NEUR_2_3" + 0.2522708017773131 * "HL_2_relu"."NEUR_2_4" + 0.06022024802060057 * "HL_2_relu"."NEUR_2_5" + 1.4480842648965515 AS "NEUR_3_8", -1.428650563547325 * "HL_2_relu"."NEUR_2_1" + 0.8955648131371908 * "HL_2_relu"."NEUR_2_2" + 0.5430820601091934 * "HL_2_relu"."NEUR_2_3" + -0.07500855690850775 * "HL_2_relu"."NEUR_2_4" + 0.2908650909979482 * "HL_2_relu"."NEUR_2_5" + -0.17924492588852484 AS "NEUR_3_9", -0.2695441151569448 * "HL_2_relu"."NEUR_2_1" + -0.4425685310889576 * "HL_2_relu"."NEUR_2_2" + -0.398726480687509 * "HL_2_relu"."NEUR_2_3" + 0.04545811357500226 * "HL_2_relu"."NEUR_2_4" + 0.46928397530255994 * "HL_2_relu"."NEUR_2_5" + 0.47855648068455575 AS "NEUR_3_10" 
FROM "HL_2_relu"), 
"OL_softmax" AS 
(SELECT "OL_BA"."KEY" AS "KEY", CAST("OL_BA"."NEUR_3_1" AS DOUBLE) AS "NEUR_3_1", CAST("OL_BA"."NEUR_3_2" AS DOUBLE) AS "NEUR_3_2", CAST("OL_BA"."NEUR_3_3" AS DOUBLE) AS "NEUR_3_3", CAST("OL_BA"."NEUR_3_4" AS DOUBLE) AS "NEUR_3_4", CAST("OL_BA"."NEUR_3_5" AS DOUBLE) AS "NEUR_3_5", CAST("OL_BA"."NEUR_3_6" AS DOUBLE) AS "NEUR_3_6", CAST("OL_BA"."NEUR_3_7" AS DOUBLE) AS "NEUR_3_7", CAST("OL_BA"."NEUR_3_8" AS DOUBLE) AS "NEUR_3_8", CAST("OL_BA"."NEUR_3_9" AS DOUBLE) AS "NEUR_3_9", CAST("OL_BA"."NEUR_3_10" AS DOUBLE) AS "NEUR_3_10" 
FROM "OL_BA")
 SELECT "OL_softmax_1"."KEY", "OL_softmax_1"."NEUR_3_1", "OL_softmax_1"."NEUR_3_2", "OL_softmax_1"."NEUR_3_3", "OL_softmax_1"."NEUR_3_4", "OL_softmax_1"."NEUR_3_5", "OL_softmax_1"."NEUR_3_6", "OL_softmax_1"."NEUR_3_7", "OL_softmax_1"."NEUR_3_8", "OL_softmax_1"."NEUR_3_9", "OL_softmax_1"."NEUR_3_10" 
FROM (SELECT "OL_softmax"."KEY" AS "KEY", "OL_softmax"."NEUR_3_1" AS "NEUR_3_1", "OL_softmax"."NEUR_3_2" AS "NEUR_3_2", "OL_softmax"."NEUR_3_3" AS "NEUR_3_3", "OL_softmax"."NEUR_3_4" AS "NEUR_3_4", "OL_softmax"."NEUR_3_5" AS "NEUR_3_5", "OL_softmax"."NEUR_3_6" AS "NEUR_3_6", "OL_softmax"."NEUR_3_7" AS "NEUR_3_7", "OL_softmax"."NEUR_3_8" AS "NEUR_3_8", "OL_softmax"."NEUR_3_9" AS "NEUR_3_9", "OL_softmax"."NEUR_3_10" AS "NEUR_3_10" 
FROM "OL_softmax") AS "OL_softmax_1"

-- Model deployment code

WITH orig_cte AS 
(SELECT "OL_softmax_1"."KEY" AS "KEY", "OL_softmax_1"."NEUR_3_1" AS "Score_0", "OL_softmax_1"."NEUR_3_2" AS "Score_1", "OL_softmax_1"."NEUR_3_3" AS "Score_2", "OL_softmax_1"."NEUR_3_4" AS "Score_3", "OL_softmax_1"."NEUR_3_5" AS "Score_4", "OL_softmax_1"."NEUR_3_6" AS "Score_5", "OL_softmax_1"."NEUR_3_7" AS "Score_6", "OL_softmax_1"."NEUR_3_8" AS "Score_7", "OL_softmax_1"."NEUR_3_9" AS "Score_8", "OL_softmax_1"."NEUR_3_10" AS "Score_9", CAST(NULL AS DOUBLE) AS "Proba_0", CAST(NULL AS DOUBLE) AS "Proba_1", CAST(NULL AS DOUBLE) AS "Proba_2", CAST(NULL AS DOUBLE) AS "Proba_3", CAST(NULL AS DOUBLE) AS "Proba_4", CAST(NULL AS DOUBLE) AS "Proba_5", CAST(NULL AS DOUBLE) AS "Proba_6", CAST(NULL AS DOUBLE) AS "Proba_7", CAST(NULL AS DOUBLE) AS "Proba_8", CAST(NULL AS DOUBLE) AS "Proba_9", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", CAST(NULL AS DOUBLE) AS "LogProba_2", CAST(NULL AS DOUBLE) AS "LogProba_3", CAST(NULL AS DOUBLE) AS "LogProba_4", CAST(NULL AS DOUBLE) AS "LogProba_5", CAST(NULL AS DOUBLE) AS "LogProba_6", CAST(NULL AS DOUBLE) AS "LogProba_7", CAST(NULL AS DOUBLE) AS "LogProba_8", CAST(NULL AS DOUBLE) AS "LogProba_9", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM tmp_20180417025630_clg0n7_ol_softmax_1 AS "OL_softmax_1"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 4 AS class, orig_cte."LogProba_4" AS "LogProba", orig_cte."Proba_4" AS "Proba", orig_cte."Score_4" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 5 AS class, orig_cte."LogProba_5" AS "LogProba", orig_cte."Proba_5" AS "Proba", orig_cte."Score_5" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 6 AS class, orig_cte."LogProba_6" AS "LogProba", orig_cte."Proba_6" AS "Proba", orig_cte."Score_6" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 7 AS class, orig_cte."LogProba_7" AS "LogProba", orig_cte."Proba_7" AS "Proba", orig_cte."Score_7" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 8 AS class, orig_cte."LogProba_8" AS "LogProba", orig_cte."Proba_8" AS "Proba", orig_cte."Score_8" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 9 AS class, orig_cte."LogProba_9" AS "LogProba", orig_cte."Proba_9" AS "Proba", orig_cte."Score_9" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Score_4" AS "Score_4", orig_cte."Score_5" AS "Score_5", orig_cte."Score_6" AS "Score_6", orig_cte."Score_7" AS "Score_7", orig_cte."Score_8" AS "Score_8", orig_cte."Score_9" AS "Score_9", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."Proba_4" AS "Proba_4", orig_cte."Proba_5" AS "Proba_5", orig_cte."Proba_6" AS "Proba_6", orig_cte."Proba_7" AS "Proba_7", orig_cte."Proba_8" AS "Proba_8", orig_cte."Proba_9" AS "Proba_9", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."LogProba_4" AS "LogProba_4", orig_cte."LogProba_5" AS "LogProba_5", orig_cte."LogProba_6" AS "LogProba_6", orig_cte."LogProba_7" AS "LogProba_7", orig_cte."LogProba_8" AS "LogProba_8", orig_cte."LogProba_9" AS "LogProba_9", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Score_4" AS "Score_4", score_max."Score_5" AS "Score_5", score_max."Score_6" AS "Score_6", score_max."Score_7" AS "Score_7", score_max."Score_8" AS "Score_8", score_max."Score_9" AS "Score_9", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."Proba_4" AS "Proba_4", score_max."Proba_5" AS "Proba_5", score_max."Proba_6" AS "Proba_6", score_max."Proba_7" AS "Proba_7", score_max."Proba_8" AS "Proba_8", score_max."Proba_9" AS "Proba_9", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."LogProba_4" AS "LogProba_4", score_max."LogProba_5" AS "LogProba_5", score_max."LogProba_6" AS "LogProba_6", score_max."LogProba_7" AS "LogProba_7", score_max."LogProba_8" AS "LogProba_8", score_max."LogProba_9" AS "LogProba_9", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(score_max."Score_0" - score_max."max_Score") AS "exp_delta_Score_0", exp(score_max."Score_1" - score_max."max_Score") AS "exp_delta_Score_1", exp(score_max."Score_2" - score_max."max_Score") AS "exp_delta_Score_2", exp(score_max."Score_3" - score_max."max_Score") AS "exp_delta_Score_3", exp(score_max."Score_4" - score_max."max_Score") AS "exp_delta_Score_4", exp(score_max."Score_5" - score_max."max_Score") AS "exp_delta_Score_5", exp(score_max."Score_6" - score_max."max_Score") AS "exp_delta_Score_6", exp(score_max."Score_7" - score_max."max_Score") AS "exp_delta_Score_7", exp(score_max."Score_8" - score_max."max_Score") AS "exp_delta_Score_8", exp(score_max."Score_9" - score_max."max_Score") AS "exp_delta_Score_9" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS class, score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS class, score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 2 AS class, score_soft_max_deltas."exp_delta_Score_2" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 3 AS class, score_soft_max_deltas."exp_delta_Score_3" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 4 AS class, score_soft_max_deltas."exp_delta_Score_4" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 5 AS class, score_soft_max_deltas."exp_delta_Score_5" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 6 AS class, score_soft_max_deltas."exp_delta_Score_6" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 7 AS class, score_soft_max_deltas."exp_delta_Score_7" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 8 AS class, score_soft_max_deltas."exp_delta_Score_8" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 9 AS class, score_soft_max_deltas."exp_delta_Score_9" AS "exp_delta_Score" 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Score_2" AS "Score_2", score_soft_max_deltas."Score_3" AS "Score_3", score_soft_max_deltas."Score_4" AS "Score_4", score_soft_max_deltas."Score_5" AS "Score_5", score_soft_max_deltas."Score_6" AS "Score_6", score_soft_max_deltas."Score_7" AS "Score_7", score_soft_max_deltas."Score_8" AS "Score_8", score_soft_max_deltas."Score_9" AS "Score_9", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."Proba_2" AS "Proba_2", score_soft_max_deltas."Proba_3" AS "Proba_3", score_soft_max_deltas."Proba_4" AS "Proba_4", score_soft_max_deltas."Proba_5" AS "Proba_5", score_soft_max_deltas."Proba_6" AS "Proba_6", score_soft_max_deltas."Proba_7" AS "Proba_7", score_soft_max_deltas."Proba_8" AS "Proba_8", score_soft_max_deltas."Proba_9" AS "Proba_9", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."LogProba_2" AS "LogProba_2", score_soft_max_deltas."LogProba_3" AS "LogProba_3", score_soft_max_deltas."LogProba_4" AS "LogProba_4", score_soft_max_deltas."LogProba_5" AS "LogProba_5", score_soft_max_deltas."LogProba_6" AS "LogProba_6", score_soft_max_deltas."LogProba_7" AS "LogProba_7", score_soft_max_deltas."LogProba_8" AS "LogProba_8", score_soft_max_deltas."LogProba_9" AS "LogProba_9", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max_deltas."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max_deltas."exp_delta_Score_3" AS "exp_delta_Score_3", score_soft_max_deltas."exp_delta_Score_4" AS "exp_delta_Score_4", score_soft_max_deltas."exp_delta_Score_5" AS "exp_delta_Score_5", score_soft_max_deltas."exp_delta_Score_6" AS "exp_delta_Score_6", score_soft_max_deltas."exp_delta_Score_7" AS "exp_delta_Score_7", score_soft_max_deltas."exp_delta_Score_8" AS "exp_delta_Score_8", score_soft_max_deltas."exp_delta_Score_9" AS "exp_delta_Score_9", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") AS sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Score_3" AS "Score_3", score_soft_max."Score_4" AS "Score_4", score_soft_max."Score_5" AS "Score_5", score_soft_max."Score_6" AS "Score_6", score_soft_max."Score_7" AS "Score_7", score_soft_max."Score_8" AS "Score_8", score_soft_max."Score_9" AS "Score_9", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."Proba_3" AS "Proba_3", score_soft_max."Proba_4" AS "Proba_4", score_soft_max."Proba_5" AS "Proba_5", score_soft_max."Proba_6" AS "Proba_6", score_soft_max."Proba_7" AS "Proba_7", score_soft_max."Proba_8" AS "Proba_8", score_soft_max."Proba_9" AS "Proba_9", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."LogProba_3" AS "LogProba_3", score_soft_max."LogProba_4" AS "LogProba_4", score_soft_max."LogProba_5" AS "LogProba_5", score_soft_max."LogProba_6" AS "LogProba_6", score_soft_max."LogProba_7" AS "LogProba_7", score_soft_max."LogProba_8" AS "LogProba_8", score_soft_max."LogProba_9" AS "LogProba_9", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."exp_delta_Score_3" AS "exp_delta_Score_3", score_soft_max."exp_delta_Score_4" AS "exp_delta_Score_4", score_soft_max."exp_delta_Score_5" AS "exp_delta_Score_5", score_soft_max."exp_delta_Score_6" AS "exp_delta_Score_6", score_soft_max."exp_delta_Score_7" AS "exp_delta_Score_7", score_soft_max."exp_delta_Score_8" AS "exp_delta_Score_8", score_soft_max."exp_delta_Score_9" AS "exp_delta_Score_9", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Score_3" AS "Score_3", score_soft_max."Score_4" AS "Score_4", score_soft_max."Score_5" AS "Score_5", score_soft_max."Score_6" AS "Score_6", score_soft_max."Score_7" AS "Score_7", score_soft_max."Score_8" AS "Score_8", score_soft_max."Score_9" AS "Score_9", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."Proba_3" AS "Proba_3", score_soft_max."Proba_4" AS "Proba_4", score_soft_max."Proba_5" AS "Proba_5", score_soft_max."Proba_6" AS "Proba_6", score_soft_max."Proba_7" AS "Proba_7", score_soft_max."Proba_8" AS "Proba_8", score_soft_max."Proba_9" AS "Proba_9", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."LogProba_3" AS "LogProba_3", score_soft_max."LogProba_4" AS "LogProba_4", score_soft_max."LogProba_5" AS "LogProba_5", score_soft_max."LogProba_6" AS "LogProba_6", score_soft_max."LogProba_7" AS "LogProba_7", score_soft_max."LogProba_8" AS "LogProba_8", score_soft_max."LogProba_9" AS "LogProba_9", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."exp_delta_Score_3" AS "exp_delta_Score_3", score_soft_max."exp_delta_Score_4" AS "exp_delta_Score_4", score_soft_max."exp_delta_Score_5" AS "exp_delta_Score_5", score_soft_max."exp_delta_Score_6" AS "exp_delta_Score_6", score_soft_max."exp_delta_Score_7" AS "exp_delta_Score_7", score_soft_max."exp_delta_Score_8" AS "exp_delta_Score_8", score_soft_max."exp_delta_Score_9" AS "exp_delta_Score_9", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1", soft_max_comp."SoftProba_2" AS "SoftProba_2", soft_max_comp."SoftProba_3" AS "SoftProba_3", soft_max_comp."SoftProba_4" AS "SoftProba_4", soft_max_comp."SoftProba_5" AS "SoftProba_5", soft_max_comp."SoftProba_6" AS "SoftProba_6", soft_max_comp."SoftProba_7" AS "SoftProba_7", soft_max_comp."SoftProba_8" AS "SoftProba_8", soft_max_comp."SoftProba_9" AS "SoftProba_9" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1", score_soft_max."exp_delta_Score_2" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_2", score_soft_max."exp_delta_Score_3" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_3", score_soft_max."exp_delta_Score_4" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_4", score_soft_max."exp_delta_Score_5" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_5", score_soft_max."exp_delta_Score_6" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_6", score_soft_max."exp_delta_Score_7" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_7", score_soft_max."exp_delta_Score_8" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_8", score_soft_max."exp_delta_Score_9" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_9" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", CAST(NULL AS DOUBLE) AS "Score_2", CAST(NULL AS DOUBLE) AS "Score_3", CAST(NULL AS DOUBLE) AS "Score_4", CAST(NULL AS DOUBLE) AS "Score_5", CAST(NULL AS DOUBLE) AS "Score_6", CAST(NULL AS DOUBLE) AS "Score_7", CAST(NULL AS DOUBLE) AS "Score_8", CAST(NULL AS DOUBLE) AS "Score_9", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", arg_max_cte."SoftProba_2" AS "Proba_2", arg_max_cte."SoftProba_3" AS "Proba_3", arg_max_cte."SoftProba_4" AS "Proba_4", arg_max_cte."SoftProba_5" AS "Proba_5", arg_max_cte."SoftProba_6" AS "Proba_6", arg_max_cte."SoftProba_7" AS "Proba_7", arg_max_cte."SoftProba_8" AS "Proba_8", arg_max_cte."SoftProba_9" AS "Proba_9", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."SoftProba_2" IS NULL OR arg_max_cte."SoftProba_2" > 0.0) THEN ln(arg_max_cte."SoftProba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."SoftProba_3" IS NULL OR arg_max_cte."SoftProba_3" > 0.0) THEN ln(arg_max_cte."SoftProba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", CASE WHEN (arg_max_cte."SoftProba_4" IS NULL OR arg_max_cte."SoftProba_4" > 0.0) THEN ln(arg_max_cte."SoftProba_4") ELSE -1.79769313486231e+308 END AS "LogProba_4", CASE WHEN (arg_max_cte."SoftProba_5" IS NULL OR arg_max_cte."SoftProba_5" > 0.0) THEN ln(arg_max_cte."SoftProba_5") ELSE -1.79769313486231e+308 END AS "LogProba_5", CASE WHEN (arg_max_cte."SoftProba_6" IS NULL OR arg_max_cte."SoftProba_6" > 0.0) THEN ln(arg_max_cte."SoftProba_6") ELSE -1.79769313486231e+308 END AS "LogProba_6", CASE WHEN (arg_max_cte."SoftProba_7" IS NULL OR arg_max_cte."SoftProba_7" > 0.0) THEN ln(arg_max_cte."SoftProba_7") ELSE -1.79769313486231e+308 END AS "LogProba_7", CASE WHEN (arg_max_cte."SoftProba_8" IS NULL OR arg_max_cte."SoftProba_8" > 0.0) THEN ln(arg_max_cte."SoftProba_8") ELSE -1.79769313486231e+308 END AS "LogProba_8", CASE WHEN (arg_max_cte."SoftProba_9" IS NULL OR arg_max_cte."SoftProba_9" > 0.0) THEN ln(arg_max_cte."SoftProba_9") ELSE -1.79769313486231e+308 END AS "LogProba_9", arg_max_cte."arg_max_Score" AS "Decision", greatest(arg_max_cte."SoftProba_0", arg_max_cte."SoftProba_1", arg_max_cte."SoftProba_2", arg_max_cte."SoftProba_3", arg_max_cte."SoftProba_4", arg_max_cte."SoftProba_5", arg_max_cte."SoftProba_6", arg_max_cte."SoftProba_7", arg_max_cte."SoftProba_8", arg_max_cte."SoftProba_9") AS "DecisionProba" 
FROM arg_max_cte