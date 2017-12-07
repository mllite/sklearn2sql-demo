-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 43.7912812221 ELSE `ADS`.`Feature_0` END AS imputer_output_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 945.967283308 ELSE `ADS`.`Feature_1` END AS imputer_output_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.531000909998 ELSE `ADS`.`Feature_2` END AS imputer_output_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 6.13996715205 ELSE `ADS`.`Feature_3` END AS imputer_output_5 
FROM freidman2 AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.imputer_output_2 AS DOUBLE) - 43.7912812221) / 26.0356235762 AS scaler_output_2, (CAST(`ADS_imp_1_OUT`.imputer_output_3 AS DOUBLE) - 945.967283308) / 461.455276615 AS scaler_output_3, (CAST(`ADS_imp_1_OUT`.imputer_output_4 AS DOUBLE) - 0.531000909998) / 0.290186328214 AS scaler_output_4, (CAST(`ADS_imp_1_OUT`.imputer_output_5 AS DOUBLE) - 6.13996715205) / 3.07291724256 AS scaler_output_5 
FROM `ADS_imp_1_OUT`), 
`SV_data` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 1.0 AS dual_coeff, 0.407021547825 AS sv_0, 1.52061347501 AS sv_1, 0.124649274504 AS sv_2, -0.98956485376 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, -0.892179303001 AS sv_0, 1.5645253459 AS sv_1, -0.142799390284 AS sv_2, 0.400845241862 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, -0.128629540717 AS sv_0, -0.855762437264 AS sv_1, -1.69662769281 AS sv_2, -0.508276249019 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, 0.320412586399 AS sv_0, -0.105621488592 AS sv_1, 0.73617012176 AS sv_2, 1.3362046591 AS sv_3 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 0.188322837868 AS sv_0, 1.55657120246 AS sv_1, -0.756591612266 AS sv_2, -0.490525026051 AS sv_3 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, 0.715223115868 AS sv_0, 0.18382489367 AS sv_1, 0.626533125971 AS sv_2, 1.38791677943 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.177282909525 AS sv_0, 1.48454445915 AS sv_1, -1.39197340374 AS sv_2, -0.611167833969 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, -0.0618398645873 AS sv_0, 0.379833212745 AS sv_1, 0.808251474852 AS sv_2, 0.304112923071 AS sv_3 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, -0.212861866159 AS sv_0, -1.75545003257 AS sv_1, 0.402966247472 AS sv_2, -1.28884231269 AS sv_3 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, 0.0420296246498 AS sv_0, 1.47666384538 AS sv_1, 1.01514304326 AS sv_2, 1.27679381738 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, -0.0406899333809 AS sv_0, 0.335268489224 AS sv_1, 1.52594558502 AS sv_2, -1.08478039871 AS sv_3 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.48763258833 AS sv_0, 0.730080318016 AS sv_1, -1.25125684601 AS sv_2, -0.477942828261 AS sv_3 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 0.262295051032 AS sv_0, -1.1564362267 AS sv_1, -1.46982670777 AS sv_2, -1.05911964092 AS sv_3 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, -1.33548140478 AS sv_0, -0.974263509872 AS sv_1, -0.371647635079 AS sv_2, 0.781105541083 AS sv_3 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 1.48689854262 AS sv_0, -0.932975923252 AS sv_1, 0.00976547361007 AS sv_2, -0.440293998232 AS sv_3 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 2.1576338377 AS sv_0, -1.59602664056 AS sv_1, 0.893240945805 AS sv_2, -1.41158085802 AS sv_3 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, -1.44027720345 AS sv_0, 0.549777976913 AS sv_1, 0.940805174112 AS sv_2, -0.211304175646 AS sv_3 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 0.734401135309 AS sv_0, -1.06127956907 AS sv_1, -1.64272067073 AS sv_2, 1.28389871222 AS sv_3 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, -0.185280428471 AS sv_0, 0.469948210657 AS sv_1, -1.78327789484 AS sv_2, 0.208534293223 AS sv_3 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, -1.07280612861 AS sv_0, -0.011274498105 AS sv_1, 0.15871010004 AS sv_2, 1.36630003624 AS sv_3 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, 0.686982566522 AS sv_0, -0.273885133964 AS sv_1, -1.16903701041 AS sv_2, 0.760063927882 AS sv_3 UNION ALL SELECT 21 AS sv_idx, -1.0 AS dual_coeff, -1.13065301819 AS sv_0, 1.69381585959 AS sv_1, -1.80984919327 AS sv_2, -0.853115053658 AS sv_3 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, 0.676285216483 AS sv_0, -0.297652847313 AS sv_1, 0.61666688552 AS sv_2, 1.18863926749 AS sv_3 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, 1.67729612498 AS sv_0, -0.622211215415 AS sv_1, -0.785942585478 AS sv_2, -0.772226260958 AS sv_3 UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, -1.46858775366 AS sv_0, 0.706265857711 AS sv_1, -0.915855280052 AS sv_2, -1.28346793699 AS sv_3 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, -0.134919529538 AS sv_0, -1.25635360139 AS sv_1, 1.60477723753 AS sv_2, -1.45886786611 AS sv_3 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, -1.67742939216 AS sv_0, -0.836641293061 AS sv_1, 1.60099513863 AS sv_2, 0.728810958541 AS sv_3 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 1.10025021444 AS sv_0, 0.381186639418 AS sv_1, 1.43855061682 AS sv_2, 0.0935793293578 AS sv_3 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 0.645167022606 AS sv_0, 1.1352687444 AS sv_1, 0.268621569111 AS sv_2, -1.23764227873 AS sv_3 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, -0.88391393881 AS sv_0, -0.210463335501 AS sv_1, 0.465219122687 AS sv_2, 0.730461822885 AS sv_3 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, -1.30387013822 AS sv_0, 1.50822777171 AS sv_1, 0.608346026197 AS sv_2, -0.049792963322 AS sv_3 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, -0.32982342717 AS sv_0, 1.65486558409 AS sv_1, 0.0255329761659 AS sv_2, -0.760252201054 AS sv_3 UNION ALL SELECT 32 AS sv_idx, -1.0 AS dual_coeff, 0.972890849958 AS sv_0, 0.563817947473 AS sv_1, -0.964763367678 AS sv_2, -0.355118790747 AS sv_3 UNION ALL SELECT 33 AS sv_idx, -1.0 AS dual_coeff, -0.710888619987 AS sv_0, -0.914407867644 AS sv_1, 0.405804568635 AS sv_2, -0.7553415502 AS sv_3 UNION ALL SELECT 34 AS sv_idx, -1.0 AS dual_coeff, 2.02271403018 AS sv_0, 0.0959099414766 AS sv_1, -1.19888375774 AS sv_2, -1.62902873414 AS sv_3 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, -0.593770432267 AS sv_0, 0.00203877845829 AS sv_1, 0.412858567475 AS sv_2, 1.01112149686 AS sv_3 UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, 1.00096956836 AS sv_0, 1.50211467936 AS sv_1, -0.349173085342 AS sv_2, 0.430917430729 AS sv_3 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, -0.175416482535 AS sv_0, 1.15735797947 AS sv_1, 1.54607764351 AS sv_2, 1.56148404528 AS sv_3 UNION ALL SELECT 38 AS sv_idx, -1.0 AS dual_coeff, 0.48481621013 AS sv_0, -1.27918868707 AS sv_1, 1.06993632765 AS sv_2, 1.20421702148 AS sv_3 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, 0.616441205982 AS sv_0, 0.513531327146 AS sv_1, 0.190149481066 AS sv_2, -1.15167530841 AS sv_3 UNION ALL SELECT 40 AS sv_idx, -1.0 AS dual_coeff, 0.215420405866 AS sv_0, -1.52134380562 AS sv_1, -0.404061522441 AS sv_2, -0.0392636869542 AS sv_3 UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, -1.09329299823 AS sv_0, -1.65872683883 AS sv_1, 0.618284294339 AS sv_2, 1.12998499321 AS sv_3 UNION ALL SELECT 42 AS sv_idx, -1.0 AS dual_coeff, 1.22648417549 AS sv_0, 0.072751996196 AS sv_1, -0.643866925959 AS sv_2, 0.178980189048 AS sv_3 UNION ALL SELECT 43 AS sv_idx, -1.0 AS dual_coeff, 1.82708030812 AS sv_0, -1.39305013568 AS sv_1, 0.0975290193832 AS sv_2, -0.805339016771 AS sv_3 UNION ALL SELECT 44 AS sv_idx, -1.0 AS dual_coeff, 1.10397526645 AS sv_0, -1.17113877531 AS sv_1, 0.137724557427 AS sv_2, 0.271370799103 AS sv_3 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, 0.0698322298174 AS sv_0, 0.663964983923 AS sv_1, 0.744464202029 AS sv_2, -1.46724464649 AS sv_3 UNION ALL SELECT 46 AS sv_idx, -1.0 AS dual_coeff, -0.503173227814 AS sv_0, 0.679095067811 AS sv_1, -0.927914767969 AS sv_2, -0.0888695844144 AS sv_3 UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, 1.34095103297 AS sv_0, -0.133626606356 AS sv_1, 1.11672724649 AS sv_2, 0.867510325359 AS sv_3 UNION ALL SELECT 48 AS sv_idx, 1.0 AS dual_coeff, -0.599024705017 AS sv_0, 1.54455524411 AS sv_1, 0.359435571948 AS sv_2, 0.793299685232 AS sv_3 UNION ALL SELECT 49 AS sv_idx, -1.0 AS dual_coeff, 1.32335257946 AS sv_0, -0.509150388863 AS sv_1, -1.07292410529 AS sv_2, 1.13414117325 AS sv_3 UNION ALL SELECT 50 AS sv_idx, -1.0 AS dual_coeff, -1.22412463621 AS sv_0, 1.51279511994 AS sv_1, -1.67649247371 AS sv_2, -1.3541232355 AS sv_3 UNION ALL SELECT 51 AS sv_idx, -1.0 AS dual_coeff, 0.965886790803 AS sv_0, -0.801196219905 AS sv_1, -1.00297517992 AS sv_2, 0.535944005147 AS sv_3 UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, -0.643421690432 AS sv_0, 0.458153752849 AS sv_1, 0.0456170528249 AS sv_2, -0.428418757161 AS sv_3 UNION ALL SELECT 53 AS sv_idx, 1.0 AS dual_coeff, -0.00817127592426 AS sv_0, 1.55595481877 AS sv_1, -0.399373722833 AS sv_2, -0.994089115202 AS sv_3 UNION ALL SELECT 54 AS sv_idx, 1.0 AS dual_coeff, -0.662693251555 AS sv_0, 0.476458598611 AS sv_1, 0.181451435477 AS sv_2, -1.17621421043 AS sv_3 UNION ALL SELECT 55 AS sv_idx, -1.0 AS dual_coeff, -0.0267018544684 AS sv_0, -0.0285420737484 AS sv_1, -0.744236708579 AS sv_2, 0.16184278958 AS sv_3 UNION ALL SELECT 56 AS sv_idx, -1.0 AS dual_coeff, -0.995680004241 AS sv_0, 1.17015597645 AS sv_1, -1.64516764329 AS sv_2, 0.0658522804904 AS sv_3 UNION ALL SELECT 57 AS sv_idx, -1.0 AS dual_coeff, -1.35300215648 AS sv_0, 0.479373397091 AS sv_1, -1.08824001814 AS sv_2, 1.42641794115 AS sv_3 UNION ALL SELECT 58 AS sv_idx, 1.0 AS dual_coeff, 0.301864826245 AS sv_0, -0.141595509705 AS sv_1, 0.122688847316 AS sv_2, 1.09668931957 AS sv_3 UNION ALL SELECT 59 AS sv_idx, -1.0 AS dual_coeff, 1.25609745058 AS sv_0, -1.57349599213 AS sv_1, 0.806979259164 AS sv_2, 0.185938500417 AS sv_3 UNION ALL SELECT 60 AS sv_idx, -1.0 AS dual_coeff, -0.0848251414363 AS sv_0, -1.10687167875 AS sv_1, -1.48541473841 AS sv_2, -1.19041037107 AS sv_3 UNION ALL SELECT 61 AS sv_idx, -1.0 AS dual_coeff, -1.67632172372 AS sv_0, -1.47633452164 AS sv_1, -0.114700857872 AS sv_2, 0.850353846008 AS sv_3 UNION ALL SELECT 62 AS sv_idx, -1.0 AS dual_coeff, -1.62428028939 AS sv_0, -1.77550865324 AS sv_1, -0.656813160988 AS sv_2, 1.19530454433 AS sv_3 UNION ALL SELECT 63 AS sv_idx, 1.0 AS dual_coeff, 0.9906526079 AS sv_0, -0.00126877961117 AS sv_1, 0.905342065686 AS sv_2, 1.47701117953 AS sv_3 UNION ALL SELECT 64 AS sv_idx, -1.0 AS dual_coeff, -1.06699240809 AS sv_0, -0.752446290024 AS sv_1, -1.62886172896 AS sv_2, 1.27758853804 AS sv_3 UNION ALL SELECT 65 AS sv_idx, 1.0 AS dual_coeff, -1.31427886123 AS sv_0, 0.228052176609 AS sv_1, 0.305700563414 AS sv_2, 0.71018162086 AS sv_3 UNION ALL SELECT 66 AS sv_idx, 1.0 AS dual_coeff, 0.202575704433 AS sv_0, 0.806208754599 AS sv_1, 0.759763416272 AS sv_2, -1.24489375053 AS sv_3 UNION ALL SELECT 67 AS sv_idx, 1.0 AS dual_coeff, -1.57048806123 AS sv_0, 0.307545754754 AS sv_1, -0.343810285711 AS sv_2, 1.27525549011 AS sv_3 UNION ALL SELECT 68 AS sv_idx, 1.0 AS dual_coeff, 1.76685310615 AS sv_0, 0.968758462467 AS sv_1, 1.09385107569 AS sv_2, 1.04446846508 AS sv_3 UNION ALL SELECT 69 AS sv_idx, -1.0 AS dual_coeff, 0.983310970922 AS sv_0, -1.5150419628 AS sv_1, 1.39391883661 AS sv_2, -0.162446226528 AS sv_3 UNION ALL SELECT 70 AS sv_idx, 1.0 AS dual_coeff, 1.31521185637 AS sv_0, 0.187476481877 AS sv_1, 1.52087960661 AS sv_2, -1.59767560417 AS sv_3 UNION ALL SELECT 71 AS sv_idx, -1.0 AS dual_coeff, 0.167184401745 AS sv_0, -0.400704478748 AS sv_1, -0.770256515183 AS sv_2, -1.62350514937 AS sv_3 UNION ALL SELECT 72 AS sv_idx, 1.0 AS dual_coeff, -0.423741162737 AS sv_0, -0.800637708648 AS sv_1, 0.893866304344 AS sv_2, 0.470543138949 AS sv_3 UNION ALL SELECT 73 AS sv_idx, 1.0 AS dual_coeff, -1.61436686287 AS sv_0, -0.26654806039 AS sv_1, 1.36143384772 AS sv_2, 1.17435165334 AS sv_3 UNION ALL SELECT 74 AS sv_idx, -1.0 AS dual_coeff, -0.923065553672 AS sv_0, -1.46005758822 AS sv_1, -0.280397076082 AS sv_2, -1.39152376263 AS sv_3 UNION ALL SELECT 75 AS sv_idx, 1.0 AS dual_coeff, 1.35621160284 AS sv_0, 0.800326548693 AS sv_1, 1.56920190464 AS sv_2, -0.0743568882615 AS sv_3 UNION ALL SELECT 76 AS sv_idx, 1.0 AS dual_coeff, -0.337961164229 AS sv_0, -0.573081537508 AS sv_1, 0.283241254347 AS sv_2, 1.57709528859 AS sv_3 UNION ALL SELECT 77 AS sv_idx, 1.0 AS dual_coeff, -0.381531584994 AS sv_0, 0.213905121327 AS sv_1, 0.755855094168 AS sv_2, -1.5678693671 AS sv_3 UNION ALL SELECT 78 AS sv_idx, 1.0 AS dual_coeff, -0.379870343642 AS sv_0, 0.0921798220404 AS sv_1, 1.49387274106 AS sv_2, -1.08325666706 AS sv_3 UNION ALL SELECT 79 AS sv_idx, -1.0 AS dual_coeff, -0.989584739618 AS sv_0, -0.183502704495 AS sv_1, -1.47781135951 AS sv_2, 0.214294088728 AS sv_3) AS `Values`), 
kernel_dp AS 
(SELECT t.`KEY` AS `KEY`, t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.`KEY` AS `KEY`, sum(full_join_data_sv.dot_prod1) + 390.532531464 AS dot_product 
FROM (SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, `SV_data`.dual_coeff * ((exp(0.25 * (`ADS_sca_2_OUT`.scaler_output_2 * `SV_data`.sv_0 + `ADS_sca_2_OUT`.scaler_output_3 * `SV_data`.sv_1 + `ADS_sca_2_OUT`.scaler_output_4 * `SV_data`.sv_2 + `ADS_sca_2_OUT`.scaler_output_5 * `SV_data`.sv_3) + 0.0) - exp(-(0.25 * (`ADS_sca_2_OUT`.scaler_output_2 * `SV_data`.sv_0 + `ADS_sca_2_OUT`.scaler_output_3 * `SV_data`.sv_1 + `ADS_sca_2_OUT`.scaler_output_4 * `SV_data`.sv_2 + `ADS_sca_2_OUT`.scaler_output_5 * `SV_data`.sv_3) + 0.0))) / (exp(0.25 * (`ADS_sca_2_OUT`.scaler_output_2 * `SV_data`.sv_0 + `ADS_sca_2_OUT`.scaler_output_3 * `SV_data`.sv_1 + `ADS_sca_2_OUT`.scaler_output_4 * `SV_data`.sv_2 + `ADS_sca_2_OUT`.scaler_output_5 * `SV_data`.sv_3) + 0.0) + exp(-(0.25 * (`ADS_sca_2_OUT`.scaler_output_2 * `SV_data`.sv_0 + `ADS_sca_2_OUT`.scaler_output_3 * `SV_data`.sv_1 + `ADS_sca_2_OUT`.scaler_output_4 * `SV_data`.sv_2 + `ADS_sca_2_OUT`.scaler_output_5 * `SV_data`.sv_3) + 0.0)))) AS dot_prod1 
FROM `ADS_sca_2_OUT`, `SV_data`) AS full_join_data_sv GROUP BY full_join_data_sv.`KEY`) AS t)
 SELECT kernel_dp.`KEY` AS `KEY`, kernel_dp.dot_product AS `Estimator` 
FROM kernel_dp