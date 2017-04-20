-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data_0" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, 0.216257125629 AS dual_coeff, -0.58193014848 AS sv_0, 1.89799498741 AS sv_1, -0.167944031206 AS sv_2, 1.45847781285 AS sv_3, -1.81098442128 AS sv_4, 0.990290249859 AS sv_5, 2.2706395347 AS sv_6, -0.832990031766 AS sv_7, -1.26273408219 AS sv_8, -0.287096267378 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 0.641368697709 AS dual_coeff, -0.676301394815 AS sv_0, 0.729048079484 AS sv_1, 3.78902466075 AS sv_2, -2.84371417382 AS sv_3, -1.52429618617 AS sv_4, -1.1410480776 AS sv_5, 0.35106511028 AS sv_6, -1.02230090807 AS sv_7, -0.856099311868 AS sv_8, -2.26478009315 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 0.566909390069 AS dual_coeff, -0.217048148498 AS sv_0, 1.85815893609 AS sv_1, 0.0990331468146 AS sv_2, 1.79001669161 AS sv_3, 1.32417247533 AS sv_4, 4.07750673375 AS sv_5, 0.18017351876 AS sv_6, 1.46151655009 AS sv_7, -2.50756722677 AS sv_8, -1.97130008937 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 0.725645062209 AS dual_coeff, -1.1543693384 AS sv_0, 0.40084799227 AS sv_1, 1.69158120325 AS sv_2, -0.394489513247 AS sv_3, -0.374530145337 AS sv_4, 1.16343244753 AS sv_5, 1.26070070066 AS sv_6, -1.22764323488 AS sv_7, -2.13280034153 AS sv_8, -1.24068365829 AS sv_9 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 0.281694198311 AS sv_0, -0.208361356647 AS sv_1, -1.51848194023 AS sv_2, 2.44778123678 AS sv_3, 1.21312798879 AS sv_4, 3.07360748344 AS sv_5, -0.841328225913 AS sv_6, 0.0923382880588 AS sv_7, -1.86790616125 AS sv_8, 0.142819820839 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 0.416403008645 AS dual_coeff, -0.374598707317 AS sv_0, 0.126743867226 AS sv_1, -1.02290216038 AS sv_2, 2.02756156589 AS sv_3, 0.0195471528451 AS sv_4, 2.11716067065 AS sv_5, 1.08287806088 AS sv_6, 0.571407293551 AS sv_7, -2.66475776383 AS sv_8, 1.01109815667 AS sv_9 UNION ALL SELECT 6 AS sv_idx, 0.953609561811 AS dual_coeff, 1.72776971198 AS sv_0, -1.98623624457 AS sv_1, 1.21092724583 AS sv_2, -1.07234570228 AS sv_3, -1.16558012188 AS sv_4, -1.10532807215 AS sv_5, 1.0358021766 AS sv_6, 0.711853329916 AS sv_7, 0.352321853282 AS sv_8, -0.636541397547 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 0.584132231474 AS dual_coeff, 0.700143324198 AS sv_0, -0.161433167438 AS sv_1, 0.0122681236061 AS sv_2, 1.3518077425 AS sv_3, -0.508398764809 AS sv_4, 1.98163848659 AS sv_5, -0.903292158379 AS sv_6, 1.05167020863 AS sv_7, -0.497325710517 AS sv_8, -1.81381825763 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 0.654640927213 AS dual_coeff, -0.96208741533 AS sv_0, 0.0980407378393 AS sv_1, 2.21403517566 AS sv_2, -1.94087424305 AS sv_3, -1.38398640886 AS sv_4, -1.47409629322 AS sv_5, -0.788074982063 AS sv_6, 0.784864952026 AS sv_7, 0.219379743849 AS sv_8, -1.19659601446 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 0.0 AS dual_coeff, 0.765819727785 AS sv_0, -0.389648326586 AS sv_1, 2.19719891543 AS sv_2, -1.23537635396 AS sv_3, -0.974938374336 AS sv_4, -0.0404355878058 AS sv_5, 0.599159903062 AS sv_6, 1.78112820256 AS sv_7, -1.42629257913 AS sv_8, -1.21855111024 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 0.670881379155 AS dual_coeff, 0.835820246773 AS sv_0, 0.496679495821 AS sv_1, 2.56749482588 AS sv_2, -2.47963243662 AS sv_3, -2.2872801122 AS sv_4, -2.59018920129 AS sv_5, -0.657433701731 AS sv_6, -0.305814512604 AS sv_7, 0.152921539489 AS sv_8, -0.550438512146 AS sv_9 UNION ALL SELECT 11 AS sv_idx, 0.182015749871 AS dual_coeff, 0.493767656701 AS sv_0, -0.867242665063 AS sv_1, 0.024058389595 AS sv_2, 1.12175752073 AS sv_3, -2.2400768739 AS sv_4, 0.383629188233 AS sv_5, -0.808666392917 AS sv_6, -0.113485447478 AS sv_7, -0.319475560785 AS sv_8, -0.732604722457 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 0.414253515407 AS dual_coeff, 0.421074024974 AS sv_0, -0.638748576093 AS sv_1, 2.40707287636 AS sv_2, -2.51087163108 AS sv_3, -2.44179156867 AS sv_4, -2.95725149524 AS sv_5, 0.893443752504 AS sv_6, -0.696896315746 AS sv_7, 0.2379024128 AS sv_8, -0.113726072645 AS sv_9 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, -0.444528135905 AS sv_0, 0.823554460887 AS sv_1, 1.85442338242 AS sv_2, -1.22007307465 AS sv_3, -0.762890663236 AS sv_4, -0.272678218859 AS sv_5, 0.0720968052652 AS sv_6, 1.31463981372 AS sv_7, -0.407995819678 AS sv_8, -1.42249788812 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 0.879244790889 AS dual_coeff, 0.530404013726 AS sv_0, 0.2791561558 AS sv_1, 1.1173325611 AS sv_2, -0.201395834771 AS sv_3, -0.644402438399 AS sv_4, 0.595043894142 AS sv_5, 1.08744586022 AS sv_6, 0.183543703518 AS sv_7, -1.28864871239 AS sv_8, -0.837732175685 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 0.670255283087 AS dual_coeff, 0.421081749393 AS sv_0, -0.143730853504 AS sv_1, 1.10078109623 AS sv_2, 0.452573533422 AS sv_3, -0.385919366227 AS sv_4, 1.96302004626 AS sv_5, 1.44805689972 AS sv_6, 0.104667506934 AS sv_7, 0.963543319028 AS sv_8, -4.06329303786 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 0.887192992584 AS dual_coeff, -3.34446762166 AS sv_0, -0.383844899809 AS sv_1, 0.378317539352 AS sv_2, 0.713845013253 AS sv_3, 1.84134510001 AS sv_4, 2.98173651892 AS sv_5, -0.500677251341 AS sv_6, -0.235862795568 AS sv_7, -1.21303081291 AS sv_8, -2.04015029254 AS sv_9 UNION ALL SELECT 17 AS sv_idx, 0.700961462924 AS dual_coeff, -0.00125061956439 AS sv_0, -0.627609213715 AS sv_1, 0.237044169277 AS sv_2, 0.912412483645 AS sv_3, -1.18087686388 AS sv_4, 1.00094052378 AS sv_5, 0.832259387208 AS sv_6, -2.15465448563 AS sv_7, -1.57161172953 AS sv_8, -0.286524375019 AS sv_9) AS "Values"), 
kernel_cte_0 AS 
(SELECT t_1."KEY" AS "KEY_0", t_1.dot_product AS "Score_0" 
FROM (SELECT full_join_data_sv_1."KEY" AS "KEY", sum(full_join_data_sv_1.dot_prod1) + 0.245903482864 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data_0".dual_coeff * exp(-0.1 * (power("ADS"."Feature_0" - "SV_data_0".sv_0, 2) + power("ADS"."Feature_1" - "SV_data_0".sv_1, 2) + power("ADS"."Feature_2" - "SV_data_0".sv_2, 2) + power("ADS"."Feature_3" - "SV_data_0".sv_3, 2) + power("ADS"."Feature_4" - "SV_data_0".sv_4, 2) + power("ADS"."Feature_5" - "SV_data_0".sv_5, 2) + power("ADS"."Feature_6" - "SV_data_0".sv_6, 2) + power("ADS"."Feature_7" - "SV_data_0".sv_7, 2) + power("ADS"."Feature_8" - "SV_data_0".sv_8, 2) + power("ADS"."Feature_9" - "SV_data_0".sv_9, 2))) AS dot_prod1 
FROM "FourClass_10" AS "ADS", "SV_data_0") AS full_join_data_sv_1 GROUP BY full_join_data_sv_1."KEY") AS t_1), 
"SV_data_1" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.10269016603 AS dual_coeff, 0.412869895295 AS sv_0, 0.867198698196 AS sv_1, 0.610890484557 AS sv_2, -0.349167686148 AS sv_3, 0.636919024944 AS sv_4, 0.63612785752 AS sv_5, -0.953277075281 AS sv_6, -1.61507192084 AS sv_7, 0.119941797988 AS sv_8, -1.21736756952 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, 0.95450041686 AS sv_0, 2.04524137625 AS sv_1, -0.801794548551 AS sv_2, 1.65006348354 AS sv_3, 3.30268805287 AS sv_4, 4.10089381868 AS sv_5, -2.47688294564 AS sv_6, -1.44874575447 AS sv_7, -1.52611142211 AS sv_8, -1.40625983409 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.991885948831 AS dual_coeff, 1.08140756197 AS sv_0, -0.0900160760736 AS sv_1, -1.15513911099 AS sv_2, 1.04656996563 AS sv_3, 3.27319462224 AS sv_4, 2.59638994635 AS sv_5, -0.547182835307 AS sv_6, -0.934994705485 AS sv_7, -1.01656052436 AS sv_8, 0.099515987965 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 0.446552951461 AS sv_0, 0.181460799833 AS sv_1, 1.95715555688 AS sv_2, -2.31489891389 AS sv_3, -0.252820023928 AS sv_4, -1.68229510367 AS sv_5, 0.178053905431 AS sv_6, 0.707160568797 AS sv_7, -0.586665987889 AS sv_8, 0.235862784246 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, -0.274840179323 AS sv_0, 1.88286324924 AS sv_1, 1.5703475627 AS sv_2, -1.66677214264 AS sv_3, -1.02354354402 AS sv_4, -1.61523443813 AS sv_5, 0.0293974822964 AS sv_6, 0.179788166581 AS sv_7, -0.98093935796 AS sv_8, 0.682991973697 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -0.625091727186 AS dual_coeff, 0.820209088793 AS sv_0, -1.46961086304 AS sv_1, 0.712414403928 AS sv_2, -0.056306415776 AS sv_3, 1.73105364231 AS sv_4, 2.00528262083 AS sv_5, -1.25450995105 AS sv_6, -0.0583131207301 AS sv_7, -1.0914546398 AS sv_8, -1.47576950121 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.748291001557 AS sv_0, -0.104389903914 AS sv_1, 1.36270597649 AS sv_2, -1.52290976362 AS sv_3, -0.0224808125933 AS sv_4, -0.85891485906 AS sv_5, 1.02006661817 AS sv_6, -0.869155493245 AS sv_7, 1.10661137207 AS sv_8, -1.38247469307 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, -0.137601644554 AS sv_0, -0.252302769681 AS sv_1, 0.4031490358 AS sv_2, 0.12841231226 AS sv_3, 0.803367533856 AS sv_4, 1.25332574905 AS sv_5, 0.517305138322 AS sv_6, -1.0897911326 AS sv_7, -1.6648502027 AS sv_8, -0.135813112379 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.243544666368 AS dual_coeff, 0.617182333619 AS sv_0, -0.580942221909 AS sv_1, 0.0571662157728 AS sv_2, -0.545068438947 AS sv_3, 1.33071832105 AS sv_4, 0.0927079473289 AS sv_5, -2.14283377404 AS sv_6, -0.867139465307 AS sv_7, 0.744406298383 AS sv_8, -0.433702795845 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -0.478355853039 AS dual_coeff, -0.314362407402 AS sv_0, -0.145978231427 AS sv_1, 1.62746472135 AS sv_2, -1.34646294591 AS sv_3, 2.52458607856 AS sv_4, 1.54562014481 AS sv_5, -0.335827380548 AS sv_6, -1.02083845388 AS sv_7, -0.0384299336836 AS sv_8, -2.57867978667 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -0.743724291452 AS dual_coeff, -0.0453204406004 AS sv_0, -0.600926787816 AS sv_1, 0.408218833184 AS sv_2, -0.333672687856 AS sv_3, 1.08417535917 AS sv_4, 0.659916927997 AS sv_5, -0.553833926151 AS sv_6, 0.265875546072 AS sv_7, -1.59802710057 AS sv_8, 0.49943848142 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -0.978478525771 AS dual_coeff, -0.175956358251 AS sv_0, -0.220720753552 AS sv_1, 2.34941947223 AS sv_2, -1.73863697437 AS sv_3, 0.494799977681 AS sv_4, 0.35285910894 AS sv_5, -1.50684892504 AS sv_6, -1.69504290303 AS sv_7, -0.452272994037 AS sv_8, -2.21865022092 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 0.0205614940009 AS sv_0, 3.43208496506 AS sv_1, 1.96878290599 AS sv_2, -1.12779107789 AS sv_3, 0.126385623281 AS sv_4, 0.645610993492 AS sv_5, -1.43662630972 AS sv_6, 0.334695261542 AS sv_7, -0.886531606854 AS sv_8, -1.87958289675 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, -0.8093004045 AS sv_0, -1.12731791858 AS sv_1, -0.813247304033 AS sv_2, 0.710606857754 AS sv_3, 0.396268420413 AS sv_4, 0.502363320568 AS sv_5, 1.45949606886 AS sv_6, 1.85332532495 AS sv_7, 1.24314837288 AS sv_8, -0.646183617661 AS sv_9) AS "Values"), 
kernel_cte_1 AS 
(SELECT t_2."KEY" AS "KEY_1", t_2.dot_product AS "Score_1" 
FROM (SELECT full_join_data_sv_2."KEY" AS "KEY", sum(full_join_data_sv_2.dot_prod1) + 0.254499199728 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data_1".dual_coeff * exp(-0.1 * (power("ADS"."Feature_0" - "SV_data_1".sv_0, 2) + power("ADS"."Feature_1" - "SV_data_1".sv_1, 2) + power("ADS"."Feature_2" - "SV_data_1".sv_2, 2) + power("ADS"."Feature_3" - "SV_data_1".sv_3, 2) + power("ADS"."Feature_4" - "SV_data_1".sv_4, 2) + power("ADS"."Feature_5" - "SV_data_1".sv_5, 2) + power("ADS"."Feature_6" - "SV_data_1".sv_6, 2) + power("ADS"."Feature_7" - "SV_data_1".sv_7, 2) + power("ADS"."Feature_8" - "SV_data_1".sv_8, 2) + power("ADS"."Feature_9" - "SV_data_1".sv_9, 2))) AS dot_prod1 
FROM "FourClass_10" AS "ADS", "SV_data_1") AS full_join_data_sv_2 GROUP BY full_join_data_sv_2."KEY") AS t_2), 
"SV_data_2" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.283794020348 AS dual_coeff, -1.84174393102 AS sv_0, -1.14874554264 AS sv_1, -0.675977485331 AS sv_2, 1.21642390099 AS sv_3, -0.442207875597 AS sv_4, 0.955069813227 AS sv_5, 0.714916799034 AS sv_6, 0.531215243764 AS sv_7, 0.970219488438 AS sv_8, -1.24659440727 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -0.278872464842 AS dual_coeff, -0.775759814154 AS sv_0, 0.518804821113 AS sv_1, -0.329696950096 AS sv_2, -0.808095400929 AS sv_3, 0.581957680012 AS sv_4, -1.43196602795 AS sv_5, 0.129647547199 AS sv_6, 1.47980927514 AS sv_7, -0.537249287698 AS sv_8, 2.42995989579 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.904333910368 AS dual_coeff, 0.702672810509 AS sv_0, 1.73008769006 AS sv_1, 0.0599108473653 AS sv_2, -0.410540244131 AS sv_3, -0.81988818729 AS sv_4, -1.21746270092 AS sv_5, 1.6405083682 AS sv_6, 0.710361614496 AS sv_7, -0.176519506971 AS sv_8, 1.15879337973 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, -0.886655041108 AS sv_0, -0.706756642594 AS sv_1, 1.68477458385 AS sv_2, -1.84561322486 AS sv_3, -1.10146617543 AS sv_4, -1.8273048884 AS sv_5, -1.98520649095 AS sv_6, 0.655706119587 AS sv_7, -0.830822507701 AS sv_8, 0.64733586389 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -0.737365764482 AS dual_coeff, -0.550375009172 AS sv_0, -1.1590343379 AS sv_1, -0.547093468193 AS sv_2, 1.34357715666 AS sv_3, -1.01410363529 AS sv_4, 0.959132203978 AS sv_5, 0.678303761095 AS sv_6, 2.17123454872 AS sv_7, 1.59898469127 AS sv_8, -2.04692980229 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -0.378866851588 AS dual_coeff, -0.368916458722 AS sv_0, -1.62664234814 AS sv_1, 1.10727339419 AS sv_2, -0.781764342817 AS sv_3, -1.33786043469 AS sv_4, -0.923603638149 AS sv_5, 0.22454229686 AS sv_6, 0.336320161172 AS sv_7, -1.64666020034 AS sv_8, 0.89063247451 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, -1.38193289357 AS sv_0, -1.42434788541 AS sv_1, 1.71773762223 AS sv_2, -1.16430612521 AS sv_3, -2.07388819033 AS sv_4, -1.29294227541 AS sv_5, 0.932813691876 AS sv_6, 1.98179943221 AS sv_7, -0.901276629974 AS sv_8, -0.136793911482 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.829114268553 AS dual_coeff, -0.328387293949 AS sv_0, -1.03922020104 AS sv_1, 0.88835230666 AS sv_2, -0.853395313266 AS sv_3, -1.08907666467 AS sv_4, -1.13554327219 AS sv_5, 1.86381433739 AS sv_6, -0.16663420703 AS sv_7, -1.07369626059 AS sv_8, 0.920361983659 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.951950289097 AS dual_coeff, 0.563130128298 AS sv_0, -1.00648468285 AS sv_1, 1.53059734519 AS sv_2, -1.8902812742 AS sv_3, -0.945207438633 AS sv_4, -1.98881752618 AS sv_5, 0.500288825501 AS sv_6, 2.03623221117 AS sv_7, -0.695560797015 AS sv_8, 0.898914937267 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, -0.331506859901 AS sv_0, 0.463917787268 AS sv_1, -0.55068910803 AS sv_2, 1.01962962721 AS sv_3, 0.19967358097 AS sv_4, 1.20692798903 AS sv_5, -0.553111518962 AS sv_6, 0.785346973203 AS sv_7, 0.323793974527 AS sv_8, -0.937125451954 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, 1.06546610675 AS sv_0, 0.408101202846 AS sv_1, -0.51400888842 AS sv_2, 0.995241592676 AS sv_3, -1.48136900519 AS sv_4, 0.0784053675573 AS sv_5, -0.344899046058 AS sv_6, 0.456957542965 AS sv_7, 1.87555659576 AS sv_8, -1.50179508289 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -0.885222008635 AS dual_coeff, 0.809545865679 AS sv_0, -1.04984604157 AS sv_1, -0.585481276736 AS sv_2, 0.883068719634 AS sv_3, -1.16372439394 AS sv_4, -0.025578350136 AS sv_5, 1.1993912945 AS sv_6, 0.0434729217562 AS sv_7, 0.624194968624 AS sv_8, -0.201848074732 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 1.79163019224 AS sv_0, -1.18540300538 AS sv_1, 4.42636767767 AS sv_2, -3.72298464977 AS sv_3, -2.76491332608 AS sv_4, -2.74546955086 AS sv_5, -1.37731866925 AS sv_6, -1.82507169512 AS sv_7, -1.73587531806 AS sv_8, -0.799665560987 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.0 AS dual_coeff, -1.6327355141 AS sv_0, -0.831386584835 AS sv_1, -0.538429677558 AS sv_2, 1.09829781222 AS sv_3, -0.744198361766 AS sv_4, 0.726584038294 AS sv_5, -0.209311531435 AS sv_6, 1.30511769633 AS sv_7, 1.31924901523 AS sv_8, -1.51015128183 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, -0.276775503272 AS sv_0, -0.463016915416 AS sv_1, -0.850577570281 AS sv_2, 1.29838025365 AS sv_3, 0.113074761522 AS sv_4, 1.21888474595 AS sv_5, 0.190927199663 AS sv_6, 0.259002379409 AS sv_7, -0.368201536489 AS sv_8, -0.0978010638004 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 1.71370457814 AS sv_0, 0.655603542389 AS sv_1, 3.20777229051 AS sv_2, -2.6194958959 AS sv_3, -2.89290417778 AS sv_4, -2.44919267746 AS sv_5, -0.665331250615 AS sv_6, 0.780470514069 AS sv_7, -0.314870979239 AS sv_8, -1.10480348972 AS sv_9) AS "Values"), 
kernel_cte_2 AS 
(SELECT t_3."KEY" AS "KEY_2", t_3.dot_product AS "Score_2" 
FROM (SELECT full_join_data_sv_3."KEY" AS "KEY", sum(full_join_data_sv_3.dot_prod1) + 0.124057286203 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data_2".dual_coeff * exp(-0.1 * (power("ADS"."Feature_0" - "SV_data_2".sv_0, 2) + power("ADS"."Feature_1" - "SV_data_2".sv_1, 2) + power("ADS"."Feature_2" - "SV_data_2".sv_2, 2) + power("ADS"."Feature_3" - "SV_data_2".sv_3, 2) + power("ADS"."Feature_4" - "SV_data_2".sv_4, 2) + power("ADS"."Feature_5" - "SV_data_2".sv_5, 2) + power("ADS"."Feature_6" - "SV_data_2".sv_6, 2) + power("ADS"."Feature_7" - "SV_data_2".sv_7, 2) + power("ADS"."Feature_8" - "SV_data_2".sv_8, 2) + power("ADS"."Feature_9" - "SV_data_2".sv_9, 2))) AS dot_prod1 
FROM "FourClass_10" AS "ADS", "SV_data_2") AS full_join_data_sv_3 GROUP BY full_join_data_sv_3."KEY") AS t_3), 
"SV_data_3" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.641756246466 AS dual_coeff, -0.139833241844 AS sv_0, 1.24645698905 AS sv_1, -0.298219860681 AS sv_2, 0.00754999779164 AS sv_3, -0.688061638897 AS sv_4, -0.852036194782 AS sv_5, -0.674022917236 AS sv_6, -1.81034409033 AS sv_7, 0.135768892617 AS sv_8, 0.906777949162 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -0.274617567088 AS dual_coeff, 0.8115256335 AS sv_0, -1.70508574118 AS sv_1, -1.41390649308 AS sv_2, 0.72450941697 AS sv_3, -1.229423039 AS sv_4, -1.38253036956 AS sv_5, 1.37809691056 AS sv_6, -0.751313878802 AS sv_7, 1.59394931404 AS sv_8, 1.23255454613 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.217564657114 AS dual_coeff, 0.0210405933839 AS sv_0, -0.444267109719 AS sv_1, -0.828438504917 AS sv_2, 0.149105993257 AS sv_3, 2.22916978263 AS sv_4, 0.815233994445 AS sv_5, -1.69382298141 AS sv_6, -0.560659262366 AS sv_7, 1.62284824201 AS sv_8, -0.808790792544 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -0.550795958813 AS dual_coeff, -0.557785676633 AS sv_0, -0.0746423453609 AS sv_1, -2.47546577162 AS sv_2, 0.737712371717 AS sv_3, -1.52162155521 AS sv_4, -2.87187002392 AS sv_5, -0.205265263526 AS sv_6, 0.356381395179 AS sv_7, 3.48300896388 AS sv_8, 2.2188925596 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, -1.6623278273 AS sv_0, -0.171788101097 AS sv_1, -1.25553362282 AS sv_2, 2.22671465686 AS sv_3, 0.225815699245 AS sv_4, 2.39867689569 AS sv_5, -1.14962560942 AS sv_6, -0.242702385504 AS sv_7, 0.085430841761 AS sv_8, -1.28190911922 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 0.0508097687362 AS sv_0, 0.418239459623 AS sv_1, -0.764363135729 AS sv_2, 1.4210628732 AS sv_3, -1.76498920461 AS sv_4, 0.223145054257 AS sv_5, -0.516524268032 AS sv_6, 0.243068394535 AS sv_7, -0.22886800995 AS sv_8, 0.270092534401 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -0.444418731931 AS dual_coeff, 1.45932026139 AS sv_0, -1.86895563938 AS sv_1, -1.16149270836 AS sv_2, 1.01384658554 AS sv_3, -1.24435775713 AS sv_4, -0.594135488662 AS sv_5, -0.625512933138 AS sv_6, 0.132945993478 AS sv_7, 0.763039979437 AS sv_8, 0.83640050111 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.594524515453 AS dual_coeff, -0.902216554626 AS sv_0, 0.158856166606 AS sv_1, -0.94002853152 AS sv_2, -0.0738108517687 AS sv_3, -2.66169442788 AS sv_4, -3.14626681317 AS sv_5, -1.40603599341 AS sv_6, -1.54125452247 AS sv_7, 2.11319090611 AS sv_8, 1.81913273742 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.3265863687 AS dual_coeff, 1.66193784546 AS sv_0, 0.976268578357 AS sv_1, -2.37023522028 AS sv_2, 2.20550596261 AS sv_3, 0.189867633761 AS sv_4, 0.925620602106 AS sv_5, 0.563970565428 AS sv_6, 0.108661197934 AS sv_7, 0.881790327508 AS sv_8, 0.712256619672 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -0.52864811381 AS dual_coeff, 1.54667908791 AS sv_0, -0.870371063116 AS sv_1, -1.7758325205 AS sv_2, 1.44205775645 AS sv_3, -1.64745534442 AS sv_4, -0.904370844851 AS sv_5, 1.93012520627 AS sv_6, 1.11295710429 AS sv_7, 1.5062905012 AS sv_8, 1.0576514237 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -0.272147798354 AS dual_coeff, 0.345108855924 AS sv_0, -0.128181671986 AS sv_1, -0.451599016801 AS sv_2, 0.410079492787 AS sv_3, -0.566703207851 AS sv_4, -0.275043168913 AS sv_5, -1.99551388862 AS sv_6, 0.0256327824936 AS sv_7, -0.0986422295858 AS sv_8, 0.678441335961 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -0.590728290471 AS dual_coeff, -1.60319634024 AS sv_0, 0.118079357288 AS sv_1, -0.919345645224 AS sv_2, 0.770100285383 AS sv_3, 0.317820390847 AS sv_4, 0.450274776964 AS sv_5, 0.880353744413 AS sv_6, 0.102798279646 AS sv_7, 2.35880066571 AS sv_8, -1.43095673028 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -0.975165403444 AS dual_coeff, 0.539246490137 AS sv_0, -1.46179659217 AS sv_1, -1.48403205829 AS sv_2, 1.85323111036 AS sv_3, 0.99156397783 AS sv_4, 2.00545063372 AS sv_5, -0.423360125643 AS sv_6, 0.437916991483 AS sv_7, 0.335707451449 AS sv_8, -0.65259139314 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.267545946443 AS dual_coeff, 0.138442363975 AS sv_0, -0.961635643567 AS sv_1, -1.08745816855 AS sv_2, 0.334639801045 AS sv_3, -2.93433429938 AS sv_4, -2.822729405 AS sv_5, -1.08469653383 AS sv_6, 0.561322432527 AS sv_7, 2.07091236386 AS sv_8, 1.59182751397 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, -0.0058207479098 AS sv_0, 0.632464748631 AS sv_1, -0.804168582491 AS sv_2, 1.98726295974 AS sv_3, -0.404872301476 AS sv_4, 2.07124672598 AS sv_5, -0.434824594175 AS sv_6, -2.39251597968 AS sv_7, -1.42868346811 AS sv_8, -0.292841348509 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -0.598986310607 AS dual_coeff, -0.396708385668 AS sv_0, 1.7185369043 AS sv_1, -0.749029055404 AS sv_2, 1.34847313845 AS sv_3, -0.694887657456 AS sv_4, 0.911135879828 AS sv_5, -1.10510452539 AS sv_6, 0.905308284558 AS sv_7, 0.962582711819 AS sv_8, -1.18530929949 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -0.877554922386 AS dual_coeff, 0.0858802702162 AS sv_0, -0.224536832658 AS sv_1, -1.14752341246 AS sv_2, 0.121145304167 AS sv_3, 3.96689645406 AS sv_4, 1.54732147923 AS sv_5, 0.254591809333 AS sv_6, 1.0459070929 AS sv_7, 0.626021278978 AS sv_8, 0.00924704198554 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -0.0 AS dual_coeff, -0.680470389873 AS sv_0, 0.422327878142 AS sv_1, -1.65150333496 AS sv_2, 0.737392415229 AS sv_3, -0.114773673333 AS sv_4, -0.884993128966 AS sv_5, 0.914456137733 AS sv_6, -0.0730551074606 AS sv_7, 1.46807785311 AS sv_8, 1.33470066617 AS sv_9) AS "Values"), 
kernel_cte_3 AS 
(SELECT t_4."KEY" AS "KEY_3", t_4.dot_product AS "Score_3" 
FROM (SELECT full_join_data_sv_4."KEY" AS "KEY", sum(full_join_data_sv_4.dot_prod1) + -0.112716646335 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data_3".dual_coeff * exp(-0.1 * (power("ADS"."Feature_0" - "SV_data_3".sv_0, 2) + power("ADS"."Feature_1" - "SV_data_3".sv_1, 2) + power("ADS"."Feature_2" - "SV_data_3".sv_2, 2) + power("ADS"."Feature_3" - "SV_data_3".sv_3, 2) + power("ADS"."Feature_4" - "SV_data_3".sv_4, 2) + power("ADS"."Feature_5" - "SV_data_3".sv_5, 2) + power("ADS"."Feature_6" - "SV_data_3".sv_6, 2) + power("ADS"."Feature_7" - "SV_data_3".sv_7, 2) + power("ADS"."Feature_8" - "SV_data_3".sv_8, 2) + power("ADS"."Feature_9" - "SV_data_3".sv_9, 2))) AS dot_prod1 
FROM "FourClass_10" AS "ADS", "SV_data_3") AS full_join_data_sv_4 GROUP BY full_join_data_sv_4."KEY") AS t_4), 
"OVR_Join_CTE" AS 
(SELECT kernel_cte_0."KEY_0" AS "KEY_0", kernel_cte_0."Score_0" AS "Score_0", kernel_cte_1."KEY_1" AS "KEY_1", kernel_cte_1."Score_1" AS "Score_1", kernel_cte_2."KEY_2" AS "KEY_2", kernel_cte_2."Score_2" AS "Score_2", kernel_cte_3."KEY_3" AS "KEY_3", kernel_cte_3."Score_3" AS "Score_3" 
FROM kernel_cte_0 LEFT OUTER JOIN kernel_cte_1 ON kernel_cte_0."KEY_0" = kernel_cte_1."KEY_1" LEFT OUTER JOIN kernel_cte_2 ON kernel_cte_2."KEY_2" = kernel_cte_1."KEY_1" LEFT OUTER JOIN kernel_cte_3 ON kernel_cte_3."KEY_3" = kernel_cte_2."KEY_2"), 
orig_cte AS 
(SELECT "OVR_Join_CTE"."KEY_0" AS "KEY", "OVR_Join_CTE"."Score_0" AS "Score_0", "OVR_Join_CTE"."Score_1" AS "Score_1", "OVR_Join_CTE"."Score_2" AS "Score_2", "OVR_Join_CTE"."Score_3" AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS FLOAT) AS "Decision" 
FROM "OVR_Join_CTE"), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", (SELECT max(score_class_union."LogProba") AS max_1 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_LogProba", (SELECT max(score_class_union."Proba") AS max_2 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Proba", (SELECT max(score_class_union."Score") AS max_3 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Score" 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max."max_LogProba" = score_class_union."LogProba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max."max_Proba" = score_class_union."Proba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max."max_Score" = score_class_union."Score" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Score" 
FROM score_max)
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte