-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [SV_data] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3, [Values].sv_4 AS sv_4, [Values].sv_5 AS sv_5, [Values].sv_6 AS sv_6, [Values].sv_7 AS sv_7, [Values].sv_8 AS sv_8, [Values].sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, 1.0 AS dual_coeff, 0.209118558519 AS sv_0, 0.895378652593 AS sv_1, 0.206270819872 AS sv_2, 0.845329998193 AS sv_3, 0.91078058025 AS sv_4, 0.403249511868 AS sv_5, 0.489539851521 AS sv_6, 0.954713875797 AS sv_7, 0.169964116785 AS sv_8, 0.132587584307 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, 0.951618668422 AS sv_0, 0.00217117504596 AS sv_1, 0.49009798461 AS sv_2, 0.28750875123 AS sv_3, 0.578218896735 AS sv_4, 0.0563456944525 AS sv_5, 0.548896440281 AS sv_6, 0.713464462918 AS sv_7, 0.645374014363 AS sv_8, 0.42693249515 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, 0.780098186977 AS sv_0, 0.638426865216 AS sv_1, 0.383924101643 AS sv_2, 0.842568773721 AS sv_3, 0.534522957713 AS sv_4, 0.0906694127204 AS sv_5, 0.830758643163 AS sv_6, 0.141738363538 AS sv_7, 0.421402145379 AS sv_8, 0.543838018159 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 0.0828555350512 AS sv_0, 0.288328373561 AS sv_1, 0.392069493303 AS sv_2, 0.831865546653 AS sv_3, 0.949797345386 AS sv_4, 0.0315724787699 AS sv_5, 0.558588785852 AS sv_6, 0.228577858326 AS sv_7, 0.0297505260567 AS sv_8, 0.071905278269 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.284005680322 AS sv_0, 0.486902409344 AS sv_1, 0.308984410982 AS sv_2, 0.397996688365 AS sv_3, 0.958289517264 AS sv_4, 0.303214668681 AS sv_5, 0.975030069601 AS sv_6, 0.0274561112772 AS sv_7, 0.789087850857 AS sv_8, 0.856960407413 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, 0.467683658821 AS sv_0, 0.96947167715 AS sv_1, 0.242294978513 AS sv_2, 0.908204959126 AS sv_3, 0.486688506374 AS sv_4, 0.868050421569 AS sv_5, 0.721199643219 AS sv_6, 0.559557548658 AS sv_7, 0.465469151656 AS sv_8, 0.334766226375 AS sv_9 UNION ALL SELECT 6 AS sv_idx, 1.0 AS dual_coeff, 0.952010944843 AS sv_0, 0.421966277534 AS sv_1, 0.670789595905 AS sv_2, 0.195199538296 AS sv_3, 0.647947018979 AS sv_4, 0.501969188024 AS sv_5, 0.422216974845 AS sv_6, 0.546896362679 AS sv_7, 0.92198305618 AS sv_8, 0.613471908063 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, 0.534459754159 AS sv_0, 0.590379696476 AS sv_1, 0.360549580665 AS sv_2, 0.234022489173 AS sv_3, 0.667712797997 AS sv_4, 0.803499199128 AS sv_5, 0.53466767883 AS sv_6, 0.509314086765 AS sv_7, 0.0265047737962 AS sv_8, 0.718734508308 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 0.574116775788 AS sv_0, 0.303649319695 AS sv_1, 0.60086896397 AS sv_2, 0.65441523307 AS sv_3, 0.65007439314 AS sv_4, 0.486898656156 AS sv_5, 0.989044759588 AS sv_6, 0.318004930329 AS sv_7, 0.769708836213 AS sv_8, 0.232131294349 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, 0.446425390833 AS sv_0, 0.485275466571 AS sv_1, 0.491537964978 AS sv_2, 0.0475687697017 AS sv_3, 0.315761734622 AS sv_4, 0.447865362287 AS sv_5, 0.0195158954778 AS sv_6, 0.68934842527 AS sv_7, 0.456932460798 AS sv_8, 0.814310469185 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 0.31592521675 AS sv_0, 0.713098553805 AS sv_1, 0.145744163191 AS sv_2, 0.469293013857 AS sv_3, 0.224768038426 AS sv_4, 0.379307995711 AS sv_5, 0.0770789019877 AS sv_6, 0.109350234256 AS sv_7, 0.322154546251 AS sv_8, 0.289476981002 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.631359661389 AS sv_0, 0.510701868961 AS sv_1, 0.140912159193 AS sv_2, 0.0578043082479 AS sv_3, 0.468812132672 AS sv_4, 0.140346734197 AS sv_5, 0.51414519758 AS sv_6, 0.789017690089 AS sv_7, 0.106095113933 AS sv_8, 0.80986415747 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 0.581857697795 AS sv_0, 0.771292898471 AS sv_1, 0.421747201735 AS sv_2, 0.272932618179 AS sv_3, 0.258511984464 AS sv_4, 0.502813486512 AS sv_5, 0.204089536652 AS sv_6, 0.814644076235 AS sv_7, 0.998125849971 AS sv_8, 0.306784807049 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 0.818179123868 AS sv_0, 0.140882779789 AS sv_1, 0.319897113685 AS sv_2, 0.60443040985 AS sv_3, 0.804753613454 AS sv_4, 0.199728349822 AS sv_5, 0.338750265316 AS sv_6, 0.731726140263 AS sv_7, 0.826125558008 AS sv_8, 0.0403058149786 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 0.940230357705 AS sv_0, 0.0568682167298 AS sv_1, 0.857328748759 AS sv_2, 0.688863586004 AS sv_3, 0.398590090339 AS sv_4, 0.598160121379 AS sv_5, 0.425120237046 AS sv_6, 0.856592095749 AS sv_7, 0.26326150427 AS sv_8, 0.789063743459 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 0.774605780609 AS sv_0, 0.449991096535 AS sv_1, 0.194416782889 AS sv_2, 0.544747886939 AS sv_3, 0.474615595406 AS sv_4, 0.700375003288 AS sv_5, 0.74685128365 AS sv_6, 0.599107360672 AS sv_7, 0.057221906451 AS sv_8, 0.840711768294 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, 0.566667817642 AS sv_0, 0.834513679471 AS sv_1, 0.951944777794 AS sv_2, 0.097371141366 AS sv_3, 0.983331471534 AS sv_4, 0.476328614774 AS sv_5, 0.283105476914 AS sv_6, 0.854391415624 AS sv_7, 0.83858962936 AS sv_8, 0.339360911299 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 0.0127349715302 AS sv_0, 0.0525872490284 AS sv_1, 0.0119050910741 AS sv_2, 0.289491768959 AS sv_3, 0.0115783434425 AS sv_4, 0.540349566838 AS sv_5, 0.217979402093 AS sv_6, 0.0282212300276 AS sv_7, 0.49267312929 AS sv_8, 0.0334496294967 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, 0.176946691283 AS sv_0, 0.156793031071 AS sv_1, 0.312914441745 AS sv_2, 0.265862523238 AS sv_3, 0.245750806269 AS sv_4, 0.256864793572 AS sv_5, 0.990347313928 AS sv_6, 0.0734958483984 AS sv_7, 0.0237153485905 AS sv_8, 0.995512286459 AS sv_9 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, 0.455991896879 AS sv_0, 0.674571857482 AS sv_1, 0.217901003433 AS sv_2, 0.384324228133 AS sv_3, 0.934809416135 AS sv_4, 0.267611637344 AS sv_5, 0.13819217126 AS sv_6, 0.148206979639 AS sv_7, 0.580097200838 AS sv_8, 0.0236790577275 AS sv_9 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 0.760738824004 AS sv_0, 0.702868454664 AS sv_1, 0.134731196987 AS sv_2, 0.219964658385 AS sv_3, 0.554886206085 AS sv_4, 0.572588301645 AS sv_5, 0.187515003388 AS sv_6, 0.127041354117 AS sv_7, 0.899393818389 AS sv_8, 0.248171629664 AS sv_9 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, 0.954138078638 AS sv_0, 0.699400259308 AS sv_1, 0.297598832292 AS sv_2, 0.44915985588 AS sv_3, 0.236541428447 AS sv_4, 0.528313259233 AS sv_5, 0.981560437685 AS sv_6, 0.67651087787 AS sv_7, 0.217035720084 AS sv_8, 0.574634588912 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, 0.833936489567 AS sv_0, 0.967767112283 AS sv_1, 0.302224474678 AS sv_2, 0.324551699452 AS sv_3, 0.446672826167 AS sv_4, 0.257972379363 AS sv_5, 0.813994953606 AS sv_6, 0.468622587904 AS sv_7, 0.759664226646 AS sv_8, 0.0389065732998 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, 0.00145207749498 AS sv_0, 0.85521079436 AS sv_1, 0.349719908919 AS sv_2, 0.218366498066 AS sv_3, 0.92400606604 AS sv_4, 0.566293980985 AS sv_5, 0.13778107997 AS sv_6, 0.160912415004 AS sv_7, 0.977947777272 AS sv_8, 0.00341596231964 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, 0.283896326049 AS sv_0, 0.891381341343 AS sv_1, 0.831499967013 AS sv_2, 0.913174374201 AS sv_3, 0.787013928044 AS sv_4, 0.174235725644 AS sv_5, 0.142710522517 AS sv_6, 0.279213461175 AS sv_7, 0.165189805244 AS sv_8, 0.765725829609 AS sv_9 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 0.090210933163 AS sv_0, 0.520320447829 AS sv_1, 0.196092572864 AS sv_2, 0.105094636555 AS sv_3, 0.206284913821 AS sv_4, 0.354433874777 AS sv_5, 0.27714480421 AS sv_6, 0.72499387718 AS sv_7, 0.869713792777 AS sv_8, 0.526066317908 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.867580695015 AS sv_0, 0.429690193604 AS sv_1, 0.562164826726 AS sv_2, 0.134873652097 AS sv_3, 0.95523705168 AS sv_4, 0.866494931656 AS sv_5, 0.67593941925 AS sv_6, 0.574038823183 AS sv_7, 0.946715124757 AS sv_8, 0.929811696573 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 0.299342573471 AS sv_0, 0.831554996905 AS sv_1, 0.50783874934 AS sv_2, 0.690708808417 AS sv_3, 0.887547969977 AS sv_4, 0.563541546666 AS sv_5, 0.903474095513 AS sv_6, 0.126292629925 AS sv_7, 0.180402398885 AS sv_8, 0.949667068309 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 0.561345939008 AS sv_0, 0.750746955148 AS sv_1, 0.759413230561 AS sv_2, 0.934985334731 AS sv_3, 0.60579083449 AS sv_4, 0.211766611105 AS sv_5, 0.657765163788 AS sv_6, 0.436328684901 AS sv_7, 0.0783765496228 AS sv_8, 0.281751450131 AS sv_9 UNION ALL SELECT 29 AS sv_idx, -1.0 AS dual_coeff, 0.0290728249585 AS sv_0, 0.462706910282 AS sv_1, 0.423643460284 AS sv_2, 0.564545876145 AS sv_3, 0.839841996233 AS sv_4, 0.259004117439 AS sv_5, 0.760547558708 AS sv_6, 0.886266824664 AS sv_7, 0.779366656778 AS sv_8, 0.872403431211 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, 0.241377384733 AS sv_0, 0.397674056846 AS sv_1, 0.992527195607 AS sv_2, 0.752365502298 AS sv_3, 0.540426025932 AS sv_4, 0.104448557294 AS sv_5, 0.980881552782 AS sv_6, 0.768901672651 AS sv_7, 0.657241531056 AS sv_8, 0.858603361895 AS sv_9 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, 0.336754580709 AS sv_0, 0.744352572254 AS sv_1, 3.00374143524e-05 AS sv_2, 0.729383761996 AS sv_3, 0.279838433288 AS sv_4, 0.981965615479 AS sv_5, 0.426991817691 AS sv_6, 0.873672561225 AS sv_7, 0.708476757712 AS sv_8, 0.895513195324 AS sv_9 UNION ALL SELECT 32 AS sv_idx, -1.0 AS dual_coeff, 0.943790337611 AS sv_0, 0.99404976794 AS sv_1, 0.721018559504 AS sv_2, 0.56655181195 AS sv_3, 0.542076439673 AS sv_4, 0.26995617664 AS sv_5, 0.254475642699 AS sv_6, 0.240744867858 AS sv_7, 0.195785838671 AS sv_8, 0.942664693287 AS sv_9 UNION ALL SELECT 33 AS sv_idx, -1.0 AS dual_coeff, 0.164939389977 AS sv_0, 0.150227558754 AS sv_1, 0.357877062378 AS sv_2, 0.76545251513 AS sv_3, 0.241976243637 AS sv_4, 0.11425227604 AS sv_5, 0.506443788006 AS sv_6, 0.662030451676 AS sv_7, 0.665571174806 AS sv_8, 0.501044686611 AS sv_9 UNION ALL SELECT 34 AS sv_idx, -1.0 AS dual_coeff, 0.135349006956 AS sv_0, 0.515160520047 AS sv_1, 0.306523904549 AS sv_2, 0.177104334753 AS sv_3, 0.542044061247 AS sv_4, 0.970996377972 AS sv_5, 0.679213864893 AS sv_6, 0.369523944756 AS sv_7, 0.64531587166 AS sv_8, 0.213713770554 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, 0.0724973512087 AS sv_0, 0.727048686424 AS sv_1, 0.867521677738 AS sv_2, 0.64353410797 AS sv_3, 0.824236436844 AS sv_4, 0.071336145173 AS sv_5, 0.66320006079 AS sv_6, 0.461397030338 AS sv_7, 0.043617027818 AS sv_8, 0.0413989606015 AS sv_9 UNION ALL SELECT 36 AS sv_idx, -1.0 AS dual_coeff, 0.183481610449 AS sv_0, 0.603981058933 AS sv_1, 0.276468939129 AS sv_2, 0.0558425601406 AS sv_3, 0.689364736519 AS sv_4, 0.260286838928 AS sv_5, 0.288611944898 AS sv_6, 0.198435702764 AS sv_7, 0.948778298728 AS sv_8, 0.098332983194 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, 0.515719325961 AS sv_0, 0.628529413349 AS sv_1, 0.894106435773 AS sv_2, 0.360097558798 AS sv_3, 0.897863089009 AS sv_4, 0.538670546124 AS sv_5, 0.0468705350208 AS sv_6, 0.0992443149568 AS sv_7, 0.0500279947755 AS sv_8, 0.338653569686 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, 0.373188171381 AS sv_0, 0.914275285736 AS sv_1, 0.172457572966 AS sv_2, 0.675971670883 AS sv_3, 0.0669099631071 AS sv_4, 0.707265287791 AS sv_5, 0.601462321862 AS sv_6, 0.96680011386 AS sv_7, 0.609517691479 AS sv_8, 0.275679057189 AS sv_9 UNION ALL SELECT 39 AS sv_idx, -1.0 AS dual_coeff, 0.427472997123 AS sv_0, 0.114584519288 AS sv_1, 0.775455852884 AS sv_2, 0.045240803815 AS sv_3, 0.496333165746 AS sv_4, 0.579814444789 AS sv_5, 0.560073951874 AS sv_6, 0.543940498828 AS sv_7, 0.194183228192 AS sv_8, 0.434333708636 AS sv_9 UNION ALL SELECT 40 AS sv_idx, -1.0 AS dual_coeff, 0.123410260095 AS sv_0, 0.159289488617 AS sv_1, 0.135274604947 AS sv_2, 0.431262250967 AS sv_3, 0.118014697932 AS sv_4, 0.314154060269 AS sv_5, 0.576482179468 AS sv_6, 0.153607231071 AS sv_7, 0.541519995343 AS sv_8, 0.0977931575477 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, 0.6204450128 AS sv_0, 0.0652768649185 AS sv_1, 0.912035542623 AS sv_2, 0.283903160653 AS sv_3, 0.60807699015 AS sv_4, 0.414198369052 AS sv_5, 0.222713340366 AS sv_6, 0.929248824738 AS sv_7, 0.993769230848 AS sv_8, 0.473628609286 AS sv_9 UNION ALL SELECT 42 AS sv_idx, -1.0 AS dual_coeff, 0.0200602293986 AS sv_0, 0.681779261636 AS sv_1, 0.556727534097 AS sv_2, 0.659327376002 AS sv_3, 0.720777274287 AS sv_4, 0.687779906719 AS sv_5, 0.0639798505052 AS sv_6, 0.54398952042 AS sv_7, 0.354513772372 AS sv_8, 0.774530107679 AS sv_9 UNION ALL SELECT 43 AS sv_idx, -1.0 AS dual_coeff, 0.0543853631807 AS sv_0, 0.130380706735 AS sv_1, 0.134745060569 AS sv_2, 0.176254904555 AS sv_3, 0.483270247777 AS sv_4, 0.289146222738 AS sv_5, 0.773273141272 AS sv_6, 0.0251006049371 AS sv_7, 0.966108943337 AS sv_8, 0.625021611486 AS sv_9 UNION ALL SELECT 44 AS sv_idx, 1.0 AS dual_coeff, 0.303270666289 AS sv_0, 0.921099586643 AS sv_1, 0.776452169132 AS sv_2, 0.752237150279 AS sv_3, 0.690703300059 AS sv_4, 0.890227050918 AS sv_5, 0.259725104734 AS sv_6, 0.0791242345224 AS sv_7, 0.389208144213 AS sv_8, 0.913246956989 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, 0.642062066187 AS sv_0, 0.851025585711 AS sv_1, 0.817519607168 AS sv_2, 0.466595977021 AS sv_3, 0.706491508507 AS sv_4, 0.327322756785 AS sv_5, 0.486240883939 AS sv_6, 0.540540816735 AS sv_7, 0.105449823158 AS sv_8, 0.85644609651 AS sv_9 UNION ALL SELECT 46 AS sv_idx, 1.0 AS dual_coeff, 0.68693982992 AS sv_0, 0.23464394037 AS sv_1, 0.701736157209 AS sv_2, 0.828942660668 AS sv_3, 0.8747570019 AS sv_4, 0.551536063465 AS sv_5, 0.671760873639 AS sv_6, 0.461169784215 AS sv_7, 0.857326519184 AS sv_8, 0.45556515544 AS sv_9 UNION ALL SELECT 47 AS sv_idx, -1.0 AS dual_coeff, 0.524974343925 AS sv_0, 0.228367675836 AS sv_1, 0.443325257988 AS sv_2, 0.411342937728 AS sv_3, 0.876296330138 AS sv_4, 0.946170019643 AS sv_5, 0.0881159138277 AS sv_6, 0.31689486293 AS sv_7, 0.312470111644 AS sv_8, 0.581063464357 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 1.0 AS dual_coeff, 0.429311146783 AS sv_0, 0.171016632444 AS sv_1, 0.979829790854 AS sv_2, 0.692163085544 AS sv_3, 0.974542291558 AS sv_4, 0.136591181897 AS sv_5, 0.838134217179 AS sv_6, 0.516550200502 AS sv_7, 0.10696531322 AS sv_8, 0.80665037358 AS sv_9 UNION ALL SELECT 49 AS sv_idx, 1.0 AS dual_coeff, 0.260189488602 AS sv_0, 0.370296820828 AS sv_1, 0.0483431505416 AS sv_2, 0.514963936405 AS sv_3, 0.520565320586 AS sv_4, 0.707660102694 AS sv_5, 0.218502850914 AS sv_6, 0.562339580878 AS sv_7, 0.137988908723 AS sv_8, 0.985610302649 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 1.0 AS dual_coeff, 0.320714027546 AS sv_0, 0.634850711436 AS sv_1, 0.876553855006 AS sv_2, 0.851231986966 AS sv_3, 0.238833716617 AS sv_4, 0.680198639328 AS sv_5, 0.932370455688 AS sv_6, 0.841822971974 AS sv_7, 0.188471614757 AS sv_8, 0.176692770836 AS sv_9 UNION ALL SELECT 51 AS sv_idx, -1.0 AS dual_coeff, 0.873764673777 AS sv_0, 0.251964200771 AS sv_1, 0.79970222794 AS sv_2, 0.163944528067 AS sv_3, 0.851380573928 AS sv_4, 0.186230485543 AS sv_5, 0.511858318425 AS sv_6, 0.380837177268 AS sv_7, 0.236286686693 AS sv_8, 0.568913169596 AS sv_9 UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, 0.790469444719 AS sv_0, 0.822557824988 AS sv_1, 0.699826456674 AS sv_2, 0.546405013585 AS sv_3, 0.332861211607 AS sv_4, 0.143037634606 AS sv_5, 0.313831920828 AS sv_6, 0.86801582646 AS sv_7, 0.281005346973 AS sv_8, 0.410807503399 AS sv_9 UNION ALL SELECT 53 AS sv_idx, -1.0 AS dual_coeff, 0.957723052212 AS sv_0, 0.988810585916 AS sv_1, 0.371448784823 AS sv_2, 0.728775349937 AS sv_3, 0.826633145346 AS sv_4, 0.797115107073 AS sv_5, 0.489749341293 AS sv_6, 0.209673079979 AS sv_7, 0.494031873235 AS sv_8, 0.27496392633 AS sv_9 UNION ALL SELECT 54 AS sv_idx, 1.0 AS dual_coeff, 0.577114490497 AS sv_0, 0.82217427644 AS sv_1, 0.507856333571 AS sv_2, 0.192719347086 AS sv_3, 0.722082554353 AS sv_4, 0.73212770267 AS sv_5, 0.724824582673 AS sv_6, 0.841680695421 AS sv_7, 0.34312417345 AS sv_8, 0.906540319845 AS sv_9 UNION ALL SELECT 55 AS sv_idx, -1.0 AS dual_coeff, 0.317527435198 AS sv_0, 0.187233402428 AS sv_1, 0.417288710855 AS sv_2, 0.646879287643 AS sv_3, 0.249418861174 AS sv_4, 0.356112679396 AS sv_5, 0.790961331018 AS sv_6, 0.612979353271 AS sv_7, 0.96378950404 AS sv_8, 0.250792521454 AS sv_9 UNION ALL SELECT 56 AS sv_idx, -1.0 AS dual_coeff, 0.0053297105 AS sv_0, 0.674515726411 AS sv_1, 0.617876580673 AS sv_2, 0.952605372158 AS sv_3, 0.00520558793756 AS sv_4, 0.235654513349 AS sv_5, 0.22384999339 AS sv_6, 0.811589597618 AS sv_7, 0.955194942999 AS sv_8, 0.456203356101 AS sv_9 UNION ALL SELECT 57 AS sv_idx, 1.0 AS dual_coeff, 0.186887402434 AS sv_0, 0.752825249009 AS sv_1, 0.555360279419 AS sv_2, 0.857347861886 AS sv_3, 0.436913985649 AS sv_4, 0.119546960333 AS sv_5, 0.366372727448 AS sv_6, 0.101841496202 AS sv_7, 0.664998472447 AS sv_8, 0.658057409702 AS sv_9 UNION ALL SELECT 58 AS sv_idx, -1.0 AS dual_coeff, 0.933354374847 AS sv_0, 0.960884678881 AS sv_1, 0.80211776536 AS sv_2, 0.13247861084 AS sv_3, 0.618383599409 AS sv_4, 0.965575600105 AS sv_5, 0.279424799206 AS sv_6, 0.438351191635 AS sv_7, 0.225418898702 AS sv_8, 0.662732063448 AS sv_9 UNION ALL SELECT 59 AS sv_idx, -1.0 AS dual_coeff, 0.853742669639 AS sv_0, 0.145543762311 AS sv_1, 0.3387000508 AS sv_2, 0.274785711474 AS sv_3, 0.203612679111 AS sv_4, 0.945152521949 AS sv_5, 0.14958573763 AS sv_6, 0.690800856085 AS sv_7, 0.319903491778 AS sv_8, 0.270475692167 AS sv_9 UNION ALL SELECT 60 AS sv_idx, 1.0 AS dual_coeff, 0.846674842998 AS sv_0, 0.350163778709 AS sv_1, 0.76139441737 AS sv_2, 0.705491398687 AS sv_3, 0.722848131502 AS sv_4, 0.115683640862 AS sv_5, 0.585330880126 AS sv_6, 0.871430747926 AS sv_7, 0.0223738308809 AS sv_8, 0.391763028772 AS sv_9 UNION ALL SELECT 61 AS sv_idx, -1.0 AS dual_coeff, 0.165880051895 AS sv_0, 0.549062387234 AS sv_1, 0.423785464095 AS sv_2, 0.949643546954 AS sv_3, 0.240182259541 AS sv_4, 0.172760621447 AS sv_5, 0.0662688679454 AS sv_6, 0.576456989256 AS sv_7, 0.861312861972 AS sv_8, 0.731289138576 AS sv_9 UNION ALL SELECT 62 AS sv_idx, 1.0 AS dual_coeff, 0.320168683135 AS sv_0, 0.686459978486 AS sv_1, 0.357167347879 AS sv_2, 0.779734212129 AS sv_3, 0.59737084861 AS sv_4, 0.127511206466 AS sv_5, 0.377480824362 AS sv_6, 0.214882670538 AS sv_7, 0.711349975391 AS sv_8, 0.788412033775 AS sv_9 UNION ALL SELECT 63 AS sv_idx, -1.0 AS dual_coeff, 0.145611956671 AS sv_0, 0.8885893853 AS sv_1, 0.667848641232 AS sv_2, 0.42108144153 AS sv_3, 0.0538694657104 AS sv_4, 0.437669556955 AS sv_5, 0.244246825436 AS sv_6, 0.429755337067 AS sv_7, 0.835786732523 AS sv_8, 0.805451378677 AS sv_9 UNION ALL SELECT 64 AS sv_idx, 1.0 AS dual_coeff, 0.253584421318 AS sv_0, 0.204539509417 AS sv_1, 0.793084466657 AS sv_2, 0.895384338759 AS sv_3, 0.559005056923 AS sv_4, 0.261177036885 AS sv_5, 0.551903195568 AS sv_6, 0.364824390948 AS sv_7, 0.59870290054 AS sv_8, 0.554627801554 AS sv_9 UNION ALL SELECT 65 AS sv_idx, 1.0 AS dual_coeff, 0.50287937546 AS sv_0, 0.488328804164 AS sv_1, 0.683710167617 AS sv_2, 0.877385236572 AS sv_3, 0.0919615369992 AS sv_4, 0.758336744158 AS sv_5, 0.000753549965655 AS sv_6, 0.728312717987 AS sv_7, 0.447289859852 AS sv_8, 0.787859903916 AS sv_9 UNION ALL SELECT 66 AS sv_idx, 1.0 AS dual_coeff, 0.199279857197 AS sv_0, 0.459883457175 AS sv_1, 0.212873817857 AS sv_2, 0.847911862624 AS sv_3, 0.841754885986 AS sv_4, 0.313098009884 AS sv_5, 0.710794303948 AS sv_6, 0.164395864823 AS sv_7, 0.831798330902 AS sv_8, 0.367907624689 AS sv_9 UNION ALL SELECT 67 AS sv_idx, -1.0 AS dual_coeff, 0.426879063354 AS sv_0, 0.836489137074 AS sv_1, 0.385769481492 AS sv_2, 0.202899969404 AS sv_3, 0.180449196228 AS sv_4, 0.774970748722 AS sv_5, 0.499973947623 AS sv_6, 0.0979619482152 AS sv_7, 0.581162553112 AS sv_8, 0.0317142460426 AS sv_9 UNION ALL SELECT 68 AS sv_idx, 1.0 AS dual_coeff, 0.090703871776 AS sv_0, 0.917136718725 AS sv_1, 0.591741938323 AS sv_2, 0.851989611442 AS sv_3, 0.93527768914 AS sv_4, 0.695537795613 AS sv_5, 0.157097297708 AS sv_6, 0.981057930532 AS sv_7, 0.252353149776 AS sv_8, 0.258774513929 AS sv_9 UNION ALL SELECT 69 AS sv_idx, -1.0 AS dual_coeff, 0.658363124765 AS sv_0, 0.371842223184 AS sv_1, 0.755288525587 AS sv_2, 0.197151425671 AS sv_3, 0.314876143912 AS sv_4, 0.738469333291 AS sv_5, 0.00340107115182 AS sv_6, 0.207202277095 AS sv_7, 0.155690966373 AS sv_8, 0.671551340224 AS sv_9 UNION ALL SELECT 70 AS sv_idx, 1.0 AS dual_coeff, 0.729918566382 AS sv_0, 0.460029360083 AS sv_1, 0.0833695224534 AS sv_2, 0.866668485948 AS sv_3, 0.129294986319 AS sv_4, 0.291184835479 AS sv_5, 0.858144800922 AS sv_6, 0.208176943495 AS sv_7, 0.832695643889 AS sv_8, 0.938205714608 AS sv_9 UNION ALL SELECT 71 AS sv_idx, 1.0 AS dual_coeff, 0.748669508268 AS sv_0, 0.376697571216 AS sv_1, 0.09382140975 AS sv_2, 0.0390963973278 AS sv_3, 0.720831379523 AS sv_4, 0.57543656637 AS sv_5, 0.0312283449613 AS sv_6, 0.524518968187 AS sv_7, 0.775952363491 AS sv_8, 0.847340022696 AS sv_9 UNION ALL SELECT 72 AS sv_idx, 1.0 AS dual_coeff, 0.812243421594 AS sv_0, 0.76135382244 AS sv_1, 0.785624910604 AS sv_2, 0.44598250592 AS sv_3, 0.509496913306 AS sv_4, 0.765302954596 AS sv_5, 0.0152199322617 AS sv_6, 0.454836149619 AS sv_7, 0.828657131303 AS sv_8, 0.603639589108 AS sv_9 UNION ALL SELECT 73 AS sv_idx, -1.0 AS dual_coeff, 0.0653350037138 AS sv_0, 0.27844509761 AS sv_1, 0.765032296518 AS sv_2, 0.587163518291 AS sv_3, 0.335360883468 AS sv_4, 0.858969460047 AS sv_5, 0.133423141919 AS sv_6, 0.623681332036 AS sv_7, 0.759110888835 AS sv_8, 0.535036063308 AS sv_9 UNION ALL SELECT 74 AS sv_idx, -1.0 AS dual_coeff, 0.486016764524 AS sv_0, 0.426082841305 AS sv_1, 0.517028220741 AS sv_2, 0.397780057889 AS sv_3, 0.641385428843 AS sv_4, 0.622377061487 AS sv_5, 0.614822461714 AS sv_6, 0.417221129119 AS sv_7, 0.537805767888 AS sv_8, 0.67642492642 AS sv_9 UNION ALL SELECT 75 AS sv_idx, -1.0 AS dual_coeff, 0.0170398391625 AS sv_0, 0.7911690921 AS sv_1, 0.924037191305 AS sv_2, 0.499706163587 AS sv_3, 0.352567497848 AS sv_4, 0.586785328466 AS sv_5, 0.29299191554 AS sv_6, 0.875382902213 AS sv_7, 0.588070326031 AS sv_8, 0.830444911223 AS sv_9 UNION ALL SELECT 76 AS sv_idx, 1.0 AS dual_coeff, 0.205192410706 AS sv_0, 0.0116770808998 AS sv_1, 0.897275428135 AS sv_2, 0.750958843171 AS sv_3, 0.918430024107 AS sv_4, 0.889088718756 AS sv_5, 0.206059986351 AS sv_6, 0.262258224151 AS sv_7, 0.887271423449 AS sv_8, 0.590839081205 AS sv_9 UNION ALL SELECT 77 AS sv_idx, -1.0 AS dual_coeff, 0.446678431376 AS sv_0, 0.493971252171 AS sv_1, 0.243691596982 AS sv_2, 0.0987709293629 AS sv_3, 0.175037780355 AS sv_4, 0.89626794584 AS sv_5, 0.659124025383 AS sv_6, 0.218430576287 AS sv_7, 0.244218746587 AS sv_8, 0.997262419719 AS sv_9 UNION ALL SELECT 78 AS sv_idx, -1.0 AS dual_coeff, 0.913639418377 AS sv_0, 0.468026278801 AS sv_1, 0.662315979101 AS sv_2, 0.164226861137 AS sv_3, 0.210688948463 AS sv_4, 0.206925827755 AS sv_5, 0.987994920265 AS sv_6, 0.142333504075 AS sv_7, 0.305890625891 AS sv_8, 0.533193641322 AS sv_9 UNION ALL SELECT 79 AS sv_idx, 1.0 AS dual_coeff, 0.426921097411 AS sv_0, 0.610482707853 AS sv_1, 0.901646932435 AS sv_2, 0.898020041495 AS sv_3, 0.942095316738 AS sv_4, 0.384204891156 AS sv_5, 0.768822219376 AS sv_6, 0.868817705475 AS sv_7, 0.685152155571 AS sv_8, 0.704741759749 AS sv_9 UNION ALL SELECT 80 AS sv_idx, 1.0 AS dual_coeff, 0.625915755563 AS sv_0, 0.460557091647 AS sv_1, 0.233709104983 AS sv_2, 0.749153610389 AS sv_3, 0.378350920613 AS sv_4, 0.0828408989035 AS sv_5, 0.411680802418 AS sv_6, 0.179629230822 AS sv_7, 0.175452307474 AS sv_8, 0.202880873327 AS sv_9 UNION ALL SELECT 81 AS sv_idx, -1.0 AS dual_coeff, 0.800374453516 AS sv_0, 0.697376417761 AS sv_1, 0.516088678831 AS sv_2, 0.180178584025 AS sv_3, 0.0614463948183 AS sv_4, 0.601061636232 AS sv_5, 0.35724625345 AS sv_6, 0.929555041219 AS sv_7, 0.552232123189 AS sv_8, 0.0924244833221 AS sv_9 UNION ALL SELECT 82 AS sv_idx, 1.0 AS dual_coeff, 0.736805080511 AS sv_0, 0.07932402667 AS sv_1, 0.0716156912967 AS sv_2, 0.567593479418 AS sv_3, 0.706168134564 AS sv_4, 0.987772154826 AS sv_5, 0.452617657635 AS sv_6, 0.153179411348 AS sv_7, 0.104103592833 AS sv_8, 0.397665715729 AS sv_9 UNION ALL SELECT 83 AS sv_idx, -1.0 AS dual_coeff, 0.226986119337 AS sv_0, 0.762188911026 AS sv_1, 0.407642820189 AS sv_2, 0.611543700837 AS sv_3, 0.364153279545 AS sv_4, 0.399316507373 AS sv_5, 0.979142262175 AS sv_6, 0.317224934099 AS sv_7, 0.984419516502 AS sv_8, 0.765017286063 AS sv_9 UNION ALL SELECT 84 AS sv_idx, 1.0 AS dual_coeff, 0.563228217697 AS sv_0, 0.629716368767 AS sv_1, 0.736691796577 AS sv_2, 0.917580106333 AS sv_3, 0.774484437482 AS sv_4, 0.693964888735 AS sv_5, 0.794013497323 AS sv_6, 0.0421133481909 AS sv_7, 0.0930184121535 AS sv_8, 0.962086908646 AS sv_9 UNION ALL SELECT 85 AS sv_idx, -1.0 AS dual_coeff, 0.113332891713 AS sv_0, 0.301549086299 AS sv_1, 0.32085336749 AS sv_2, 0.993419029821 AS sv_3, 0.398493441366 AS sv_4, 0.227000869913 AS sv_5, 0.832722832627 AS sv_6, 0.174519930721 AS sv_7, 0.175326542301 AS sv_8, 0.576706058894 AS sv_9 UNION ALL SELECT 86 AS sv_idx, 1.0 AS dual_coeff, 0.271976435294 AS sv_0, 0.86588151687 AS sv_1, 0.363587177893 AS sv_2, 0.667223898307 AS sv_3, 0.612218432718 AS sv_4, 0.499063732099 AS sv_5, 0.728642231467 AS sv_6, 0.883203234228 AS sv_7, 0.439736091046 AS sv_8, 0.202701112275 AS sv_9 UNION ALL SELECT 87 AS sv_idx, -1.0 AS dual_coeff, 0.634662558091 AS sv_0, 0.257693473762 AS sv_1, 0.345176524106 AS sv_2, 0.519836087981 AS sv_3, 0.586215502569 AS sv_4, 0.141511770788 AS sv_5, 0.0542088926834 AS sv_6, 0.286397343996 AS sv_7, 0.459764396392 AS sv_8, 0.399620108985 AS sv_9 UNION ALL SELECT 88 AS sv_idx, 1.0 AS dual_coeff, 0.120555980204 AS sv_0, 0.9398631921 AS sv_1, 0.0348853230017 AS sv_2, 0.427886941685 AS sv_3, 0.771065182488 AS sv_4, 0.169909899577 AS sv_5, 0.160687908189 AS sv_6, 0.889173729018 AS sv_7, 0.975575890035 AS sv_8, 0.167956591257 AS sv_9 UNION ALL SELECT 89 AS sv_idx, 1.0 AS dual_coeff, 0.35226036572 AS sv_0, 0.98111566554 AS sv_1, 0.354389248813 AS sv_2, 0.551273829092 AS sv_3, 0.554260914904 AS sv_4, 0.153444913886 AS sv_5, 0.704350677874 AS sv_6, 0.114396404136 AS sv_7, 0.986768952091 AS sv_8, 0.627158867904 AS sv_9 UNION ALL SELECT 90 AS sv_idx, 1.0 AS dual_coeff, 0.509463831693 AS sv_0, 0.568046178556 AS sv_1, 0.145663681719 AS sv_2, 0.647901434176 AS sv_3, 0.478128793382 AS sv_4, 0.76638421055 AS sv_5, 0.904029922952 AS sv_6, 0.451152813351 AS sv_7, 0.0710577754556 AS sv_8, 0.38148137378 AS sv_9 UNION ALL SELECT 91 AS sv_idx, 1.0 AS dual_coeff, 0.520134532287 AS sv_0, 0.159505687164 AS sv_1, 0.0439141443835 AS sv_2, 0.592495845053 AS sv_3, 0.45557856958 AS sv_4, 0.797045273697 AS sv_5, 0.434374379513 AS sv_6, 0.591304590864 AS sv_7, 0.188722398568 AS sv_8, 0.146659052089 AS sv_9 UNION ALL SELECT 92 AS sv_idx, -1.0 AS dual_coeff, 0.0957770871998 AS sv_0, 0.95421426246 AS sv_1, 0.137705055931 AS sv_2, 0.0821256585361 AS sv_3, 0.731995909116 AS sv_4, 0.460677903775 AS sv_5, 0.127274916922 AS sv_6, 0.731396599257 AS sv_7, 0.656992670972 AS sv_8, 0.906318722973 AS sv_9 UNION ALL SELECT 93 AS sv_idx, -1.0 AS dual_coeff, 0.979651602365 AS sv_0, 0.927490473749 AS sv_1, 0.200330226209 AS sv_2, 0.389824453812 AS sv_3, 0.790743163928 AS sv_4, 0.14405085822 AS sv_5, 0.778027079284 AS sv_6, 0.366179646324 AS sv_7, 0.318866563828 AS sv_8, 0.000765987358365 AS sv_9 UNION ALL SELECT 94 AS sv_idx, -1.0 AS dual_coeff, 0.491032377821 AS sv_0, 0.215396603554 AS sv_1, 0.461923688051 AS sv_2, 0.443576807444 AS sv_3, 0.601360845051 AS sv_4, 0.351622324294 AS sv_5, 0.962564910294 AS sv_6, 0.947393732889 AS sv_7, 0.636802159085 AS sv_8, 0.920860663499 AS sv_9 UNION ALL SELECT 95 AS sv_idx, -1.0 AS dual_coeff, 0.561190999774 AS sv_0, 0.928992645711 AS sv_1, 0.343501438116 AS sv_2, 0.190389832718 AS sv_3, 0.117868042517 AS sv_4, 0.0869895963821 AS sv_5, 0.990512720392 AS sv_6, 0.902614381677 AS sv_7, 0.407744551787 AS sv_8, 0.964420708463 AS sv_9 UNION ALL SELECT 96 AS sv_idx, 1.0 AS dual_coeff, 0.997747034232 AS sv_0, 0.426753762462 AS sv_1, 0.323776072602 AS sv_2, 0.773551353001 AS sv_3, 0.866514989512 AS sv_4, 0.571738484135 AS sv_5, 0.879294074865 AS sv_6, 0.452000821258 AS sv_7, 0.937513585109 AS sv_8, 0.273034867381 AS sv_9 UNION ALL SELECT 97 AS sv_idx, -1.0 AS dual_coeff, 0.00460811147108 AS sv_0, 0.414266647388 AS sv_1, 0.548806107538 AS sv_2, 0.820365264111 AS sv_3, 0.830979484427 AS sv_4, 0.96883496137 AS sv_5, 0.474199366362 AS sv_6, 0.784101080225 AS sv_7, 0.556267847968 AS sv_8, 0.0598113084514 AS sv_9) AS [Values]), 
kernel_cte AS 
(SELECT t.[KEY] AS [KEY], t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.[KEY] AS [KEY], sum(full_join_data_sv.dot_prod1) + 14.2729281815 AS dot_product 
FROM (SELECT [ADS].[KEY] AS [KEY], [SV_data].dual_coeff * power(0.1 * ([ADS].[Feature_0] * [SV_data].sv_0 + [ADS].[Feature_1] * [SV_data].sv_1 + [ADS].[Feature_2] * [SV_data].sv_2 + [ADS].[Feature_3] * [SV_data].sv_3 + [ADS].[Feature_4] * [SV_data].sv_4 + [ADS].[Feature_5] * [SV_data].sv_5 + [ADS].[Feature_6] * [SV_data].sv_6 + [ADS].[Feature_7] * [SV_data].sv_7 + [ADS].[Feature_8] * [SV_data].sv_8 + [ADS].[Feature_9] * [SV_data].sv_9) + 0.0, 3) AS dot_prod1 
FROM [INPUT_DATA] AS [ADS], [SV_data]) AS full_join_data_sv GROUP BY full_join_data_sv.[KEY]) AS t)
 SELECT kernel_cte.[KEY] AS [KEY], kernel_cte.dot_product AS [Estimator] 
FROM kernel_cte