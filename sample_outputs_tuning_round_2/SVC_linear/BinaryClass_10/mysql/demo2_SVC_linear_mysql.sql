-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `SV_data` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3, `Values`.sv_4 AS sv_4, `Values`.sv_5 AS sv_5, `Values`.sv_6 AS sv_6, `Values`.sv_7 AS sv_7, `Values`.sv_8 AS sv_8, `Values`.sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.98715475783 AS dual_coeff, 0.480967209803 AS sv_0, 1.92812347239 AS sv_1, 0.53868348079 AS sv_2, 0.912826793785 AS sv_3, 2.09585564888 AS sv_4, -0.27086036413 AS sv_5, -0.785719449274 AS sv_6, 0.177127525921 AS sv_7, 1.40504324806 AS sv_8, -0.433918457138 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.216138704788 AS sv_0, -0.530321200543 AS sv_1, -0.536216408534 AS sv_2, -0.810038703116 AS sv_3, -0.961566289831 AS sv_4, 1.55297185768 AS sv_5, -0.45952368718 AS sv_6, -0.00651479417408 AS sv_7, -1.8130818762 AS sv_8, -0.1327948876 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, -0.0521337920468 AS sv_0, 0.144987875833 AS sv_1, 0.534059225672 AS sv_2, 1.43219523895 AS sv_3, 0.738275982301 AS sv_4, 1.43414423752 AS sv_5, 0.0336020578909 AS sv_6, 0.0525324126039 AS sv_7, -0.880690398484 AS sv_8, -0.274695083686 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -0.489795592268 AS dual_coeff, -0.759932229367 AS sv_0, 0.55280516888 AS sv_1, -0.234873636352 AS sv_2, -1.27014217227 AS sv_3, 1.45637754316 AS sv_4, 1.54351172813 AS sv_5, 2.81077022815 AS sv_6, -0.22290012787 AS sv_7, 0.617244297737 AS sv_8, 0.430107318054 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.785560584885 AS sv_0, 1.07334303511 AS sv_1, 0.128531834891 AS sv_2, -0.56624317511 AS sv_3, -1.48191396384 AS sv_4, -0.838624138909 AS sv_5, 0.266043191577 AS sv_6, 0.26906872009 AS sv_7, 1.27159879869 AS sv_8, -0.617970149026 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 1.14025737817 AS sv_0, 0.676180406825 AS sv_1, -1.47312680416 AS sv_2, 0.732394206242 AS sv_3, 1.49645665358 AS sv_4, -1.46835694127 AS sv_5, 1.12402613081 AS sv_6, 0.377738170542 AS sv_7, -0.254384200258 AS sv_8, -0.839493869013 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.743008901196 AS sv_0, -0.239296472354 AS sv_1, -0.954151101641 AS sv_2, 1.33108697961 AS sv_3, 0.6575038895 AS sv_4, 0.209386929444 AS sv_5, -0.342192173998 AS sv_6, 0.305688565336 AS sv_7, -0.501211309301 AS sv_8, -0.8141122002 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.280350102412 AS dual_coeff, 0.537356569757 AS sv_0, -0.0469094839404 AS sv_1, 0.295558318498 AS sv_2, -2.89513976699 AS sv_3, 1.26211906562 AS sv_4, -0.771930932328 AS sv_5, -0.993739019175 AS sv_6, 0.173929837237 AS sv_7, -0.309323509111 AS sv_8, -0.377307576607 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, 0.579986412132 AS sv_0, -0.236031303884 AS sv_1, 0.435055795643 AS sv_2, 1.33938989529 AS sv_3, -1.88614540989 AS sv_4, 0.0202947435762 AS sv_5, -0.62925718495 AS sv_6, 0.231308234525 AS sv_7, -1.45087419309 AS sv_8, -0.602704080055 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -0.634987302834 AS dual_coeff, -0.0119089997289 AS sv_0, -0.890806535112 AS sv_1, -0.506360699271 AS sv_2, -0.242824068812 AS sv_3, 0.143574433901 AS sv_4, 1.44427219074 AS sv_5, 0.646864407001 AS sv_6, 0.0690200161631 AS sv_7, -1.35333653557 AS sv_8, -0.318492636198 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -0.663444745477 AS dual_coeff, -0.883276681282 AS sv_0, 0.50104977481 AS sv_1, 0.247959867436 AS sv_2, 0.869311275668 AS sv_3, 1.99614765177 AS sv_4, 2.38037612507 AS sv_5, 2.61481887855 AS sv_6, -0.229139116269 AS sv_7, -0.0650419737088 AS sv_8, 0.365632770576 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.726286659436 AS sv_0, -0.136942213468 AS sv_1, 1.87537250289 AS sv_2, 1.52353572216 AS sv_3, -0.460892931809 AS sv_4, -0.970822305401 AS sv_5, -0.0117857703239 AS sv_6, 0.238784823194 AS sv_7, -0.205507583043 AS sv_8, -0.526572999945 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -0.90742527522 AS dual_coeff, 0.186556564723 AS sv_0, 0.701856555113 AS sv_1, -0.172377237906 AS sv_2, -1.02624694014 AS sv_3, -1.41512344563 AS sv_4, 0.0852294506256 AS sv_5, 2.265435222 AS sv_6, 0.0784205641046 AS sv_7, -0.020740240981 AS sv_8, -0.21188837314 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, -0.307217892009 AS sv_0, -0.0841977064807 AS sv_1, -0.130627493152 AS sv_2, 0.560360095369 AS sv_3, -1.21956694502 AS sv_4, 1.31761766962 AS sv_5, 1.42641402119 AS sv_6, -0.0546937413987 AS sv_7, 1.18769013153 AS sv_8, 0.0150236090224 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -0.554182646239 AS dual_coeff, 1.74064284367 AS sv_0, -1.77049538639 AS sv_1, -0.0746387824159 AS sv_2, -0.00379484976238 AS sv_3, -1.23539149481 AS sv_4, -2.18220201138 AS sv_5, 0.236887932753 AS sv_6, 0.579658375594 AS sv_7, 0.309645586228 AS sv_8, -1.29509707298 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 0.651195525977 AS sv_0, -0.0893603842356 AS sv_1, 1.9966011708 AS sv_2, 0.613841372048 AS sv_3, -0.248292201611 AS sv_4, -2.10037521387 AS sv_5, -0.524377780866 AS sv_6, 0.1512935293 AS sv_7, -0.608737487686 AS sv_8, -0.190447906734 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, 0.865241616427 AS sv_0, -1.24947422199 AS sv_1, 1.97045634856 AS sv_2, 0.0232320162859 AS sv_3, -0.753405373119 AS sv_4, -1.20566892282 AS sv_5, 2.1582411153 AS sv_6, 0.281962221399 AS sv_7, 0.95190935763 AS sv_8, -0.616071691333 AS sv_9 UNION ALL SELECT 17 AS sv_idx, 0.431053149654 AS dual_coeff, 0.101972564649 AS sv_0, 1.1685511812 AS sv_1, 1.16463972681 AS sv_2, -1.32289789633 AS sv_3, -0.818319301711 AS sv_4, -1.61308972515 AS sv_5, -0.631891573224 AS sv_6, -0.0418823468058 AS sv_7, -1.73975470506 AS sv_8, 0.264286336452 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, 0.235921635466 AS sv_0, 0.0155955855361 AS sv_1, -0.147525969103 AS sv_2, -1.29393614355 AS sv_3, -2.12779475251 AS sv_4, 2.95111338947 AS sv_5, -2.06329516283 AS sv_6, 0.2443593613 AS sv_7, -1.65330000804 AS sv_8, -0.919146981056 AS sv_9 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, 0.595422822311 AS sv_0, 1.07008820579 AS sv_1, 1.63597347516 AS sv_2, 1.82075305115 AS sv_3, 1.05817101321 AS sv_4, -1.4969966418 AS sv_5, -0.161044904273 AS sv_6, 0.159960158208 AS sv_7, -0.967578463348 AS sv_8, -0.271125620676 AS sv_9 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 0.830937694302 AS sv_0, 0.349415874784 AS sv_1, -0.478655592406 AS sv_2, 1.09788259838 AS sv_3, 0.392838835583 AS sv_4, -2.05769322989 AS sv_5, 0.562281550361 AS sv_6, 0.224835991606 AS sv_7, 1.13525493873 AS sv_8, -0.38556519715 AS sv_9 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, -0.655725904624 AS sv_0, -0.197535430353 AS sv_1, -0.387010233854 AS sv_2, 0.122401886536 AS sv_3, 0.85872940674 AS sv_4, 1.68304994805 AS sv_5, -0.168261988038 AS sv_6, -0.174401924123 AS sv_7, -1.4901396844 AS sv_8, 0.29069683759 AS sv_9 UNION ALL SELECT 22 AS sv_idx, 0.311750122467 AS dual_coeff, -0.771540268927 AS sv_0, 1.46903207689 AS sv_1, -2.01907690794 AS sv_2, -0.513567547036 AS sv_3, 1.0965351527 AS sv_4, 1.60388204156 AS sv_5, -0.608032628453 AS sv_6, -0.224426203222 AS sv_7, -0.320582689182 AS sv_8, 0.428250773431 AS sv_9 UNION ALL SELECT 23 AS sv_idx, 0.170098424136 AS dual_coeff, -0.752517459918 AS sv_0, 1.38255247612 AS sv_1, -0.847973753464 AS sv_2, -0.200862044148 AS sv_3, -0.800367305347 AS sv_4, 1.44947244261 AS sv_5, -0.329284294288 AS sv_6, -0.224758130156 AS sv_7, 0.866960973762 AS sv_8, 0.44399877065 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, -1.0458024423 AS sv_0, 0.112949399265 AS sv_1, 0.468919970763 AS sv_2, -0.760485454596 AS sv_3, 0.135780203515 AS sv_4, 1.47576034656 AS sv_5, 0.522071829574 AS sv_6, -0.339858702268 AS sv_7, -0.480178113991 AS sv_8, 0.740400599204 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, 1.07137559315 AS sv_0, -0.634192993021 AS sv_1, -0.860807679381 AS sv_2, 1.76926394391 AS sv_3, -0.152065143976 AS sv_4, -1.81625697298 AS sv_5, 2.01575230766 AS sv_6, 0.332625375515 AS sv_7, -0.162636782023 AS sv_8, -0.688788669141 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.914053923734 AS sv_0, 0.604443317788 AS sv_1, 0.267650781167 AS sv_2, 1.25665864296 AS sv_3, -0.0180543783647 AS sv_4, -1.47801475508 AS sv_5, 0.609885004871 AS sv_6, 0.287435488496 AS sv_7, -0.168386770204 AS sv_8, -0.604031094118 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 0.407251263102 AS sv_0, 2.04669878675 AS sv_1, -3.99128851799 AS sv_2, 0.838281766139 AS sv_3, 0.540747310632 AS sv_4, 2.5692810288 AS sv_5, 2.43423552353 AS sv_6, 0.292885001656 AS sv_7, 0.318994396389 AS sv_8, -1.00836575844 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 0.604438726023 AS dual_coeff, -1.02964318678 AS sv_0, -0.977391628507 AS sv_1, 1.75508297598 AS sv_2, 0.912248151689 AS sv_3, -0.0819673704161 AS sv_4, 1.2232824746 AS sv_5, 0.636305156382 AS sv_6, -0.346335163199 AS sv_7, 1.81040240277 AS sv_8, 0.781561330778 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, 0.336665226456 AS sv_0, -0.558392482364 AS sv_1, -1.63562728159 AS sv_2, -0.505800386514 AS sv_3, -0.222744448532 AS sv_4, 2.9041633226 AS sv_5, 0.491335010905 AS sv_6, 0.281960185745 AS sv_7, 0.944430988648 AS sv_8, -1.01227659412 AS sv_9) AS `Values`), 
kernel_dp AS 
(SELECT t.`KEY` AS `KEY`, t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.`KEY` AS `KEY`, sum(full_join_data_sv.dot_prod1) + 0.335167550716 AS dot_product 
FROM (SELECT `ADS`.`KEY` AS `KEY`, `SV_data`.dual_coeff * (`ADS`.`Feature_0` * `SV_data`.sv_0 + `ADS`.`Feature_1` * `SV_data`.sv_1 + `ADS`.`Feature_2` * `SV_data`.sv_2 + `ADS`.`Feature_3` * `SV_data`.sv_3 + `ADS`.`Feature_4` * `SV_data`.sv_4 + `ADS`.`Feature_5` * `SV_data`.sv_5 + `ADS`.`Feature_6` * `SV_data`.sv_6 + `ADS`.`Feature_7` * `SV_data`.sv_7 + `ADS`.`Feature_8` * `SV_data`.sv_8 + `ADS`.`Feature_9` * `SV_data`.sv_9) AS dot_prod1 
FROM `BinaryClass_10` AS `ADS`, `SV_data`) AS full_join_data_sv GROUP BY full_join_data_sv.`KEY`) AS t)
 SELECT kernel_dp.`KEY` AS `KEY`, -kernel_dp.dot_product AS `Score_0`, kernel_dp.dot_product AS `Score_1`, exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178) / (1.0 + exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178)) AS `Proba_0`, 1.0 / (1.0 + exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178)) AS `Proba_1`, CASE WHEN (exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178) / (1.0 + exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178)) IS NULL OR exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178) / (1.0 + exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178)) > 0.0) THEN ln(exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178) / (1.0 + exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178))) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (1.0 / (1.0 + exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178)) IS NULL OR 1.0 / (1.0 + exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178)) > 0.0) THEN ln(1.0 / (1.0 + exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178))) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS `Decision`, CASE WHEN (exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178) / (1.0 + exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178)) <= 1.0 / (1.0 + exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178))) THEN 1.0 / (1.0 + exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178)) ELSE exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178) / (1.0 + exp(kernel_dp.dot_product * -0.580911573095 + -0.0472965981178)) END AS `DecisionProba` 
FROM kernel_dp