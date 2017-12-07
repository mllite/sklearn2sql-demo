-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0618292052381 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.177024637672 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.041383850049 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.130606468058 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.0595581047198 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.0489290898701 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.191017978617 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0220495967327 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.0577298140341 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.052549592052 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.0618292052381) / 1.22838395621 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 0.177024637672) / 0.940821656314 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.041383850049) / 1.07418248888 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.130606468058) / 1.07922445597 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - -0.0595581047198) / 1.10958911905 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - -0.0489290898701) / 1.3781871812 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.191017978617) / 0.97352852463 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.0220495967327) / 0.474603012038 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - -0.0577298140341) / 1.06460752484 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - -0.052549592052) / 1.22453288966 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 0.341210907588 AS sv_0, 1.86124418264 AS sv_1, 0.462956374627 AS sv_2, 0.724798554551 AS sv_3, 1.9425332464 AS sv_4, -0.1610313006 AS sv_5, -1.00329615741 AS sv_6, 0.326752939308 AS sv_7, 1.37400218199 AS sv_8, -0.311440279235 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.226287480084 AS sv_0, -0.751838388783 AS sv_1, -0.53771148251 AS sv_2, -0.871593639273 AS sv_3, -0.81292089984 AS sv_4, 1.16232466054 AS sv_5, -0.668230718811 AS sv_6, -0.0601858609875 AS sv_7, -1.64882552604 AS sv_8, -0.0655313517718 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS sv_idx, -0.796946327125 AS dual_coeff, 0.547194416773 AS sv_0, 1.17994937959 AS sv_1, 0.136109394621 AS sv_2, 0.153838684693 AS sv_3, -0.536699177754 AS sv_4, -0.3757223993 AS sv_5, 0.763777771316 AS sv_6, 0.506588694083 AS sv_7, 0.222681566313 AS sv_8, -0.46917013237 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, -0.0927747360334 AS sv_0, -0.0340518966836 AS sv_1, 0.458651468184 AS sv_2, 1.20604084135 AS sv_3, 0.719035608157 AS sv_4, 1.07610442734 AS sv_5, -0.161696259271 AS sv_6, 0.0642280286851 AS sv_7, -0.773017816658 AS sv_8, -0.18141243368 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.0807061663344 AS sv_0, 0.151451144214 AS sv_1, 1.28515556478 AS sv_2, 0.889085757081 AS sv_3, 0.245718337055 AS sv_4, 1.22383868316 AS sv_5, -1.14094390478 AS sv_6, 0.264404050871 AS sv_7, 0.58834800863 AS sv_8, -0.398941006414 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, -0.66897766814 AS sv_0, 0.399417390837 AS sv_1, -0.257179286816 AS sv_2, -1.29792151445 AS sv_3, 1.3662135126 AS sv_4, 1.15546047716 AS sv_5, 2.69098663599 AS sv_6, -0.516114981132 AS sv_7, 0.634012155674 AS sv_8, 0.394155938304 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.589173585334 AS sv_0, 0.952697454847 AS sv_1, 0.0811295899388 AS sv_2, -0.645694822158 AS sv_3, -1.28187617803 AS sv_4, -0.572995497136 AS sv_5, 0.0770652436593 AS sv_6, 0.520475254249 AS sv_7, 1.24865603681 AS sv_8, -0.461743871275 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, 0.783406831126 AS sv_0, -1.30369774872 AS sv_1, -0.288502484472 AS sv_2, 1.47513114202 AS sv_3, 0.899046122648 AS sv_4, 0.129963348683 AS sv_5, -0.278721793883 AS sv_6, 0.824304800006 AS sv_7, -1.86207963299 AS sv_8, -0.843854242714 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS sv_idx, -0.785834323069 AS dual_coeff, 0.877924339112 AS sv_0, 0.530553017995 AS sv_1, -1.40991932924 AS sv_2, 0.557611287302 AS sv_3, 1.40233418982 AS sv_4, -1.0299238527 AS sv_5, 0.958377827238 AS sv_6, 0.749444408879 AS sv_7, -0.184720079123 AS sv_8, -0.642648542647 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, 0.554533208053 AS sv_0, -0.442508000567 AS sv_1, -0.92678382118 AS sv_2, 1.11235480711 AS sv_3, 0.646241011117 AS sv_4, 0.187431738473 AS sv_5, -0.547708812967 AS sv_6, 0.597634151932 AS sv_7, -0.416568063741 AS sv_8, -0.621920909256 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, 0.387116228696 AS sv_0, -0.238019735313 AS sv_1, 0.236621310699 AS sv_2, -2.8036301608 AS sv_3, 1.19114106983 AS sv_4, -0.524603517083 AS sv_5, -1.21697204326 AS sv_6, 0.320015332082 AS sv_7, -0.236325302242 AS sv_8, -0.265209687137 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS sv_idx, -0.766377315468 AS dual_coeff, 1.1469388869 AS sv_0, 0.482640794017 AS sv_1, -2.64636103574 AS sv_2, 0.973598886682 AS sv_3, 0.40289058676 AS sv_4, 0.00284818125883 AS sv_5, -0.443213150967 AS sv_6, 1.17902415425 AS sv_7, -1.66630388537 AS sv_8, -1.18712575782 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 0.421820233222 AS sv_0, -0.439037450705 AS sv_1, 0.366485163991 AS sv_2, 1.12004821661 AS sv_3, -1.64618350505 AS sv_4, 0.0502281797352 AS sv_5, -0.842579485669 AS sv_6, 0.440912999885 AS sv_7, -1.30859903443 AS sv_8, -0.449277020365 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, -0.0600286291548 AS sv_0, -1.13499850436 AS sv_1, -0.509917593137 AS sv_2, -0.346017489507 AS sv_3, 0.183070052809 AS sv_4, 1.08345317746 AS sv_5, 0.468241470949 AS sv_6, 0.0989678072811 AS sv_7, -1.21698061615 AS sv_8, -0.217179176152 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS sv_idx, -0.391952704555 AS dual_coeff, 0.326084810643 AS sv_0, 0.680668642514 AS sv_1, -0.44010317549 AS sv_2, -0.294497665614 AS sv_3, 0.946653316764 AS sv_4, 0.210839561395 AS sv_5, 1.06938322662 AS sv_6, 0.366349993482 AS sv_7, -0.141110758914 AS sv_8, -0.391647920325 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, -0.76938963729 AS sv_0, 0.344406546091 AS sv_1, 0.192309984128 AS sv_2, 0.684477453713 AS sv_3, 1.85267295902 AS sv_4, 1.76268162124 AS sv_5, 2.48970712066 AS sv_6, -0.529260680254 AS sv_7, -0.00686840878358 AS sv_8, 0.341503577536 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.540920003749 AS sv_0, -0.333715586831 AS sv_1, 1.707334342 AS sv_2, 1.29067613914 AS sv_3, -0.361696794065 AS sv_4, -0.668917276335 AS sv_5, -0.208318240103 AS sv_6, 0.456666352643 AS sv_7, -0.138809622852 AS sv_8, -0.387105492957 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 0.101537763379 AS sv_0, 0.557844214064 AS sv_1, -0.198998857427 AS sv_2, -1.07193031236 AS sv_3, -1.22168225845 AS sv_4, 0.0973442086282 AS sv_5, 2.13082327934 AS sv_6, 0.118774988658 AS sv_7, 0.0347447976743 AS sv_8, -0.130122091806 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, -0.300433016389 AS sv_0, -0.277653413268 AS sv_1, -0.160132328521 AS sv_2, 0.398205975534 AS sv_3, -1.0454399925 AS sv_4, 0.991553816583 AS sv_5, 1.26898802789 AS sv_6, -0.161700065496 AS sv_7, 1.16983951034 AS sv_8, 0.0551828388157 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS sv_idx, -0.200748672098 AS dual_coeff, 1.34142073094 AS sv_0, -2.01706531023 AS sv_1, 0.420587358116 AS sv_2, 0.435688074935 AS sv_3, -0.024493685553 AS sv_4, -1.55232236063 AS sv_5, 0.182418863363 AS sv_6, 1.14827544834 AS sv_7, -0.974385009504 AS sv_8, -0.987434105566 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, 1.36668476492 AS sv_0, -2.0700204029 AS sv_1, -0.108010169283 AS sv_2, -0.124535092841 AS sv_3, -1.0597016228 AS sv_4, -1.5478832996 AS sv_5, 0.0471172163689 AS sv_6, 1.17489515388 AS sv_7, 0.345080597018 AS sv_8, -1.01471139846 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, 0.479789985664 AS sv_0, -0.283140827084 AS sv_1, 1.8201910206 AS sv_2, 0.447761261631 AS sv_3, -0.17009368031 AS sv_4, -1.48851052453 AS sv_5, -0.734848277563 AS sv_6, 0.272320084975 AS sv_7, -0.517568832453 AS sv_8, -0.112612993777 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, 0.0878616819083 AS sv_0, 0.422572702312 AS sv_1, 0.0873426732822 AS sv_2, 1.02385933716 AS sv_3, -0.65911577633 AS sv_4, -0.689488490102 AS sv_5, 0.116730625487 AS sv_6, -0.0119495969941 AS sv_7, -1.86018782613 AS sv_8, 0.0868397236856 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, 0.654040137148 AS sv_0, -1.51622664092 AS sv_1, 1.7958517463 AS sv_2, -0.0994922336853 AS sv_3, -0.625319099193 AS sv_4, -0.839319831682 AS sv_5, 2.02071442892 AS sv_6, 0.547642172666 AS sv_7, 0.948367495163 AS sv_8, -0.460193518722 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, 0.032679814164 AS sv_0, 1.05389426027 AS sv_1, 1.04568440501 AS sv_2, -1.3468045098 AS sv_3, -0.683821771468 AS sv_4, -1.1349406355 AS sv_5, -0.845285506301 AS sv_6, -0.134706147911 AS sv_7, -1.57994833944 AS sv_8, 0.25874023571 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, 0.141724767202 AS sv_0, -0.171583053018 AS sv_1, -0.175863804435 AS sv_2, -1.31996880142 AS sv_3, -1.86396623063 AS sv_4, 2.17680335462 AS sv_5, -2.31561077505 AS sv_6, 0.468412038965 AS sv_7, -1.49874029327 AS sv_8, -0.707696294909 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.434386670695 AS sv_0, 0.949237894477 AS sv_1, 1.4844680877 AS sv_2, 1.56607513269 AS sv_3, 1.00733604786 AS sv_4, -1.05070455717 AS sv_5, -0.361635919218 AS sv_6, 0.290580881236 AS sv_7, -0.854632930995 AS sv_8, -0.178497474809 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 0.626114078726 AS sv_0, 0.183234767137 AS sv_1, -0.484125786668 AS sv_2, 0.896269654533 AS sv_3, 0.407715732369 AS sv_4, -1.45754086776 AS sv_5, 0.381358699155 AS sv_6, 0.42727582786 AS sv_7, 1.12058643671 AS sv_8, -0.271953173256 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, -0.584145621762 AS sv_0, -0.398120159661 AS sv_1, -0.398809409329 AS sv_2, -0.007602293922 AS sv_3, 0.827592390457 AS sv_4, 1.25670813192 AS sv_5, -0.369049244645 AS sv_6, -0.413928095424 AS sv_7, -1.34548163238 AS sv_8, 0.280308052598 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, -0.0995437473161 AS sv_0, -0.306414583821 AS sv_1, -0.018954808641 AS sv_2, 0.509099357199 AS sv_3, 1.83249411525 AS sv_4, -1.06089143202 AS sv_5, 0.148810341818 AS sv_6, -0.259599976279 AS sv_7, 0.195193136532 AS sv_8, 0.376425014181 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, -0.67842751442 AS sv_0, 1.37327561557 AS sv_1, -1.91816640033 AS sv_2, -0.596886043056 AS sv_3, 1.0419111341 AS sv_4, 1.19926462383 AS sv_5, -0.82077780656 AS sv_6, -0.519330458726 AS sv_7, -0.246901199752 AS sv_8, 0.392639813552 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, -0.662941469595 AS sv_0, 1.28135638711 AS sv_1, -0.827939025928 AS sv_2, -0.307135842198 AS sv_3, -0.667642812919 AS sv_4, 1.0872264326 AS sv_5, -0.534449951636 AS sv_6, -0.520029836787 AS sv_7, 0.868574348969 AS sv_8, 0.405500225348 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, -0.901698236893 AS sv_0, -0.0681056159545 AS sv_1, 0.398010696636 AS sv_2, -0.825678029925 AS sv_3, 0.176045623449 AS sv_4, 1.10630069502 AS sv_5, 0.34005562506 AS sv_6, -0.762549519958 AS sv_7, -0.39681130379 AS sv_8, 0.647553200044 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, 0.821849213196 AS sv_0, -0.862243790041 AS sv_1, -0.839886647538 AS sv_2, 1.51836577347 AS sv_3, -0.0833705356943 AS sv_4, -1.28235693033 AS sv_5, 1.87435116987 AS sv_6, 0.654390661047 AS sv_7, -0.0985405095691 AS sv_8, -0.519576960704 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, -0.141440705892 AS sv_0, -3.32787377376 AS sv_1, -0.508496926483 AS sv_2, -0.238733422573 AS sv_3, 1.53933879485 AS sv_4, -1.41105451274 AS sv_5, -0.731712816451 AS sv_6, -0.354575478264 AS sv_7, -1.77646913416 AS sv_8, 0.510021771851 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, 0.693777148576 AS sv_0, 0.454303615619 AS sv_1, 0.210641053508 AS sv_2, 1.04339015732 AS sv_3, 0.0374045902601 AS sv_4, -1.03693147397 AS sv_5, 0.430256551972 AS sv_6, 0.559174478526 AS sv_7, -0.103941549902 AS sv_8, -0.450360710378 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 36 AS sv_idx, 0.941859342315 AS dual_coeff, -0.648135226451 AS sv_0, -1.70448106802 AS sv_1, -0.765276259849 AS sv_2, 1.23546450784 AS sv_3, 0.153698109621 AS sv_4, 1.08224023516 AS sv_5, 0.885707629828 AS sv_6, -0.505554195016 AS sv_7, 1.01205735309 AS sv_8, 0.391469923499 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, 0.281200398391 AS sv_0, 1.98727796765 AS sv_1, -3.75417809337 AS sv_2, 0.6557257799 AS sv_3, 0.541015953604 AS sv_4, 1.89974928977 AS sv_5, 2.30421347517 AS sv_6, 0.570656734268 AS sv_7, 0.353862058677 AS sv_8, -0.78055573228 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, -0.888543347133 AS sv_0, -1.22702986101 AS sv_1, 1.5953519478 AS sv_2, 0.724262389815 AS sv_3, -0.0201960034679 AS sv_4, 0.923105062813 AS sv_5, 0.457395100913 AS sv_6, -0.776195579437 AS sv_7, 1.75476142448 AS sv_8, 0.681166614532 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, 0.22373787921 AS sv_0, -0.781675373967 AS sv_1, -1.56119760748 AS sv_2, -0.58968905963 AS sv_3, -0.147069163721 AS sv_4, 2.14273681598 AS sv_5, 0.308483033306 AS sv_6, 0.547637883494 AS sv_7, 0.941342963767 AS sv_8, -0.783749469021 AS sv_9 FROM SYSIBM.SYSDUMMY1) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 0.0679002637074 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data".dual_coeff * tanh(0.1 * ("ADS_sca_2_OUT".scaler_2 * "SV_data".sv_0 + "ADS_sca_2_OUT".scaler_3 * "SV_data".sv_1 + "ADS_sca_2_OUT".scaler_4 * "SV_data".sv_2 + "ADS_sca_2_OUT".scaler_5 * "SV_data".sv_3 + "ADS_sca_2_OUT".scaler_6 * "SV_data".sv_4 + "ADS_sca_2_OUT".scaler_7 * "SV_data".sv_5 + "ADS_sca_2_OUT".scaler_8 * "SV_data".sv_6 + "ADS_sca_2_OUT".scaler_9 * "SV_data".sv_7 + "ADS_sca_2_OUT".scaler_10 * "SV_data".sv_8 + "ADS_sca_2_OUT".scaler_11 * "SV_data".sv_9) + 0.0) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", -kernel_dp.dot_product AS "Score_0", kernel_dp.dot_product AS "Score_1", exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508) / (1.0 + exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508)) AS "Proba_0", 1.0 / (1.0 + exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508)) AS "Proba_1", CASE WHEN (exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508) / (1.0 + exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508)) IS NULL OR exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508) / (1.0 + exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508)) > 0.0) THEN ln(exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508) / (1.0 + exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508)) IS NULL OR 1.0 / (1.0 + exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508)) > 0.0) THEN ln(1.0 / (1.0 + exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS "Decision", CASE WHEN (exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508) / (1.0 + exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508)) <= 1.0 / (1.0 + exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508))) THEN 1.0 / (1.0 + exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508)) ELSE exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508) / (1.0 + exp(kernel_dp.dot_product * -1.53183797484 + 0.200691080508)) END AS "DecisionProba" 
FROM kernel_dp