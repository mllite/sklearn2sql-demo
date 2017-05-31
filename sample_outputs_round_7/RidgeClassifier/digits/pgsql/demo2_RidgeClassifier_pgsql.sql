-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.0 * "ADS"."Feature_0" + 0.05264849855737803 * "ADS"."Feature_1" + 0.0025679356495289974 * "ADS"."Feature_2" + 0.007969719518023801 * "ADS"."Feature_3" + -0.01183614813996091 * "ADS"."Feature_4" + -0.011597075757330254 * "ADS"."Feature_5" + 0.0051401435140463565 * "ADS"."Feature_6" + 0.02584409312528515 * "ADS"."Feature_7" + 0.07908137918317115 * "ADS"."Feature_8" + -0.010307615187109865 * "ADS"."Feature_9" + -0.00016013194645321402 * "ADS"."Feature_10" + -0.004526603900194206 * "ADS"."Feature_11" + 0.014030283798336004 * "ADS"."Feature_12" + 0.01698441616136094 * "ADS"."Feature_13" + -0.005935013229733422 * "ADS"."Feature_14" + -0.0505019191972086 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 0.011623916994716287 * "ADS"."Feature_17" + 0.0007772548259839564 * "ADS"."Feature_18" + 0.00441669961568319 * "ADS"."Feature_19" + -0.0033869367752426033 * "ADS"."Feature_20" + 0.016809654896540304 * "ADS"."Feature_21" + -0.002543765099029647 * "ADS"."Feature_22" + 0.059810056495992345 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + 0.018898024095513492 * "ADS"."Feature_25" + -0.0031227750353051845 * "ADS"."Feature_26" + -0.00355186528461162 * "ADS"."Feature_27" + -0.023952670379382715 * "ADS"."Feature_28" + -0.010553414189949486 * "ADS"."Feature_29" + 0.022294440375868363 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 0.0058255111007514335 * "ADS"."Feature_33" + 0.010312483627304496 * "ADS"."Feature_34" + -0.018161043240859875 * "ADS"."Feature_35" + -0.003826302267715648 * "ADS"."Feature_36" + -0.01241892220273521 * "ADS"."Feature_37" + 0.013436179994898673 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.03924268226698531 * "ADS"."Feature_40" + -0.015326354807283681 * "ADS"."Feature_41" + 0.015288664499709741 * "ADS"."Feature_42" + -0.012446095965858526 * "ADS"."Feature_43" + -0.02194285008045411 * "ADS"."Feature_44" + 0.005949517060123798 * "ADS"."Feature_45" + 0.014507439152048968 * "ADS"."Feature_46" + -0.024253182051380436 * "ADS"."Feature_47" + 0.027050700525087026 * "ADS"."Feature_48" + -0.018020792868070887 * "ADS"."Feature_49" + 0.0037669237795159025 * "ADS"."Feature_50" + 0.014005740243959558 * "ADS"."Feature_51" + 0.018095614590654924 * "ADS"."Feature_52" + 0.0020385452767705775 * "ADS"."Feature_53" + -0.024476148462153905 * "ADS"."Feature_54" + 0.023878537131264116 * "ADS"."Feature_55" + -0.023650420308619496 * "ADS"."Feature_56" + -0.013838891112045669 * "ADS"."Feature_57" + -0.01076510238407458 * "ADS"."Feature_58" + 0.005590897963663665 * "ADS"."Feature_59" + -0.005670420871014544 * "ADS"."Feature_60" + -0.0049028292403634315 * "ADS"."Feature_61" + 0.006711653268624953 * "ADS"."Feature_62" + -0.004841446299606789 * "ADS"."Feature_63" + -0.709028369673 AS "Score_0", 0.0 * "ADS"."Feature_0" + 0.028760246747509474 * "ADS"."Feature_1" + 0.012180404503502013 * "ADS"."Feature_2" + 0.014167909916306577 * "ADS"."Feature_3" + -0.030156894737848796 * "ADS"."Feature_4" + 0.018639586248601108 * "ADS"."Feature_5" + -0.00024407054121748377 * "ADS"."Feature_6" + 0.03824134225984867 * "ADS"."Feature_7" + -0.005075904095061403 * "ADS"."Feature_8" + -0.0023875834064194775 * "ADS"."Feature_9" + -0.027863680659558895 * "ADS"."Feature_10" + -0.006613289033802201 * "ADS"."Feature_11" + 0.0031955018885504293 * "ADS"."Feature_12" + 0.02708506115540997 * "ADS"."Feature_13" + -0.021193353642748766 * "ADS"."Feature_14" + -0.08843511615705335 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + -0.011372678177283378 * "ADS"."Feature_17" + -0.0022761442437734844 * "ADS"."Feature_18" + 0.028740702096900096 * "ADS"."Feature_19" + 0.023381932052165127 * "ADS"."Feature_20" + -0.01643281879588356 * "ADS"."Feature_21" + 0.005832082078173133 * "ADS"."Feature_22" + 0.02296901033315517 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + 0.03237809285470345 * "ADS"."Feature_25" + 0.003930634730343986 * "ADS"."Feature_26" + 0.015020557620135513 * "ADS"."Feature_27" + 0.0004848896552781157 * "ADS"."Feature_28" + -0.0014755509138208189 * "ADS"."Feature_29" + -0.005074693507226908 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 0.006146548017072637 * "ADS"."Feature_33" + -0.00041274335638309434 * "ADS"."Feature_34" + -0.0021547007543369543 * "ADS"."Feature_35" + 0.005123599476591644 * "ADS"."Feature_36" + -0.008404851115030136 * "ADS"."Feature_37" + 0.01232668006731412 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.08709453879696666 * "ADS"."Feature_40" + -0.03686129262866725 * "ADS"."Feature_41" + -0.006551167718835543 * "ADS"."Feature_42" + -0.003974090557037144 * "ADS"."Feature_43" + 0.00892015563451733 * "ADS"."Feature_44" + -0.015083037909953391 * "ADS"."Feature_45" + 0.005244361815544505 * "ADS"."Feature_46" + -0.0736652217837051 * "ADS"."Feature_47" + -0.12137795017644984 * "ADS"."Feature_48" + -0.007855625286538569 * "ADS"."Feature_49" + 0.0046102439901300135 * "ADS"."Feature_50" + 0.009842587462071214 * "ADS"."Feature_51" + 0.011002987073331054 * "ADS"."Feature_52" + -0.00828046644342639 * "ADS"."Feature_53" + -0.02206669954687486 * "ADS"."Feature_54" + 0.05183442230254392 * "ADS"."Feature_55" + -0.02451666660486274 * "ADS"."Feature_56" + -0.026590660138316832 * "ADS"."Feature_57" + -0.0348930248434274 * "ADS"."Feature_58" + -0.0006832702814406411 * "ADS"."Feature_59" + 0.010062986898381629 * "ADS"."Feature_60" + 0.02009837651598674 * "ADS"."Feature_61" + -0.01077034598236594 * "ADS"."Feature_62" + 0.013681374117011683 * "ADS"."Feature_63" + -0.985810527027 AS "Score_1", 0.0 * "ADS"."Feature_0" + -0.06240007974837444 * "ADS"."Feature_1" + -0.0015344456233855976 * "ADS"."Feature_2" + -0.010084173557090629 * "ADS"."Feature_3" + 0.0007497492673096723 * "ADS"."Feature_4" + -0.0013111992581233709 * "ADS"."Feature_5" + 0.004851136603560629 * "ADS"."Feature_6" + -0.023363213786140348 * "ADS"."Feature_7" + 0.14463878308051123 * "ADS"."Feature_8" + 0.011122851923163328 * "ADS"."Feature_9" + 0.004767486903629462 * "ADS"."Feature_10" + -0.006478122261946545 * "ADS"."Feature_11" + 0.016821386100529075 * "ADS"."Feature_12" + -0.015138746825760191 * "ADS"."Feature_13" + -0.005761333263476336 * "ADS"."Feature_14" + -0.00746634329727561 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 0.0062622377974721165 * "ADS"."Feature_17" + 0.0013593883808685299 * "ADS"."Feature_18" + -0.017684723479151294 * "ADS"."Feature_19" + -0.004790200871243692 * "ADS"."Feature_20" + 0.00019614634209703737 * "ADS"."Feature_21" + 0.021465331540428473 * "ADS"."Feature_22" + 0.060937965993503616 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -0.002617994078150227 * "ADS"."Feature_25" + -0.013872674840983614 * "ADS"."Feature_26" + -0.019944477961721985 * "ADS"."Feature_27" + 0.008926343151637591 * "ADS"."Feature_28" + 0.008063304475607455 * "ADS"."Feature_29" + -0.0147073301614685 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 0.010733056943514918 * "ADS"."Feature_33" + -0.008502323529847904 * "ADS"."Feature_34" + -0.012001865083432747 * "ADS"."Feature_35" + -0.0021929855307323883 * "ADS"."Feature_36" + 0.0013927991690858303 * "ADS"."Feature_37" + -0.018094058902684763 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + -0.21399987664577058 * "ADS"."Feature_40" + 0.0018202408687853866 * "ADS"."Feature_41" + 0.00363947737055188 * "ADS"."Feature_42" + 0.04026722600673031 * "ADS"."Feature_43" + -0.03688355904730692 * "ADS"."Feature_44" + -0.03158668542085309 * "ADS"."Feature_45" + -0.05121065318676124 * "ADS"."Feature_46" + 0.23383035006390654 * "ADS"."Feature_47" + -0.052819559661953314 * "ADS"."Feature_48" + 0.04252634967191914 * "ADS"."Feature_49" + -0.004534956257124963 * "ADS"."Feature_50" + 0.0003163511420894662 * "ADS"."Feature_51" + 0.04671156722965874 * "ADS"."Feature_52" + 0.024992474681976025 * "ADS"."Feature_53" + 0.038923809992483384 * "ADS"."Feature_54" + -0.049216985276972464 * "ADS"."Feature_55" + 0.026294570479367212 * "ADS"."Feature_56" + 0.06113624095459438 * "ADS"."Feature_57" + 0.004003751420871299 * "ADS"."Feature_58" + 0.0087318688455219 * "ADS"."Feature_59" + -0.008428300995364957 * "ADS"."Feature_60" + 0.01400171105167864 * "ADS"."Feature_61" + 0.011297598990125871 * "ADS"."Feature_62" + 0.03159453462610656 * "ADS"."Feature_63" + -0.772846387593 AS "Score_2", 0.0 * "ADS"."Feature_0" + 0.02847062845313866 * "ADS"."Feature_1" + -0.0012056805325963381 * "ADS"."Feature_2" + 0.01662790158989387 * "ADS"."Feature_3" + 0.010463618124358462 * "ADS"."Feature_4" + 0.008865608965029003 * "ADS"."Feature_5" + -0.02055428716064091 * "ADS"."Feature_6" + 0.010708590101360391 * "ADS"."Feature_7" + -0.44485696278072495 * "ADS"."Feature_8" + 0.022381035675376814 * "ADS"."Feature_9" + -0.007757620882382149 * "ADS"."Feature_10" + 0.013188526594405899 * "ADS"."Feature_11" + -0.014319781631425594 * "ADS"."Feature_12" + 0.01394967073946925 * "ADS"."Feature_13" + 0.014184904811378624 * "ADS"."Feature_14" + -0.006029460066201444 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + -0.019244881373117056 * "ADS"."Feature_17" + -0.02202646043543358 * "ADS"."Feature_18" + -0.01618864749606915 * "ADS"."Feature_19" + 0.025350625371716992 * "ADS"."Feature_20" + 0.0016712631638200483 * "ADS"."Feature_21" + 0.004135085595592366 * "ADS"."Feature_22" + -0.02035329061060578 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -0.01664683140422747 * "ADS"."Feature_25" + -0.0027283799377817 * "ADS"."Feature_26" + -0.00459943195773997 * "ADS"."Feature_27" + -0.00410835300405738 * "ADS"."Feature_28" + -0.02173908154150697 * "ADS"."Feature_29" + -0.004252927430047848 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 0.018312558363524502 * "ADS"."Feature_33" + 0.0029534390560199595 * "ADS"."Feature_34" + -0.007939941402060184 * "ADS"."Feature_35" + 0.008545920051710641 * "ADS"."Feature_36" + 0.0016987867669073318 * "ADS"."Feature_37" + -0.030041276827411798 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.02048409809129754 * "ADS"."Feature_40" + 0.010917174240686571 * "ADS"."Feature_41" + -0.0099283649865909 * "ADS"."Feature_42" + -0.014724449201491185 * "ADS"."Feature_43" + 0.0009995299766992526 * "ADS"."Feature_44" + 0.02177822902290759 * "ADS"."Feature_45" + 0.04162390606730183 * "ADS"."Feature_46" + -0.13239726373910415 * "ADS"."Feature_47" + 0.1442049810415083 * "ADS"."Feature_48" + -0.015345187744703379 * "ADS"."Feature_49" + -0.013088739446181944 * "ADS"."Feature_50" + -0.005992907949015492 * "ADS"."Feature_51" + 0.005248719279959441 * "ADS"."Feature_52" + -0.010989439935571334 * "ADS"."Feature_53" + -0.004784852796039851 * "ADS"."Feature_54" + -0.005294269842185151 * "ADS"."Feature_55" + 0.04263319817894882 * "ADS"."Feature_56" + 0.018029250180465157 * "ADS"."Feature_57" + 0.016643566873875585 * "ADS"."Feature_58" + 0.013045901672616706 * "ADS"."Feature_59" + 0.014088074720434125 * "ADS"."Feature_60" + 0.005141063347960332 * "ADS"."Feature_61" + -0.005007372124616243 * "ADS"."Feature_62" + -0.017520682360457486 * "ADS"."Feature_63" + -1.14737378884 AS "Score_3", 0.0 * "ADS"."Feature_0" + -0.0502194346370222 * "ADS"."Feature_1" + -0.004679681696561593 * "ADS"."Feature_2" + -0.02656403893857642 * "ADS"."Feature_3" + 0.01092528190714269 * "ADS"."Feature_4" + -0.02082849490793138 * "ADS"."Feature_5" + -0.01636783667541375 * "ADS"."Feature_6" + 0.027577452576345838 * "ADS"."Feature_7" + -0.000709680644935544 * "ADS"."Feature_8" + 0.019011489007730264 * "ADS"."Feature_9" + -0.003519840582993406 * "ADS"."Feature_10" + -0.004508758161436846 * "ADS"."Feature_11" + -0.013538696081812997 * "ADS"."Feature_12" + -0.01578379963095938 * "ADS"."Feature_13" + -0.0032443061460012 * "ADS"."Feature_14" + -0.037278515491253966 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 0.006956841298648789 * "ADS"."Feature_17" + 0.004124581427338554 * "ADS"."Feature_18" + 0.0023453501488661607 * "ADS"."Feature_19" + -0.0013063270475155361 * "ADS"."Feature_20" + 0.010825826975982491 * "ADS"."Feature_21" + 0.0021567248143039438 * "ADS"."Feature_22" + 0.07541326941507655 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -0.017135804889109225 * "ADS"."Feature_25" + 0.005335157650807006 * "ADS"."Feature_26" + -0.0016433635577320464 * "ADS"."Feature_27" + 0.011146419406067276 * "ADS"."Feature_28" + -0.006185428574294213 * "ADS"."Feature_29" + 0.01336510398473497 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 0.046409206098691695 * "ADS"."Feature_33" + 0.004220633152560646 * "ADS"."Feature_34" + -0.0038722748781189484 * "ADS"."Feature_35" + 0.0036182922381359224 * "ADS"."Feature_36" + 0.016854888426764754 * "ADS"."Feature_37" + 0.0036064492545279125 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + -0.018240480417906324 * "ADS"."Feature_40" + 0.04301794650194727 * "ADS"."Feature_41" + -0.015738114854084943 * "ADS"."Feature_42" + 0.022474235160903522 * "ADS"."Feature_43" + 0.0046303229642906665 * "ADS"."Feature_44" + 0.009324316195142351 * "ADS"."Feature_45" + -0.011434491133613075 * "ADS"."Feature_46" + -0.10097420716294606 * "ADS"."Feature_47" + -0.2068766832972326 * "ADS"."Feature_48" + 0.033959703685758146 * "ADS"."Feature_49" + -0.012729137002369743 * "ADS"."Feature_50" + -0.005011561547830945 * "ADS"."Feature_51" + 0.004961316846319338 * "ADS"."Feature_52" + -0.014930675956608807 * "ADS"."Feature_53" + 0.002652174386115883 * "ADS"."Feature_54" + 0.0027502785981631237 * "ADS"."Feature_55" + -0.03969172181942235 * "ADS"."Feature_56" + 0.026230149321694908 * "ADS"."Feature_57" + 0.01348267240652405 * "ADS"."Feature_58" + 0.002481317575281705 * "ADS"."Feature_59" + 0.017774122417532828 * "ADS"."Feature_60" + -0.01717861298365215 * "ADS"."Feature_61" + -0.0005856807876150023 * "ADS"."Feature_62" + 0.001248014650037047 * "ADS"."Feature_63" + -0.86109700186 AS "Score_4", 0.0 * "ADS"."Feature_0" + -0.02257983575761625 * "ADS"."Feature_1" + 0.022296071554809317 * "ADS"."Feature_2" + -0.011837729466164508 * "ADS"."Feature_3" + 0.01441350113296519 * "ADS"."Feature_4" + 0.017365197428632167 * "ADS"."Feature_5" + 0.02305732070865881 * "ADS"."Feature_6" + -0.06943334789683858 * "ADS"."Feature_7" + 0.09709905835864725 * "ADS"."Feature_8" + -0.009494558943996425 * "ADS"."Feature_9" + -0.004318860901868762 * "ADS"."Feature_10" + 0.0012968845261642778 * "ADS"."Feature_11" + 0.016694555985235456 * "ADS"."Feature_12" + -0.0070881959182663695 * "ADS"."Feature_13" + -0.00903850222798273 * "ADS"."Feature_14" + 0.033280063606874126 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 0.006264986454728257 * "ADS"."Feature_17" + 0.010514973703122736 * "ADS"."Feature_18" + -0.006166480076884447 * "ADS"."Feature_19" + -0.03401511751275823 * "ADS"."Feature_20" + -0.035241975322293104 * "ADS"."Feature_21" + -0.02396328073210079 * "ADS"."Feature_22" + -0.0224524391329981 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + 0.01936583963173042 * "ADS"."Feature_25" + -0.0020757737860454314 * "ADS"."Feature_26" + 0.013490331371613573 * "ADS"."Feature_27" + 0.0063367386763053925 * "ADS"."Feature_28" + 0.006508202347938443 * "ADS"."Feature_29" + -0.022475425580523515 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -0.00395777384441581 * "ADS"."Feature_33" + 0.005028063238739144 * "ADS"."Feature_34" + -0.0029549609416255024 * "ADS"."Feature_35" + -0.00922724173980349 * "ADS"."Feature_36" + 0.0008470861787691361 * "ADS"."Feature_37" + -0.000268225545545048 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + -0.11542855538767469 * "ADS"."Feature_40" + -0.00022115468135014093 * "ADS"."Feature_41" + -0.01586217079685786 * "ADS"."Feature_42" + -0.006146952560966426 * "ADS"."Feature_43" + 0.0032534865743539913 * "ADS"."Feature_44" + 0.001060259938581955 * "ADS"."Feature_45" + 0.008706791123321168 * "ADS"."Feature_46" + -0.005764178746434028 * "ADS"."Feature_47" + -0.080376355123075 * "ADS"."Feature_48" + 0.01246034011720098 * "ADS"."Feature_49" + 0.010287874247483359 * "ADS"."Feature_50" + -0.007444463986317546 * "ADS"."Feature_51" + 0.00577130453822183 * "ADS"."Feature_52" + 0.0041753291805457 * "ADS"."Feature_53" + -0.024225343884201726 * "ADS"."Feature_54" + 0.015486188526034084 * "ADS"."Feature_55" + -0.04098673528219566 * "ADS"."Feature_56" + 0.007291723250694629 * "ADS"."Feature_57" + 0.006663850318434521 * "ADS"."Feature_58" + 0.012208404306851654 * "ADS"."Feature_59" + -0.01535198441924425 * "ADS"."Feature_60" + -0.0058901919060271556 * "ADS"."Feature_61" + 0.004749656216985726 * "ADS"."Feature_62" + -0.009417643175294471 * "ADS"."Feature_63" + -0.672902109456 AS "Score_5", 0.0 * "ADS"."Feature_0" + -0.010439423895364962 * "ADS"."Feature_1" + -0.029033811436820014 * "ADS"."Feature_2" + 0.010188779701495178 * "ADS"."Feature_3" + -0.00417495618784485 * "ADS"."Feature_4" + 0.0018345092193772924 * "ADS"."Feature_5" + -0.0012200726672714586 * "ADS"."Feature_6" + -0.022470707670215785 * "ADS"."Feature_7" + 0.006389896268886608 * "ADS"."Feature_8" + 0.0012444830961217599 * "ADS"."Feature_9" + -0.013245504144184411 * "ADS"."Feature_10" + 0.0028672655588213424 * "ADS"."Feature_11" + -0.01603864855797364 * "ADS"."Feature_12" + -0.0038783094482902616 * "ADS"."Feature_13" + 0.016496673959989848 * "ADS"."Feature_14" + 0.0012907729641142092 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + -0.021000660971773364 * "ADS"."Feature_17" + 0.004658660931927925 * "ADS"."Feature_18" + -0.006270237123985946 * "ADS"."Feature_19" + -0.0028103869255169827 * "ADS"."Feature_20" + -0.017901552339012954 * "ADS"."Feature_21" + -0.010065546851132947 * "ADS"."Feature_22" + 0.04686677329939167 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -0.004699517154429652 * "ADS"."Feature_25" + 0.005628577922528071 * "ADS"."Feature_26" + -0.003488032307404744 * "ADS"."Feature_27" + -0.015408040383157571 * "ADS"."Feature_28" + -0.004215060604598383 * "ADS"."Feature_29" + -0.008574484102078216 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -0.006916931562436687 * "ADS"."Feature_33" + 0.009072340228969545 * "ADS"."Feature_34" + -0.004070261763508865 * "ADS"."Feature_35" + 0.008853862397249982 * "ADS"."Feature_36" + 0.0039461242638007136 * "ADS"."Feature_37" + -0.003099939875741619 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.015720115577917422 * "ADS"."Feature_40" + -0.0382212255794078 * "ADS"."Feature_41" + 0.022311728403369275 * "ADS"."Feature_42" + -0.005513351569377161 * "ADS"."Feature_43" + 0.014651993825896633 * "ADS"."Feature_44" + -0.002772732667896155 * "ADS"."Feature_45" + 0.0234093197148785 * "ADS"."Feature_46" + 0.1746228477581703 * "ADS"."Feature_47" + 0.06627006626317765 * "ADS"."Feature_48" + -0.023143972155060786 * "ADS"."Feature_49" + 0.00732815987309936 * "ADS"."Feature_50" + 0.009939877678794461 * "ADS"."Feature_51" + -0.022681023995574198 * "ADS"."Feature_52" + 0.009968420249003433 * "ADS"."Feature_53" + 0.01989832211068589 * "ADS"."Feature_54" + -0.03516866311379618 * "ADS"."Feature_55" + 0.013756560657539432 * "ADS"."Feature_56" + 0.02289913152284477 * "ADS"."Feature_57" + 0.01581636898349483 * "ADS"."Feature_58" + -0.013715959175331298 * "ADS"."Feature_59" + 0.0005582661867517041 * "ADS"."Feature_60" + 0.006968077579723149 * "ADS"."Feature_61" + -0.0023851857066476607 * "ADS"."Feature_62" + -0.006947997065062972 * "ADS"."Feature_63" + -0.445046717482 AS "Score_6", 0.0 * "ADS"."Feature_0" + 0.07808244835508234 * "ADS"."Feature_1" + -0.001018824714129109 * "ADS"."Feature_2" + 0.014187068862494373 * "ADS"."Feature_3" + -0.006574168295085353 * "ADS"."Feature_4" + 0.015653118375221386 * "ADS"."Feature_5" + 0.01302818717773475 * "ADS"."Feature_6" + 0.07231344178246221 * "ADS"."Feature_7" + -0.01663188771904818 * "ADS"."Feature_8" + -0.008011188558531158 * "ADS"."Feature_9" + 0.02367207608219201 * "ADS"."Feature_10" + 0.008720206804906245 * "ADS"."Feature_11" + 0.0060484434971976656 * "ADS"."Feature_12" + -0.00019191838747162837 * "ADS"."Feature_13" + 0.005826029616350581 * "ADS"."Feature_14" + 0.034075465364694545 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + -0.011505825567142924 * "ADS"."Feature_17" + -0.022243734969251118 * "ADS"."Feature_18" + -0.002977882975374125 * "ADS"."Feature_19" + -0.0026199189607526274 * "ADS"."Feature_20" + -0.002222600330469629 * "ADS"."Feature_21" + -0.01953176875544443 * "ADS"."Feature_22" + -0.029951553591583566 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + 0.0024196281799141375 * "ADS"."Feature_25" + -0.0029907629248200067 * "ADS"."Feature_26" + -0.009535716321374057 * "ADS"."Feature_27" + -0.0020364103112366365 * "ADS"."Feature_28" + 0.006984648849476139 * "ADS"."Feature_29" + 0.029932991915773123 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -0.020458772357217124 * "ADS"."Feature_33" + 0.0025998907500038825 * "ADS"."Feature_34" + 0.007014050928135041 * "ADS"."Feature_35" + 0.009279246699285999 * "ADS"."Feature_36" + 0.0089927635843397 * "ADS"."Feature_37" + 0.036229566838539305 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.07135169549326487 * "ADS"."Feature_40" + -0.006768981836971338 * "ADS"."Feature_41" + 0.005735222770848974 * "ADS"."Feature_42" + 0.006237546212986246 * "ADS"."Feature_43" + 0.012815437516051591 * "ADS"."Feature_44" + -0.0052302212130591 * "ADS"."Feature_45" + -0.02206868463881032 * "ADS"."Feature_46" + -0.06174334864512576 * "ADS"."Feature_47" + 0.14459420963922823 * "ADS"."Feature_48" + -0.001071213520572428 * "ADS"."Feature_49" + -0.00397234047676189 * "ADS"."Feature_50" + 0.001153188663323466 * "ADS"."Feature_51" + -0.03455309351824875 * "ADS"."Feature_52" + -0.005779717379464701 * "ADS"."Feature_53" + 0.00334354530587019 * "ADS"."Feature_54" + 0.011709974031287415 * "ADS"."Feature_55" + -0.00948770432036977 * "ADS"."Feature_56" + -0.08242648896137969 * "ADS"."Feature_57" + -0.003175155739039651 * "ADS"."Feature_58" + -0.01947308477213691 * "ADS"."Feature_59" + -0.03276381006132198 * "ADS"."Feature_60" + 0.0014242118190030708 * "ADS"."Feature_61" + -0.0069188224400798266 * "ADS"."Feature_62" + 0.011050435853392437 * "ADS"."Feature_63" + -0.389242046288 AS "Score_7", 0.0 * "ADS"."Feature_0" + 0.007306454591716231 * "ADS"."Feature_1" + 0.026507469968153896 * "ADS"."Feature_2" + -0.022057389474593684 * "ADS"."Feature_3" + 0.01698963478666367 * "ADS"."Feature_4" + -0.008399926922889146 * "ADS"."Feature_5" + -0.015235050176844185 * "ADS"."Feature_6" + -3.704218565232688e-05 * "ADS"."Feature_7" + 0.10127492718160934 * "ADS"."Feature_8" + -0.018174140272798345 * "ADS"."Feature_9" + 0.01732261884580138 * "ADS"."Feature_10" + -0.005187180679784893 * "ADS"."Feature_11" + -0.009799445583737606 * "ADS"."Feature_12" + -0.008801269492701859 * "ADS"."Feature_13" + -0.0006267462388122156 * "ADS"."Feature_14" + 0.06398181366006861 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 0.03190522949613006 * "ADS"."Feature_17" + 0.010919127442970059 * "ADS"."Feature_18" + 0.007236040974128798 * "ADS"."Feature_19" + -0.006459274953908845 * "ADS"."Feature_20" + 0.01732181996279552 * "ADS"."Feature_21" + 0.018646276360879645 * "ADS"."Feature_22" + -0.10580907326151599 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -0.01368790242970204 * "ADS"."Feature_25" + 0.0007532484292635533 * "ADS"."Feature_26" + 0.01119875438357534 * "ADS"."Feature_27" + 0.011482023771289289 * "ADS"."Feature_28" + 0.008483861089523507 * "ADS"."Feature_29" + -0.009759337193815215 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -0.0319298985189143 * "ADS"."Feature_33" + -0.019046672325299024 * "ADS"."Feature_34" + 0.021101305912356733 * "ADS"."Feature_35" + 0.01916314725070107 * "ADS"."Feature_36" + -0.014310896487791682 * "ADS"."Feature_37" + -0.022775567144611507 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.006547972905585929 * "ADS"."Feature_40" + -0.0024713923858272675 * "ADS"."Feature_41" + 0.03401231165619241 * "ADS"."Feature_42" + -0.006452761641962465 * "ADS"."Feature_43" + 0.0189688224614757 * "ADS"."Feature_44" + 0.013309765342598336 * "ADS"."Feature_45" + 0.003458628360983021 * "ADS"."Feature_46" + -0.05762855525251091 * "ADS"."Feature_47" + -0.04400319606991419 * "ADS"."Feature_48" + -0.0014359450897633529 * "ADS"."Feature_49" + 0.018299653572276354 * "ADS"."Feature_50" + -0.017997313369859273 * "ADS"."Feature_51" + -0.02428086013064245 * "ADS"."Feature_52" + 0.0221668307339584 * "ADS"."Feature_53" + -0.012742933466006188 * "ADS"."Feature_54" + -0.003849213376842646 * "ADS"."Feature_55" + 0.018086329264985018 * "ADS"."Feature_56" + -0.024610554651136356 * "ADS"."Feature_57" + -0.031048228607694458 * "ADS"."Feature_58" + 0.012167178680329222 * "ADS"."Feature_59" + -0.003459682039472142 * "ADS"."Feature_60" + -0.019622913140162273 * "ADS"."Feature_61" + -0.0039735605514308265 * "ADS"."Feature_62" + 0.015377610000203629 * "ADS"."Feature_63" + -1.41495549215 AS "Score_8", 0.0 * "ADS"."Feature_0" + -0.049629502666449124 * "ADS"."Feature_1" + -0.026079437672501843 * "ADS"."Feature_2" + 0.0074019518482115 * "ADS"."Feature_3" + -0.0007996178576995405 * "ADS"."Feature_4" + -0.020221323390586726 * "ADS"."Feature_5" + 0.007544529217387396 * "ADS"."Feature_6" + -0.059380608306455106 * "ADS"."Feature_7" + 0.038790391166934376 * "ADS"."Feature_8" + -0.005384773333537209 * "ADS"."Feature_9" + 0.011103457285818004 * "ADS"."Feature_10" + 0.0012410705528675386 * "ADS"."Feature_11" + -0.0030935994148989588 * "ADS"."Feature_12" + -0.0071369083527903256 * "ADS"."Feature_13" + 0.009291646361035273 * "ADS"."Feature_14" + 0.05708323861324089 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 0.00011083404762158322 * "ADS"."Feature_17" + 0.014192352936245963 * "ADS"."Feature_18" + 0.00654917831588708 * "ADS"."Feature_19" + 0.006655605623056508 * "ADS"."Feature_20" + 0.02497423544642411 * "ADS"."Feature_21" + 0.0038688610483302638 * "ADS"."Feature_22" + -0.08743071894041464 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -0.018273534806243562 * "ADS"."Feature_25" + 0.009142747791993852 * "ADS"."Feature_26" + 0.0030532440152599497 * "ADS"."Feature_27" + 0.007129059417256605 * "ADS"."Feature_28" + 0.014128519061624193 * "ADS"."Feature_29" + -0.0007483383012163694 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -0.024163504240570774 * "ADS"."Feature_33" + -0.006225110842067738 * "ADS"."Feature_34" + 0.023039691223451488 * "ADS"."Feature_35" + -0.03933753857542367 * "ADS"."Feature_36" + 0.0014022214158895122 * "ADS"."Feature_37" + 0.008680192140714303 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.10722780931933701 * "ADS"."Feature_40" + 0.044115040308088264 * "ADS"."Feature_41" + -0.03290758634430298 * "ADS"."Feature_42" + -0.019721305883927752 * "ADS"."Feature_43" + -0.005413339825523674 * "ADS"."Feature_44" + 0.0032505896524073954 * "ADS"."Feature_45" + -0.012236617274892211 * "ADS"."Feature_46" + 0.047972759559108506 * "ADS"."Feature_47" + 0.12333378685962224 * "ADS"."Feature_48" + -0.02207365681016894 * "ADS"."Feature_49" + -0.00996768228006689 * "ADS"."Feature_50" + 0.0011885016627851083 * "ADS"."Feature_51" + -0.010276531913681069 * "ADS"."Feature_52" + -0.023361300407181516 * "ADS"."Feature_53" + 0.023478126360119547 * "ADS"."Feature_54" + -0.012130268979495503 * "ADS"."Feature_55" + 0.03756258975464581 * "ADS"."Feature_56" + 0.01188009963258667 * "ADS"."Feature_57" + 0.02327130157103614 * "ADS"."Feature_58" + -0.020353254815355947 * "ADS"."Feature_59" + 0.023190748163318016 * "ADS"."Feature_60" + -3.88930441496601e-05 * "ADS"."Feature_61" + 0.0068820591170252205 * "ADS"."Feature_62" + -0.034224200346335484 * "ADS"."Feature_63" + -0.601697559638 AS "Score_9" 
FROM digits AS "ADS"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3", linear_model_cte."Score_4" AS "Score_4", linear_model_cte."Score_5" AS "Score_5", linear_model_cte."Score_6" AS "Score_6", linear_model_cte."Score_7" AS "Score_7", linear_model_cte."Score_8" AS "Score_8", linear_model_cte."Score_9" AS "Score_9", CAST(NULL AS FLOAT(53)) AS "Proba_0", CAST(NULL AS FLOAT(53)) AS "Proba_1", CAST(NULL AS FLOAT(53)) AS "Proba_2", CAST(NULL AS FLOAT(53)) AS "Proba_3", CAST(NULL AS FLOAT(53)) AS "Proba_4", CAST(NULL AS FLOAT(53)) AS "Proba_5", CAST(NULL AS FLOAT(53)) AS "Proba_6", CAST(NULL AS FLOAT(53)) AS "Proba_7", CAST(NULL AS FLOAT(53)) AS "Proba_8", CAST(NULL AS FLOAT(53)) AS "Proba_9", CAST(NULL AS FLOAT(53)) AS "LogProba_0", CAST(NULL AS FLOAT(53)) AS "LogProba_1", CAST(NULL AS FLOAT(53)) AS "LogProba_2", CAST(NULL AS FLOAT(53)) AS "LogProba_3", CAST(NULL AS FLOAT(53)) AS "LogProba_4", CAST(NULL AS FLOAT(53)) AS "LogProba_5", CAST(NULL AS FLOAT(53)) AS "LogProba_6", CAST(NULL AS FLOAT(53)) AS "LogProba_7", CAST(NULL AS FLOAT(53)) AS "LogProba_8", CAST(NULL AS FLOAT(53)) AS "LogProba_9", CAST(NULL AS FLOAT(53)) AS "Decision" 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 4 AS class, orig_cte."LogProba_4" AS "LogProba", orig_cte."Proba_4" AS "Proba", orig_cte."Score_4" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 5 AS class, orig_cte."LogProba_5" AS "LogProba", orig_cte."Proba_5" AS "Proba", orig_cte."Score_5" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 6 AS class, orig_cte."LogProba_6" AS "LogProba", orig_cte."Proba_6" AS "Proba", orig_cte."Score_6" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 7 AS class, orig_cte."LogProba_7" AS "LogProba", orig_cte."Proba_7" AS "Proba", orig_cte."Score_7" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 8 AS class, orig_cte."LogProba_8" AS "LogProba", orig_cte."Proba_8" AS "Proba", orig_cte."Score_8" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 9 AS class, orig_cte."LogProba_9" AS "LogProba", orig_cte."Proba_9" AS "Proba", orig_cte."Score_9" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Score_4" AS "Score_4", orig_cte."Score_5" AS "Score_5", orig_cte."Score_6" AS "Score_6", orig_cte."Score_7" AS "Score_7", orig_cte."Score_8" AS "Score_8", orig_cte."Score_9" AS "Score_9", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."Proba_4" AS "Proba_4", orig_cte."Proba_5" AS "Proba_5", orig_cte."Proba_6" AS "Proba_6", orig_cte."Proba_7" AS "Proba_7", orig_cte."Proba_8" AS "Proba_8", orig_cte."Proba_9" AS "Proba_9", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."LogProba_4" AS "LogProba_4", orig_cte."LogProba_5" AS "LogProba_5", orig_cte."LogProba_6" AS "LogProba_6", orig_cte."LogProba_7" AS "LogProba_7", orig_cte."LogProba_8" AS "LogProba_8", orig_cte."LogProba_9" AS "LogProba_9", orig_cte."Decision" AS "Decision", max_select."KEY_m" AS "KEY_m", max_select."max_LogProba" AS "max_LogProba", max_select."max_Proba" AS "max_Proba", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."LogProba") AS "max_LogProba", max(score_class_union."Proba") AS "max_Proba", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Score_4" AS "Score_4", score_max."Score_5" AS "Score_5", score_max."Score_6" AS "Score_6", score_max."Score_7" AS "Score_7", score_max."Score_8" AS "Score_8", score_max."Score_9" AS "Score_9", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."Proba_4" AS "Proba_4", score_max."Proba_5" AS "Proba_5", score_max."Proba_6" AS "Proba_6", score_max."Proba_7" AS "Proba_7", score_max."Proba_8" AS "Proba_8", score_max."Proba_9" AS "Proba_9", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."LogProba_4" AS "LogProba_4", score_max."LogProba_5" AS "LogProba_5", score_max."LogProba_6" AS "LogProba_6", score_max."LogProba_7" AS "LogProba_7", score_max."LogProba_8" AS "LogProba_8", score_max."LogProba_9" AS "LogProba_9", score_max."Decision" AS "Decision", score_max."KEY_m" AS "KEY_m", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Score_4" AS "Score_4", score_max."Score_5" AS "Score_5", score_max."Score_6" AS "Score_6", score_max."Score_7" AS "Score_7", score_max."Score_8" AS "Score_8", score_max."Score_9" AS "Score_9", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."Proba_4" AS "Proba_4", score_max."Proba_5" AS "Proba_5", score_max."Proba_6" AS "Proba_6", score_max."Proba_7" AS "Proba_7", score_max."Proba_8" AS "Proba_8", score_max."Proba_9" AS "Proba_9", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."LogProba_4" AS "LogProba_4", score_max."LogProba_5" AS "LogProba_5", score_max."LogProba_6" AS "LogProba_6", score_max."LogProba_7" AS "LogProba_7", score_max."LogProba_8" AS "LogProba_8", score_max."LogProba_9" AS "LogProba_9", score_max."Decision" AS "Decision", score_max."KEY_m" AS "KEY_m", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" = union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_max."KEY" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Score_4" AS "Score_4", arg_max_cte."Score_5" AS "Score_5", arg_max_cte."Score_6" AS "Score_6", arg_max_cte."Score_7" AS "Score_7", arg_max_cte."Score_8" AS "Score_8", arg_max_cte."Score_9" AS "Score_9", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", arg_max_cte."Proba_4" AS "Proba_4", arg_max_cte."Proba_5" AS "Proba_5", arg_max_cte."Proba_6" AS "Proba_6", arg_max_cte."Proba_7" AS "Proba_7", arg_max_cte."Proba_8" AS "Proba_8", arg_max_cte."Proba_9" AS "Proba_9", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", CASE WHEN (arg_max_cte."Proba_4" IS NULL OR arg_max_cte."Proba_4" > 0.0) THEN ln(arg_max_cte."Proba_4") ELSE -1.79769313486231e+308 END AS "LogProba_4", CASE WHEN (arg_max_cte."Proba_5" IS NULL OR arg_max_cte."Proba_5" > 0.0) THEN ln(arg_max_cte."Proba_5") ELSE -1.79769313486231e+308 END AS "LogProba_5", CASE WHEN (arg_max_cte."Proba_6" IS NULL OR arg_max_cte."Proba_6" > 0.0) THEN ln(arg_max_cte."Proba_6") ELSE -1.79769313486231e+308 END AS "LogProba_6", CASE WHEN (arg_max_cte."Proba_7" IS NULL OR arg_max_cte."Proba_7" > 0.0) THEN ln(arg_max_cte."Proba_7") ELSE -1.79769313486231e+308 END AS "LogProba_7", CASE WHEN (arg_max_cte."Proba_8" IS NULL OR arg_max_cte."Proba_8" > 0.0) THEN ln(arg_max_cte."Proba_8") ELSE -1.79769313486231e+308 END AS "LogProba_8", CASE WHEN (arg_max_cte."Proba_9" IS NULL OR arg_max_cte."Proba_9" > 0.0) THEN ln(arg_max_cte."Proba_9") ELSE -1.79769313486231e+308 END AS "LogProba_9", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte