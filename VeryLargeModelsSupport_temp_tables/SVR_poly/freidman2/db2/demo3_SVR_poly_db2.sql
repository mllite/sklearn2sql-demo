-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_poly
-- Dataset : freidman2
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."TGT" AS DOUBLE) AS "TGT" 
FROM "FREIDMAN2" AS "ADS"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE) AS sv_0, CAST("Values".sv_1 AS DOUBLE) AS sv_1, CAST("Values".sv_2 AS DOUBLE) AS sv_2, CAST("Values".sv_3 AS DOUBLE) AS sv_3 
FROM (SELECT 0 AS sv_idx, -7.031423171521927e-10 AS dual_coeff, 40.442330919192635 AS sv_0, 551.0711911042478 AS sv_1, 0.03866274947464787 AS sv_2, 4.578076302455036 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS sv_idx, -5.41129102536018e-13 AS dual_coeff, 48.69438373960177 AS sv_0, 1664.2552781105514 AS sv_1, 0.31144836807627496 AS sv_2, 4.632624341589297 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS sv_idx, -5.4603577968586816e-11 AS dual_coeff, 62.41256103982974 AS sv_0, 1030.794250465373 AS sv_1, 0.7128122573277177 AS sv_2, 10.40492055481995 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS sv_idx, -8.462046324865268e-12 AS dual_coeff, 48.40695232096023 AS sv_0, 1631.018157352114 AS sv_1, 0.12706925899257115 AS sv_2, 4.261898976946841 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS sv_idx, 3.4657077605931158e-09 AS dual_coeff, 38.24928980103384 AS sv_0, 135.90560294712617 AS sv_1, 0.6479362057456745 AS sv_2, 2.179461386442667 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS sv_idx, -5.929306247326674e-09 AS dual_coeff, 50.620296436646505 AS sv_0, 412.32368442868733 AS sv_1, 0.10447729455745358 AS sv_2, 2.8853801455282126 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS sv_idx, -5.268294609327687e-09 AS dual_coeff, 99.96662363577734 AS sv_0, 209.47236840414524 AS sv_1, 0.7902072202716324 AS sv_2, 1.8022959941601326 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS sv_idx, -1.3183480989696662e-11 AS dual_coeff, 62.911872734919996 AS sv_0, 456.23422619927044 AS sv_1, 0.054305830277497025 AS sv_2, 10.085281642538757 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS sv_idx, -8.571813942954831e-11 AS dual_coeff, 61.677300727460114 AS sv_0, 819.5815430545475 AS sv_1, 0.19176235240070616 AS sv_2, 8.475580701491157 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS sv_idx, 3.129198121064004e-11 AS dual_coeff, 14.354024845151192 AS sv_0, 1727.5875493321003 AS sv_1, 0.005807417979881824 AS sv_2, 3.518415193774599 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS sv_idx, 6.588277670734914e-09 AS dual_coeff, 40.27856713793895 AS sv_0, 366.2162846523089 AS sv_1, 0.9966853241577984 AS sv_2, 1.656986931673732 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS sv_idx, 7.031423171521927e-10 AS dual_coeff, 0.11836099216243623 AS sv_0, 559.8947439915403 AS sv_1, 0.995587810764828 AS sv_2, 8.379542913119769 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS sv_idx, 2.0947244159415585e-10 AS dual_coeff, 35.204122625647635 AS sv_0, 1709.6137391765267 AS sv_1, 0.5384102305994837 AS sv_2, 3.8037750547337037 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS sv_idx, -2.398773790923266e-13 AS dual_coeff, 96.45390231426003 AS sv_0, 990.2254318826166 AS sv_1, 0.18310123438213766 AS sv_2, 1.134096666285749 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS sv_idx, -9.664044609997104e-12 AS dual_coeff, 69.85214811522404 AS sv_0, 1639.1260281796144 AS sv_1, 0.4296756544509407 AS sv_2, 7.464140755060015 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS sv_idx, 5.935720814799594e-11 AS dual_coeff, 39.22420371373826 AS sv_0, 1480.0362298674247 AS sv_1, 0.979651504500836 AS sv_2, 10.93827839877219 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS sv_idx, -6.589714234082403e-10 AS dual_coeff, 56.413773572677925 AS sv_0, 355.67891387520524 AS sv_1, 0.8414818043413281 AS sv_2, 9.840426401160759 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS sv_idx, -2.65603025242382e-08 AS dual_coeff, 49.3998858198411 AS sv_0, 243.93515665851513 AS sv_1, 0.41374778042760696 AS sv_2, 6.0193130914022674 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS sv_idx, 2.4518198514940597e-09 AS dual_coeff, 15.326716261726414 AS sv_0, 180.5390310694927 AS sv_1, 0.7104185591645422 AS sv_2, 9.612317521518237 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS sv_idx, -4.632812818086127e-11 AS dual_coeff, 91.36045636770356 AS sv_0, 303.1369476103539 AS sv_1, 0.5593024980266833 AS sv_2, 3.665227001304319 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS sv_idx, 1.311142064912112e-10 AS dual_coeff, 78.70377755058512 AS sv_0, 884.3045807091647 AS sv_1, 0.8550598892720919 AS sv_2, 8.805754588947428 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS sv_idx, -2.218573253883052e-10 AS dual_coeff, 11.920432983287899 AS sv_0, 1644.054573840725 AS sv_1, 0.044505714773144245 AS sv_2, 1.9788585131261551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS sv_idx, -6.237208673975755e-11 AS dual_coeff, 17.868131429293165 AS sv_0, 1485.9419331014494 AS sv_1, 0.05359575229286839 AS sv_2, 6.342325760231504 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS sv_idx, -1.311142064912112e-10 AS dual_coeff, 51.65052020909686 AS sv_0, 880.62728820991 AS sv_1, 0.5666035361130893 AS sv_2, 9.5100026719075 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS sv_idx, 3.0148785917616145e-12 AS dual_coeff, 89.79240360827384 AS sv_0, 1393.0059875788913 AS sv_1, 0.8484215372640762 AS sv_2, 9.34953230770002 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS sv_idx, 2.5970581130649274e-08 AS dual_coeff, 69.39239551937591 AS sv_0, 246.84317528265575 AS sv_1, 0.9354970990229087 AS sv_2, 5.640783341563046 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS sv_idx, 5.4603577968586816e-11 AS dual_coeff, 78.03364203742906 AS sv_0, 1032.4792951117327 AS sv_1, 0.9723393786954382 AS sv_2, 1.2304422399648032 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS sv_idx, 8.571813942954831e-11 AS dual_coeff, 1.7602332664928388 AS sv_0, 822.9672743702864 AS sv_1, 0.9260703993753714 AS sv_2, 9.748652596447922 AS sv_3 FROM SYSIBM.SYSDUMMY1) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE)) + 16860.25721595913 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * power(0.25 * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3) + 0.0, 3) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp