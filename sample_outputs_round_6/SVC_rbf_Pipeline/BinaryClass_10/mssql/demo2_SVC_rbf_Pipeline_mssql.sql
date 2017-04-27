-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN -0.195419580213 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN -0.234729587769 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.191995038716 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.138082913787 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN 0.205409628905 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.145368046568 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.00477413970349 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN -0.0882061681823 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN -0.100783625517 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.0336042498554 ELSE [ADS].[Feature_9] END AS impter_11 
FROM [BinaryClass_10] AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - -0.195419580213) / 1.33150639606 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - -0.234729587769) / 1.39513121719 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 0.191995038716) / 1.15094689111 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - 0.138082913787) / 1.35588147545 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - 0.205409628905) / 1.14197294434 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - 0.145368046568) / 0.873184178893 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 0.00477413970349) / 0.970415678699 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - -0.0882061681823) / 1.17747766084 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - -0.100783625517) / 1.04646976578 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - 0.0336042498554) / 1.07065954796 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
[SV_data] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3, [Values].sv_4 AS sv_4, [Values].sv_5 AS sv_5, [Values].sv_6 AS sv_6, [Values].sv_7 AS sv_7, [Values].sv_8 AS sv_8, [Values].sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.0793986406401 AS dual_coeff, -0.953949879135 AS sv_0, -1.25449522943 AS sv_1, 0.0945756999329 AS sv_2, 0.97560811873 AS sv_3, 1.17103578 AS sv_4, 1.27577420498 AS sv_5, -0.0676216859796 AS sv_6, -0.494466087553 AS sv_7, 0.276715701892 AS sv_8, 0.85790988679 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -0.422580849865 AS dual_coeff, -0.999928382117 AS sv_0, -1.07397373861 AS sv_1, -0.12537552451 AS sv_2, 0.55286200261 AS sv_3, -1.10454777208 AS sv_4, 1.04719194904 AS sv_5, -0.148881124957 AS sv_6, -0.479530908252 AS sv_7, 1.00536351301 AS sv_8, -1.23116964663 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.55793172879 AS dual_coeff, -1.20032047268 AS sv_0, -1.58305935167 AS sv_1, 0.440618970633 AS sv_2, 1.23648782365 AS sv_3, 1.21233312136 AS sv_4, 1.61076550681 AS sv_5, 0.385229492392 AS sv_6, 1.07991673779 AS sv_7, -2.02006990954 AS sv_8, -0.514070077882 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -0.143998000779 AS dual_coeff, -0.952167523101 AS sv_0, -0.255546740932 AS sv_1, 0.248937706224 AS sv_2, -0.9689585026 AS sv_3, 2.50635842554 AS sv_4, 0.0737875888705 AS sv_5, 0.0591830811155 AS sv_6, 0.253078924661 AS sv_7, 0.0570630380955 AS sv_8, -0.515016750137 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -0.0596586362473 AS dual_coeff, -0.678550879481 AS sv_0, -0.854252073131 AS sv_1, 0.152034861009 AS sv_2, 0.619727316064 AS sv_3, -0.625051834686 AS sv_4, 0.861631698285 AS sv_5, 0.920243524839 AS sv_6, -1.25401780031 AS sv_7, -1.02249845351 AS sv_8, -1.0534194916 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -0.0825823998644 AS dual_coeff, -0.609416782838 AS sv_0, 0.258586880979 AS sv_1, -0.563630708168 AS sv_2, -1.44307671291 AS sv_3, -0.930332204725 AS sv_4, -0.460905034346 AS sv_5, -1.06037473354 AS sv_6, 0.0219081662561 AS sv_7, 1.12799583425 AS sv_8, -0.546858267042 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -0.140566845745 AS dual_coeff, -0.920383784198 AS sv_0, -0.627188346035 AS sv_1, 0.684077812348 AS sv_2, -0.195521441477 AS sv_3, -0.124159338814 AS sv_4, 0.528933586765 AS sv_5, -1.58238817242 AS sv_6, -0.424820215282 AS sv_7, -2.33765467717 AS sv_8, 0.645483401435 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.709119825261 AS dual_coeff, -0.464664571117 AS sv_0, 0.504214120517 AS sv_1, -0.740042478918 AS sv_2, -1.69885724425 AS sv_3, -0.563588274369 AS sv_4, -0.721019153111 AS sv_5, 1.07823266549 AS sv_6, -0.528523106939 AS sv_7, 0.780732987545 AS sv_8, -1.22862242593 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.554121812782 AS dual_coeff, -0.448564822847 AS sv_0, 1.13974472662 AS sv_1, -0.0860211426872 AS sv_2, -2.91293019076 AS sv_3, -0.322434891486 AS sv_4, -1.48204756878 AS sv_5, 0.290765879739 AS sv_6, 0.853924908145 AS sv_7, 1.1938494951 AS sv_8, 1.70347607823 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -0.909713173772 AS dual_coeff, -0.30858050748 AS sv_0, -0.828277548885 AS sv_1, 0.859054866432 AS sv_2, 1.13914858377 AS sv_3, -2.02520179952 AS sv_4, 0.921215262503 AS sv_5, -0.96885168565 AS sv_6, -1.16632959745 AS sv_7, -1.30082877699 AS sv_8, 1.28264804193 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -0.49827463012 AS dual_coeff, -2.08594867065 AS sv_0, -2.61911227955 AS sv_1, 1.84700788294 AS sv_2, 1.89154358485 AS sv_3, -0.223840995934 AS sv_4, 2.64037977372 AS sv_5, 1.36560969262 AS sv_6, -0.100375640044 AS sv_7, 0.782758039962 AS sv_8, 1.55057242622 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.0990631786585 AS sv_0, 0.605933115327 AS sv_1, 0.116899144184 AS sv_2, -1.02854559823 AS sv_3, 1.21973871837 AS sv_4, -0.705029956093 AS sv_5, -0.0175164636246 AS sv_6, 0.914535294701 AS sv_7, -0.162091300955 AS sv_8, -0.117462163654 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, -0.13987806663 AS sv_0, 0.389664740165 AS sv_1, -0.780769472382 AS sv_2, -0.975123797353 AS sv_3, 0.245478568613 AS sv_4, -0.503383590869 AS sv_5, -1.44157936182 AS sv_6, -0.534809986645 AS sv_7, -0.319748779519 AS sv_8, 1.01272348946 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.762818311506 AS dual_coeff, -0.409182982888 AS sv_0, 0.241823218042 AS sv_1, -0.358868849496 AS sv_2, -1.10187547865 AS sv_3, -0.0136281211161 AS sv_4, -0.391557956953 AS sv_5, -0.840870534803 AS sv_6, -0.428798966102 AS sv_7, -1.08676642115 AS sv_8, -1.46083432205 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -0.635851943599 AS dual_coeff, -0.652772164403 AS sv_0, -0.846926009526 AS sv_1, -1.47690521877 AS sv_2, 0.645166331858 AS sv_3, -1.53917707722 AS sv_4, 0.859143534551 AS sv_5, 0.546090682417 AS sv_6, 0.443471426861 AS sv_7, -0.276692853921 AS sv_8, -0.608854399319 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 0.55675793215 AS sv_0, 0.836245462165 AS sv_1, -0.356143019943 AS sv_2, -0.772286016798 AS sv_3, -0.579585007577 AS sv_4, -0.869864439809 AS sv_5, -0.305935760501 AS sv_6, 0.814391888141 AS sv_7, 1.17808248377 AS sv_8, 1.43565362165 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -0.777862711038 AS dual_coeff, -0.699319613653 AS sv_0, -0.415347296004 AS sv_1, -0.931954640493 AS sv_2, -0.26785800321 AS sv_3, 0.509062583215 AS sv_4, 0.328226506431 AS sv_5, 2.80618071801 AS sv_6, -0.745740676553 AS sv_7, -0.054262354726 AS sv_8, 0.834202871988 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, -0.0765998468938 AS sv_0, 0.153744015569 AS sv_1, -0.19679871289 AS sv_2, -0.417728859934 AS sv_3, 0.403374200069 AS sv_4, -0.203869764643 AS sv_5, 1.32119668642 AS sv_6, -0.25540984747 AS sv_7, 1.97032231995 AS sv_8, 1.56637931745 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -0.664358826651 AS dual_coeff, -1.78705984786 AS sv_0, -2.80986103829 AS sv_1, -1.21544926247 AS sv_2, 2.72391377983 AS sv_3, 0.289308919964 AS sv_4, 2.9433764055 AS sv_5, 1.07786289401 AS sv_6, -1.62634466211 AS sv_7, 2.26672132204 AS sv_8, 0.452899956301 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -0.402274183101 AS dual_coeff, -1.10972623865 AS sv_0, -0.311948955974 AS sv_1, 1.09321281997 AS sv_2, -1.10177859459 AS sv_3, -0.549448559825 AS sv_4, 0.10298871417 AS sv_5, -0.348857427347 AS sv_6, 1.8928926805 AS sv_7, -1.09940191082 AS sv_8, -1.28274714963 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, 0.631334393079 AS sv_0, 0.717544354567 AS sv_1, 0.287996278316 AS sv_2, -0.425986152424 AS sv_3, -0.444505622322 AS sv_4, -0.708672329083 AS sv_5, -1.45096300129 AS sv_6, 0.69426627909 AS sv_7, -0.867143036616 AS sv_8, -0.792822476645 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -0.0842271235404 AS dual_coeff, -1.10616606667 AS sv_0, -0.569704030822 AS sv_1, 1.580710559 AS sv_2, -0.593834914205 AS sv_3, 0.341953935934 AS sv_4, 0.414120140465 AS sv_5, -0.980810168508 AS sv_6, -0.140665702134 AS sv_7, -0.607752471609 AS sv_8, -0.588221975095 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, 0.175375071845 AS sv_0, 0.35534002387 AS sv_1, -0.694753012815 AS sv_2, -0.422466447333 AS sv_3, 1.48309529604 AS sv_4, -0.38465463829 AS sv_5, -0.193450436773 AS sv_6, -1.2173941936 AS sv_7, 1.06384410481 AS sv_8, -0.18539705042 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -0.354464240447 AS dual_coeff, -1.1425880877 AS sv_0, -0.666892583433 AS sv_1, 1.26773120713 AS sv_2, -0.460498688653 AS sv_3, 1.18597757586 AS sv_4, 0.522161342826 AS sv_5, 0.39160585696 AS sv_6, -0.451540711578 AS sv_7, 0.230404322132 AS sv_8, -1.34976300267 AS sv_9 UNION ALL SELECT 24 AS sv_idx, -0.583369120416 AS dual_coeff, -0.182202128779 AS sv_0, -0.0770039668384 AS sv_1, -1.19472418624 AS sv_2, -0.13063068926 AS sv_3, -1.60125255763 AS sv_4, 0.0479478832785 AS sv_5, -0.512565938818 AS sv_6, 0.438464639537 AS sv_7, -1.07470522661 AS sv_8, 1.93524636331 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, 1.26427211692 AS sv_0, 0.258434418382 AS sv_1, -0.270827272247 AS sv_2, 1.44422408371 AS sv_3, 0.289556834847 AS sv_4, -0.000623969161554 AS sv_5, 0.967574511393 AS sv_6, -2.17129603587 AS sv_7, 2.01472611171 AS sv_8, 1.95556372169 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.411137044017 AS sv_0, 0.188642706042 AS sv_1, 0.134583217456 AS sv_2, 0.265752115364 AS sv_3, 0.829463085131 AS sv_4, -0.12610972912 AS sv_5, 1.21106710869 AS sv_6, 0.474584986841 AS sv_7, -0.492203895329 AS sv_8, 0.284870538106 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 0.824367489696 AS sv_0, 1.04481760795 AS sv_1, -0.786477108075 AS sv_2, -0.766532576695 AS sv_3, -0.350885065957 AS sv_4, -1.05520722422 AS sv_5, 0.888255080849 AS sv_6, -0.230569549764 AS sv_7, -0.322070358876 AS sv_8, 1.01175607791 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 0.438915451025 AS sv_0, 1.27009976555 AS sv_1, 0.542323686148 AS sv_2, -1.79959859005 AS sv_3, 0.0208682228144 AS sv_4, -1.42102757144 AS sv_5, -1.12653081359 AS sv_6, -0.770358676797 AS sv_7, -1.02391007764 AS sv_8, 1.32220401112 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 0.594876801269 AS dual_coeff, 1.4256473786 AS sv_0, 0.823087179781 AS sv_1, 0.209598232312 AS sv_2, 0.592160113513 AS sv_3, 0.294253959977 AS sv_4, -0.640664004619 AS sv_5, 0.861573068421 AS sv_6, 2.57327048765 AS sv_7, -1.72238572024 AS sv_8, -0.797419961892 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 0.286814689653 AS dual_coeff, 0.594787753904 AS sv_0, 0.912195576868 AS sv_1, 2.45551593949 AS sv_2, -0.861743504487 AS sv_3, -1.20647621032 AS sv_4, -0.95194634044 AS sv_5, -0.418265960566 AS sv_6, -0.613567160952 AS sv_7, -0.196963590552 AS sv_8, 0.659289502018 AS sv_9 UNION ALL SELECT 31 AS sv_idx, 0.467704611198 AS dual_coeff, 1.30969932221 AS sv_0, 1.16684175322 AS sv_1, 0.822420704065 AS sv_2, -0.256596455493 AS sv_3, 0.190606482669 AS sv_4, -1.08290980473 AS sv_5, 0.352423141317 AS sv_6, -1.24007570749 AS sv_7, -1.12034861074 AS sv_8, -1.52304145862 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, 0.134495596892 AS sv_0, 0.132170853497 AS sv_1, -1.56434090653 AS sv_2, -0.0504164091646 AS sv_3, 2.01940710735 AS sv_4, -0.126066387948 AS sv_5, -0.98791881669 AS sv_6, -1.81840102798 AS sv_7, 0.200597612285 AS sv_8, -0.20393827435 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, 0.929002086469 AS sv_0, 0.325288679002 AS sv_1, -1.13196077074 AS sv_2, 0.797312573408 AS sv_3, -2.46246467842 AS sv_4, -0.163423697553 AS sv_5, -0.276705074569 AS sv_6, -0.301060396157 AS sv_7, 0.446598841762 AS sv_8, -0.503546314025 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 0.480186953276 AS dual_coeff, 0.963636209076 AS sv_0, 1.17863415374 AS sv_1, 1.22465464664 AS sv_2, -0.812802549406 AS sv_3, 0.381970422645 AS sv_4, -1.18208244155 AS sv_5, 0.963048898518 AS sv_6, 0.263623878956 AS sv_7, 1.27248841733 AS sv_8, 0.598843202864 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 0.422548028978 AS dual_coeff, 0.700982870618 AS sv_0, 0.662216618929 AS sv_1, 0.358390121574 AS sv_2, -0.210817073193 AS sv_3, -1.89350787553 AS sv_4, -0.624972212328 AS sv_5, 1.40753666964 AS sv_6, 0.71761132338 AS sv_7, 0.310442082031 AS sv_8, 0.0858597711341 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, 0.178242497337 AS sv_0, 0.596444210906 AS sv_1, 0.228549182531 AS sv_2, -0.888047784894 AS sv_3, -0.227112393819 AS sv_4, -0.674165215794 AS sv_5, -1.94776858372 AS sv_6, -1.25493450969 AS sv_7, 0.126594959248 AS sv_8, -0.811734604549 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 0.27220936137 AS dual_coeff, 0.702985220443 AS sv_0, 0.376347962198 AS sv_1, 0.134828698854 AS sv_2, 0.349529862269 AS sv_3, 0.0366482428088 AS sv_4, -0.280383283453 AS sv_5, 1.68283624021 AS sv_6, 0.604354651047 AS sv_7, 0.100284318373 AS sv_8, 0.982693050291 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 0.176218635403 AS dual_coeff, 1.09095200184 AS sv_0, 0.999322600911 AS sv_1, 2.35384083601 AS sv_2, -0.267089514785 AS sv_3, 0.304121176983 AS sv_4, -0.934983629652 AS sv_5, -0.567606794968 AS sv_6, 1.757526452 AS sv_7, 1.14647071896 AS sv_8, -0.0163649465322 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, 0.939625744398 AS sv_0, 0.218603282159 AS sv_1, 0.145398137255 AS sv_2, 1.02165017073 AS sv_3, 0.290563493831 AS sv_4, -0.0323988400879 AS sv_5, -1.64458328172 AS sv_6, -0.224484073988 AS sv_7, -0.695755299643 AS sv_8, 0.270192952949 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 0.362015855287 AS dual_coeff, 1.3736543982 AS sv_0, 0.426423178535 AS sv_1, -0.145085298572 AS sv_2, 1.28529066938 AS sv_3, 1.64959170274 AS sv_4, -0.17597076454 AS sv_5, -2.97440086764 AS sv_6, -1.38268110191 AS sv_7, -0.326062991076 AS sv_8, 0.443508949177 AS sv_9 UNION ALL SELECT 41 AS sv_idx, 0.00366188948321 AS dual_coeff, 1.20612321427 AS sv_0, 0.574078309068 AS sv_1, 2.19624707562 AS sv_2, 0.739323098683 AS sv_3, -0.732415029067 AS sv_4, -0.394840231543 AS sv_5, -0.372558676904 AS sv_6, -0.233212289167 AS sv_7, 1.1458826458 AS sv_8, -1.93390057842 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 0.648630413398 AS dual_coeff, 0.736092510584 AS sv_0, 0.268952537845 AS sv_1, 0.104544109741 AS sv_2, 0.609894626046 AS sv_3, -2.24913023087 AS sv_4, -0.142982758245 AS sv_5, -0.145286458593 AS sv_6, 1.77018673952 AS sv_7, 2.34561630015 AS sv_8, -1.05523260108 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 0.986085370714 AS dual_coeff, 0.617784798555 AS sv_0, 0.66161367431 AS sv_1, 1.14365199122 AS sv_2, -0.337834358805 AS sv_3, 0.185203284494 AS sv_4, -0.644676328345 AS sv_5, -0.548464445795 AS sv_6, 0.303253701473 AS sv_7, 0.886180314746 AS sv_8, 0.0418197273304 AS sv_9 UNION ALL SELECT 44 AS sv_idx, 0.1370993171 AS dual_coeff, 1.14988351645 AS sv_0, 0.589319872073 AS sv_1, 0.0483240197627 AS sv_2, 0.622956925827 AS sv_3, -1.2886727011 AS sv_4, -0.426996403361 AS sv_5, 1.16041793643 AS sv_6, 3.36929390743 AS sv_7, 0.203412975525 AS sv_8, -1.23718499769 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, 0.0543838053905 AS sv_0, -0.0606160002378 AS sv_1, -0.158879357431 AS sv_2, 0.201957824647 AS sv_3, 0.383644092959 AS sv_4, 0.0863171997701 AS sv_5, 0.846948132027 AS sv_6, 1.73652126657 AS sv_7, 0.890790990326 AS sv_8, -2.37936983197 AS sv_9 UNION ALL SELECT 46 AS sv_idx, 0.585121077034 AS dual_coeff, 1.17616176029 AS sv_0, 0.696865370734 AS sv_1, 0.414967345561 AS sv_2, 0.45380159583 AS sv_3, 1.6067537015 AS sv_4, -0.549995034064 AS sv_5, 0.661354038075 AS sv_6, 0.701774999278 AS sv_7, 0.629082197734 AS sv_8, 2.07254488795 AS sv_9) AS [Values]), 
kernel_cte AS 
(SELECT t.[KEY] AS [KEY], t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.[KEY] AS [KEY], sum(full_join_data_sv.dot_prod1) + -0.1180441417 AS dot_product 
FROM (SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], [SV_data].dual_coeff * exp(-0.1 * (power([ADS_sca_2_OUT].scaler_2 - [SV_data].sv_0, 2) + power([ADS_sca_2_OUT].scaler_3 - [SV_data].sv_1, 2) + power([ADS_sca_2_OUT].scaler_4 - [SV_data].sv_2, 2) + power([ADS_sca_2_OUT].scaler_5 - [SV_data].sv_3, 2) + power([ADS_sca_2_OUT].scaler_6 - [SV_data].sv_4, 2) + power([ADS_sca_2_OUT].scaler_7 - [SV_data].sv_5, 2) + power([ADS_sca_2_OUT].scaler_8 - [SV_data].sv_6, 2) + power([ADS_sca_2_OUT].scaler_9 - [SV_data].sv_7, 2) + power([ADS_sca_2_OUT].scaler_10 - [SV_data].sv_8, 2) + power([ADS_sca_2_OUT].scaler_11 - [SV_data].sv_9, 2))) AS dot_prod1 
FROM [ADS_sca_2_OUT], [SV_data]) AS full_join_data_sv GROUP BY full_join_data_sv.[KEY]) AS t)
 SELECT kernel_cte.[KEY] AS [KEY], -kernel_cte.dot_product AS [Score_0], kernel_cte.dot_product AS [Score_1], CAST(NULL AS FLOAT(53)) AS [Proba_0], CAST(NULL AS FLOAT(53)) AS [Proba_1], CAST(NULL AS FLOAT(53)) AS [LogProba_0], CAST(NULL AS FLOAT(53)) AS [LogProba_1], CASE WHEN (kernel_cte.dot_product >= 0.0) THEN 1 ELSE 0 END AS [Decision] 
FROM kernel_cte