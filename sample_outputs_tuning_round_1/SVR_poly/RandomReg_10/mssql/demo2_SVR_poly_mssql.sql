-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [SV_data] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3, [Values].sv_4 AS sv_4, [Values].sv_5 AS sv_5, [Values].sv_6 AS sv_6, [Values].sv_7 AS sv_7, [Values].sv_8 AS sv_8, [Values].sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, -1.22582821946 AS sv_0, -0.395030534552 AS sv_1, -0.755690086657 AS sv_2, 1.90277157129 AS sv_3, 0.271306899599 AS sv_4, 0.606925146687 AS sv_5, -1.12680994773 AS sv_6, -1.3563483158 AS sv_7, -1.35011598017 AS sv_8, 0.786755386179 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.813018270881 AS sv_0, -0.767307278643 AS sv_1, 0.64939396665 AS sv_2, -0.431508021054 AS sv_3, -0.871237880031 AS sv_4, -0.999365435139 AS sv_5, -0.323839655027 AS sv_6, 1.25318414298 AS sv_7, 0.475010510788 AS sv_8, 0.393610122483 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.0435728468702 AS dual_coeff, 0.443471740876 AS sv_0, -0.963038774874 AS sv_1, 0.0369869470433 AS sv_2, 1.54542706932 AS sv_3, 1.55475445602 AS sv_4, -0.266226001871 AS sv_5, 0.561651563113 AS sv_6, 0.432931082919 AS sv_7, -1.6702920432 AS sv_8, 0.120620762405 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, 0.619734798632 AS sv_0, 0.135205820221 AS sv_1, 0.229160369705 AS sv_2, 0.190194546772 AS sv_3, -0.79090579833 AS sv_4, 0.753453599565 AS sv_5, 1.2355805042 AS sv_6, 0.304658572226 AS sv_7, -2.03809977134 AS sv_8, 0.574590187374 AS sv_9 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 0.349415874784 AS sv_0, -1.1850456652 AS sv_1, 0.392838835583 AS sv_2, 1.13525493873 AS sv_3, -0.478655592406 AS sv_4, 1.09788259838 AS sv_5, 0.562281550361 AS sv_6, 0.663539284577 AS sv_7, -1.75162534339 AS sv_8, 0.956740557364 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, -0.919723457693 AS sv_0, -0.954151101641 AS sv_1, 0.568629903179 AS sv_2, 1.42187545322 AS sv_3, 0.6575038895 AS sv_4, 0.319513154022 AS sv_5, 1.33108697961 AS sv_6, -0.342192173998 AS sv_7, -0.501211309301 AS sv_8, -0.239296472354 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.245949906297 AS sv_0, -1.82864072646 AS sv_1, -1.24361469697 AS sv_2, 0.141700185016 AS sv_3, 1.99053157819 AS sv_4, -1.32371466619 AS sv_5, -2.58439291865 AS sv_6, 0.0228870957098 AS sv_7, 0.486896227314 AS sv_8, 1.04834858567 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, -1.31571153839 AS sv_0, -0.254384200258 AS sv_1, 0.36596290608 AS sv_2, 1.83024332766 AS sv_3, 0.642964286323 AS sv_4, 0.661081448496 AS sv_5, 0.061297026617 AS sv_6, 0.676180406825 AS sv_7, 1.49645665358 AS sv_8, 0.732394206242 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 0.362141924693 AS sv_0, -0.408309736748 AS sv_1, 1.02049819281 AS sv_2, -0.419320738817 AS sv_3, 0.547080062802 AS sv_4, 0.502325828919 AS sv_5, -1.27386810897 AS sv_6, 0.837991864578 AS sv_7, -1.92755051513 AS sv_8, 0.371173635711 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, 2.81077022815 AS sv_0, 0.247959867436 AS sv_1, 0.617244297737 AS sv_2, -0.234873636352 AS sv_3, 1.99614765177 AS sv_4, 0.55280516888 AS sv_5, 0.869311275668 AS sv_6, 2.61481887855 AS sv_7, -0.0650419737088 AS sv_8, 0.50104977481 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 0.560360095369 AS sv_0, 1.45637754316 AS sv_1, 1.55691959643 AS sv_2, -1.21956694502 AS sv_3, 1.18769013153 AS sv_4, 0.35764181457 AS sv_5, -0.0841977064807 AS sv_6, -1.27014217227 AS sv_7, -0.130627493152 AS sv_8, 1.42641402119 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, -0.502667491442 AS sv_0, 0.143574433901 AS sv_1, -0.872761441197 AS sv_2, -0.340137344639 AS sv_3, 0.740963770036 AS sv_4, -0.0190923417267 AS sv_5, -1.10579058363 AS sv_6, -0.242824068812 AS sv_7, -0.597973382692 AS sv_8, -0.38130269865 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, -0.530321200543 AS sv_0, -0.36538941592 AS sv_1, -0.961566289831 AS sv_2, -1.8130818762 AS sv_3, -0.536216408534 AS sv_4, -0.810038703116 AS sv_5, -0.45952368718 AS sv_6, -0.530327152648 AS sv_7, -1.27799441261 AS sv_8, 1.43629280498 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, -1.11827783341 AS sv_0, 0.8644006299 AS sv_1, 0.457768612364 AS sv_2, -1.81996240703 AS sv_3, 0.330473704469 AS sv_4, 0.314299332363 AS sv_5, -0.50473144786 AS sv_6, -0.016853103608 AS sv_7, -1.51866749776 AS sv_8, -1.04560882253 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, 1.02259654047 AS sv_0, 0.110983645335 AS sv_1, 0.188868862471 AS sv_2, 1.01773239693 AS sv_3, -0.757307886485 AS sv_4, 1.25338808351 AS sv_5, 1.93780982136 AS sv_6, 1.4639499794 AS sv_7, 1.90096459652 AS sv_8, -1.36373833867 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, -0.810083679079 AS sv_0, 2.13493248567 AS sv_1, 1.26775902176 AS sv_2, 0.595753055655 AS sv_3, 0.300120499181 AS sv_4, 0.522312689166 AS sv_5, -2.31212568422 AS sv_6, 0.877453233191 AS sv_7, -0.379258263066 AS sv_8, 0.303836228551 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, 0.107158511968 AS sv_0, 0.213088288428 AS sv_1, 0.643359212181 AS sv_2, 0.228854816092 AS sv_3, 0.332910563741 AS sv_4, 0.735939446916 AS sv_5, 0.261521257875 AS sv_6, 1.09012956056 AS sv_7, 0.462380601292 AS sv_8, -0.184407790991 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 1.1392139435 AS sv_0, 0.295558318498 AS sv_1, 0.213519359782 AS sv_2, 0.216169855464 AS sv_3, 1.26211906562 AS sv_4, -0.46884983781 AS sv_5, -2.89513976699 AS sv_6, -0.993739019175 AS sv_7, -0.309323509111 AS sv_8, -0.0469094839404 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, -0.513567547036 AS sv_0, -0.800367305347 AS sv_1, 0.193782831336 AS sv_2, 1.0965351527 AS sv_3, -0.320582689182 AS sv_4, 0.216365191728 AS sv_5, 1.46903207689 AS sv_6, -0.200862044148 AS sv_7, -2.01907690794 AS sv_8, -0.608032628453 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, 0.70246016344 AS sv_0, 1.05977742211 AS sv_1, -0.922595206617 AS sv_2, -1.00801921038 AS sv_3, -0.359929475823 AS sv_4, -1.76544973669 AS sv_5, 1.17390448517 AS sv_6, 0.691603843906 AS sv_7, 0.536387932603 AS sv_8, 0.361303302355 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -0.95642715313 AS dual_coeff, 1.08310798373 AS sv_0, -0.985104768416 AS sv_1, -0.542791895862 AS sv_2, 1.03878247039 AS sv_3, -1.31563323522 AS sv_4, 0.726778110955 AS sv_5, 0.822281203795 AS sv_6, -0.403062240692 AS sv_7, 0.716983075675 AS sv_8, -0.702503680009 AS sv_9 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, -0.277106109959 AS sv_0, -1.33236757997 AS sv_1, 0.841875958761 AS sv_2, -1.41284364633 AS sv_3, 1.93619749896 AS sv_4, 1.20935964311 AS sv_5, 0.0175752773168 AS sv_6, 1.86473375199 AS sv_7, 1.38368218731 AS sv_8, 0.559883772657 AS sv_9 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, 0.404352799125 AS sv_0, -1.64363805812 AS sv_1, 1.57275433695 AS sv_2, -0.968310189983 AS sv_3, -1.70274432564 AS sv_4, 1.04854160594 AS sv_5, 2.31405647108 AS sv_6, 1.13161880428 AS sv_7, -1.24282548876 AS sv_8, -0.281788650408 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, 0.0384157995422 AS sv_0, -1.92055033046 AS sv_1, 0.663529818927 AS sv_2, -0.239359285809 AS sv_3, -1.30003497564 AS sv_4, -0.533631290843 AS sv_5, 1.58940929432 AS sv_6, 0.744303931209 AS sv_7, -2.08322765266 AS sv_8, 0.364581317585 AS sv_9 UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, 0.162362937596 AS sv_0, 0.4102158211 AS sv_1, -0.169639335082 AS sv_2, 1.11079167711 AS sv_3, -0.728207018795 AS sv_4, -0.353520994579 AS sv_5, 1.62107707089 AS sv_6, -0.297913874979 AS sv_7, -1.37467561935 AS sv_8, -9.61714921592e-05 AS sv_9) AS [Values]), 
kernel_dp AS 
(SELECT t.[KEY] AS [KEY], t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.[KEY] AS [KEY], sum(full_join_data_sv.dot_prod1) + -33.1211639781 AS dot_product 
FROM (SELECT [ADS].[KEY] AS [KEY], [SV_data].dual_coeff * power(0.1 * ([ADS].[Feature_0] * [SV_data].sv_0 + [ADS].[Feature_1] * [SV_data].sv_1 + [ADS].[Feature_2] * [SV_data].sv_2 + [ADS].[Feature_3] * [SV_data].sv_3 + [ADS].[Feature_4] * [SV_data].sv_4 + [ADS].[Feature_5] * [SV_data].sv_5 + [ADS].[Feature_6] * [SV_data].sv_6 + [ADS].[Feature_7] * [SV_data].sv_7 + [ADS].[Feature_8] * [SV_data].sv_8 + [ADS].[Feature_9] * [SV_data].sv_9) + 0.0, 3) AS dot_prod1 
FROM [RandomReg_10] AS [ADS], [SV_data]) AS full_join_data_sv GROUP BY full_join_data_sv.[KEY]) AS t)
 SELECT kernel_dp.[KEY] AS [KEY], kernel_dp.dot_product AS [Estimator] 
FROM kernel_dp