-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.0 * "ADS"."Feature_0" + -12.218963831867015 * "ADS"."Feature_1" + -19.55034213098723 * "ADS"."Feature_2" + -1.2218963831865675 * "ADS"."Feature_3" + -53.7634408602147 * "ADS"."Feature_4" + -73.31378299120205 * "ADS"."Feature_5" + -47.65395894428139 * "ADS"."Feature_6" + -3.66568914956009 * "ADS"."Feature_7" + 0.0 * "ADS"."Feature_8" + -51.31964809384145 * "ADS"."Feature_9" + 25.65982404692067 * "ADS"."Feature_10" + 4.887585532746849 * "ADS"."Feature_11" + 80.64516129032225 * "ADS"."Feature_12" + 80.64516129032232 * "ADS"."Feature_13" + -10.997067448680207 * "ADS"."Feature_14" + -6.109481915933483 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 4.887585532746645 * "ADS"."Feature_17" + 32.9912023460409 * "ADS"."Feature_18" + -53.76344086021487 * "ADS"."Feature_19" + -84.31085043988239 * "ADS"."Feature_20" + 90.4203323558158 * "ADS"."Feature_21" + -7.632604226068114e-14 * "ADS"."Feature_22" + -4.887585532746802 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + 29.325513196480692 * "ADS"."Feature_25" + 15.884652981427031 * "ADS"."Feature_26" + -83.08895405669541 * "ADS"."Feature_27" + -174.73118279569798 * "ADS"."Feature_28" + 19.550342130987232 * "ADS"."Feature_29" + 17.10654936461373 * "ADS"."Feature_30" + -1.221896383186705 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 20.772238514173974 * "ADS"."Feature_33" + 65.98240469208174 * "ADS"."Feature_34" + -75.75757575757537 * "ADS"."Feature_35" + -183.2844574780049 * "ADS"."Feature_36" + -20.77223851417381 * "ADS"."Feature_37" + 19.550342130987147 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + -2.44379276637341 * "ADS"."Feature_40" + -20.77223851417393 * "ADS"."Feature_41" + 98.97360703812262 * "ADS"."Feature_42" + -120.96774193548337 * "ADS"."Feature_43" + -117.30205278592322 * "ADS"."Feature_44" + -13.440860215053574 * "ADS"."Feature_45" + -6.109481915933544 * "ADS"."Feature_46" + 0.0 * "ADS"."Feature_47" + -10.997067448680337 * "ADS"."Feature_48" + -52.54154447702813 * "ADS"."Feature_49" + 45.21016617790788 * "ADS"."Feature_50" + 7.331378299120197 * "ADS"."Feature_51" + 67.20430107526866 * "ADS"."Feature_52" + 17.10654936461383 * "ADS"."Feature_53" + -65.98240469208187 * "ADS"."Feature_54" + -7.33137829912021 * "ADS"."Feature_55" + 0.0 * "ADS"."Feature_56" + -17.106549364613812 * "ADS"."Feature_57" + -34.213098729227625 * "ADS"."Feature_58" + -2.443792766373265 * "ADS"."Feature_59" + -62.3167155425217 * "ADS"."Feature_60" + -84.31085043988246 * "ADS"."Feature_61" + -48.875855327468095 * "ADS"."Feature_62" + -3.6656891495601123 * "ADS"."Feature_63" + -27.4202860344 AS "Score_0", 0.0 * "ADS"."Feature_0" + -17.106549364613855 * "ADS"."Feature_1" + -14.662756598240115 * "ADS"."Feature_2" + 10.9970674486806 * "ADS"."Feature_3" + -284.70185728250146 * "ADS"."Feature_4" + 92.86412512218962 * "ADS"."Feature_5" + -41.54447702834803 * "ADS"."Feature_6" + -25.65982404692077 * "ADS"."Feature_7" + 0.0 * "ADS"."Feature_8" + -212.60997067448662 * "ADS"."Feature_9" + -263.92961876832777 * "ADS"."Feature_10" + -129.5210166177904 * "ADS"."Feature_11" + 26.88172043010738 * "ADS"."Feature_12" + 63.53861192570853 * "ADS"."Feature_13" + -81.86705767350922 * "ADS"."Feature_14" + -15.884652981427141 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + -8.553274682306716 * "ADS"."Feature_17" + 7.331378299120705 * "ADS"."Feature_18" + 321.358748778103 * "ADS"."Feature_19" + 267.5953079178881 * "ADS"."Feature_20" + -75.7575757575756 * "ADS"."Feature_21" + -54.985337243401496 * "ADS"."Feature_22" + -4.887585532746825 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -43.9882697947214 * "ADS"."Feature_25" + 53.763440860214885 * "ADS"."Feature_26" + 130.74291300097687 * "ADS"."Feature_27" + 4.88758553274676 * "ADS"."Feature_28" + -12.218963831866613 * "ADS"."Feature_29" + -156.40273704789794 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -106.304985337243 * "ADS"."Feature_33" + 23.21603128054766 * "ADS"."Feature_34" + -31.76930596285445 * "ADS"."Feature_35" + 1.221896383186942 * "ADS"."Feature_36" + -106.30498533724263 * "ADS"."Feature_37" + -177.1749755620718 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + -1.2218963831867047 * "ADS"."Feature_40" + -218.71945259042 * "ADS"."Feature_41" + -89.19843597262903 * "ADS"."Feature_42" + 41.544477028347934 * "ADS"."Feature_43" + 31.769305962854027 * "ADS"."Feature_44" + -194.28152492668588 * "ADS"."Feature_45" + -168.621700879765 * "ADS"."Feature_46" + -9.775171065493623 * "ADS"."Feature_47" + -3.6656891495601167 * "ADS"."Feature_48" + -87.97653958944275 * "ADS"."Feature_49" + -69.64809384164205 * "ADS"."Feature_50" + 48.87585532746805 * "ADS"."Feature_51" + 95.30791788856276 * "ADS"."Feature_52" + -52.541544477028204 * "ADS"."Feature_53" + -78.20136852394883 * "ADS"."Feature_54" + 28.103616813294227 * "ADS"."Feature_55" + -1.2218963831867056 * "ADS"."Feature_56" + -20.77223851417399 * "ADS"."Feature_57" + -89.19843597262916 * "ADS"."Feature_58" + -79.42326490713552 * "ADS"."Feature_59" + -6.109481915933665 * "ADS"."Feature_60" + 133.18670576735065 * "ADS"."Feature_61" + -43.9882697947214 * "ADS"."Feature_62" + 24.437927663734037 * "ADS"."Feature_63" + -76.4063168481 AS "Score_1", 0.0 * "ADS"."Feature_0" + 1.2218963831866152 * "ADS"."Feature_1" + 9.775171065493522 * "ADS"."Feature_2" + -24.43792766373382 * "ADS"."Feature_3" + -9.77517106549358 * "ADS"."Feature_4" + -83.08895405669568 * "ADS"."Feature_5" + -72.0918866080153 * "ADS"."Feature_6" + -3.6656891495600896 * "ADS"."Feature_7" + 0.0 * "ADS"."Feature_8" + 23.216031280547153 * "ADS"."Feature_9" + 68.42619745845558 * "ADS"."Feature_10" + -41.54447702834768 * "ADS"."Feature_11" + 52.541544477028346 * "ADS"."Feature_12" + -17.106549364613713 * "ADS"."Feature_13" + -26.88172043010736 * "ADS"."Feature_14" + -3.665689149560093 * "ADS"."Feature_15" + 1.2218963831867082 * "ADS"."Feature_16" + 9.775171065493403 * "ADS"."Feature_17" + 43.988269794721504 * "ADS"."Feature_18" + -61.094819159334975 * "ADS"."Feature_19" + 42.76637341153455 * "ADS"."Feature_20" + 43.98826979472139 * "ADS"."Feature_21" + 29.32551319648088 * "ADS"."Feature_22" + 0.0 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -101.41739980449641 * "ADS"."Feature_25" + -200.39100684261888 * "ADS"."Feature_26" + -218.71945259041954 * "ADS"."Feature_27" + -114.85826001955019 * "ADS"."Feature_28" + 65.98240469208206 * "ADS"."Feature_29" + 3.6656891495602157 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -87.9765395894426 * "ADS"."Feature_33" + -175.9530791788849 * "ADS"."Feature_34" + -48.8758553274679 * "ADS"."Feature_35" + -76.97947214076218 * "ADS"."Feature_36" + -94.08602150537565 * "ADS"."Feature_37" + -120.96774193548339 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.0 * "ADS"."Feature_40" + 14.66275659824038 * "ADS"."Feature_41" + 19.55034213098726 * "ADS"."Feature_42" + 135.63049853372394 * "ADS"."Feature_43" + -80.64516129032222 * "ADS"."Feature_44" + -175.95307917888522 * "ADS"."Feature_45" + -147.84946236559105 * "ADS"."Feature_46" + -3.665689149560071 * "ADS"."Feature_47" + 3.665689149560096 * "ADS"."Feature_48" + 86.75464320625592 * "ADS"."Feature_49" + 43.988269794721155 * "ADS"."Feature_50" + 106.30498533724324 * "ADS"."Feature_51" + 76.97947214076224 * "ADS"."Feature_52" + 124.63343108504337 * "ADS"."Feature_53" + 97.75171065493622 * "ADS"."Feature_54" + 37.878787878787875 * "ADS"."Feature_55" + 1.2218963831866987 * "ADS"."Feature_56" + 18.32844574780051 * "ADS"."Feature_57" + -9.775171065493819 * "ADS"."Feature_58" + -14.662756598240266 * "ADS"."Feature_59" + -14.662756598240557 * "ADS"."Feature_60" + 63.538611925708416 * "ADS"."Feature_61" + 94.08602150537594 * "ADS"."Feature_62" + 41.54447702834775 * "ADS"."Feature_63" + -20.0334733347 AS "Score_2", 0.0 * "ADS"."Feature_0" + 8.553274682306915 * "ADS"."Feature_1" + -113.63636363636367 * "ADS"."Feature_2" + -7.331378299120364 * "ADS"."Feature_3" + 127.077223851417 * "ADS"."Feature_4" + 12.218963831866805 * "ADS"."Feature_5" + -20.77223851417401 * "ADS"."Feature_6" + -4.887585532746821 * "ADS"."Feature_7" + -6.109481915933511 * "ADS"."Feature_8" + -13.440860215053874 * "ADS"."Feature_9" + 63.53861192570865 * "ADS"."Feature_10" + -6.109481915933268 * "ADS"."Feature_11" + 13.440860215053876 * "ADS"."Feature_12" + 45.21016617790771 * "ADS"."Feature_13" + 139.2961876832843 * "ADS"."Feature_14" + 2.4437927663734005 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + -50.09775171065487 * "ADS"."Feature_17" + -221.16324535679283 * "ADS"."Feature_18" + -193.05962854349892 * "ADS"."Feature_19" + 150.29325513196443 * "ADS"."Feature_20" + -117.30205278592379 * "ADS"."Feature_21" + -7.33137829911998 * "ADS"."Feature_22" + 0.0 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -119.74584555229696 * "ADS"."Feature_25" + -237.04789833822014 * "ADS"."Feature_26" + 50.0977517106548 * "ADS"."Feature_27" + 37.878787878788046 * "ADS"."Feature_28" + -233.38220918865997 * "ADS"."Feature_29" + -174.73118279569863 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -54.985337243401545 * "ADS"."Feature_33" + -111.19257086998978 * "ADS"."Feature_34" + -51.31964809384162 * "ADS"."Feature_35" + -14.662756598240849 * "ADS"."Feature_36" + -15.884652981427312 * "ADS"."Feature_37" + -72.09188660801534 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.0 * "ADS"."Feature_40" + 28.103616813294312 * "ADS"."Feature_41" + -108.74877810361636 * "ADS"."Feature_42" + -296.92082111436844 * "ADS"."Feature_43" + 36.656891495601286 * "ADS"."Feature_44" + 197.94721407624604 * "ADS"."Feature_45" + 199.16911045943274 * "ADS"."Feature_46" + -1.2218963831867078 * "ADS"."Feature_47" + 0.0 * "ADS"."Feature_48" + 39.10068426197447 * "ADS"."Feature_49" + 37.878787878788074 * "ADS"."Feature_50" + -133.18670576735053 * "ADS"."Feature_51" + -6.109481915933499 * "ADS"."Feature_52" + 21.994134897360407 * "ADS"."Feature_53" + 108.74877810361671 * "ADS"."Feature_54" + -15.884652981427188 * "ADS"."Feature_55" + 0.0 * "ADS"."Feature_56" + 6.721895767275895e-15 * "ADS"."Feature_57" + -23.21603128054759 * "ADS"."Feature_58" + -50.097751710655245 * "ADS"."Feature_59" + -14.662756598240582 * "ADS"."Feature_60" + 24.4379276637342 * "ADS"."Feature_61" + -89.19843597262938 * "ADS"."Feature_62" + -96.52981427174983 * "ADS"."Feature_63" + -22.1528118684 AS "Score_3", 0.0 * "ADS"."Feature_0" + -7.331378299120225 * "ADS"."Feature_1" + -59.87292277614824 * "ADS"."Feature_2" + -157.62463343108462 * "ADS"."Feature_3" + -28.10361681329418 * "ADS"."Feature_4" + -178.3968719452584 * "ADS"."Feature_5" + -117.30205278592342 * "ADS"."Feature_6" + 13.440860215053764 * "ADS"."Feature_7" + 0.0 * "ADS"."Feature_8" + 20.772238514174 * "ADS"."Feature_9" + -61.09481915933471 * "ADS"."Feature_10" + -106.30498533724315 * "ADS"."Feature_11" + -146.6275659824043 * "ADS"."Feature_12" + -87.9765395894423 * "ADS"."Feature_13" + -70.86999022482867 * "ADS"."Feature_14" + 20.772238514173985 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 76.97947214076248 * "ADS"."Feature_17" + 73.31378299120237 * "ADS"."Feature_18" + 39.10068426197433 * "ADS"."Feature_19" + 18.32844574780085 * "ADS"."Feature_20" + 54.98533724340194 * "ADS"."Feature_21" + 34.21309872922771 * "ADS"."Feature_22" + 26.881720430107503 * "ADS"."Feature_23" + 1.2218963831867096 * "ADS"."Feature_24" + 47.65395894428143 * "ADS"."Feature_25" + 127.07722385141713 * "ADS"."Feature_26" + -3.6656891495599173 * "ADS"."Feature_27" + -14.662756598240255 * "ADS"."Feature_28" + 9.775171065493595 * "ADS"."Feature_29" + 183.28445747800544 * "ADS"."Feature_30" + 3.665689149560123 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 94.08602150537591 * "ADS"."Feature_33" + 98.97360703812299 * "ADS"."Feature_34" + 28.10361681329444 * "ADS"."Feature_35" + 79.4232649071356 * "ADS"."Feature_36" + 42.76637341153437 * "ADS"."Feature_37" + 105.08308895405642 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 2.4437927663734165 * "ADS"."Feature_40" + 149.07135874877764 * "ADS"."Feature_41" + -1.221896383186807 * "ADS"."Feature_42" + 160.0684261974582 * "ADS"."Feature_43" + 105.08308895405614 * "ADS"."Feature_44" + 18.328445747800476 * "ADS"."Feature_45" + -39.10068426197438 * "ADS"."Feature_46" + -1.22189638318671 * "ADS"."Feature_47" + 10.997067448680363 * "ADS"."Feature_48" + 103.8611925708697 * "ADS"."Feature_49" + -64.76050830889508 * "ADS"."Feature_50" + 6.109481915933683 * "ADS"."Feature_51" + -21.99413489736074 * "ADS"."Feature_52" + -97.75171065493586 * "ADS"."Feature_53" + -109.97067448680319 * "ADS"."Feature_54" + -4.88758553274684 * "ADS"."Feature_55" + 0.0 * "ADS"."Feature_56" + -7.331378299120263 * "ADS"."Feature_57" + -54.985337243401474 * "ADS"."Feature_58" + -87.97653958944245 * "ADS"."Feature_59" + -18.328445747800625 * "ADS"."Feature_60" + -97.75171065493599 * "ADS"."Feature_61" + -37.87878787878772 * "ADS"."Feature_62" + 0.0 * "ADS"."Feature_63" + 0.752040513957 AS "Score_4", 0.0 * "ADS"."Feature_0" + 7.331378299120209 * "ADS"."Feature_1" + 107.52688172042976 * "ADS"."Feature_2" + -13.440860215053798 * "ADS"."Feature_3" + 39.1006842619743 * "ADS"."Feature_4" + 128.29912023460346 * "ADS"."Feature_5" + 117.30205278592362 * "ADS"."Feature_6" + -43.98826979472122 * "ADS"."Feature_7" + -1.2218963831866982 * "ADS"."Feature_8" + -2.1076395760619903e-13 * "ADS"."Feature_9" + 45.210166177907546 * "ADS"."Feature_10" + -31.769305962854325 * "ADS"."Feature_11" + -17.10654936461367 * "ADS"."Feature_12" + -65.98240469208174 * "ADS"."Feature_13" + -12.218963831866821 * "ADS"."Feature_14" + -12.218963831866967 * "ADS"."Feature_15" + -1.2218963831866982 * "ADS"."Feature_16" + -4.887585532747141 * "ADS"."Feature_17" + 53.76344086021457 * "ADS"."Feature_18" + -14.6627565982402 * "ADS"."Feature_19" + -221.16324535679294 * "ADS"."Feature_20" + -337.2434017595298 * "ADS"."Feature_21" + -178.39687194525865 * "ADS"."Feature_22" + -3.6656891495601016 * "ADS"."Feature_23" + -1.2218963831867082 * "ADS"."Feature_24" + 69.64809384164198 * "ADS"."Feature_25" + 97.7517106549359 * "ADS"."Feature_26" + 39.10068426197416 * "ADS"."Feature_27" + 102.6392961876831 * "ADS"."Feature_28" + -65.98240469208147 * "ADS"."Feature_29" + -122.18963831867023 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -19.55034213098723 * "ADS"."Feature_33" + 50.097751710655054 * "ADS"."Feature_34" + -57.42913000977492 * "ADS"."Feature_35" + -26.88172043010748 * "ADS"."Feature_36" + -75.75757575757555 * "ADS"."Feature_37" + -3.6656891495599093 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.0 * "ADS"."Feature_40" + -47.65395894428138 * "ADS"."Feature_41" + -162.51221896383132 * "ADS"."Feature_42" + -89.19843597262906 * "ADS"."Feature_43" + -43.9882697947214 * "ADS"."Feature_44" + -8.553274682307102 * "ADS"."Feature_45" + 7.331378299120211 * "ADS"."Feature_46" + 0.0 * "ADS"."Feature_47" + 0.0 * "ADS"."Feature_48" + -4.887585532746803 * "ADS"."Feature_49" + -29.325513196480806 * "ADS"."Feature_50" + -91.6422287390026 * "ADS"."Feature_51" + 18.328445747800693 * "ADS"."Feature_52" + -67.20430107526865 * "ADS"."Feature_53" + -84.31085043988246 * "ADS"."Feature_54" + -9.775171065493595 * "ADS"."Feature_55" + 0.0 * "ADS"."Feature_56" + 17.106549364613873 * "ADS"."Feature_57" + 95.30791788856264 * "ADS"."Feature_58" + 79.42326490713562 * "ADS"."Feature_59" + -47.653958944281314 * "ADS"."Feature_60" + -134.4086021505371 * "ADS"."Feature_61" + -84.31085043988237 * "ADS"."Feature_62" + -29.325513196480788 * "ADS"."Feature_63" + -20.396412755 AS "Score_5", 0.0 * "ADS"."Feature_0" + -7.331378299120215 * "ADS"."Feature_1" + -101.4173998044961 * "ADS"."Feature_2" + -12.21896383186689 * "ADS"."Feature_3" + -73.31378299120202 * "ADS"."Feature_4" + -48.87585532746794 * "ADS"."Feature_5" + -32.991202346040964 * "ADS"."Feature_6" + 0.0 * "ADS"."Feature_7" + 0.0 * "ADS"."Feature_8" + -74.5356793743889 * "ADS"."Feature_9" + -35.434995112414036 * "ADS"."Feature_10" + -32.991202346041106 * "ADS"."Feature_11" + -127.077223851417 * "ADS"."Feature_12" + -114.85826001954983 * "ADS"."Feature_13" + -12.218963831866894 * "ADS"."Feature_14" + -1.2218963831866996 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + -59.87292277614841 * "ADS"."Feature_17" + 48.87585532746837 * "ADS"."Feature_18" + -51.319648093841714 * "ADS"."Feature_19" + -119.74584555229674 * "ADS"."Feature_20" + -238.269794721407 * "ADS"."Feature_21" + -80.6451612903223 * "ADS"."Feature_22" + -2.443792766373399 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -23.216031280547103 * "ADS"."Feature_25" + 53.763440860215056 * "ADS"."Feature_26" + 12.218963831867052 * "ADS"."Feature_27" + -59.87292277614823 * "ADS"."Feature_28" + -74.53567937438844 * "ADS"."Feature_29" + -111.19257086999004 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 1.8431004523175843e-14 * "ADS"."Feature_33" + 124.63343108504354 * "ADS"."Feature_34" + 48.87585532746781 * "ADS"."Feature_35" + -2.443792766374023 * "ADS"."Feature_36" + -37.87878787878796 * "ADS"."Feature_37" + -48.87585532746823 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.0 * "ADS"."Feature_40" + -105.0830889540567 * "ADS"."Feature_41" + 189.3939393939389 * "ADS"."Feature_42" + 15.884652981426944 * "ADS"."Feature_43" + -92.86412512218931 * "ADS"."Feature_44" + 9.775171065493668 * "ADS"."Feature_45" + 72.09188660801519 * "ADS"."Feature_46" + 3.6656891495600896 * "ADS"."Feature_47" + 0.0 * "ADS"."Feature_48" + -65.98240469208197 * "ADS"."Feature_49" + 62.31671554252194 * "ADS"."Feature_50" + 102.63929618768294 * "ADS"."Feature_51" + -111.19257086998981 * "ADS"."Feature_52" + 112.4144672531768 * "ADS"."Feature_53" + 75.75757575757493 * "ADS"."Feature_54" + -51.319648093841636 * "ADS"."Feature_55" + 0.0 * "ADS"."Feature_56" + -6.109481915933492 * "ADS"."Feature_57" + -108.74877810361649 * "ADS"."Feature_58" + -69.64809384164185 * "ADS"."Feature_59" + -69.64809384164204 * "ADS"."Feature_60" + 80.64516129032212 * "ADS"."Feature_61" + -69.64809384164242 * "ADS"."Feature_62" + -52.54154447702831 * "ADS"."Feature_63" + -35.1761169714 AS "Score_6", 0.0 * "ADS"."Feature_0" + -21.994134897360677 * "ADS"."Feature_1" + 23.21603128054743 * "ADS"."Feature_2" + 52.54154447702837 * "ADS"."Feature_3" + 18.32844574780071 * "ADS"."Feature_4" + 56.20723362658849 * "ADS"."Feature_5" + 125.85532746823043 * "ADS"."Feature_6" + 24.43792766373406 * "ADS"."Feature_7" + 0.0 * "ADS"."Feature_8" + -21.994134897360656 * "ADS"."Feature_9" + 13.440860215053696 * "ADS"."Feature_10" + 3.665689149559983 * "ADS"."Feature_11" + 226.05083088954015 * "ADS"."Feature_12" + 34.21309872922765 * "ADS"."Feature_13" + -12.218963831867148 * "ADS"."Feature_14" + 42.76637341153468 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + -87.97653958944255 * "ADS"."Feature_17" + -155.180840664711 * "ADS"."Feature_18" + -125.85532746823019 * "ADS"."Feature_19" + -46.432062561094625 * "ADS"."Feature_20" + 36.65689149560107 * "ADS"."Feature_21" + 50.097751710655146 * "ADS"."Feature_22" + 2.443792766373417 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -118.52394916911022 * "ADS"."Feature_25" + -47.65395894428086 * "ADS"."Feature_26" + -133.18670576735033 * "ADS"."Feature_27" + -58.65102639296188 * "ADS"."Feature_28" + 91.64222873900256 * "ADS"."Feature_29" + 65.98240469208183 * "ADS"."Feature_30" + -2.4437927663734125 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -26.88172043010735 * "ADS"."Feature_33" + -3.665689149560254 * "ADS"."Feature_34" + 10.997067448680015 * "ADS"."Feature_35" + 28.10361681329393 * "ADS"."Feature_36" + 95.3079178885627 * "ADS"."Feature_37" + 86.75464320625586 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.0 * "ADS"."Feature_40" + -87.9765395894427 * "ADS"."Feature_41" + -1.5178474313203635e-13 * "ADS"."Feature_42" + 58.65102639296144 * "ADS"."Feature_43" + 18.328445747800586 * "ADS"."Feature_44" + 19.55034213098771 * "ADS"."Feature_45" + 12.218963831867187 * "ADS"."Feature_46" + 0.0 * "ADS"."Feature_47" + 0.0 * "ADS"."Feature_48" + -23.216031280547362 * "ADS"."Feature_49" + -18.328445747800245 * "ADS"."Feature_50" + 13.440860215053664 * "ADS"."Feature_51" + -189.3939393939386 * "ADS"."Feature_52" + -250.48875855327375 * "ADS"."Feature_53" + -23.216031280547302 * "ADS"."Feature_54" + 0.0 * "ADS"."Feature_55" + 0.0 * "ADS"."Feature_56" + -41.54447702834793 * "ADS"."Feature_57" + 3.6656891495600594 * "ADS"."Feature_58" + -83.0889540566958 * "ADS"."Feature_59" + -186.9501466275652 * "ADS"."Feature_60" + -189.39393939393872 * "ADS"."Feature_61" + -21.99413489736067 * "ADS"."Feature_62" + 0.0 * "ADS"."Feature_63" + -17.8237833079 AS "Score_7", 0.0 * "ADS"."Feature_0" + -23.21603128054731 * "ADS"."Feature_1" + -54.98533724340147 * "ADS"."Feature_2" + -226.0508308895402 * "ADS"."Feature_3" + -100.19550342130974 * "ADS"."Feature_4" + -68.42619745845529 * "ADS"."Feature_5" + -182.0625610948188 * "ADS"."Feature_6" + -25.659824046920697 * "ADS"."Feature_7" + 12.21896383186707 * "ADS"."Feature_8" + -24.437927663733902 * "ADS"."Feature_9" + 199.16911045943266 * "ADS"."Feature_10" + -1.2218963831864424 * "ADS"."Feature_11" + -186.95014662756523 * "ADS"."Feature_12" + 150.2932551319644 * "ADS"."Feature_13" + -37.878787878787755 * "ADS"."Feature_14" + -7.331378299120209 * "ADS"."Feature_15" + 6.109481915933535 * "ADS"."Feature_16" + 101.41739980449657 * "ADS"."Feature_17" + 85.53274682306889 * "ADS"."Feature_18" + 30.54740957966728 * "ADS"."Feature_19" + -86.75464320625564 * "ADS"."Feature_20" + 76.97947214076225 * "ADS"."Feature_21" + 69.64809384164235 * "ADS"."Feature_22" + -6.109481915933505 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -58.65102639296163 * "ADS"."Feature_25" + -87.97653958944275 * "ADS"."Feature_26" + 172.28739002932502 * "ADS"."Feature_27" + -45.210166177908256 * "ADS"."Feature_28" + -3.665689149559756 * "ADS"."Feature_29" + -184.50635386119214 * "ADS"."Feature_30" + -1.221896383186697 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -171.06549364613852 * "ADS"."Feature_33" + -123.4115347018568 * "ADS"."Feature_34" + 255.37634408602108 * "ADS"."Feature_35" + 54.98533724340167 * "ADS"."Feature_36" + -191.83773216031219 * "ADS"."Feature_37" + -266.37341153470146 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.0 * "ADS"."Feature_40" + -13.440860215053366 * "ADS"."Feature_41" + 178.3968719452583 * "ADS"."Feature_42" + 28.10361681329429 * "ADS"."Feature_43" + -12.218963831867237 * "ADS"."Feature_44" + 103.86119257086966 * "ADS"."Feature_45" + -45.21016617790779 * "ADS"."Feature_46" + -1.2218963831867085 * "ADS"."Feature_47" + 0.0 * "ADS"."Feature_48" + -21.99413489736051 * "ADS"."Feature_49" + 91.64222873900263 * "ADS"."Feature_50" + -200.39100684261908 * "ADS"."Feature_51" + -171.06549364613832 * "ADS"."Feature_52" + 100.19550342130965 * "ADS"."Feature_53" + -42.76637341153448 * "ADS"."Feature_54" + -10.997067448680342 * "ADS"."Feature_55" + 0.0 * "ADS"."Feature_56" + -25.659824046920743 * "ADS"."Feature_57" + -233.3822091886607 * "ADS"."Feature_58" + 17.106549364614033 * "ADS"."Feature_59" + 42.76637341153456 * "ADS"."Feature_60" + -193.05962854349954 * "ADS"."Feature_61" + -179.6187683284454 * "ADS"."Feature_62" + -23.216031280547313 * "ADS"."Feature_63" + -89.8306421626 AS "Score_8", 0.0 * "ADS"."Feature_0" + -23.216031280547377 * "ADS"."Feature_1" + -50.09775171065465 * "ADS"."Feature_2" + 45.21016617790827 * "ADS"."Feature_3" + -64.76050830889534 * "ADS"."Feature_4" + -128.2991202346037 * "ADS"."Feature_5" + -36.65689149560063 * "ADS"."Feature_6" + -18.328445747800448 * "ADS"."Feature_7" + -2.4437927663734107 * "ADS"."Feature_8" + 30.547409579667583 * "ADS"."Feature_9" + 76.97947214076244 * "ADS"."Feature_10" + 8.553274682306652 * "ADS"."Feature_11" + -13.440860215053812 * "ADS"."Feature_12" + 50.0977517106549 * "ADS"."Feature_13" + 26.881720430107784 * "ADS"."Feature_14" + -28.10361681329422 * "ADS"."Feature_15" + -1.221896383186709 * "ADS"."Feature_16" + 6.109481915933347 * "ADS"."Feature_17" + 130.74291300097698 * "ADS"."Feature_18" + 41.544477028347984 * "ADS"."Feature_19" + 23.216031280547323 * "ADS"."Feature_20" + 315.24926686216924 * "ADS"."Feature_21" + 9.775171065493616 * "ADS"."Feature_22" + -39.100684261974585 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -48.875855327468024 * "ADS"."Feature_25" + 118.52394916910998 * "ADS"."Feature_26" + 193.0596285434994 * "ADS"."Feature_27" + 76.97947214076224 * "ADS"."Feature_28" + 167.3998044965778 * "ADS"."Feature_29" + -43.98826979472128 * "ADS"."Feature_30" + -7.331378299120226 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -201.61290322580598 * "ADS"."Feature_33" + -61.09481915933446 * "ADS"."Feature_34" + 180.84066471163248 * "ADS"."Feature_35" + -213.83186705767258 * "ADS"."Feature_36" + -78.20136852394931 * "ADS"."Feature_37" + -45.21016617790835 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.0 * "ADS"."Feature_40" + -40.32258064516097 * "ADS"."Feature_41" + -304.25219941348877 * "ADS"."Feature_42" + -404.4477028347991 * "ADS"."Feature_43" + -204.05669599217936 * "ADS"."Feature_44" + -58.65102639296179 * "ADS"."Feature_45" + -108.74877810361697 * "ADS"."Feature_46" + 4.887585532746787 * "ADS"."Feature_47" + 0.0 * "ADS"."Feature_48" + 51.319648093841614 * "ADS"."Feature_49" + -25.659824046920566 * "ADS"."Feature_50" + 24.437927663734364 * "ADS"."Feature_51" + -1.2218963831864424 * "ADS"."Feature_52" + -131.96480938416406 * "ADS"."Feature_53" + -32.99120234604093 * "ADS"."Feature_54" + 4.887585532746834 * "ADS"."Feature_55" + 0.0 * "ADS"."Feature_56" + -15.884652981427122 * "ADS"."Feature_57" + -75.75757575757562 * "ADS"."Feature_58" + -64.76050830889518 * "ADS"."Feature_59" + 48.875855327468386 * "ADS"."Feature_60" + -43.98826979472132 * "ADS"."Feature_61" + -64.76050830889531 * "ADS"."Feature_62" + -8.553274682306885 * "ADS"."Feature_63" + -60.3236619582 AS "Score_9" 
FROM digits AS "ADS"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3", linear_model_cte."Score_4" AS "Score_4", linear_model_cte."Score_5" AS "Score_5", linear_model_cte."Score_6" AS "Score_6", linear_model_cte."Score_7" AS "Score_7", linear_model_cte."Score_8" AS "Score_8", linear_model_cte."Score_9" AS "Score_9", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "Proba_4", CAST(NULL AS FLOAT) AS "Proba_5", CAST(NULL AS FLOAT) AS "Proba_6", CAST(NULL AS FLOAT) AS "Proba_7", CAST(NULL AS FLOAT) AS "Proba_8", CAST(NULL AS FLOAT) AS "Proba_9", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS FLOAT) AS "LogProba_4", CAST(NULL AS FLOAT) AS "LogProba_5", CAST(NULL AS FLOAT) AS "LogProba_6", CAST(NULL AS FLOAT) AS "LogProba_7", CAST(NULL AS FLOAT) AS "LogProba_8", CAST(NULL AS FLOAT) AS "LogProba_9", CAST(NULL AS INTEGER) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
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
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Score_4" AS "Score_4", orig_cte."Score_5" AS "Score_5", orig_cte."Score_6" AS "Score_6", orig_cte."Score_7" AS "Score_7", orig_cte."Score_8" AS "Score_8", orig_cte."Score_9" AS "Score_9", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."Proba_4" AS "Proba_4", orig_cte."Proba_5" AS "Proba_5", orig_cte."Proba_6" AS "Proba_6", orig_cte."Proba_7" AS "Proba_7", orig_cte."Proba_8" AS "Proba_8", orig_cte."Proba_9" AS "Proba_9", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."LogProba_4" AS "LogProba_4", orig_cte."LogProba_5" AS "LogProba_5", orig_cte."LogProba_6" AS "LogProba_6", orig_cte."LogProba_7" AS "LogProba_7", orig_cte."LogProba_8" AS "LogProba_8", orig_cte."LogProba_9" AS "LogProba_9", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Score_4" AS "Score_4", score_max."Score_5" AS "Score_5", score_max."Score_6" AS "Score_6", score_max."Score_7" AS "Score_7", score_max."Score_8" AS "Score_8", score_max."Score_9" AS "Score_9", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."Proba_4" AS "Proba_4", score_max."Proba_5" AS "Proba_5", score_max."Proba_6" AS "Proba_6", score_max."Proba_7" AS "Proba_7", score_max."Proba_8" AS "Proba_8", score_max."Proba_9" AS "Proba_9", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."LogProba_4" AS "LogProba_4", score_max."LogProba_5" AS "LogProba_5", score_max."LogProba_6" AS "LogProba_6", score_max."LogProba_7" AS "LogProba_7", score_max."LogProba_8" AS "LogProba_8", score_max."LogProba_9" AS "LogProba_9", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Score_4" AS "Score_4", score_max."Score_5" AS "Score_5", score_max."Score_6" AS "Score_6", score_max."Score_7" AS "Score_7", score_max."Score_8" AS "Score_8", score_max."Score_9" AS "Score_9", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."Proba_4" AS "Proba_4", score_max."Proba_5" AS "Proba_5", score_max."Proba_6" AS "Proba_6", score_max."Proba_7" AS "Proba_7", score_max."Proba_8" AS "Proba_8", score_max."Proba_9" AS "Proba_9", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."LogProba_4" AS "LogProba_4", score_max."LogProba_5" AS "LogProba_5", score_max."LogProba_6" AS "LogProba_6", score_max."LogProba_7" AS "LogProba_7", score_max."LogProba_8" AS "LogProba_8", score_max."LogProba_9" AS "LogProba_9", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_max."KEY" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Score_4" AS "Score_4", arg_max_cte."Score_5" AS "Score_5", arg_max_cte."Score_6" AS "Score_6", arg_max_cte."Score_7" AS "Score_7", arg_max_cte."Score_8" AS "Score_8", arg_max_cte."Score_9" AS "Score_9", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", arg_max_cte."Proba_4" AS "Proba_4", arg_max_cte."Proba_5" AS "Proba_5", arg_max_cte."Proba_6" AS "Proba_6", arg_max_cte."Proba_7" AS "Proba_7", arg_max_cte."Proba_8" AS "Proba_8", arg_max_cte."Proba_9" AS "Proba_9", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", CASE WHEN (arg_max_cte."Proba_4" IS NULL OR arg_max_cte."Proba_4" > 0.0) THEN ln(arg_max_cte."Proba_4") ELSE -1.79769313486231e+308 END AS "LogProba_4", CASE WHEN (arg_max_cte."Proba_5" IS NULL OR arg_max_cte."Proba_5" > 0.0) THEN ln(arg_max_cte."Proba_5") ELSE -1.79769313486231e+308 END AS "LogProba_5", CASE WHEN (arg_max_cte."Proba_6" IS NULL OR arg_max_cte."Proba_6" > 0.0) THEN ln(arg_max_cte."Proba_6") ELSE -1.79769313486231e+308 END AS "LogProba_6", CASE WHEN (arg_max_cte."Proba_7" IS NULL OR arg_max_cte."Proba_7" > 0.0) THEN ln(arg_max_cte."Proba_7") ELSE -1.79769313486231e+308 END AS "LogProba_7", CASE WHEN (arg_max_cte."Proba_8" IS NULL OR arg_max_cte."Proba_8" > 0.0) THEN ln(arg_max_cte."Proba_8") ELSE -1.79769313486231e+308 END AS "LogProba_8", CASE WHEN (arg_max_cte."Proba_9" IS NULL OR arg_max_cte."Proba_9" > 0.0) THEN ln(arg_max_cte."Proba_9") ELSE -1.79769313486231e+308 END AS "LogProba_9", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0" WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1" WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2" WHEN (arg_max_cte."arg_max_Score" = 3) THEN arg_max_cte."Proba_3" WHEN (arg_max_cte."arg_max_Score" = 4) THEN arg_max_cte."Proba_4" WHEN (arg_max_cte."arg_max_Score" = 5) THEN arg_max_cte."Proba_5" WHEN (arg_max_cte."arg_max_Score" = 6) THEN arg_max_cte."Proba_6" WHEN (arg_max_cte."arg_max_Score" = 7) THEN arg_max_cte."Proba_7" WHEN (arg_max_cte."arg_max_Score" = 8) THEN arg_max_cte."Proba_8" WHEN (arg_max_cte."arg_max_Score" = 9) THEN arg_max_cte."Proba_9" END AS "DecisionProba" 
FROM arg_max_cte