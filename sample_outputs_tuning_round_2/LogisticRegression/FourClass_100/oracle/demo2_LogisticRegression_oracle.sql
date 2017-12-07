-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.001233583435170426 * "ADS"."Feature_0" + 0.005753673710432316 * "ADS"."Feature_1" + -0.1801120818130641 * "ADS"."Feature_2" + -0.14924949704249324 * "ADS"."Feature_3" + 0.2662436991794111 * "ADS"."Feature_4" + -0.13047431759404057 * "ADS"."Feature_5" + 0.1197202638970583 * "ADS"."Feature_6" + 0.06330517875751623 * "ADS"."Feature_7" + -0.1353053927982928 * "ADS"."Feature_8" + 0.035752832693061044 * "ADS"."Feature_9" + -0.1287328761143127 * "ADS"."Feature_10" + 0.13700113246514375 * "ADS"."Feature_11" + 0.09964607309008329 * "ADS"."Feature_12" + -0.10094361878894052 * "ADS"."Feature_13" + -0.1325257683270879 * "ADS"."Feature_14" + 0.13345108993315488 * "ADS"."Feature_15" + 0.12975704452004075 * "ADS"."Feature_16" + -0.19740308780430144 * "ADS"."Feature_17" + -0.2670448559804394 * "ADS"."Feature_18" + 0.15622293671663598 * "ADS"."Feature_19" + -0.2822892965023707 * "ADS"."Feature_20" + -0.01710268029768365 * "ADS"."Feature_21" + 0.02604004695695534 * "ADS"."Feature_22" + -0.16654531348308071 * "ADS"."Feature_23" + -0.11011637362963832 * "ADS"."Feature_24" + 0.13408079966378988 * "ADS"."Feature_25" + -0.01447998101561636 * "ADS"."Feature_26" + -0.16205683028384354 * "ADS"."Feature_27" + 0.06132662659145196 * "ADS"."Feature_28" + -0.02654652480472402 * "ADS"."Feature_29" + -0.012999813608431728 * "ADS"."Feature_30" + -0.06818265637656007 * "ADS"."Feature_31" + 0.0014559513215240145 * "ADS"."Feature_32" + -0.004137783792565968 * "ADS"."Feature_33" + 0.19180052897480135 * "ADS"."Feature_34" + 0.14686789021071875 * "ADS"."Feature_35" + 0.01817706978811671 * "ADS"."Feature_36" + -0.14226907747871487 * "ADS"."Feature_37" + -0.046622062731340515 * "ADS"."Feature_38" + 0.025241821976052948 * "ADS"."Feature_39" + 0.13844272027940652 * "ADS"."Feature_40" + -0.15710101593789444 * "ADS"."Feature_41" + -0.0223892390055648 * "ADS"."Feature_42" + 0.03856070856785356 * "ADS"."Feature_43" + 0.050316897519993846 * "ADS"."Feature_44" + -0.0720920887762122 * "ADS"."Feature_45" + -0.018694291643155638 * "ADS"."Feature_46" + 0.12435397690713647 * "ADS"."Feature_47" + -0.061928603014580044 * "ADS"."Feature_48" + 0.01469893017311399 * "ADS"."Feature_49" + 0.02835792035760407 * "ADS"."Feature_50" + 0.15111339867722567 * "ADS"."Feature_51" + 0.09756086057306135 * "ADS"."Feature_52" + -0.04929193052490518 * "ADS"."Feature_53" + 0.08388409263624076 * "ADS"."Feature_54" + 0.005557481687889247 * "ADS"."Feature_55" + -0.13235271959642825 * "ADS"."Feature_56" + -0.04109818321594581 * "ADS"."Feature_57" + 0.11178719208365966 * "ADS"."Feature_58" + -0.01665859285204278 * "ADS"."Feature_59" + -0.16411018793134136 * "ADS"."Feature_60" + -0.004788779073792636 * "ADS"."Feature_61" + -0.01663064823176492 * "ADS"."Feature_62" + -0.1409723986189523 * "ADS"."Feature_63" + -0.0895016485016266 * "ADS"."Feature_64" + -0.04666293754634543 * "ADS"."Feature_65" + -0.08682001143050738 * "ADS"."Feature_66" + 0.19569998206198516 * "ADS"."Feature_67" + -0.15284020125001904 * "ADS"."Feature_68" + 0.08327359049622779 * "ADS"."Feature_69" + -0.07893460417259443 * "ADS"."Feature_70" + 0.03574400724830226 * "ADS"."Feature_71" + -0.09504628679116951 * "ADS"."Feature_72" + 0.12228901341292688 * "ADS"."Feature_73" + -0.10861605900305678 * "ADS"."Feature_74" + -0.001055708184979359 * "ADS"."Feature_75" + -0.30230558623843334 * "ADS"."Feature_76" + -0.11839717456164955 * "ADS"."Feature_77" + -0.04686044816317647 * "ADS"."Feature_78" + -0.03748613056834666 * "ADS"."Feature_79" + -0.001655323833093637 * "ADS"."Feature_80" + -0.3888935998169069 * "ADS"."Feature_81" + 0.0386945108372386 * "ADS"."Feature_82" + -0.1582999838225576 * "ADS"."Feature_83" + 0.09748340565590155 * "ADS"."Feature_84" + 0.023919137716120805 * "ADS"."Feature_85" + 0.065616092395705 * "ADS"."Feature_86" + 0.034663591928402994 * "ADS"."Feature_87" + 0.10452153776014397 * "ADS"."Feature_88" + -0.06173936757971848 * "ADS"."Feature_89" + 0.048621090999724295 * "ADS"."Feature_90" + 0.02720463870030573 * "ADS"."Feature_91" + -0.028738963402121617 * "ADS"."Feature_92" + -0.013822277741421736 * "ADS"."Feature_93" + -0.19053958638578167 * "ADS"."Feature_94" + 0.16420579369104302 * "ADS"."Feature_95" + -0.029712229434529645 * "ADS"."Feature_96" + 0.09842075488424487 * "ADS"."Feature_97" + -0.13863284179390103 * "ADS"."Feature_98" + -0.10504055927615634 * "ADS"."Feature_99" + -2.48851545832 AS "Score_0", 0.08636187067053981 * "ADS"."Feature_0" + 0.015207285632706657 * "ADS"."Feature_1" + 0.05102808193968223 * "ADS"."Feature_2" + -0.14920899140431543 * "ADS"."Feature_3" + -0.07169353965328577 * "ADS"."Feature_4" + -0.006035036592175189 * "ADS"."Feature_5" + 0.2233884592851014 * "ADS"."Feature_6" + 0.013850333416269265 * "ADS"."Feature_7" + 0.012618481743164966 * "ADS"."Feature_8" + -0.02850267126926974 * "ADS"."Feature_9" + 0.03563081608891778 * "ADS"."Feature_10" + -0.06202981492837348 * "ADS"."Feature_11" + 0.10888506183334513 * "ADS"."Feature_12" + 0.12449351956925774 * "ADS"."Feature_13" + -0.22409089986816513 * "ADS"."Feature_14" + -0.06119429777835994 * "ADS"."Feature_15" + -0.04100377277446825 * "ADS"."Feature_16" + -0.02173588623510549 * "ADS"."Feature_17" + 0.19022229567717525 * "ADS"."Feature_18" + -0.017050210689270123 * "ADS"."Feature_19" + 0.06272034633305672 * "ADS"."Feature_20" + 0.01412604081793827 * "ADS"."Feature_21" + 0.10055273412657083 * "ADS"."Feature_22" + -0.1336338828602044 * "ADS"."Feature_23" + 0.05183185173681349 * "ADS"."Feature_24" + -0.06004561424834863 * "ADS"."Feature_25" + 0.02561654779485044 * "ADS"."Feature_26" + 0.18283595387971638 * "ADS"."Feature_27" + 0.028631726355798835 * "ADS"."Feature_28" + 0.044905612148176455 * "ADS"."Feature_29" + 0.04750306158163383 * "ADS"."Feature_30" + 0.12088338433462975 * "ADS"."Feature_31" + -0.08114077071381079 * "ADS"."Feature_32" + -0.17235654183439295 * "ADS"."Feature_33" + -0.026481250199169044 * "ADS"."Feature_34" + -0.0024346489942771794 * "ADS"."Feature_35" + 0.03308796485152507 * "ADS"."Feature_36" + -0.05078382330085994 * "ADS"."Feature_37" + 0.08786078398940175 * "ADS"."Feature_38" + 0.05025743295662366 * "ADS"."Feature_39" + -0.15714543334402784 * "ADS"."Feature_40" + 0.005607231983334793 * "ADS"."Feature_41" + -0.08805934958418836 * "ADS"."Feature_42" + 0.14200397458303474 * "ADS"."Feature_43" + 0.2361488980997523 * "ADS"."Feature_44" + -0.05014967198959064 * "ADS"."Feature_45" + 0.027424893516240563 * "ADS"."Feature_46" + -0.027012912827357596 * "ADS"."Feature_47" + -0.04800730654895845 * "ADS"."Feature_48" + 0.06158992487960923 * "ADS"."Feature_49" + 0.04874178531005422 * "ADS"."Feature_50" + -0.054857518173879176 * "ADS"."Feature_51" + 0.09148837122732505 * "ADS"."Feature_52" + 0.04413957246486334 * "ADS"."Feature_53" + 0.0216859429344661 * "ADS"."Feature_54" + -0.097513859532829 * "ADS"."Feature_55" + 0.08445214142183406 * "ADS"."Feature_56" + -0.05163293258002552 * "ADS"."Feature_57" + -0.18544658468528322 * "ADS"."Feature_58" + 0.26770824652325653 * "ADS"."Feature_59" + -0.16714440829378968 * "ADS"."Feature_60" + 0.03246256923786942 * "ADS"."Feature_61" + -0.022360353554568915 * "ADS"."Feature_62" + 0.10772556036300411 * "ADS"."Feature_63" + -0.12513177789321314 * "ADS"."Feature_64" + -0.19550022523835983 * "ADS"."Feature_65" + -0.0626683486782814 * "ADS"."Feature_66" + 0.07782994161750353 * "ADS"."Feature_67" + -0.05693547535578617 * "ADS"."Feature_68" + -0.061069536959545825 * "ADS"."Feature_69" + 0.02429150008258097 * "ADS"."Feature_70" + -0.05605515933613536 * "ADS"."Feature_71" + -0.061975778215037663 * "ADS"."Feature_72" + -0.015564113126147297 * "ADS"."Feature_73" + 0.03784480339115556 * "ADS"."Feature_74" + -0.16629153842064384 * "ADS"."Feature_75" + 0.04079942412894425 * "ADS"."Feature_76" + -0.027353386215269358 * "ADS"."Feature_77" + 0.04612537125544009 * "ADS"."Feature_78" + 0.03743698988464717 * "ADS"."Feature_79" + -0.18395739330127214 * "ADS"."Feature_80" + 0.032351095222268825 * "ADS"."Feature_81" + -0.3592881295978532 * "ADS"."Feature_82" + 0.037275054810833264 * "ADS"."Feature_83" + 0.08296773065024227 * "ADS"."Feature_84" + -0.06523776091096153 * "ADS"."Feature_85" + 0.1122139943041084 * "ADS"."Feature_86" + 0.013638010519195226 * "ADS"."Feature_87" + -0.2551565014265391 * "ADS"."Feature_88" + 0.029805315899024843 * "ADS"."Feature_89" + 0.0016742763829116188 * "ADS"."Feature_90" + 0.08142918557511089 * "ADS"."Feature_91" + -0.1163557586705569 * "ADS"."Feature_92" + -0.007133751345673101 * "ADS"."Feature_93" + -0.02156755629922634 * "ADS"."Feature_94" + -0.032992311544937224 * "ADS"."Feature_95" + 0.037811372443517816 * "ADS"."Feature_96" + 0.1531741932373963 * "ADS"."Feature_97" + 0.022818824823751006 * "ADS"."Feature_98" + 0.08204890818217274 * "ADS"."Feature_99" + -2.04046727738 AS "Score_1", -0.0444061001313851 * "ADS"."Feature_0" + 0.02042880722221934 * "ADS"."Feature_1" + 0.12231462091423796 * "ADS"."Feature_2" + 0.2289406289384925 * "ADS"."Feature_3" + 0.1102914564921753 * "ADS"."Feature_4" + 0.19833623782830326 * "ADS"."Feature_5" + 0.04039006696896128 * "ADS"."Feature_6" + 0.13562298252437718 * "ADS"."Feature_7" + 0.045059702617908926 * "ADS"."Feature_8" + 0.08379616022946998 * "ADS"."Feature_9" + -0.03573460438191085 * "ADS"."Feature_10" + 0.014296312169052404 * "ADS"."Feature_11" + -0.21190971255423524 * "ADS"."Feature_12" + -0.07217790028609797 * "ADS"."Feature_13" + -0.05221729492472059 * "ADS"."Feature_14" + -0.17929418670995556 * "ADS"."Feature_15" + 0.04867794404646204 * "ADS"."Feature_16" + 0.07703443862413217 * "ADS"."Feature_17" + 0.10323482089915383 * "ADS"."Feature_18" + -0.017979249883412048 * "ADS"."Feature_19" + -0.03253848792558763 * "ADS"."Feature_20" + 0.004818071799297526 * "ADS"."Feature_21" + -0.11890152116766602 * "ADS"."Feature_22" + 0.03155281920120933 * "ADS"."Feature_23" + 0.014962996959657797 * "ADS"."Feature_24" + 0.04917140955274684 * "ADS"."Feature_25" + 0.055740117586431666 * "ADS"."Feature_26" + -0.08181632530937628 * "ADS"."Feature_27" + -0.04623262232380777 * "ADS"."Feature_28" + 0.012396307719137063 * "ADS"."Feature_29" + 0.012449834465933953 * "ADS"."Feature_30" + -0.028107419774990615 * "ADS"."Feature_31" + 0.05136963782686074 * "ADS"."Feature_32" + 0.12848080198555917 * "ADS"."Feature_33" + -0.11364067546475566 * "ADS"."Feature_34" + -0.21099456280617782 * "ADS"."Feature_35" + 0.06594258885570625 * "ADS"."Feature_36" + 0.060730233950724966 * "ADS"."Feature_37" + 0.2229656822076276 * "ADS"."Feature_38" + -0.1494458076444838 * "ADS"."Feature_39" + -0.03562993607023708 * "ADS"."Feature_40" + -0.00930480895946441 * "ADS"."Feature_41" + 0.05425454850855224 * "ADS"."Feature_42" + 0.02853669972041641 * "ADS"."Feature_43" + -0.1426995588979409 * "ADS"."Feature_44" + -0.04749354127151101 * "ADS"."Feature_45" + -0.0035991751827635556 * "ADS"."Feature_46" + -0.06132834009947652 * "ADS"."Feature_47" + 0.11136703291574422 * "ADS"."Feature_48" + 0.11690502110160175 * "ADS"."Feature_49" + 0.02962090108037358 * "ADS"."Feature_50" + -0.12725687667195362 * "ADS"."Feature_51" + -0.13856349585220173 * "ADS"."Feature_52" + 0.061602406018725374 * "ADS"."Feature_53" + -0.04454079498956287 * "ADS"."Feature_54" + 0.07949947467895471 * "ADS"."Feature_55" + 0.09131377095461801 * "ADS"."Feature_56" + 0.081713414285633 * "ADS"."Feature_57" + -0.03639254480507324 * "ADS"."Feature_58" + -0.3482121719498825 * "ADS"."Feature_59" + 0.0679374769419208 * "ADS"."Feature_60" + -0.15268708402059739 * "ADS"."Feature_61" + 0.013277998491658585 * "ADS"."Feature_62" + -0.08452842940009045 * "ADS"."Feature_63" + 0.10031572331466686 * "ADS"."Feature_64" + 0.24434148060564723 * "ADS"."Feature_65" + 0.1667158876242666 * "ADS"."Feature_66" + 0.2537165705575678 * "ADS"."Feature_67" + 0.08211542743218803 * "ADS"."Feature_68" + 0.008269517648395001 * "ADS"."Feature_69" + -0.02215842413899553 * "ADS"."Feature_70" + -0.06508152619726551 * "ADS"."Feature_71" + 0.04715376999235241 * "ADS"."Feature_72" + 0.021613807996782378 * "ADS"."Feature_73" + -0.06052932929329856 * "ADS"."Feature_74" + -0.050419795731798236 * "ADS"."Feature_75" + 0.0695360090803855 * "ADS"."Feature_76" + 0.040364221108363074 * "ADS"."Feature_77" + -0.003939173567576256 * "ADS"."Feature_78" + -0.10210987821593792 * "ADS"."Feature_79" + 0.08443515296427594 * "ADS"."Feature_80" + 0.2986961866153869 * "ADS"."Feature_81" + 0.16453347488966943 * "ADS"."Feature_82" + -0.13645604996972818 * "ADS"."Feature_83" + 0.023876100436702574 * "ADS"."Feature_84" + 0.07485058011997939 * "ADS"."Feature_85" + -0.1319298042410999 * "ADS"."Feature_86" + 0.001560974600379101 * "ADS"."Feature_87" + 0.2370845468744639 * "ADS"."Feature_88" + -0.08743287927251892 * "ADS"."Feature_89" + -0.013146556798009522 * "ADS"."Feature_90" + -0.08343216259331251 * "ADS"."Feature_91" + 0.045915681570425915 * "ADS"."Feature_92" + 0.004591399979909068 * "ADS"."Feature_93" + 0.15126518612683082 * "ADS"."Feature_94" + 0.002611050713356861 * "ADS"."Feature_95" + -0.10645895639414095 * "ADS"."Feature_96" + 0.29110865821775 * "ADS"."Feature_97" + -0.012798167770682302 * "ADS"."Feature_98" + 0.0485975106400068 * "ADS"."Feature_99" + -2.25930655251 AS "Score_2", 0.11192915292440307 * "ADS"."Feature_0" + -0.03646992272557237 * "ADS"."Feature_1" + -0.06386459757546618 * "ADS"."Feature_2" + 0.014041711785161075 * "ADS"."Feature_3" + -0.07591459776160586 * "ADS"."Feature_4" + 0.1124638207297907 * "ADS"."Feature_5" + -0.27285518681973747 * "ADS"."Feature_6" + -0.04617723614442026 * "ADS"."Feature_7" + 0.08884397315472786 * "ADS"."Feature_8" + -0.07782479718076038 * "ADS"."Feature_9" + 0.13821966529502364 * "ADS"."Feature_10" + 0.13757571248462125 * "ADS"."Feature_11" + 0.06674599577417466 * "ADS"."Feature_12" + 0.010013350861264673 * "ADS"."Feature_13" + 0.19608838010563 * "ADS"."Feature_14" + 0.13215586873339086 * "ADS"."Feature_15" + -0.08629246186577798 * "ADS"."Feature_16" + 0.14803503016733005 * "ADS"."Feature_17" + -0.10514045969584453 * "ADS"."Feature_18" + -0.27398582525341036 * "ADS"."Feature_19" + -0.08978997959794269 * "ADS"."Feature_20" + 0.021740382012542022 * "ADS"."Feature_21" + -0.11615061397406898 * "ADS"."Feature_22" + 0.3311788216469211 * "ADS"."Feature_23" + -0.034575055976692824 * "ADS"."Feature_24" + -0.097295759782916 * "ADS"."Feature_25" + -0.0912929833201835 * "ADS"."Feature_26" + 0.023807938157172238 * "ADS"."Feature_27" + -0.04696153341237263 * "ADS"."Feature_28" + -0.11685557056399544 * "ADS"."Feature_29" + -0.09381035971900328 * "ADS"."Feature_30" + -0.05012236262838553 * "ADS"."Feature_31" + 0.022827311199968767 * "ADS"."Feature_32" + 0.1017972798782116 * "ADS"."Feature_33" + -0.07699533258212263 * "ADS"."Feature_34" + 0.021075612619178875 * "ADS"."Feature_35" + -0.0834061088789303 * "ADS"."Feature_36" + 0.044586802421929764 * "ADS"."Feature_37" + -0.1987390719034322 * "ADS"."Feature_38" + 0.0740903436680403 * "ADS"."Feature_39" + 0.05448988920295951 * "ADS"."Feature_40" + 0.10949507929529186 * "ADS"."Feature_41" + 0.030323983953133328 * "ADS"."Feature_42" + -0.16843132377161915 * "ADS"."Feature_43" + -0.03945367961048615 * "ADS"."Feature_44" + 0.0636676983409731 * "ADS"."Feature_45" + -0.02428739070431618 * "ADS"."Feature_46" + -0.014753018638541376 * "ADS"."Feature_47" + 0.04325525822219483 * "ADS"."Feature_48" + -0.22050074323186192 * "ADS"."Feature_49" + -0.08214381176441148 * "ADS"."Feature_50" + -0.010661063482866126 * "ADS"."Feature_51" + -0.08650347429919862 * "ADS"."Feature_52" + -0.057438735465849 * "ADS"."Feature_53" + -0.02488882925554066 * "ADS"."Feature_54" + 0.06091979987958594 * "ADS"."Feature_55" + -0.08552797823789544 * "ADS"."Feature_56" + -0.016643313450374876 * "ADS"."Feature_57" + 0.12402853574673879 * "ADS"."Feature_58" + 0.2812257123811945 * "ADS"."Feature_59" + 0.1462136103755325 * "ADS"."Feature_60" + 0.13500736042688213 * "ADS"."Feature_61" + 0.013258992734705783 * "ADS"."Feature_62" + 0.15690866627813038 * "ADS"."Feature_63" + 0.10403544758663225 * "ADS"."Feature_64" + 0.03996317630604553 * "ADS"."Feature_65" + -0.049974230521073755 * "ADS"."Feature_66" + -0.3118184197430701 * "ADS"."Feature_67" + 0.12138301506390507 * "ADS"."Feature_68" + -0.022532805428234763 * "ADS"."Feature_69" + 0.0007511232928908637 * "ADS"."Feature_70" + 0.08487304670655711 * "ADS"."Feature_71" + 0.06397145781116947 * "ADS"."Feature_72" + -0.1469992611322243 * "ADS"."Feature_73" + 0.14738919702921882 * "ADS"."Feature_74" + 0.22432432593150406 * "ADS"."Feature_75" + 0.07766444265439247 * "ADS"."Feature_76" + 0.027110985274574853 * "ADS"."Feature_77" + -0.08118696775430254 * "ADS"."Feature_78" + 0.0598930325979078 * "ADS"."Feature_79" + -0.12240391054825102 * "ADS"."Feature_80" + 0.09483795607892882 * "ADS"."Feature_81" + 0.21221248474908144 * "ADS"."Feature_82" + 0.19935549214108775 * "ADS"."Feature_83" + -0.1856334361770093 * "ADS"."Feature_84" + -0.06243298792729811 * "ADS"."Feature_85" + -0.01532729372720955 * "ADS"."Feature_86" + -0.05128320249901351 * "ADS"."Feature_87" + -0.07897973442660815 * "ADS"."Feature_88" + 0.11790134445031208 * "ADS"."Feature_89" + -0.032783839714724816 * "ADS"."Feature_90" + -0.018981185924895942 * "ADS"."Feature_91" + 0.0656001289663266 * "ADS"."Feature_92" + 0.016601497069866255 * "ADS"."Feature_93" + -0.0477927246281142 * "ADS"."Feature_94" + -0.05923955901794848 * "ADS"."Feature_95" + 0.19978232373157842 * "ADS"."Feature_96" + -0.3873210228916314 * "ADS"."Feature_97" + 0.2002795191112081 * "ADS"."Feature_98" + -0.0697781846107548 * "ADS"."Feature_99" + -2.04804472968 AS "Score_3" 
FROM "FourClass_100" "ADS"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3", (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END END))) / (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_3" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_3" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_3" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_3" END END))) AS "Proba_0", (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END END))) / (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_3" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_3" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_3" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_3" END END))) AS "Proba_1", (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END END))) / (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_3" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_3" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_3" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_3" END END))) AS "Proba_2", (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_3" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_3" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_3" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_3" END END))) / (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_0" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_0" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_1" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_1" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_2" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_2" END END)) + 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte."Score_3" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_3" END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte."Score_3" <= -100.0) THEN -100.0 ELSE -linear_model_cte."Score_3" END END))) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_3", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte