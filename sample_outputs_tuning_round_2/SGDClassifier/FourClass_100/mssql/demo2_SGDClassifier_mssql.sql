-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT [ADS].[KEY] AS [KEY], 24.318495706689852 * [ADS].[Feature_0] + 13.150095532198868 * [ADS].[Feature_1] + -172.52183838233418 * [ADS].[Feature_2] + -65.56899226214041 * [ADS].[Feature_3] + 67.03324080330098 * [ADS].[Feature_4] + -81.6048058495436 * [ADS].[Feature_5] + 123.60378335669249 * [ADS].[Feature_6] + 58.92991989031065 * [ADS].[Feature_7] + -80.46372918777263 * [ADS].[Feature_8] + -0.16066475069451255 * [ADS].[Feature_9] + -90.17701150498297 * [ADS].[Feature_10] + 50.83129066758929 * [ADS].[Feature_11] + 74.6527553937599 * [ADS].[Feature_12] + -47.64477391623393 * [ADS].[Feature_13] + -46.46950686011997 * [ADS].[Feature_14] + 33.83824807622512 * [ADS].[Feature_15] + 69.7894287596855 * [ADS].[Feature_16] + -195.73197944117922 * [ADS].[Feature_17] + -149.45059326571788 * [ADS].[Feature_18] + 37.795907973236595 * [ADS].[Feature_19] + -84.82819990943362 * [ADS].[Feature_20] + -1.0199771237207476 * [ADS].[Feature_21] + 10.999552521132706 * [ADS].[Feature_22] + -56.57890432076069 * [ADS].[Feature_23] + -77.16613234686119 * [ADS].[Feature_24] + 40.37606019091705 * [ADS].[Feature_25] + -18.026200520720824 * [ADS].[Feature_26] + -91.54335954419912 * [ADS].[Feature_27] + 45.964671285860405 * [ADS].[Feature_28] + -26.735618082785212 * [ADS].[Feature_29] + 44.321665408576145 * [ADS].[Feature_30] + 7.318075070729568 * [ADS].[Feature_31] + -45.1993482483419 * [ADS].[Feature_32] + -10.819516072176187 * [ADS].[Feature_33] + 110.23171351090868 * [ADS].[Feature_34] + -0.8593754456762327 * [ADS].[Feature_35] + -6.017547211391725 * [ADS].[Feature_36] + -115.718707613555 * [ADS].[Feature_37] + -72.20666327031698 * [ADS].[Feature_38] + 29.098100904489616 * [ADS].[Feature_39] + 36.25713718864498 * [ADS].[Feature_40] + -75.61153071948343 * [ADS].[Feature_41] + -0.4552649348297602 * [ADS].[Feature_42] + 52.037188547839655 * [ADS].[Feature_43] + 15.72877797265628 * [ADS].[Feature_44] + -28.815712969563318 * [ADS].[Feature_45] + 78.51734013128892 * [ADS].[Feature_46] + 12.944852008917174 * [ADS].[Feature_47] + 12.552606954045736 * [ADS].[Feature_48] + 15.920587509315475 * [ADS].[Feature_49] + -45.7502640758284 * [ADS].[Feature_50] + 101.06967640874895 * [ADS].[Feature_51] + 27.04580941047685 * [ADS].[Feature_52] + 49.15085614685217 * [ADS].[Feature_53] + 77.04383067530105 * [ADS].[Feature_54] + 54.19941354287399 * [ADS].[Feature_55] + -54.88186919939962 * [ADS].[Feature_56] + -95.90380881903373 * [ADS].[Feature_57] + 6.965336993339315 * [ADS].[Feature_58] + -20.258042238502792 * [ADS].[Feature_59] + -17.604914798601005 * [ADS].[Feature_60] + -47.83603421689649 * [ADS].[Feature_61] + -18.991404213553565 * [ADS].[Feature_62] + -53.61909044397989 * [ADS].[Feature_63] + -78.01645364283888 * [ADS].[Feature_64] + 46.96705935325682 * [ADS].[Feature_65] + -70.82849586571082 * [ADS].[Feature_66] + 65.6105343067345 * [ADS].[Feature_67] + -146.62216195809947 * [ADS].[Feature_68] + 85.29880059705741 * [ADS].[Feature_69] + -50.178841567869725 * [ADS].[Feature_70] + 47.30300675558112 * [ADS].[Feature_71] + -1.6284992453613085 * [ADS].[Feature_72] + 71.80682157417222 * [ADS].[Feature_73] + -103.23779836117588 * [ADS].[Feature_74] + 21.395817780326656 * [ADS].[Feature_75] + -58.25351920716723 * [ADS].[Feature_76] + -7.946977786568609 * [ADS].[Feature_77] + 17.56280131028791 * [ADS].[Feature_78] + -45.74453877843744 * [ADS].[Feature_79] + 51.435266816998784 * [ADS].[Feature_80] + -156.87765001272473 * [ADS].[Feature_81] + 10.588290203283622 * [ADS].[Feature_82] + -45.91397150344784 * [ADS].[Feature_83] + 142.32310902660572 * [ADS].[Feature_84] + 19.12653782926054 * [ADS].[Feature_85] + 57.36211163873389 * [ADS].[Feature_86] + -33.68277239453924 * [ADS].[Feature_87] + 10.227004641969678 * [ADS].[Feature_88] + -36.86277927572386 * [ADS].[Feature_89] + 50.632202564367205 * [ADS].[Feature_90] + 33.15353275757383 * [ADS].[Feature_91] + -21.851334672636835 * [ADS].[Feature_92] + 8.468584983908976 * [ADS].[Feature_93] + -35.31378008734314 * [ADS].[Feature_94] + 60.499093434417006 * [ADS].[Feature_95] + -56.68550830894609 * [ADS].[Feature_96] + 58.47521850887636 * [ADS].[Feature_97] + -37.146444895476485 * [ADS].[Feature_98] + -70.82395745342475 * [ADS].[Feature_99] + -1708.90605201 AS [Score_0], -6.794221205209246 * [ADS].[Feature_0] + -47.852360994781414 * [ADS].[Feature_1] + 92.87344536447199 * [ADS].[Feature_2] + -112.59641335732624 * [ADS].[Feature_3] + -40.25025181616474 * [ADS].[Feature_4] + -55.31484807319622 * [ADS].[Feature_5] + 121.3723710557798 * [ADS].[Feature_6] + -8.84720018974247 * [ADS].[Feature_7] + 95.4295972089479 * [ADS].[Feature_8] + -53.758628541388354 * [ADS].[Feature_9] + -71.85793047744176 * [ADS].[Feature_10] + -5.0071711396044085 * [ADS].[Feature_11] + 16.1510110176394 * [ADS].[Feature_12] + 68.65376495588741 * [ADS].[Feature_13] + -90.9734877230092 * [ADS].[Feature_14] + -50.209714683300625 * [ADS].[Feature_15] + 2.564425770284057 * [ADS].[Feature_16] + -6.53092878434332 * [ADS].[Feature_17] + 36.9822973138882 * [ADS].[Feature_18] + 34.33823922392326 * [ADS].[Feature_19] + 76.71412518702617 * [ADS].[Feature_20] + 34.48391045770018 * [ADS].[Feature_21] + 61.09956266337099 * [ADS].[Feature_22] + -79.08281400866498 * [ADS].[Feature_23] + 83.42184418302949 * [ADS].[Feature_24] + -81.68937568801618 * [ADS].[Feature_25] + -17.149905900578656 * [ADS].[Feature_26] + 125.41989155016704 * [ADS].[Feature_27] + 25.536113583262225 * [ADS].[Feature_28] + 69.69408282801452 * [ADS].[Feature_29] + 14.866824003503066 * [ADS].[Feature_30] + 26.698484211677528 * [ADS].[Feature_31] + -61.95694168573437 * [ADS].[Feature_32] + -98.76155892733736 * [ADS].[Feature_33] + -9.519223076040317 * [ADS].[Feature_34] + 33.050391599636235 * [ADS].[Feature_35] + 69.03021077518972 * [ADS].[Feature_36] + 3.8340072792007156 * [ADS].[Feature_37] + 79.18263855042935 * [ADS].[Feature_38] + -38.55485218556265 * [ADS].[Feature_39] + -106.75832807656562 * [ADS].[Feature_40] + 52.72725492702281 * [ADS].[Feature_41] + -47.207555043989196 * [ADS].[Feature_42] + 38.0003904556263 * [ADS].[Feature_43] + 95.12491274580266 * [ADS].[Feature_44] + -25.409540505911107 * [ADS].[Feature_45] + 10.069351552793883 * [ADS].[Feature_46] + -32.88787825234623 * [ADS].[Feature_47] + -56.826462405983605 * [ADS].[Feature_48] + 22.93176492460608 * [ADS].[Feature_49] + 14.593315861314421 * [ADS].[Feature_50] + -51.634367078686026 * [ADS].[Feature_51] + 85.0457824501686 * [ADS].[Feature_52] + 25.705734391604175 * [ADS].[Feature_53] + 70.86342055387996 * [ADS].[Feature_54] + -28.564553501362887 * [ADS].[Feature_55] + 52.050186191732635 * [ADS].[Feature_56] + -37.50046284122363 * [ADS].[Feature_57] + -107.36462846328422 * [ADS].[Feature_58] + 132.83599642867267 * [ADS].[Feature_59] + -54.65844826987583 * [ADS].[Feature_60] + -6.077403399223323 * [ADS].[Feature_61] + 19.490141715997105 * [ADS].[Feature_62] + 70.27548732930507 * [ADS].[Feature_63] + -126.1188402688732 * [ADS].[Feature_64] + -97.81270181863717 * [ADS].[Feature_65] + -29.279008204658435 * [ADS].[Feature_66] + -44.28282148412581 * [ADS].[Feature_67] + -45.27945808612455 * [ADS].[Feature_68] + -70.03487143198232 * [ADS].[Feature_69] + 39.89180211648514 * [ADS].[Feature_70] + -68.0213373099971 * [ADS].[Feature_71] + -11.202543262807005 * [ADS].[Feature_72] + 1.9229619092415335 * [ADS].[Feature_73] + 68.28702965991208 * [ADS].[Feature_74] + -66.1734724925711 * [ADS].[Feature_75] + -20.50357140246221 * [ADS].[Feature_76] + -52.634486458203135 * [ADS].[Feature_77] + 6.365148975266582 * [ADS].[Feature_78] + 4.790801360135172 * [ADS].[Feature_79] + -99.0150752257572 * [ADS].[Feature_80] + -3.711239291032104 * [ADS].[Feature_81] + -168.40570350949332 * [ADS].[Feature_82] + 11.866811311314963 * [ADS].[Feature_83] + 120.19751444890747 * [ADS].[Feature_84] + -76.92269155340333 * [ADS].[Feature_85] + 107.44080918780692 * [ADS].[Feature_86] + 47.54775496838341 * [ADS].[Feature_87] + -116.58700028399 * [ADS].[Feature_88] + 32.15607910708767 * [ADS].[Feature_89] + -22.80589640298989 * [ADS].[Feature_90] + 80.13586726062871 * [ADS].[Feature_91] + -66.48185615350987 * [ADS].[Feature_92] + -14.065843199581597 * [ADS].[Feature_93] + 77.4747407206367 * [ADS].[Feature_94] + 31.62815588480176 * [ADS].[Feature_95] + 32.192812309601166 * [ADS].[Feature_96] + 111.89607976625162 * [ADS].[Feature_97] + -69.18864487768471 * [ADS].[Feature_98] + 34.85010430103806 * [ADS].[Feature_99] + -1657.19927313 AS [Score_1], -9.242775466673024 * [ADS].[Feature_0] + 69.32194773305497 * [ADS].[Feature_1] + 56.469792838879776 * [ADS].[Feature_2] + 30.69966769986651 * [ADS].[Feature_3] + 36.00756258185713 * [ADS].[Feature_4] + 105.98543760407354 * [ADS].[Feature_5] + 11.05921899455399 * [ADS].[Feature_6] + 96.4315065270941 * [ADS].[Feature_7] + 49.378023575306734 * [ADS].[Feature_8] + 50.64544893642129 * [ADS].[Feature_9] + 5.843560751886265 * [ADS].[Feature_10] + -25.588157202130915 * [ADS].[Feature_11] + -106.63063697776548 * [ADS].[Feature_12] + -70.89575986975873 * [ADS].[Feature_13] + -55.466470496478365 * [ADS].[Feature_14] + -181.62597407000982 * [ADS].[Feature_15] + 92.74646257698221 * [ADS].[Feature_16] + 61.44368149019916 * [ADS].[Feature_17] + 42.28873176715909 * [ADS].[Feature_18] + -11.480685810237109 * [ADS].[Feature_19] + 12.364164263793208 * [ADS].[Feature_20] + 35.66413200776893 * [ADS].[Feature_21] + -83.23036640160241 * [ADS].[Feature_22] + -31.875591742225694 * [ADS].[Feature_23] + -27.710313888200716 * [ADS].[Feature_24] + 63.5272920546162 * [ADS].[Feature_25] + -35.845787197180414 * [ADS].[Feature_26] + -123.24081419666926 * [ADS].[Feature_27] + -8.845021784343798 * [ADS].[Feature_28] + 37.12673961537641 * [ADS].[Feature_29] + -33.24395386538369 * [ADS].[Feature_30] + -54.12776995322606 * [ADS].[Feature_31] + 26.568227957259623 * [ADS].[Feature_32] + 64.58348092863149 * [ADS].[Feature_33] + -86.32010015763869 * [ADS].[Feature_34] + -82.13081609178512 * [ADS].[Feature_35] + 59.28238074337031 * [ADS].[Feature_36] + 57.182041777304114 * [ADS].[Feature_37] + 191.47622160180075 * [ADS].[Feature_38] + -93.22704988384591 * [ADS].[Feature_39] + 21.31222399269323 * [ADS].[Feature_40] + -33.826890551317334 * [ADS].[Feature_41] + 2.923366352635449 * [ADS].[Feature_42] + 55.69140333578483 * [ADS].[Feature_43] + -61.13386081735662 * [ADS].[Feature_44] + -24.489174976178116 * [ADS].[Feature_45] + 16.58788865888703 * [ADS].[Feature_46] + -15.391505732688906 * [ADS].[Feature_47] + 59.846383177534975 * [ADS].[Feature_48] + 8.959997758150443 * [ADS].[Feature_49] + 48.64721738557279 * [ADS].[Feature_50] + -106.40322950421175 * [ADS].[Feature_51] + -58.9634911978232 * [ADS].[Feature_52] + 93.37343669159529 * [ADS].[Feature_53] + -26.067330297629002 * [ADS].[Feature_54] + 55.929184653941284 * [ADS].[Feature_55] + 99.05140239355427 * [ADS].[Feature_56] + 52.483993038090645 * [ADS].[Feature_57] + -29.016924436293944 * [ADS].[Feature_58] + -181.73592618749856 * [ADS].[Feature_59] + 86.92971254169085 * [ADS].[Feature_60] + -98.46218682421934 * [ADS].[Feature_61] + 22.328895358602324 * [ADS].[Feature_62] + -121.56557594987217 * [ADS].[Feature_63] + 82.76794701167316 * [ADS].[Feature_64] + 130.36387792878318 * [ADS].[Feature_65] + 126.9980639118909 * [ADS].[Feature_66] + 100.07334519048568 * [ADS].[Feature_67] + 47.261802881676516 * [ADS].[Feature_68] + -17.7370136808426 * [ADS].[Feature_69] + -78.42159418715185 * [ADS].[Feature_70] + -29.902106196294685 * [ADS].[Feature_71] + 16.681073923742925 * [ADS].[Feature_72] + -19.293437781182845 * [ADS].[Feature_73] + -43.09699807242897 * [ADS].[Feature_74] + -14.798416305762972 * [ADS].[Feature_75] + 70.31409748245174 * [ADS].[Feature_76] + 77.22380245818619 * [ADS].[Feature_77] + 76.07384409463855 * [ADS].[Feature_78] + -37.104946553530276 * [ADS].[Feature_79] + 32.60377342435097 * [ADS].[Feature_80] + 131.10725402958144 * [ADS].[Feature_81] + 65.87649825031706 * [ADS].[Feature_82] + -13.29558831922168 * [ADS].[Feature_83] + 27.8774369238904 * [ADS].[Feature_84] + 55.523205983721205 * [ADS].[Feature_85] + -105.90498765286083 * [ADS].[Feature_86] + -14.755164935543705 * [ADS].[Feature_87] + 132.83114096862124 * [ADS].[Feature_88] + -65.98856940704772 * [ADS].[Feature_89] + 17.40995791222603 * [ADS].[Feature_90] + -113.286333512827 * [ADS].[Feature_91] + 72.01276906285854 * [ADS].[Feature_92] + 74.39951362868334 * [ADS].[Feature_93] + 157.3958724112341 * [ADS].[Feature_94] + 34.398964990915786 * [ADS].[Feature_95] + -73.26756091230294 * [ADS].[Feature_96] + 127.95231927440776 * [ADS].[Feature_97] + -22.160234005706986 * [ADS].[Feature_98] + -6.029922796116666 * [ADS].[Feature_99] + -1650.63316404 AS [Score_2], 51.53158505402065 * [ADS].[Feature_0] + -39.67784504002378 * [ADS].[Feature_1] + -15.56870260556861 * [ADS].[Feature_2] + 68.75775308623207 * [ADS].[Feature_3] + -21.147834137461935 * [ADS].[Feature_4] + 0.17516644121678498 * [ADS].[Feature_5] + -149.57584040485415 * [ADS].[Feature_6] + 3.8743297013307036 * [ADS].[Feature_7] + 50.9271219219132 * [ADS].[Feature_8] + -103.1390295677748 * [ADS].[Feature_9] + 35.14223611429642 * [ADS].[Feature_10] + 46.77622653641505 * [ADS].[Feature_11] + 25.988709340233203 * [ADS].[Feature_12] + 8.766350202612507 * [ADS].[Feature_13] + 81.46537606577144 * [ADS].[Feature_14] + 43.99990406279723 * [ADS].[Feature_15] + -47.217915627071875 * [ADS].[Feature_16] + 144.6311605233264 * [ADS].[Feature_17] + -37.524860092305495 * [ADS].[Feature_18] + -137.41877408597537 * [ADS].[Feature_19] + -27.474690183083887 * [ADS].[Feature_20] + 14.951720785474492 * [ADS].[Feature_21] + -18.0558151325949 * [ADS].[Feature_22] + 148.28322529218283 * [ADS].[Feature_23] + -2.5551432250247337 * [ADS].[Feature_24] + -71.19230580309255 * [ADS].[Feature_25] + -50.84263115140122 * [ADS].[Feature_26] + 19.027108755555425 * [ADS].[Feature_27] + -15.386998145858142 * [ADS].[Feature_28] + -99.47839906622303 * [ADS].[Feature_29] + -44.46482307600878 * [ADS].[Feature_30] + -7.968297294568644 * [ADS].[Feature_31] + -28.343077951675898 * [ADS].[Feature_32] + 86.0305962870969 * [ADS].[Feature_33] + -52.12998745789101 * [ADS].[Feature_34] + -30.277472928924016 * [ADS].[Feature_35] + -35.833602904768995 * [ADS].[Feature_36] + 30.26335427166643 * [ADS].[Feature_37] + -108.53285249237575 * [ADS].[Feature_38] + 65.7149548173112 * [ADS].[Feature_39] + 82.48614064340582 * [ADS].[Feature_40] + 66.39276094721633 * [ADS].[Feature_41] + 79.00389058010495 * [ADS].[Feature_42] + -121.56413893748116 * [ADS].[Feature_43] + 24.05254305110642 * [ADS].[Feature_44] + 8.702890295248785 * [ADS].[Feature_45] + 13.068964416882983 * [ADS].[Feature_46] + 27.300434544846027 * [ADS].[Feature_47] + -11.702207325151521 * [ADS].[Feature_48] + -80.6813583225279 * [ADS].[Feature_49] + -73.63688957149542 * [ADS].[Feature_50] + -17.239729912484474 * [ADS].[Feature_51] + -77.76884358508588 * [ADS].[Feature_52] + -94.95856860015817 * [ADS].[Feature_53] + -16.6311792286704 * [ADS].[Feature_54] + 17.47786291645611 * [ADS].[Feature_55] + -52.26102629928372 * [ADS].[Feature_56] + 52.50473863878226 * [ADS].[Feature_57] + 31.158147133803322 * [ADS].[Feature_58] + 146.58471807442677 * [ADS].[Feature_59] + 54.11906300090438 * [ADS].[Feature_60] + 92.45010499324408 * [ADS].[Feature_61] + -38.17985839287694 * [ADS].[Feature_62] + 54.59756355814265 * [ADS].[Feature_63] + 53.946400689038555 * [ADS].[Feature_64] + 90.86559945999764 * [ADS].[Feature_65] + -36.04156745229818 * [ADS].[Feature_66] + -124.41063753970651 * [ADS].[Feature_67] + 139.65109591399744 * [ADS].[Feature_68] + 1.7648735377657758 * [ADS].[Feature_69] + 11.156003820395334 * [ADS].[Feature_70] + 40.56677131154674 * [ADS].[Feature_71] + -6.137670579828057 * [ADS].[Feature_72] + -11.082952632446283 * [ADS].[Feature_73] + 96.70528585126367 * [ADS].[Feature_74] + 61.35356320086809 * [ADS].[Feature_75] + 15.046008980101774 * [ADS].[Feature_76] + 65.87485704044356 * [ADS].[Feature_77] + -56.72516303340052 * [ADS].[Feature_78] + 71.25820235153813 * [ADS].[Feature_79] + -41.811911994126255 * [ADS].[Feature_80] + 51.869565434119814 * [ADS].[Feature_81] + 83.33442564662413 * [ADS].[Feature_82] + 122.55486462036053 * [ADS].[Feature_83] + -184.71671642931784 * [ADS].[Feature_84] + -11.545315421770743 * [ADS].[Feature_85] + -12.673711786727353 * [ADS].[Feature_86] + 45.433245338342196 * [ADS].[Feature_87] + -25.49349530100336 * [ADS].[Feature_88] + -22.455008943371045 * [ADS].[Feature_89] + -55.453605580915486 * [ADS].[Feature_90] + 30.95012468937766 * [ADS].[Feature_91] + -12.50613909105272 * [ADS].[Feature_92] + 15.7857739224062 * [ADS].[Feature_93] + 7.149444307674971 * [ADS].[Feature_94] + -66.75037548633128 * [ADS].[Feature_95] + 75.25777816728642 * [ADS].[Feature_96] + -100.38444644581351 * [ADS].[Feature_97] + 62.83212319524283 * [ADS].[Feature_98] + -27.52479788287825 * [ADS].[Feature_99] + -1557.91408483 AS [Score_3] 
FROM [FourClass_100] AS [ADS]), 
orig_cte AS 
(SELECT linear_model_cte.[KEY] AS [KEY], linear_model_cte.[Score_0] AS [Score_0], linear_model_cte.[Score_1] AS [Score_1], linear_model_cte.[Score_2] AS [Score_2], linear_model_cte.[Score_3] AS [Score_3], CAST(NULL AS FLOAT) AS [Proba_0], CAST(NULL AS FLOAT) AS [Proba_1], CAST(NULL AS FLOAT) AS [Proba_2], CAST(NULL AS FLOAT) AS [Proba_3], CAST(NULL AS FLOAT) AS [LogProba_0], CAST(NULL AS FLOAT) AS [LogProba_1], CAST(NULL AS FLOAT) AS [LogProba_2], CAST(NULL AS FLOAT) AS [LogProba_3], CAST(NULL AS INTEGER) AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba] 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu.[KEY_u] AS [KEY_u], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY_u], 0 AS class, orig_cte.[LogProba_0] AS [LogProba], orig_cte.[Proba_0] AS [Proba], orig_cte.[Score_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 1 AS class, orig_cte.[LogProba_1] AS [LogProba], orig_cte.[Proba_1] AS [Proba], orig_cte.[Score_1] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 2 AS class, orig_cte.[LogProba_2] AS [LogProba], orig_cte.[Proba_2] AS [Proba], orig_cte.[Score_2] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 3 AS class, orig_cte.[LogProba_3] AS [LogProba], orig_cte.[Proba_3] AS [Proba], orig_cte.[Score_3] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_0] AS [Score_0], orig_cte.[Score_1] AS [Score_1], orig_cte.[Score_2] AS [Score_2], orig_cte.[Score_3] AS [Score_3], orig_cte.[Proba_0] AS [Proba_0], orig_cte.[Proba_1] AS [Proba_1], orig_cte.[Proba_2] AS [Proba_2], orig_cte.[Proba_3] AS [Proba_3], orig_cte.[LogProba_0] AS [LogProba_0], orig_cte.[LogProba_1] AS [LogProba_1], orig_cte.[LogProba_2] AS [LogProba_2], orig_cte.[LogProba_3] AS [LogProba_3], orig_cte.[Decision] AS [Decision], orig_cte.[DecisionProba] AS [DecisionProba], max_select.[KEY_m] AS [KEY_m], max_select.[max_Score] AS [max_Score] 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.[KEY_u] AS [KEY_m], max(score_class_union.[Score]) AS [max_Score] 
FROM score_class_union GROUP BY score_class_union.[KEY_u]) AS max_select ON orig_cte.[KEY] = max_select.[KEY_m]), 
union_with_max AS 
(SELECT score_class_union.[KEY_u] AS [KEY_u], score_class_union.class AS class, score_class_union.[LogProba] AS [LogProba], score_class_union.[Proba] AS [Proba], score_class_union.[Score] AS [Score], score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Score_3] AS [Score_3], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[Proba_3] AS [Proba_3], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[LogProba_3] AS [LogProba_3], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Score] AS [max_Score] 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.[KEY_u] = score_max.[KEY]), 
arg_max_cte AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Score_3] AS [Score_3], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[Proba_3] AS [Proba_3], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[LogProba_3] AS [LogProba_3], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Score] AS [max_Score], [arg_max_t_Score].[KEY_Score] AS [KEY_Score], [arg_max_t_Score].[arg_max_Score] AS [arg_max_Score] 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.[KEY] AS [KEY_Score], min(union_with_max.class) AS [arg_max_Score] 
FROM union_with_max 
WHERE union_with_max.[max_Score] <= union_with_max.[Score] GROUP BY union_with_max.[KEY]) AS [arg_max_t_Score] ON score_max.[KEY] = [arg_max_t_Score].[KEY_Score])
 SELECT arg_max_cte.[KEY] AS [KEY], arg_max_cte.[Score_0] AS [Score_0], arg_max_cte.[Score_1] AS [Score_1], arg_max_cte.[Score_2] AS [Score_2], arg_max_cte.[Score_3] AS [Score_3], arg_max_cte.[Proba_0] AS [Proba_0], arg_max_cte.[Proba_1] AS [Proba_1], arg_max_cte.[Proba_2] AS [Proba_2], arg_max_cte.[Proba_3] AS [Proba_3], CASE WHEN (arg_max_cte.[Proba_0] IS NULL OR arg_max_cte.[Proba_0] > 0.0) THEN log(arg_max_cte.[Proba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[Proba_1] IS NULL OR arg_max_cte.[Proba_1] > 0.0) THEN log(arg_max_cte.[Proba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], CASE WHEN (arg_max_cte.[Proba_2] IS NULL OR arg_max_cte.[Proba_2] > 0.0) THEN log(arg_max_cte.[Proba_2]) ELSE -1.79769313486231e+308 END AS [LogProba_2], CASE WHEN (arg_max_cte.[Proba_3] IS NULL OR arg_max_cte.[Proba_3] > 0.0) THEN log(arg_max_cte.[Proba_3]) ELSE -1.79769313486231e+308 END AS [LogProba_3], arg_max_cte.[arg_max_Score] AS [Decision], CASE WHEN (arg_max_cte.[arg_max_Score] = 0) THEN arg_max_cte.[Proba_0] WHEN (arg_max_cte.[arg_max_Score] = 1) THEN arg_max_cte.[Proba_1] WHEN (arg_max_cte.[arg_max_Score] = 2) THEN arg_max_cte.[Proba_2] WHEN (arg_max_cte.[arg_max_Score] = 3) THEN arg_max_cte.[Proba_3] END AS [DecisionProba] 
FROM arg_max_cte