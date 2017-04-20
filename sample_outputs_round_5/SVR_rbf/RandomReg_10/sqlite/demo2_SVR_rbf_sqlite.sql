-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, 1.0 AS dual_coeff, 0.0746281971827 AS sv_0, 0.729754367129 AS sv_1, 2.59699171709 AS sv_2, 0.10905403183 AS sv_3, -0.090970576205 AS sv_4, -2.02426480134 AS sv_5, -0.76576232302 AS sv_6, -1.71348118439 AS sv_7, 0.248155980152 AS sv_8, -0.0708836582786 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, 1.46592889516 AS sv_0, 0.145007631692 AS sv_1, -0.087793470954 AS sv_2, 0.661894144477 AS sv_3, 0.358395361621 AS sv_4, 0.180941241299 AS sv_5, 0.813096328135 AS sv_6, 2.33190059233 AS sv_7, -0.0338795798183 AS sv_8, -1.27498546003 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, -3.26040996904 AS sv_0, -2.7507129479 AS sv_1, -1.09897736076 AS sv_2, -0.672315075458 AS sv_3, 2.13726799806 AS sv_4, 0.865328251648 AS sv_5, 0.355146791985 AS sv_6, 1.02411675859 AS sv_7, 2.52961205473 AS sv_8, -0.287041591781 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, -1.03032140193 AS sv_0, -0.597690831798 AS sv_1, 0.16778780918 AS sv_2, 0.710262441333 AS sv_3, -0.38311504159 AS sv_4, -0.232729045379 AS sv_5, 0.665791243799 AS sv_6, 0.645303829425 AS sv_7, 1.17117434067 AS sv_8, -0.129021651429 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, -0.179901790752 AS sv_0, 1.02375354573 AS sv_1, -0.489520997574 AS sv_2, 0.193599818265 AS sv_3, -1.85241147161 AS sv_4, 0.0953241707667 AS sv_5, 0.592443087791 AS sv_6, -0.222793687429 AS sv_7, -0.827976111192 AS sv_8, 0.112101492294 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, -0.652075586347 AS sv_0, -2.13240475787 AS sv_1, -0.187604232392 AS sv_2, -1.85883175895 AS sv_3, 0.157489800733 AS sv_4, -0.600588236396 AS sv_5, 0.186501684492 AS sv_6, 0.766076852392 AS sv_7, 1.01905511937 AS sv_8, 0.653504660273 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.960788183109 AS sv_0, 0.676375423652 AS sv_1, -2.28145101951 AS sv_2, -0.890400447341 AS sv_3, -0.281063924651 AS sv_4, 0.578738431516 AS sv_5, -1.01564531081 AS sv_6, 0.84384353786 AS sv_7, 0.276170326923 AS sv_8, -1.68822607892 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, 0.679820378155 AS sv_0, -0.150833799655 AS sv_1, -0.739365085447 AS sv_2, -0.856856784016 AS sv_3, 0.995362497205 AS sv_4, 1.76484406761 AS sv_5, -0.703810356125 AS sv_6, -0.644091520225 AS sv_7, -0.529188364511 AS sv_8, -1.15110970041 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 0.439961853142 AS dual_coeff, 0.0728424476062 AS sv_0, -0.2219718271 AS sv_1, -1.56217997364 AS sv_2, 0.451085035227 AS sv_3, 0.578189920684 AS sv_4, -0.451985027981 AS sv_5, 0.312311136106 AS sv_6, 1.68366699839 AS sv_7, 0.43623809946 AS sv_8, -1.54496121981 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, -1.14624386147 AS sv_0, -0.401486972818 AS sv_1, 0.756581716893 AS sv_2, 0.993103135388 AS sv_3, 0.234395640514 AS sv_4, -0.928901333714 AS sv_5, -2.61893078489 AS sv_6, 0.408705832322 AS sv_7, 0.118500475405 AS sv_8, 0.535561821198 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, 0.117145699162 AS sv_0, -0.472917079141 AS sv_1, -0.306248377767 AS sv_2, -1.96902348784 AS sv_3, -0.178826800328 AS sv_4, -1.00158142964 AS sv_5, -0.152806116203 AS sv_6, -1.01715422673 AS sv_7, 1.42770760186 AS sv_8, 0.133311147479 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, -1.35862758585 AS sv_0, -0.333354938484 AS sv_1, -1.33701611292 AS sv_2, 0.728877321349 AS sv_3, -0.134970677702 AS sv_4, 1.19862416712 AS sv_5, -1.21654717558 AS sv_6, -0.397206331268 AS sv_7, -1.1927962064 AS sv_8, -1.1087463779 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, -1.0454932495 AS sv_0, -0.924312463244 AS sv_1, -0.69872166673 AS sv_2, -0.864478070679 AS sv_3, 0.133157610981 AS sv_4, -0.826070819785 AS sv_5, -2.08006571373 AS sv_6, 0.176165234828 AS sv_7, 1.05642251752 AS sv_8, -0.437641630735 AS sv_9 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, -0.695650299473 AS sv_0, 0.910420828539 AS sv_1, 0.454044165287 AS sv_2, 2.32966989056 AS sv_3, -0.838949095871 AS sv_4, -0.470676843283 AS sv_5, 0.160326380648 AS sv_6, 0.935803027529 AS sv_7, 0.0120756773585 AS sv_8, -1.97769195056 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, -0.509425520683 AS sv_0, 0.304013127442 AS sv_1, 0.267628082692 AS sv_2, 0.927084093944 AS sv_3, -0.295629053695 AS sv_4, -0.99910697077 AS sv_5, 0.337768625338 AS sv_6, 1.87180217255 AS sv_7, 1.66799953337 AS sv_8, -1.38012575685 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, -0.938773589214 AS sv_0, -0.64529191283 AS sv_1, -0.407352326724 AS sv_2, -1.53284973586 AS sv_3, 0.0962698047495 AS sv_4, -2.0126309616 AS sv_5, -0.684369691222 AS sv_6, -0.181499342922 AS sv_7, -0.203325831969 AS sv_8, 0.624971592465 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, 0.387506025831 AS sv_0, -1.20083757858 AS sv_1, 0.349170269317 AS sv_2, -2.744745556 AS sv_3, -0.260683023752 AS sv_4, -0.0930441834831 AS sv_5, -0.0414348208679 AS sv_6, -0.73191428766 AS sv_7, 2.3124674871 AS sv_8, 0.245579682832 AS sv_9 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, 1.34254164636 AS sv_0, 1.26926366099 AS sv_1, -0.0184381384895 AS sv_2, 0.150885488869 AS sv_3, 1.5363923547 AS sv_4, 1.90463913769 AS sv_5, 0.0492677586711 AS sv_6, 0.287411402419 AS sv_7, 0.709294266938 AS sv_8, -0.788369465468 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, -0.939408077882 AS sv_0, -1.662609264 AS sv_1, 0.290161881241 AS sv_2, 0.241496440443 AS sv_3, 2.32355452688 AS sv_4, -0.272347072578 AS sv_5, 0.188157272564 AS sv_6, -1.3238084643 AS sv_7, -3.21432536898 AS sv_8, -1.42699307117 AS sv_9 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, -1.11676720229 AS sv_0, -0.835426091122 AS sv_1, -0.0752342345292 AS sv_2, -0.0617923604462 AS sv_3, -0.238328468935 AS sv_4, 0.837169779108 AS sv_5, -0.421591093113 AS sv_6, -0.184390042189 AS sv_7, 1.89088008792 AS sv_8, -0.571572822214 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, -1.87242981492 AS sv_0, 0.232606080134 AS sv_1, -0.894535978974 AS sv_2, -0.299115531028 AS sv_3, 1.54962241527 AS sv_4, -0.864353265702 AS sv_5, -0.305826288984 AS sv_6, -1.0352128513 AS sv_7, 1.10211909474 AS sv_8, -0.992983960062 AS sv_9 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, -0.621670948285 AS sv_0, -1.08544294223 AS sv_1, 0.582083579955 AS sv_2, 0.100544977531 AS sv_3, 0.43960632619 AS sv_4, -0.19034898785 AS sv_5, 0.04810468854 AS sv_6, 2.0049634006 AS sv_7, -0.227173516972 AS sv_8, -1.11184813552 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, -1.50468566473 AS sv_0, 1.05656624515 AS sv_1, -1.68414245979 AS sv_2, 0.909494568885 AS sv_3, 0.0763182713346 AS sv_4, -1.22848069592 AS sv_5, -0.399921907262 AS sv_6, -0.483063364287 AS sv_7, -0.536867892235 AS sv_8, 0.835603640564 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, 0.489812076943 AS sv_0, 1.23839247097 AS sv_1, -0.669995798721 AS sv_2, -1.53014792161 AS sv_3, -0.973512989014 AS sv_4, -1.03628719579 AS sv_5, -0.853953084404 AS sv_6, -0.843599177687 AS sv_7, -0.566817234138 AS sv_8, -0.42464507762 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 0.560038146858 AS dual_coeff, 1.04577695227 AS sv_0, 0.202437721977 AS sv_1, 0.589095857444 AS sv_2, -1.13458757668 AS sv_3, 1.08860543126 AS sv_4, 0.819541903222 AS sv_5, 0.148063531029 AS sv_6, -0.771196790768 AS sv_7, -0.973510291222 AS sv_8, -0.493606699045 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, -0.533344258752 AS sv_0, -0.791051679997 AS sv_1, 2.70246133372 AS sv_2, -0.659703860313 AS sv_3, -0.387204668438 AS sv_4, -0.325505150345 AS sv_5, -1.3564098144 AS sv_6, -0.597059797857 AS sv_7, 0.301261057969 AS sv_8, 0.0152723893944 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, -0.78125149937 AS sv_0, -1.16434694096 AS sv_1, -0.322720001329 AS sv_2, -0.573709529326 AS sv_3, -0.224264532087 AS sv_4, 1.44669395661 AS sv_5, 0.838418106393 AS sv_6, 2.10695945969 AS sv_7, 0.419481014515 AS sv_8, 0.938578289417 AS sv_9 UNION ALL SELECT 27 AS sv_idx, -1.0 AS dual_coeff, -0.160073289385 AS sv_0, 1.2118333433 AS sv_1, 1.32780160653 AS sv_2, 0.211701502268 AS sv_3, 1.88175292642 AS sv_4, 0.161785125557 AS sv_5, -1.00179941573 AS sv_6, -1.44509362057 AS sv_7, -0.721242953714 AS sv_8, -0.99138251535 AS sv_9 UNION ALL SELECT 28 AS sv_idx, -1.0 AS dual_coeff, 0.688851498068 AS sv_0, -0.541561126779 AS sv_1, -0.358835001636 AS sv_2, 1.18592688841 AS sv_3, -0.50124817072 AS sv_4, -0.932145956544 AS sv_5, -0.230058029979 AS sv_6, -0.725961738524 AS sv_7, -0.060253424836 AS sv_8, 0.926138508976 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, -0.236421278402 AS sv_0, 0.898414992263 AS sv_1, 0.356450445115 AS sv_2, 0.765285239169 AS sv_3, -0.530544273268 AS sv_4, 2.06858658532 AS sv_5, -1.00459959585 AS sv_6, 0.707569329622 AS sv_7, 0.901712675497 AS sv_8, -0.329555664196 AS sv_9 UNION ALL SELECT 30 AS sv_idx, -1.0 AS dual_coeff, -1.74077721338 AS sv_0, 0.279551482446 AS sv_1, 0.893961399049 AS sv_2, -0.469751626176 AS sv_3, -0.407501899909 AS sv_4, -0.967037123277 AS sv_5, 0.104885009085 AS sv_6, 0.783656498867 AS sv_7, -0.38603895882 AS sv_8, -0.0867916995943 AS sv_9 UNION ALL SELECT 31 AS sv_idx, -1.0 AS dual_coeff, -0.142364139843 AS sv_0, -0.097222824002 AS sv_1, -0.518195709893 AS sv_2, -0.608426703255 AS sv_3, 1.17093347319 AS sv_4, 1.07658209074 AS sv_5, -1.10104642382 AS sv_6, 0.142413801836 AS sv_7, -0.58010176487 AS sv_8, -1.53724977581 AS sv_9 UNION ALL SELECT 32 AS sv_idx, -1.0 AS dual_coeff, -0.888690821061 AS sv_0, -1.86854500155 AS sv_1, 0.28621957394 AS sv_2, -0.6792981594 AS sv_3, 0.163808976989 AS sv_4, -0.865133242578 AS sv_5, -0.43988328119 AS sv_6, -1.47268745608 AS sv_7, 1.89476687536 AS sv_8, 1.18742509003 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, 0.693822104354 AS sv_0, 0.564003754079 AS sv_1, 1.17653636995 AS sv_2, -1.13560063435 AS sv_3, 0.101671961417 AS sv_4, 0.878709887843 AS sv_5, -0.15903620338 AS sv_6, -1.13115047684 AS sv_7, 0.276829213351 AS sv_8, -1.24379873784 AS sv_9 UNION ALL SELECT 34 AS sv_idx, -1.0 AS dual_coeff, 0.683862325656 AS sv_0, -0.611313588943 AS sv_1, 1.2780200154 AS sv_2, -1.10247055633 AS sv_3, -1.11199683025 AS sv_4, -1.80409242487 AS sv_5, -0.103379354867 AS sv_6, -0.909873246865 AS sv_7, -0.956882784309 AS sv_8, 0.332872462799 AS sv_9 UNION ALL SELECT 35 AS sv_idx, -1.0 AS dual_coeff, 0.408385543482 AS sv_0, 1.02828585848 AS sv_1, -0.354703635087 AS sv_2, -0.590416004519 AS sv_3, -0.216235616846 AS sv_4, -1.06913092317 AS sv_5, -1.52729442251 AS sv_6, -1.25832287767 AS sv_7, -0.71627211007 AS sv_8, -0.493805503378 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, -1.45661648949 AS sv_0, -0.177895598557 AS sv_1, 0.648088640508 AS sv_2, -0.772650152193 AS sv_3, -0.0164977264655 AS sv_4, 2.33757751351 AS sv_5, -0.796679865574 AS sv_6, 0.85448922781 AS sv_7, 0.437866807473 AS sv_8, 0.762798465909 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, 0.121467483039 AS sv_0, 0.778524487379 AS sv_1, 0.299623097478 AS sv_2, -0.169860681656 AS sv_3, 0.57737912163 AS sv_4, 0.706522877013 AS sv_5, 1.14078902619 AS sv_6, 0.745568037624 AS sv_7, -0.497874704154 AS sv_8, -0.0348484604146 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, -2.17748910911 AS sv_0, 0.758956162102 AS sv_1, 0.562702974982 AS sv_2, -1.15265972974 AS sv_3, 0.30827492285 AS sv_4, 0.557702227531 AS sv_5, 0.410970166515 AS sv_6, 0.171271884749 AS sv_7, 0.17771655143 AS sv_8, -0.422411339173 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, 0.718762043166 AS sv_0, -1.67389838315 AS sv_1, 1.39017514053 AS sv_2, -0.963005096539 AS sv_3, -0.179482512314 AS sv_4, -0.752728668457 AS sv_5, 0.604709623267 AS sv_6, -0.33694133079 AS sv_7, 0.666794290786 AS sv_8, -0.0570266988842 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, -1.07938111237 AS sv_0, -1.51141184887 AS sv_1, 1.18235854266 AS sv_2, -0.949191081488 AS sv_3, 0.446064999631 AS sv_4, -0.117081816676 AS sv_5, 1.61201745163 AS sv_6, -0.37591926127 AS sv_7, 0.816777108736 AS sv_8, 0.111387384245 AS sv_9 UNION ALL SELECT 41 AS sv_idx, 1.0 AS dual_coeff, -0.499298477259 AS sv_0, 1.37883444805 AS sv_1, 1.90424310562 AS sv_2, -0.321797236202 AS sv_3, -0.100780555201 AS sv_4, 0.757881534464 AS sv_5, -0.688575595095 AS sv_6, -0.104368046704 AS sv_7, -1.10413884201 AS sv_8, 0.325718265831 AS sv_9 UNION ALL SELECT 42 AS sv_idx, -1.0 AS dual_coeff, -0.0796530562316 AS sv_0, 1.36067287043 AS sv_1, -0.0256614826818 AS sv_2, 0.49875514513 AS sv_3, 0.506388534681 AS sv_4, -0.820112404366 AS sv_5, -0.174466074071 AS sv_6, -1.04143499867 AS sv_7, -0.357472079494 AS sv_8, 2.77241873089 AS sv_9 UNION ALL SELECT 43 AS sv_idx, -1.0 AS dual_coeff, -1.10472394553 AS sv_0, 2.83672634772 AS sv_1, -2.02089801156 AS sv_2, -0.00427256628328 AS sv_3, -0.259124792385 AS sv_4, -0.0900206291389 AS sv_5, -0.0943847063741 AS sv_6, 1.19065808699 AS sv_7, 0.429810882312 AS sv_8, 0.621308929484 AS sv_9 UNION ALL SELECT 44 AS sv_idx, -1.0 AS dual_coeff, -0.867397999554 AS sv_0, 0.416515149446 AS sv_1, -2.28508224049 AS sv_2, -0.733739999128 AS sv_3, -0.629275044015 AS sv_4, 0.865918943091 AS sv_5, 0.0407539935713 AS sv_6, 0.287733003598 AS sv_7, -0.0800590355186 AS sv_8, 0.0900569576472 AS sv_9 UNION ALL SELECT 45 AS sv_idx, -1.0 AS dual_coeff, 0.531517132145 AS sv_0, 1.25505917026 AS sv_1, -0.88488394125 AS sv_2, -1.03374127484 AS sv_3, 1.01097767735 AS sv_4, -0.0458896082283 AS sv_5, -2.48567660954 AS sv_6, 0.846580097329 AS sv_7, 0.171135400439 AS sv_8, 0.372633922365 AS sv_9 UNION ALL SELECT 46 AS sv_idx, -1.0 AS dual_coeff, -0.611122860519 AS sv_0, -1.24879140738 AS sv_1, -0.751144521414 AS sv_2, 0.38068995076 AS sv_3, 1.13485257011 AS sv_4, -0.285533137977 AS sv_5, -0.608235191871 AS sv_6, -0.360550418288 AS sv_7, 0.1307909024 AS sv_8, 0.0744608307739 AS sv_9 UNION ALL SELECT 47 AS sv_idx, -1.0 AS dual_coeff, 0.151707518634 AS sv_0, 1.23759517285 AS sv_1, 0.833834879097 AS sv_2, 0.179909352473 AS sv_3, -0.208112940484 AS sv_4, -1.06745218088 AS sv_5, -1.97319551864 AS sv_6, 0.535218285927 AS sv_7, 0.447627605542 AS sv_8, 0.871400310242 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 1.0 AS dual_coeff, 0.0182889493922 AS sv_0, 0.42799095674 AS sv_1, 0.938590004375 AS sv_2, 0.252943438724 AS sv_3, 1.49707534343 AS sv_4, 0.681720973341 AS sv_5, 0.395757887853 AS sv_6, 0.495677533594 AS sv_7, -0.831154367328 AS sv_8, 1.23525670015 AS sv_9 UNION ALL SELECT 49 AS sv_idx, 1.0 AS dual_coeff, 0.873493057192 AS sv_0, -1.20262190859 AS sv_1, -1.56760260506 AS sv_2, 1.57924204203 AS sv_3, -1.00275940419 AS sv_4, 0.0557738334226 AS sv_5, 0.246377463301 AS sv_6, 1.63875612498 AS sv_7, 1.16092348498 AS sv_8, 0.257096455322 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 1.0 AS dual_coeff, -0.362100180053 AS sv_0, 0.0744824259 AS sv_1, -0.451614739262 AS sv_2, -0.758655469377 AS sv_3, 0.546526748455 AS sv_4, -1.21549730644 AS sv_5, 1.64609610851 AS sv_6, 1.14534093807 AS sv_7, -0.0496330130885 AS sv_8, -0.579207158931 AS sv_9 UNION ALL SELECT 51 AS sv_idx, 1.0 AS dual_coeff, 1.49368769805 AS sv_0, -1.54498556816 AS sv_1, 1.22049325983 AS sv_2, 0.888291084999 AS sv_3, -0.804702035181 AS sv_4, -1.85344151772 AS sv_5, 0.535686853264 AS sv_6, 1.68028796339 AS sv_7, 1.26170886541 AS sv_8, 0.0741386717351 AS sv_9 UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, -0.723023568486 AS sv_0, -1.83768246141 AS sv_1, -0.933296080577 AS sv_2, -1.04749437709 AS sv_3, 0.020631765336 AS sv_4, 0.600915328782 AS sv_5, 1.26261962138 AS sv_6, 1.57681712932 AS sv_7, -0.061154502745 AS sv_8, 1.42550373585 AS sv_9 UNION ALL SELECT 53 AS sv_idx, 1.0 AS dual_coeff, -0.234100969047 AS sv_0, 0.470339411344 AS sv_1, -0.0138659639905 AS sv_2, 2.4083316523 AS sv_3, -1.18514876796 AS sv_4, -0.333254617478 AS sv_5, 2.17421627069 AS sv_6, -0.214805415293 AS sv_7, 1.07863512314 AS sv_8, 0.607349572342 AS sv_9 UNION ALL SELECT 54 AS sv_idx, 1.0 AS dual_coeff, -0.67749880134 AS sv_0, -1.82928563162 AS sv_1, 0.228767394834 AS sv_2, 1.36515211971 AS sv_3, -0.484465475733 AS sv_4, -0.157525512898 AS sv_5, 0.336742696042 AS sv_6, 0.528045016757 AS sv_7, 0.0248451372153 AS sv_8, 0.0396007344292 AS sv_9 UNION ALL SELECT 55 AS sv_idx, 1.0 AS dual_coeff, -0.354925746387 AS sv_0, 1.28203569588 AS sv_1, 0.950451456927 AS sv_2, -1.13481645253 AS sv_3, -1.75038950119 AS sv_4, -0.798950105127 AS sv_5, 1.73789808153 AS sv_6, 0.319033951923 AS sv_7, 0.973049243688 AS sv_8, -1.01629060033 AS sv_9 UNION ALL SELECT 56 AS sv_idx, 1.0 AS dual_coeff, 0.870327509149 AS sv_0, 0.183285629221 AS sv_1, 2.18837687379 AS sv_2, 1.80759040957 AS sv_3, 0.408350367731 AS sv_4, 0.91812636992 AS sv_5, -0.185004758103 AS sv_6, -0.170845232106 AS sv_7, 0.354346350813 AS sv_8, -0.159747310061 AS sv_9 UNION ALL SELECT 57 AS sv_idx, 1.0 AS dual_coeff, -0.446113192717 AS sv_0, -0.257537848712 AS sv_1, 0.695633123514 AS sv_2, 0.490600982981 AS sv_3, 0.267649166299 AS sv_4, -0.574932760879 AS sv_5, 0.179596020644 AS sv_6, 0.703705614019 AS sv_7, 1.09264092356 AS sv_8, -0.880946454905 AS sv_9 UNION ALL SELECT 58 AS sv_idx, 1.0 AS dual_coeff, -0.0573518735026 AS sv_0, 0.135766973846 AS sv_1, 0.335500320387 AS sv_2, 1.01216576854 AS sv_3, -0.0524710206989 AS sv_4, 0.188359796208 AS sv_5, 0.685818167205 AS sv_6, 0.718670252068 AS sv_7, -0.30101650033 AS sv_8, -1.42701364778 AS sv_9 UNION ALL SELECT 59 AS sv_idx, -1.0 AS dual_coeff, 0.707043796337 AS sv_0, -0.418810837711 AS sv_1, 0.721084681511 AS sv_2, -0.943567857665 AS sv_3, 0.752222840555 AS sv_4, 0.164411966277 AS sv_5, 0.418710988307 AS sv_6, 0.506599101813 AS sv_7, -2.2929062382 AS sv_8, 1.33296510909 AS sv_9 UNION ALL SELECT 60 AS sv_idx, -1.0 AS dual_coeff, -1.49499077981 AS sv_0, 0.695704908323 AS sv_1, -0.719444913067 AS sv_2, 0.408077401566 AS sv_3, -1.25158780554 AS sv_4, 0.777944879029 AS sv_5, -0.556378295479 AS sv_6, -0.668339133075 AS sv_7, -0.218580400638 AS sv_8, -0.33283774343 AS sv_9 UNION ALL SELECT 61 AS sv_idx, -1.0 AS dual_coeff, -2.07918346383 AS sv_0, -1.62880409058 AS sv_1, 1.0799833572 AS sv_2, -0.255932756498 AS sv_3, 0.478529989725 AS sv_4, 0.0938892309941 AS sv_5, -1.03451132118 AS sv_6, -0.56534987561 AS sv_7, 0.396544599673 AS sv_8, -0.927678702046 AS sv_9 UNION ALL SELECT 62 AS sv_idx, -1.0 AS dual_coeff, -0.967135247313 AS sv_0, -2.41077239618 AS sv_1, -2.31218475888 AS sv_2, 1.32912981189 AS sv_3, -1.07216375047 AS sv_4, 1.61915279938 AS sv_5, 0.980718556054 AS sv_6, -0.677606533816 AS sv_7, -0.275471631992 AS sv_8, -0.0396303921355 AS sv_9 UNION ALL SELECT 63 AS sv_idx, -1.0 AS dual_coeff, 1.0769223823 AS sv_0, -1.64240976624 AS sv_1, -0.225723444803 AS sv_2, 0.722554376961 AS sv_3, -1.22338021085 AS sv_4, 0.0751774010109 AS sv_5, -0.542521591411 AS sv_6, -1.58385310676 AS sv_7, -0.135265117869 AS sv_8, -0.132030336334 AS sv_9 UNION ALL SELECT 64 AS sv_idx, -1.0 AS dual_coeff, 1.24010957318 AS sv_0, -0.360634302898 AS sv_1, -2.25530260641 AS sv_2, 0.717004382548 AS sv_3, -0.509061276142 AS sv_4, -1.46416342275 AS sv_5, 0.490361197827 AS sv_6, 1.42087382333 AS sv_7, 0.0237265557517 AS sv_8, -1.71268858719 AS sv_9 UNION ALL SELECT 65 AS sv_idx, -1.0 AS dual_coeff, -0.369178350951 AS sv_0, -0.542487754476 AS sv_1, 0.322028867813 AS sv_2, 0.425930354208 AS sv_3, -1.44059028339 AS sv_4, 0.457028657931 AS sv_5, 0.0269380330571 AS sv_6, 1.39206745645 AS sv_7, -1.57138881238 AS sv_8, 0.535135836614 AS sv_9 UNION ALL SELECT 66 AS sv_idx, 1.0 AS dual_coeff, 0.912567920195 AS sv_0, 1.11872917216 AS sv_1, -0.513636780373 AS sv_2, -0.397528422226 AS sv_3, 0.223296109231 AS sv_4, -0.666917550561 AS sv_5, 1.62699966107 AS sv_6, -1.77696758243 AS sv_7, -0.206614063884 AS sv_8, -0.127904503912 AS sv_9) AS "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + -9.004819383 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * exp(-0.1 * (power("ADS"."Feature_0" - "SV_data".sv_0, 2) + power("ADS"."Feature_1" - "SV_data".sv_1, 2) + power("ADS"."Feature_2" - "SV_data".sv_2, 2) + power("ADS"."Feature_3" - "SV_data".sv_3, 2) + power("ADS"."Feature_4" - "SV_data".sv_4, 2) + power("ADS"."Feature_5" - "SV_data".sv_5, 2) + power("ADS"."Feature_6" - "SV_data".sv_6, 2) + power("ADS"."Feature_7" - "SV_data".sv_7, 2) + power("ADS"."Feature_8" - "SV_data".sv_8, 2) + power("ADS"."Feature_9" - "SV_data".sv_9, 2))) AS dot_prod1 
FROM "RandomReg_10" AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_cte."KEY" AS "KEY", kernel_cte.dot_product AS "Estimator" 
FROM kernel_cte