-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.562984648481 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.456064424234 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.471138174815 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.533968020095 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.478093626237 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.568284922417 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.479143747143 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.459415247722 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.490110699681 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.537880693371 ELSE "ADS"."Feature_9" END AS impter_11 
FROM freidman1 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.562984648481) / 0.25837146834 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.456064424234) / 0.287872173071 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.471138174815) / 0.310921679155 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.533968020095) / 0.28261998674 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.478093626237) / 0.286140491318 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.568284922417) / 0.297674081065 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.479143747143) / 0.273531497143 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.459415247722) / 0.28721149347 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.490110699681) / 0.279048671732 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.537880693371) / 0.295819229654 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 0.506787020851 AS sv_0, -1.32658290292 AS sv_1, 1.49349162615 AS sv_2, -0.247292085547 AS sv_3, -0.217604884413 AS sv_4, -1.27256581823 AS sv_5, -1.38627503568 AS sv_6, -1.08359795862 AS sv_7, 1.06406912451 AS sv_8, -0.248430501082 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, 1.44576195871 AS sv_0, -0.452151139387 AS sv_1, 1.30200697399 AS sv_2, 0.924815865787 AS sv_3, 1.63399923245 AS sv_4, 0.47160271538 AS sv_5, 1.02369027264 AS sv_6, 1.17346563345 AS sv_7, -0.345100962741 AS sv_8, -0.0261671342643 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, -0.779555126561 AS sv_0, 0.475613056639 AS sv_1, -0.36917589224 AS sv_2, -0.94185712034 AS sv_3, -1.07438453099 AS sv_4, -1.86773955098 AS sv_5, -0.515911563812 AS sv_6, -1.1124767153 AS sv_7, 0.199532439729 AS sv_8, -0.111317753484 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 1.13337586119 AS sv_0, 1.43222837841 AS sv_1, -0.474244098708 AS sv_2, 1.44482624485 AS sv_3, -1.56497963355 AS sv_4, -0.701420963268 AS sv_5, -0.35975870234 AS sv_6, -0.0723109905576 AS sv_7, -1.20848410004 AS sv_8, -1.80603090029 AS sv_9 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 0.574193758693 AS sv_0, 1.29071424266 AS sv_1, 0.72538697458 AS sv_2, 0.132110620058 AS sv_3, 0.610228748693 AS sv_4, -0.506347305554 AS sv_5, -0.0563876415673 AS sv_6, 1.54715308882 AS sv_7, 1.52043648091 AS sv_8, 1.1050203657 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, -2.12083532965 AS sv_0, -1.58216410339 AS sv_1, -0.420477159015 AS sv_2, 1.22898558433 AS sv_3, 0.0438981347544 AS sv_4, 0.542818620035 AS sv_5, 0.995607898098 AS sv_6, -1.14189051305 AS sv_7, -1.75108771649 AS sv_8, -1.5305589813 AS sv_9 UNION ALL SELECT 6 AS sv_idx, 1.0 AS dual_coeff, 0.339906623004 AS sv_0, 1.28057378815 AS sv_1, -1.05363488083 AS sv_2, 1.580301061 AS sv_3, -1.65053958663 AS sv_4, -1.06305326251 AS sv_5, 0.154243589511 AS sv_6, 0.0448645205383 AS sv_7, 0.912087175729 AS sv_8, 1.30728707509 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, -0.613695236196 AS sv_0, -0.679669271504 AS sv_1, -1.39094651269 AS sv_2, -0.623311860852 AS sv_3, -0.980311055037 AS sv_4, -1.60771545057 AS sv_5, -0.107886058475 AS sv_6, -1.29877208037 AS sv_7, -0.850325397119 AS sv_8, -0.99398497389 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, 0.331984022123 AS sv_0, -0.605052980751 AS sv_1, 0.5081040118 AS sv_2, -1.17335804209 AS sv_3, -1.48104797755 AS sv_4, 1.14300593663 AS sv_5, 0.00839598590466 AS sv_6, -0.24534974765 AS sv_7, -0.65446539657 AS sv_8, -1.76720653172 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, -0.525080091159 AS sv_0, 0.489021870787 AS sv_1, 1.61671351743 AS sv_2, -1.25014280881 AS sv_3, 0.0982361426711 AS sv_4, -1.31959923485 AS sv_5, -1.36973787845 AS sv_6, -0.943128110567 AS sv_7, 0.984899569013 AS sv_8, -1.62333678284 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, -0.472977777515 AS sv_0, 1.29424322884 AS sv_1, -1.5026902186 AS sv_2, 0.0819319695271 AS sv_3, 0.825076043148 AS sv_4, 1.22942207457 AS sv_5, -0.341820375818 AS sv_6, -1.28772678267 AS sv_7, 1.49450630296 AS sv_8, -0.591954236124 AS sv_9 UNION ALL SELECT 11 AS sv_idx, 0.718949331843 AS dual_coeff, 0.782557807091 AS sv_0, 0.3997248228 AS sv_1, 0.696586909718 AS sv_2, 0.373896368332 AS sv_3, -1.04174989754 AS sv_4, 1.07551878218 AS sv_5, 1.44576977265 AS sv_6, -0.463201733785 AS sv_7, -0.67077754425 AS sv_8, -0.882913249814 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, -2.1071028363 AS sv_0, 1.08004146777 AS sv_1, 1.49812993012 AS sv_2, 0.776869867494 AS sv_3, -1.23570817114 AS sv_4, 1.39822296511 AS sv_5, 0.353006014011 AS sv_6, -1.33494433743 AS sv_7, 1.10540905341 AS sv_8, 0.302279952961 AS sv_9 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, 0.519720012369 AS sv_0, 1.69670042054 AS sv_1, -1.49425625406 AS sv_2, 1.21941454176 AS sv_3, -1.44109578897 AS sv_4, 1.10601068572 AS sv_5, -0.497221606231 AS sv_6, 0.295280642175 AS sv_7, 1.62762293716 AS sv_8, -1.30726674397 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, 0.392417891378 AS sv_0, 1.20565504993 AS sv_1, -0.408760298012 AS sv_2, 0.352756891041 AS sv_3, 1.02881035041 AS sv_4, 1.24894394967 AS sv_5, 0.761893993407 AS sv_6, 0.567175790285 AS sv_7, -1.27198507752 AS sv_8, 1.19975897607 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 1.01424307003 AS sv_0, -0.755434488958 AS sv_1, 0.201647380406 AS sv_2, -0.549394997066 AS sv_3, 1.7258247273 AS sv_4, 0.638230925846 AS sv_5, 1.14161525299 AS sv_6, 0.631279227148 AS sv_7, 1.04005411992 AS sv_8, 0.0581852638376 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.839124827571 AS sv_0, -1.56938138507 AS sv_1, -0.0443062991653 AS sv_2, 0.796836049132 AS sv_3, 0.33091282701 AS sv_4, 1.16681175784 AS sv_5, -1.17432430092 AS sv_6, -1.42946322014 AS sv_7, -0.0220298740815 AS sv_8, 1.36056568818 AS sv_9 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, -0.3191087229 AS sv_0, 0.939294449677 AS sv_1, 1.54978835347 AS sv_2, -0.870096796136 AS sv_3, 1.25627968136 AS sv_4, -1.11672071923 AS sv_5, 1.42780491648 AS sv_6, 0.804693925389 AS sv_7, 0.408813184128 AS sv_8, -0.179518490916 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, 1.17598354269 AS sv_0, -1.21181399408 AS sv_1, -0.545256914765 AS sv_2, -1.5046685681 AS sv_3, 0.289161904502 AS sv_4, 0.777691363704 AS sv_5, 1.24108187576 AS sv_6, -0.911098097407 AS sv_7, 1.08541137714 AS sv_8, -0.982339066772 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, 1.65469277722 AS sv_0, -1.47080629361 AS sv_1, -0.254222511735 AS sv_2, 0.970334893971 AS sv_3, -0.284074478195 AS sv_4, 1.13321059645 AS sv_5, 1.46923141979 AS sv_6, -0.109366549905 AS sv_7, -1.2138886023 AS sv_8, -0.610245189982 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -0.145872717164 AS dual_coeff, 0.483774850653 AS sv_0, 0.895689084748 AS sv_1, -0.78144247053 AS sv_2, -0.741349293625 AS sv_3, -0.135946895721 AS sv_4, 0.325972755864 AS sv_5, 0.543339449217 AS sv_6, -0.611933595659 AS sv_7, 0.942826410682 AS sv_8, -0.212312630527 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -0.70747556134 AS dual_coeff, -1.60233024575 AS sv_0, 0.158333947518 AS sv_1, -0.864505857846 AS sv_2, 1.56902322271 AS sv_3, -0.667151885424 AS sv_4, -0.428508701323 AS sv_5, -1.4852018656 AS sv_6, -0.427671316214 AS sv_7, 1.30826018925 AS sv_8, -1.71618219369 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, 0.779143600421 AS sv_0, -0.859674328644 AS sv_1, 0.897259112702 AS sv_2, 0.0423087956038 AS sv_3, -1.47667599052 AS sv_4, 0.447979544499 AS sv_5, -0.782036146745 AS sv_6, -1.18316159217 AS sv_7, -0.40924833544 AS sv_8, 0.361231505669 AS sv_9 UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, 1.01635407168 AS sv_0, 1.56416808138 AS sv_1, -1.42193919616 AS sv_2, 0.194753666227 AS sv_3, -0.163771860588 AS sv_4, 1.134083458 AS sv_5, -0.0842669991304 AS sv_6, 0.8017532006 AS sv_7, 0.920712297233 AS sv_8, -1.60488591647 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, -0.841830331038 AS sv_0, 1.57940597726 AS sv_1, 0.814454760189 AS sv_2, 0.268356159377 AS sv_3, 1.64379044378 AS sv_4, -0.0857718402885 AS sv_5, 0.492974811865 AS sv_6, -0.143998416668 AS sv_7, 0.787814212453 AS sv_8, 1.15399878588 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, -1.13208513635 AS sv_0, 0.901418794842 AS sv_1, -1.18553762104 AS sv_2, 1.45649652624 AS sv_3, -0.989067604456 AS sv_4, -1.28719270983 AS sv_5, 1.31469759142 AS sv_6, 1.74838120097 AS sv_7, -0.00765672910473 AS sv_8, -0.189668024874 AS sv_9 UNION ALL SELECT 26 AS sv_idx, -1.0 AS dual_coeff, -1.88867079623 AS sv_0, -0.827080558478 AS sv_1, -0.413825311826 AS sv_2, -0.288043811798 AS sv_3, -0.1351466476 AS sv_4, 0.703129288744 AS sv_5, 1.22364353504 AS sv_6, -0.370486045035 AS sv_7, 1.20591542061 AS sv_8, 1.10473391325 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 0.298652945878 AS sv_0, 0.364638497881 AS sv_1, -0.93655193961 AS sv_2, 1.46259047806 AS sv_3, 0.0566458297488 AS sv_4, -0.000334394238856 AS sv_5, 1.22315445632 AS sv_6, 1.11955310377 AS sv_7, 0.566340282497 AS sv_8, -0.564816094177 AS sv_9 UNION ALL SELECT 28 AS sv_idx, -1.0 AS dual_coeff, 0.72513841083 AS sv_0, -1.47239306159 AS sv_1, -0.424952598035 AS sv_2, -0.0204999888527 AS sv_3, 1.69989478619 AS sv_4, -1.30063059189 AS sv_5, -0.327091580947 AS sv_6, 0.610937607198 AS sv_7, -1.7079194508 AS sv_8, 0.135883270376 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 0.706124686247 AS dual_coeff, -0.70757157129 AS sv_0, 1.25576861994 AS sv_1, -1.20959952478 AS sv_2, -1.62065714265 AS sv_3, 1.10894872145 AS sv_4, 0.875481933529 AS sv_5, -1.58411835761 AS sv_6, 1.47334957391 AS sv_7, -1.60581834604 AS sv_8, 0.236122961255 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, 0.109938341762 AS sv_0, 0.735628171744 AS sv_1, 1.29302925416 AS sv_2, 0.858111490002 AS sv_3, 1.61638371733 AS sv_4, 1.37714564271 AS sv_5, 0.224768399396 AS sv_6, 1.43002329897 AS sv_7, 0.799427909048 AS sv_8, -0.396880944576 AS sv_9 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, 0.280761691295 AS sv_0, -0.505883885762 AS sv_1, -0.396617594229 AS sv_2, 0.759231512767 AS sv_3, 1.29993676599 AS sv_4, 0.745061085287 AS sv_5, -1.30433008511 AS sv_6, -0.347413501 AS sv_7, -0.644238557124 AS sv_8, -1.33605686304 AS sv_9 UNION ALL SELECT 32 AS sv_idx, -1.0 AS dual_coeff, -1.00937896838 AS sv_0, -1.22132532911 AS sv_1, 0.693720962239 AS sv_2, 0.923221794793 AS sv_3, 0.560995567311 AS sv_4, 0.660642749946 AS sv_5, 0.248457613667 AS sv_6, 1.63570775491 AS sv_7, -0.218046098352 AS sv_8, 1.0166959156 AS sv_9 UNION ALL SELECT 33 AS sv_idx, -1.0 AS dual_coeff, 0.495487404413 AS sv_0, -0.868458459349 AS sv_1, 1.19645807058 AS sv_2, -0.852852954802 AS sv_3, 0.531081627806 AS sv_4, 1.15276503741 AS sv_5, -1.34385979035 AS sv_6, -0.0410693089131 AS sv_7, -1.60193035978 AS sv_8, 1.54218671746 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, 1.05605117809 AS sv_0, 0.511692188895 AS sv_1, 1.57839580984 AS sv_2, -1.7029225132 AS sv_3, 0.495606746895 AS sv_4, 0.896360950451 AS sv_5, -0.158108678041 AS sv_6, -0.424371326126 AS sv_7, -0.24505988295 AS sv_8, -1.75585751149 AS sv_9 UNION ALL SELECT 35 AS sv_idx, -0.0409456744211 AS dual_coeff, -0.0951127384126 AS sv_0, -0.610294898899 AS sv_1, -1.00519567755 AS sv_2, -0.123900374719 AS sv_3, 0.345853830352 AS sv_4, 1.2280695903 AS sv_5, -1.19136767769 AS sv_6, -1.48261536706 AS sv_7, 0.789496176835 AS sv_8, 1.09306977494 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 0.739189043437 AS dual_coeff, -0.920390437585 AS sv_0, 0.351802200301 AS sv_1, -1.26845862433 AS sv_2, -0.991919528161 AS sv_3, 1.14707541944 AS sv_4, -1.74532418339 AS sv_5, 0.00895515769914 AS sv_6, -0.163988608901 AS sv_7, 0.316406187143 AS sv_8, 1.1923717553 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, 0.932862525828 AS sv_0, -0.0243154224702 AS sv_1, -1.30202227567 AS sv_2, 1.01768177358 AS sv_3, -1.15770893506 AS sv_4, 0.387701464169 AS sv_5, -1.70138592392 AS sv_6, -1.25539254044 AS sv_7, -1.27185794465 AS sv_8, -1.65066373327 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, 0.452989014807 AS sv_0, 0.341237552387 AS sv_1, -0.436618837535 AS sv_2, -0.548994373666 AS sv_3, 1.57626835592 AS sv_4, -0.651344017528 AS sv_5, 1.781920448 AS sv_6, -0.587155776198 AS sv_7, 1.05084629915 AS sv_8, -0.647743875112 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, 0.514185055085 AS sv_0, 0.158796923313 AS sv_1, 1.03749801519 AS sv_2, 1.53528422466 AS sv_3, -0.944687410782 AS sv_4, -0.42193469562 AS sv_5, 0.683129342814 AS sv_6, 0.971570939482 AS sv_7, -1.53085494353 AS sv_8, 0.404140672249 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, 0.899520798117 AS sv_0, 0.812720016031 AS sv_1, -1.43526427256 AS sv_2, 0.779483212343 AS sv_3, -0.398007213462 AS sv_4, -0.735929908908 AS sv_5, -0.0474339138742 AS sv_6, 1.78848394793 AS sv_7, -1.7036183018 AS sv_8, -0.494797440361 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, -1.82981793917 AS sv_0, -0.795947657588 AS sv_1, -0.154329307499 AS sv_2, 0.778628455101 AS sv_3, -1.25424156068 AS sv_4, 1.21332147479 AS sv_5, -1.58898714374 AS sv_6, -1.25875671632 AS sv_7, -0.568325353314 AS sv_8, 0.306514283012 AS sv_9 UNION ALL SELECT 42 AS sv_idx, -0.21510913521 AS dual_coeff, -0.49594844229 AS sv_0, 1.72039086235 AS sv_1, 0.796166158333 AS sv_2, 0.108058645796 AS sv_3, -0.884823446973 AS sv_4, 0.288051794889 AS sv_5, -0.516351447762 AS sv_6, 0.449568017992 AS sv_7, -0.978015898778 AS sv_8, 0.994969932175 AS sv_9 UNION ALL SELECT 43 AS sv_idx, -1.0 AS dual_coeff, -0.291128185317 AS sv_0, -0.441782343896 AS sv_1, -0.719064906416 AS sv_2, -0.111764220907 AS sv_3, -0.240188780683 AS sv_4, -0.414549203678 AS sv_5, 0.0696362983977 AS sv_6, 0.145146533363 AS sv_7, 0.129833880039 AS sv_8, 0.443255812357 AS sv_9 UNION ALL SELECT 44 AS sv_idx, 1.0 AS dual_coeff, 0.177908840444 AS sv_0, -1.11988920441 AS sv_1, -1.4586819529 AS sv_2, -0.379040854157 AS sv_3, 1.56558329468 AS sv_4, 1.02991948822 AS sv_5, 0.136589224051 AS sv_6, 0.00948405280693 AS sv_7, 0.274120052094 AS sv_8, 1.05848282475 AS sv_9 UNION ALL SELECT 45 AS sv_idx, -0.35406935431 AS dual_coeff, 0.830706642567 AS sv_0, -0.792273700533 AS sv_1, -0.654261211437 AS sv_2, 0.393505287037 AS sv_3, 0.765343560882 AS sv_4, 0.460955207025 AS sv_5, -0.814189586031 AS sv_6, 1.27678105105 AS sv_7, 0.942354890771 AS sv_8, -0.99530286205 AS sv_9 UNION ALL SELECT 46 AS sv_idx, -1.0 AS dual_coeff, -1.23288365647 AS sv_0, -1.15932160417 AS sv_1, -1.23601623911 AS sv_2, -0.152170243655 AS sv_3, -0.817197032493 AS sv_4, -1.47633260068 AS sv_5, -0.406036012112 AS sv_6, 0.657511503664 AS sv_7, -1.16563587695 AS sv_8, -1.09899167105 AS sv_9 UNION ALL SELECT 47 AS sv_idx, -1.0 AS dual_coeff, -1.00489699876 AS sv_0, -0.0471896388928 AS sv_1, -0.735560502553 AS sv_2, -0.887918897074 AS sv_3, 1.73293483099 AS sv_4, 0.446798068499 AS sv_5, -1.25460332396 AS sv_6, -0.313250490398 AS sv_7, -1.46151379155 AS sv_8, -0.802235584277 AS sv_9 UNION ALL SELECT 48 AS sv_idx, -1.0 AS dual_coeff, -1.08094536563 AS sv_0, 0.3480362685 AS sv_1, -0.217989025569 AS sv_2, -1.85329215314 AS sv_3, -0.151545874565 AS sv_4, 1.10607217187 AS sv_5, 1.42182546019 AS sv_6, -0.832559000999 AS sv_7, 1.59926363562 AS sv_8, 0.736088178623 AS sv_9 UNION ALL SELECT 49 AS sv_idx, -1.0 AS dual_coeff, 0.738685059154 AS sv_0, -1.07631146664 AS sv_1, -0.162852669106 AS sv_2, -0.773954108506 AS sv_3, -1.45614767978 AS sv_4, -0.869956166817 AS sv_5, -0.953791459902 AS sv_6, 0.01126601081 AS sv_7, 1.50514992937 AS sv_8, 0.0695602300789 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 1.0 AS dual_coeff, 0.969186310508 AS sv_0, 1.72488854791 AS sv_1, 1.26444634328 AS sv_2, 0.843199027585 AS sv_3, -0.255058283901 AS sv_4, -0.730273017808 AS sv_5, -1.02179730221 AS sv_6, -1.29684767394 AS sv_7, -1.60367123887 AS sv_8, 1.22572294244 AS sv_9 UNION ALL SELECT 51 AS sv_idx, -1.0 AS dual_coeff, -1.38311046305 AS sv_0, 1.69522195178 AS sv_1, 0.0592570595115 AS sv_2, 0.365172760188 AS sv_3, 0.0309296007632 AS sv_4, 1.25486202771 AS sv_5, -0.613075206395 AS sv_6, -0.334780521496 AS sv_7, -0.494786348802 AS sv_8, 1.45936964511 AS sv_9 UNION ALL SELECT 52 AS sv_idx, -1.0 AS dual_coeff, 1.24829294642 AS sv_0, -1.05295722198 AS sv_1, -0.047755512308 AS sv_2, -0.768934139593 AS sv_3, 0.225329569908 AS sv_4, -1.4984098449 AS sv_5, 1.48341475781 AS sv_6, 1.0692738813 AS sv_7, -0.513952076692 AS sv_8, 0.583591324716 AS sv_9 UNION ALL SELECT 53 AS sv_idx, -1.0 AS dual_coeff, -1.18319553565 AS sv_0, -1.5214638348 AS sv_1, 0.522508210687 AS sv_2, 0.702482826107 AS sv_3, -0.0115226508608 AS sv_4, -0.823775766126 AS sv_5, 0.107004444507 AS sv_6, 0.450193896953 AS sv_7, -0.180960736137 AS sv_8, 1.44447352715 AS sv_9 UNION ALL SELECT 54 AS sv_idx, 1.0 AS dual_coeff, -0.92309139607 AS sv_0, 1.27521484661 AS sv_1, -1.19624739127 AS sv_2, -0.115953246497 AS sv_3, 1.33014957168 AS sv_4, -1.80265646067 AS sv_5, 1.65592739905 AS sv_6, -1.33894788292 AS sv_7, 0.144242348778 AS sv_8, 1.51177032136 AS sv_9 UNION ALL SELECT 55 AS sv_idx, -1.0 AS dual_coeff, -0.96898112368 AS sv_0, 0.277958260999 AS sv_1, 1.00929343158 AS sv_2, -1.7575368693 AS sv_3, 0.503018087715 AS sv_4, -1.18392618887 AS sv_5, -1.20498092056 AS sv_6, 1.19512206993 AS sv_7, 1.19878986279 AS sv_8, 0.412125133675 AS sv_9 UNION ALL SELECT 56 AS sv_idx, 1.0 AS dual_coeff, 0.993655416831 AS sv_0, 0.0134440876218 AS sv_1, -1.44347871841 AS sv_2, -1.18023005201 AS sv_3, 0.020884485606 AS sv_4, 1.18651350107 AS sv_5, -1.28714422956 AS sv_6, -0.463858003794 AS sv_7, -0.217661665496 AS sv_8, 1.28747728762 AS sv_9 UNION ALL SELECT 57 AS sv_idx, -1.0 AS dual_coeff, -1.0823664183 AS sv_0, -0.342797088626 AS sv_1, 0.895173155257 AS sv_2, -1.61306906017 AS sv_3, -1.22270023088 AS sv_4, -1.02577765383 AS sv_5, 1.60120305479 AS sv_6, -0.923292806202 AS sv_7, 0.675924245519 AS sv_8, -1.02970431833 AS sv_9 UNION ALL SELECT 58 AS sv_idx, -1.0 AS dual_coeff, 0.0800049148603 AS sv_0, -1.05431726384 AS sv_1, 0.468397163091 AS sv_2, -0.386374102663 AS sv_3, -1.00066674422 AS sv_4, 0.602246413563 AS sv_5, -0.629672356752 AS sv_6, 0.81663364566 AS sv_7, -0.818416255769 AS sv_8, -0.17305455786 AS sv_9 UNION ALL SELECT 59 AS sv_idx, 1.0 AS dual_coeff, 0.880143785806 AS sv_0, 0.703528588107 AS sv_1, 0.920159190364 AS sv_2, -0.0399176863064 AS sv_3, -0.468071102855 AS sv_4, 0.00238826197284 AS sv_5, -0.279156428276 AS sv_6, -1.08688108709 AS sv_7, 1.81536296637 AS sv_8, -1.59618426684 AS sv_9 UNION ALL SELECT 60 AS sv_idx, -0.87664805893 AS dual_coeff, -2.17439271515 AS sv_0, -0.660906776456 AS sv_1, 1.68675802014 AS sv_2, 0.721768738193 AS sv_3, -0.447930699982 AS sv_4, -0.766034938077 AS sv_5, 0.490071175907 AS sv_6, 1.87739631 AS sv_7, -0.543030768837 AS sv_8, 0.083421512873 AS sv_9 UNION ALL SELECT 61 AS sv_idx, 1.0 AS dual_coeff, 0.375048662156 AS sv_0, -1.48649004896 AS sv_1, 1.44058381307 AS sv_2, 1.57449246928 AS sv_3, 1.55069880131 AS sv_4, 0.444337690999 AS sv_5, 1.54254931444 AS sv_6, -0.596049621977 AS sv_7, 0.761184654666 AS sv_8, 0.114319955345 AS sv_9 UNION ALL SELECT 62 AS sv_idx, 1.0 AS dual_coeff, 0.147177531706 AS sv_0, -0.505535472593 AS sv_1, -0.832620305017 AS sv_2, 0.628693339209 AS sv_3, -0.540567238119 AS sv_4, 0.324150609635 AS sv_5, -1.03113993659 AS sv_6, 0.878041330986 AS sv_7, -0.703226594638 AS sv_8, 0.356331819273 AS sv_9 UNION ALL SELECT 63 AS sv_idx, 1.0 AS dual_coeff, -0.66084158766 AS sv_0, 1.29569169275 AS sv_1, 1.63550296997 AS sv_2, 1.62713127648 AS sv_3, -0.147858335124 AS sv_4, 1.25427712111 AS sv_5, -0.234106974986 AS sv_6, -0.873551012047 AS sv_7, -0.805358457738 AS sv_8, 0.334129270661 AS sv_9 UNION ALL SELECT 64 AS sv_idx, -1.0 AS dual_coeff, 1.6901308441 AS sv_0, -1.40604857712 AS sv_1, 1.02620391837 AS sv_2, -1.60547180655 AS sv_3, -0.164719114435 AS sv_4, -0.249303675085 AS sv_5, -0.599968035288 AS sv_6, 0.363197224773 AS sv_7, 0.414893105438 AS sv_8, 0.963215642579 AS sv_9 UNION ALL SELECT 65 AS sv_idx, -1.0 AS dual_coeff, -1.52912150408 AS sv_0, -0.308941235522 AS sv_1, -0.370898404659 AS sv_2, -1.21262430898 AS sv_3, 0.152505919149 AS sv_4, -0.271852693417 AS sv_5, 0.900064206119 AS sv_6, -1.00307226309 AS sv_7, 0.289755881794 AS sv_8, 0.201156708687 AS sv_9 UNION ALL SELECT 66 AS sv_idx, -1.0 AS dual_coeff, 0.706966422799 AS sv_0, -1.08159301158 AS sv_1, -0.491652458603 AS sv_2, -1.80254684783 AS sv_3, -0.928331654003 AS sv_4, -0.386538473821 AS sv_5, -0.314833058554 AS sv_6, 0.40579310809 AS sv_7, -0.897561594478 AS sv_8, 0.996263798698 AS sv_9 UNION ALL SELECT 67 AS sv_idx, -0.824142560154 AS dual_coeff, 0.935326534351 AS sv_0, 0.818831962755 AS sv_1, -1.06377977947 AS sv_2, -1.54610724298 AS sv_3, -0.0577075025102 AS sv_4, 0.121493569989 AS sv_5, -0.790120355932 AS sv_6, 1.62397814906 AS sv_7, 0.905261931 AS sv_8, -0.481208879606 AS sv_9 UNION ALL SELECT 68 AS sv_idx, 1.0 AS dual_coeff, 1.46825756283 AS sv_0, 0.350243858141 AS sv_1, 0.371217772581 AS sv_2, 0.69548726865 AS sv_3, -1.19228790453 AS sv_4, -1.68813804288 AS sv_5, -1.5711043588 AS sv_6, 1.31982518111 AS sv_7, -0.323619396111 AS sv_8, 1.33904754715 AS sv_9 UNION ALL SELECT 69 AS sv_idx, -1.0 AS dual_coeff, -1.47029939699 AS sv_0, -1.5376781746 AS sv_1, -1.20739750495 AS sv_2, 0.115301530806 AS sv_3, 0.494922641455 AS sv_4, 0.550752443783 AS sv_5, -1.39180189487 AS sv_6, 1.63208607403 AS sv_7, 0.779161243065 AS sv_8, -0.132462462858 AS sv_9 UNION ALL SELECT 70 AS sv_idx, 1.0 AS dual_coeff, -0.349442275196 AS sv_0, 1.18822671915 AS sv_1, 1.21822409253 AS sv_2, -0.207960753906 AS sv_3, -0.935531307494 AS sv_4, 0.217616617978 AS sv_5, 1.01754531181 AS sv_6, 0.347233686979 AS sv_7, -0.5961551643 AS sv_8, 1.09470856975 AS sv_9 UNION ALL SELECT 71 AS sv_idx, -1.0 AS dual_coeff, -0.497155978796 AS sv_0, -0.232759054513 AS sv_1, 1.17515462944 AS sv_2, -1.66899590783 AS sv_3, -0.425004463738 AS sv_4, -1.8906209535 AS sv_5, 1.62174624393 AS sv_6, -0.388740547073 AS sv_7, -0.0410966172956 AS sv_8, 1.50557147674 AS sv_9 UNION ALL SELECT 72 AS sv_idx, 1.0 AS dual_coeff, 0.489228991026 AS sv_0, -0.626126535142 AS sv_1, -0.743553650542 AS sv_2, 0.512065173544 AS sv_3, 1.52201785715 AS sv_4, -1.54412989271 AS sv_5, 0.293051263643 AS sv_6, -0.671604556146 AS sv_7, -0.741052522589 AS sv_8, -0.118885980141 AS sv_9 UNION ALL SELECT 73 AS sv_idx, 1.0 AS dual_coeff, 0.730409813836 AS sv_0, 0.0852394799077 AS sv_1, 0.671229605811 AS sv_2, 1.32977707226 AS sv_3, -0.348420105304 AS sv_4, 1.23700549062 AS sv_5, 0.0585555854978 AS sv_6, 1.31412113359 AS sv_7, 0.17826788477 AS sv_8, 0.0195177177628 AS sv_9 UNION ALL SELECT 74 AS sv_idx, 1.0 AS dual_coeff, 0.389106789818 AS sv_0, -0.59296728227 AS sv_1, 1.61557405292 AS sv_2, 0.552116878609 AS sv_3, -1.43873688105 AS sv_4, -0.184479686661 AS sv_5, 0.580331734587 AS sv_6, -1.47823326979 AS sv_7, -1.18058685216 AS sv_8, 1.19445813818 AS sv_9 UNION ALL SELECT 75 AS sv_idx, 1.0 AS dual_coeff, 1.54660118733 AS sv_0, 0.10389857115 AS sv_1, -0.476430610268 AS sv_2, -0.0583764631282 AS sv_3, -0.129917919436 AS sv_4, 0.235376011658 AS sv_5, 0.950675253452 AS sv_6, -1.45463571345 AS sv_7, -0.364428443248 AS sv_8, -1.59891792339 AS sv_9 UNION ALL SELECT 76 AS sv_idx, 1.0 AS dual_coeff, -0.0725555864999 AS sv_0, -0.256076323161 AS sv_1, 0.731320205639 AS sv_2, 1.38869982116 AS sv_3, -0.169210486651 AS sv_4, 0.262465421273 AS sv_5, -1.04888575785 AS sv_6, -1.51414394995 AS sv_7, 1.1655175722 AS sv_8, 0.220430278507 AS sv_9) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 15.8991047102 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data".dual_coeff * exp(CASE WHEN (CASE WHEN (-0.1 * (power("ADS_sca_2_OUT".scaler_2 - "SV_data".sv_0, 2) + power("ADS_sca_2_OUT".scaler_3 - "SV_data".sv_1, 2) + power("ADS_sca_2_OUT".scaler_4 - "SV_data".sv_2, 2) + power("ADS_sca_2_OUT".scaler_5 - "SV_data".sv_3, 2) + power("ADS_sca_2_OUT".scaler_6 - "SV_data".sv_4, 2) + power("ADS_sca_2_OUT".scaler_7 - "SV_data".sv_5, 2) + power("ADS_sca_2_OUT".scaler_8 - "SV_data".sv_6, 2) + power("ADS_sca_2_OUT".scaler_9 - "SV_data".sv_7, 2) + power("ADS_sca_2_OUT".scaler_10 - "SV_data".sv_8, 2) + power("ADS_sca_2_OUT".scaler_11 - "SV_data".sv_9, 2)) <= -100.0) THEN -100.0 ELSE -0.1 * (power("ADS_sca_2_OUT".scaler_2 - "SV_data".sv_0, 2) + power("ADS_sca_2_OUT".scaler_3 - "SV_data".sv_1, 2) + power("ADS_sca_2_OUT".scaler_4 - "SV_data".sv_2, 2) + power("ADS_sca_2_OUT".scaler_5 - "SV_data".sv_3, 2) + power("ADS_sca_2_OUT".scaler_6 - "SV_data".sv_4, 2) + power("ADS_sca_2_OUT".scaler_7 - "SV_data".sv_5, 2) + power("ADS_sca_2_OUT".scaler_8 - "SV_data".sv_6, 2) + power("ADS_sca_2_OUT".scaler_9 - "SV_data".sv_7, 2) + power("ADS_sca_2_OUT".scaler_10 - "SV_data".sv_8, 2) + power("ADS_sca_2_OUT".scaler_11 - "SV_data".sv_9, 2)) END >= 100.0) THEN 100.0 ELSE CASE WHEN (-0.1 * (power("ADS_sca_2_OUT".scaler_2 - "SV_data".sv_0, 2) + power("ADS_sca_2_OUT".scaler_3 - "SV_data".sv_1, 2) + power("ADS_sca_2_OUT".scaler_4 - "SV_data".sv_2, 2) + power("ADS_sca_2_OUT".scaler_5 - "SV_data".sv_3, 2) + power("ADS_sca_2_OUT".scaler_6 - "SV_data".sv_4, 2) + power("ADS_sca_2_OUT".scaler_7 - "SV_data".sv_5, 2) + power("ADS_sca_2_OUT".scaler_8 - "SV_data".sv_6, 2) + power("ADS_sca_2_OUT".scaler_9 - "SV_data".sv_7, 2) + power("ADS_sca_2_OUT".scaler_10 - "SV_data".sv_8, 2) + power("ADS_sca_2_OUT".scaler_11 - "SV_data".sv_9, 2)) <= -100.0) THEN -100.0 ELSE -0.1 * (power("ADS_sca_2_OUT".scaler_2 - "SV_data".sv_0, 2) + power("ADS_sca_2_OUT".scaler_3 - "SV_data".sv_1, 2) + power("ADS_sca_2_OUT".scaler_4 - "SV_data".sv_2, 2) + power("ADS_sca_2_OUT".scaler_5 - "SV_data".sv_3, 2) + power("ADS_sca_2_OUT".scaler_6 - "SV_data".sv_4, 2) + power("ADS_sca_2_OUT".scaler_7 - "SV_data".sv_5, 2) + power("ADS_sca_2_OUT".scaler_8 - "SV_data".sv_6, 2) + power("ADS_sca_2_OUT".scaler_9 - "SV_data".sv_7, 2) + power("ADS_sca_2_OUT".scaler_10 - "SV_data".sv_8, 2) + power("ADS_sca_2_OUT".scaler_11 - "SV_data".sv_9, 2)) END END) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp