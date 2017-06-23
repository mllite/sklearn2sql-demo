-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT [ADS].[KEY] AS [KEY], -0.2591667612837312 * [ADS].[Feature_0] + 6.39484101447076 * [ADS].[Feature_1] + 5.307201421628127 * [ADS].[Feature_2] + -4.529661124678057 * [ADS].[Feature_3] + 3.4348850941431026 * [ADS].[Feature_4] + 1.0216003440856978 * [ADS].[Feature_5] + 2.765675176818203 * [ADS].[Feature_6] + 1.0207964647931487 * [ADS].[Feature_7] + -0.18564963848964672 * [ADS].[Feature_8] + 0.5437514790960594 * [ADS].[Feature_9] + -1.9924266354323996 * [ADS].[Feature_10] + -0.8449663891633329 * [ADS].[Feature_11] + -3.5166107873680565 * [ADS].[Feature_12] + 0.879971369013181 * [ADS].[Feature_13] + 4.640635010195388 * [ADS].[Feature_14] + 0.7984316343230708 * [ADS].[Feature_15] + -2.2954055580442576 * [ADS].[Feature_16] + 4.557001956339843 * [ADS].[Feature_17] + -5.420244993207483 * [ADS].[Feature_18] + 1.7733327747246392 * [ADS].[Feature_19] + 1.9438418667605208 * [ADS].[Feature_20] + 1.8022200913268693 * [ADS].[Feature_21] + 0.5285284988499678 * [ADS].[Feature_22] + 3.8776341733902657 * [ADS].[Feature_23] + 5.191012786047681 * [ADS].[Feature_24] + -0.7712379329028978 * [ADS].[Feature_25] + 0.8819015229445087 * [ADS].[Feature_26] + -1.9338279892111134 * [ADS].[Feature_27] + 2.19758157128014 * [ADS].[Feature_28] + -0.635524486554316 * [ADS].[Feature_29] + -0.7464898436504912 * [ADS].[Feature_30] + -2.6424758682254423 * [ADS].[Feature_31] + -0.3584315473360011 * [ADS].[Feature_32] + -4.411489491074026 * [ADS].[Feature_33] + 2.43942095077281 * [ADS].[Feature_34] + 0.411225658383165 * [ADS].[Feature_35] + -4.269269590766347 * [ADS].[Feature_36] + 1.0863572301981794 * [ADS].[Feature_37] + 3.1605326544235153 * [ADS].[Feature_38] + 0.898797530037892 * [ADS].[Feature_39] + -1.1690703469102517 * [ADS].[Feature_40] + 0.03678176788954136 * [ADS].[Feature_41] + 0.35660205088368335 * [ADS].[Feature_42] + -4.0646138628285 * [ADS].[Feature_43] + -0.31635295957607557 * [ADS].[Feature_44] + 0.7369495411103065 * [ADS].[Feature_45] + 7.4120938733221555 * [ADS].[Feature_46] + 0.3191698963359514 * [ADS].[Feature_47] + 0.29783489254954826 * [ADS].[Feature_48] + -4.098491338013853 * [ADS].[Feature_49] + 1.0466668874097271 * [ADS].[Feature_50] + 8.826243116831401 * [ADS].[Feature_51] + -2.0592730092900107 * [ADS].[Feature_52] + 0.04043056818855936 * [ADS].[Feature_53] + -2.5230138121772394 * [ADS].[Feature_54] + 0.6531458297762857 * [ADS].[Feature_55] + 2.7490606580951966 * [ADS].[Feature_56] + -7.418180375243814 * [ADS].[Feature_57] + 4.353811973972949 * [ADS].[Feature_58] + 1.492409386656719 * [ADS].[Feature_59] + -5.670861863539287 * [ADS].[Feature_60] + 2.7444856718411685 * [ADS].[Feature_61] + 3.5106165222684065 * [ADS].[Feature_62] + 3.0082006770219167 * [ADS].[Feature_63] + 5.614231712571651 * [ADS].[Feature_64] + -1.5495187984535805 * [ADS].[Feature_65] + -1.0313825613756875 * [ADS].[Feature_66] + 1.9359763627921986 * [ADS].[Feature_67] + -6.439119897140167 * [ADS].[Feature_68] + -3.814567298202975 * [ADS].[Feature_69] + -1.6915139787926912 * [ADS].[Feature_70] + 3.3267119270371097 * [ADS].[Feature_71] + 2.2091993226663815 * [ADS].[Feature_72] + 1.8541022801544382 * [ADS].[Feature_73] + 4.171244049643072 * [ADS].[Feature_74] + 4.110605131061056 * [ADS].[Feature_75] + 0.5348998935101619 * [ADS].[Feature_76] + 3.5983956595376485 * [ADS].[Feature_77] + 0.13201810285999677 * [ADS].[Feature_78] + -1.3164395271263467 * [ADS].[Feature_79] + -2.0302342082819678 * [ADS].[Feature_80] + 0.2507897134148598 * [ADS].[Feature_81] + 2.9434471248053806 * [ADS].[Feature_82] + 1.9955168290337666 * [ADS].[Feature_83] + 2.269283752000683 * [ADS].[Feature_84] + 2.486203447545062 * [ADS].[Feature_85] + -7.869806815466409 * [ADS].[Feature_86] + -3.053022189565665 * [ADS].[Feature_87] + 0.0045882115671205806 * [ADS].[Feature_88] + 1.271062723097188 * [ADS].[Feature_89] + -6.402852751433477 * [ADS].[Feature_90] + 1.3554002681222665 * [ADS].[Feature_91] + 5.725008148635951 * [ADS].[Feature_92] + 2.064892891228177 * [ADS].[Feature_93] + -4.722617177551037 * [ADS].[Feature_94] + -3.0320920931751 * [ADS].[Feature_95] + -1.643102529155984 * [ADS].[Feature_96] + -0.9994954849088975 * [ADS].[Feature_97] + -6.24522857333905 * [ADS].[Feature_98] + -11.147577447397664 * [ADS].[Feature_99] + -1.5176957075385975 * [ADS].[Feature_100] + -2.2741330329416107 * [ADS].[Feature_101] + 6.957073804330326 * [ADS].[Feature_102] + 2.8608212211329356 * [ADS].[Feature_103] + -5.6074133243815245 * [ADS].[Feature_104] + -0.3457827764763991 * [ADS].[Feature_105] + 4.193144603325838 * [ADS].[Feature_106] + 4.431779416542989 * [ADS].[Feature_107] + 3.9221239324691353 * [ADS].[Feature_108] + 4.76034694374819 * [ADS].[Feature_109] + -2.8537803076684787 * [ADS].[Feature_110] + 0.42144872050531573 * [ADS].[Feature_111] + -1.4472099383034303 * [ADS].[Feature_112] + 4.109727215751073 * [ADS].[Feature_113] + -2.4430361544171064 * [ADS].[Feature_114] + -4.610799661204713 * [ADS].[Feature_115] + 2.710686516095709 * [ADS].[Feature_116] + -1.072512578717924 * [ADS].[Feature_117] + -2.171396737034212 * [ADS].[Feature_118] + -0.5934630705168187 * [ADS].[Feature_119] + -2.7489824134905665 * [ADS].[Feature_120] + -4.0646899182457 * [ADS].[Feature_121] + 0.46005741121753335 * [ADS].[Feature_122] + -2.985135434817509 * [ADS].[Feature_123] + -1.0894409844610613 * [ADS].[Feature_124] + -7.185426716645136 * [ADS].[Feature_125] + 1.1306729055711757 * [ADS].[Feature_126] + -0.929636726695332 * [ADS].[Feature_127] + -3.5401718075334476 * [ADS].[Feature_128] + -1.5485585632557752 * [ADS].[Feature_129] + -2.3393814637746186 * [ADS].[Feature_130] + 0.4895079496375915 * [ADS].[Feature_131] + -2.129485529155936 * [ADS].[Feature_132] + -0.05336748671769118 * [ADS].[Feature_133] + -0.7696859554314196 * [ADS].[Feature_134] + -0.9175283685572773 * [ADS].[Feature_135] + 3.43627154476858 * [ADS].[Feature_136] + 6.972122535665783 * [ADS].[Feature_137] + 2.5572221436714964 * [ADS].[Feature_138] + 2.4298321354578314 * [ADS].[Feature_139] + 7.03195373331762 * [ADS].[Feature_140] + 2.208287244023859 * [ADS].[Feature_141] + -0.2871326524386776 * [ADS].[Feature_142] + -0.6316410929653994 * [ADS].[Feature_143] + -0.9992157864327235 * [ADS].[Feature_144] + -1.8314326179152136 * [ADS].[Feature_145] + -1.8535040157258942 * [ADS].[Feature_146] + -2.210831491843643 * [ADS].[Feature_147] + 2.3259591615606596 * [ADS].[Feature_148] + 1.9762737576065788 * [ADS].[Feature_149] + -4.864651213820817 * [ADS].[Feature_150] + 6.877951135266226 * [ADS].[Feature_151] + 1.1773773543508237 * [ADS].[Feature_152] + 1.1189288989828678 * [ADS].[Feature_153] + 3.7027236684550386 * [ADS].[Feature_154] + -0.1841215891601072 * [ADS].[Feature_155] + 4.44592647157914 * [ADS].[Feature_156] + 9.247666741769383 * [ADS].[Feature_157] + 2.756674912797212 * [ADS].[Feature_158] + -0.6329087792964964 * [ADS].[Feature_159] + -1.4265823683563397 * [ADS].[Feature_160] + 1.1719142415859307 * [ADS].[Feature_161] + 2.1653785715319316 * [ADS].[Feature_162] + 5.566037077868425 * [ADS].[Feature_163] + 2.736282740739476 * [ADS].[Feature_164] + -0.28549863072810383 * [ADS].[Feature_165] + 1.563749738667993 * [ADS].[Feature_166] + -1.2520987392062 * [ADS].[Feature_167] + 0.027265002957934478 * [ADS].[Feature_168] + 0.5462547393674408 * [ADS].[Feature_169] + -5.353729880502856 * [ADS].[Feature_170] + -2.2228736757612424 * [ADS].[Feature_171] + 4.181704867144473 * [ADS].[Feature_172] + -2.084286568995328 * [ADS].[Feature_173] + -0.9064167617980414 * [ADS].[Feature_174] + -5.37830526123871 * [ADS].[Feature_175] + 0.9466731025296096 * [ADS].[Feature_176] + 3.7284000894313047 * [ADS].[Feature_177] + -0.7385901949112542 * [ADS].[Feature_178] + 0.6189115690679358 * [ADS].[Feature_179] + -6.395971855515319 * [ADS].[Feature_180] + -5.189767985044965 * [ADS].[Feature_181] + -0.49143676800481384 * [ADS].[Feature_182] + -5.795306984595094 * [ADS].[Feature_183] + -2.8627750186792116 * [ADS].[Feature_184] + 1.1646713941212294 * [ADS].[Feature_185] + 0.8725063492381864 * [ADS].[Feature_186] + -1.4279900501633884 * [ADS].[Feature_187] + -0.04947978648649942 * [ADS].[Feature_188] + 6.137567799119748 * [ADS].[Feature_189] + 0.4033844096346613 * [ADS].[Feature_190] + -5.066241142333537 * [ADS].[Feature_191] + 1.9198566758772417 * [ADS].[Feature_192] + -5.737149077969357 * [ADS].[Feature_193] + 3.3233497143119926 * [ADS].[Feature_194] + -5.819925747394118 * [ADS].[Feature_195] + -5.095731874273531 * [ADS].[Feature_196] + -0.07486531154136769 * [ADS].[Feature_197] + 0.18636583644101296 * [ADS].[Feature_198] + 6.606010240026192 * [ADS].[Feature_199] + 0.07020383850683881 * [ADS].[Feature_200] + 4.992750201077665 * [ADS].[Feature_201] + 4.3458786742964755 * [ADS].[Feature_202] + 0.19843941395152753 * [ADS].[Feature_203] + 0.7558651447606625 * [ADS].[Feature_204] + -1.3082547963260935 * [ADS].[Feature_205] + 3.798123890972709 * [ADS].[Feature_206] + -0.6217656445822093 * [ADS].[Feature_207] + 4.04034693924545 * [ADS].[Feature_208] + 1.1469741594234504 * [ADS].[Feature_209] + 4.336322127859622 * [ADS].[Feature_210] + -0.23369338256841604 * [ADS].[Feature_211] + -0.7959519374886839 * [ADS].[Feature_212] + 2.1663785998780387 * [ADS].[Feature_213] + 10.166333378215496 * [ADS].[Feature_214] + -2.829837789713314 * [ADS].[Feature_215] + 3.7229303380072305 * [ADS].[Feature_216] + 7.198622502462758 * [ADS].[Feature_217] + 3.0993658667339523 * [ADS].[Feature_218] + -3.8373891440616106 * [ADS].[Feature_219] + -3.3529325937207966 * [ADS].[Feature_220] + 0.9313753618922277 * [ADS].[Feature_221] + 1.7296912018800938 * [ADS].[Feature_222] + 5.217520847398926 * [ADS].[Feature_223] + -0.10934009790056394 * [ADS].[Feature_224] + 3.687704668578411 * [ADS].[Feature_225] + 1.2093104204060001 * [ADS].[Feature_226] + -6.440196700925337 * [ADS].[Feature_227] + 2.914844918254557 * [ADS].[Feature_228] + -1.7068491176658067 * [ADS].[Feature_229] + 0.8924647129883556 * [ADS].[Feature_230] + 2.259695144646885 * [ADS].[Feature_231] + -4.249344351419076 * [ADS].[Feature_232] + 0.3643280843443445 * [ADS].[Feature_233] + 6.36166103178178 * [ADS].[Feature_234] + -4.293711544561697 * [ADS].[Feature_235] + -0.21148138947106312 * [ADS].[Feature_236] + -2.908319585765152 * [ADS].[Feature_237] + -1.0321770638187941 * [ADS].[Feature_238] + 1.207039605464479 * [ADS].[Feature_239] + 2.0078180728812645 * [ADS].[Feature_240] + 2.1691413485816113 * [ADS].[Feature_241] + 5.293778671630721 * [ADS].[Feature_242] + 11.233815412078172 * [ADS].[Feature_243] + -4.821182962573566 * [ADS].[Feature_244] + 5.476470126962882 * [ADS].[Feature_245] + 2.343858054604901 * [ADS].[Feature_246] + -2.6779481767856077 * [ADS].[Feature_247] + -1.4105068870258848 * [ADS].[Feature_248] + -1.8421473970844446 * [ADS].[Feature_249] + 0.6567082529658466 * [ADS].[Feature_250] + -1.854369339107533 * [ADS].[Feature_251] + -3.537820177154691 * [ADS].[Feature_252] + -3.1357635887249935 * [ADS].[Feature_253] + -3.7467972770730142 * [ADS].[Feature_254] + 0.2633517422430539 * [ADS].[Feature_255] + -4.076421668521651 * [ADS].[Feature_256] + 1.1230500965297117 * [ADS].[Feature_257] + -2.44636566162001 * [ADS].[Feature_258] + -2.8017204729941216 * [ADS].[Feature_259] + -3.057523363166505 * [ADS].[Feature_260] + -0.03703858310758231 * [ADS].[Feature_261] + 8.303120648934463 * [ADS].[Feature_262] + 12.219860721564585 * [ADS].[Feature_263] + -2.007841109617979 * [ADS].[Feature_264] + 0.040310868660764484 * [ADS].[Feature_265] + 2.691651040494791 * [ADS].[Feature_266] + -0.32757017159928215 * [ADS].[Feature_267] + 2.4131940070601634 * [ADS].[Feature_268] + -0.2694342061750995 * [ADS].[Feature_269] + 1.7583087445402197 * [ADS].[Feature_270] + -3.8696633792428003 * [ADS].[Feature_271] + -4.911540523850532 * [ADS].[Feature_272] + -2.237719271639776 * [ADS].[Feature_273] + 5.6700942199099735 * [ADS].[Feature_274] + 1.4233209023285796 * [ADS].[Feature_275] + 4.942198818403909 * [ADS].[Feature_276] + 0.8518885781554238 * [ADS].[Feature_277] + 0.6459715193215702 * [ADS].[Feature_278] + -3.185770559924526 * [ADS].[Feature_279] + 3.5141370901353404 * [ADS].[Feature_280] + 3.1026321306278053 * [ADS].[Feature_281] + 6.331906333791124 * [ADS].[Feature_282] + -0.1981100152999159 * [ADS].[Feature_283] + -1.8191449003914224 * [ADS].[Feature_284] + -1.3344874774265223 * [ADS].[Feature_285] + -1.960096257963248 * [ADS].[Feature_286] + 3.1152315764519733 * [ADS].[Feature_287] + -2.8879658106555812 * [ADS].[Feature_288] + -8.958561187476528 * [ADS].[Feature_289] + -0.4531132473165307 * [ADS].[Feature_290] + 3.378407563345499 * [ADS].[Feature_291] + 1.1408344936551407 * [ADS].[Feature_292] + 5.627882053284704 * [ADS].[Feature_293] + 0.27862757516583936 * [ADS].[Feature_294] + -2.1137802627410034 * [ADS].[Feature_295] + 6.943542302114773 * [ADS].[Feature_296] + 3.4995566971878063 * [ADS].[Feature_297] + -0.7625121122439844 * [ADS].[Feature_298] + -5.147501239521846 * [ADS].[Feature_299] + 2.3705495966256875 * [ADS].[Feature_300] + -3.4181910055678673 * [ADS].[Feature_301] + -3.0455960992899285 * [ADS].[Feature_302] + -4.399383533091536 * [ADS].[Feature_303] + -3.7233303110518063 * [ADS].[Feature_304] + 1.7193487698447667 * [ADS].[Feature_305] + -1.215293616273453 * [ADS].[Feature_306] + 0.8485107468357681 * [ADS].[Feature_307] + -0.9304137405468609 * [ADS].[Feature_308] + 0.965295942505491 * [ADS].[Feature_309] + 3.4591049172726667 * [ADS].[Feature_310] + 3.4034074511093055 * [ADS].[Feature_311] + 4.978598696169071 * [ADS].[Feature_312] + -0.8752296078347528 * [ADS].[Feature_313] + 4.338359730082099 * [ADS].[Feature_314] + -1.533136633278576 * [ADS].[Feature_315] + 2.9714593927040025 * [ADS].[Feature_316] + 4.839517001355312 * [ADS].[Feature_317] + 3.9757430882432643 * [ADS].[Feature_318] + 0.24837224767462185 * [ADS].[Feature_319] + 2.351410811201763 * [ADS].[Feature_320] + -1.321110156363241 * [ADS].[Feature_321] + -4.24507226261886 * [ADS].[Feature_322] + 0.2558786249428078 * [ADS].[Feature_323] + 1.9877136583988886 * [ADS].[Feature_324] + -2.448393250232237 * [ADS].[Feature_325] + -5.000555968740364 * [ADS].[Feature_326] + -3.826945212660626 * [ADS].[Feature_327] + 7.157911830840726 * [ADS].[Feature_328] + -3.250589191093937 * [ADS].[Feature_329] + 0.3670341044539151 * [ADS].[Feature_330] + -3.970057033337361 * [ADS].[Feature_331] + 2.271770514925641 * [ADS].[Feature_332] + -0.1945959864336679 * [ADS].[Feature_333] + -2.5660750754231136 * [ADS].[Feature_334] + 1.783045271530719 * [ADS].[Feature_335] + 0.46105778208671205 * [ADS].[Feature_336] + -2.5612285362674294 * [ADS].[Feature_337] + -0.5043986580147686 * [ADS].[Feature_338] + -9.99445399950082 * [ADS].[Feature_339] + -3.3769900226061713 * [ADS].[Feature_340] + 2.8184991697018735 * [ADS].[Feature_341] + 0.6441450276207867 * [ADS].[Feature_342] + 0.684688326372232 * [ADS].[Feature_343] + -3.119115376157066 * [ADS].[Feature_344] + -1.430189752487875 * [ADS].[Feature_345] + 3.2101139966576917 * [ADS].[Feature_346] + 2.4022737010357273 * [ADS].[Feature_347] + 2.549237527235312 * [ADS].[Feature_348] + 0.09701949615893175 * [ADS].[Feature_349] + 6.0706037023247506 * [ADS].[Feature_350] + -3.013996984004466 * [ADS].[Feature_351] + 2.8983989057649953 * [ADS].[Feature_352] + 7.204671361136273 * [ADS].[Feature_353] + 5.85018419258532 * [ADS].[Feature_354] + -0.9956224532615067 * [ADS].[Feature_355] + -0.6600486273528335 * [ADS].[Feature_356] + -0.2587751194047661 * [ADS].[Feature_357] + -0.8892307238808322 * [ADS].[Feature_358] + 2.2511035783499325 * [ADS].[Feature_359] + 0.06619591997809311 * [ADS].[Feature_360] + -3.4337448275550386 * [ADS].[Feature_361] + -1.664279227467714 * [ADS].[Feature_362] + 3.1367178785222136 * [ADS].[Feature_363] + 1.7771369224169467 * [ADS].[Feature_364] + -4.3133111188137985 * [ADS].[Feature_365] + -0.7392109532667019 * [ADS].[Feature_366] + 1.2321715244900335 * [ADS].[Feature_367] + -1.8194233838299005 * [ADS].[Feature_368] + 3.778358328072248 * [ADS].[Feature_369] + 0.25587028735420175 * [ADS].[Feature_370] + -1.2407174349761532 * [ADS].[Feature_371] + -3.085356395043695 * [ADS].[Feature_372] + -4.254258888138827 * [ADS].[Feature_373] + -1.0220582904054263 * [ADS].[Feature_374] + 1.298554406445722 * [ADS].[Feature_375] + 0.05395578092618669 * [ADS].[Feature_376] + -0.8303316741612727 * [ADS].[Feature_377] + 2.047837216651448 * [ADS].[Feature_378] + 1.101498946938013 * [ADS].[Feature_379] + -2.085660014813623 * [ADS].[Feature_380] + 0.799769807350817 * [ADS].[Feature_381] + 3.0974337679735706 * [ADS].[Feature_382] + 0.07474850691492145 * [ADS].[Feature_383] + -0.5934100877709928 * [ADS].[Feature_384] + -4.792064538142718 * [ADS].[Feature_385] + -0.17049792974167385 * [ADS].[Feature_386] + -7.400896924905825 * [ADS].[Feature_387] + -1.207549509449234 * [ADS].[Feature_388] + 2.3209843682319993 * [ADS].[Feature_389] + 5.410281919471434 * [ADS].[Feature_390] + -6.11969932327001 * [ADS].[Feature_391] + 5.186965094452608 * [ADS].[Feature_392] + 2.9213213431393945 * [ADS].[Feature_393] + 1.2269586223548028 * [ADS].[Feature_394] + 3.7613578596839456 * [ADS].[Feature_395] + 6.59710421516956 * [ADS].[Feature_396] + 2.761700673954543 * [ADS].[Feature_397] + 2.751342839080545 * [ADS].[Feature_398] + 2.756869570591805 * [ADS].[Feature_399] + 1.2353187799014869 * [ADS].[Feature_400] + -3.228365173416405 * [ADS].[Feature_401] + 4.2599986206594105 * [ADS].[Feature_402] + -2.362786802094754 * [ADS].[Feature_403] + 1.8488126107556786 * [ADS].[Feature_404] + -2.898597634626163 * [ADS].[Feature_405] + 1.750772568329323 * [ADS].[Feature_406] + -2.706934597963897 * [ADS].[Feature_407] + -1.4695729944961493 * [ADS].[Feature_408] + -0.1680808511769123 * [ADS].[Feature_409] + -3.1838022339869556 * [ADS].[Feature_410] + 1.022079650916943 * [ADS].[Feature_411] + 8.03767538882373 * [ADS].[Feature_412] + -6.442439979350761 * [ADS].[Feature_413] + -2.746463109989244 * [ADS].[Feature_414] + -2.9705030158111514 * [ADS].[Feature_415] + 1.9038890398510229 * [ADS].[Feature_416] + 1.5966159189713176 * [ADS].[Feature_417] + -0.2882175796022171 * [ADS].[Feature_418] + -7.182066949122662 * [ADS].[Feature_419] + -0.5301615375580526 * [ADS].[Feature_420] + -0.4216371978273942 * [ADS].[Feature_421] + -5.884978747399484 * [ADS].[Feature_422] + -3.2900114116600356 * [ADS].[Feature_423] + -0.7198980780104812 * [ADS].[Feature_424] + -8.001680660378254 * [ADS].[Feature_425] + 1.872731654277065 * [ADS].[Feature_426] + 2.6637053213594672 * [ADS].[Feature_427] + 2.7202528210730867 * [ADS].[Feature_428] + 1.816200801361433 * [ADS].[Feature_429] + -2.8801190067722233 * [ADS].[Feature_430] + -0.8251294511717613 * [ADS].[Feature_431] + 5.230953736780269 * [ADS].[Feature_432] + 2.8269661203446335 * [ADS].[Feature_433] + 3.5286368950098703 * [ADS].[Feature_434] + -0.7019958660937297 * [ADS].[Feature_435] + -0.8813078469966589 * [ADS].[Feature_436] + 2.6201481337361776 * [ADS].[Feature_437] + -1.6859686643419391 * [ADS].[Feature_438] + -5.031109707959486 * [ADS].[Feature_439] + -0.4525668876787106 * [ADS].[Feature_440] + 0.9691633657826252 * [ADS].[Feature_441] + 0.4914850576830997 * [ADS].[Feature_442] + -0.6071514325171943 * [ADS].[Feature_443] + -0.3850515424197848 * [ADS].[Feature_444] + -3.025813481684689 * [ADS].[Feature_445] + 3.4389429164117744 * [ADS].[Feature_446] + 2.781921136011353 * [ADS].[Feature_447] + -4.270808155044823 * [ADS].[Feature_448] + 1.1642205782816635 * [ADS].[Feature_449] + -0.03155920859882824 * [ADS].[Feature_450] + 1.6088658443260393 * [ADS].[Feature_451] + -0.07951130022361742 * [ADS].[Feature_452] + 1.499240088908177 * [ADS].[Feature_453] + 4.039865024512316 * [ADS].[Feature_454] + -0.9320330301686856 * [ADS].[Feature_455] + 6.661768318908777 * [ADS].[Feature_456] + -0.09794787925999471 * [ADS].[Feature_457] + -1.4695319054962466 * [ADS].[Feature_458] + -3.0616309049927906 * [ADS].[Feature_459] + -0.5863277526480394 * [ADS].[Feature_460] + 0.5389494915683071 * [ADS].[Feature_461] + 1.3857625465271122 * [ADS].[Feature_462] + 2.1593981461271947 * [ADS].[Feature_463] + 6.791470820297781 * [ADS].[Feature_464] + -1.9495412235920435 * [ADS].[Feature_465] + 4.200126928110907 * [ADS].[Feature_466] + 2.2854515279861585 * [ADS].[Feature_467] + -1.4390649725311777 * [ADS].[Feature_468] + -7.132075170295906 * [ADS].[Feature_469] + -3.7427071446212588 * [ADS].[Feature_470] + -5.211321536740851 * [ADS].[Feature_471] + 3.6574493606748146 * [ADS].[Feature_472] + -6.306297749632906 * [ADS].[Feature_473] + 1.224147869670492 * [ADS].[Feature_474] + -5.568079819221673 * [ADS].[Feature_475] + 2.915648346916562 * [ADS].[Feature_476] + 2.311871368687777 * [ADS].[Feature_477] + -0.6270004220007608 * [ADS].[Feature_478] + -1.6417745777208839 * [ADS].[Feature_479] + -0.867034197904411 * [ADS].[Feature_480] + 0.274625998828023 * [ADS].[Feature_481] + -5.951936295715603 * [ADS].[Feature_482] + 1.1849632182862584 * [ADS].[Feature_483] + 4.219368449508589 * [ADS].[Feature_484] + 2.7469034468032936 * [ADS].[Feature_485] + 6.181897869992034 * [ADS].[Feature_486] + 0.9037839949902128 * [ADS].[Feature_487] + 5.720971788593612 * [ADS].[Feature_488] + -2.65689609685553 * [ADS].[Feature_489] + -2.1884221100150945 * [ADS].[Feature_490] + 5.361419994910775 * [ADS].[Feature_491] + 4.8478585589067205 * [ADS].[Feature_492] + 5.511256019360953 * [ADS].[Feature_493] + -4.082637745951785 * [ADS].[Feature_494] + -0.5298962694094902 * [ADS].[Feature_495] + -6.10459912649676 * [ADS].[Feature_496] + -0.02962734768077793 * [ADS].[Feature_497] + 2.23338412232528 * [ADS].[Feature_498] + -0.96464475363374 * [ADS].[Feature_499] + -3.00444358027 AS [Estimator] 
FROM [RandomReg_500] AS [ADS])
 SELECT linear_model_cte.[KEY] AS [KEY], linear_model_cte.[Estimator] AS [Estimator] 
FROM linear_model_cte