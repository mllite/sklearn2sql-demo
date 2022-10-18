-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_sigmoid_Pipeline
-- Dataset : freidman1
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018190138_AYJ0NP2_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190138_AYJ0NP2_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE, 
	imputer_output_6 DOUBLE, 
	imputer_output_7 DOUBLE, 
	imputer_output_8 DOUBLE, 
	imputer_output_9 DOUBLE, 
	imputer_output_10 DOUBLE, 
	imputer_output_11 DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190138_AYJ0NP2_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018190138_AYJ0NP2_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9, imputer_output_10, imputer_output_11) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9, "T".imputer_output_10, "T".imputer_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9, "ADS_imp_1_OUT".imputer_output_10 AS imputer_output_10, "ADS_imp_1_OUT".imputer_output_11 AS imputer_output_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.5629846484809591 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.45606442423375926 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.47113817481474773 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.533968020094518 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.4780936262373869 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.5682849224172329 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.47914374714280494 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.4594152477223205 ELSE "ADS"."Feature_7" END AS imputer_output_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.4901106996809651 ELSE "ADS"."Feature_8" END AS imputer_output_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.5378806933707533 ELSE "ADS"."Feature_9" END AS imputer_output_11 
FROM freidman1 AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018190138_AYJ0NP2_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190138_AYJ0NP2_ADS_imp_1_OUT_KEY" ON "TMP_20221018190138_AYJ0NP2_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018190138_BEU187R_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018190138_BEU187R_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE, 
	scaler_output_6 DOUBLE, 
	scaler_output_7 DOUBLE, 
	scaler_output_8 DOUBLE, 
	scaler_output_9 DOUBLE, 
	scaler_output_10 DOUBLE, 
	scaler_output_11 DOUBLE, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018190138_BEU187R_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018190138_BEU187R_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9, scaler_output_10, scaler_output_11) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9, "T".scaler_output_10, "T".scaler_output_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9, "ADS_sca_2_OUT".scaler_output_10 AS scaler_output_10, "ADS_sca_2_OUT".scaler_output_11 AS scaler_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 0.5629846484809591) / 0.2583714683396337 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 0.45606442423375926) / 0.2878721730712705 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 0.47113817481474773) / 0.3109216791553051 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 0.533968020094518) / 0.2826199867400281 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS DOUBLE) - 0.4780936262373869) / 0.286140491317745 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS DOUBLE) - 0.5682849224172329) / 0.29767408106451737 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS DOUBLE) - 0.47914374714280494) / 0.2735314971431575 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS DOUBLE) - 0.4594152477223205) / 0.28721149346998975 AS scaler_output_9, (CAST("ADS_imp_1_OUT".imputer_output_10 AS DOUBLE) - 0.4901106996809651) / 0.2790486717322703 AS scaler_output_10, (CAST("ADS_imp_1_OUT".imputer_output_11 AS DOUBLE) - 0.5378806933707533) / 0.2958192296543193 AS scaler_output_11 
