-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.00138931176255 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 0.463426403308 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.217505715227 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN -0.152587933096 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN -0.412111099788 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.196794386387 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN -0.560070670694 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.0176121946335 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.229769401212 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN -0.017049409488 ELSE [ADS].[Feature_9] END AS impter_11 
FROM [FourClass_10] AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 0.00138931176255) / 0.93699939872 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - 0.463426403308) / 1.52614069898 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 0.217505715227) / 1.63613772648 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - -0.152587933096) / 1.0729227329 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - -0.412111099788) / 1.57797490258 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - 0.196794386387) / 1.81921711839 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - -0.560070670694) / 1.49254337613 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - 0.0176121946335) / 1.1765077083 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - 0.229769401212) / 1.82898307692 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - -0.017049409488) / 1.12154002888 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
[SV_data_0] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3, [Values].sv_4 AS sv_4, [Values].sv_5 AS sv_5, [Values].sv_6 AS sv_6, [Values].sv_7 AS sv_7, [Values].sv_8 AS sv_8, [Values].sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, 0.0 AS dual_coeff, -1.03684721489 AS sv_0, 0.603744520885 AS sv_1, -0.85821719929 AS sv_2, 1.34894185904 AS sv_3, -0.89162193281 AS sv_4, 0.938751402544 AS sv_5, -0.159997185776 AS sv_6, -0.99167978663 AS sv_7, 0.39566694934 AS sv_8, -0.421531403198 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, 0.453793692809 AS sv_0, -2.27217506995 AS sv_1, -0.72943329933 AS sv_2, 0.753771608558 AS sv_3, -0.792754239407 AS sv_4, 0.771736032621 AS sv_5, 0.159433237167 AS sv_6, 0.262256091482 AS sv_7, -1.47805477405 AS sv_8, -0.596824801129 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 0.908572893629 AS dual_coeff, 0.471635591563 AS sv_0, 0.996626258206 AS sv_1, -0.379577516173 AS sv_2, 0.808896736982 AS sv_3, -0.683240945979 AS sv_4, 0.760527236635 AS sv_5, -0.769073908376 AS sv_6, -0.248966493229 AS sv_7, 0.387392085667 AS sv_8, -0.102451175207 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 0.0 AS dual_coeff, 1.02129621291 AS sv_0, -1.0983739875 AS sv_1, -1.04140352656 AS sv_2, -1.43834199468 AS sv_3, -0.350580115631 AS sv_4, 1.17508563469 AS sv_5, -0.53419500453 AS sv_6, 0.669018384709 AS sv_7, -1.28531875108 AS sv_8, -1.89367097041 AS sv_9 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 0.627461952094 AS sv_0, 0.485877413392 AS sv_1, 0.313535034429 AS sv_2, -1.64288312037 AS sv_3, 0.361475935095 AS sv_4, -0.604482381647 AS sv_5, 0.589516639873 AS sv_6, -1.31360275467 AS sv_7, 0.662686712763 AS sv_8, 1.64018594216 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 0.0 AS dual_coeff, 0.204136600885 AS sv_0, -0.282573709302 AS sv_1, -0.453500537279 AS sv_2, -0.991014954351 AS sv_3, -0.0112115466996 AS sv_4, 0.425862374005 AS sv_5, -0.126209953957 AS sv_6, 0.346813252168 AS sv_7, -0.405108273731 AS sv_8, 1.43734031298 AS sv_9 UNION ALL SELECT 6 AS sv_idx, 1.0 AS dual_coeff, 1.00599825156 AS sv_0, 0.935222875188 AS sv_1, 0.296836591442 AS sv_2, -0.104409363052 AS sv_3, -1.07596370417 AS sv_4, 0.761454779016 AS sv_5, -1.79246814599 AS sv_6, -1.99136181971 AS sv_7, 0.0729388882762 AS sv_8, -1.40189419115 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 0.0 AS dual_coeff, -0.0669836940339 AS sv_0, -1.28680460899 AS sv_1, -0.973173174084 AS sv_2, -1.12963141709 AS sv_3, -0.181128227882 AS sv_4, 0.997293283131 AS sv_5, -0.325566933592 AS sv_6, -0.929180807 AS sv_7, -1.33623047632 AS sv_8, 1.72443749024 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, -1.29907864617 AS sv_0, 0.565623671217 AS sv_1, 0.573335013655 AS sv_2, -0.171828334716 AS sv_3, -0.263562492246 AS sv_4, -0.434175359875 AS sv_5, 0.0536159952412 AS sv_6, 1.72365106303 AS sv_7, 0.694729603719 AS sv_8, 0.31702271602 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 0.0 AS dual_coeff, -2.05916998467 AS sv_0, -1.2118944804 AS sv_1, -0.824750760329 AS sv_2, 0.0530026253912 AS sv_3, -0.687161270646 AS sv_4, 0.984726876096 AS sv_5, -0.29851908306 AS sv_6, -0.173641418853 AS sv_7, -1.04987596184 AS sv_8, 0.50768227252 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 0.508936661899 AS dual_coeff, 0.433383737497 AS sv_0, -1.83813123915 AS sv_1, -0.678384298259 AS sv_2, -1.18059654764 AS sv_3, -0.492072968539 AS sv_4, 0.653334915337 AS sv_5, 0.142314858308 AS sv_6, 1.73899007424 AS sv_7, -1.2647101637 AS sv_8, 0.792530476588 AS sv_9 UNION ALL SELECT 11 AS sv_idx, 0.0 AS dual_coeff, -0.409745382953 AS sv_0, -0.687107996118 AS sv_1, -0.5221862974 AS sv_2, -0.191536714273 AS sv_3, -0.629687666904 AS sv_4, 0.647327780717 AS sv_5, -0.144328484814 AS sv_6, -0.741569483649 AS sv_7, -0.514140267451 AS sv_8, 0.600774053696 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 0.0 AS dual_coeff, 1.35033789566 AS sv_0, 1.46758717254 AS sv_1, -0.450539998393 AS sv_2, -0.645522513307 AS sv_3, -1.150868584 AS sv_4, 1.09883960292 AS sv_5, -1.20355009564 AS sv_6, -1.0374798459 AS sv_7, 0.609840178803 AS sv_8, 0.731894302324 AS sv_9) AS [Values]), 
kernel_cte_0 AS 
(SELECT t_1.[KEY] AS [KEY_0], t_1.dot_product AS [Score_0] 
FROM (SELECT full_join_data_sv_1.[KEY] AS [KEY], sum(full_join_data_sv_1.dot_prod1) + -0.341658278895 AS dot_product 
FROM (SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], [SV_data_0].dual_coeff * ([ADS_sca_2_OUT].scaler_2 * [SV_data_0].sv_0 + [ADS_sca_2_OUT].scaler_3 * [SV_data_0].sv_1 + [ADS_sca_2_OUT].scaler_4 * [SV_data_0].sv_2 + [ADS_sca_2_OUT].scaler_5 * [SV_data_0].sv_3 + [ADS_sca_2_OUT].scaler_6 * [SV_data_0].sv_4 + [ADS_sca_2_OUT].scaler_7 * [SV_data_0].sv_5 + [ADS_sca_2_OUT].scaler_8 * [SV_data_0].sv_6 + [ADS_sca_2_OUT].scaler_9 * [SV_data_0].sv_7 + [ADS_sca_2_OUT].scaler_10 * [SV_data_0].sv_8 + [ADS_sca_2_OUT].scaler_11 * [SV_data_0].sv_9) AS dot_prod1 
FROM [ADS_sca_2_OUT], [SV_data_0]) AS full_join_data_sv_1 GROUP BY full_join_data_sv_1.[KEY]) AS t_1), 
[SV_data_1] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3, [Values].sv_4 AS sv_4, [Values].sv_5 AS sv_5, [Values].sv_6 AS sv_6, [Values].sv_7 AS sv_7, [Values].sv_8 AS sv_8, [Values].sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, -0.0264457716307 AS sv_0, 1.32892837189 AS sv_1, 0.471908243008 AS sv_2, -0.658737677249 AS sv_3, -0.76853794542 AS sv_4, -0.257793771611 AS sv_5, 0.0474831219863 AS sv_6, 0.499058660262 AS sv_7, 1.38287831936 AS sv_8, -0.032317444921 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -0.0 AS dual_coeff, 1.12668510056 AS sv_0, -0.171697779675 AS sv_1, 0.119572502331 AS sv_2, 1.35644181785 AS sv_3, -0.228361983287 AS sv_4, 0.097573749887 AS sv_5, -0.307247090174 AS sv_6, -1.28376401832 AS sv_7, -0.190860136332 AS sv_8, 1.54304157141 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.0 AS dual_coeff, 0.209002896833 AS sv_0, -1.5526748037 AS sv_1, 0.690506416846 AS sv_2, -1.49383087451 AS sv_3, -0.344030225815 AS sv_4, -0.811696437909 AS sv_5, 0.920603752422 AS sv_6, 0.564962587213 AS sv_7, -0.254942399011 AS sv_8, 0.22427355933 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -0.0 AS dual_coeff, 0.917493740603 AS sv_0, 1.40599338204 AS sv_1, 0.593641635672 AS sv_2, 0.00305560814684 AS sv_3, -0.512388292004 AS sv_4, -1.06484554721 AS sv_5, 1.54659080711 AS sv_6, 0.379542643472 AS sv_7, 2.26713765238 AS sv_8, -1.55475006504 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -0.211236597959 AS dual_coeff, -0.693225014962 AS sv_0, -1.0194578783 AS sv_1, 0.493913196599 AS sv_2, -0.983314719357 AS sv_3, -0.14677213602 AS sv_4, 0.112145010973 AS sv_5, -1.00605400787 AS sv_6, 0.63520802648 AS sv_7, -1.12958487068 AS sv_8, -1.59616561002 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -0.0 AS dual_coeff, 1.89572201827 AS sv_0, -0.13999511151 AS sv_1, 0.527856510021 AS sv_2, 0.483186499194 AS sv_3, -0.423053982649 AS sv_4, -1.0932919834 AS sv_5, 1.80414843338 AS sv_6, -0.550831399051 AS sv_7, 1.25870214757 AS sv_8, -2.28741522687 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -0.290792493928 AS dual_coeff, 0.10515704469 AS sv_0, 0.242032106634 AS sv_1, 0.532741760487 AS sv_2, -0.308156645736 AS sv_3, -1.13029276183 AS sv_4, -0.858868675531 AS sv_5, 1.60858997966 AS sv_6, -0.775468755705 AS sv_7, 1.6619672217 AS sv_8, 1.7998836547 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.0 AS dual_coeff, 0.0602534889876 AS sv_0, 2.70738953553 AS sv_1, 0.76280223408 AS sv_2, -0.41551922015 AS sv_3, -0.10093022421 AS sv_4, -1.37945586807 AS sv_5, 1.63944099016 AS sv_6, 0.510361842808 AS sv_7, 3.16429582328 AS sv_8, 1.40400019036 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.0 AS dual_coeff, -1.11471302774 AS sv_0, -1.96052773467 AS sv_1, 0.9667844832 AS sv_2, -0.0423096590962 AS sv_3, -0.174088692387 AS sv_4, -0.191410955112 AS sv_5, -1.08259669942 AS sv_6, -0.25752215391 AS sv_7, -1.703478597 AS sv_8, 0.6523946626 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -0.0 AS dual_coeff, -1.99841975312 AS sv_0, 1.2885379774 AS sv_1, 0.691465755816 AS sv_2, 0.429968511259 AS sv_3, 0.134828830085 AS sv_4, -1.42463591614 AS sv_5, 1.85622454053 AS sv_6, 0.879220843687 AS sv_7, 2.17135843476 AS sv_8, 0.596336807479 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -0.124897744617 AS dual_coeff, 0.131794321 AS sv_0, -0.853156263554 AS sv_1, 0.310422992071 AS sv_2, -0.415254308694 AS sv_3, 0.225057609597 AS sv_4, 0.230631308485 AS sv_5, -1.15948858596 AS sv_6, 0.242309306129 AS sv_7, -1.28122115765 AS sv_8, 0.315527576557 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -0.790582719023 AS dual_coeff, 1.47223526236 AS sv_0, -0.4710806519 AS sv_1, 0.374894193825 AS sv_2, -1.39356763829 AS sv_3, -1.07110182506 AS sv_4, -0.29865610183 AS sv_5, 0.624373986201 AS sv_6, 0.535424966009 AS sv_7, 0.505083135116 AS sv_8, -0.358288373649 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, -0.311638436674 AS sv_0, -0.348865072478 AS sv_1, -0.057159110596 AS sv_2, 0.916890208497 AS sv_3, 0.198423162552 AS sv_4, 0.248539917476 AS sv_5, -0.551588684506 AS sv_6, 0.173468266596 AS sv_7, -0.659450300067 AS sv_8, 0.56091670497 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 0.111792819065 AS sv_0, -0.349480769488 AS sv_1, 0.273828007938 AS sv_2, 0.139848573472 AS sv_3, -0.882156597518 AS sv_4, 0.337363730499 AS sv_5, -0.77482788786 AS sv_6, -0.248804478089 AS sv_7, -0.324395357513 AS sv_8, 0.999832048485 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 0.960364364379 AS sv_0, -0.665437166559 AS sv_1, 0.0460661212233 AS sv_2, 0.584775723783 AS sv_3, 0.256455628204 AS sv_4, 0.415628423945 AS sv_5, -1.13466587433 AS sv_6, -1.10099901925 AS sv_7, -1.21945827119 AS sv_8, -1.26704986754 AS sv_9) AS [Values]), 
kernel_cte_1 AS 
(SELECT t_2.[KEY] AS [KEY_1], t_2.dot_product AS [Score_1] 
FROM (SELECT full_join_data_sv_2.[KEY] AS [KEY], sum(full_join_data_sv_2.dot_prod1) + -0.303252153471 AS dot_product 
FROM (SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], [SV_data_1].dual_coeff * ([ADS_sca_2_OUT].scaler_2 * [SV_data_1].sv_0 + [ADS_sca_2_OUT].scaler_3 * [SV_data_1].sv_1 + [ADS_sca_2_OUT].scaler_4 * [SV_data_1].sv_2 + [ADS_sca_2_OUT].scaler_5 * [SV_data_1].sv_3 + [ADS_sca_2_OUT].scaler_6 * [SV_data_1].sv_4 + [ADS_sca_2_OUT].scaler_7 * [SV_data_1].sv_5 + [ADS_sca_2_OUT].scaler_8 * [SV_data_1].sv_6 + [ADS_sca_2_OUT].scaler_9 * [SV_data_1].sv_7 + [ADS_sca_2_OUT].scaler_10 * [SV_data_1].sv_8 + [ADS_sca_2_OUT].scaler_11 * [SV_data_1].sv_9) AS dot_prod1 
FROM [ADS_sca_2_OUT], [SV_data_1]) AS full_join_data_sv_2 GROUP BY full_join_data_sv_2.[KEY]) AS t_2), 
[SV_data_2] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3, [Values].sv_4 AS sv_4, [Values].sv_5 AS sv_5, [Values].sv_6 AS sv_6, [Values].sv_7 AS sv_7, [Values].sv_8 AS sv_8, [Values].sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.0 AS dual_coeff, 1.39599415986 AS sv_0, 1.05051614523 AS sv_1, 0.128481745814 AS sv_2, -0.18252286633 AS sv_3, 1.40713949218 AS sv_4, -0.194943415708 AS sv_5, -0.632923575715 AS sv_6, -0.0847666193124 AS sv_7, -0.062918429731 AS sv_8, 1.21288934257 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -0.57889013647 AS dual_coeff, 0.200168147072 AS sv_0, 0.775495248154 AS sv_1, 0.385385698728 AS sv_2, -0.330695352415 AS sv_3, 0.470689351317 AS sv_4, -0.368456851781 AS sv_5, -0.17047618497 AS sv_6, -0.070999735683 AS sv_7, 0.40727174744 AS sv_8, -1.43183794029 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.0 AS dual_coeff, 0.733741359227 AS sv_0, 0.611998056689 AS sv_1, 1.91627052257 AS sv_2, 0.915003755109 AS sv_3, 0.762864991759 AS sv_4, -1.41656892318 AS sv_5, -0.697919877188 AS sv_6, 0.212224905165 AS sv_7, 0.324671856191 AS sv_8, -0.744322076495 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 0.854922855155 AS sv_0, -0.411839383823 AS sv_1, -0.355730552108 AS sv_2, -1.04805270915 AS sv_3, 0.095414847994 AS sv_4, 0.438152326858 AS sv_5, -0.382015469281 AS sv_6, -2.17641129405 AS sv_7, -0.656457710644 AS sv_8, 0.388560076618 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, -1.43635793124 AS sv_0, 0.154991811696 AS sv_1, 0.701680436007 AS sv_2, -1.477870925 AS sv_3, -1.41718665085 AS sv_4, -0.501230445354 AS sv_5, 0.634270835989 AS sv_6, 1.94241181485 AS sv_7, 1.17413047772 AS sv_8, 1.56809586997 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -0.27419328518 AS dual_coeff, -1.03548045807 AS sv_0, 0.772521555952 AS sv_1, 0.101466634885 AS sv_2, -0.930233978491 AS sv_3, 0.513544417294 AS sv_4, -0.139269063538 AS sv_5, -0.203535054106 AS sv_6, -0.951096308035 AS sv_7, 0.28846124236 AS sv_8, 1.49714613647 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.241421336377 AS sv_0, -0.22490678064 AS sv_1, -1.48892949668 AS sv_2, 1.58241765058 AS sv_3, -1.63161614733 AS sv_4, 2.64315294646 AS sv_5, -2.48083381569 AS sv_6, -1.05435430909 AS sv_7, -1.49345891117 AS sv_8, 0.585763434832 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.0 AS dual_coeff, -1.60928832289 AS sv_0, 0.480528313285 AS sv_1, 1.94511059971 AS sv_2, 0.377671637204 AS sv_3, 1.96530459245 AS sv_4, -1.54102332124 AS sv_5, -1.10810703203 AS sv_6, 2.82573224468 AS sv_7, -0.414804006952 AS sv_8, 0.743767720078 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, -1.51547846433 AS sv_0, 0.563270396667 AS sv_1, -1.49295597434 AS sv_2, -0.729114436253 AS sv_3, -0.559568860172 AS sv_4, 1.6204988768 AS sv_5, -0.752079133605 AS sv_6, -1.03164854224 AS sv_7, -0.279890631105 AS sv_8, -0.123699761582 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -0.0 AS dual_coeff, -2.50344650559 AS sv_0, -0.341629778362 AS sv_1, 0.169767470776 AS sv_2, 0.65516219414 AS sv_3, 0.569052721834 AS sv_4, -0.272548268125 AS sv_5, 0.0358023465294 AS sv_6, 1.04076752646 AS sv_7, -0.37002249805 AS sv_8, 0.130423994601 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, 0.629319095004 AS sv_0, -0.101334381854 AS sv_1, 0.725617294531 AS sv_2, -0.718499555778 AS sv_3, 0.416653465307 AS sv_4, -0.772258482889 AS sv_5, 0.237763209403 AS sv_6, 0.913481931367 AS sv_7, 0.135119632961 AS sv_8, 0.446751845844 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, -0.962117698142 AS sv_0, 0.527585321232 AS sv_1, -0.803593431367 AS sv_2, 0.642330728463 AS sv_3, 0.0311442914798 AS sv_4, 0.395832391152 AS sv_5, 0.499261956365 AS sv_6, -0.922789142281 AS sv_7, 0.428051918308 AS sv_8, 0.631408496764 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -0.510865117169 AS dual_coeff, -0.570597679778 AS sv_0, 0.38916442686 AS sv_1, -0.742722843498 AS sv_2, 2.28618324912 AS sv_3, -0.535078369404 AS sv_4, 1.06326185504 AS sv_5, -0.837669410265 AS sv_6, -0.556998144404 AS sv_7, -0.24550818804 AS sv_8, -0.950901180213 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 0.052204213077 AS sv_0, 0.311294389544 AS sv_1, 0.407773508477 AS sv_2, -0.0753885576706 AS sv_3, 0.0104221692717 AS sv_4, -0.282370041184 AS sv_5, -0.12386234874 AS sv_6, 0.17236985811 AS sv_7, 0.265684154693 AS sv_8, 0.890764695492 AS sv_9) AS [Values]), 
kernel_cte_2 AS 
(SELECT t_3.[KEY] AS [KEY_2], t_3.dot_product AS [Score_2] 
FROM (SELECT full_join_data_sv_3.[KEY] AS [KEY], sum(full_join_data_sv_3.dot_prod1) + 0.547416491561 AS dot_product 
FROM (SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], [SV_data_2].dual_coeff * ([ADS_sca_2_OUT].scaler_2 * [SV_data_2].sv_0 + [ADS_sca_2_OUT].scaler_3 * [SV_data_2].sv_1 + [ADS_sca_2_OUT].scaler_4 * [SV_data_2].sv_2 + [ADS_sca_2_OUT].scaler_5 * [SV_data_2].sv_3 + [ADS_sca_2_OUT].scaler_6 * [SV_data_2].sv_4 + [ADS_sca_2_OUT].scaler_7 * [SV_data_2].sv_5 + [ADS_sca_2_OUT].scaler_8 * [SV_data_2].sv_6 + [ADS_sca_2_OUT].scaler_9 * [SV_data_2].sv_7 + [ADS_sca_2_OUT].scaler_10 * [SV_data_2].sv_8 + [ADS_sca_2_OUT].scaler_11 * [SV_data_2].sv_9) AS dot_prod1 
FROM [ADS_sca_2_OUT], [SV_data_2]) AS full_join_data_sv_3 GROUP BY full_join_data_sv_3.[KEY]) AS t_3), 
[SV_data_3] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3, [Values].sv_4 AS sv_4, [Values].sv_5 AS sv_5, [Values].sv_6 AS sv_6, [Values].sv_7 AS sv_7, [Values].sv_8 AS sv_8, [Values].sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.0 AS dual_coeff, -1.40286081679 AS sv_0, -0.713951072273 AS sv_1, -1.15978049577 AS sv_2, 0.381244229382 AS sv_3, 1.17020809873 AS sv_4, 0.763447601366 AS sv_5, -0.223337514207 AS sv_6, -1.98449125532 AS sv_7, -1.38239519618 AS sv_8, -0.00357710108112 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -0.0 AS dual_coeff, 0.360405558691 AS sv_0, -0.53351042966 AS sv_1, -1.93041103488 AS sv_2, 2.45364934383 AS sv_3, -0.951416304042 AS sv_4, 1.25052773489 AS sv_5, 1.20485676013 AS sv_6, 0.366881414026 AS sv_7, 0.0902670573659 AS sv_8, -1.23394154466 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.0 AS dual_coeff, 1.0690250077 AS sv_0, 0.900034511521 AS sv_1, -2.03254604383 AS sv_2, 0.894583089914 AS sv_3, -0.539035346053 AS sv_4, 1.27495163488 AS sv_5, 0.999655369286 AS sv_6, 0.638024962314 AS sv_7, 0.827892443234 AS sv_8, 1.08327314127 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -0.553824389006 AS dual_coeff, -0.12459136378 AS sv_0, 0.0919891514761 AS sv_1, 2.45754921184 AS sv_2, -0.267648791902 AS sv_3, 0.10772638526 AS sv_4, -2.80271190761 AS sv_5, 1.91540014303 AS sv_6, -0.0149781247049 AS sv_7, 1.86971566932 AS sv_8, -0.586457331628 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -0.284246453259 AS dual_coeff, 1.29908388534 AS sv_0, 0.736599047424 AS sv_1, -0.664005192053 AS sv_2, 0.0363242447208 AS sv_3, 1.58072837824 AS sv_4, 0.47793303589 AS sv_5, -0.807680284132 AS sv_6, 0.055049951025 AS sv_7, -0.680994843495 AS sv_8, 0.476638983879 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -0.143945621703 AS dual_coeff, 1.84197857566 AS sv_0, 1.11015663476 AS sv_1, -1.14414160517 AS sv_2, -0.305473697457 AS sv_3, -0.110932394557 AS sv_4, 0.681771024699 AS sv_5, 0.494117553127 AS sv_6, 0.971509237757 AS sv_7, 0.793052092511 AS sv_8, -0.215486332476 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.308320300194 AS sv_0, -0.257310000545 AS sv_1, -1.69718053422 AS sv_2, -2.64759020931 AS sv_3, 0.240313451407 AS sv_4, 1.14529557471 AS sv_5, 0.349702660565 AS sv_6, 0.354346702773 AS sv_7, -0.554991024034 AS sv_8, -0.187938697934 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.58015738233 AS dual_coeff, -0.7194096675 AS sv_0, 1.29297826338 AS sv_1, 0.3466585846 AS sv_2, 0.136578566693 AS sv_3, 2.12936218373 AS sv_4, -0.22666857651 AS sv_5, -1.37202774845 AS sv_6, -0.753092323572 AS sv_7, -0.507563157835 AS sv_8, -0.803712577292 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.0 AS dual_coeff, -0.431629350023 AS sv_0, 0.610038587679 AS sv_1, 0.641056856322 AS sv_2, 0.554723684109 AS sv_3, 0.67635957427 AS sv_4, -1.22793294076 AS sv_5, 1.25072641037 AS sv_6, -1.01921732516 AS sv_7, 1.12783420166 AS sv_8, -1.08986823911 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -0.0 AS dual_coeff, -0.531752302196 AS sv_0, 0.0174643048855 AS sv_1, 0.594523297045 AS sv_2, -0.804598147381 AS sv_3, 0.390858896884 AS sv_4, -1.03345242795 AS sv_5, 1.0874915788 AS sv_6, 0.552598495269 AS sv_7, 0.69072994115 AS sv_8, -1.34368090177 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -0.0 AS dual_coeff, 1.35252827512 AS sv_0, -0.010842576038 AS sv_1, 0.604132432299 AS sv_2, -1.06689575397 AS sv_3, 0.925600123383 AS sv_4, -1.03087152473 AS sv_5, 0.774562999412 AS sv_6, 0.387136914553 AS sv_7, 0.305864448439 AS sv_8, -0.537608997079 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -0.0 AS dual_coeff, 2.068216183 AS sv_0, -0.297764754727 AS sv_1, 1.05638698585 AS sv_2, 2.33045287872 AS sv_3, 1.26003686935 AS sv_4, -1.43357190496 AS sv_5, 0.717368283001 AS sv_6, -1.95572210195 AS sv_7, 0.0830247119979 AS sv_8, -0.139648287202 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -0.439623990184 AS dual_coeff, -0.528822672618 AS sv_0, -1.65210380208 AS sv_1, -2.66135105794 AS sv_2, 1.29237198237 AS sv_3, -2.21339421666 AS sv_4, 1.73470456881 AS sv_5, 2.19901418713 AS sv_6, -0.203220713288 AS sv_7, 0.0917516932538 AS sv_8, 0.755821536637 AS sv_9) AS [Values]), 
kernel_cte_3 AS 
(SELECT t_4.[KEY] AS [KEY_3], t_4.dot_product AS [Score_3] 
FROM (SELECT full_join_data_sv_4.[KEY] AS [KEY], sum(full_join_data_sv_4.dot_prod1) + -0.195280677424 AS dot_product 
FROM (SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], [SV_data_3].dual_coeff * ([ADS_sca_2_OUT].scaler_2 * [SV_data_3].sv_0 + [ADS_sca_2_OUT].scaler_3 * [SV_data_3].sv_1 + [ADS_sca_2_OUT].scaler_4 * [SV_data_3].sv_2 + [ADS_sca_2_OUT].scaler_5 * [SV_data_3].sv_3 + [ADS_sca_2_OUT].scaler_6 * [SV_data_3].sv_4 + [ADS_sca_2_OUT].scaler_7 * [SV_data_3].sv_5 + [ADS_sca_2_OUT].scaler_8 * [SV_data_3].sv_6 + [ADS_sca_2_OUT].scaler_9 * [SV_data_3].sv_7 + [ADS_sca_2_OUT].scaler_10 * [SV_data_3].sv_8 + [ADS_sca_2_OUT].scaler_11 * [SV_data_3].sv_9) AS dot_prod1 
FROM [ADS_sca_2_OUT], [SV_data_3]) AS full_join_data_sv_4 GROUP BY full_join_data_sv_4.[KEY]) AS t_4), 
[OVR_Join_CTE] AS 
(SELECT kernel_cte_0.[KEY_0] AS [KEY_0], kernel_cte_0.[Score_0] AS [Score_0], kernel_cte_1.[KEY_1] AS [KEY_1], kernel_cte_1.[Score_1] AS [Score_1], kernel_cte_2.[KEY_2] AS [KEY_2], kernel_cte_2.[Score_2] AS [Score_2], kernel_cte_3.[KEY_3] AS [KEY_3], kernel_cte_3.[Score_3] AS [Score_3] 
FROM kernel_cte_0 LEFT OUTER JOIN kernel_cte_1 ON kernel_cte_0.[KEY_0] = kernel_cte_1.[KEY_1] LEFT OUTER JOIN kernel_cte_2 ON kernel_cte_2.[KEY_2] = kernel_cte_1.[KEY_1] LEFT OUTER JOIN kernel_cte_3 ON kernel_cte_3.[KEY_3] = kernel_cte_2.[KEY_2]), 
orig_cte AS 
(SELECT [OVR_Join_CTE].[KEY_0] AS [KEY], [OVR_Join_CTE].[Score_0] AS [Score_0], [OVR_Join_CTE].[Score_1] AS [Score_1], [OVR_Join_CTE].[Score_2] AS [Score_2], [OVR_Join_CTE].[Score_3] AS [Score_3], CAST(NULL AS FLOAT(53)) AS [Proba_0], CAST(NULL AS FLOAT(53)) AS [Proba_1], CAST(NULL AS FLOAT(53)) AS [Proba_2], CAST(NULL AS FLOAT(53)) AS [Proba_3], CAST(NULL AS FLOAT(53)) AS [LogProba_0], CAST(NULL AS FLOAT(53)) AS [LogProba_1], CAST(NULL AS FLOAT(53)) AS [LogProba_2], CAST(NULL AS FLOAT(53)) AS [LogProba_3], CAST(NULL AS FLOAT(53)) AS [Decision] 
FROM [OVR_Join_CTE]), 
score_class_union AS 
(SELECT scu.[KEY] AS [KEY], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY], 0 AS class, orig_cte.[LogProba_0] AS [LogProba], orig_cte.[Proba_0] AS [Proba], orig_cte.[Score_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY], 1 AS class, orig_cte.[LogProba_1] AS [LogProba], orig_cte.[Proba_1] AS [Proba], orig_cte.[Score_1] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY], 2 AS class, orig_cte.[LogProba_2] AS [LogProba], orig_cte.[Proba_2] AS [Proba], orig_cte.[Score_2] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY], 3 AS class, orig_cte.[LogProba_3] AS [LogProba], orig_cte.[Proba_3] AS [Proba], orig_cte.[Score_3] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_0] AS [Score_0], orig_cte.[Score_1] AS [Score_1], orig_cte.[Score_2] AS [Score_2], orig_cte.[Score_3] AS [Score_3], orig_cte.[Proba_0] AS [Proba_0], orig_cte.[Proba_1] AS [Proba_1], orig_cte.[Proba_2] AS [Proba_2], orig_cte.[Proba_3] AS [Proba_3], orig_cte.[LogProba_0] AS [LogProba_0], orig_cte.[LogProba_1] AS [LogProba_1], orig_cte.[LogProba_2] AS [LogProba_2], orig_cte.[LogProba_3] AS [LogProba_3], orig_cte.[Decision] AS [Decision], (SELECT max(score_class_union.[LogProba]) AS max_1 
FROM score_class_union 
WHERE orig_cte.[KEY] = score_class_union.[KEY]) AS [max_LogProba], (SELECT max(score_class_union.[Proba]) AS max_2 
FROM score_class_union 
WHERE orig_cte.[KEY] = score_class_union.[KEY]) AS [max_Proba], (SELECT max(score_class_union.[Score]) AS max_3 
FROM score_class_union 
WHERE orig_cte.[KEY] = score_class_union.[KEY]) AS [max_Score] 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Score_3] AS [Score_3], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[Proba_3] AS [Proba_3], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[LogProba_3] AS [LogProba_3], score_max.[Decision] AS [Decision], score_max.[max_LogProba] AS [max_LogProba], score_max.[max_Proba] AS [max_Proba], score_max.[max_Score] AS [max_Score], (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max.[max_LogProba] = score_class_union.[LogProba] AND score_max.[KEY] = score_class_union.[KEY]) AS [arg_max_LogProba], (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max.[max_Proba] = score_class_union.[Proba] AND score_max.[KEY] = score_class_union.[KEY]) AS [arg_max_Proba], (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max.[max_Score] = score_class_union.[Score] AND score_max.[KEY] = score_class_union.[KEY]) AS [arg_max_Score] 
FROM score_max)
 SELECT arg_max_cte.[KEY] AS [KEY], arg_max_cte.[Score_0] AS [Score_0], arg_max_cte.[Score_1] AS [Score_1], arg_max_cte.[Score_2] AS [Score_2], arg_max_cte.[Score_3] AS [Score_3], arg_max_cte.[Proba_0] AS [Proba_0], arg_max_cte.[Proba_1] AS [Proba_1], arg_max_cte.[Proba_2] AS [Proba_2], arg_max_cte.[Proba_3] AS [Proba_3], CASE WHEN (arg_max_cte.[Proba_0] IS NULL OR arg_max_cte.[Proba_0] > 0.0) THEN log(arg_max_cte.[Proba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[Proba_1] IS NULL OR arg_max_cte.[Proba_1] > 0.0) THEN log(arg_max_cte.[Proba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], CASE WHEN (arg_max_cte.[Proba_2] IS NULL OR arg_max_cte.[Proba_2] > 0.0) THEN log(arg_max_cte.[Proba_2]) ELSE -1.79769313486231e+308 END AS [LogProba_2], CASE WHEN (arg_max_cte.[Proba_3] IS NULL OR arg_max_cte.[Proba_3] > 0.0) THEN log(arg_max_cte.[Proba_3]) ELSE -1.79769313486231e+308 END AS [LogProba_3], arg_max_cte.[arg_max_Score] AS [Decision] 
FROM arg_max_cte