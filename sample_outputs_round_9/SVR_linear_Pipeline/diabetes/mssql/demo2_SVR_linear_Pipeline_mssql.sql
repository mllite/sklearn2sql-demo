-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.0047225988377 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN -0.0073794958196 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN -6.24253146871e-05 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN -0.00643221528123 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN -0.00213184962584 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN -0.000838461125138 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.000444113651192 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN -0.0032531275266 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN -0.0029539764781 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN -0.000211620600092 ELSE [ADS].[Feature_9] END AS impter_11 
FROM diabetes AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 0.0047225988377) / 0.0488123078699 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - -0.0073794958196) / 0.0465126383467 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - -6.24253146871e-05) / 0.046971645538 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - -0.00643221528123) / 0.0474148680367 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - -0.00213184962584) / 0.0460146493101 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - -0.000838461125138) / 0.0459634748503 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 0.000444113651192) / 0.0423673337055 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - -0.0032531275266) / 0.0441563504693 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - -0.0029539764781) / 0.044965109506 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - -0.000211620600092) / 0.0487263122756 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
[SV_data] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3, [Values].sv_4 AS sv_4, [Values].sv_5 AS sv_5, [Values].sv_6 AS sv_6, [Values].sv_7 AS sv_7, [Values].sv_8 AS sv_8, [Values].sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, 1.0 AS dual_coeff, -1.25158376641 AS sv_0, -0.801118620915 AS sv_1, -0.245522358402 AS sv_2, -0.564830441009 AS sv_3, -0.974549522539 AS sv_4, -1.01866512048 AS sv_5, 0.0947978501039 AS sv_6, -0.820725783774 AS sv_7, -0.111762678478 AS sv_8, -1.80293393875 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, -2.29344268547 AS sv_0, -0.801118620915 AS sv_1, -1.64522926144 AS sv_2, -0.419607187786 AS sv_3, -1.90152689265 AS sv_4, -2.07467778565 AS sv_5, 0.616186025676 AS sv_6, -1.65641805643 AS sv_7, -0.881085999343 AS sv_8, -0.10278191764 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, -0.43298033 AS sv_0, -0.801118620915 AS sv_1, 1.15418454464 AS sv_2, 1.61351835735 AS sv_3, -0.675524564438 AS sv_4, -0.58944706947 AS sv_5, 0.181695879366 AS sv_6, -0.820725783774 AS sv_7, -0.537631718054 AS sv_8, -0.187789518696 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, -1.10274677797 AS sv_0, -0.801118620915 AS sv_1, 3.42584001023 AS sv_2, -0.855276947457 AS sv_3, -0.585817077008 AS sv_4, -0.412309461118 AS sv_5, -1.12177455956 AS sv_6, 0.85065876154 AS sv_7, 0.688766987151 AS sv_8, 0.237248486582 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, -0.209724847344 AS sv_0, -0.801118620915 AS sv_1, 0.511696130129 AS sv_2, 0.306509078334 AS sv_3, -0.705427060248 AS sv_4, -0.827901542251 AS sv_5, 0.529287996414 AS sv_6, -0.820725783774 AS sv_7, -0.290098065441 AS sv_8, -0.272797119751 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 0.757715577501 AS sv_0, -0.801118620915 AS sv_1, -0.176684313991 AS sv_2, -1.07311182729 AS sv_3, 0.221550309866 AS sv_4, -0.664389903773 AS sv_5, 3.57071902058 AS sv_6, -1.65641805643 AS sv_7, -1.71872290805 AS sv_8, -0.357804720807 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.534460094844 AS sv_0, -0.801118620915 AS sv_1, 0.855886352188 AS sv_2, 1.75874161057 AS sv_3, 0.430867780537 AS sv_4, 0.841279767218 AS sv_5, -0.687284413254 AS sv_6, 0.85065876154 AS sv_7, 0.0323670880333 AS sv_8, 2.44744611403 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, 0.832134071719 AS sv_0, 1.24825459538 AS sv_1, -0.75033468409 AS sv_2, 1.46829510412 AS sv_3, -0.0475721524252 AS sv_4, -0.0171563347949 AS sv_5, -0.252794266944 AS sv_6, 0.014966488883 AS sv_7, 0.411893159436 AS sv_8, 1.17233209819 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 0.608878589063 AS sv_0, 1.24825459538 AS sv_1, -0.199630328795 AS sv_2, 1.39568347751 AS sv_3, -0.735329556058 AS sv_4, -0.14660304859 AS sv_5, -1.81695879366 AS sv_6, 1.6863510342 AS sv_7, 0.310509140917 AS sv_8, -0.442812321862 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 0.730123399053 AS dual_coeff, -0.284143341563 AS sv_0, -0.801118620915 AS sv_1, 0.80999432258 AS sv_2, -0.710053694233 AS sv_3, -0.496109589577 AS sv_4, -0.0648472293512 AS sv_5, -1.0348765303 AS sv_6, 0.432812625212 AS sv_7, -0.0487340412652 AS sv_8, 0.577278890805 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, 0.683297083282 AS sv_0, 1.24825459538 AS sv_1, 1.31480664827 AS sv_2, 0.596955584781 AS sv_3, -0.914744530919 AS sv_4, -0.739332738075 AS sv_5, -1.0348765303 AS sv_6, 0.014966488883 AS sv_7, 0.508447496416 AS sv_8, -0.357804720807 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.757715577501 AS sv_0, -0.801118620915 AS sv_1, -0.176684313991 AS sv_2, -0.419607187786 AS sv_3, 0.580380259588 AS sv_4, 0.371183806592 AS sv_5, 1.65896237682 AS sv_6, -0.820725783774 AS sv_7, -1.00984405072 AS sv_8, -0.612827523974 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, 0.608878589063 AS sv_0, -0.801118620915 AS sv_1, 0.396966056109 AS sv_2, 1.3230718509 AS sv_3, 0.311257797296 AS sv_4, -1.16855078908 AS sv_5, -1.64316273513 AS sv_6, 1.6863510342 AS sv_7, 2.95861808103 AS sv_8, 0.152240885527 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.130225103368 AS dual_coeff, 0.832134071719 AS sv_0, -0.801118620915 AS sv_1, 1.10829251503 AS sv_2, -1.00050020068 AS sv_3, 1.41765014227 AS sv_4, 1.42719647177 AS sv_5, -0.252794266944 AS sv_6, 0.85065876154 AS sv_7, 0.893714885353 AS sv_8, 0.407263688694 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 1.35306353125 AS sv_0, 1.24825459538 AS sv_1, -0.360252432422 AS sv_2, 0.596955584781 AS sv_3, 0.99901520093 AS sv_4, 1.24324587848 AS sv_5, 0.876880113461 AS sv_6, 0.014966488883 AS sv_7, -1.4957227279 AS sv_8, -0.357804720807 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, -1.69809473172 AS sv_0, -0.801118620915 AS sv_1, -0.86506475811 AS sv_2, -1.58139321358 AS sv_3, -2.14074685913 AS sv_4, -2.43576598729 AS sv_5, 0.529287996414 AS sv_6, -1.65641805643 AS sv_7, -0.385516047085 AS sv_8, -1.03786552925 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, -0.656235812657 AS sv_0, -0.801118620915 AS sv_1, -0.383198447226 AS sv_2, -0.710053694233 AS sv_3, -0.0176696566151 AS sv_4, -0.22835886783 AS sv_5, 0.876880113461 AS sv_6, -0.820725783774 AS sv_7, -0.133215342862 AS sv_8, -1.12287313031 AS sv_9 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, 0.534460094844 AS sv_0, 1.24825459538 AS sv_1, -0.176684313991 AS sv_2, 0.233897451722 AS sv_3, 0.371062788917 AS sv_4, 0.61645126431 AS sv_5, 0.181695879366 AS sv_6, -0.110387352016 AS sv_7, -0.590983688366 AS sv_8, 1.17233209819 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, -1.17716527219 AS sv_0, -0.801118620915 AS sv_1, -0.268468373206 AS sv_2, -1.1457234539 AS sv_3, 0.0421353350052 AS sv_4, 0.19404619824 AS sv_5, 0.268593908628 AS sv_6, 0.014966488883 AS sv_7, -0.537631718054 AS sv_8, -1.03786552925 AS sv_9 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, -1.47483924906 AS sv_0, -0.801118620915 AS sv_1, -1.16336295056 AS sv_2, -0.419607187786 AS sv_3, -1.60250193455 AS sv_4, -1.7680934635 AS sv_5, 1.13757420125 AS sv_6, -1.65641805643 AS sv_7, -1.86533553815 AS sv_8, -2.14296434297 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, -1.54925774328 AS sv_0, -0.801118620915 AS sv_1, -0.0849002547747 AS sv_2, -0.710053694233 AS sv_3, -1.39318446388 AS sv_4, -1.6931506292 AS sv_5, 1.22447223051 AS sv_6, -1.65641805643 AS sv_7, -1.07742557095 AS sv_8, -0.697835125029 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -1.0 AS dual_coeff, 1.87399299078 AS sv_0, -0.801118620915 AS sv_1, 1.10829251503 AS sv_2, 1.80714936407 AS sv_3, 1.23823516741 AS sv_4, 0.814027827471 AS sv_5, -1.81695879366 AS sv_6, 3.27416635225 AS sv_7, 2.2595374925 AS sv_8, 1.25733969925 AS sv_9 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, -0.0608878589063 AS sv_0, -0.801118620915 AS sv_1, -1.3928230986 AS sv_2, 0.0160625718859 AS sv_3, -0.107377144045 AS sv_4, -0.405496476182 AS sv_5, 0.963778142723 AS sv_6, -0.820725783774 AS sv_7, -0.00777794393068 AS sv_8, 0.152240885527 AS sv_9 UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, 0.311204612188 AS sv_0, -0.801118620915 AS sv_1, 0.0986678636571 AS sv_2, 1.10523697106 AS sv_3, -0.346597110527 AS sv_4, -1.16855078908 AS sv_5, 1.48516631829 AS sv_6, -0.820725783774 AS sv_7, 0.703093957498 AS sv_8, 1.25733969925 AS sv_9 UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, 0.236786117969 AS sv_0, -0.801118620915 AS sv_1, -0.52087453605 AS sv_2, 0.887402091229 AS sv_3, -0.107377144045 AS sv_4, -0.0512212594779 AS sv_5, -0.339692296206 AS sv_6, 0.014966488883 AS sv_7, 0.411893159436 AS sv_8, 0.322256087638 AS sv_9 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 0.757715577501 AS sv_0, 1.24825459538 AS sv_1, 1.31480664827 AS sv_2, -0.710053694233 AS sv_3, -0.256889623096 AS sv_4, 0.15316828862 AS sv_5, -0.687284413254 AS sv_6, 0.014966488883 AS sv_7, -0.266929151928 AS sv_8, 0.237248486582 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 0.0527796548394 AS dual_coeff, 1.27864503703 AS sv_0, -0.801118620915 AS sv_1, -0.819172728502 AS sv_2, -0.419607187786 AS sv_3, -0.645622068628 AS sv_4, -0.555382144787 AS sv_5, 0.181695879366 AS sv_6, -0.820725783774 AS sv_7, -0.537631718054 AS sv_8, 0.0672332844713 AS sv_9 UNION ALL SELECT 27 AS sv_idx, -1.0 AS dual_coeff, 0.0879491295313 AS sv_0, -0.801118620915 AS sv_1, -0.429090476834 AS sv_2, -1.00050020068 AS sv_3, 0.729892738638 AS sv_4, 0.466565595704 AS sv_5, 1.31137025977 AS sv_6, -0.820725783774 AS sv_7, -0.176813966576 AS sv_8, -0.0177743165844 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, -1.6236762375 AS sv_0, -0.801118620915 AS sv_1, -0.222576343599 AS sv_2, 0.0160625718859 AS sv_3, -1.39318446388 AS sv_4, -1.22305466857 AS sv_5, -0.0789982084199 AS sv_6, -0.820725783774 AS sv_7, -0.881085999343 AS sv_8, -0.0177743165844 AS sv_9 UNION ALL SELECT 29 AS sv_idx, -1.0 AS dual_coeff, 0.608878589063 AS sv_0, 1.24825459538 AS sv_1, -0.63560461007 AS sv_2, 0.233897451722 AS sv_3, 2.07550505009 AS sv_4, 1.91091840226 AS sv_5, 0.789982084199 AS sv_6, 0.014966488883 AS sv_7, 0.600611451894 AS sv_8, -0.782842726085 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, -0.507398824219 AS sv_0, -0.801118620915 AS sv_1, -1.80585136507 AS sv_2, -0.419607187786 AS sv_3, -0.735329556058 AS sv_4, -0.725706768202 AS sv_5, 0.963778142723 AS sv_6, -1.09650423375 AS sv_7, -1.76642529402 AS sv_8, -0.952857928196 AS sv_9 UNION ALL SELECT 31 AS sv_idx, -1.0 AS dual_coeff, -1.17716527219 AS sv_0, -0.801118620915 AS sv_1, -0.199630328795 AS sv_2, 0.0160625718859 AS sv_3, 0.909307713499 AS sv_4, 0.991165435823 AS sv_5, 0.616186025676 AS sv_6, 0.014966488883 AS sv_7, -0.337245722214 AS sv_8, -0.272797119751 AS sv_9 UNION ALL SELECT 32 AS sv_idx, -1.0 AS dual_coeff, -0.730654306876 AS sv_0, -0.801118620915 AS sv_1, 0.121613878461 AS sv_2, -0.056549054726 AS sv_3, 0.460770276347 AS sv_4, 0.166794258493 AS sv_5, 1.74586040608 AS sv_6, -0.820725783774 AS sv_7, -0.850134896364 AS sv_8, -0.86785032714 AS sv_9 UNION ALL SELECT 33 AS sv_idx, -1.0 AS dual_coeff, 0.385623106407 AS sv_0, 1.24825459538 AS sv_1, -0.658550624874 AS sv_2, 0.0160625718859 AS sv_3, -0.316694614716 AS sv_4, 0.405248731275 AS sv_5, -0.774182442515 AS sv_6, 0.014966488883 AS sv_7, -1.58200204102 AS sv_8, -0.697835125029 AS sv_9 UNION ALL SELECT 34 AS sv_idx, -1.0 AS dual_coeff, -1.25158376641 AS sv_0, 1.24825459538 AS sv_1, -1.27809302458 AS sv_2, -0.637442067621 AS sv_3, -1.87162439684 AS sv_4, -1.52282600579 AS sv_5, -0.339692296206 AS sv_6, -0.820725783774 AS sv_7, -1.67211722638 AS sv_8, -2.14296434297 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, 0.683297083282 AS sv_0, 1.24825459538 AS sv_1, 0.121613878461 AS sv_2, 0.814790464617 AS sv_3, 0.191647814056 AS sv_4, 0.398435746338 AS sv_5, -0.600386383992 AS sv_6, 0.85065876154 AS sv_7, 0.395344023725 AS sv_8, 1.25733969925 AS sv_9 UNION ALL SELECT 36 AS sv_idx, -1.0 AS dual_coeff, -0.209724847344 AS sv_0, 1.24825459538 AS sv_1, 0.0298298192452 AS sv_2, -1.65400484019 AS sv_3, -0.197084631476 AS sv_4, -0.344179611752 AS sv_5, 1.13757420125 AS sv_6, -0.820725783774 AS sv_7, -0.850134896364 AS sv_8, -1.80293393875 AS sv_9 UNION ALL SELECT 37 AS sv_idx, -1.0 AS dual_coeff, 1.05538955438 AS sv_0, -0.801118620915 AS sv_1, -1.46166114301 AS sv_2, -1.31515058242 AS sv_3, 0.0421353350052 AS sv_4, -0.0035303649217 AS sv_5, 1.05067617199 AS sv_6, -0.778941170141 AS sv_7, -1.00984405072 AS sv_8, -0.0177743165844 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, -1.32600226063 AS sv_0, 1.24825459538 AS sv_1, 1.06240048542 AS sv_2, 0.524343958169 AS sv_3, -0.316694614716 AS sv_4, -0.637137964026 AS sv_5, -0.426590325468 AS sv_6, 0.014966488883 AS sv_7, 1.17252325143 AS sv_8, -1.20788073136 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, 0.236786117969 AS sv_0, 1.24825459538 AS sv_1, 0.305181996893 AS sv_2, 0.16128582511 AS sv_3, 0.0720378308153 AS sv_4, -0.446374385801 AS sv_5, -0.774182442515 AS sv_6, 0.85065876154 AS sv_7, 1.73295057795 AS sv_8, 0.832301693972 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, 0.683297083282 AS sv_0, 1.24825459538 AS sv_1, 0.351074026501 AS sv_2, 0.596955584781 AS sv_3, 0.909307713499 AS sv_4, 0.99797842076 AS sv_5, -1.0348765303 AS sv_6, 1.6863510342 AS sv_7, 1.17252325143 AS sv_8, 0.322256087638 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, -1.10274677797 AS sv_0, 1.24825459538 AS sv_1, -0.52087453605 AS sv_2, 0.137081949814 AS sv_3, -0.974549522539 AS sv_4, -0.596260054406 AS sv_5, -1.55626470587 AS sv_6, 0.716947997915 AS sv_7, 0.492671090987 AS sv_8, 0.237248486582 AS sv_9 UNION ALL SELECT 42 AS sv_idx, -1.0 AS dual_coeff, -1.32600226063 AS sv_0, 1.24825459538 AS sv_1, 0.328128011697 AS sv_2, -0.274383934562 AS sv_3, 0.849502721879 AS sv_4, 1.06610827013 AS sv_5, 0.442389967152 AS sv_6, 0.014966488883 AS sv_7, -0.618195611927 AS sv_8, -0.0177743165844 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, 0.534460094844 AS sv_0, -0.801118620915 AS sv_1, 0.121613878461 AS sv_2, 0.379120704945 AS sv_3, 1.74657759618 AS sv_4, 1.7133418391 AS sv_5, -1.0348765303 AS sv_6, 2.52204330686 AS sv_7, 1.53457165788 AS sv_8, 0.407263688694 AS sv_9 UNION ALL SELECT 44 AS sv_idx, -1.0 AS dual_coeff, -0.656235812657 AS sv_0, -0.801118620915 AS sv_1, -1.41576911341 AS sv_2, -2.23489785308 AS sv_3, -1.03435451416 AS sv_4, -0.882405421744 AS sv_5, 0.00789982084199 AS sv_6, -0.820725783774 AS sv_7, -0.730850029822 AS sv_8, -0.187789518696 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, 1.87399299078 AS sv_0, -0.801118620915 AS sv_1, 0.855886352188 AS sv_2, -1.07311182729 AS sv_3, 1.02891769674 AS sv_4, 1.33862766759 AS sv_5, -0.51348835473 AS sv_6, 0.892443375173 AS sv_7, 0.344870266343 AS sv_8, 0.492271289749 AS sv_9 UNION ALL SELECT 46 AS sv_idx, -1.0 AS dual_coeff, -0.581817318438 AS sv_0, -0.801118620915 AS sv_1, -0.97979483213 AS sv_2, -0.564830441009 AS sv_3, 0.759795234448 AS sv_4, 0.807214842535 AS sv_5, 0.876880113461 AS sv_6, 0.014966488883 AS sv_7, -0.673740397885 AS sv_8, 0.237248486582 AS sv_9 UNION ALL SELECT 47 AS sv_idx, -1.0 AS dual_coeff, 1.35306353125 AS sv_0, -0.801118620915 AS sv_1, 1.4754287519 AS sv_2, 0.935809844724 AS sv_3, 0.520575267967 AS sv_4, 0.0509735145712 AS sv_5, -0.861080471777 AS sv_6, 0.959298756986 AS sv_7, 1.79220659215 AS sv_8, 2.19242331086 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 1.0 AS dual_coeff, 1.05538955438 AS sv_0, -0.801118620915 AS sv_1, -1.23220099497 AS sv_2, -0.0323451794308 AS sv_3, 1.17843017579 AS sv_4, 1.08654722494 AS sv_5, 1.31137025977 AS sv_6, -0.411236570172 AS sv_7, -0.564132198243 AS sv_8, 0.917309295027 AS sv_9 UNION ALL SELECT 49 AS sv_idx, -1.0 AS dual_coeff, -0.284143341563 AS sv_0, -0.801118620915 AS sv_1, -1.32398505419 AS sv_2, -1.43616996035 AS sv_3, -0.466207093767 AS sv_4, -0.269236777449 AS sv_5, 0.0947978501039 AS sv_6, -0.820725783774 AS sv_7, -0.730850029822 AS sv_8, -0.952857928196 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 0.944137757048 AS dual_coeff, 0.832134071719 AS sv_0, -0.801118620915 AS sv_1, 1.5213207815 AS sv_2, 0.16128582511 AS sv_3, -0.167182135666 AS sv_4, -0.0035303649217 AS sv_5, 0.35549193789 AS sv_6, -0.820725783774 AS sv_7, -0.850134896364 AS sv_8, -1.46290353453 AS sv_9 UNION ALL SELECT 51 AS sv_idx, 1.0 AS dual_coeff, 1.12980804859 AS sv_0, 1.24825459538 AS sv_1, 0.488750115325 AS sv_2, 1.17784859768 AS sv_3, 0.400965284727 AS sv_4, 0.275802017479 AS sv_5, -0.339692296206 AS sv_6, 0.014966488883 AS sv_7, 0.945040610752 AS sv_8, 0.407263688694 AS sv_9 UNION ALL SELECT 52 AS sv_idx, -1.0 AS dual_coeff, -0.358561835781 AS sv_0, -0.801118620915 AS sv_1, -0.497928521246 AS sv_2, -0.710053694233 AS sv_3, -0.316694614716 AS sv_4, 0.119103363937 AS sv_5, -0.426590325468 AS sv_6, 0.014966488883 AS sv_7, -0.78961524198 AS sv_8, -0.782842726085 AS sv_9 UNION ALL SELECT 53 AS sv_idx, 1.0 AS dual_coeff, 1.42748202547 AS sv_0, -0.801118620915 AS sv_1, 1.81961897395 AS sv_2, 1.46829510412 AS sv_3, 0.371062788917 AS sv_4, 0.303053957226 AS sv_5, 0.35549193789 AS sv_6, 0.014966488883 AS sv_7, 0.203786718086 AS sv_8, 1.76738530558 AS sv_9 UNION ALL SELECT 54 AS sv_idx, -1.0 AS dual_coeff, 0.236786117969 AS sv_0, 1.24825459538 AS sv_1, 0.213397937677 AS sv_2, -0.782665320845 AS sv_3, -2.0510393717 AS sv_4, -2.04061286097 AS sv_5, -0.947978501039 AS sv_6, -0.820725783774 AS sv_7, 0.444591575835 AS sv_8, 0.152240885527 AS sv_9 UNION ALL SELECT 55 AS sv_idx, -1.0 AS dual_coeff, -0.879491295313 AS sv_0, -0.801118620915 AS sv_1, 1.42953672229 AS sv_2, -1.1457234539 AS sv_3, -0.585817077008 AS sv_4, -0.487252295421 AS sv_5, -0.252794266944 AS sv_6, 0.014966488883 AS sv_7, 0.0323670880333 AS sv_8, 0.407263688694 AS sv_9 UNION ALL SELECT 56 AS sv_idx, -1.0 AS dual_coeff, 0.0879491295313 AS sv_0, -0.801118620915 AS sv_1, 1.17713055944 AS sv_2, 0.0160625718859 AS sv_3, 1.29804015903 AS sv_4, 0.991165435823 AS sv_5, -0.0789982084199 AS sv_6, 0.599951079743 AS sv_7, 1.30406719399 AS sv_8, 2.19242331086 AS sv_9 UNION ALL SELECT 57 AS sv_idx, 1.0 AS dual_coeff, 0.16236762375 AS sv_0, 1.24825459538 AS sv_1, 0.00688380444119 AS sv_2, -0.104956806043 AS sv_3, 0.909307713499 AS sv_4, 1.26368483329 AS sv_5, -0.947978501039 AS sv_6, 1.34371720241 AS sv_7, 0.600611451894 AS sv_8, 0.662286491861 AS sv_9 UNION ALL SELECT 58 AS sv_idx, 1.0 AS dual_coeff, -0.358561835781 AS sv_0, 1.24825459538 AS sv_1, -1.18630896537 AS sv_2, 0.0886741984978 AS sv_3, -0.555914581198 AS sv_4, -0.616699009216 AS sv_5, 0.442389967152 AS sv_6, -0.820725783774 AS sv_7, -0.313534833597 AS sv_8, 0.917309295027 AS sv_9 UNION ALL SELECT 59 AS sv_idx, 1.0 AS dual_coeff, 0.608878589063 AS sv_0, -0.801118620915 AS sv_1, -0.819172728502 AS sv_2, -0.129160681338 AS sv_3, 0.251452805676 AS sv_4, 0.13272933381 AS sv_5, -0.165896237682 AS sv_6, 0.014966488883 AS sv_7, 0.759410297362 AS sv_8, 2.02240810875 AS sv_9 UNION ALL SELECT 60 AS sv_idx, -1.0 AS dual_coeff, 1.35306353125 AS sv_0, -0.801118620915 AS sv_1, 0.259289967285 AS sv_2, 1.03262534445 AS sv_3, 1.59706511713 AS sv_4, 1.18192901405 AS sv_5, 1.22447223051 AS sv_6, 0.014966488883 AS sv_7, 0.630424604876 AS sv_8, -0.10278191764 AS sv_9 UNION ALL SELECT 61 AS sv_idx, 1.0 AS dual_coeff, -0.135306353125 AS sv_0, 1.24825459538 AS sv_1, 1.5213207815 AS sv_2, 2.19441137024 AS sv_3, 1.95589506685 AS sv_4, 1.65883795961 AS sv_5, -0.51348835473 AS sv_6, 1.6863510342 AS sv_7, 1.65412716828 AS sv_8, 0.492271289749 AS sv_9 UNION ALL SELECT 62 AS sv_idx, 1.0 AS dual_coeff, 0.16236762375 AS sv_0, -0.801118620915 AS sv_1, 0.718210263364 AS sv_2, 0.838994337734 AS sv_3, 0.699990242828 AS sv_4, 0.609638279373 AS sv_5, -0.0789982084199 AS sv_6, 0.274031093407 AS sv_7, 0.759410297362 AS sv_8, 0.577278890805 AS sv_9 UNION ALL SELECT 63 AS sv_idx, -1.0 AS dual_coeff, 0.460041600625 AS sv_0, -0.801118620915 AS sv_1, 1.98024107758 AS sv_2, -0.976296325386 AS sv_3, 0.221550309866 AS sv_4, 0.882157676837 AS sv_5, -0.687284413254 AS sv_6, 0.549809543384 AS sv_7, -1.00984405072 AS sv_8, 0.407263688694 AS sv_9 UNION ALL SELECT 64 AS sv_idx, -1.0 AS dual_coeff, 0.832134071719 AS sv_0, 1.24825459538 AS sv_1, -0.176684313991 AS sv_2, -0.564830441009 AS sv_3, -0.107377144045 AS sv_4, 0.0441605296346 AS sv_5, -0.947978501039 AS sv_6, 0.85065876154 AS sv_7, 0.731447676564 AS sv_8, 0.577278890805 AS sv_9 UNION ALL SELECT 65 AS sv_idx, 1.0 AS dual_coeff, 1.27864503703 AS sv_0, 1.24825459538 AS sv_1, -0.130792284383 AS sv_2, 1.46829510412 AS sv_3, -0.884842035109 AS sv_4, -2.06786480071 AS sv_5, 1.22447223051 AS sv_6, -1.65641805643 AS sv_7, 1.38724841568 AS sv_8, 1.08732449714 AS sv_9 UNION ALL SELECT 66 AS sv_idx, 1.0 AS dual_coeff, 0.534460094844 AS sv_0, 1.24825459538 AS sv_1, 1.26891461866 AS sv_2, 1.3230718509 AS sv_3, -0.436304597957 AS sv_4, 0.0441605296346 AS sv_5, -0.774182442515 AS sv_6, 0.014966488883 AS sv_7, -0.485647898877 AS sv_8, -0.357804720807 AS sv_9 UNION ALL SELECT 67 AS sv_idx, 1.0 AS dual_coeff, 0.236786117969 AS sv_0, -0.801118620915 AS sv_1, 1.56721281111 AS sv_2, -0.734257569529 AS sv_3, -0.0475721524252 AS sv_4, -0.276049762386 AS sv_5, -0.339692296206 AS sv_6, 0.0483941797893 AS sv_7, 1.01967202736 AS sv_8, 0.917309295027 AS sv_9 UNION ALL SELECT 68 AS sv_idx, -1.0 AS dual_coeff, -1.54925774328 AS sv_0, 1.24825459538 AS sv_1, -1.59933723184 AS sv_2, -0.710053694233 AS sv_3, -1.06425700997 AS sv_4, -0.310114687069 AS sv_5, -0.947978501039 AS sv_6, 0.014966488883 AS sv_7, -2.07892847233 AS sv_8, -0.697835125029 AS sv_9 UNION ALL SELECT 69 AS sv_idx, 1.0 AS dual_coeff, 1.20422654281 AS sv_0, 1.24825459538 AS sv_1, -0.0849002547747 AS sv_2, -0.129160681338 AS sv_3, 2.28482252077 AS sv_4, 1.07973424 AS sv_5, 1.31137025977 AS sv_6, 0.014966488883 AS sv_7, 1.94482476861 AS sv_8, -0.357804720807 AS sv_9 UNION ALL SELECT 70 AS sv_idx, 1.0 AS dual_coeff, -1.92135021438 AS sv_0, -0.801118620915 AS sv_1, -1.30103903939 AS sv_2, -0.419607187786 AS sv_3, -1.1539644974 AS sv_4, -1.16855078908 AS sv_5, 0.963778142723 AS sv_6, -1.65641805643 AS sv_7, -2.02338368638 AS sv_8, -1.12287313031 AS sv_9 UNION ALL SELECT 71 AS sv_idx, -1.0 AS dual_coeff, -1.32600226063 AS sv_0, 1.24825459538 AS sv_1, -0.222576343599 AS sv_2, -0.177568432655 AS sv_3, -1.03435451416 AS sv_4, -0.494065280357 AS sv_5, -1.38246864735 AS sv_6, 0.432812625212 AS sv_7, -0.154897451859 AS sv_8, -0.697835125029 AS sv_9 UNION ALL SELECT 72 AS sv_idx, -1.0 AS dual_coeff, 0.0135306353125 AS sv_0, 1.24825459538 AS sv_1, -0.612658595266 AS sv_2, -0.056549054726 AS sv_3, -0.645622068628 AS sv_4, -0.60988602428 AS sv_5, 0.181695879366 AS sv_6, -0.820725783774 AS sv_7, -0.337245722214 AS sv_8, 0.152240885527 AS sv_9 UNION ALL SELECT 73 AS sv_idx, -1.0 AS dual_coeff, -1.77251322594 AS sv_0, -0.801118620915 AS sv_1, -1.73701332066 AS sv_2, -0.710053694233 AS sv_3, 0.101940326625 AS sv_4, -0.385057521372 AS sv_5, 1.65896237682 AS sv_6, -0.820725783774 AS sv_7, -0.176813966576 AS sv_8, -1.88794153981 AS sv_9 UNION ALL SELECT 74 AS sv_idx, 1.0 AS dual_coeff, -0.805072801094 AS sv_0, -0.801118620915 AS sv_1, -0.796226713698 AS sv_2, -1.1457234539 AS sv_3, 0.490672772157 AS sv_4, 0.963913496076 AS sv_5, -0.339692296206 AS sv_6, 0.014966488883 AS sv_7, -0.618195611927 AS sv_8, -1.46290353453 AS sv_9 UNION ALL SELECT 75 AS sv_idx, -1.0 AS dual_coeff, -0.135306353125 AS sv_0, 1.24825459538 AS sv_1, -0.52087453605 AS sv_2, 1.25046022429 AS sv_3, 0.640185251208 AS sv_4, 0.670955143802 AS sv_5, 0.703084054938 AS sv_6, 0.014966488883 AS sv_7, -0.410089170578 AS sv_8, 0.747294092916 AS sv_9 UNION ALL SELECT 76 AS sv_idx, 1.0 AS dual_coeff, -0.0608878589063 AS sv_0, -0.801118620915 AS sv_1, -0.842118743306 AS sv_2, -1.99285909795 AS sv_3, -0.585817077008 AS sv_4, -0.637137964026 AS sv_5, 1.05067617199 AS sv_6, -1.06307654285 AS sv_7, -1.45392211571 AS sv_8, -2.65300994931 AS sv_9 UNION ALL SELECT 77 AS sv_idx, -1.0 AS dual_coeff, -2.14460569703 AS sv_0, -0.801118620915 AS sv_1, -1.43871512821 AS sv_2, -2.16228622647 AS sv_3, -1.57259943874 AS sv_4, -1.5637039154 AS sv_5, 0.35549193789 AS sv_6, -0.820725783774 AS sv_7, -1.04335320813 AS sv_8, -0.187789518696 AS sv_9 UNION ALL SELECT 78 AS sv_idx, 1.0 AS dual_coeff, -2.07018720281 AS sv_0, -0.801118620915 AS sv_1, -0.773280698894 AS sv_2, -1.43616996035 AS sv_3, -0.795134547679 AS sv_4, -0.582634084533 AS sv_5, 0.35549193789 AS sv_6, -0.820725783774 AS sv_7, -1.58200204102 AS sv_8, -0.0177743165844 AS sv_9 UNION ALL SELECT 79 AS sv_idx, -1.0 AS dual_coeff, -1.02832828375 AS sv_0, -0.801118620915 AS sv_1, -0.819172728502 AS sv_2, -0.419607187786 AS sv_3, -0.286792118906 AS sv_4, 0.0373475446979 AS sv_5, -0.774182442515 AS sv_6, 0.014966488883 AS sv_7, 0.0911323001908 AS sv_8, -0.782842726085 AS sv_9 UNION ALL SELECT 80 AS sv_idx, 1.0 AS dual_coeff, 0.0135306353125 AS sv_0, -0.801118620915 AS sv_1, -1.02568686174 AS sv_2, -0.129160681338 AS sv_3, 0.0720378308153 AS sv_4, -0.126164093781 AS sv_5, 1.48516631829 AS sv_6, -0.820725783774 AS sv_7, -1.07742557095 AS sv_8, -1.20788073136 AS sv_9 UNION ALL SELECT 81 AS sv_idx, -1.0 AS dual_coeff, -0.135306353125 AS sv_0, -0.801118620915 AS sv_1, 1.45248273709 AS sv_2, 0.0160625718859 AS sv_3, 2.64365247049 AS sv_4, 2.85111032352 AS sv_5, -0.600386383992 AS sv_6, 2.03734178871 AS sv_7, 1.09165324085 AS sv_8, -0.0177743165844 AS sv_9 UNION ALL SELECT 82 AS sv_idx, -1.0 AS dual_coeff, 0.757715577501 AS sv_0, -0.801118620915 AS sv_1, -0.956848817326 AS sv_2, 0.863198218112 AS sv_3, 0.99901520093 AS sv_4, -0.323740656942 AS sv_5, 0.876880113461 AS sv_6, -0.252455038367 AS sv_7, 2.06499374239 AS sv_8, 0.152240885527 AS sv_9 UNION ALL SELECT 83 AS sv_idx, -1.0 AS dual_coeff, -0.953909789532 AS sv_0, 1.24825459538 AS sv_1, 0.0986678636571 AS sv_2, -1.00050020068 AS sv_3, -0.914744530919 AS sv_4, -0.575821099597 AS sv_5, -1.90385682292 AS sv_6, 1.6863510342 AS sv_7, 0.880677812342 AS sv_8, 0.407263688694 AS sv_9 UNION ALL SELECT 84 AS sv_idx, -0.0908729014563 AS dual_coeff, 0.0135306353125 AS sv_0, -0.801118620915 AS sv_1, -0.0619542399707 AS sv_2, 1.17784859768 AS sv_3, 1.65687010875 AS sv_4, 1.55664318556 AS sv_5, 1.05067617199 AS sv_6, 0.014966488883 AS sv_7, 0.0323670880333 AS sv_8, -0.187789518696 AS sv_9 UNION ALL SELECT 85 AS sv_idx, 1.0 AS dual_coeff, -1.40042075484 AS sv_0, 1.24825459538 AS sv_1, 2.04907912199 AS sv_2, 2.33963462347 AS sv_3, -0.0176696566151 AS sv_4, -0.085286184161 AS sv_5, -0.165896237682 AS sv_6, 0.014966488883 AS sv_7, 0.570353310079 AS sv_8, 1.51236250242 AS sv_9 UNION ALL SELECT 86 AS sv_idx, 1.0 AS dual_coeff, 2.17166696766 AS sv_0, 1.24825459538 AS sv_1, 0.144559893265 AS sv_2, 0.742178838005 AS sv_3, -0.555914581198 AS sv_4, -0.139790063654 AS sv_5, -1.12177455956 AS sv_6, 0.85065876154 AS sv_7, 0.110348158437 AS sv_8, 1.59737010347 AS sv_9 UNION ALL SELECT 87 AS sv_idx, -1.0 AS dual_coeff, 1.35306353125 AS sv_0, 1.24825459538 AS sv_1, 0.259289967285 AS sv_2, 1.3230718509 AS sv_3, 0.789697730259 AS sv_4, 1.09336020987 AS sv_5, -0.947978501039 AS sv_6, 0.85065876154 AS sv_7, 0.674338044626 AS sv_8, -0.0177743165844 AS sv_9 UNION ALL SELECT 88 AS sv_idx, -1.0 AS dual_coeff, 1.27864503703 AS sv_0, 1.24825459538 AS sv_1, -0.314360402814 AS sv_2, 1.3714796044 AS sv_3, -1.24367198483 AS sv_4, -0.732519753139 AS sv_5, -1.46936667661 AS sv_6, 0.365957243399 AS sv_7, -0.0487340412652 AS sv_8, 1.00231689608 AS sv_9 UNION ALL SELECT 89 AS sv_idx, 0.494057193884 AS dual_coeff, 0.460041600625 AS sv_0, -0.801118620915 AS sv_1, 1.06240048542 AS sv_2, -1.02470407598 AS sv_3, -0.0176696566151 AS sv_4, 0.902596631647 AS sv_5, -1.38246864735 AS sv_6, 1.26850489787 AS sv_7, -1.11208039545 AS sv_8, -0.10278191764 AS sv_9 UNION ALL SELECT 90 AS sv_idx, -1.0 AS dual_coeff, 0.683297083282 AS sv_0, 1.24825459538 AS sv_1, 0.190451922873 AS sv_2, 1.03262534445 AS sv_3, -0.884842035109 AS sv_4, -0.439561400865 AS sv_5, -0.947978501039 AS sv_6, 0.014966488883 AS sv_7, -0.337245722214 AS sv_8, 0.152240885527 AS sv_9 UNION ALL SELECT 91 AS sv_idx, -1.0 AS dual_coeff, -1.10274677797 AS sv_0, -0.801118620915 AS sv_1, -1.20925498017 AS sv_2, -0.782665320845 AS sv_3, -0.944647026729 AS sv_4, -0.923283331364 AS sv_5, 0.00789982084199 AS sv_6, -0.820725783774 AS sv_7, -0.198970010786 AS sv_8, 0.322256087638 AS sv_9 UNION ALL SELECT 92 AS sv_idx, 1.0 AS dual_coeff, -0.953909789532 AS sv_0, -0.801118620915 AS sv_1, 1.01650845582 AS sv_2, 1.39568347751 AS sv_3, 2.82306744535 AS sv_4, 2.80341942896 AS sv_5, -0.600386383992 AS sv_6, 2.52204330686 AS sv_7, 1.48664370774 AS sv_8, 0.832301693972 AS sv_9 UNION ALL SELECT 93 AS sv_idx, 1.0 AS dual_coeff, 0.16236762375 AS sv_0, -0.801118620915 AS sv_1, 0.144559893265 AS sv_2, -1.048907952 AS sv_3, -1.60250193455 AS sv_4, -1.42744421667 AS sv_5, -0.51348835473 AS sv_6, -0.778941170141 AS sv_7, -0.337245722214 AS sv_8, -1.88794153981 AS sv_9 UNION ALL SELECT 94 AS sv_idx, 1.0 AS dual_coeff, 0.534460094844 AS sv_0, 1.24825459538 AS sv_1, 0.993562441012 AS sv_2, -0.20177230795 AS sv_3, 0.490672772157 AS sv_4, 1.12061214962 AS sv_5, -1.38246864735 AS sv_6, 1.6863510342 AS sv_7, 0.203786718086 AS sv_8, 0.152240885527 AS sv_9 UNION ALL SELECT 95 AS sv_idx, -1.0 AS dual_coeff, -0.43298033 AS sv_0, -0.801118620915 AS sv_1, -0.222576343599 AS sv_2, 0.16128582511 AS sv_3, -0.765232051868 AS sv_4, -0.759771692885 AS sv_5, 0.268593908628 AS sv_6, -0.820725783774 AS sv_7, -0.410089170578 AS sv_8, -0.697835125029 AS sv_9 UNION ALL SELECT 96 AS sv_idx, -1.0 AS dual_coeff, 0.236786117969 AS sv_0, 1.24825459538 AS sv_1, 1.54426679631 AS sv_2, 1.75874161057 AS sv_3, -0.137279639856 AS sv_4, 0.139542318747 AS sv_5, -0.165896237682 AS sv_6, 0.014966488883 AS sv_7, -0.460147463696 AS sv_8, 1.25733969925 AS sv_9 UNION ALL SELECT 97 AS sv_idx, -1.0 AS dual_coeff, -1.25158376641 AS sv_0, -0.801118620915 AS sv_1, -1.57639121703 AS sv_2, -0.927888574069 AS sv_3, -0.496109589577 AS sv_4, -1.0050391506 AS sv_5, 2.18035055239 AS sv_6, -1.65641805643 AS sv_7, -1.29483991601 AS sv_8, -0.952857928196 AS sv_9 UNION ALL SELECT 98 AS sv_idx, -1.0 AS dual_coeff, 0.906552565938 AS sv_0, 1.24825459538 AS sv_1, 0.0757218488531 AS sv_2, 1.61351835735 AS sv_3, -0.137279639856 AS sv_4, 0.309866942162 AS sv_5, -1.29557061809 AS sv_6, 0.85065876154 AS sv_7, 0.361834866317 AS sv_8, 0.747294092916 AS sv_9 UNION ALL SELECT 99 AS sv_idx, 1.0 AS dual_coeff, -0.284143341563 AS sv_0, -0.801118620915 AS sv_1, 0.236343952481 AS sv_2, -1.07311182729 AS sv_3, -0.496109589577 AS sv_4, -0.916470346427 AS sv_5, 0.703084054938 AS sv_6, -0.820725783774 AS sv_7, 0.444591575835 AS sv_8, -0.10278191764 AS sv_9 UNION ALL SELECT 100 AS sv_idx, -1.0 AS dual_coeff, 0.311204612188 AS sv_0, -0.801118620915 AS sv_1, 0.0986678636571 AS sv_2, -0.419607187786 AS sv_3, 0.550477763778 AS sv_4, 0.241737092796 AS sv_5, 1.57206434756 AS sv_6, -0.820725783774 AS sv_7, -0.460147463696 AS sv_8, -0.952857928196 AS sv_9 UNION ALL SELECT 101 AS sv_idx, -1.0 AS dual_coeff, 0.16236762375 AS sv_0, 1.24825459538 AS sv_1, -0.429090476834 AS sv_2, 0.0886741984978 AS sv_3, 0.879405217689 AS sv_4, 1.17511602911 AS sv_5, -0.165896237682 AS sv_6, 0.85065876154 AS sv_7, -0.0487340412652 AS sv_8, -0.187789518696 AS sv_9 UNION ALL SELECT 102 AS sv_idx, 1.0 AS dual_coeff, -0.656235812657 AS sv_0, -0.801118620915 AS sv_1, 1.88845701837 AS sv_2, -0.39540331249 AS sv_3, 0.520575267967 AS sv_4, 0.943474541267 AS sv_5, -0.774182442515 AS sv_6, 0.85065876154 AS sv_7, 0.129383583426 AS sv_8, 1.59737010347 AS sv_9 UNION ALL SELECT 103 AS sv_idx, 1.0 AS dual_coeff, -0.358561835781 AS sv_0, -0.801118620915 AS sv_1, 1.29186063346 AS sv_2, 1.25046022429 AS sv_3, 1.08872268836 AS sv_4, 0.657329173929 AS sv_5, -0.426590325468 AS sv_6, 0.85065876154 AS sv_7, 1.62715659931 AS sv_8, 0.152240885527 AS sv_9 UNION ALL SELECT 104 AS sv_idx, -1.0 AS dual_coeff, 0.757715577501 AS sv_0, -0.801118620915 AS sv_1, -0.681496639678 AS sv_2, -1.1699273292 AS sv_3, 1.77648009199 AS sv_4, 1.12742513456 AS sv_5, 1.31137025977 AS sv_6, -0.152171965648 AS sv_7, 1.06794235223 AS sv_8, -1.20788073136 AS sv_9 UNION ALL SELECT 105 AS sv_idx, 1.0 AS dual_coeff, 2.17166696766 AS sv_0, 1.24825459538 AS sv_1, -0.704442654482 AS sv_2, -0.346995561174 AS sv_3, -0.0475721524252 AS sv_4, 0.459752610768 AS sv_5, -1.46936667661 AS sv_6, 1.6863510342 AS sv_7, 0.411893159436 AS sv_8, 0.917309295027 AS sv_9 UNION ALL SELECT 106 AS sv_idx, 1.0 AS dual_coeff, 1.27864503703 AS sv_0, 1.24825459538 AS sv_1, -0.658550624874 AS sv_2, 0.233897451722 AS sv_3, 0.580380259588 AS sv_4, 0.793588872661 AS sv_5, -0.687284413254 AS sv_6, 0.85065876154 AS sv_7, 0.585538833268 AS sv_8, 1.68237770453 AS sv_9 UNION ALL SELECT 107 AS sv_idx, 1.0 AS dual_coeff, -0.0608878589063 AS sv_0, -0.801118620915 AS sv_1, -0.97979483213 AS sv_2, -0.564830441009 AS sv_3, -1.54269694293 AS sv_4, -1.75446749363 AS sv_5, 1.05067617199 AS sv_6, -1.49763652463 AS sv_7, -1.29483991601 AS sv_8, -1.63291873664 AS sv_9 UNION ALL SELECT 108 AS sv_idx, -1.0 AS dual_coeff, 0.757715577501 AS sv_0, 1.24825459538 AS sv_1, 0.419912070913 AS sv_2, 1.39568347751 AS sv_3, -0.0774746482354 AS sv_4, -0.0375952896047 AS sv_5, -0.687284413254 AS sv_6, 0.014966488883 AS sv_7, 0.759410297362 AS sv_8, 0.152240885527 AS sv_9 UNION ALL SELECT 109 AS sv_idx, 1.0 AS dual_coeff, 0.0135306353125 AS sv_0, 1.24825459538 AS sv_1, -0.0390082251668 AS sv_2, 0.306509078334 AS sv_3, -0.0475721524252 AS sv_4, -0.323740656942 AS sv_5, -0.0789982084199 AS sv_6, 0.014966488883 AS sv_7, 0.919540175572 AS sv_8, -0.272797119751 AS sv_9) AS [Values]), 
kernel_dp AS 
(SELECT t.[KEY] AS [KEY], t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.[KEY] AS [KEY], sum(full_join_data_sv.dot_prod1) + 145.571492972 AS dot_product 
FROM (SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], [SV_data].dual_coeff * ([ADS_sca_2_OUT].scaler_2 * [SV_data].sv_0 + [ADS_sca_2_OUT].scaler_3 * [SV_data].sv_1 + [ADS_sca_2_OUT].scaler_4 * [SV_data].sv_2 + [ADS_sca_2_OUT].scaler_5 * [SV_data].sv_3 + [ADS_sca_2_OUT].scaler_6 * [SV_data].sv_4 + [ADS_sca_2_OUT].scaler_7 * [SV_data].sv_5 + [ADS_sca_2_OUT].scaler_8 * [SV_data].sv_6 + [ADS_sca_2_OUT].scaler_9 * [SV_data].sv_7 + [ADS_sca_2_OUT].scaler_10 * [SV_data].sv_8 + [ADS_sca_2_OUT].scaler_11 * [SV_data].sv_9) AS dot_prod1 
FROM [ADS_sca_2_OUT], [SV_data]) AS full_join_data_sv GROUP BY full_join_data_sv.[KEY]) AS t)
 SELECT kernel_dp.[KEY] AS [KEY], kernel_dp.dot_product AS [Estimator] 
FROM kernel_dp