FROM "TMP_20221018190138_AYJ0NP2_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018190138_BEU187R_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018190138_BEU187R_ADS_sca_2_OUT_KEY" ON "TMP_20221018190138_BEU187R_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) AS scaler_output_5, CAST("ADS_sca_2_OUT".scaler_output_6 AS DOUBLE) AS scaler_output_6, CAST("ADS_sca_2_OUT".scaler_output_7 AS DOUBLE) AS scaler_output_7, CAST("ADS_sca_2_OUT".scaler_output_8 AS DOUBLE) AS scaler_output_8, CAST("ADS_sca_2_OUT".scaler_output_9 AS DOUBLE) AS scaler_output_9, CAST("ADS_sca_2_OUT".scaler_output_10 AS DOUBLE) AS scaler_output_10, CAST("ADS_sca_2_OUT".scaler_output_11 AS DOUBLE) AS scaler_output_11 
FROM "TMP_20221018190138_BEU187R_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.1 AS dual_coeff, 0.5067870208512265 AS sv_0, -1.3265829029216323 AS sv_1, 1.4934916261539102 AS sv_2, -0.24729208554702264 AS sv_3, -0.2176048844127298 AS sv_4, -1.2725658182291233 AS sv_5, -1.3862750356794222 AS sv_6, -1.0835979586201392 AS sv_7, 1.0640691245065985 AS sv_8, -0.24843050108227027 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 0.1 AS dual_coeff, 1.4457619587121728 AS sv_0, -0.45215113938733736 AS sv_1, 1.3020069739880047 AS sv_2, 0.9248158657867962 AS sv_3, 1.6339992324495063 AS sv_4, 0.471602715380309 AS sv_5, 1.0236902726380679 AS sv_6, 1.1734656334539684 AS sv_7, -0.34510096274072216 AS sv_8, -0.026167134264266097 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.1 AS dual_coeff, -0.7795551265613678 AS sv_0, 0.4756130566388556 AS sv_1, -0.36917589223980124 AS sv_2, -0.9418571203395795 AS sv_3, -1.0743845309926605 AS sv_4, -1.867739550979002 AS sv_5, -0.5159115638118449 AS sv_6, -1.1124767153031292 AS sv_7, 0.19953243972926904 AS sv_8, -0.11131775348359915 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 0.1 AS dual_coeff, -1.0151596802712823 AS sv_0, 0.9183047218707472 AS sv_1, 0.3594664303586105 AS sv_2, 0.3845508502948606 AS sv_3, 1.5410523072960958 AS sv_4, 0.32333815990514314 AS sv_5, 0.7500691335870233 AS sv_6, -0.18760165504227694 AS sv_7, -1.684742321061924 AS sv_8, -1.401772538704984 AS sv_9 UNION ALL SELECT 4 AS sv_idx, 0.1 AS dual_coeff, 1.133375861192972 AS sv_0, 1.4322283784054002 AS sv_1, -0.4742440987080401 AS sv_2, 1.4448262448450668 AS sv_3, -1.564979633550089 AS sv_4, -0.7014209632678359 AS sv_5, -0.35975870233952834 AS sv_6, -0.0723109905575966 AS sv_7, -1.2084841000401467 AS sv_8, -1.8060309002876391 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 0.1 AS dual_coeff, 0.5741937586934704 AS sv_0, 1.2907142426550566 AS sv_1, 0.7253869745795006 AS sv_2, 0.13211062005784202 AS sv_3, 0.6102287486926927 AS sv_4, -0.5063473055540599 AS sv_5, -0.05638764156732255 AS sv_6, 1.5471530888159195 AS sv_7, 1.5204364809079687 AS sv_8, 1.1050203656978952 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -0.1 AS dual_coeff, -2.120835329648434 AS sv_0, -1.5821641033893452 AS sv_1, -0.4204771590147179 AS sv_2, 1.2289855843326805 AS sv_3, 0.043898134754352114 AS sv_4, 0.5428186200345558 AS sv_5, 0.9956078980980605 AS sv_6, -1.1418905130497181 AS sv_7, -1.7510877164909417 AS sv_8, -1.5305589812963774 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 0.1 AS dual_coeff, 0.33990662300424296 AS sv_0, 1.280573788152331 AS sv_1, -1.053634880826695 AS sv_2, 1.5803010610044073 AS sv_3, -1.6505395866293329 AS sv_4, -1.063053262508225 AS sv_5, 0.15424358951079814 AS sv_6, 0.04486452053834909 AS sv_7, 0.9120871757290964 AS sv_8, 1.3072870750884769 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.1 AS dual_coeff, -0.6136952361961311 AS sv_0, -0.6796692715042094 AS sv_1, -1.390946512687778 AS sv_2, -0.6233118608524243 AS sv_3, -0.9803110550367957 AS sv_4, -1.607715450570412 AS sv_5, -0.10788605847546952 AS sv_6, -1.2987720803711194 AS sv_7, -0.850325397118765 AS sv_8, -0.9939849738899496 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -0.1 AS dual_coeff, 0.331984022123399 AS sv_0, -0.6050529807513185 AS sv_1, 0.5081040118001584 AS sv_2, -1.1733580420912495 AS sv_3, -1.4810479775450385 AS sv_4, 1.1430059366267062 AS sv_5, 0.008395985904663696 AS sv_6, -0.24534974764977216 AS sv_7, -0.6544653965702296 AS sv_8, -1.767206531719298 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 0.1 AS dual_coeff, -0.5250800911591398 AS sv_0, 0.48902187078655207 AS sv_1, 1.6167135174337615 AS sv_2, -1.2501428088100077 AS sv_3, 0.0982361426711333 AS sv_4, -1.3195992348482501 AS sv_5, -1.369737878447187 AS sv_6, -0.943128110567075 AS sv_7, 0.9848995690127772 AS sv_8, -1.623336782837136 AS sv_9 UNION ALL SELECT 11 AS sv_idx, 0.1 AS dual_coeff, -0.4729777775151986 AS sv_0, 1.2942432288382526 AS sv_1, -1.5026902185990336 AS sv_2, 0.081931969527099 AS sv_3, 0.8250760431478493 AS sv_4, 1.2294220745697002 AS sv_5, -0.341820375817671 AS sv_6, -1.287726782671633 AS sv_7, 1.494506302959332 AS sv_8, -0.5919542361240013 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 0.1 AS dual_coeff, 0.7825578070905591 AS sv_0, 0.3997248228000645 AS sv_1, 0.6965869097182928 AS sv_2, 0.37389636833180206 AS sv_3, -1.0417498975381545 AS sv_4, 1.075518782181769 AS sv_5, 1.445769772645329 AS sv_6, -0.4632017337849255 AS sv_7, -0.6707775442500765 AS sv_8, -0.8829132498135542 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.1 AS dual_coeff, -2.107102836304591 AS sv_0, 1.0800414677676404 AS sv_1, 1.4981299301247208 AS sv_2, 0.77686986749436 AS sv_3, -1.2357081711379774 AS sv_4, 1.3982229651132614 AS sv_5, 0.3530060140109391 AS sv_6, -1.334944337428244 AS sv_7, 1.1054090534148115 AS sv_8, 0.3022799529607108 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 0.1 AS dual_coeff, 0.5197200123689821 AS sv_0, 1.69670042053734 AS sv_1, -1.494256254058765 AS sv_2, 1.2194145417593911 AS sv_3, -1.441095788966558 AS sv_4, 1.1060106857202905 AS sv_5, -0.497221606231084 AS sv_6, 0.2952806421745938 AS sv_7, 1.627622937162637 AS sv_8, -1.307266743974428 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 0.1 AS dual_coeff, 0.39241789137752603 AS sv_0, 1.2056550499266316 AS sv_1, -0.40876029801168307 AS sv_2, 0.3527568910413912 AS sv_3, 1.0288103504137818 AS sv_4, 1.248943949668479 AS sv_5, 0.7618939934071481 AS sv_6, 0.5671757902848612 AS sv_7, -1.2719850775158121 AS sv_8, 1.1997589760674303 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -0.1 AS dual_coeff, 1.0142430700286276 AS sv_0, -0.7554344889579421 AS sv_1, 0.20164738040552782 AS sv_2, -0.5493949970659109 AS sv_3, 1.7258247273025344 AS sv_4, 0.6382309258457182 AS sv_5, 1.1416152529881207 AS sv_6, 0.6312792271477967 AS sv_7, 1.0400541199199074 AS sv_8, 0.05818526383756669 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -0.1 AS dual_coeff, 0.8391248275714503 AS sv_0, -1.5693813850679423 AS sv_1, -0.044306299165321895 AS sv_2, 0.7968360491318162 AS sv_3, 0.33091282700959057 AS sv_4, 1.1668117578416817 AS sv_5, -1.1743243009218087 AS sv_6, -1.4294632201359858 AS sv_7, -0.02202987408149027 AS sv_8, 1.3605656881774035 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 0.1 AS dual_coeff, -0.31910872290021247 AS sv_0, 0.9392944496770282 AS sv_1, 1.5497883534680115 AS sv_2, -0.8700967961356445 AS sv_3, 1.2562796813598118 AS sv_4, -1.1167207192319828 AS sv_5, 1.427804916478543 AS sv_6, 0.8046939253894865 AS sv_7, 0.4088131841283075 AS sv_8, -0.17951849091637712 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, 1.1759835426923197 AS sv_0, -1.2118139940822585 AS sv_1, -0.5452569147648042 AS sv_2, -1.5046685681014436 AS sv_3, 0.2891619045023695 AS sv_4, 0.7776913637039673 AS sv_5, 1.2410818757565325 AS sv_6, -0.9110980974074246 AS sv_7, 1.0854113771371572 AS sv_8, -0.9823390667723672 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -0.1 AS dual_coeff, 1.6546927772182016 AS sv_0, -1.4708062936115678 AS sv_1, -0.2542225117349198 AS sv_2, 0.970334893970854 AS sv_3, -0.284074478195057 AS sv_4, 1.1332105964451313 AS sv_5, 1.4692314197940095 AS sv_6, -0.10936654990472222 AS sv_7, -1.2138886023024253 AS sv_8, -0.6102451899822995 AS sv_9 UNION ALL SELECT 21 AS sv_idx, 0.1 AS dual_coeff, 0.48377485065345843 AS sv_0, 0.8956890847478018 AS sv_1, -0.7814424705304112 AS sv_2, -0.7413492936252417 AS sv_3, -0.13594689572113902 AS sv_4, 0.3259727558636071 AS sv_5, 0.5433394492167941 AS sv_6, -0.6119335956585745 AS sv_7, 0.942826410682349 AS sv_8, -0.21231263052658303 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -0.1 AS dual_coeff, -1.6023302457450717 AS sv_0, 0.1583339475181976 AS sv_1, -0.8645058578458519 AS sv_2, 1.5690232227087764 AS sv_3, -0.6671518854241034 AS sv_4, -0.42850870132298646 AS sv_5, -1.4852018655971901 AS sv_6, -0.427671316213745 AS sv_7, 1.3082601892499066 AS sv_8, -1.7161821936884916 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -0.1 AS dual_coeff, 0.7791436004212942 AS sv_0, -0.8596743286443385 AS sv_1, 0.8972591127015436 AS sv_2, 0.042308795603837344 AS sv_3, -1.4766759905234985 AS sv_4, 0.4479795444987382 AS sv_5, -0.7820361467453821 AS sv_6, -1.183161592168932 AS sv_7, -0.4092483354403313 AS sv_8, 0.3612315056690704 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, 1.0163540716834707 AS sv_0, 1.5641680813770045 AS sv_1, -1.4219391961587782 AS sv_2, 0.19475366622676213 AS sv_3, -0.16377186058820195 AS sv_4, 1.1340834579994081 AS sv_5, -0.08426699913044491 AS sv_6, 0.8017532005998322 AS sv_7, 0.9207122972327123 AS sv_8, -1.6048859164681066 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 0.1 AS dual_coeff, -0.8418303310375542 AS sv_0, 1.5794059772580444 AS sv_1, 0.8144547601887837 AS sv_2, 0.2683561593771677 AS sv_3, 1.6437904437761277 AS sv_4, -0.0857718402884655 AS sv_5, 0.4929748118646864 AS sv_6, -0.14399841666758603 AS sv_7, 0.787814212453425 AS sv_8, 1.1539987858805358 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 0.1 AS dual_coeff, -1.132085136352201 AS sv_0, 0.901418794842219 AS sv_1, -1.1855376210400028 AS sv_2, 1.4564965262382703 AS sv_3, -0.989067604456165 AS sv_4, -1.287192709826148 AS sv_5, 1.3146975914227568 AS sv_6, 1.7483812009731485 AS sv_7, -0.00765672910473169 AS sv_8, -0.18966802487366397 AS sv_9 UNION ALL SELECT 27 AS sv_idx, -0.1 AS dual_coeff, -1.8886707962253106 AS sv_0, -0.8270805584779359 AS sv_1, -0.4138253118262203 AS sv_2, -0.2880438117977908 AS sv_3, -0.13514664760025355 AS sv_4, 0.7031292887435714 AS sv_5, 1.2236435350387282 AS sv_6, -0.3704860450346376 AS sv_7, 1.2059154206063813 AS sv_8, 1.1047339132528704 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 0.1 AS dual_coeff, 0.298652945877785 AS sv_0, 0.36463849788058267 AS sv_1, -0.936551939610252 AS sv_2, 1.4625904780557843 AS sv_3, 0.05664582974879215 AS sv_4, -0.0003343942388556232 AS sv_5, 1.2231544563183983 AS sv_6, 1.1195531037743847 AS sv_7, 0.5663402824970262 AS sv_8, -0.5648160941772721 AS sv_9 UNION ALL SELECT 29 AS sv_idx, -0.1 AS dual_coeff, 0.7251384108296299 AS sv_0, -1.472393061587184 AS sv_1, -0.4249525980347541 AS sv_2, -0.02049998885272131 AS sv_3, 1.699894786189821 AS sv_4, -1.3006305918907084 AS sv_5, -0.3270915809465192 AS sv_6, 0.6109376071979224 AS sv_7, -1.7079194508023643 AS sv_8, 0.13588327037583606 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 0.1 AS dual_coeff, -0.7075715712901469 AS sv_0, 1.2557686199382192 AS sv_1, -1.2095995247832825 AS sv_2, -1.620657142652391 AS sv_3, 1.1089487214474851 AS sv_4, 0.8754819335289856 AS sv_5, -1.5841183576102709 AS sv_6, 1.4733495739068174 AS sv_7, -1.6058183460415314 AS sv_8, 0.2361229612546322 AS sv_9 UNION ALL SELECT 31 AS sv_idx, 0.1 AS dual_coeff, 0.10993834176203529 AS sv_0, 0.735628171743746 AS sv_1, 1.293029254155726 AS sv_2, 0.8581114900016342 AS sv_3, 1.6163837173282471 AS sv_4, 1.3771456427095026 AS sv_5, 0.22476839939598164 AS sv_6, 1.430023298967 AS sv_7, 0.7994279090478374 AS sv_8, -0.3968809445759777 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 0.1 AS dual_coeff, 0.2807616912945926 AS sv_0, -0.5058838857624789 AS sv_1, -0.3966175942291259 AS sv_2, 0.7592315127665472 AS sv_3, 1.299936765985117 AS sv_4, 0.7450610852871168 AS sv_5, -1.3043300851068311 AS sv_6, -0.34741350100023505 AS sv_7, -0.6442385571241626 AS sv_8, -1.3360568630362166 AS sv_9 UNION ALL SELECT 33 AS sv_idx, -0.1 AS dual_coeff, -1.009378968378826 AS sv_0, -1.2213253291078967 AS sv_1, 0.693720962239313 AS sv_2, 0.92322179479268 AS sv_3, 0.5609955673106046 AS sv_4, 0.6606427499456801 AS sv_5, 0.24845761366678526 AS sv_6, 1.6357077549061687 AS sv_7, -0.21804609835230376 AS sv_8, 1.0166959155956494 AS sv_9 UNION ALL SELECT 34 AS sv_idx, -0.1 AS dual_coeff, 0.4954874044134974 AS sv_0, -0.8684584593492759 AS sv_1, 1.1964580705751156 AS sv_2, -0.8528529548018084 AS sv_3, 0.5310816278059199 AS sv_4, 1.1527650374058969 AS sv_5, -1.3438597903496678 AS sv_6, -0.04106930891309609 AS sv_7, -1.601930359779528 AS sv_8, 1.5421867174608899 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 0.1 AS dual_coeff, 1.056051178088123 AS sv_0, 0.5116921888952601 AS sv_1, 1.5783958098420996 AS sv_2, -1.7029225132008161 AS sv_3, 0.4956067468954236 AS sv_4, 0.8963609504508504 AS sv_5, -0.15810867804101195 AS sv_6, -0.4243713261257669 AS sv_7, -0.24505988294963704 AS sv_8, -1.755857511488208 AS sv_9 UNION ALL SELECT 36 AS sv_idx, -0.1 AS dual_coeff, -0.09511273841263276 AS sv_0, -0.610294898899078 AS sv_1, -1.005195677545493 AS sv_2, -0.12390037471932835 AS sv_3, 0.3458538303524311 AS sv_4, 1.2280695902975154 AS sv_5, -1.191367677686448 AS sv_6, -1.482615367062796 AS sv_7, 0.7894961768352321 AS sv_8, 1.0930697749396605 AS sv_9 UNION ALL SELECT 37 AS sv_idx, -0.1 AS dual_coeff, -0.9203904375846967 AS sv_0, 0.3518022003013365 AS sv_1, -1.2684586243346392 AS sv_2, -0.9919195281611775 AS sv_3, 1.1470754194396842 AS sv_4, -1.7453241833920532 AS sv_5, 0.008955157699138325 AS sv_6, -0.1639886089012623 AS sv_7, 0.3164061871431094 AS sv_8, 1.1923717553022093 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 0.1 AS dual_coeff, 0.9328625258284126 AS sv_0, -0.024315422470180547 AS sv_1, -1.3020222756727267 AS sv_2, 1.0176817735843398 AS sv_3, -1.1577089350606329 AS sv_4, 0.3877014641686421 AS sv_5, -1.7013859239184324 AS sv_6, -1.2553925404413335 AS sv_7, -1.2718579446514224 AS sv_8, -1.6506637332700744 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 0.1 AS dual_coeff, 0.45298901480690473 AS sv_0, 0.3412375523869295 AS sv_1, -0.43661883753481745 AS sv_2, -0.5489943736656773 AS sv_3, 1.576268355922646 AS sv_4, -0.6513440175280992 AS sv_5, 1.7819204480038542 AS sv_6, -0.5871557761977072 AS sv_7, 1.0508462991514806 AS sv_8, -0.6477438751118543 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 0.1 AS dual_coeff, 0.5141850550853257 AS sv_0, 0.15879692331336695 AS sv_1, 1.0374980151869304 AS sv_2, 1.5352842246575986 AS sv_3, -0.9446874107821644 AS sv_4, -0.42193469562003916 AS sv_5, 0.6831293428141179 AS sv_6, 0.9715709394819769 AS sv_7, -1.5308549435264238 AS sv_8, 0.4041406722490066 AS sv_9 UNION ALL SELECT 41 AS sv_idx, 0.1 AS dual_coeff, 0.8995207981172514 AS sv_0, 0.812720016030792 AS sv_1, -1.4352642725606903 AS sv_2, 0.7794832123430957 AS sv_3, -0.3980072134624079 AS sv_4, -0.7359299089075567 AS sv_5, -0.04743391387420796 AS sv_6, 1.7884839479295447 AS sv_7, -1.703618301803592 AS sv_8, -0.4947974403605647 AS sv_9 UNION ALL SELECT 42 AS sv_idx, -0.1 AS dual_coeff, -1.8298179391724234 AS sv_0, -0.7959476575883369 AS sv_1, -0.1543293074987559 AS sv_2, 0.7786284551012908 AS sv_3, -1.2542415606813888 AS sv_4, 1.2133214747858803 AS sv_5, -1.5889871437444927 AS sv_6, -1.2587567163202005 AS sv_7, -0.5683253533135081 AS sv_8, 0.3065142830121232 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 0.1 AS dual_coeff, -0.4959484422897034 AS sv_0, 1.7203908623546726 AS sv_1, 0.796166158332829 AS sv_2, 0.10805864579595224 AS sv_3, -0.8848234469726766 AS sv_4, 0.28805179488917165 AS sv_5, -0.516351447761798 AS sv_6, 0.44956801799211765 AS sv_7, -0.9780158987777768 AS sv_8, 0.9949699321754163 AS sv_9 UNION ALL SELECT 44 AS sv_idx, -0.1 AS dual_coeff, -0.29112818531677287 AS sv_0, -0.4417823438961026 AS sv_1, -0.7190649064157157 AS sv_2, -0.11176422090742412 AS sv_3, -0.24018878068297203 AS sv_4, -0.41454920367791825 AS sv_5, 0.06963629839772269 AS sv_6, 0.14514653336333871 AS sv_7, 0.12983388003910332 AS sv_8, 0.44325581235717215 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 0.1 AS dual_coeff, 0.1779088404443296 AS sv_0, -1.119889204406406 AS sv_1, -1.4586819529019672 AS sv_2, -0.37904085415668237 AS sv_3, 1.565583294677887 AS sv_4, 1.029919488224141 AS sv_5, 0.13658922405053012 AS sv_6, 0.009484052806931402 AS sv_7, 0.2741200520944042 AS sv_8, 1.058482824750419 AS sv_9 UNION ALL SELECT 46 AS sv_idx, -0.1 AS dual_coeff, -1.2328836564706502 AS sv_0, -1.1593216041738719 AS sv_1, -1.2360162391124727 AS sv_2, -0.15217024365512222 AS sv_3, -0.8171970324926926 AS sv_4, -1.4763326006829993 AS sv_5, -0.4060360121122358 AS sv_6, 0.6575115036642606 AS sv_7, -1.1656358769536912 AS sv_8, -1.098991671049883 AS sv_9 UNION ALL SELECT 47 AS sv_idx, -0.1 AS dual_coeff, -1.004896998755324 AS sv_0, -0.04718963889277303 AS sv_1, -0.7355605025533806 AS sv_2, -0.8879188970740824 AS sv_3, 1.7329348309940553 AS sv_4, 0.44679806849876624 AS sv_5, -1.2546033239557965 AS sv_6, -0.3132504903975395 AS sv_7, -1.4615137915493313 AS sv_8, -0.8022355842773246 AS sv_9 UNION ALL SELECT 48 AS sv_idx, -0.1 AS dual_coeff, -1.0809453656286363 AS sv_0, 0.3480362685001459 AS sv_1, -0.21798902556942237 AS sv_2, -1.8532921531436786 AS sv_3, -0.15154587456491952 AS sv_4, 1.1060721718653521 AS sv_5, 1.4218254601894342 AS sv_6, -0.8325590009987935 AS sv_7, 1.5992636356200565 AS sv_8, 0.7360881786232232 AS sv_9 UNION ALL SELECT 49 AS sv_idx, -0.1 AS dual_coeff, 0.7386850591540732 AS sv_0, -1.076311466635762 AS sv_1, -0.1628526691055773 AS sv_2, -0.7739541085057048 AS sv_3, -1.4561476797830333 AS sv_4, -0.8699561668172026 AS sv_5, -0.9537914599018384 AS sv_6, 0.011266010810025543 AS sv_7, 1.5051499293724473 AS sv_8, 0.06956023007893718 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 0.1 AS dual_coeff, 0.9691863105075711 AS sv_0, 1.7248885479130618 AS sv_1, 1.2644463432844173 AS sv_2, 0.8431990275849832 AS sv_3, -0.2550582839006093 AS sv_4, -0.7302730178084444 AS sv_5, -1.0217973022095688 AS sv_6, -1.2968476739447425 AS sv_7, -1.603671238871663 AS sv_8, 1.2257229424364224 AS sv_9 UNION ALL SELECT 51 AS sv_idx, -0.1 AS dual_coeff, -1.3831104630520137 AS sv_0, 1.6952219517817548 AS sv_1, 0.05925705951145257 AS sv_2, 0.3651727601884 AS sv_3, 0.03092960076315465 AS sv_4, 1.254862027705408 AS sv_5, -0.6130752063948367 AS sv_6, -0.33478052149552184 AS sv_7, -0.4947863488021104 AS sv_8, 1.459369645110766 AS sv_9 UNION ALL SELECT 52 AS sv_idx, -0.1 AS dual_coeff, -0.06870006266556682 AS sv_0, 1.2804016358872021 AS sv_1, -1.3204821292127344 AS sv_2, -1.370913509858256 AS sv_3, -1.3222027672423808 AS sv_4, 0.3794560470572633 AS sv_5, -0.5526019151629767 AS sv_6, 0.7116338366449987 AS sv_7, 1.2755649924085368 AS sv_8, -0.5936383076009937 AS sv_9 UNION ALL SELECT 53 AS sv_idx, -0.1 AS dual_coeff, 1.2482929464213142 AS sv_0, -1.0529572219846004 AS sv_1, -0.04775551230796455 AS sv_2, -0.7689341395930223 AS sv_3, 0.22532956990845857 AS sv_4, -1.4984098449046894 AS sv_5, 1.4834147578127408 AS sv_6, 1.0692738813037428 AS sv_7, -0.5139520766916303 AS sv_8, 0.5835913247160279 AS sv_9 UNION ALL SELECT 54 AS sv_idx, -0.1 AS dual_coeff, -1.1831955356506787 AS sv_0, -1.5214638347980467 AS sv_1, 0.5225082106872388 AS sv_2, 0.7024828261067553 AS sv_3, -0.011522650860839 AS sv_4, -0.8237757661264119 AS sv_5, 0.10700444450742176 AS sv_6, 0.45019389695314976 AS sv_7, -0.18096073613733393 AS sv_8, 1.444473527148171 AS sv_9 UNION ALL SELECT 55 AS sv_idx, -0.0063011165297369625 AS dual_coeff, 1.297312338663854 AS sv_0, -0.872776866661635 AS sv_1, 0.6042472353041417 AS sv_2, 0.07366050152193956 AS sv_3, 1.6899700820395143 AS sv_4, -1.8883928599100357 AS sv_5, 1.4752302291474038 AS sv_6, 1.2914308492273932 AS sv_7, 0.6326553693081237 AS sv_8, -0.27601135636459445 AS sv_9 UNION ALL SELECT 56 AS sv_idx, 0.1 AS dual_coeff, -0.9230913960697019 AS sv_0, 1.2752148466059385 AS sv_1, -1.1962473912728349 AS sv_2, -0.11595324649696086 AS sv_3, 1.330149571684073 AS sv_4, -1.8026564606711015 AS sv_5, 1.6559273990477945 AS sv_6, -1.3389478829214339 AS sv_7, 0.1442423487777529 AS sv_8, 1.511770321360701 AS sv_9 UNION ALL SELECT 57 AS sv_idx, -0.1 AS dual_coeff, -0.9689811236795078 AS sv_0, 0.2779582609991886 AS sv_1, 1.0092934315830264 AS sv_2, -1.7575368692968418 AS sv_3, 0.5030180877150947 AS sv_4, -1.183926188871818 AS sv_5, -1.2049809205564428 AS sv_6, 1.1951220699349165 AS sv_7, 1.1987898627901887 AS sv_8, 0.41212513367529297 AS sv_9 UNION ALL SELECT 58 AS sv_idx, 0.1 AS dual_coeff, 0.9936554168312383 AS sv_0, 0.013444087621772259 AS sv_1, -1.4434787184059599 AS sv_2, -1.1802300520078903 AS sv_3, 0.020884485605986672 AS sv_4, 1.1865135010740404 AS sv_5, -1.2871442295582123 AS sv_6, -0.4638580037938381 AS sv_7, -0.21766166549579002 AS sv_8, 1.2874772876190406 AS sv_9 UNION ALL SELECT 59 AS sv_idx, -0.1 AS dual_coeff, -1.0823664182998887 AS sv_0, -0.34279708862550906 AS sv_1, 0.8951731552572393 AS sv_2, -1.6130690601677815 AS sv_3, -1.2227002308812427 AS sv_4, -1.0257776538272085 AS sv_5, 1.6012030547921345 AS sv_6, -0.9232928062019263 AS sv_7, 0.6759242455185315 AS sv_8, -1.0297043183253698 AS sv_9 UNION ALL SELECT 60 AS sv_idx, -0.1 AS dual_coeff, 0.08000491486027482 AS sv_0, -1.0543172638365788 AS sv_1, 0.46839716309105917 AS sv_2, -0.38637410266327904 AS sv_3, -1.0006667442208446 AS sv_4, 0.6022464135633878 AS sv_5, -0.6296723567516489 AS sv_6, 0.8166336456595965 AS sv_7, -0.8184162557688879 AS sv_8, -0.17305455786014834 AS sv_9 UNION ALL SELECT 61 AS sv_idx, 0.1 AS dual_coeff, 0.8801437858058357 AS sv_0, 0.7035285881066706 AS sv_1, 0.9201591903635318 AS sv_2, -0.039917686306403466 AS sv_3, -0.4680711028548929 AS sv_4, 0.0023882619728447033 AS sv_5, -0.2791564282757979 AS sv_6, -1.0868810870942114 AS sv_7, 1.8153629663676014 AS sv_8, -1.596184266841443 AS sv_9 UNION ALL SELECT 62 AS sv_idx, -0.1 AS dual_coeff, -2.1743927151462317 AS sv_0, -0.6609067764561876 AS sv_1, 1.6867580201383068 AS sv_2, 0.7217687381929517 AS sv_3, -0.44793069998232715 AS sv_4, -0.7660349380774523 AS sv_5, 0.4900711759067736 AS sv_6, 1.8773963099963955 AS sv_7, -0.5430307688365996 AS sv_8, 0.08342151287296158 AS sv_9 UNION ALL SELECT 63 AS sv_idx, 0.1 AS dual_coeff, 0.37504866215593313 AS sv_0, -1.4864900489610466 AS sv_1, 1.440583813074246 AS sv_2, 1.574492469279121 AS sv_3, 1.550698801308398 AS sv_4, 0.44433769099874276 AS sv_5, 1.5425493144364406 AS sv_6, -0.5960496219769463 AS sv_7, 0.7611846546661996 AS sv_8, 0.11431995534514836 AS sv_9 UNION ALL SELECT 64 AS sv_idx, -0.09369888347026305 AS dual_coeff, 0.14717753170557932 AS sv_0, -0.505535472593082 AS sv_1, -0.8326203050169902 AS sv_2, 0.6286933392094266 AS sv_3, -0.5405672381194292 AS sv_4, 0.3241506096354279 AS sv_5, -1.0311399365910372 AS sv_6, 0.8780413309857776 AS sv_7, -0.7032265946378855 AS sv_8, 0.3563318192728217 AS sv_9 UNION ALL SELECT 65 AS sv_idx, 0.1 AS dual_coeff, -0.6608415876598743 AS sv_0, 1.2956916927487803 AS sv_1, 1.63550296996848 AS sv_2, 1.6271312764787205 AS sv_3, -0.14785833512350116 AS sv_4, 1.2542771211130483 AS sv_5, -0.2341069749855533 AS sv_6, -0.8735510120466152 AS sv_7, -0.8053584577379709 AS sv_8, 0.3341292706609604 AS sv_9 UNION ALL SELECT 66 AS sv_idx, -0.1 AS dual_coeff, 1.6901308441022944 AS sv_0, -1.4060485771182971 AS sv_1, 1.0262039183749228 AS sv_2, -1.6054718065494864 AS sv_3, -0.16471911443522538 AS sv_4, -0.24930367508457013 AS sv_5, -0.5999680352875597 AS sv_6, 0.3631972247732269 AS sv_7, 0.4148931054380287 AS sv_8, 0.9632156425787901 AS sv_9 UNION ALL SELECT 67 AS sv_idx, -0.1 AS dual_coeff, -1.5291215040808974 AS sv_0, -0.308941235522363 AS sv_1, -0.37089840465947077 AS sv_2, -1.2126243089848852 AS sv_3, 0.15250591914877656 AS sv_4, -0.2718526934171035 AS sv_5, 0.9000642061194776 AS sv_6, -1.0030722630866309 AS sv_7, 0.28975588179391293 AS sv_8, 0.20115670868707905 AS sv_9 UNION ALL SELECT 68 AS sv_idx, -0.1 AS dual_coeff, 0.706966422798997 AS sv_0, -1.0815930115762815 AS sv_1, -0.4916524586025889 AS sv_2, -1.8025468478276074 AS sv_3, -0.9283316540030475 AS sv_4, -0.38653847382069584 AS sv_5, -0.3148330585539104 AS sv_6, 0.4057931080900593 AS sv_7, -0.8975615944782666 AS sv_8, 0.9962637986984064 AS sv_9 UNION ALL SELECT 69 AS sv_idx, -0.1 AS dual_coeff, 0.9353265343511867 AS sv_0, 0.8188319627549226 AS sv_1, -1.0637797794666215 AS sv_2, -1.546107242981104 AS sv_3, -0.05770750251020976 AS sv_4, 0.12149356998943735 AS sv_5, -0.7901203559322442 AS sv_6, 1.6239781490617415 AS sv_7, 0.9052619310003376 AS sv_8, -0.4812088796055741 AS sv_9 UNION ALL SELECT 70 AS sv_idx, 0.1 AS dual_coeff, 1.4682575628346752 AS sv_0, 0.3502438581410654 AS sv_1, 0.3712177725812553 AS sv_2, 0.6954872686497907 AS sv_3, -1.1922879045305497 AS sv_4, -1.6881380428806263 AS sv_5, -1.5711043587953568 AS sv_6, 1.3198251811088493 AS sv_7, -0.32361939611095053 AS sv_8, 1.3390475471524117 AS sv_9 UNION ALL SELECT 71 AS sv_idx, -0.1 AS dual_coeff, -1.4702993969885956 AS sv_0, -1.5376781745958936 AS sv_1, -1.2073975049489003 AS sv_2, 0.11530153080612787 AS sv_3, 0.4949226414553508 AS sv_4, 0.55075244378297 AS sv_5, -1.3918018948727002 AS sv_6, 1.6320860740308107 AS sv_7, 0.7791612430651489 AS sv_8, -0.13246246285798002 AS sv_9 UNION ALL SELECT 72 AS sv_idx, 0.1 AS dual_coeff, -0.3494422751961778 AS sv_0, 1.1882267191517717 AS sv_1, 1.2182240925346162 AS sv_2, -0.20796075390625857 AS sv_3, -0.9355313074944549 AS sv_4, 0.2176166179783945 AS sv_5, 1.0175453118053863 AS sv_6, 0.3472336869794851 AS sv_7, -0.5961551642998771 AS sv_8, 1.094708569754606 AS sv_9 UNION ALL SELECT 73 AS sv_idx, -0.1 AS dual_coeff, -0.49715597879605455 AS sv_0, -0.23275905451261217 AS sv_1, 1.175154629438926 AS sv_2, -1.6689959078266883 AS sv_3, -0.4250044637376306 AS sv_4, -1.890620953497875 AS sv_5, 1.62174624393044 AS sv_6, -0.38874054707345135 AS sv_7, -0.04109661729558855 AS sv_8, 1.5055714767370647 AS sv_9 UNION ALL SELECT 74 AS sv_idx, 0.1 AS dual_coeff, 0.48922899102644213 AS sv_0, -0.626126535142274 AS sv_1, -0.7435536505424762 AS sv_2, 0.5120651735437713 AS sv_3, 1.5220178571512801 AS sv_4, -1.5441298927069191 AS sv_5, 0.2930512636426871 AS sv_6, -0.6716045561458133 AS sv_7, -0.7410525225889459 AS sv_8, -0.11888598014055345 AS sv_9 UNION ALL SELECT 75 AS sv_idx, 0.1 AS dual_coeff, 0.730409813835634 AS sv_0, 0.08523947990766585 AS sv_1, 0.6712296058111288 AS sv_2, 1.3297770722595823 AS sv_3, -0.34842010530428724 AS sv_4, 1.2370054906209416 AS sv_5, 0.05855558549775456 AS sv_6, 1.3141211335949352 AS sv_7, 0.17826788477021754 AS sv_8, 0.019517717762795383 AS sv_9 UNION ALL SELECT 76 AS sv_idx, 0.1 AS dual_coeff, 0.3891067898175791 AS sv_0, -0.5929672822698918 AS sv_1, 1.6155740529214335 AS sv_2, 0.5521168786090315 AS sv_3, -1.4387368810474168 AS sv_4, -0.1844796866611429 AS sv_5, 0.5803317345871072 AS sv_6, -1.4782332697897325 AS sv_7, -1.1805868521616583 AS sv_8, 1.1944581381816883 AS sv_9 UNION ALL SELECT 77 AS sv_idx, 0.1 AS dual_coeff, 1.546601187330293 AS sv_0, 0.10389857115021651 AS sv_1, -0.47643061026790895 AS sv_2, -0.05837646312824779 AS sv_3, -0.12991791943554348 AS sv_4, 0.23537601165784758 AS sv_5, 0.9506752534523342 AS sv_6, -1.454635713451434 AS sv_7, -0.3644284432475401 AS sv_8, -1.5989179233860524 AS sv_9 UNION ALL SELECT 78 AS sv_idx, 0.1 AS dual_coeff, -0.07255558649991471 AS sv_0, -0.256076323161475 AS sv_1, 0.731320205639038 AS sv_2, 1.3886998211578971 AS sv_3, -0.16921048665105004 AS sv_4, 0.26246542127339256 AS sv_5, -1.0488857578517312 AS sv_6, -1.5141439499524454 AS sv_7, 1.1655175721964997 AS sv_8, 0.22043027850735725 AS sv_9) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE)) + 16.193432631602903 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * ((exp(0.1 * (kernel_input.scaler_output_2 * "SV_data".sv_0 + kernel_input.scaler_output_3 * "SV_data".sv_1 + kernel_input.scaler_output_4 * "SV_data".sv_2 + kernel_input.scaler_output_5 * "SV_data".sv_3 + kernel_input.scaler_output_6 * "SV_data".sv_4 + kernel_input.scaler_output_7 * "SV_data".sv_5 + kernel_input.scaler_output_8 * "SV_data".sv_6 + kernel_input.scaler_output_9 * "SV_data".sv_7 + kernel_input.scaler_output_10 * "SV_data".sv_8 + kernel_input.scaler_output_11 * "SV_data".sv_9) + 0.0) - exp(-(0.1 * (kernel_input.scaler_output_2 * "SV_data".sv_0 + kernel_input.scaler_output_3 * "SV_data".sv_1 + kernel_input.scaler_output_4 * "SV_data".sv_2 + kernel_input.scaler_output_5 * "SV_data".sv_3 + kernel_input.scaler_output_6 * "SV_data".sv_4 + kernel_input.scaler_output_7 * "SV_data".sv_5 + kernel_input.scaler_output_8 * "SV_data".sv_6 + kernel_input.scaler_output_9 * "SV_data".sv_7 + kernel_input.scaler_output_10 * "SV_data".sv_8 + kernel_input.scaler_output_11 * "SV_data".sv_9) + 0.0))) / (exp(0.1 * (kernel_input.scaler_output_2 * "SV_data".sv_0 + kernel_input.scaler_output_3 * "SV_data".sv_1 + kernel_input.scaler_output_4 * "SV_data".sv_2 + kernel_input.scaler_output_5 * "SV_data".sv_3 + kernel_input.scaler_output_6 * "SV_data".sv_4 + kernel_input.scaler_output_7 * "SV_data".sv_5 + kernel_input.scaler_output_8 * "SV_data".sv_6 + kernel_input.scaler_output_9 * "SV_data".sv_7 + kernel_input.scaler_output_10 * "SV_data".sv_8 + kernel_input.scaler_output_11 * "SV_data".sv_9) + 0.0) + exp(-(0.1 * (kernel_input.scaler_output_2 * "SV_data".sv_0 + kernel_input.scaler_output_3 * "SV_data".sv_1 + kernel_input.scaler_output_4 * "SV_data".sv_2 + kernel_input.scaler_output_5 * "SV_data".sv_3 + kernel_input.scaler_output_6 * "SV_data".sv_4 + kernel_input.scaler_output_7 * "SV_data".sv_5 + kernel_input.scaler_output_8 * "SV_data".sv_6 + kernel_input.scaler_output_9 * "SV_data".sv_7 + kernel_input.scaler_output_10 * "SV_data".sv_8 + kernel_input.scaler_output_11 * "SV_data".sv_9) + 0.0)))) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp