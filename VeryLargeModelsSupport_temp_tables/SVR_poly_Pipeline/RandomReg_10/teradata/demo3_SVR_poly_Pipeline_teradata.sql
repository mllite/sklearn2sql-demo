-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_poly_Pipeline
-- Dataset : RandomReg_10
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180417011818_4a5vx9_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417011818_4a5vx9_ads_  (
	"KEY" BIGINT, 
	impter_2 FLOAT, 
	impter_3 FLOAT, 
	impter_4 FLOAT, 
	impter_5 FLOAT, 
	impter_6 FLOAT, 
	impter_7 FLOAT, 
	impter_8 FLOAT, 
	impter_9 FLOAT, 
	impter_10 FLOAT, 
	impter_11 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417011818_4a5vx9_ads_ part 2/2. Populate

INSERT INTO tmp_20180417011818_4a5vx9_ads_ ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.16680947298137394 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.16351271994443456 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.19149292241003152 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.058384844753055345 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.09933205162122274 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.21293121660488037 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.047865568690029614 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.05078698959084227 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.1913199225908187 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.19940405677473352 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180417011818_q5iwok_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417011818_q5iwok_ads_  (
	"KEY" BIGINT, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417011818_q5iwok_ads_ part 2/2. Populate

INSERT INTO tmp_20180417011818_q5iwok_ads_ ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.166809472981374) / 1.028983599704731 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.163512719944435) / 0.991581253504681 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.191492922410032) / 0.932114762914776 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.058384844753055) / 1.08557293295068 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.099332051621223) / 1.074390441288283 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.21293121660488) / 0.935807438188625 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.04786556869003) / 1.136357409061339 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.050786989590842) / 0.972545746009845 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.191319922590819) / 1.141597467793656 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.199404056774734) / 0.882245682091319 AS scaler_11 
FROM tmp_20180417011818_4a5vx9_ads_ AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS FLOAT) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS FLOAT) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS FLOAT) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS FLOAT) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS FLOAT) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS FLOAT) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS FLOAT) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS FLOAT) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS FLOAT) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS FLOAT) AS scaler_11 
FROM tmp_20180417011818_q5iwok_ads_ AS "ADS_sca_2_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS FLOAT) AS dual_coeff, CAST("Values".sv_0 AS FLOAT) AS sv_0, CAST("Values".sv_1 AS FLOAT) AS sv_1, CAST("Values".sv_2 AS FLOAT) AS sv_2, CAST("Values".sv_3 AS FLOAT) AS sv_3, CAST("Values".sv_4 AS FLOAT) AS sv_4, CAST("Values".sv_5 AS FLOAT) AS sv_5, CAST("Values".sv_6 AS FLOAT) AS sv_6, CAST("Values".sv_7 AS FLOAT) AS sv_7, CAST("Values".sv_8 AS FLOAT) AS sv_8, CAST("Values".sv_9 AS FLOAT) AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.1 AS dual_coeff, -1.894606585954122 AS sv_0, 0.729556461386858 AS sv_1, -0.062630855156168 AS sv_2, 0.109362473093574 AS sv_3, -1.246384586989803 AS sv_4, 0.368818758066148 AS sv_5, 0.248443686321389 AS sv_6, 0.983620320910913 AS sv_7, -0.476448815219422 AS sv_8, 0.374916694026284 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 1 AS sv_idx, -0.1 AS dual_coeff, 0.481562985268674 AS sv_0, 0.019010924453456 AS sv_1, -0.659608430493665 AS sv_2, -1.204860941494454 AS sv_3, -0.418137509791561 AS sv_4, -1.442735682298204 AS sv_5, -0.027486056832966 AS sv_6, -0.085474321041064 AS sv_7, 0.097137395083907 AS sv_8, 0.498498333141539 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 2 AS sv_idx, 0.1 AS dual_coeff, 0.682864510743063 AS sv_0, 0.48995352363374 AS sv_1, -0.675330671963566 AS sv_2, -0.189486155032714 AS sv_3, -0.28356253025179 AS sv_4, 1.794536680798072 AS sv_5, 0.025066325540158 AS sv_6, -0.908118559970857 AS sv_7, 0.080443078630577 AS sv_8, 0.698362431985718 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 3 AS sv_idx, -0.1 AS dual_coeff, 0.26976117543658 AS sv_0, -0.449004825543382 AS sv_1, -2.068829771066232 AS sv_2, 1.300771414554024 AS sv_3, -1.275569164244463 AS sv_4, 0.255171159915462 AS sv_5, -0.33921398537672 AS sv_6, -0.144103631527272 AS sv_7, -0.049905751043688 AS sv_8, 0.469752727257428 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 4 AS sv_idx, -0.1 AS dual_coeff, 0.392934125685767 AS sv_0, 0.149792790985637 AS sv_1, -1.839627789435509 AS sv_2, 1.690555684856671 AS sv_3, 0.507551087448164 AS sv_4, -1.425863862337372 AS sv_5, -0.34037241065304 AS sv_6, -0.130294198718549 AS sv_7, 0.035662732539455 AS sv_8, 0.813707273913983 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS sv_idx, 0.1 AS dual_coeff, -0.445471687863272 AS sv_0, 1.235902031753094 AS sv_1, 1.65355760572395 AS sv_2, 0.45489297354717 AS sv_3, 0.53132633227705 AS sv_4, 0.428017112328893 AS sv_5, 0.155163673873022 AS sv_6, -0.644304983194354 AS sv_7, 0.201285194347668 AS sv_8, -0.354693192042755 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS sv_idx, -0.1 AS dual_coeff, 2.203558979174909 AS sv_0, 0.01612248193001 AS sv_1, 0.13678731316368 AS sv_2, -3.730447987257122 AS sv_3, -1.888012609692674 AS sv_4, 1.95955652339981 AS sv_5, -1.180791977545552 AS sv_6, -2.173761142957796 AS sv_7, -1.280644120795721 AS sv_8, -0.208341593469654 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS sv_idx, -0.1 AS dual_coeff, 0.451216206026931 AS sv_0, 0.692782911282085 AS sv_1, 0.210265937097698 AS sv_2, -1.74108459823713 AS sv_3, -2.514876043511962 AS sv_4, 1.034835737300006 AS sv_5, -0.253730237275235 AS sv_6, -1.292919818347318 AS sv_7, -0.185019833926131 AS sv_8, -2.956085567538958 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS sv_idx, 0.1 AS dual_coeff, 0.498773228294204 AS sv_0, -0.783587022828502 AS sv_1, 1.936572963121624 AS sv_2, 1.764388668316126 AS sv_3, 0.232137507885302 AS sv_4, -0.787885378319131 AS sv_5, -0.140028485772398 AS sv_6, -0.049331787803723 AS sv_7, 0.186005010617266 AS sv_8, 0.154701844545393 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 9 AS sv_idx, 0.1 AS dual_coeff, -0.482120188710015 AS sv_0, -0.225395057761666 AS sv_1, 0.724661895965946 AS sv_2, -0.834912672107242 AS sv_3, 0.891725597644539 AS sv_4, 1.249852492922342 AS sv_5, 0.065592319152377 AS sv_6, -0.225232569807177 AS sv_7, -1.137721305846103 AS sv_8, -0.449919444419001 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 10 AS sv_idx, 0.1 AS dual_coeff, -1.533671217464266 AS sv_0, 0.691876112214357 AS sv_1, -0.240598541655909 AS sv_2, -1.224599998136307 AS sv_3, 1.022809702498608 AS sv_4, 0.262187189531431 AS sv_5, 0.523727540203915 AS sv_6, -0.561928725346526 AS sv_7, 0.839318345912367 AS sv_8, -0.975721522401778 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 11 AS sv_idx, 0.1 AS dual_coeff, -0.932998756441917 AS sv_0, -0.298332603943658 AS sv_1, 0.432547888201444 AS sv_2, 0.309264724006537 AS sv_3, 0.263266208573716 AS sv_4, 1.082467850830824 AS sv_5, -0.245256095734398 AS sv_6, -0.680501556230929 AS sv_7, 0.13403740190107 AS sv_8, 0.610897993978769 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 12 AS sv_idx, 0.1 AS dual_coeff, 0.808041824388495 AS sv_0, 0.402778966302059 AS sv_1, 1.584848387214305 AS sv_2, 0.075451691896634 AS sv_3, -0.232911855146859 AS sv_4, 0.236737580105297 AS sv_5, -0.14641984263394 AS sv_6, 0.035648097915028 AS sv_7, -1.851142458488907 AS sv_8, 1.897744590669172 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 13 AS sv_idx, -0.1 AS dual_coeff, 1.28444848716625 AS sv_0, -1.28239103525188 AS sv_1, -0.146315314792377 AS sv_2, -0.453398834268396 AS sv_3, -1.170840656578141 AS sv_4, -1.928414728008896 AS sv_5, 0.382516079640727 AS sv_6, -0.149097060653324 AS sv_7, 0.16050083512772 AS sv_8, -1.036216721694246 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 14 AS sv_idx, 0.1 AS dual_coeff, 0.218469380616241 AS sv_0, 0.90273876993466 AS sv_1, -0.343566221705793 AS sv_2, 0.402724730904839 AS sv_3, 1.459197067166404 AS sv_4, 0.049100854971541 AS sv_5, -0.202433461137908 AS sv_6, -0.114271895049445 AS sv_7, -0.136749985537086 AS sv_8, -1.678836397130642 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 15 AS sv_idx, 0.1 AS dual_coeff, 1.935338564084159 AS sv_0, 0.434824175615838 AS sv_1, 0.815797008559807 AS sv_2, 1.761347806088778 AS sv_3, 0.075650033854593 AS sv_4, -1.562720468883779 AS sv_5, 1.063743734704127 AS sv_6, 0.574880942695335 AS sv_7, 0.020088650364001 AS sv_8, 0.459100304183814 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 16 AS sv_idx, 0.1 AS dual_coeff, -0.505247349412003 AS sv_0, 1.263934491813076 AS sv_1, -2.457466272270427 AS sv_2, -0.183135478202456 AS sv_3, -1.213549810224522 AS sv_4, 0.194110617239443 AS sv_5, -0.008278593069783 AS sv_6, 0.905033940236955 AS sv_7, 1.157617689964029 AS sv_8, 1.678633716561254 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 17 AS sv_idx, -0.1 AS dual_coeff, -2.029565760890454 AS sv_0, -0.495734414983072 AS sv_1, -0.079653017563974 AS sv_2, -0.475774647797646 AS sv_3, 1.031037214556662 AS sv_4, -1.339332294088646 AS sv_5, -0.395304572580892 AS sv_6, 0.252786000321071 AS sv_7, -0.926965088959699 AS sv_8, 1.122735426558569 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 18 AS sv_idx, 0.1 AS dual_coeff, -0.911073983008862 AS sv_0, -0.062354877074263 AS sv_1, 0.586294815646886 AS sv_2, -0.251579900677524 AS sv_3, 0.24001263835719 AS sv_4, -0.493339562441329 AS sv_5, 0.240737817743882 AS sv_6, 1.233633649405632 AS sv_7, 0.105246194591525 AS sv_8, -0.216729551437255 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, -1.739031517889413 AS sv_0, 0.977105617655484 AS sv_1, -1.20780952907633 AS sv_2, 0.743108790408414 AS sv_3, -0.817790566598926 AS sv_4, 0.506850331613784 AS sv_5, -0.158171890545647 AS sv_6, -0.551928260331807 AS sv_7, 0.370280006804043 AS sv_8, 0.60367952974775 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 20 AS sv_idx, 0.1 AS dual_coeff, 1.369290887109904 AS sv_0, 0.308242664588351 AS sv_1, -0.369549983106112 AS sv_2, 0.491251818883714 AS sv_3, 0.71673052666001 AS sv_4, 0.480507733305872 AS sv_5, 0.033788647142105 AS sv_6, 0.782348591262716 AS sv_7, 0.144926600019793 AS sv_8, 0.5792422651059 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, -0.338904317700126 AS sv_0, -1.682708186233318 AS sv_1, -1.878333955068802 AS sv_2, -0.987224819430811 AS sv_3, -0.96748729503772 AS sv_4, -1.02964494320945 AS sv_5, -0.679300815188074 AS sv_6, -0.634466977063002 AS sv_7, 0.388979628131829 AS sv_8, 0.123677030778378 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 22 AS sv_idx, 0.1 AS dual_coeff, -0.112720195697825 AS sv_0, 1.519781779614732 AS sv_1, 1.067200744526376 AS sv_2, -0.66427951919923 AS sv_3, -0.268581886550541 AS sv_4, -0.101267342529768 AS sv_5, 0.311288735268311 AS sv_6, -0.23719971613561 AS sv_7, -0.444753964741723 AS sv_8, 0.037007610123587 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 23 AS sv_idx, -0.1 AS dual_coeff, -0.749384760171926 AS sv_0, -0.31935395402744 AS sv_1, -1.014655629586874 AS sv_2, 0.345630131791216 AS sv_3, 1.218042751108206 AS sv_4, -2.10091388465659 AS sv_5, 0.411617882005597 AS sv_6, 0.063917208963658 AS sv_7, 0.286528426467517 AS sv_8, -1.088007038011664 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, 0.421777587948951 AS sv_0, 0.975493093070946 AS sv_1, 1.618251864395043 AS sv_2, -0.133681369572755 AS sv_3, -0.926790985248289 AS sv_4, 0.308294678845576 AS sv_5, -1.55632342692544 AS sv_6, -0.890028113945371 AS sv_7, 0.599590807691479 AS sv_8, 0.191787721030197 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 25 AS sv_idx, -0.1 AS dual_coeff, 1.527654770269226 AS sv_0, 0.407521665240082 AS sv_1, -1.358359447791881 AS sv_2, 0.444877252533718 AS sv_3, -0.656296656423035 AS sv_4, -0.686998050811742 AS sv_5, -0.480367424843592 AS sv_6, 0.362143112514777 AS sv_7, -0.719497736502427 AS sv_8, 0.488962585172875 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 26 AS sv_idx, 0.1 AS dual_coeff, 0.724441749043687 AS sv_0, 0.710239355663069 AS sv_1, 0.884901995197433 AS sv_2, -0.129288609644784 AS sv_3, 1.777505067992122 AS sv_4, -1.746627980349876 AS sv_5, -0.902231277784183 AS sv_6, 0.80972517722604 AS sv_7, 1.704981793916211 AS sv_8, 0.49521477801059 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 27 AS sv_idx, -0.1 AS dual_coeff, 0.191069569484753 AS sv_0, 3.261591724474213 AS sv_1, -0.541741552966937 AS sv_2, -0.068577444567104 AS sv_3, 0.665028283546539 AS sv_4, -0.89732037206021 AS sv_5, -0.237069979905834 AS sv_6, 0.289143401661576 AS sv_7, -0.869292660438234 AS sv_8, -2.499676845938167 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 28 AS sv_idx, 0.1 AS dual_coeff, 0.848837486126648 AS sv_0, -1.276911228095106 AS sv_1, 0.646322228832487 AS sv_2, 1.234432746845654 AS sv_3, 1.484531807205546 AS sv_4, -0.620750910688325 AS sv_5, 0.310943581487096 AS sv_6, 1.906449983684211 AS sv_7, 0.189596642473997 AS sv_8, -1.715838525802078 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 29 AS sv_idx, 0.1 AS dual_coeff, 0.992568190297007 AS sv_0, 0.811928022141507 AS sv_1, -0.484909699299338 AS sv_2, -0.282398656676682 AS sv_3, 0.170230146609765 AS sv_4, 1.464501567687178 AS sv_5, 0.627911340636911 AS sv_6, 0.989017601175491 AS sv_7, 0.74993126070507 AS sv_8, 1.214217214469473 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 30 AS sv_idx, 0.1 AS dual_coeff, 0.219999785187438 AS sv_0, 0.000883374830183 AS sv_1, 2.44448543444004 AS sv_2, 0.648983941389088 AS sv_3, 0.667834392074085 AS sv_4, -0.613220613488475 AS sv_5, -0.467786285556172 AS sv_6, -0.704316465752446 AS sv_7, 0.034385831891326 AS sv_8, 1.779390842026666 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 31 AS sv_idx, -0.1 AS dual_coeff, -1.458761379939098 AS sv_0, -0.349612366668785 AS sv_1, -0.661552328064798 AS sv_2, 0.698414154824217 AS sv_3, -0.696003313299554 AS sv_4, -1.243586688534552 AS sv_5, 0.345609609693578 AS sv_6, 0.136734215580779 AS sv_7, 1.36929002184813 AS sv_8, -0.486544782583215 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 32 AS sv_idx, 0.1 AS dual_coeff, -1.939036962899674 AS sv_0, 0.000251273583634 AS sv_1, -1.253921223817939 AS sv_2, -0.688713672972305 AS sv_3, -0.369558454434873 AS sv_4, 0.902270016391442 AS sv_5, -1.430622174129793 AS sv_6, 0.496299150071416 AS sv_7, 1.70744353695723 AS sv_8, 2.248293584582692 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 33 AS sv_idx, 0.1 AS dual_coeff, -0.524625755615871 AS sv_0, -0.795749138266823 AS sv_1, -0.349660586108103 AS sv_2, -0.791055646085127 AS sv_3, 0.063454667408728 AS sv_4, 0.624158210060964 AS sv_5, 0.6832948369613 AS sv_6, -1.162054894990983 AS sv_7, 1.319859659939182 AS sv_8, -0.412863802845879 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 34 AS sv_idx, -0.1 AS dual_coeff, -1.029864321508455 AS sv_0, -0.488742737878082 AS sv_1, -1.144358486749116 AS sv_2, 1.088485838492961 AS sv_3, -0.875115520756374 AS sv_4, 0.894699698227424 AS sv_5, 2.26856746424297 AS sv_6, 0.310511029798541 AS sv_7, -0.628242939647476 AS sv_8, 0.809834282371587 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 35 AS sv_idx, 0.1 AS dual_coeff, 0.109888416134863 AS sv_0, 0.84864921478315 AS sv_1, 1.368423715903943 AS sv_2, -0.197258877059141 AS sv_3, -0.695223242106753 AS sv_4, -0.902269509215731 AS sv_5, 1.982582883361999 AS sv_6, -0.813388928772061 AS sv_7, 1.017400051709009 AS sv_8, 0.466227266661945 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 36 AS sv_idx, 0.1 AS dual_coeff, 1.31851105262637 AS sv_0, 0.909445089909075 AS sv_1, -1.785852764915177 AS sv_2, -0.47834443988118 AS sv_3, -0.098823972497552 AS sv_4, 0.973592297967952 AS sv_5, -0.162631739525313 AS sv_6, 1.42040439231097 AS sv_7, 1.810351269848965 AS sv_8, -0.239377569520118 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 37 AS sv_idx, -0.1 AS dual_coeff, 0.969700337246159 AS sv_0, -1.09302665309427 AS sv_1, 0.297631857567847 AS sv_2, -0.458602577294536 AS sv_3, -1.176285701425554 AS sv_4, 0.330346394304976 AS sv_5, 0.791768889486228 AS sv_6, 1.144562840844788 AS sv_7, -0.62228935888145 AS sv_8, 0.487967900691728 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 38 AS sv_idx, -0.1 AS dual_coeff, 0.746142069427104 AS sv_0, -1.751409551741113 AS sv_1, -0.013039451565538 AS sv_2, 0.11902040816285 AS sv_3, -0.409005074783977 AS sv_4, 1.147902129120973 AS sv_5, -2.300659821981244 AS sv_6, 0.588611484539656 AS sv_7, -0.050480122182778 AS sv_8, -0.390268041759531 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 39 AS sv_idx, -0.1 AS dual_coeff, -1.236068358467277 AS sv_0, -0.462357334927412 AS sv_1, 0.500364984178356 AS sv_2, 0.127984081923774 AS sv_3, -2.374465239282156 AS sv_4, -1.002692397415447 AS sv_5, 0.010103699567014 AS sv_6, -0.887359242553725 AS sv_7, 0.157869540028487 AS sv_8, -1.122209677169762 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 40 AS sv_idx, -0.1 AS dual_coeff, -0.318845560734498 AS sv_0, -1.525743086183012 AS sv_1, -0.395672825326714 AS sv_2, -0.184624451860222 AS sv_3, -0.891243670596882 AS sv_4, -0.186456788875898 AS sv_5, 0.67884181477972 AS sv_6, -1.864099000589774 AS sv_7, -0.21249498218094 AS sv_8, 0.940810667226637 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 41 AS sv_idx, -0.1 AS dual_coeff, -0.165101544959892 AS sv_0, -0.452362102488713 AS sv_1, 0.383012910991933 AS sv_2, 0.64211627513468 AS sv_3, -1.833596125587433 AS sv_4, 0.573032413507059 AS sv_5, 0.040787432476985 AS sv_6, -0.905672979016936 AS sv_7, 1.161731478530525 AS sv_8, -1.493793491871498 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 42 AS sv_idx, 0.1 AS dual_coeff, -0.309929272546747 AS sv_0, -0.001168987122109 AS sv_1, 0.335328766814381 AS sv_2, 0.573204174140095 AS sv_3, 1.06191462428973 AS sv_4, -0.76855449228022 AS sv_5, -0.756373587099644 AS sv_6, 1.16395836302947 AS sv_7, 1.320636251783545 AS sv_8, 0.405062539273436 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 43 AS sv_idx, 0.1 AS dual_coeff, 0.95756807024821 AS sv_0, 1.798084830679771 AS sv_1, -0.309507215970821 AS sv_2, -0.401334589651027 AS sv_3, -0.183912229997681 AS sv_4, 0.485389578141193 AS sv_5, -0.990253925477097 AS sv_6, 0.094634569470139 AS sv_7, -1.494334945903461 AS sv_8, 0.726070088855913 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 44 AS sv_idx, -0.1 AS dual_coeff, -1.182071231205724 AS sv_0, -2.219933741468195 AS sv_1, 0.800889330141191 AS sv_2, -1.933079376086308 AS sv_3, -0.157473864851069 AS sv_4, 1.613230237426469 AS sv_5, -0.112808880226947 AS sv_6, 0.637921385204215 AS sv_7, 0.024176498994763 AS sv_8, 0.239509272831816 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 45 AS sv_idx, -0.1 AS dual_coeff, -0.857689258708467 AS sv_0, -0.59430407632699 AS sv_1, -0.961989114161124 AS sv_2, -1.074688165264292 AS sv_3, 1.014417825555085 AS sv_4, 1.821234533409651 AS sv_5, 0.9498082044565 AS sv_6, -2.01405908277735 AS sv_7, 0.123513841700415 AS sv_8, -0.57688422879998 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 46 AS sv_idx, -0.1 AS dual_coeff, 0.478724200445833 AS sv_0, -0.962021109505617 AS sv_1, -0.174218941068084 AS sv_2, 0.863648355957434 AS sv_3, 1.070106095468944 AS sv_4, 0.834597218212701 AS sv_5, -2.492428301652222 AS sv_6, -0.898909971329465 AS sv_7, -2.105277739688336 AS sv_8, 1.337534340436532 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 47 AS sv_idx, 0.1 AS dual_coeff, 0.496568534615404 AS sv_0, 0.092712451193724 AS sv_1, 0.150251706877788 AS sv_2, 0.742386178477998 AS sv_3, 0.08052653161298 AS sv_4, -0.233986007466101 AS sv_5, 1.317374527554107 AS sv_6, 1.758159522527822 AS sv_7, 0.500853803670907 AS sv_8, -0.858014602819915 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 48 AS sv_idx, 0.1 AS dual_coeff, 0.224679452323961 AS sv_0, 0.999043785077239 AS sv_1, 0.111089839931622 AS sv_2, 1.067731158467531 AS sv_3, -0.762161651830376 AS sv_4, -0.009030578502804 AS sv_5, 1.640146634430812 AS sv_6, -2.31406161123658 AS sv_7, 0.350282289595712 AS sv_8, 0.281786663166662 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 49 AS sv_idx, -0.1 AS dual_coeff, 0.554671136083166 AS sv_0, -1.034769431484013 AS sv_1, -0.771145773998698 AS sv_2, -1.099445455973563 AS sv_3, -0.426995460658704 AS sv_4, -0.983404311946834 AS sv_5, -0.230032948018337 AS sv_6, -0.046490652106055 AS sv_7, -1.357764243636043 AS sv_8, -0.775753849975084 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 50 AS sv_idx, 0.1 AS dual_coeff, -1.323995500321997 AS sv_0, -0.383579931116326 AS sv_1, 1.288849906819348 AS sv_2, 0.220044392517709 AS sv_3, 0.000271030445114 AS sv_4, 1.694003119375268 AS sv_5, -0.304614754180516 AS sv_6, -0.79872703182722 AS sv_7, 0.090519765973559 AS sv_8, 1.445408916109998 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 51 AS sv_idx, -0.1 AS dual_coeff, 0.584754542981822 AS sv_0, -0.939758771072534 AS sv_1, 0.245951973520551 AS sv_2, -1.084053703624585 AS sv_3, 0.969359411979591 AS sv_4, -1.997677533819402 AS sv_5, -1.023520411586589 AS sv_6, 1.07913704327702 AS sv_7, -1.336782648478776 AS sv_8, -0.334777271144931 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 52 AS sv_idx, 0.1 AS dual_coeff, 1.71170269371692 AS sv_0, -0.363585491761816 AS sv_1, 2.043056072315946 AS sv_2, 1.240504771657413 AS sv_3, 0.593839546492754 AS sv_4, 0.74790555045644 AS sv_5, -0.733558835729775 AS sv_6, -1.206042802391919 AS sv_7, 2.78637291985472 AS sv_8, -2.196746514670861 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 53 AS sv_idx, 0.1 AS dual_coeff, 1.607356597952326 AS sv_0, 1.015746931630129 AS sv_1, 0.44151305472526 AS sv_2, 0.920975586357171 AS sv_3, -0.808129315340771 AS sv_4, 0.025476622121729 AS sv_5, 0.89956085026481 AS sv_6, -1.521130281291087 AS sv_7, 1.600645980128078 AS sv_8, -0.408558487011541 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 54 AS sv_idx, 0.1 AS dual_coeff, -1.177481689303102 AS sv_0, 1.293779742423328 AS sv_1, -0.773032285584178 AS sv_2, -1.075139973931485 AS sv_3, 1.247374030662712 AS sv_4, 0.813402606658614 AS sv_5, 0.563555453873667 AS sv_6, -1.374716479880086 AS sv_7, 0.062387158220542 AS sv_8, -1.316874306304436 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 55 AS sv_idx, -0.1 AS dual_coeff, -1.353410970631764 AS sv_0, -0.23348345260579 AS sv_1, -1.016165655509167 AS sv_2, 1.698998446400722 AS sv_3, 0.344976031967867 AS sv_4, 0.421020301831184 AS sv_5, -1.033720119262661 AS sv_6, -1.446857704291894 AS sv_7, -1.015065371349085 AS sv_8, 0.665745768244606 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 56 AS sv_idx, -0.1 AS dual_coeff, -0.952228727594335 AS sv_0, -0.608920909470606 AS sv_1, 0.491249642703045 AS sv_2, -0.451275866353237 AS sv_3, -0.718459322370962 AS sv_4, -1.295455242469875 AS sv_5, -0.327102389400442 AS sv_6, 1.236339944234982 AS sv_7, 0.583682473180976 AS sv_8, 0.220126966502199 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 57 AS sv_idx, -0.1 AS dual_coeff, 0.268869463006419 AS sv_0, -0.806314209857775 AS sv_1, -0.165758532654955 AS sv_2, 1.36982249596627 AS sv_3, 1.539558101113095 AS sv_4, -0.512025443400314 AS sv_5, 0.452134152798967 AS sv_6, 0.392931741150354 AS sv_7, -1.29552855742395 AS sv_8, -0.089298588782203 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 58 AS sv_idx, -0.1 AS dual_coeff, 0.440167681759522 AS sv_0, 0.301254727345339 AS sv_1, 0.040410739957357 AS sv_2, 0.121419480919719 AS sv_3, -0.643689407623142 AS sv_4, 0.577600007119796 AS sv_5, 1.045194870940352 AS sv_6, 0.261038191444673 AS sv_7, -1.617715438982375 AS sv_8, 0.425262643065097 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 59 AS sv_idx, 0.1 AS dual_coeff, 0.177462888480451 AS sv_0, -1.030205988305014 AS sv_1, 0.216009788905104 AS sv_2, 0.991983183520586 AS sv_3, -0.353059303403589 AS sv_4, 0.94565542616935 AS sv_5, 0.452688544615325 AS sv_6, 0.63004984341401 AS sv_7, -1.366773722629874 AS sv_8, 0.858419050341623 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 60 AS sv_idx, 0.1 AS dual_coeff, -1.055928326735167 AS sv_0, -0.797351078292537 AS sv_1, 0.404603591503204 AS sv_2, 1.25601013721405 AS sv_3, 0.704432869129037 AS sv_4, 0.113893022290551 AS sv_5, 1.12924102987868 AS sv_6, -0.404072677507209 AS sv_7, -0.271454164407944 AS sv_8, -0.497254379402285 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 61 AS sv_idx, -0.1 AS dual_coeff, 0.076911267913798 AS sv_0, -1.67926531550138 AS sv_1, -1.539625458662969 AS sv_2, 0.076747805453211 AS sv_3, 1.945162158464603 AS sv_4, -1.642053503840161 AS sv_5, -2.316400162796702 AS sv_6, -0.028687487447806 AS sv_7, 0.594093950835323 AS sv_8, 0.962254104647768 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 62 AS sv_idx, 0.1 AS dual_coeff, -1.440762527020947 AS sv_0, -0.091642999494469 AS sv_1, 0.187176505095578 AS sv_2, 1.632187418391358 AS sv_3, 0.690899983300267 AS sv_4, 0.478891504387152 AS sv_5, 0.011819747748236 AS sv_6, 0.643047815282247 AS sv_7, 1.478434057352169 AS sv_8, 0.604128940822838 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 63 AS sv_idx, -0.1 AS dual_coeff, 0.189830481037363 AS sv_0, -0.246875398197096 AS sv_1, 0.889381118487314 AS sv_2, -0.440049276349868 AS sv_3, 0.601654751924822 AS sv_4, 0.309245898786474 AS sv_5, -1.163132010338076 AS sv_6, 0.809427091956126 AS sv_7, -1.520878104165293 AS sv_8, 0.194695856746788 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 64 AS sv_idx, 0.1 AS dual_coeff, 2.569487750755658 AS sv_0, 0.414966081625684 AS sv_1, 0.456758536894784 AS sv_2, -0.270141666399011 AS sv_3, 1.950389376955898 AS sv_4, 0.363187914955063 AS sv_5, 0.722876183521262 AS sv_6, 2.636412630952772 AS sv_7, 0.110615126999234 AS sv_8, 0.341906709388012 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 65 AS sv_idx, 0.1 AS dual_coeff, 0.382465398380187 AS sv_0, 1.633643493539936 AS sv_1, 1.464869700967879 AS sv_2, -1.177214124437252 AS sv_3, 1.197909189891443 AS sv_4, 0.154637152964757 AS sv_5, -0.116216319018674 AS sv_6, -1.358218024480564 AS sv_7, 0.053164474476619 AS sv_8, 1.390780356671626 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 66 AS sv_idx, -0.1 AS dual_coeff, -0.650619664507175 AS sv_0, 0.309694392425918 AS sv_1, -1.141763231255856 AS sv_2, -0.36710770625884 AS sv_3, 0.782114014947217 AS sv_4, -0.247939425209803 AS sv_5, -1.015222977491259 AS sv_6, -0.30189948350277 AS sv_7, -0.356214402688614 AS sv_8, -0.65821433554453 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 67 AS sv_idx, -0.1 AS dual_coeff, -0.677494445708121 AS sv_0, -0.203590674250649 AS sv_1, -1.237035672125926 AS sv_2, -1.723943794242175 AS sv_3, -0.406634627527574 AS sv_4, -1.093141471177796 AS sv_5, -0.446504992024243 AS sv_6, -0.59751856878984 AS sv_7, -0.951889366152835 AS sv_8, 1.401977672792848 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 68 AS sv_idx, -0.1 AS dual_coeff, -1.24888997915808 AS sv_0, 1.036640563959434 AS sv_1, 0.285668353885606 AS sv_2, -1.730281950447985 AS sv_3, 0.400046146701415 AS sv_4, 0.108321553796158 AS sv_5, -0.486288039434823 AS sv_6, -0.069549523481364 AS sv_7, -1.162710686221164 AS sv_8, -1.411186140747177 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 69 AS sv_idx, 0.1 AS dual_coeff, 0.831681931313952 AS sv_0, 0.276826900779908 AS sv_1, -0.002815168306877 AS sv_2, 0.883724642589076 AS sv_3, -0.6124178041594 AS sv_4, 1.111827951396085 AS sv_5, 1.663160056506498 AS sv_6, 1.453055545828435 AS sv_7, 1.832769061018778 AS sv_8, -1.771776759210423 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 70 AS sv_idx, 0.1 AS dual_coeff, -0.94937679506378 AS sv_0, 2.317959519193414 AS sv_1, 1.154649772934106 AS sv_2, 0.495008851630901 AS sv_3, 0.371794587378852 AS sv_4, 0.330603775879548 AS sv_5, -2.07680368349514 AS sv_6, 0.850002426098998 AS sv_7, -0.16462750293067 AS sv_8, 0.118370850542343 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 71 AS sv_idx, 0.1 AS dual_coeff, -0.057970759719262 AS sv_0, 0.379798435116521 AS sv_1, 0.48477538147543 AS sv_2, 0.157032260260858 AS sv_3, 0.402314278637817 AS sv_4, 0.55888445525051 AS sv_5, 0.188018036826844 AS sv_6, 1.068682450395403 AS sv_7, 0.572619108157167 AS sv_8, -0.435039644348975 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 72 AS sv_idx, -0.1 AS dual_coeff, 0.945014547167269 AS sv_0, 0.462968654177531 AS sv_1, 0.023630606710539 AS sv_2, 0.145347222578426 AS sv_3, 1.267184689031498 AS sv_4, -0.728548445537876 AS sv_5, -2.589858887888251 AS sv_6, -1.074012212845466 AS sv_7, -0.103367071011852 AS sv_8, -0.279189284475983 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 73 AS sv_idx, -0.1 AS dual_coeff, -0.661212695919632 AS sv_0, -0.642261623191779 AS sv_1, 0.002456681319881 AS sv_2, 0.956315579022132 AS sv_3, -0.205931316082468 AS sv_4, 0.003669531768399 AS sv_5, 1.25063338071588 AS sv_6, -0.25875290162073 AS sv_7, -1.601052066875778 AS sv_8, -0.915206162656696 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 74 AS sv_idx, -0.1 AS dual_coeff, 0.520562903638485 AS sv_0, 1.233676148807441 AS sv_1, -1.195226353398035 AS sv_2, -0.982342155705656 AS sv_3, -0.242553744139015 AS sv_4, -2.114089793009969 AS sv_5, 0.990919676766973 AS sv_6, 0.658906644693888 AS sv_7, 0.637446977348662 AS sv_8, 0.183508118958823 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 75 AS sv_idx, -0.1 AS dual_coeff, 0.890488935887508 AS sv_0, -0.828567548617964 AS sv_1, -0.787762245043607 AS sv_2, 0.903115392692804 AS sv_3, -1.132084889118538 AS sv_4, 0.549094689121613 AS sv_5, 0.681489493472355 AS sv_6, -0.466661061595243 AS sv_7, 0.795642092673593 AS sv_8, -1.022286371122325 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 76 AS sv_idx, 0.1 AS dual_coeff, -0.431411718386826 AS sv_0, -1.178778699065059 AS sv_1, 0.697749957652904 AS sv_2, -1.355255318577864 AS sv_3, 1.894590153032949 AS sv_4, 1.064779340106413 AS sv_5, -0.02665560248182 AS sv_6, 1.865153150734355 AS sv_7, 1.379647515285116 AS sv_8, 0.408593346727794 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 77 AS sv_idx, 0.1 AS dual_coeff, 0.230852392799496 AS sv_0, -1.492691933159774 AS sv_1, 1.481857674073186 AS sv_2, -0.945763295650257 AS sv_3, -1.492392534784674 AS sv_4, 0.892929843509317 AS sv_5, 1.994258922697419 AS sv_6, 1.111342905072717 AS sv_7, -0.921082602085086 AS sv_8, -0.545418035984904 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 78 AS sv_idx, -0.1 AS dual_coeff, -0.124777181556625 AS sv_0, -1.771955252583323 AS sv_1, 0.50641499877177 AS sv_2, -0.274273723602106 AS sv_3, -1.117566647911244 AS sv_4, -0.797773641223966 AS sv_5, 1.356565912571374 AS sv_6, 0.713094416857851 AS sv_7, -1.657245906233175 AS sv_8, 0.187223654548244 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 79 AS sv_idx, -0.1 AS dual_coeff, -0.004321288878417 AS sv_0, 0.578599624606698 AS sv_1, -0.387433255924995 AS sv_2, 0.969448298140276 AS sv_3, -0.585331870990316 AS sv_4, -0.60530851547837 AS sv_5, 1.384433708671867 AS sv_6, -0.358544434542334 AS sv_7, -1.036578768036159 AS sv_8, -0.226127746858435 AS sv_9 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 5.857077889157692 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * power(0.1 * (kernel_input.scaler_2 * "SV_data".sv_0 + kernel_input.scaler_3 * "SV_data".sv_1 + kernel_input.scaler_4 * "SV_data".sv_2 + kernel_input.scaler_5 * "SV_data".sv_3 + kernel_input.scaler_6 * "SV_data".sv_4 + kernel_input.scaler_7 * "SV_data".sv_5 + kernel_input.scaler_8 * "SV_data".sv_6 + kernel_input.scaler_9 * "SV_data".sv_7 + kernel_input.scaler_10 * "SV_data".sv_8 + kernel_input.scaler_11 * "SV_data".sv_9) + 0.0, 3) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp