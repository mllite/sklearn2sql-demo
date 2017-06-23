-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.0810083160112 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN -0.269250048034 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.240487763101 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.142604128589 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN 0.183572350866 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.173548954209 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.126298254061 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.360628810671 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN -0.51115301513 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.203356397123 ELSE [ADS].[Feature_9] END AS impter_11 
FROM [RandomReg_10] AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 0.0810083160112) / 0.90949713658 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - -0.269250048034) / 0.992426738719 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 0.240487763101) / 0.759956724432 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - 0.142604128589) / 1.0926864622 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - 0.183572350866) / 1.05658801775 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - 0.173548954209) / 0.786365993461 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 0.126298254061) / 1.3847124245 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - 0.360628810671) / 0.940597350833 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - -0.51115301513) / 1.18193438252 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - 0.203356397123) / 0.6906744839 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
[SV_data] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3, [Values].sv_4 AS sv_4, [Values].sv_5 AS sv_5, [Values].sv_6 AS sv_6, [Values].sv_7 AS sv_7, [Values].sv_8 AS sv_8, [Values].sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, -1.43687811969 AS sv_0, -0.126740324108 AS sv_1, -1.31083496959 AS sv_2, 1.61086231375 AS sv_3, 0.0830357218316 AS sv_4, 0.551112581268 AS sv_5, -0.904959166695 AS sv_6, -1.82541139941 AS sv_7, -0.709821947351 AS sv_8, 0.844680095553 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.982989996268 AS sv_0, -0.501857931853 AS sv_1, 0.538065116608 AS sv_2, -0.525413436978 AS sv_3, -0.998317426639 AS sv_4, -1.49156296063 AS sv_5, -0.325076818206 AS sv_6, 0.948923927456 AS sv_7, 0.834364022663 AS sv_8, 0.275460770298 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.297821979216 AS dual_coeff, 0.398531683374 AS sv_0, -0.699083065553 AS sv_1, -0.26777947943 AS sv_2, 1.28382934104 AS sv_3, 1.29774527263 AS sv_4, -0.559249712904 AS sv_5, 0.314399799805 AS sv_6, 0.0768684625615 AS sv_7, -0.980713519479 AS sv_8, -0.119789621083 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, 0.592334446095 AS sv_0, 0.407542292519 AS sv_1, -0.0149053137271 AS sv_2, 0.0435535900091 AS sv_3, -0.922287715577 AS sv_4, 0.737448783618 AS sv_5, 0.801092147731 AS sv_6, -0.0595049926463 AS sv_7, -1.29190484582 AS sv_8, 0.537494577988 AS sv_9 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 0.295116441798 AS sv_0, -0.922784102275 AS sv_1, 0.200473352736 AS sv_2, 0.908449811063 AS sv_3, -0.626760792426 AS sv_4, 1.17544966575 AS sv_5, 0.31485475871 AS sv_6, 0.322040534813 AS sv_7, -1.04952723824 AS sv_8, 1.09079483578 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, -1.10031327583 AS sv_0, -0.690127570012 AS sv_1, 0.431790560604 AS sv_2, 1.17075791537 AS sv_3, 0.448549037726 AS sv_4, 0.18561865725 AS sv_5, 0.870064212777 AS sv_6, -0.74720706373 AS sv_7, 0.00841138558665 AS sv_8, -0.640899410352 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.181354710919 AS sv_0, -1.57129047171 AS sv_1, -1.95287759468 AS sv_2, -0.000827267111067 AS sv_3, 1.71018334201 AS sv_4, -1.90402895452 AS sv_5, -1.95758420647 AS sv_6, -0.359071514141 AS sv_7, 0.844420178657 AS sv_8, 1.22343044118 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, -1.53570560943 AS sv_0, 0.0149792898513 AS sv_1, 0.16510827386 AS sv_2, 1.54448623412 AS sv_3, 0.434788136662 AS sv_4, 0.619981660373 AS sv_5, -0.0469420410287 AS sv_6, 0.3354799967 AS sv_7, 1.69857963218 AS sv_8, 0.765972714284 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 0.309108844189 AS sv_0, -0.140120860603 AS sv_1, 1.02638795688 AS sv_2, -0.514259933518 AS sv_3, 0.344039214746 AS sv_4, 0.418096506517 AS sv_5, -1.01116039566 AS sv_6, 0.507510523482 AS sv_7, -1.19837236394 AS sv_8, 0.242975877204 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, 3.00139692842 AS sv_0, 0.521156771871 AS sv_1, 0.495760511781 AS sv_2, -0.345458443936 AS sv_3, 1.71549863377 AS sv_4, 0.482289694398 AS sv_5, 0.536582909534 AS sv_6, 2.39655158063 AS sv_7, 0.377441462082 AS sv_8, 0.43101835181 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 0.52705144423 AS sv_0, 1.73879594722 AS sv_1, 1.73224578585 AS sv_2, -1.24662574374 AS sv_3, 0.950339927952 AS sv_4, 0.234105825902 AS sv_5, -0.152014206572 AS sv_6, -1.73376097806 AS sv_7, 0.321951478532 AS sv_8, 1.77081628549 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, -0.641756619101 AS sv_0, 0.415974767535 AS sv_1, -1.4648849974 AS sv_2, -0.441793222419 AS sv_3, 0.527539031113 AS sv_4, -0.244976636246 AS sv_5, -0.889779578698 AS sv_6, -0.641563447897 AS sv_7, -0.073456165457 AS sv_8, -0.84650455374 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, -0.67216211241 AS sv_0, -0.096873012521 AS sv_1, -1.58174013636 AS sv_2, -1.78979613315 AS sv_3, -0.681238805767 AS sv_4, -1.25080136413 AS sv_5, -0.42306397406 AS sv_6, -0.947223551639 AS sv_7, -0.648802005276 AS sv_8, 1.785119382 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, -1.31862553623 AS sv_0, 1.14230162661 AS sv_1, 0.28591213457 AS sv_2, -1.79609302715 AS sv_3, 0.13903371147 AS sv_4, 0.178988383685 AS sv_5, -0.455711735342 AS sv_6, -0.401321472939 AS sv_7, -0.852428440641 AS sv_8, -1.8083268584 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, 1.03528442982 AS sv_0, 0.383135276926 AS sv_1, -0.0679234737593 AS sv_2, 0.800896047142 AS sv_3, -0.890489217694 AS sv_4, 1.37320171304 AS sv_5, 1.30822222379 AS sv_6, 1.17300050628 AS sv_7, 2.04082193338 AS sv_8, -2.26893387887 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, -0.979763387097 AS sv_0, 2.42252897862 AS sv_1, 1.35174967946 AS sv_2, 0.414710845921 AS sv_3, 0.110306142373 AS sv_4, 0.443513246831 AS sv_5, -1.76096053962 AS sv_6, 0.549464042252 AS sv_7, 0.111592279585 AS sv_8, 0.145480734804 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, 0.02875236755 AS sv_0, 0.486019085987 AS sv_1, 0.530124198033 AS sv_2, 0.0789345255815 AS sv_3, 0.141340059102 AS sv_4, 0.71517651753 AS sv_5, 0.097654214277 AS sv_6, 0.775571767495 AS sv_7, 0.823678226832 AS sv_8, -0.561428280837 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 1.16350627718 AS sv_0, 0.569118449248 AS sv_1, -0.0354867618809 AS sv_2, 0.0673255589956 AS sv_3, 1.02078264814 AS sv_4, -0.81692087064 AS sv_5, -2.18199675801 AS sv_6, -1.43990181202 AS sv_7, 0.170762022837 AS sv_8, -0.362349973681 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, -0.653741324886 AS sv_0, -0.535170241381 AS sv_1, -0.0614573570622 AS sv_2, 0.873014407253 AS sv_3, -0.477153849541 AS sv_4, 0.0544482313264 AS sv_5, 0.969684245671 AS sv_6, -0.596951346207 AS sv_7, -1.27581015928 AS sv_8, -1.17477776361 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, 0.683291703112 AS sv_0, 1.33916934953 AS sv_1, -1.53045947529 AS sv_2, -1.05302241656 AS sv_3, -0.514393327919 AS sv_4, -2.46577129101 AS sv_5, 0.756551477816 AS sv_6, 0.351877488217 AS sv_7, 0.886293658286 AS sv_8, 0.228685015755 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -0.702178020784 AS dual_coeff, 1.10181728717 AS sv_0, -0.721317445867 AS sv_1, -1.03068981928 AS sv_2, 0.820160560971 AS sv_3, -1.41891215961 AS sv_4, 0.703526298627 AS sv_5, 0.502619126844 AS sv_6, -0.811921329234 AS sv_7, 1.03908990971 AS sv_8, -1.31155862602 AS sv_9 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, -0.393749921321 AS sv_0, -1.07123023842 AS sv_1, 0.791345317866 AS sv_2, -1.42350786683 AS sv_3, 1.6587592502 AS sv_4, 1.31721195666 AS sv_5, -0.0785166470815 AS sv_6, 1.59909544715 AS sv_7, 1.60316446536 AS sv_8, 0.516201747487 AS sv_9 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, 0.355520067198 AS sv_0, -1.38487603817 AS sv_1, 1.75308215721 AS sv_2, -1.01668168958 AS sv_3, -1.78529061926 AS sv_4, 1.1127040831 AS sv_5, 1.57993687231 AS sv_6, 0.81968123015 AS sv_7, -0.619046610754 AS sv_8, -0.702422137837 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, -0.0468308417431 AS sv_0, -1.66390144279 AS sv_1, 0.556665981397 AS sv_2, -0.349563600916 AS sv_3, -1.40414930094 AS sv_4, -0.899301662245 AS sv_5, 1.05661725451 AS sv_6, 0.407905806027 AS sv_7, -1.33008622203 AS sv_8, 0.233431123085 AS sv_9 UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, 0.0894501129389 AS sv_0, 0.684650909357 AS sv_1, -0.539671648395 AS sv_2, 0.886061630682 AS sv_3, -0.862946914354 AS sv_4, -0.670260353539 AS sv_5, 1.07948682368 AS sv_6, -0.700132405291 AS sv_7, -0.730601137418 AS sv_8, -0.294570848291 AS sv_9) AS [Values]), 
kernel_dp AS 
(SELECT t.[KEY] AS [KEY], t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.[KEY] AS [KEY], sum(full_join_data_sv.dot_prod1) + -32.8990749274 AS dot_product 
FROM (SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], [SV_data].dual_coeff * power(0.1 * ([ADS_sca_2_OUT].scaler_2 * [SV_data].sv_0 + [ADS_sca_2_OUT].scaler_3 * [SV_data].sv_1 + [ADS_sca_2_OUT].scaler_4 * [SV_data].sv_2 + [ADS_sca_2_OUT].scaler_5 * [SV_data].sv_3 + [ADS_sca_2_OUT].scaler_6 * [SV_data].sv_4 + [ADS_sca_2_OUT].scaler_7 * [SV_data].sv_5 + [ADS_sca_2_OUT].scaler_8 * [SV_data].sv_6 + [ADS_sca_2_OUT].scaler_9 * [SV_data].sv_7 + [ADS_sca_2_OUT].scaler_10 * [SV_data].sv_8 + [ADS_sca_2_OUT].scaler_11 * [SV_data].sv_9) + 0.0, 3) AS dot_prod1 
FROM [ADS_sca_2_OUT], [SV_data]) AS full_join_data_sv GROUP BY full_join_data_sv.[KEY]) AS t)
 SELECT kernel_dp.[KEY] AS [KEY], kernel_dp.dot_product AS [Estimator] 
FROM kernel_dp