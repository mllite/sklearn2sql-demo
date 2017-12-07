-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.166809472981 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN -0.163512719944 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.19149292241 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.0583848447531 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN -0.0993320516212 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.212931216605 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.04786556869 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.0507869895908 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN -0.191319922591 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.199404056775 ELSE [ADS].[Feature_9] END AS impter_11 
FROM [RandomReg_10] AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 0.166809472981) / 1.0289835997 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - -0.163512719944) / 0.991581253505 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 0.19149292241) / 0.932114762915 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - 0.0583848447531) / 1.08557293295 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - -0.0993320516212) / 1.07439044129 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - 0.212931216605) / 0.935807438189 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 0.04786556869) / 1.13635740906 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - 0.0507869895908) / 0.97254574601 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - -0.191319922591) / 1.14159746779 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - 0.199404056775) / 0.882245682091 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
[SV_data] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3, [Values].sv_4 AS sv_4, [Values].sv_5 AS sv_5, [Values].sv_6 AS sv_6, [Values].sv_7 AS sv_7, [Values].sv_8 AS sv_8, [Values].sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, -1.89460658595 AS sv_0, 0.729556461387 AS sv_1, -0.0626308551562 AS sv_2, 0.109362473094 AS sv_3, -1.24638458699 AS sv_4, 0.368818758066 AS sv_5, 0.248443686321 AS sv_6, 0.983620320911 AS sv_7, -0.476448815219 AS sv_8, 0.374916694026 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, 0.481562985269 AS sv_0, 0.0190109244535 AS sv_1, -0.659608430494 AS sv_2, -1.20486094149 AS sv_3, -0.418137509792 AS sv_4, -1.4427356823 AS sv_5, -0.027486056833 AS sv_6, -0.0854743210411 AS sv_7, 0.0971373950839 AS sv_8, 0.498498333142 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, 0.682864510743 AS sv_0, 0.489953523634 AS sv_1, -0.675330671964 AS sv_2, -0.189486155033 AS sv_3, -0.283562530252 AS sv_4, 1.7945366808 AS sv_5, 0.0250663255402 AS sv_6, -0.908118559971 AS sv_7, 0.0804430786306 AS sv_8, 0.698362431986 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 0.269761175437 AS sv_0, -0.449004825543 AS sv_1, -2.06882977107 AS sv_2, 1.30077141455 AS sv_3, -1.27556916424 AS sv_4, 0.255171159915 AS sv_5, -0.339213985377 AS sv_6, -0.144103631527 AS sv_7, -0.0499057510437 AS sv_8, 0.469752727257 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.392934125686 AS sv_0, 0.149792790986 AS sv_1, -1.83962778944 AS sv_2, 1.69055568486 AS sv_3, 0.507551087448 AS sv_4, -1.42586386234 AS sv_5, -0.340372410653 AS sv_6, -0.130294198719 AS sv_7, 0.0356627325395 AS sv_8, 0.813707273914 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, -0.445471687863 AS sv_0, 1.23590203175 AS sv_1, 1.65355760572 AS sv_2, 0.454892973547 AS sv_3, 0.531326332277 AS sv_4, 0.428017112329 AS sv_5, 0.155163673873 AS sv_6, -0.644304983194 AS sv_7, 0.201285194348 AS sv_8, -0.354693192043 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 2.20355897917 AS sv_0, 0.01612248193 AS sv_1, 0.136787313164 AS sv_2, -3.73044798726 AS sv_3, -1.88801260969 AS sv_4, 1.9595565234 AS sv_5, -1.18079197755 AS sv_6, -2.17376114296 AS sv_7, -1.2806441208 AS sv_8, -0.20834159347 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, 0.451216206027 AS sv_0, 0.692782911282 AS sv_1, 0.210265937098 AS sv_2, -1.74108459824 AS sv_3, -2.51487604351 AS sv_4, 1.0348357373 AS sv_5, -0.253730237275 AS sv_6, -1.29291981835 AS sv_7, -0.185019833926 AS sv_8, -2.95608556754 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 0.498773228294 AS sv_0, -0.783587022829 AS sv_1, 1.93657296312 AS sv_2, 1.76438866832 AS sv_3, 0.232137507885 AS sv_4, -0.787885378319 AS sv_5, -0.140028485772 AS sv_6, -0.0493317878037 AS sv_7, 0.186005010617 AS sv_8, 0.154701844545 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, -0.48212018871 AS sv_0, -0.225395057762 AS sv_1, 0.724661895966 AS sv_2, -0.834912672107 AS sv_3, 0.891725597645 AS sv_4, 1.24985249292 AS sv_5, 0.0655923191524 AS sv_6, -0.225232569807 AS sv_7, -1.13772130585 AS sv_8, -0.449919444419 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, -1.53367121746 AS sv_0, 0.691876112214 AS sv_1, -0.240598541656 AS sv_2, -1.22459999814 AS sv_3, 1.0228097025 AS sv_4, 0.262187189531 AS sv_5, 0.523727540204 AS sv_6, -0.561928725347 AS sv_7, 0.839318345912 AS sv_8, -0.975721522402 AS sv_9 UNION ALL SELECT 11 AS sv_idx, 1.0 AS dual_coeff, -0.932998756442 AS sv_0, -0.298332603944 AS sv_1, 0.432547888201 AS sv_2, 0.309264724007 AS sv_3, 0.263266208574 AS sv_4, 1.08246785083 AS sv_5, -0.245256095734 AS sv_6, -0.680501556231 AS sv_7, 0.134037401901 AS sv_8, 0.610897993979 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, 0.808041824388 AS sv_0, 0.402778966302 AS sv_1, 1.58484838721 AS sv_2, 0.0754516918966 AS sv_3, -0.232911855147 AS sv_4, 0.236737580105 AS sv_5, -0.146419842634 AS sv_6, 0.035648097915 AS sv_7, -1.85114245849 AS sv_8, 1.89774459067 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 1.28444848717 AS sv_0, -1.28239103525 AS sv_1, -0.146315314792 AS sv_2, -0.453398834268 AS sv_3, -1.17084065658 AS sv_4, -1.92841472801 AS sv_5, 0.382516079641 AS sv_6, -0.149097060653 AS sv_7, 0.160500835128 AS sv_8, -1.03621672169 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, 0.218469380616 AS sv_0, 0.902738769935 AS sv_1, -0.343566221706 AS sv_2, 0.402724730905 AS sv_3, 1.45919706717 AS sv_4, 0.0491008549715 AS sv_5, -0.202433461138 AS sv_6, -0.114271895049 AS sv_7, -0.136749985537 AS sv_8, -1.67883639713 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 1.93533856408 AS sv_0, 0.434824175616 AS sv_1, 0.81579700856 AS sv_2, 1.76134780609 AS sv_3, 0.0756500338546 AS sv_4, -1.56272046888 AS sv_5, 1.0637437347 AS sv_6, 0.574880942695 AS sv_7, 0.020088650364 AS sv_8, 0.459100304184 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, -0.505247349412 AS sv_0, 1.26393449181 AS sv_1, -2.45746627227 AS sv_2, -0.183135478202 AS sv_3, -1.21354981022 AS sv_4, 0.194110617239 AS sv_5, -0.00827859306978 AS sv_6, 0.905033940237 AS sv_7, 1.15761768996 AS sv_8, 1.67863371656 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, -2.02956576089 AS sv_0, -0.495734414983 AS sv_1, -0.079653017564 AS sv_2, -0.475774647798 AS sv_3, 1.03103721456 AS sv_4, -1.33933229409 AS sv_5, -0.395304572581 AS sv_6, 0.252786000321 AS sv_7, -0.92696508896 AS sv_8, 1.12273542656 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, -0.911073983009 AS sv_0, -0.0623548770743 AS sv_1, 0.586294815647 AS sv_2, -0.251579900678 AS sv_3, 0.240012638357 AS sv_4, -0.493339562441 AS sv_5, 0.240737817744 AS sv_6, 1.23363364941 AS sv_7, 0.105246194592 AS sv_8, -0.216729551437 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, -1.73903151789 AS sv_0, 0.977105617655 AS sv_1, -1.20780952908 AS sv_2, 0.743108790408 AS sv_3, -0.817790566599 AS sv_4, 0.506850331614 AS sv_5, -0.158171890546 AS sv_6, -0.551928260332 AS sv_7, 0.370280006804 AS sv_8, 0.603679529748 AS sv_9 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 1.36929088711 AS sv_0, 0.308242664588 AS sv_1, -0.369549983106 AS sv_2, 0.491251818884 AS sv_3, 0.71673052666 AS sv_4, 0.480507733306 AS sv_5, 0.0337886471421 AS sv_6, 0.782348591263 AS sv_7, 0.14492660002 AS sv_8, 0.579242265106 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -1.0 AS dual_coeff, -0.3389043177 AS sv_0, -1.68270818623 AS sv_1, -1.87833395507 AS sv_2, -0.987224819431 AS sv_3, -0.967487295038 AS sv_4, -1.02964494321 AS sv_5, -0.679300815188 AS sv_6, -0.634466977063 AS sv_7, 0.388979628132 AS sv_8, 0.123677030778 AS sv_9 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, -0.112720195698 AS sv_0, 1.51978177961 AS sv_1, 1.06720074453 AS sv_2, -0.664279519199 AS sv_3, -0.268581886551 AS sv_4, -0.10126734253 AS sv_5, 0.311288735268 AS sv_6, -0.237199716136 AS sv_7, -0.444753964742 AS sv_8, 0.0370076101236 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, -0.749384760172 AS sv_0, -0.319353954027 AS sv_1, -1.01465562959 AS sv_2, 0.345630131791 AS sv_3, 1.21804275111 AS sv_4, -2.10091388466 AS sv_5, 0.411617882006 AS sv_6, 0.0639172089637 AS sv_7, 0.286528426468 AS sv_8, -1.08800703801 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, 0.421777587949 AS sv_0, 0.975493093071 AS sv_1, 1.6182518644 AS sv_2, -0.133681369573 AS sv_3, -0.926790985248 AS sv_4, 0.308294678846 AS sv_5, -1.55632342693 AS sv_6, -0.890028113945 AS sv_7, 0.599590807691 AS sv_8, 0.19178772103 AS sv_9 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 1.52765477027 AS sv_0, 0.40752166524 AS sv_1, -1.35835944779 AS sv_2, 0.444877252534 AS sv_3, -0.656296656423 AS sv_4, -0.686998050812 AS sv_5, -0.480367424844 AS sv_6, 0.362143112515 AS sv_7, -0.719497736502 AS sv_8, 0.488962585173 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.724441749044 AS sv_0, 0.710239355663 AS sv_1, 0.884901995197 AS sv_2, -0.129288609645 AS sv_3, 1.77750506799 AS sv_4, -1.74662798035 AS sv_5, -0.902231277784 AS sv_6, 0.809725177226 AS sv_7, 1.70498179392 AS sv_8, 0.495214778011 AS sv_9 UNION ALL SELECT 27 AS sv_idx, -1.0 AS dual_coeff, 0.191069569485 AS sv_0, 3.26159172447 AS sv_1, -0.541741552967 AS sv_2, -0.0685774445671 AS sv_3, 0.665028283547 AS sv_4, -0.89732037206 AS sv_5, -0.237069979906 AS sv_6, 0.289143401662 AS sv_7, -0.869292660438 AS sv_8, -2.49967684594 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 0.848837486127 AS sv_0, -1.2769112281 AS sv_1, 0.646322228832 AS sv_2, 1.23443274685 AS sv_3, 1.48453180721 AS sv_4, -0.620750910688 AS sv_5, 0.310943581487 AS sv_6, 1.90644998368 AS sv_7, 0.189596642474 AS sv_8, -1.7158385258 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, 0.992568190297 AS sv_0, 0.811928022142 AS sv_1, -0.484909699299 AS sv_2, -0.282398656677 AS sv_3, 0.17023014661 AS sv_4, 1.46450156769 AS sv_5, 0.627911340637 AS sv_6, 0.989017601175 AS sv_7, 0.749931260705 AS sv_8, 1.21421721447 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, 0.219999785187 AS sv_0, 0.000883374830183 AS sv_1, 2.44448543444 AS sv_2, 0.648983941389 AS sv_3, 0.667834392074 AS sv_4, -0.613220613488 AS sv_5, -0.467786285556 AS sv_6, -0.704316465752 AS sv_7, 0.0343858318913 AS sv_8, 1.77939084203 AS sv_9 UNION ALL SELECT 31 AS sv_idx, -1.0 AS dual_coeff, -1.45876137994 AS sv_0, -0.349612366669 AS sv_1, -0.661552328065 AS sv_2, 0.698414154824 AS sv_3, -0.6960033133 AS sv_4, -1.24358668853 AS sv_5, 0.345609609694 AS sv_6, 0.136734215581 AS sv_7, 1.36929002185 AS sv_8, -0.486544782583 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, -1.9390369629 AS sv_0, 0.000251273583634 AS sv_1, -1.25392122382 AS sv_2, -0.688713672972 AS sv_3, -0.369558454435 AS sv_4, 0.902270016391 AS sv_5, -1.43062217413 AS sv_6, 0.496299150071 AS sv_7, 1.70744353696 AS sv_8, 2.24829358458 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, -0.524625755616 AS sv_0, -0.795749138267 AS sv_1, -0.349660586108 AS sv_2, -0.791055646085 AS sv_3, 0.0634546674087 AS sv_4, 0.624158210061 AS sv_5, 0.683294836961 AS sv_6, -1.16205489499 AS sv_7, 1.31985965994 AS sv_8, -0.412863802846 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 0.0706595642962 AS dual_coeff, -1.02986432151 AS sv_0, -0.488742737878 AS sv_1, -1.14435848675 AS sv_2, 1.08848583849 AS sv_3, -0.875115520756 AS sv_4, 0.894699698227 AS sv_5, 2.26856746424 AS sv_6, 0.310511029799 AS sv_7, -0.628242939647 AS sv_8, 0.809834282372 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, 0.109888416135 AS sv_0, 0.848649214783 AS sv_1, 1.3684237159 AS sv_2, -0.197258877059 AS sv_3, -0.695223242107 AS sv_4, -0.902269509216 AS sv_5, 1.98258288336 AS sv_6, -0.813388928772 AS sv_7, 1.01740005171 AS sv_8, 0.466227266662 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, 1.31851105263 AS sv_0, 0.909445089909 AS sv_1, -1.78585276492 AS sv_2, -0.478344439881 AS sv_3, -0.0988239724976 AS sv_4, 0.973592297968 AS sv_5, -0.162631739525 AS sv_6, 1.42040439231 AS sv_7, 1.81035126985 AS sv_8, -0.23937756952 AS sv_9 UNION ALL SELECT 37 AS sv_idx, -1.0 AS dual_coeff, 0.969700337246 AS sv_0, -1.09302665309 AS sv_1, 0.297631857568 AS sv_2, -0.458602577295 AS sv_3, -1.17628570143 AS sv_4, 0.330346394305 AS sv_5, 0.791768889486 AS sv_6, 1.14456284084 AS sv_7, -0.622289358881 AS sv_8, 0.487967900692 AS sv_9 UNION ALL SELECT 38 AS sv_idx, -1.0 AS dual_coeff, 0.746142069427 AS sv_0, -1.75140955174 AS sv_1, -0.0130394515655 AS sv_2, 0.119020408163 AS sv_3, -0.409005074784 AS sv_4, 1.14790212912 AS sv_5, -2.30065982198 AS sv_6, 0.58861148454 AS sv_7, -0.0504801221828 AS sv_8, -0.39026804176 AS sv_9 UNION ALL SELECT 39 AS sv_idx, -1.0 AS dual_coeff, -1.23606835847 AS sv_0, -0.462357334927 AS sv_1, 0.500364984178 AS sv_2, 0.127984081924 AS sv_3, -2.37446523928 AS sv_4, -1.00269239742 AS sv_5, 0.010103699567 AS sv_6, -0.887359242554 AS sv_7, 0.157869540028 AS sv_8, -1.12220967717 AS sv_9 UNION ALL SELECT 40 AS sv_idx, -1.0 AS dual_coeff, -0.318845560734 AS sv_0, -1.52574308618 AS sv_1, -0.395672825327 AS sv_2, -0.18462445186 AS sv_3, -0.891243670597 AS sv_4, -0.186456788876 AS sv_5, 0.67884181478 AS sv_6, -1.86409900059 AS sv_7, -0.212494982181 AS sv_8, 0.940810667227 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, -0.16510154496 AS sv_0, -0.452362102489 AS sv_1, 0.383012910992 AS sv_2, 0.642116275135 AS sv_3, -1.83359612559 AS sv_4, 0.573032413507 AS sv_5, 0.040787432477 AS sv_6, -0.905672979017 AS sv_7, 1.16173147853 AS sv_8, -1.49379349187 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 1.0 AS dual_coeff, -0.309929272547 AS sv_0, -0.00116898712211 AS sv_1, 0.335328766814 AS sv_2, 0.57320417414 AS sv_3, 1.06191462429 AS sv_4, -0.76855449228 AS sv_5, -0.7563735871 AS sv_6, 1.16395836303 AS sv_7, 1.32063625178 AS sv_8, 0.405062539273 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, 0.957568070248 AS sv_0, 1.79808483068 AS sv_1, -0.309507215971 AS sv_2, -0.401334589651 AS sv_3, -0.183912229998 AS sv_4, 0.485389578141 AS sv_5, -0.990253925477 AS sv_6, 0.0946345694701 AS sv_7, -1.4943349459 AS sv_8, 0.726070088856 AS sv_9 UNION ALL SELECT 44 AS sv_idx, -1.0 AS dual_coeff, -1.18207123121 AS sv_0, -2.21993374147 AS sv_1, 0.800889330141 AS sv_2, -1.93307937609 AS sv_3, -0.157473864851 AS sv_4, 1.61323023743 AS sv_5, -0.112808880227 AS sv_6, 0.637921385204 AS sv_7, 0.0241764989948 AS sv_8, 0.239509272832 AS sv_9 UNION ALL SELECT 45 AS sv_idx, -1.0 AS dual_coeff, -0.857689258708 AS sv_0, -0.594304076327 AS sv_1, -0.961989114161 AS sv_2, -1.07468816526 AS sv_3, 1.01441782556 AS sv_4, 1.82123453341 AS sv_5, 0.949808204457 AS sv_6, -2.01405908278 AS sv_7, 0.1235138417 AS sv_8, -0.5768842288 AS sv_9 UNION ALL SELECT 46 AS sv_idx, -1.0 AS dual_coeff, 0.478724200446 AS sv_0, -0.962021109506 AS sv_1, -0.174218941068 AS sv_2, 0.863648355957 AS sv_3, 1.07010609547 AS sv_4, 0.834597218213 AS sv_5, -2.49242830165 AS sv_6, -0.898909971329 AS sv_7, -2.10527773969 AS sv_8, 1.33753434044 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, 0.496568534615 AS sv_0, 0.0927124511937 AS sv_1, 0.150251706878 AS sv_2, 0.742386178478 AS sv_3, 0.080526531613 AS sv_4, -0.233986007466 AS sv_5, 1.31737452755 AS sv_6, 1.75815952253 AS sv_7, 0.500853803671 AS sv_8, -0.85801460282 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 1.0 AS dual_coeff, 0.224679452324 AS sv_0, 0.999043785077 AS sv_1, 0.111089839932 AS sv_2, 1.06773115847 AS sv_3, -0.76216165183 AS sv_4, -0.0090305785028 AS sv_5, 1.64014663443 AS sv_6, -2.31406161124 AS sv_7, 0.350282289596 AS sv_8, 0.281786663167 AS sv_9 UNION ALL SELECT 49 AS sv_idx, -1.0 AS dual_coeff, 0.554671136083 AS sv_0, -1.03476943148 AS sv_1, -0.771145773999 AS sv_2, -1.09944545597 AS sv_3, -0.426995460659 AS sv_4, -0.983404311947 AS sv_5, -0.230032948018 AS sv_6, -0.0464906521061 AS sv_7, -1.35776424364 AS sv_8, -0.775753849975 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 1.0 AS dual_coeff, -1.32399550032 AS sv_0, -0.383579931116 AS sv_1, 1.28884990682 AS sv_2, 0.220044392518 AS sv_3, 0.000271030445114 AS sv_4, 1.69400311938 AS sv_5, -0.304614754181 AS sv_6, -0.798727031827 AS sv_7, 0.0905197659736 AS sv_8, 1.44540891611 AS sv_9 UNION ALL SELECT 51 AS sv_idx, -1.0 AS dual_coeff, 0.584754542982 AS sv_0, -0.939758771073 AS sv_1, 0.245951973521 AS sv_2, -1.08405370362 AS sv_3, 0.96935941198 AS sv_4, -1.99767753382 AS sv_5, -1.02352041159 AS sv_6, 1.07913704328 AS sv_7, -1.33678264848 AS sv_8, -0.334777271145 AS sv_9 UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, 1.71170269372 AS sv_0, -0.363585491762 AS sv_1, 2.04305607232 AS sv_2, 1.24050477166 AS sv_3, 0.593839546493 AS sv_4, 0.747905550456 AS sv_5, -0.73355883573 AS sv_6, -1.20604280239 AS sv_7, 2.78637291985 AS sv_8, -2.19674651467 AS sv_9 UNION ALL SELECT 53 AS sv_idx, 1.0 AS dual_coeff, 1.60735659795 AS sv_0, 1.01574693163 AS sv_1, 0.441513054725 AS sv_2, 0.920975586357 AS sv_3, -0.808129315341 AS sv_4, 0.0254766221217 AS sv_5, 0.899560850265 AS sv_6, -1.52113028129 AS sv_7, 1.60064598013 AS sv_8, -0.408558487012 AS sv_9 UNION ALL SELECT 54 AS sv_idx, -0.0706595642962 AS dual_coeff, -1.1774816893 AS sv_0, 1.29377974242 AS sv_1, -0.773032285584 AS sv_2, -1.07513997393 AS sv_3, 1.24737403066 AS sv_4, 0.813402606659 AS sv_5, 0.563555453874 AS sv_6, -1.37471647988 AS sv_7, 0.0623871582205 AS sv_8, -1.3168743063 AS sv_9 UNION ALL SELECT 55 AS sv_idx, -1.0 AS dual_coeff, -1.35341097063 AS sv_0, -0.233483452606 AS sv_1, -1.01616565551 AS sv_2, 1.6989984464 AS sv_3, 0.344976031968 AS sv_4, 0.421020301831 AS sv_5, -1.03372011926 AS sv_6, -1.44685770429 AS sv_7, -1.01506537135 AS sv_8, 0.665745768245 AS sv_9 UNION ALL SELECT 56 AS sv_idx, -1.0 AS dual_coeff, -0.952228727594 AS sv_0, -0.608920909471 AS sv_1, 0.491249642703 AS sv_2, -0.451275866353 AS sv_3, -0.718459322371 AS sv_4, -1.29545524247 AS sv_5, -0.3271023894 AS sv_6, 1.23633994423 AS sv_7, 0.583682473181 AS sv_8, 0.220126966502 AS sv_9 UNION ALL SELECT 57 AS sv_idx, -1.0 AS dual_coeff, 0.268869463006 AS sv_0, -0.806314209858 AS sv_1, -0.165758532655 AS sv_2, 1.36982249597 AS sv_3, 1.53955810111 AS sv_4, -0.5120254434 AS sv_5, 0.452134152799 AS sv_6, 0.39293174115 AS sv_7, -1.29552855742 AS sv_8, -0.0892985887822 AS sv_9 UNION ALL SELECT 58 AS sv_idx, 1.0 AS dual_coeff, 0.17746288848 AS sv_0, -1.03020598831 AS sv_1, 0.216009788905 AS sv_2, 0.991983183521 AS sv_3, -0.353059303404 AS sv_4, 0.945655426169 AS sv_5, 0.452688544615 AS sv_6, 0.630049843414 AS sv_7, -1.36677372263 AS sv_8, 0.858419050342 AS sv_9 UNION ALL SELECT 59 AS sv_idx, 1.0 AS dual_coeff, -1.05592832674 AS sv_0, -0.797351078293 AS sv_1, 0.404603591503 AS sv_2, 1.25601013721 AS sv_3, 0.704432869129 AS sv_4, 0.113893022291 AS sv_5, 1.12924102988 AS sv_6, -0.404072677507 AS sv_7, -0.271454164408 AS sv_8, -0.497254379402 AS sv_9 UNION ALL SELECT 60 AS sv_idx, -1.0 AS dual_coeff, 0.0769112679138 AS sv_0, -1.6792653155 AS sv_1, -1.53962545866 AS sv_2, 0.0767478054532 AS sv_3, 1.94516215846 AS sv_4, -1.64205350384 AS sv_5, -2.3164001628 AS sv_6, -0.0286874874478 AS sv_7, 0.594093950835 AS sv_8, 0.962254104648 AS sv_9 UNION ALL SELECT 61 AS sv_idx, 1.0 AS dual_coeff, -1.44076252702 AS sv_0, -0.0916429994945 AS sv_1, 0.187176505096 AS sv_2, 1.63218741839 AS sv_3, 0.6908999833 AS sv_4, 0.478891504387 AS sv_5, 0.0118197477482 AS sv_6, 0.643047815282 AS sv_7, 1.47843405735 AS sv_8, 0.604128940823 AS sv_9 UNION ALL SELECT 62 AS sv_idx, -1.0 AS dual_coeff, 0.189830481037 AS sv_0, -0.246875398197 AS sv_1, 0.889381118487 AS sv_2, -0.44004927635 AS sv_3, 0.601654751925 AS sv_4, 0.309245898786 AS sv_5, -1.16313201034 AS sv_6, 0.809427091956 AS sv_7, -1.52087810417 AS sv_8, 0.194695856747 AS sv_9 UNION ALL SELECT 63 AS sv_idx, 1.0 AS dual_coeff, 2.56948775076 AS sv_0, 0.414966081626 AS sv_1, 0.456758536895 AS sv_2, -0.270141666399 AS sv_3, 1.95038937696 AS sv_4, 0.363187914955 AS sv_5, 0.722876183521 AS sv_6, 2.63641263095 AS sv_7, 0.110615126999 AS sv_8, 0.341906709388 AS sv_9 UNION ALL SELECT 64 AS sv_idx, 1.0 AS dual_coeff, 0.38246539838 AS sv_0, 1.63364349354 AS sv_1, 1.46486970097 AS sv_2, -1.17721412444 AS sv_3, 1.19790918989 AS sv_4, 0.154637152965 AS sv_5, -0.116216319019 AS sv_6, -1.35821802448 AS sv_7, 0.0531644744766 AS sv_8, 1.39078035667 AS sv_9 UNION ALL SELECT 65 AS sv_idx, -1.0 AS dual_coeff, -0.650619664507 AS sv_0, 0.309694392426 AS sv_1, -1.14176323126 AS sv_2, -0.367107706259 AS sv_3, 0.782114014947 AS sv_4, -0.24793942521 AS sv_5, -1.01522297749 AS sv_6, -0.301899483503 AS sv_7, -0.356214402689 AS sv_8, -0.658214335545 AS sv_9 UNION ALL SELECT 66 AS sv_idx, -1.0 AS dual_coeff, -0.677494445708 AS sv_0, -0.203590674251 AS sv_1, -1.23703567213 AS sv_2, -1.72394379424 AS sv_3, -0.406634627528 AS sv_4, -1.09314147118 AS sv_5, -0.446504992024 AS sv_6, -0.59751856879 AS sv_7, -0.951889366153 AS sv_8, 1.40197767279 AS sv_9 UNION ALL SELECT 67 AS sv_idx, -1.0 AS dual_coeff, -1.24888997916 AS sv_0, 1.03664056396 AS sv_1, 0.285668353886 AS sv_2, -1.73028195045 AS sv_3, 0.400046146701 AS sv_4, 0.108321553796 AS sv_5, -0.486288039435 AS sv_6, -0.0695495234814 AS sv_7, -1.16271068622 AS sv_8, -1.41118614075 AS sv_9 UNION ALL SELECT 68 AS sv_idx, 1.0 AS dual_coeff, 0.831681931314 AS sv_0, 0.27682690078 AS sv_1, -0.00281516830688 AS sv_2, 0.883724642589 AS sv_3, -0.612417804159 AS sv_4, 1.1118279514 AS sv_5, 1.66316005651 AS sv_6, 1.45305554583 AS sv_7, 1.83276906102 AS sv_8, -1.77177675921 AS sv_9 UNION ALL SELECT 69 AS sv_idx, 1.0 AS dual_coeff, -0.949376795064 AS sv_0, 2.31795951919 AS sv_1, 1.15464977293 AS sv_2, 0.495008851631 AS sv_3, 0.371794587379 AS sv_4, 0.33060377588 AS sv_5, -2.0768036835 AS sv_6, 0.850002426099 AS sv_7, -0.164627502931 AS sv_8, 0.118370850542 AS sv_9 UNION ALL SELECT 70 AS sv_idx, 1.0 AS dual_coeff, -0.0579707597193 AS sv_0, 0.379798435117 AS sv_1, 0.484775381475 AS sv_2, 0.157032260261 AS sv_3, 0.402314278638 AS sv_4, 0.558884455251 AS sv_5, 0.188018036827 AS sv_6, 1.0686824504 AS sv_7, 0.572619108157 AS sv_8, -0.435039644349 AS sv_9 UNION ALL SELECT 71 AS sv_idx, -1.0 AS dual_coeff, 0.945014547167 AS sv_0, 0.462968654178 AS sv_1, 0.0236306067105 AS sv_2, 0.145347222578 AS sv_3, 1.26718468903 AS sv_4, -0.728548445538 AS sv_5, -2.58985888789 AS sv_6, -1.07401221285 AS sv_7, -0.103367071012 AS sv_8, -0.279189284476 AS sv_9 UNION ALL SELECT 72 AS sv_idx, -1.0 AS dual_coeff, -0.66121269592 AS sv_0, -0.642261623192 AS sv_1, 0.00245668131988 AS sv_2, 0.956315579022 AS sv_3, -0.205931316082 AS sv_4, 0.0036695317684 AS sv_5, 1.25063338072 AS sv_6, -0.258752901621 AS sv_7, -1.60105206688 AS sv_8, -0.915206162657 AS sv_9 UNION ALL SELECT 73 AS sv_idx, -1.0 AS dual_coeff, 0.520562903638 AS sv_0, 1.23367614881 AS sv_1, -1.1952263534 AS sv_2, -0.982342155706 AS sv_3, -0.242553744139 AS sv_4, -2.11408979301 AS sv_5, 0.990919676767 AS sv_6, 0.658906644694 AS sv_7, 0.637446977349 AS sv_8, 0.183508118959 AS sv_9 UNION ALL SELECT 74 AS sv_idx, -1.0 AS dual_coeff, 0.890488935888 AS sv_0, -0.828567548618 AS sv_1, -0.787762245044 AS sv_2, 0.903115392693 AS sv_3, -1.13208488912 AS sv_4, 0.549094689122 AS sv_5, 0.681489493472 AS sv_6, -0.466661061595 AS sv_7, 0.795642092674 AS sv_8, -1.02228637112 AS sv_9 UNION ALL SELECT 75 AS sv_idx, 1.0 AS dual_coeff, -0.431411718387 AS sv_0, -1.17877869907 AS sv_1, 0.697749957653 AS sv_2, -1.35525531858 AS sv_3, 1.89459015303 AS sv_4, 1.06477934011 AS sv_5, -0.0266556024818 AS sv_6, 1.86515315073 AS sv_7, 1.37964751529 AS sv_8, 0.408593346728 AS sv_9 UNION ALL SELECT 76 AS sv_idx, -1.0 AS dual_coeff, -0.124777181557 AS sv_0, -1.77195525258 AS sv_1, 0.506414998772 AS sv_2, -0.274273723602 AS sv_3, -1.11756664791 AS sv_4, -0.797773641224 AS sv_5, 1.35656591257 AS sv_6, 0.713094416858 AS sv_7, -1.65724590623 AS sv_8, 0.187223654548 AS sv_9 UNION ALL SELECT 77 AS sv_idx, -1.0 AS dual_coeff, -0.00432128887842 AS sv_0, 0.578599624607 AS sv_1, -0.387433255925 AS sv_2, 0.96944829814 AS sv_3, -0.58533187099 AS sv_4, -0.605308515478 AS sv_5, 1.38443370867 AS sv_6, -0.358544434542 AS sv_7, -1.03657876804 AS sv_8, -0.226127746858 AS sv_9) AS [Values]), 
kernel_dp AS 
(SELECT t.[KEY] AS [KEY], t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.[KEY] AS [KEY], sum(full_join_data_sv.dot_prod1) + 14.6648799017 AS dot_product 
FROM (SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], [SV_data].dual_coeff * ([ADS_sca_2_OUT].scaler_2 * [SV_data].sv_0 + [ADS_sca_2_OUT].scaler_3 * [SV_data].sv_1 + [ADS_sca_2_OUT].scaler_4 * [SV_data].sv_2 + [ADS_sca_2_OUT].scaler_5 * [SV_data].sv_3 + [ADS_sca_2_OUT].scaler_6 * [SV_data].sv_4 + [ADS_sca_2_OUT].scaler_7 * [SV_data].sv_5 + [ADS_sca_2_OUT].scaler_8 * [SV_data].sv_6 + [ADS_sca_2_OUT].scaler_9 * [SV_data].sv_7 + [ADS_sca_2_OUT].scaler_10 * [SV_data].sv_8 + [ADS_sca_2_OUT].scaler_11 * [SV_data].sv_9) AS dot_prod1 
FROM [ADS_sca_2_OUT], [SV_data]) AS full_join_data_sv GROUP BY full_join_data_sv.[KEY]) AS t)
 SELECT kernel_dp.[KEY] AS [KEY], kernel_dp.dot_product AS [Estimator] 
FROM kernel_dp