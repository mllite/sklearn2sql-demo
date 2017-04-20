-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.0613966907024 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.0190747434595 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -0.169810145715 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.0260612515383 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0877274005544 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.177221752788 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0421416394657 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -0.0355266873884 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.0717077925979 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.117426101385 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - -0.0613966907024) / 0.938365732586 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.0190747434595) / 1.02693430194 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - -0.169810145715) / 1.0505925366 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - -0.0260612515383) / 1.17317092655 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.0877274005544) / 1.10482239633 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - -0.177221752788) / 0.963378925888 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.0421416394657) / 1.20627752171 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - -0.0355266873884) / 0.448668652659 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.0717077925979) / 0.782550254287 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - -0.117426101385) / 1.07827434222 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 0.0029906662685 AS sv_0, -0.456110146325 AS sv_1, -0.00247012041754 AS sv_2, -0.895101780022 AS sv_3, -1.20156916639 AS sv_4, -1.77326782133 AS sv_5, 1.44825615503 AS sv_6, 1.20944355664 AS sv_7, -0.0788640419601 AS sv_8, -0.119540185831 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.375127320142 AS sv_0, 0.0591675671728 AS sv_1, -0.819648650396 AS sv_2, -0.497869644074 AS sv_3, 1.73792646813 AS sv_4, -0.185156208298 AS sv_5, -0.75592310903 AS sv_6, -1.73296960037 AS sv_7, -0.821942441145 AS sv_8, -0.137720559787 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, 0.0281889170588 AS sv_0, -0.566298748055 AS sv_1, 0.34058025301 AS sv_2, -0.75026049017 AS sv_3, -0.642699937707 AS sv_4, -0.796289860704 AS sv_5, 0.977416098108 AS sv_6, 0.649387520107 AS sv_7, -0.368587508096 AS sv_8, -2.13748163428 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 0.716631834236 AS sv_0, 0.0988506467241 AS sv_1, -0.556753616134 AS sv_2, -1.45178206713 AS sv_3, -0.180622675827 AS sv_4, 0.216448735961 AS sv_5, 1.20151938149 AS sv_6, 0.193818305677 AS sv_7, 0.299855621991 AS sv_8, 0.487348714202 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.622789111959 AS sv_0, 1.14339418206 AS sv_1, 0.139490147115 AS sv_2, -0.432891195792 AS sv_3, 0.0165652009202 AS sv_4, 0.309614503864 AS sv_5, 0.312569189288 AS sv_6, -0.012613651639 AS sv_7, 0.160806342971 AS sv_8, -2.15887070661 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, -0.87170376178 AS sv_0, 1.76512283575 AS sv_1, 0.630309559726 AS sv_2, 0.268562208471 AS sv_3, 1.07816409011 AS sv_4, 1.11389681656 AS sv_5, -0.90022514058 AS sv_6, -1.08035459682 AS sv_7, -0.0188464233918 AS sv_8, 0.409260936656 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -0.595848896339 AS dual_coeff, 2.31599556363 AS sv_0, -0.597404687297 AS sv_1, 0.809428390875 AS sv_2, 0.333104438848 AS sv_3, 1.41281234042 AS sv_4, 0.721149152825 AS sv_5, -1.1655900842 AS sv_6, -1.41551116707 AS sv_7, 0.198362474213 AS sv_8, -1.7833504227 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, -0.352922995493 AS sv_0, -0.917915955718 AS sv_1, 0.407659582505 AS sv_2, -1.72507949607 AS sv_3, 0.829569271674 AS sv_4, -0.368628927137 AS sv_5, 0.750107865815 AS sv_6, -0.813639177026 AS sv_7, 0.0235581692516 AS sv_8, 0.683349841327 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.232704772529 AS dual_coeff, 1.39738353137 AS sv_0, -0.188423204632 AS sv_1, 1.65344518844 AS sv_2, -0.648310365543 AS sv_3, -0.655834275038 AS sv_4, 0.715191632273 AS sv_5, 0.909794498601 AS sv_6, 0.661589014762 AS sv_7, -1.19019139238 AS sv_8, -0.749001778823 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, 0.347687827957 AS sv_0, -0.954105486233 AS sv_1, -0.176187898692 AS sv_2, -0.888731580124 AS sv_3, -0.797986509163 AS sv_4, 1.10496816517 AS sv_5, 1.18160602957 AS sv_6, 0.805899586006 AS sv_7, -0.338505922075 AS sv_8, -0.615337771924 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, -0.642093185862 AS sv_0, 0.370206632924 AS sv_1, 0.151314501475 AS sv_2, -0.866827817505 AS sv_3, 0.790451589866 AS sv_4, -0.66735038514 AS sv_5, 0.134479299513 AS sv_6, -0.782357356194 AS sv_7, 0.544580242037 AS sv_8, 0.0253851396913 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, -0.043189163293 AS sv_0, -0.110507173015 AS sv_1, 1.69458775829 AS sv_2, 0.222422445431 AS sv_3, 0.301328830719 AS sv_4, 0.703696202906 AS sv_5, -0.361661245438 AS sv_6, -0.303284865568 AS sv_7, -0.352750543702 AS sv_8, 0.0126788614211 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -0.485534531446 AS dual_coeff, -0.385242565093 AS sv_0, -0.363042864991 AS sv_1, -2.02523962711 AS sv_2, -0.917455096213 AS sv_3, 0.660272650102 AS sv_4, -1.12595885021 AS sv_5, 0.256767454312 AS sv_6, -0.651747957586 AS sv_7, -1.57486734694 AS sv_8, 1.00362185814 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.293409259309 AS dual_coeff, 0.0910115517162 AS sv_0, 0.823221869863 AS sv_1, 0.759712744403 AS sv_2, -2.10672850975 AS sv_3, 0.413224853815 AS sv_4, 0.388731430948 AS sv_5, 1.3053283414 AS sv_6, -0.393914301867 AS sv_7, -0.0237798597875 AS sv_8, -1.20372548295 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 0.296316129709 AS sv_0, 1.20634748455 AS sv_1, -0.904808284999 AS sv_2, -1.45733229961 AS sv_3, 1.03392329152 AS sv_4, -0.3936056199 AS sv_5, 0.417523147241 AS sv_6, -1.02038580661 AS sv_7, 0.108740979632 AS sv_8, 1.52144465944 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -0.0125090029394 AS dual_coeff, 0.237150764297 AS sv_0, 0.993898306978 AS sv_1, -1.14292899255 AS sv_2, -1.1748716485 AS sv_3, -1.58198381955 AS sv_4, -0.574717569947 AS sv_5, 1.90406943054 AS sv_6, 1.59231823701 AS sv_7, 0.0467218788292 AS sv_8, -1.50405925513 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -0.0309358827611 AS dual_coeff, 1.3347606148 AS sv_0, -1.85538417295 AS sv_1, 1.39192874936 AS sv_2, -1.44662085549 AS sv_3, 0.545710146982 AS sv_4, -0.038963978697 AS sv_5, 0.726333606325 AS sv_6, -0.532387411808 AS sv_7, 1.37390971854 AS sv_8, -0.691699763784 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, -0.997132535342 AS sv_0, -0.560659651665 AS sv_1, 0.485525482289 AS sv_2, 1.42384832278 AS sv_3, 0.96242612233 AS sv_4, 0.113233172192 AS sv_5, -1.68798305412 AS sv_6, -0.975179549151 AS sv_7, -0.740609523195 AS sv_8, 0.939177028274 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, 0.128806376878 AS sv_0, -0.0197483477421 AS sv_1, -0.156513743522 AS sv_2, -0.731338930832 AS sv_3, -0.734881802852 AS sv_4, 1.41061389016 AS sv_5, 1.0231024624 AS sv_6, 0.741374732965 AS sv_7, 0.749249199012 AS sv_8, 1.19773883708 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -0.540942395129 AS dual_coeff, -0.367128957836 AS sv_0, -0.599676829466 AS sv_1, -0.452477554194 AS sv_2, -0.698984462417 AS sv_3, -1.09559282052 AS sv_4, 1.87445673417 AS sv_5, 1.23300961964 AS sv_6, 1.10170421041 AS sv_7, 0.363865847996 AS sv_8, 1.17266264712 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -0.482696985704 AS dual_coeff, -1.42701872656 AS sv_0, 2.38713900994 AS sv_1, -0.0495708680206 AS sv_2, -0.614062612847 AS sv_3, -0.562547138668 AS sv_4, -0.818725004776 AS sv_5, 0.823679699048 AS sv_6, 0.568011939576 AS sv_7, -1.44613277088 AS sv_8, 0.608146116712 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -1.0 AS dual_coeff, 1.8674100943 AS sv_0, -0.915797177017 AS sv_1, 0.548489979375 AS sv_2, 0.141513917824 AS sv_3, 1.00780851406 AS sv_4, -0.443305110656 AS sv_5, -0.759680004762 AS sv_6, -1.00885732592 AS sv_7, -0.382764585187 AS sv_8, 0.253916890845 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, -1.0642187926 AS sv_0, 0.927106399284 AS sv_1, -0.215481504639 AS sv_2, -0.6643177482 AS sv_3, -0.587430852474 AS sv_4, -0.789152590996 AS sv_5, 0.87736186439 AS sv_6, 0.593347967874 AS sv_7, 0.0300187381709 AS sv_8, 0.190612914247 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, 0.476792192689 AS sv_0, 0.602268340168 AS sv_1, 0.431501932494 AS sv_2, -0.436388496872 AS sv_3, 0.234991712069 AS sv_4, 0.689721984803 AS sv_5, 0.17344021065 AS sv_6, -0.230955892992 AS sv_7, -1.51130325946 AS sv_8, -1.22857843555 AS sv_9 UNION ALL SELECT 24 AS sv_idx, -0.855571922328 AS dual_coeff, -1.63290752004 AS sv_0, -1.34798054079 AS sv_1, 0.226047990385 AS sv_2, -0.482517739389 AS sv_3, 0.714474694134 AS sv_4, -0.708716390919 AS sv_5, -0.103252165248 AS sv_6, -0.709903240415 AS sv_7, -0.545275432348 AS sv_8, 2.23894613485 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, -0.236719796576 AS sv_0, 1.94293590766 AS sv_1, -0.278316533922 AS sv_2, -0.0871399042572 AS sv_3, 1.08336375708 AS sv_4, 0.319549103269 AS sv_5, -0.637931783243 AS sv_6, -1.08230933467 AS sv_7, 0.472219886325 AS sv_8, 1.35380433689 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 0.468151353682 AS dual_coeff, -1.02906193878 AS sv_0, 0.115631739823 AS sv_1, -2.18115740362 AS sv_2, 0.781004154149 AS sv_3, -0.741533521354 AS sv_4, 1.47101534484 AS sv_5, -0.102122996952 AS sv_6, 0.734233652341 AS sv_7, 0.599310369321 AS sv_8, 0.0916801522046 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 0.351669322199 AS dual_coeff, -1.09687824383 AS sv_0, -1.29392482344 AS sv_1, -2.08088961699 AS sv_2, 0.00818589762123 AS sv_3, -0.228118811688 AS sv_4, -1.95228917158 AS sv_5, 0.141916665272 AS sv_6, 0.227989461958 AS sv_7, 0.558273628226 AS sv_8, -0.9449411163 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, -0.773768380618 AS sv_0, -0.0147803504659 AS sv_1, -0.324263046773 AS sv_2, 1.01213010621 AS sv_3, -0.214744248286 AS sv_4, -0.777147193053 AS sv_5, -0.61659023471 AS sv_6, 0.205463040566 AS sv_7, 0.617235192229 AS sv_8, -0.547470147891 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 0.599447882029 AS dual_coeff, 0.162832981235 AS sv_0, -1.16839100641 AS sv_1, 0.148972713325 AS sv_2, 0.730864187886 AS sv_3, 0.703853275169 AS sv_4, -0.985615519848 AS sv_5, -1.00261289325 AS sv_6, -0.710349316537 AS sv_7, 1.52040830708 AS sv_8, 0.756233803073 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 0.645996320578 AS dual_coeff, 2.03662414678 AS sv_0, -0.110050481857 AS sv_1, 0.434315083264 AS sv_2, 0.359046619652 AS sv_3, -0.610249131771 AS sv_4, 0.248328254694 AS sv_5, 0.12783660912 AS sv_6, 0.606828615994 AS sv_7, -2.85391116652 AS sv_8, 0.381130470179 AS sv_9 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, -0.915133920106 AS sv_0, 0.477718225217 AS sv_1, 0.0522705709021 AS sv_2, 1.00186695296 AS sv_3, -0.7013273619 AS sv_4, -0.7148608878 AS sv_5, -0.293171983177 AS sv_6, 0.692023064719 AS sv_7, 0.918104440989 AS sv_8, 1.27582900588 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, 0.861796915303 AS sv_0, -1.32388439025 AS sv_1, -0.324244038756 AS sv_2, 0.410509088333 AS sv_3, 1.13280112311 AS sv_4, -1.18299362762 AS sv_5, -1.04169770836 AS sv_6, -1.13627295557 AS sv_7, -0.0163968291082 AS sv_8, 0.950351642415 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 0.0369723611017 AS dual_coeff, -0.0185979474366 AS sv_0, -0.255005941956 AS sv_1, -0.824781073381 AS sv_2, 0.768673386387 AS sv_3, 1.15226432736 AS sv_4, 0.814375750992 AS sv_5, -1.32183422628 AS sv_6, -1.15899762781 AS sv_7, 0.436494969849 AS sv_8, -0.836878157823 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 0.72344622311 AS dual_coeff, 1.81531324809 AS sv_0, -0.284845358603 AS sv_1, -1.090823438 AS sv_2, 1.07499916805 AS sv_3, 0.715706810249 AS sv_4, 0.136574014688 AS sv_5, -1.26733310894 AS sv_6, -0.725338209644 AS sv_7, -0.314867614159 AS sv_8, 0.250561618987 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 0.325796795521 AS dual_coeff, 1.30850452741 AS sv_0, 1.13492295417 AS sv_1, 0.43207003589 AS sv_2, 0.107960028373 AS sv_3, 1.92211840967 AS sv_4, 0.348440417364 AS sv_5, -1.32793200609 AS sv_6, -1.92264199348 AS sv_7, -1.83724966948 AS sv_8, -2.05738574966 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 0.0450933460875 AS dual_coeff, 2.73967089057 AS sv_0, -1.98189653067 AS sv_1, 3.1519816017 AS sv_2, 1.49968522888 AS sv_3, 0.0349294043947 AS sv_4, 0.359565629445 AS sv_5, -1.14275430267 AS sv_6, -0.0485968043536 AS sv_7, 0.0767964270904 AS sv_8, 0.0978002543925 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, -1.18553021934 AS sv_0, 0.715626638475 AS sv_1, 0.488201129335 AS sv_2, 0.991017087292 AS sv_3, 0.776864826466 AS sv_4, -0.737215181952 AS sv_5, -1.24429498242 AS sv_6, -0.785715719696 AS sv_7, -0.391765648504 AS sv_8, 1.12586526572 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, 0.127851993072 AS sv_0, 1.3779021205 AS sv_1, -1.29181393756 AS sv_2, 0.714209759398 AS sv_3, 0.567315376304 AS sv_4, -0.396722818374 AS sv_5, -0.901572002482 AS sv_6, -0.573692285409 AS sv_7, -0.0582464752754 AS sv_8, 0.0232270770897 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, 0.484488651984 AS sv_0, 0.75251224464 AS sv_1, -0.39228974236 AS sv_2, -0.19563210553 AS sv_3, -0.245654868505 AS sv_4, 0.527339368522 AS sv_5, 0.305524146023 AS sv_6, 0.247379949966 AS sv_7, 0.652204112341 AS sv_8, -0.656555423342 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, -1.44343915907 AS sv_0, 0.642031332382 AS sv_1, 0.491674065844 AS sv_2, 0.83255551145 AS sv_3, -0.566386848711 AS sv_4, -0.995299188141 AS sv_5, -0.254281732693 AS sv_6, 0.558658877125 AS sv_7, 0.818436268626 AS sv_8, 0.425196940393 AS sv_9 UNION ALL SELECT 41 AS sv_idx, 1.0 AS dual_coeff, 0.520900227915 AS sv_0, 0.759169535783 AS sv_1, -1.32243273014 AS sv_2, -0.84434532868 AS sv_3, -1.16281953975 AS sv_4, 0.968871182534 AS sv_5, 1.3852017155 AS sv_6, 1.17024036893 AS sv_7, -0.310111537123 AS sv_8, 0.458954874447 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 1.0 AS dual_coeff, -0.694325891921 AS sv_0, 0.736152611121 AS sv_1, -0.406245558532 AS sv_2, 0.683005858835 AS sv_3, -0.718861350306 AS sv_4, -0.763165318687 AS sv_5, -0.0436422265302 AS sv_6, 0.712460573977 AS sv_7, -0.807333312417 AS sv_8, 1.05350953223 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, -0.330068797706 AS sv_0, 0.0585413798522 AS sv_1, -1.22906741633 AS sv_2, 0.431209329271 AS sv_3, 0.905337812741 AS sv_4, -1.32085048441 AS sv_5, -0.909553148392 AS sv_6, -0.909052957264 AS sv_7, 0.0467018878506 AS sv_8, -0.228536718561 AS sv_9 UNION ALL SELECT 44 AS sv_idx, 0.0501765562151 AS dual_coeff, 1.45605092728 AS sv_0, 0.871622114877 AS sv_1, -0.319802785571 AS sv_2, 0.858726502991 AS sv_3, -1.34675758847 AS sv_4, 1.39081480887 AS sv_5, 0.232568798132 AS sv_6, 1.33860383213 AS sv_7, -0.833183506942 AS sv_8, -0.371076391656 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, -1.16343950899 AS sv_0, -0.118288408171 AS sv_1, -0.155425911774 AS sv_2, 0.850688659207 AS sv_3, 0.809362885417 AS sv_4, 0.172330223256 AS sv_5, -1.16057479872 AS sv_6, -0.816926317156 AS sv_7, 1.44109161015 AS sv_8, -0.161531067674 AS sv_9 UNION ALL SELECT 46 AS sv_idx, 1.0 AS dual_coeff, -0.117184689067 AS sv_0, -0.610247694409 AS sv_1, -0.548298276413 AS sv_2, 1.08778178543 AS sv_3, 0.674683052775 AS sv_4, 0.50373632094 AS sv_5, -1.25025913243 AS sv_6, -0.684440855393 AS sv_7, 0.597927685643 AS sv_8, -1.38895621794 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 0.501809728274 AS dual_coeff, -1.10881751336 AS sv_0, 0.390751710161 AS sv_1, -0.132453643022 AS sv_2, 1.13571423987 AS sv_3, 0.681264702415 AS sv_4, 0.481174350558 AS sv_5, -1.29032997725 AS sv_6, -0.691458027514 AS sv_7, -0.840382657928 AS sv_8, -1.33325714021 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 0.777696526106 AS dual_coeff, -0.0600654374304 AS sv_0, -1.79104145888 AS sv_1, -1.36015211139 AS sv_2, 0.0766433760768 AS sv_3, -0.968626923006 AS sv_4, 1.81743242276 AS sv_5, 0.57131657316 AS sv_6, 0.967695732775 AS sv_7, -1.31099878336 AS sv_8, -0.418690707553 AS sv_9 UNION ALL SELECT 49 AS sv_idx, 0.00389723357977 AS dual_coeff, -2.34902078708 AS sv_0, -0.449239758768 AS sv_1, 0.361344354819 AS sv_2, 1.01540901085 AS sv_3, -1.07447785125 AS sv_4, -0.155026198562 AS sv_5, -0.0611419685235 AS sv_6, 1.06496058313 AS sv_7, 2.86957720176 AS sv_8, -0.824847081333 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 1.0 AS dual_coeff, -0.236192344835 AS sv_0, -0.729218493352 AS sv_1, 2.14534609945 AS sv_2, 0.673964728957 AS sv_3, 0.552054706109 AS sv_4, 0.109824170476 AS sv_5, -0.86161077774 AS sv_6, -0.558068276287 AS sv_7, 0.872190369572 AS sv_8, 0.50215053028 AS sv_9 UNION ALL SELECT 51 AS sv_idx, 1.0 AS dual_coeff, -0.237713777392 AS sv_0, -1.00919984006 AS sv_1, -0.0254289118307 AS sv_2, 0.945806920245 AS sv_3, 0.528450227548 AS sv_4, -0.0693351314716 AS sv_5, -1.04932743952 AS sv_6, -0.536948413413 AS sv_7, -0.560105557011 AS sv_8, -0.212028918331 AS sv_9) AS "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 0.101182554874 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data".dual_coeff * power(0.1 * ("ADS_sca_2_OUT".scaler_2 * "SV_data".sv_0 + "ADS_sca_2_OUT".scaler_3 * "SV_data".sv_1 + "ADS_sca_2_OUT".scaler_4 * "SV_data".sv_2 + "ADS_sca_2_OUT".scaler_5 * "SV_data".sv_3 + "ADS_sca_2_OUT".scaler_6 * "SV_data".sv_4 + "ADS_sca_2_OUT".scaler_7 * "SV_data".sv_5 + "ADS_sca_2_OUT".scaler_8 * "SV_data".sv_6 + "ADS_sca_2_OUT".scaler_9 * "SV_data".sv_7 + "ADS_sca_2_OUT".scaler_10 * "SV_data".sv_8 + "ADS_sca_2_OUT".scaler_11 * "SV_data".sv_9) + 0.0, 3) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_cte."KEY" AS "KEY", -kernel_cte.dot_product AS "Score_0", kernel_cte.dot_product AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (kernel_cte.dot_product >= 0.0) THEN 1 ELSE 0 END AS "Decision" 
FROM kernel_cte