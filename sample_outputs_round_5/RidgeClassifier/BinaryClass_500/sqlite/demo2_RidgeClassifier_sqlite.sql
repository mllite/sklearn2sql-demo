-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -0.032304320003063956 * "ADS"."Feature_0" + 0.005658017844139104 * "ADS"."Feature_1" + -0.006203914707541827 * "ADS"."Feature_2" + 0.01565312153205542 * "ADS"."Feature_3" + 0.0015119103577623603 * "ADS"."Feature_4" + 0.017444134756272916 * "ADS"."Feature_5" + -0.00998696596468927 * "ADS"."Feature_6" + 0.0016403069518269122 * "ADS"."Feature_7" + -0.017765552752516445 * "ADS"."Feature_8" + 0.01611687693973336 * "ADS"."Feature_9" + -0.0009996424723407978 * "ADS"."Feature_10" + -0.02356564971829988 * "ADS"."Feature_11" + 0.003601077991333943 * "ADS"."Feature_12" + 0.0007585568043889845 * "ADS"."Feature_13" + -0.008959983424536291 * "ADS"."Feature_14" + -0.0026474520032060515 * "ADS"."Feature_15" + 0.013824567298566843 * "ADS"."Feature_16" + 0.021389681700187613 * "ADS"."Feature_17" + -0.009205109437191519 * "ADS"."Feature_18" + 0.009832406427821159 * "ADS"."Feature_19" + -0.014113236762067143 * "ADS"."Feature_20" + 0.012360762905544354 * "ADS"."Feature_21" + -0.004308803434454712 * "ADS"."Feature_22" + 0.012610104350213478 * "ADS"."Feature_23" + -0.017551694904291967 * "ADS"."Feature_24" + 0.006494174140776752 * "ADS"."Feature_25" + -0.010181715522794933 * "ADS"."Feature_26" + -0.0020377293864344806 * "ADS"."Feature_27" + 0.006339744163424608 * "ADS"."Feature_28" + 0.004697908254585766 * "ADS"."Feature_29" + 0.01398696202354072 * "ADS"."Feature_30" + -0.020442627762532875 * "ADS"."Feature_31" + 0.014346663780638862 * "ADS"."Feature_32" + 0.006841551261044939 * "ADS"."Feature_33" + -0.009175441644526217 * "ADS"."Feature_34" + -0.015078482186775391 * "ADS"."Feature_35" + 0.0015025559908334312 * "ADS"."Feature_36" + 0.01663962861435603 * "ADS"."Feature_37" + -0.007866283788626837 * "ADS"."Feature_38" + 0.006790951931725308 * "ADS"."Feature_39" + -0.0011495927223448697 * "ADS"."Feature_40" + -0.011523795156525544 * "ADS"."Feature_41" + 0.007098549947715365 * "ADS"."Feature_42" + -0.01212099885309957 * "ADS"."Feature_43" + -0.006856159767167311 * "ADS"."Feature_44" + -0.013523449838646909 * "ADS"."Feature_45" + -0.000552689757127197 * "ADS"."Feature_46" + -0.0016389645340012756 * "ADS"."Feature_47" + 0.01750905012518032 * "ADS"."Feature_48" + 0.016452729576276363 * "ADS"."Feature_49" + -0.02631769518853097 * "ADS"."Feature_50" + 0.013427486570188437 * "ADS"."Feature_51" + -0.019008550986170325 * "ADS"."Feature_52" + -0.022730589977430757 * "ADS"."Feature_53" + -0.018461650324887915 * "ADS"."Feature_54" + -0.031060675356447277 * "ADS"."Feature_55" + -0.019941890881684837 * "ADS"."Feature_56" + -0.010528565233745905 * "ADS"."Feature_57" + -0.019420629644050877 * "ADS"."Feature_58" + 0.00941963323075582 * "ADS"."Feature_59" + 0.009136813790781934 * "ADS"."Feature_60" + -0.011975771306403647 * "ADS"."Feature_61" + -0.024631392675722973 * "ADS"."Feature_62" + -0.02367693015665772 * "ADS"."Feature_63" + 0.002312554828359146 * "ADS"."Feature_64" + 0.011073135970589785 * "ADS"."Feature_65" + -0.004401478403597289 * "ADS"."Feature_66" + 0.001349110354919631 * "ADS"."Feature_67" + -0.0008639852918396473 * "ADS"."Feature_68" + -0.021736720947097676 * "ADS"."Feature_69" + 0.006577321344660313 * "ADS"."Feature_70" + -0.013375942135767968 * "ADS"."Feature_71" + -0.01219660158282485 * "ADS"."Feature_72" + 0.002583062900472439 * "ADS"."Feature_73" + -0.004025835079673181 * "ADS"."Feature_74" + 0.012023206970996392 * "ADS"."Feature_75" + 0.019171734728462873 * "ADS"."Feature_76" + 0.03315428338860702 * "ADS"."Feature_77" + 0.007173594861340221 * "ADS"."Feature_78" + 0.01789056033287433 * "ADS"."Feature_79" + -0.01417033546920186 * "ADS"."Feature_80" + 0.009675371498816946 * "ADS"."Feature_81" + -0.001107191423585857 * "ADS"."Feature_82" + -0.026455315475093614 * "ADS"."Feature_83" + -0.005216996742367034 * "ADS"."Feature_84" + -0.016448247079372418 * "ADS"."Feature_85" + -0.0024188551028140595 * "ADS"."Feature_86" + -0.003974664288839869 * "ADS"."Feature_87" + -0.014349118575748155 * "ADS"."Feature_88" + 0.015451255032808142 * "ADS"."Feature_89" + -0.014523979846031205 * "ADS"."Feature_90" + -0.005789673881456205 * "ADS"."Feature_91" + 0.021470917339087767 * "ADS"."Feature_92" + -0.02826342292464081 * "ADS"."Feature_93" + -0.0022745055626596715 * "ADS"."Feature_94" + 0.03271251416896253 * "ADS"."Feature_95" + -0.0014451367347227376 * "ADS"."Feature_96" + -0.017486812213361094 * "ADS"."Feature_97" + 0.01691570936648811 * "ADS"."Feature_98" + -0.0009497307037555797 * "ADS"."Feature_99" + -0.027397017426514715 * "ADS"."Feature_100" + 0.027665168311266083 * "ADS"."Feature_101" + -0.011367996942991 * "ADS"."Feature_102" + 0.00985476241862328 * "ADS"."Feature_103" + -0.025280030620449867 * "ADS"."Feature_104" + -0.019502839679984674 * "ADS"."Feature_105" + 0.016966277370557142 * "ADS"."Feature_106" + 0.0033012152453790215 * "ADS"."Feature_107" + -0.0035825440931330603 * "ADS"."Feature_108" + 0.02499987984702331 * "ADS"."Feature_109" + 0.00786988945715591 * "ADS"."Feature_110" + 0.011666733504011657 * "ADS"."Feature_111" + -0.005714225561416653 * "ADS"."Feature_112" + 0.010473201577803088 * "ADS"."Feature_113" + 0.015565416994188296 * "ADS"."Feature_114" + -0.005541893072701659 * "ADS"."Feature_115" + -0.006291791284816884 * "ADS"."Feature_116" + -0.02231884865425511 * "ADS"."Feature_117" + -0.014272254504913106 * "ADS"."Feature_118" + -0.011721561594377743 * "ADS"."Feature_119" + -0.008074264887986392 * "ADS"."Feature_120" + -0.015458141574855306 * "ADS"."Feature_121" + -0.014635708560757937 * "ADS"."Feature_122" + 0.009006185373714434 * "ADS"."Feature_123" + -0.0033978756212144487 * "ADS"."Feature_124" + 0.00912822455315756 * "ADS"."Feature_125" + -0.01625443622385714 * "ADS"."Feature_126" + -0.004459453517791034 * "ADS"."Feature_127" + 0.013801515210798119 * "ADS"."Feature_128" + -0.011367185712454724 * "ADS"."Feature_129" + 0.004011952037594114 * "ADS"."Feature_130" + 0.00751851457635791 * "ADS"."Feature_131" + 0.028278865121618806 * "ADS"."Feature_132" + 0.03126837165229524 * "ADS"."Feature_133" + -6.86482053748451e-05 * "ADS"."Feature_134" + 0.02577139021381314 * "ADS"."Feature_135" + -0.015218935475670098 * "ADS"."Feature_136" + 0.0017517704924788955 * "ADS"."Feature_137" + 0.003807076043345724 * "ADS"."Feature_138" + 0.009902878887051585 * "ADS"."Feature_139" + 0.04074356215413602 * "ADS"."Feature_140" + 0.021745855118135853 * "ADS"."Feature_141" + 0.009050697433370837 * "ADS"."Feature_142" + 0.0013461868520878249 * "ADS"."Feature_143" + 0.005044436667542548 * "ADS"."Feature_144" + -0.021395210024885883 * "ADS"."Feature_145" + -0.00039927512377557067 * "ADS"."Feature_146" + 0.0036358853937628645 * "ADS"."Feature_147" + -0.005131575396763416 * "ADS"."Feature_148" + -0.02283628616565803 * "ADS"."Feature_149" + 0.0016512060789801264 * "ADS"."Feature_150" + -0.002174588569370514 * "ADS"."Feature_151" + -0.01674237216405927 * "ADS"."Feature_152" + 0.018912549397986478 * "ADS"."Feature_153" + -0.00576824013285386 * "ADS"."Feature_154" + -0.029367322268363784 * "ADS"."Feature_155" + -0.020462132077574694 * "ADS"."Feature_156" + -0.013984476101355708 * "ADS"."Feature_157" + 0.009440712128758914 * "ADS"."Feature_158" + 0.008744819505089839 * "ADS"."Feature_159" + -0.026540417266497016 * "ADS"."Feature_160" + 0.0031039828546530566 * "ADS"."Feature_161" + 0.00807756234223038 * "ADS"."Feature_162" + -0.02009892353625255 * "ADS"."Feature_163" + -0.0020629069145526105 * "ADS"."Feature_164" + -0.022149655254476017 * "ADS"."Feature_165" + 0.0021941187147952812 * "ADS"."Feature_166" + -0.004221502792050447 * "ADS"."Feature_167" + -0.016589401043687967 * "ADS"."Feature_168" + 0.010872704704417493 * "ADS"."Feature_169" + -0.00839979574664394 * "ADS"."Feature_170" + -0.0001678643593163951 * "ADS"."Feature_171" + 0.02196757154607172 * "ADS"."Feature_172" + -0.004039642874507252 * "ADS"."Feature_173" + -0.00113276436838049 * "ADS"."Feature_174" + 0.02801764992564844 * "ADS"."Feature_175" + -0.01344661746333735 * "ADS"."Feature_176" + 0.010464149855753462 * "ADS"."Feature_177" + 0.004428065776935948 * "ADS"."Feature_178" + -0.02121843007641 * "ADS"."Feature_179" + -0.008609334915433555 * "ADS"."Feature_180" + -0.021914642850078863 * "ADS"."Feature_181" + -0.009267955191874918 * "ADS"."Feature_182" + 0.003505452368164928 * "ADS"."Feature_183" + 0.006455888467202204 * "ADS"."Feature_184" + 0.021949148963727814 * "ADS"."Feature_185" + -0.0027518163947537646 * "ADS"."Feature_186" + 0.0206940512655594 * "ADS"."Feature_187" + -0.033502712172451724 * "ADS"."Feature_188" + -0.010450991841229367 * "ADS"."Feature_189" + -0.0019382545554575514 * "ADS"."Feature_190" + 0.01043340959887522 * "ADS"."Feature_191" + -0.021010688491222312 * "ADS"."Feature_192" + -0.02247575669385547 * "ADS"."Feature_193" + 0.002815903281596695 * "ADS"."Feature_194" + 0.03154019878111181 * "ADS"."Feature_195" + -0.0036671590766126764 * "ADS"."Feature_196" + -0.015535723300160903 * "ADS"."Feature_197" + 0.01161290277564339 * "ADS"."Feature_198" + -0.009887711979579397 * "ADS"."Feature_199" + -0.005469513839118181 * "ADS"."Feature_200" + 0.013159794447222447 * "ADS"."Feature_201" + 0.01255041129698138 * "ADS"."Feature_202" + 0.01567712557118693 * "ADS"."Feature_203" + 0.0004643730827602608 * "ADS"."Feature_204" + 0.0009065099803505801 * "ADS"."Feature_205" + -0.019206624946575285 * "ADS"."Feature_206" + 0.012092759265615656 * "ADS"."Feature_207" + 0.011280804392518365 * "ADS"."Feature_208" + -0.0016223263081956577 * "ADS"."Feature_209" + 0.002216752265840027 * "ADS"."Feature_210" + 0.007297056720422952 * "ADS"."Feature_211" + 0.013732931621118272 * "ADS"."Feature_212" + -0.015550264744080996 * "ADS"."Feature_213" + 0.007905600603340302 * "ADS"."Feature_214" + 0.011571692295821522 * "ADS"."Feature_215" + 0.004990643634637311 * "ADS"."Feature_216" + 0.001710210032737203 * "ADS"."Feature_217" + -0.01532949234801568 * "ADS"."Feature_218" + -0.015217024183919974 * "ADS"."Feature_219" + -0.0124966003174452 * "ADS"."Feature_220" + 0.0031872225246747593 * "ADS"."Feature_221" + -0.0036835693256538297 * "ADS"."Feature_222" + -0.010462157262027014 * "ADS"."Feature_223" + 0.014147210424289259 * "ADS"."Feature_224" + -0.024712123194824732 * "ADS"."Feature_225" + -0.017090759650362764 * "ADS"."Feature_226" + -0.014348545872042082 * "ADS"."Feature_227" + 0.017351416603011743 * "ADS"."Feature_228" + -0.026248598636575634 * "ADS"."Feature_229" + -0.007904147555159176 * "ADS"."Feature_230" + 0.012873452971203129 * "ADS"."Feature_231" + -0.00804730574978419 * "ADS"."Feature_232" + -0.007493765498004549 * "ADS"."Feature_233" + -0.005011549360650297 * "ADS"."Feature_234" + 0.006183205351358686 * "ADS"."Feature_235" + -0.005349204810176523 * "ADS"."Feature_236" + 0.012324095593241867 * "ADS"."Feature_237" + 0.020908236417222028 * "ADS"."Feature_238" + 0.010633462295478489 * "ADS"."Feature_239" + -0.007692532487969691 * "ADS"."Feature_240" + -0.008799026787786258 * "ADS"."Feature_241" + 0.10968539410108884 * "ADS"."Feature_242" + -0.018727777880730715 * "ADS"."Feature_243" + 0.029945840471826433 * "ADS"."Feature_244" + -0.021280126728909138 * "ADS"."Feature_245" + -0.018904883975270688 * "ADS"."Feature_246" + 0.0035791752571867567 * "ADS"."Feature_247" + -0.012922832569633043 * "ADS"."Feature_248" + -0.008712153336120342 * "ADS"."Feature_249" + 0.000794254757540298 * "ADS"."Feature_250" + 0.03138036803277923 * "ADS"."Feature_251" + -0.002103899295097861 * "ADS"."Feature_252" + 0.0023647970733555925 * "ADS"."Feature_253" + 0.004055211690005371 * "ADS"."Feature_254" + -0.01577449485964886 * "ADS"."Feature_255" + 0.013025851553801157 * "ADS"."Feature_256" + 0.019036520506080963 * "ADS"."Feature_257" + -0.0024301699893281136 * "ADS"."Feature_258" + -0.00712931356956133 * "ADS"."Feature_259" + -0.005441504663260929 * "ADS"."Feature_260" + -0.022401926704226197 * "ADS"."Feature_261" + -0.01064558176370356 * "ADS"."Feature_262" + 0.0028069453833988764 * "ADS"."Feature_263" + -0.004725414367811256 * "ADS"."Feature_264" + 0.017911439525381687 * "ADS"."Feature_265" + 0.019799303683131653 * "ADS"."Feature_266" + 0.022825275851195516 * "ADS"."Feature_267" + 0.006151286462459071 * "ADS"."Feature_268" + -0.017688043929591845 * "ADS"."Feature_269" + -0.029923267071482882 * "ADS"."Feature_270" + 0.013280448968289192 * "ADS"."Feature_271" + 0.005716944622762571 * "ADS"."Feature_272" + -0.005496165752011951 * "ADS"."Feature_273" + 0.007309392512788011 * "ADS"."Feature_274" + 0.013355051000456792 * "ADS"."Feature_275" + -0.016456093379250525 * "ADS"."Feature_276" + -0.0008538112408082593 * "ADS"."Feature_277" + -0.00462259847773656 * "ADS"."Feature_278" + -0.0008058629233264171 * "ADS"."Feature_279" + -0.008206809869337717 * "ADS"."Feature_280" + 0.00035552146018089396 * "ADS"."Feature_281" + 0.003639385990133443 * "ADS"."Feature_282" + -0.0075825839042768664 * "ADS"."Feature_283" + 0.004666368971532891 * "ADS"."Feature_284" + -0.007777302002381319 * "ADS"."Feature_285" + 0.015532763460577517 * "ADS"."Feature_286" + 0.008282688909322756 * "ADS"."Feature_287" + -0.028393975973329624 * "ADS"."Feature_288" + 0.015745578634620245 * "ADS"."Feature_289" + -0.012630197687435927 * "ADS"."Feature_290" + -0.00725553336740944 * "ADS"."Feature_291" + -0.011540634239789202 * "ADS"."Feature_292" + -0.013209891102623716 * "ADS"."Feature_293" + -0.01608579650854062 * "ADS"."Feature_294" + -0.024640217655738705 * "ADS"."Feature_295" + -0.014320788612081579 * "ADS"."Feature_296" + 0.017633920844348432 * "ADS"."Feature_297" + 0.006770888888229952 * "ADS"."Feature_298" + 0.01618029400579995 * "ADS"."Feature_299" + 0.0005525503198539597 * "ADS"."Feature_300" + -0.017672431039872052 * "ADS"."Feature_301" + -0.010227124418324525 * "ADS"."Feature_302" + 0.009127865290365782 * "ADS"."Feature_303" + -0.014522500658192003 * "ADS"."Feature_304" + -0.008599892162995965 * "ADS"."Feature_305" + 0.027455152380196635 * "ADS"."Feature_306" + 0.028283718482827774 * "ADS"."Feature_307" + -0.00995686487414766 * "ADS"."Feature_308" + -0.005232669067652669 * "ADS"."Feature_309" + 0.022618575470376226 * "ADS"."Feature_310" + -0.0032348390190417293 * "ADS"."Feature_311" + -0.02667370981182284 * "ADS"."Feature_312" + 0.011352647098593174 * "ADS"."Feature_313" + 0.018910559397416902 * "ADS"."Feature_314" + 0.006415823503662487 * "ADS"."Feature_315" + 0.0027191097539860896 * "ADS"."Feature_316" + -0.009609408806818556 * "ADS"."Feature_317" + 0.012982209720987382 * "ADS"."Feature_318" + -0.007298752707223778 * "ADS"."Feature_319" + -0.024187464368789865 * "ADS"."Feature_320" + 0.0018783796691600567 * "ADS"."Feature_321" + -0.017306989485795652 * "ADS"."Feature_322" + -0.012495048108811043 * "ADS"."Feature_323" + -0.003807837877789786 * "ADS"."Feature_324" + -0.0005347906076261537 * "ADS"."Feature_325" + -0.011282528377771182 * "ADS"."Feature_326" + 0.010842592604123104 * "ADS"."Feature_327" + 0.000507435414255778 * "ADS"."Feature_328" + 0.00751670217716851 * "ADS"."Feature_329" + -0.0073088086855587564 * "ADS"."Feature_330" + -0.015188734712499931 * "ADS"."Feature_331" + 0.004910143145393323 * "ADS"."Feature_332" + -0.018031123975244787 * "ADS"."Feature_333" + 0.014592333192361575 * "ADS"."Feature_334" + 0.023345421051573355 * "ADS"."Feature_335" + -0.007759367092902425 * "ADS"."Feature_336" + 0.005373448089646119 * "ADS"."Feature_337" + -0.00447078464296429 * "ADS"."Feature_338" + -0.011434883949555351 * "ADS"."Feature_339" + -0.0011023882245500217 * "ADS"."Feature_340" + 0.006421791336768751 * "ADS"."Feature_341" + 0.00044902530430085234 * "ADS"."Feature_342" + 0.0034682791812267657 * "ADS"."Feature_343" + -0.008200644740927424 * "ADS"."Feature_344" + -0.0011650953923188548 * "ADS"."Feature_345" + 0.016267878850314697 * "ADS"."Feature_346" + -0.002192412249295258 * "ADS"."Feature_347" + -0.006934823396256071 * "ADS"."Feature_348" + 0.03883466715725205 * "ADS"."Feature_349" + 0.006546857258817796 * "ADS"."Feature_350" + -0.02442849382481384 * "ADS"."Feature_351" + -0.006827657620366725 * "ADS"."Feature_352" + -0.005152871981540412 * "ADS"."Feature_353" + 0.010910648617491622 * "ADS"."Feature_354" + -0.0265891118778563 * "ADS"."Feature_355" + -0.01429141185322406 * "ADS"."Feature_356" + -0.0356803394846575 * "ADS"."Feature_357" + -0.0013648331699702661 * "ADS"."Feature_358" + 0.0010390422437977945 * "ADS"."Feature_359" + 0.0014447848766617828 * "ADS"."Feature_360" + -0.008619252142417622 * "ADS"."Feature_361" + -0.01624027355564888 * "ADS"."Feature_362" + -0.015120176476468674 * "ADS"."Feature_363" + -0.0003897422542579038 * "ADS"."Feature_364" + 0.006401568798952055 * "ADS"."Feature_365" + 0.02599613357243958 * "ADS"."Feature_366" + 0.009847228845767157 * "ADS"."Feature_367" + 0.01474665976860891 * "ADS"."Feature_368" + 0.009965611371987475 * "ADS"."Feature_369" + -0.008212159214362476 * "ADS"."Feature_370" + -0.014074194605324929 * "ADS"."Feature_371" + 0.028905443099549264 * "ADS"."Feature_372" + -0.015298687238360762 * "ADS"."Feature_373" + 0.005835398857612881 * "ADS"."Feature_374" + 0.030036299785911155 * "ADS"."Feature_375" + 0.006759129181051309 * "ADS"."Feature_376" + -0.007195847329675846 * "ADS"."Feature_377" + -0.026184044916172648 * "ADS"."Feature_378" + -0.024476993277138405 * "ADS"."Feature_379" + 0.007375246691271952 * "ADS"."Feature_380" + -0.00828826487856027 * "ADS"."Feature_381" + 0.007965173907868953 * "ADS"."Feature_382" + -0.009266919870732715 * "ADS"."Feature_383" + -0.02045138345783385 * "ADS"."Feature_384" + 0.016273911201685025 * "ADS"."Feature_385" + -0.02611507218215706 * "ADS"."Feature_386" + -0.007422062886971349 * "ADS"."Feature_387" + -0.011498500983395136 * "ADS"."Feature_388" + 0.007983591502879972 * "ADS"."Feature_389" + 0.01895480268572761 * "ADS"."Feature_390" + 0.014564517637951269 * "ADS"."Feature_391" + -0.02552034870059262 * "ADS"."Feature_392" + -0.0026552947319561427 * "ADS"."Feature_393" + -0.011577383775717088 * "ADS"."Feature_394" + -0.0017779542231396695 * "ADS"."Feature_395" + -0.005280058052518483 * "ADS"."Feature_396" + 0.0006460351414752658 * "ADS"."Feature_397" + 0.02778716510845689 * "ADS"."Feature_398" + 0.0041714201805767084 * "ADS"."Feature_399" + -0.009620668553744374 * "ADS"."Feature_400" + 0.018354423954554527 * "ADS"."Feature_401" + -0.0018422126980394834 * "ADS"."Feature_402" + 0.017525758774150874 * "ADS"."Feature_403" + -0.0025156127465706846 * "ADS"."Feature_404" + -0.023907310568847963 * "ADS"."Feature_405" + 0.027326251461457837 * "ADS"."Feature_406" + -0.006094807853551105 * "ADS"."Feature_407" + 0.010533781108890455 * "ADS"."Feature_408" + -0.02322230624219447 * "ADS"."Feature_409" + 0.003218303517799433 * "ADS"."Feature_410" + 0.020668616273069162 * "ADS"."Feature_411" + -0.0027569467986432125 * "ADS"."Feature_412" + -0.0006119923059802049 * "ADS"."Feature_413" + -0.009589897715956735 * "ADS"."Feature_414" + 0.0040304248483834645 * "ADS"."Feature_415" + 0.020620636822633213 * "ADS"."Feature_416" + -0.013185330895014464 * "ADS"."Feature_417" + 0.00301044347345913 * "ADS"."Feature_418" + 0.003938782757253878 * "ADS"."Feature_419" + 0.007572984361508006 * "ADS"."Feature_420" + 0.0008961780333522442 * "ADS"."Feature_421" + 0.032775253264087964 * "ADS"."Feature_422" + -0.011100636684850528 * "ADS"."Feature_423" + 0.014224872727215952 * "ADS"."Feature_424" + 0.029612796251747023 * "ADS"."Feature_425" + -0.00018816105634006245 * "ADS"."Feature_426" + 0.011986800274963 * "ADS"."Feature_427" + 0.008366631471471576 * "ADS"."Feature_428" + -0.008446372057629334 * "ADS"."Feature_429" + -0.006138994082389718 * "ADS"."Feature_430" + 0.0010184741805936838 * "ADS"."Feature_431" + -0.015589053807827807 * "ADS"."Feature_432" + -0.028063518113087778 * "ADS"."Feature_433" + 0.013272294772037655 * "ADS"."Feature_434" + 0.016670706617390927 * "ADS"."Feature_435" + 0.016070127760354557 * "ADS"."Feature_436" + -0.001646512796528011 * "ADS"."Feature_437" + -0.0025260986633441453 * "ADS"."Feature_438" + -0.00648089495706128 * "ADS"."Feature_439" + -0.004372598938113664 * "ADS"."Feature_440" + -0.02196470266585969 * "ADS"."Feature_441" + 0.0011989405602849603 * "ADS"."Feature_442" + -0.0002454159030041308 * "ADS"."Feature_443" + 0.018173722213774817 * "ADS"."Feature_444" + -0.0033162370225452847 * "ADS"."Feature_445" + 0.0027587665580910852 * "ADS"."Feature_446" + 0.011145389854594956 * "ADS"."Feature_447" + -0.025463050849290902 * "ADS"."Feature_448" + 0.005945933171724587 * "ADS"."Feature_449" + -0.015206470808036943 * "ADS"."Feature_450" + 0.006878721394739313 * "ADS"."Feature_451" + -0.008899878518724562 * "ADS"."Feature_452" + 0.009009306266492833 * "ADS"."Feature_453" + 0.016081077710019844 * "ADS"."Feature_454" + 0.017705121076522248 * "ADS"."Feature_455" + -0.002245330083975234 * "ADS"."Feature_456" + -0.02333747665536812 * "ADS"."Feature_457" + 0.003943244336697856 * "ADS"."Feature_458" + 0.0018294899844669644 * "ADS"."Feature_459" + 0.0006689457611467812 * "ADS"."Feature_460" + 0.024765015285223003 * "ADS"."Feature_461" + -0.019121552406527288 * "ADS"."Feature_462" + 0.01508221370711457 * "ADS"."Feature_463" + 0.025770546207352602 * "ADS"."Feature_464" + 0.007909966403810573 * "ADS"."Feature_465" + 0.026930843242851187 * "ADS"."Feature_466" + 0.004353523470143288 * "ADS"."Feature_467" + -0.007059753637794092 * "ADS"."Feature_468" + -0.013023004409093257 * "ADS"."Feature_469" + -0.00909000961008121 * "ADS"."Feature_470" + 0.006726014955057604 * "ADS"."Feature_471" + -0.0014359183939407349 * "ADS"."Feature_472" + 0.015062277349213178 * "ADS"."Feature_473" + 0.000601551298198641 * "ADS"."Feature_474" + -0.009627316059901586 * "ADS"."Feature_475" + 0.009738854391363022 * "ADS"."Feature_476" + -0.0031958380385739833 * "ADS"."Feature_477" + -0.013919518992628081 * "ADS"."Feature_478" + 0.0025259192733859967 * "ADS"."Feature_479" + -0.006674638106507363 * "ADS"."Feature_480" + 0.0329930807239907 * "ADS"."Feature_481" + -0.014318801975666474 * "ADS"."Feature_482" + -0.006384779877760028 * "ADS"."Feature_483" + -0.0027651745384372067 * "ADS"."Feature_484" + 0.00024329944441926028 * "ADS"."Feature_485" + 0.015217953458206921 * "ADS"."Feature_486" + -0.008294510505261638 * "ADS"."Feature_487" + -0.024834437192013798 * "ADS"."Feature_488" + -0.008270032615591496 * "ADS"."Feature_489" + -0.04124984249178726 * "ADS"."Feature_490" + -0.015043272225548982 * "ADS"."Feature_491" + -0.004791231096967445 * "ADS"."Feature_492" + 0.011048183113869198 * "ADS"."Feature_493" + -0.01302652671819446 * "ADS"."Feature_494" + 0.004294986770866511 * "ADS"."Feature_495" + -0.03434492057037139 * "ADS"."Feature_496" + 0.005534257286754476 * "ADS"."Feature_497" + -0.016750277714771437 * "ADS"."Feature_498" + 0.04082416924229744 * "ADS"."Feature_499" + -0.06037446119 AS linear_combination 
FROM "BinaryClass_500" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.linear_combination AS "Score_0", linear_model_cte.linear_combination AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (linear_model_cte.linear_combination >= 0.0) THEN 1 ELSE 0 END AS "Decision" 
FROM linear_model_cte