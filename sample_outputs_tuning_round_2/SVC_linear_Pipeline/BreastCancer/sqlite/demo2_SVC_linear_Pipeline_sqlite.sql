-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 14.0777120879 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.0390549451 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 91.6617802198 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 650.967692308 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0964218461538 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.104416131868 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.0882623268132 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0485164 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.181588571429 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.0629403076923 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.409917362637 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.21706945055 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.90524901099 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 40.8798857143 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.00705597142857 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.0255678307692 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.0319992562637 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.0119723692308 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.0208962 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.00384655186813 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 16.1777648352 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 25.2650549451 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 106.68156044 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 870.863956044 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.13182756044 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.249918065934 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.265461593407 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.11348798022 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.289788131868 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.0836414505495 ELSE "ADS"."Feature_29" END AS impter_31 
FROM "BreastCancer" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 14.0777120879) / 3.5451492987 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 19.0390549451) / 4.16229715042 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 91.6617802198) / 24.5039719435 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 650.967692308) / 355.702823164 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.0964218461538) / 0.0141978196631 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.104416131868) / 0.0534036946697 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.0882623268132) / 0.0819120016263 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.0485164) / 0.0393731173967 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.181588571429) / 0.0277900583287 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.0629403076923) / 0.00701935458617 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 0.409917362637) / 0.291204008368 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 1.21706945055) / 0.536389639634 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - 2.90524901099) / 2.14249442998 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - 40.8798857143) / 48.2247544796 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - 0.00705597142857) / 0.00286365165657 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - 0.0255678307692) / 0.017947013631 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - 0.0319992562637) / 0.0316649367214 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - 0.0119723692308) / 0.0063920055894 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - 0.0208962) / 0.00858291007987 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - 0.00384655186813) / 0.00274360758662 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - 16.1777648352) / 4.8174588162 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - 25.2650549451) / 5.92332412867 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - 106.68156044) / 33.7038583761 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - 870.863956044) / 566.995055987 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - 0.13182756044) / 0.0227482075223 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - 0.249918065934) / 0.152468936443 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - 0.265461593407) / 0.206925686782 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - 0.11348798022) / 0.0663814127852 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - 0.289788131868) / 0.0622047066505 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - 0.0836414505495) / 0.0170651458069 AS scaler_31 
FROM "ADS_imp_1_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9, "Values".sv_10 AS sv_10, "Values".sv_11 AS sv_11, "Values".sv_12 AS sv_12, "Values".sv_13 AS sv_13, "Values".sv_14 AS sv_14, "Values".sv_15 AS sv_15, "Values".sv_16 AS sv_16, "Values".sv_17 AS sv_17, "Values".sv_18 AS sv_18, "Values".sv_19 AS sv_19, "Values".sv_20 AS sv_20, "Values".sv_21 AS sv_21, "Values".sv_22 AS sv_22, "Values".sv_23 AS sv_23, "Values".sv_24 AS sv_24, "Values".sv_25 AS sv_25, "Values".sv_26 AS sv_26, "Values".sv_27 AS sv_27, "Values".sv_28 AS sv_28, "Values".sv_29 AS sv_29 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, -0.0614112607308 AS sv_0, -0.506704559726 AS sv_1, -0.028639447572 AS sv_2, -0.202606467013 AS sv_3, 0.435148071519 AS sv_4, 0.885404435485 AS sv_5, 0.131209993327 AS sv_6, 0.19057673093 AS sv_7, 1.04394989849 AS sv_8, 0.886077520566 AS sv_9, -0.527524890533 AS sv_10, -0.0430087549141 AS sv_11, -0.453793016861 AS sv_12, -0.377189804502 AS sv_13, -0.382718137542 AS sv_14, 0.491010338095 AS sv_15, 0.223930456538 AS sv_16, 0.371969444641 AS sv_17, -0.175488265167 AS sv_18, 0.260040151277 AS sv_19, -0.0887947051517 AS sv_20, 0.281082888388 AS sv_21, -0.0676943397431 AS sv_22, -0.21298943398 AS sv_23, 0.623013463657 AS sv_24, 1.22701671849 AS sv_25, 0.957534125776 AS sv_26, 0.782026437855 AS sv_27, 1.17695062117 AS sv_28, 1.3043281143 AS sv_29 UNION ALL SELECT 1 AS sv_idx, -0.774927230544 AS dual_coeff, 0.923032469546 AS sv_0, 0.966039883658 AS sv_1, 0.789187149937 AS sv_2, 0.793168592767 AS sv_3, -0.690376859719 AS sv_4, -0.777401865636 AS sv_5, -0.72458645418 AS sv_6, -0.511679067649 AS sv_7, -0.906387857506 AS sv_8, -1.40615601778 AS sv_9, -0.0316525953369 AS sv_10, 0.186302161837 AS sv_11, -0.153208804838 AS sv_12, 0.0732012909928 AS sv_13, -0.464431986873 AS sv_14, -0.808370187235 AS sv_15, -0.617062855223 AS sv_16, -0.672929516505 AS sv_17, -0.790664231228 AS sv_18, -0.826849976358 AS sv_19, 0.762276400264 AS sv_20, 1.04754440584 AS sv_21, 0.638456265759 AS sv_22, 0.612238220229 AS sv_23, -0.344095702129 AS sv_24, -0.664516119138 AS sv_25, -0.697649458855 AS sv_26, -0.469076792935 AS sv_27, -0.716796754925 AS sv_28, -1.08357999156 AS sv_29 UNION ALL SELECT 2 AS sv_idx, -0.0204617191907 AS dual_coeff, -0.256043402247 AS sv_0, 0.665724948221 AS sv_1, -0.25472524349 AS sv_2, -0.335863773149 AS sv_3, 0.0505819811208 AS sv_4, 0.00531551484637 AS sv_5, -0.0692490318948 AS sv_6, 0.10168359187 AS sv_7, -0.251477393314 AS sv_8, -0.166725826134 AS sv_9, -0.742151057083 AS sv_10, -1.12748160267 AS sv_11, -0.733373673696 AS sv_12, -0.547226958417 AS sv_13, -1.29414184161 AS sv_14, -0.653469764404 AS sv_15, -0.552006669634 AS sv_16, -0.800901870183 AS sv_17, -1.13786581813 AS sv_18, -0.775093303614 AS sv_19, 0.0108428876775 AS sv_20, 0.780802291835 AS sv_21, -0.0350571268837 AS sv_22, -0.229568061784 AS sv_23, 0.81203934606 AS sv_24, 0.92138069133 AS sv_25, 0.518729251369 AS sv_26, 0.711223485601 AS sv_27, 1.27822913109 AS sv_28, 0.734746107206 AS sv_29 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, -0.653769952301 AS sv_0, -0.215999702223 AS sv_1, -0.679962426427 AS sv_2, -0.618121864629 AS sv_3, 0.229482689841 AS sv_4, -0.847808979288 AS sv_5, -0.749735394007 AS sv_6, -0.339480358269 AS sv_7, -0.708475354591 AS sv_8, -0.0100162616726 AS sv_9, 0.807278164473 AS sv_10, 1.65538348216 AS sv_11, 0.575381187349 AS sv_12, 0.17066161092 AS sv_13, -0.509828569834 AS sv_14, -0.864646959559 AS sv_15, -0.608851880343 AS sv_16, 0.367276082037 AS sv_17, -0.59958684783 AS sv_18, -0.396759315523 AS sv_19, -0.584906886114 AS sv_20, -0.316554506275 AS sv_21, -0.640329074457 AS sv_22, -0.559553302438 AS sv_23, -0.796878629747 AS sv_24, -1.11614909833 AS sv_25, -0.987125361685 AS sv_26, -0.631019715644 AS sv_27, -1.47879697247 AS sv_28, -0.849184103868 AS sv_29 UNION ALL SELECT 4 AS sv_idx, -0.818281322584 AS dual_coeff, 0.736862595052 AS sv_0, 0.278919311378 AS sv_1, 0.630029279165 AS sv_2, 0.580912757044 AS sv_3, -1.51092538593 AS sv_4, -0.623479931006 AS sv_5, -0.632048122196 AS sv_6, -0.646288678227 AS sv_7, 0.108363521077 AS sv_8, -1.38051263451 AS sv_9, -0.558431058517 AS sv_10, -1.21025725067 AS sv_11, -0.527538832854 AS sv_12, -0.371798382548 AS sv_13, -1.5326485044 AS sv_14, -0.618923626938 AS sv_15, -0.561165064693 AS sv_16, -1.04433094393 AS sv_17, -0.149855933248 AS sv_18, -0.782382975831 AS sv_19, 0.62319892694 AS sv_20, 0.218617962957 AS sv_21, 0.611753091601 AS sv_22, 0.375904589829 AS sv_23, -1.3595603262 AS sv_24, 0.276003329253 AS sv_25, -0.0858356141415 AS sv_26, -0.393453214144 AS sv_27, 2.86010300043 AS sv_28, -0.434303382655 AS sv_29 UNION ALL SELECT 5 AS sv_idx, -0.32979945499 AS dual_coeff, -0.0980810844947 AS sv_0, 0.857926506901 AS sv_1, 0.0790981880281 AS sv_2, -0.204293268356 AS sv_3, 1.17469824536 AS sv_4, 2.33848741935 AS sv_5, 1.52038371318 AS sv_6, 0.805971233627 AS sv_7, 0.910808760169 AS sv_8, 1.97734594218 AS sv_9, -0.679308515517 AS sv_10, -0.0896166648228 AS sv_11, -0.394049570993 AS sv_12, -0.449351913724 AS sv_13, -0.218941234397 AS sv_14, 1.88288536051 AS sv_15, 0.726694764583 AS sv_16, 0.67390910552 AS sv_17, -0.149855933248 AS sv_18, 1.5477607485 AS sv_19, -0.238251094395 AS sv_20, 1.13870943214 AS sv_21, 0.0628545116943 AS sv_22, -0.305406465569 AS sv_23, 1.46264005759 AS sv_24, 3.4274649398 AS sv_25, 2.07242712716 AS sv_26, 1.61659740698 AS sv_27, 1.12229237771 AS sv_28, 3.48420986982 AS sv_29 UNION ALL SELECT 6 AS sv_idx, -0.912823832306 AS dual_coeff, 0.113475591066 AS sv_0, 0.581636766299 AS sv_1, 0.105624499824 AS sv_2, -0.00778091183836 AS sv_3, -0.139588063581 AS sv_4, -0.0926177841949 AS sv_5, 0.392343887938 AS sv_6, 0.0219337471122 AS sv_7, 0.932399215032 AS sv_8, -0.937451956804 AS sv_9, 0.0359975723596 AS sv_10, 1.86977986774 AS sv_11, 0.184715060853 AS sv_12, -0.0416774690919 AS sv_13, 0.8077199495 AS sv_14, 0.237486264757 AS sv_15, 0.685639890182 AS sv_16, 0.881981514313 AS sv_17, 0.382597507074 AS sv_18, -0.217797862583 AS sv_19, 0.00669132130964 AS sv_20, 0.672754853252 AS sv_21, 0.0509864342909 AS sv_22, -0.109284826013 AS sv_23, -0.0539629523934 AS sv_24, -0.343139180706 AS sv_25, 0.335571710179 AS sv_26, 0.135761192811 AS sv_27, 0.196317429812 AS sv_28, -0.889617394495 AS sv_29 UNION ALL SELECT 7 AS sv_idx, -0.866982552192 AS dual_coeff, -0.168599976348 AS sv_0, 0.427875519355 AS sv_1, -0.133112306336 AS sv_2, -0.257989777791 AS sv_3, 0.364714721629 AS sv_4, 0.394801675469 AS sv_5, 0.220207940579 AS sv_6, 0.149177926168 AS sv_7, -0.345036031056 AS sv_8, 0.178035215681 AS sv_9, -0.676217898719 AS sv_10, -1.16644581535 AS sv_11, -0.634890337148 AS sv_12, -0.463659918139 AS sv_13, -0.589796396743 AS sv_14, -0.177067384834 AS sv_15, -0.0476633279585 AS sv_16, 0.101318867791 AS sv_17, -0.830277835103 AS sv_18, -0.240395846457 AS sv_19, -0.134461935198 AS sv_20, 0.127452936653 AS sv_21, 0.0183492214315 AS sv_22, -0.230097166926 AS sv_23, 1.28240607669 AS sv_24, 1.13191537957 AS sv_25, 1.14794064617 AS sv_26, 1.69191969661 AS sv_27, -0.146100389464 AS sv_28, 1.3746468806 AS sv_29 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, 0.432220982245 AS sv_0, 0.0819127137308 AS sv_1, 0.340280334937 AS sv_2, 0.302590535366 AS sv_3, -1.26933899581 AS sv_4, -0.903610361915 AS sv_5, -0.563682072181 AS sv_6, -0.509139263676 AS sv_7, -0.967560812953 AS sv_8, -1.21240601081 AS sv_9, -0.618526385151 AS sv_10, -0.406923315481 AS sv_11, -0.640024539528 AS sv_12, -0.387765286026 AS sv_13, -1.4771249914 AS sv_14, -0.917301959406 AS sv_15, -0.596535418023 AS sv_16, -1.06357373061 AS sv_17, -1.25437641777 AS sv_18, -0.911774657692 AS sv_19, 0.35957446258 AS sv_20, 1.08130923039 AS sv_21, 0.273512885604 AS sv_22, 0.207649154455 AS sv_23, -1.02986401969 AS sv_24, -0.4539814309 AS sv_25, -0.190704179941 AS sv_26, -0.41891214804 AS sv_27, -0.345442218526 AS sv_28, -0.899579219722 AS sv_29 UNION ALL SELECT 9 AS sv_idx, -0.379042501553 AS dual_coeff, 0.364522846065 AS sv_0, 0.893964299153 AS sv_1, 0.348442277028 AS sv_2, 0.217125933962 AS sv_3, -0.311445437312 AS sv_4, -0.0152823109558 AS sv_5, 0.292236457559 AS sv_6, 0.668313858282 AS sv_7, -0.355831258488 AS sv_8, -0.28069641847 AS sv_9, -0.333159434106 AS sv_10, -0.700553147906 AS sv_11, -0.387515131601 AS sv_12, -0.237220196095 AS sv_13, 0.986861849955 AS sv_14, -0.0628422528905 AS sv_15, 0.420362240209 AS sv_16, 0.885110422716 AS sv_17, 0.44434812488 AS sv_18, -0.621281219824 AS sv_19, 0.0523585513563 AS sv_20, 0.0970645945513 AS sv_21, 0.0242832601332 AS sv_22, -0.0704837822164 AS sv_23, -0.269364539318 AS sv_24, -0.329365883344 AS sv_25, 0.0924892742464 AS sv_26, 0.513879086765 AS sv_27, -0.549606833776 AS sv_28, -0.900165209441 AS sv_29 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, -0.0332037039893 AS sv_0, -0.477874325924 AS sv_1, -0.00945888365833 AS sv_2, -0.136540081059 AS sv_3, 0.928181520746 AS sv_4, 0.439742386311 AS sv_5, 0.117536783324 AS sv_6, 0.100159709486 AS sv_7, 0.331464887999 AS sv_8, -0.233683549131 AS sv_9, 0.0517940582176 AS sv_10, -0.759279114391 AS sv_11, -0.15974324423 AS sv_12, -0.106581894916 AS sv_13, -0.246179184174 AS sv_14, 0.0680987520206 AS sv_15, -0.0255568571274 AS sv_16, 0.226475203907 AS sv_17, -0.0321802276186 AS sv_18, -0.419721783009 AS sv_19, 0.0440554186206 AS sv_20, -0.539402348352 AS sv_21, 0.0420853762383 AS sv_22, -0.0791258328802 AS sv_23, 0.851602902842 AS sv_24, 0.500311314853 AS sv_25, 0.267914570953 AS sv_26, 0.360221615915 AS sv_27, 0.273482008804 AS sv_28, -0.238582816432 AS sv_29 UNION ALL SELECT 11 AS sv_idx, -0.928372451002 AS dual_coeff, 1.12894763376 AS sv_0, 0.672932506672 AS sv_1, 1.05036929685 AS sv_2, 1.04871899631 AS sv_3, -1.59967140679 AS sv_4, -0.336982899393 AS sv_5, 0.269040833446 AS sv_6, 0.235277280858 AS sv_7, -0.165115573861 AS sv_8, -1.35914314845 AS sv_9, 0.777058800223 AS sv_10, 0.163930365081 AS sv_11, 0.656594934076 AS sv_12, 0.735724104116 AS sv_13, -0.532876065799 AS sv_14, 1.52628007054 AS sv_15, 0.919021060814 AS sv_16, 0.386049532454 AS sv_17, 0.058698040095 AS sv_18, 0.433534350054 AS sv_19, 0.743594351609 AS sv_20, -0.0953949054249 AS sv_21, 0.665159439916 AS sv_22, 0.629875058318 AS sv_23, -1.91696688176 AS sv_24, -0.351665507644 AS sv_25, -0.0578062278908 AS sv_26, -0.326567020951 AS sv_27, -0.850227172765 AS sv_28, -1.05838243363 AS sv_29 UNION ALL SELECT 12 AS sv_idx, 0.147427714871 AS dual_coeff, -1.42411832691 AS sv_0, -0.410603780386 AS sv_1, -1.3414878329 AS sv_2, -1.12584906902 AS sv_3, 0.716881471077 AS sv_4, 0.690661355173 AS sv_5, 2.74364767952 AS sv_6, -0.121057216577 AS sv_7, 1.06194194421 AS sv_8, 2.49591213731 AS sv_9, -0.283366163466 AS sv_10, -0.0430087549141 AS sv_11, -0.476196809062 AS sv_12, -0.481285720679 AS sv_13, 0.870576756677 AS sv_14, 3.37059805461 AS sv_15, 8.58365030469 AS sv_16, 3.32409452277 AS sv_17, 2.45532107454 AS sv_18, 2.08209372205 AS sv_19, -1.21802075722 AS sv_20, -0.441484357136 AS sv_21, -1.22186486722 AS sv_22, -0.963260526307 AS sv_23, 0.719724380235 AS sv_24, 1.22373736198 AS sv_25, 4.76759759475 AS sv_26, 0.926645233949 AS sv_27, 2.13829266777 AS sv_28, 1.9840761886 AS sv_29 UNION ALL SELECT 13 AS sv_idx, 0.198268661873 AS dual_coeff, 0.288362442863 AS sv_0, -0.636440611835 AS sv_1, 0.323140256546 AS sv_2, 0.0661572137184 AS sv_3, 1.30852161015 AS sv_4, 1.42843802482 AS sv_5, 0.311769614706 AS sv_6, 0.935247255861 AS sv_7, 0.666116938383 AS sv_8, 0.246417571083 AS sv_9, 0.0720547683399 AS sv_10, -0.277912620854 AS sv_11, -0.0509915029231 AS sv_12, -0.0215633179579 AS sv_13, 0.680958721692 AS sv_14, 0.907235574983 AS sv_15, 0.00128671459609 AS sv_16, 1.65951525243 AS sv_17, 0.306865617313 AS sv_18, 0.414581202288 AS sv_19, -0.0140665105298 AS sv_20, -1.17080456757 AS sv_21, -0.0231890494803 AS sv_22, -0.190943386368 AS sv_23, 0.297713107892 AS sv_24, 0.251736091045 AS sv_25, -0.335683763997 AS sv_26, 0.434037459755 AS sv_27, -0.494948590323 AS sv_28, -0.342888986455 AS sv_29 UNION ALL SELECT 14 AS sv_idx, 0.909207169443 AS dual_coeff, 0.779173930164 AS sv_0, 0.101132869599 AS sv_1, 0.683081902756 AS sv_2, 0.644448940982 AS sv_3, -1.54755072788 AS sv_4, -0.602694852242 AS sv_5, -0.448802691709 AS sv_6, -0.528441773872 AS sv_7, 0.101166702789 AS sv_8, -1.46171668155 AS sv_9, 0.23688766425 AS sv_10, 1.57148924432 AS sv_11, 0.267795790263 AS sv_12, 0.118821015214 AS sv_13, -1.26166582457 AS sv_14, 0.0580692282401 AS sv_15, -0.0454526808754 AS sv_16, -0.136478170829 AS sv_17, -0.663667677628 AS sv_18, -0.8483545094 AS sv_19, 0.423923741282 AS sv_20, 0.473542388364 AS sv_21, 0.404061737042 AS sv_22, 0.284193031764 AS sv_23, -1.93806744537 AS sv_24, -0.517600947283 AS sv_25, -0.373378455851 AS sv_26, -0.438797232503 AS sv_27, -0.59622710025 AS sv_28, -1.4017724091 AS sv_29 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 0.0739850116282 AS sv_0, -1.33797630102 AS sv_1, 0.0346156036326 AS sv_2, -0.0274602608459 AS sv_3, 0.185814012909 AS sv_4, -0.527606414545 AS sv_5, -0.378727490444 AS sv_6, -0.0631496859887 AS sv_7, 0.932399215032 AS sv_8, -1.20528284879 AS sv_9, 0.384893868703 AS sv_10, -0.754991186679 AS sv_11, 0.400351560783 AS sv_12, 0.153657895529 AS sv_13, 0.0115337252535 AS sv_14, -0.628953150719 AS sv_15, -0.265254162282 AS sv_16, 0.138865768626 AS sv_17, 0.205501395632 AS sv_18, -0.868765591609 AS sv_19, 0.12293517961 AS sv_20, -1.41222306316 AS sv_21, 0.110326821308 AS sv_22, 0.00412004290227 AS sv_23, -0.0935265091755 AS sv_24, -0.638937138324 AS sv_25, -0.494194775897 AS sv_26, -0.0721283265735 AS sv_27, 0.26383643643 AS sv_28, -1.34317343718 AS sv_29 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, 0.683268237244 AS sv_0, -0.179961909971 AS sv_1, 0.609624423937 AS sv_2, 0.52609171338 AS sv_3, 0.0308606431517 AS sv_4, -0.369564914753 AS sv_5, -0.361880142405 AS sv_6, -0.00422623381134 AS sv_7, -1.15467808844 AS sv_8, -0.998711150184 AS sv_9, -0.243874948821 AS sv_10, 0.413748762191 AS sv_11, -0.261960546144 AS sv_12, -0.151372169606 AS sv_13, 0.070200078619 AS sv_14, -0.418890347095 AS sv_15, -0.432000113694 AS sv_16, -0.25694114434 AS sv_17, -0.460939234267 AS sv_18, -0.672673408957 AS sv_19, 0.405241692626 AS sv_20, 0.0312231866647 AS sv_21, 0.312084137166 AS sv_22, 0.243628304158 AS sv_23, 0.0867074717209 AS sv_24, -0.537932957674 AS sv_25, -0.479213552211 AS sv_26, -0.335304406548 AS sv_27, -0.810037287873 AS sv_28, -1.11053551864 AS sv_29 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, 0.0965510570213 AS sv_0, -0.600402819583 AS sv_1, 0.101543528778 AS sv_2, -0.0274602608459 AS sv_3, 0.07664232058 AS sv_4, 0.177588239737 AS sv_5, -0.100013754401 AS sv_6, -0.159662236969 AS sv_7, 0.345858524575 AS sv_8, 0.168062788852 AS sv_9, -0.20884795844 AS sv_10, -0.832360317128 AS sv_11, -0.106534237753 AS sv_12, -0.181232352733 AS sv_13, -0.865667939354 AS sv_14, 0.276489968347 AS sv_15, 0.202139792433 AS sv_16, 0.0715942379634 AS sv_17, -0.252385260925 AS sv_18, -0.172601894834 AS sv_19, 0.102177347771 AS sv_20, -0.633943857113 AS sv_21, 0.139997014816 AS sv_22, -0.0154568473771 AS sv_23, -0.106714361436 AS sv_24, 0.571801286872 AS sv_25, 0.531777413934 AS sv_26, 0.420479447621 AS sv_27, 0.249368077869 AS sv_28, 0.234310886985 AS sv_29 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, 0.257334130448 AS sv_0, 0.737800532726 AS sv_1, 0.239480350115 AS sv_2, 0.12013485671 AS sv_3, -0.793913884057 AS sv_4, -0.035880136758 AS sv_5, -0.240164156932 AS sv_6, -0.247793434838 AS sv_7, 0.46100761718 AS sv_8, -0.542828780842 AS sv_9, -0.313585527717 AS sv_10, 0.221724173367 AS sv_11, -0.277829898953 AS sv_12, -0.256504897698 AS sv_13, -0.910366113347 AS sv_14, 0.13997700578 AS sv_15, 0.0353938410212 AS sv_16, -0.00193510950456 AS sv_17, -0.213936763046 AS sv_18, 0.0613965833488 AS sv_19, 0.120859396426 AS sv_20, 1.06105033566 AS sv_21, 0.104392782606 AS sv_22, -0.00663842833233 AS sv_23, -1.06063567496 AS sv_24, 0.554748632996 AS sv_25, 0.222004369336 AS sv_26, 0.260796193601 AS sv_27, 0.426203571392 AS sv_28, 0.519687880249 AS sv_29 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, 0.110654835392 AS sv_0, 1.42972614397 AS sv_1, 0.169287648133 AS sv_2, 0.0152720398562 AS sv_3, -0.567118497412 AS sv_4, 0.34798843501 AS sv_5, 0.154283535207 AS sv_6, -0.244237709275 AS sv_7, 0.201922158818 AS sv_8, 0.066913888154 AS sv_9, -0.534736329729 AS sv_10, -0.257405140494 AS sv_11, -0.135472469346 AS sv_12, -0.368480584423 AS sv_13, 0.0286447449851 AS sv_14, 1.16800319327 AS sv_15, 0.198665918445 AS sv_16, -0.0551265523537 AS sv_17, -0.0251895916406 AS sv_18, 0.825354231747 AS sv_19, 0.00876710449358 AS sv_20, 1.09143867776 AS sv_21, 0.202304421184 AS sv_22, -0.109284826013 AS sv_23, 0.095499373228 AS sv_24, 1.1168303396 AS sv_25, 0.669508018786 AS sv_26, 0.105632276958 AS sv_27, 0.464785860888 AS sv_28, 1.09337181537 AS sv_29 UNION ALL SELECT 20 AS sv_idx, 0.0710972163505 AS dual_coeff, 0.192456749942 AS sv_0, -1.03285632661 AS sv_1, 0.130926520305 AS sv_2, 0.0498514673979 AS sv_3, -0.540353824454 AS sv_4, -0.498394952498 AS sv_5, -0.514971261545 AS sv_6, -0.336178613104 AS sv_7, -1.06111945069 AS sv_8, -0.544253413246 AS sv_9, -0.230482276029 AS sv_10, -1.52681817477 AS sv_11, -0.171878631672 AS sv_12, -0.245099966642 AS sv_13, -0.811541244285 AS sv_14, -0.585491881004 AS sv_15, -0.424736558992 AS sv_16, -0.203749701491 AS sv_17, 0.0854954780105 AS sv_18, -0.387647225252 AS sv_19, 0.226724338807 AS sv_20, -1.23833421669 AS sv_21, 0.22307355664 AS sv_22, 0.0175240398503 AS sv_23, -0.432014717201 AS sv_24, -0.321495427709 AS sv_25, -0.243380095482 AS sv_26, 0.17492878342 AS sv_27, 0.339393420027 AS sv_28, -0.10380518101 AS sv_29 UNION ALL SELECT 21 AS sv_idx, 0.0289046737798 AS dual_coeff, -0.19680753309 AS sv_0, 2.80636980802 AS sv_1, -0.217180309872 AS sv_2, -0.263612448936 AS sv_3, -0.279750429862 AS sv_4, -0.564682500989 AS sv_5, -0.733376374896 AS sv_6, -0.403229437995 AS sv_7, -1.58648718571 AS sv_8, -0.39609164321 AS sv_9, -0.237350313358 AS sv_10, 1.31794221442 AS sv_11, -0.288565049382 AS sv_12, -0.247795677619 AS sv_13, -0.424273471176 AS sv_14, -0.730362780054 AS sv_15, -0.759933818137 AS sv_16, -0.444988539354 AS sv_17, -0.61240301379 AS sv_18, -0.314021535854 AS sv_19, -0.234099528028 AS sv_20, 2.75942101089 AS sv_21, -0.296451531693 AS sv_22, -0.291473363478 AS sv_23, -0.643020353372 AS sv_24, -0.707147753828 AS sv_25, -0.944453037445 AS sv_26, -0.540181034348 AS sv_27, -1.12834117621 AS sv_28, -0.403831917255 AS sv_29 UNION ALL SELECT 22 AS sv_idx, 0.692382620428 AS dual_coeff, -0.174241487697 AS sv_0, -0.0694460137296 AS sv_1, -0.172289628372 AS sv_2, -0.280761595928 AS sv_3, 0.780271485978 AS sv_4, 0.175715710119 AS sv_5, -0.564658730038 AS sv_6, -0.431675242495 AS sv_7, -0.334240803624 AS sv_8, 0.0327227104533 AS sv_9, -0.721546945094 AS sv_10, -1.13773534285 AS sv_11, -0.682498395574 AS sv_12, -0.514463701931 AS sv_13, -0.922937474783 AS sv_14, -0.620595214235 AS sv_15, -0.534005686243 AS sv_16, -0.720176033389 AS sv_17, -0.857075273019 AS sv_18, -0.750672901685 AS sv_19, -0.171826032509 AS sv_20, -0.0177358089432 AS sv_21, -0.141869823514 AS sv_22, -0.266429053391 AS sv_23, 1.34394938724 AS sv_24, 0.40980107505 AS sv_25, -0.000297659548947 AS sv_26, 0.440063242925 AS sv_27, 0.996899936853 AS sv_28, 0.176297904781 AS sv_29 UNION ALL SELECT 23 AS sv_idx, 0.21773594021 AS dual_coeff, -0.160137709326 AS sv_0, -0.0358107409606 AS sv_1, -0.145355219472 AS sv_2, -0.261082246921 AS sv_3, 0.667578126155 AS sv_4, 0.192568476684 AS sv_5, -0.0300606353684 AS sv_6, 0.134447063123 AS sv_7, -0.0355728446798 AS sv_8, -0.306339801745 AS sv_9, -0.67415748752 AS sv_10, 0.214266907782 AS sv_11, -0.649826198615 AS sv_12, -0.447693014662 AS sv_13, -0.563606060419 AS sv_14, -0.334196590727 AS sv_15, 0.032867387212 AS sv_16, 0.265586558943 AS sv_17, -0.902514406876 AS sv_18, -0.503917497121 AS sv_19, -0.285994107626 AS sv_20, 0.32666540154 AS sv_21, -0.277462607848 AS sv_22, -0.34508935127 AS sv_23, 0.482343039542 AS sv_24, 0.0464483732304 AS sv_25, 0.378582320115 AS sv_26, 0.479230833534 AS sv_27, -0.372771340253 AS sv_28, -0.397386030343 AS sv_29 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, 0.248871863425 AS sv_0, 0.0146421681928 AS sv_1, 0.219075494887 AS sv_2, 0.102142309046 AS sv_3, -0.457946805083 AS sv_4, -0.115837151463 AS sv_5, -0.352357728296 AS sv_6, -0.0082899201684 AS sv_7, 0.227111022826 AS sv_8, -0.629731357498 AS sv_9, -0.419696704459 AS sv_10, -0.501630588416 AS sv_11, -0.3427075472 AS sv_12, -0.331984805046 AS sv_13, -0.602018553694 AS sv_14, -0.246159659766 AS sv_15, -0.525478904637 AS sv_16, -0.0160151973176 AS sv_17, -0.661337465636 AS sv_18, -0.375983749703 AS sv_19, 0.0149944540454 AS sv_20, 0.156153037526 AS sv_21, 0.0717555697468 AS sv_22, -0.107697510585 AS sv_23, -0.0231912971184 AS sv_24, 0.348149172575 AS sv_25, -0.411073147705 AS sv_26, 0.533462882069 AS sv_27, 0.103076896864 AS sv_28, 0.0632018889701 AS sv_29 UNION ALL SELECT 25 AS sv_idx, 0.0910894052237 AS dual_coeff, -0.272967936292 AS sv_0, 0.841108870516 AS sv_1, -0.189429706763 AS sv_2, -0.341767577852 AS sv_3, 0.266108031783 AS sv_4, 0.82173842846 AS sv_5, -0.0148003563473 AS sv_6, 0.0635865322721 AS sv_7, 0.122757157652 AS sv_8, 1.44738268782 AS sv_9, -0.744554870149 AS sv_10, -0.549543519802 AS sv_11, -0.660094603374 AS sv_12, -0.534785215448 AS sv_13, -0.630304116924 AS sv_14, 0.26980361916 AS sv_15, -0.21283024574 AS sv_16, -0.573899565553 AS sv_17, 0.494447682722 AS sv_18, 0.128097084139 AS sv_19, -0.337888687225 AS sv_20, 0.657560682201 AS sv_21, -0.213671691805 AS sv_22, -0.408405600011 AS sv_23, 0.13506293001 AS sv_24, 1.24800460019 AS sv_25, 0.245201102785 AS sv_26, -0.0133769406604 AS sv_27, 1.97753312821 AS sv_28, 1.40394636656 AS sv_29 UNION ALL SELECT 26 AS sv_idx, 0.674577662184 AS dual_coeff, 0.0401359435384 AS sv_0, 2.11684671625 AS sv_1, 0.0362479920508 AS sv_2, -0.0760963662502 AS sv_3, -0.999579265735 AS sv_4, -0.00966472210067 AS sv_5, 0.269040833446 AS sv_6, -0.112675863465 AS sv_7, -1.70523468745 AS sv_8, -0.235108181535 AS sv_9, -0.255894014148 AS sv_10, 2.06366877296 AS sv_11, -0.373512761476 AS sv_12, -0.226437352188 AS sv_13, -0.261544181484 AS sv_14, 0.160593249107 AS sv_15, 0.205297859695 AS sv_16, -0.291359136772 AS sv_17, -1.0539781864 AS sv_18, -0.0938734348848 AS sv_19, -0.0887947051517 AS sv_20, 2.57877919951 AS sv_21, -0.124067707409 AS sv_22, -0.188474229035 AS sv_23, -1.04305187195 AS sv_24, -0.0479970943905 AS sv_25, 0.197841105327 AS sv_26, -0.471487106203 AS sv_27, -1.62026536729 AS sv_28, -0.332927161228 AS sv_29) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 0.416374603315 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data".dual_coeff * ("ADS_sca_2_OUT".scaler_2 * "SV_data".sv_0 + "ADS_sca_2_OUT".scaler_3 * "SV_data".sv_1 + "ADS_sca_2_OUT".scaler_4 * "SV_data".sv_2 + "ADS_sca_2_OUT".scaler_5 * "SV_data".sv_3 + "ADS_sca_2_OUT".scaler_6 * "SV_data".sv_4 + "ADS_sca_2_OUT".scaler_7 * "SV_data".sv_5 + "ADS_sca_2_OUT".scaler_8 * "SV_data".sv_6 + "ADS_sca_2_OUT".scaler_9 * "SV_data".sv_7 + "ADS_sca_2_OUT".scaler_10 * "SV_data".sv_8 + "ADS_sca_2_OUT".scaler_11 * "SV_data".sv_9 + "ADS_sca_2_OUT".scaler_12 * "SV_data".sv_10 + "ADS_sca_2_OUT".scaler_13 * "SV_data".sv_11 + "ADS_sca_2_OUT".scaler_14 * "SV_data".sv_12 + "ADS_sca_2_OUT".scaler_15 * "SV_data".sv_13 + "ADS_sca_2_OUT".scaler_16 * "SV_data".sv_14 + "ADS_sca_2_OUT".scaler_17 * "SV_data".sv_15 + "ADS_sca_2_OUT".scaler_18 * "SV_data".sv_16 + "ADS_sca_2_OUT".scaler_19 * "SV_data".sv_17 + "ADS_sca_2_OUT".scaler_20 * "SV_data".sv_18 + "ADS_sca_2_OUT".scaler_21 * "SV_data".sv_19 + "ADS_sca_2_OUT".scaler_22 * "SV_data".sv_20 + "ADS_sca_2_OUT".scaler_23 * "SV_data".sv_21 + "ADS_sca_2_OUT".scaler_24 * "SV_data".sv_22 + "ADS_sca_2_OUT".scaler_25 * "SV_data".sv_23 + "ADS_sca_2_OUT".scaler_26 * "SV_data".sv_24 + "ADS_sca_2_OUT".scaler_27 * "SV_data".sv_25 + "ADS_sca_2_OUT".scaler_28 * "SV_data".sv_26 + "ADS_sca_2_OUT".scaler_29 * "SV_data".sv_27 + "ADS_sca_2_OUT".scaler_30 * "SV_data".sv_28 + "ADS_sca_2_OUT".scaler_31 * "SV_data".sv_29) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", -kernel_dp.dot_product AS "Score_0", kernel_dp.dot_product AS "Score_1", exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921) / (1.0 + exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921)) AS "Proba_0", 1.0 / (1.0 + exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921)) AS "Proba_1", CASE WHEN (exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921) / (1.0 + exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921)) IS NULL OR exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921) / (1.0 + exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921)) > 0.0) THEN ln(exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921) / (1.0 + exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921)) IS NULL OR 1.0 / (1.0 + exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921)) > 0.0) THEN ln(1.0 / (1.0 + exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS "Decision", CASE WHEN (exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921) / (1.0 + exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921)) <= 1.0 / (1.0 + exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921))) THEN 1.0 / (1.0 + exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921)) ELSE exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921) / (1.0 + exp(kernel_dp.dot_product * -1.4011149929 + 0.197069335921)) END AS "DecisionProba" 
FROM kernel_dp