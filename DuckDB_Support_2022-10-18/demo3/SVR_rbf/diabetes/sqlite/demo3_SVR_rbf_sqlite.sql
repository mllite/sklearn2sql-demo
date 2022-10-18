-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_rbf
-- Dataset : diabetes
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."Feature_8" AS FLOAT) AS "Feature_8", CAST("ADS"."Feature_9" AS FLOAT) AS "Feature_9", CAST("ADS"."TGT" AS FLOAT) AS "TGT" 
FROM diabetes AS "ADS"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, 0.1 AS dual_coeff, 0.0707687524925978 AS sv_0, -0.044641636506989144 AS sv_1, 0.012116851120166501 AS sv_2, 0.04252949136913227 AS sv_3, 0.07135654166444816 AS sv_4, 0.053487103386949876 AS sv_5, 0.05232173725423556 AS sv_6, -0.002592261998183278 AS sv_7, 0.025395078941660074 AS sv_8, -0.005219804415300423 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 0.1 AS dual_coeff, -0.0018820165277906047 AS sv_0, 0.05068011873981862 AS sv_1, 0.07139651518361048 AS sv_2, 0.09761510698272045 AS sv_3, 0.08786797596286161 AS sv_4, 0.07540749571221732 AS sv_5, -0.02131101882750326 AS sv_6, 0.07120997975363674 AS sv_7, 0.07142887212197009 AS sv_8, 0.02377494398854077 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 0.1 AS dual_coeff, 0.012648137276287077 AS sv_0, -0.044641636506989144 AS sv_1, 0.03367309259778249 AS sv_2, 0.03333707926361473 AS sv_3, 0.030077955918414535 AS sv_4, 0.02718263259662897 AS sv_5, -0.002902829807068556 AS sv_6, 0.00884708547334881 AS sv_7, 0.031192602201596156 AS sv_8, 0.027917050903375224 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 0.1 AS dual_coeff, 0.027178291080364757 AS sv_0, -0.044641636506989144 AS sv_1, 0.09295275666122646 AS sv_2, -0.0527341951326168 AS sv_3, 0.0080627101871966 AS sv_4, 0.039708571068210366 AS sv_5, -0.028674294435677143 AS sv_6, 0.021024455362399115 AS sv_7, -0.04835926177554553 AS sv_8, 0.019632837073706312 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -0.1 AS dual_coeff, 0.04534098333546186 AS sv_0, 0.05068011873981862 AS sv_1, -0.008361578283568675 AS sv_2, -0.03321323009955148 AS sv_3, -0.007072771253015731 AS sv_4, 0.0011913102680975625 AS sv_5, -0.03971920784793797 AS sv_6, 0.03430885887772673 AS sv_7, 0.02993464904142137 AS sv_8, 0.027917050903375224 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 0.1 AS dual_coeff, 0.06713621404157838 AS sv_0, 0.05068011873981862 AS sv_1, -0.006205954135807083 AS sv_2, 0.06318659722422783 AS sv_3, -0.04284754556624487 AS sv_4, -0.09588471288665826 AS sv_5, 0.05232173725423556 AS sv_6, -0.0763945037500033 AS sv_7, 0.059423623484649676 AS sv_8, 0.05276969239238195 AS sv_9 UNION ALL SELECT 6 AS sv_idx, 0.1 AS dual_coeff, 0.03081082953138418 AS sv_0, 0.05068011873981862 AS sv_1, 0.05954058237092167 AS sv_2, 0.056300895272529315 AS sv_3, -0.02220825269322806 AS sv_4, 0.0011913102680975625 AS sv_5, -0.03235593223976409 AS sv_6, -0.002592261998183278 AS sv_7, -0.024795429028792802 AS sv_8, -0.01764612515980379 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 0.1 AS dual_coeff, 0.016280675727306498 AS sv_0, -0.044641636506989144 AS sv_1, 0.0735521393313721 AS sv_2, -0.04123507287328025 AS sv_3, -0.004320865536613489 AS sv_4, -0.013526667436010586 AS sv_5, -0.01394774321932938 AS sv_6, -0.0011162171631468765 AS sv_7, 0.04289703595278786 AS sv_8, 0.044485478562713045 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.1 AS dual_coeff, -0.07090024709715959 AS sv_0, 0.05068011873981862 AS sv_1, -0.07518592686417827 AS sv_2, -0.04009893205125 AS sv_3, -0.051103262715451604 AS sv_4, -0.015092409744958261 AS sv_5, -0.03971920784793797 AS sv_6, -0.002592261998183278 AS sv_7, -0.09643494994048712 AS sv_8, -0.03421455281914162 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 0.1 AS dual_coeff, 0.06350367559055897 AS sv_0, 0.05068011873981862 AS sv_1, -0.004050329988045492 AS sv_2, -0.012556124244455912 AS sv_3, 0.10300345740307394 AS sv_4, 0.04878987646010685 AS sv_5, 0.05600337505832251 AS sv_6, -0.002592261998183278 AS sv_7, 0.08449153066204618 AS sv_8, -0.01764612515980379 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -0.1 AS dual_coeff, -0.0890629393522567 AS sv_0, -0.044641636506989144 AS sv_1, -0.061174369903727877 AS sv_2, -0.02632752814785296 AS sv_3, -0.05523112129005496 AS sv_4, -0.054549115930439665 AS sv_5, 0.04127682384197474 AS sv_6, -0.0763945037500033 AS sv_7, -0.09393727482535742 AS sv_8, -0.05492508739331389 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -0.1 AS dual_coeff, -0.06000263174410134 AS sv_0, 0.05068011873981862 AS sv_1, -0.010517202431330305 AS sv_2, -0.014862834398274925 AS sv_3, -0.04972730985725048 AS sv_4, -0.02354741821327569 AS sv_5, -0.05812739686837268 AS sv_6, 0.01585829843977173 AS sv_7, -0.009918765569334137 AS sv_8, -0.03421455281914162 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -0.1 AS dual_coeff, 0.005383060374248237 AS sv_0, 0.05068011873981862 AS sv_1, -0.028840007687303888 AS sv_2, -0.009113273268606652 AS sv_3, -0.0318399227006359 AS sv_4, -0.02887094206369779 AS sv_5, 0.008142083605192267 AS sv_6, -0.03949338287409329 AS sv_7, -0.018113692315690322 AS sv_8, 0.007206516329202944 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.1 AS dual_coeff, -0.08179786245021785 AS sv_0, -0.044641636506989144 AS sv_1, -0.08165279930746305 AS sv_2, -0.04009893205125 AS sv_3, 0.0025588987543921156 AS sv_4, -0.01853704282464315 AS sv_5, 0.07072992627467027 AS sv_6, -0.03949338287409329 AS sv_7, -0.010903250651210127 AS sv_8, -0.092204049626824 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -0.1 AS dual_coeff, -0.03457486258696539 AS sv_0, -0.044641636506989144 AS sv_1, -0.03746250427835029 AS sv_2, -0.060756037906345574 AS sv_3, 0.020446285911006685 AS sv_4, 0.043466352609684754 AS sv_5, -0.01394774321932938 AS sv_6, -0.002592261998183278 AS sv_7, -0.030747917533098208 AS sv_8, -0.07149351505265171 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -0.1 AS dual_coeff, -0.0018820165277906047 AS sv_0, 0.05068011873981862 AS sv_1, -0.02452875939178067 AS sv_2, 0.052858044296680055 AS sv_3, 0.027326050202012293 AS sv_4, 0.03000096875273476 AS sv_5, 0.030231910429713918 AS sv_6, -0.002592261998183278 AS sv_7, -0.021395309255276825 AS sv_8, 0.036201264733044136 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -0.1 AS dual_coeff, 0.001750521923228816 AS sv_0, -0.044641636506989144 AS sv_1, -0.039618128426111884 AS sv_2, -0.10093410879450646 AS sv_3, -0.029088016984233665 AS sv_4, -0.03012353591085593 AS sv_5, 0.04495846164606168 AS sv_6, -0.05019470792810719 AS sv_7, -0.0683315470939731 AS sv_8, -0.1294830118603341 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -0.1 AS dual_coeff, -0.09996055470531495 AS sv_0, -0.044641636506989144 AS sv_1, -0.06764124234701265 AS sv_2, -0.10895595156823522 AS sv_3, -0.07449446130487065 AS sv_4, -0.07271172671423268 AS sv_5, 0.01550535921336615 AS sv_6, -0.03949338287409329 AS sv_7, -0.049872451808799324 AS sv_8, -0.009361911330134878 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 0.1 AS dual_coeff, -0.09632801625429555 AS sv_0, -0.044641636506989144 AS sv_1, -0.03638469220446948 AS sv_2, -0.07452744180974262 AS sv_3, -0.038719686991641515 AS sv_4, -0.02761834821653966 AS sv_5, 0.01550535921336615 AS sv_6, -0.03949338287409329 AS sv_7, -0.07409260794346935 AS sv_8, -0.0010776975004659671 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, -0.045472477940023646 AS sv_0, -0.044641636506989144 AS sv_1, -0.03854031635223107 AS sv_2, -0.02632752814785296 AS sv_3, -0.015328488402222454 AS sv_4, 0.0008781618063080231 AS sv_5, -0.03235593223976409 AS sv_6, -0.002592261998183278 AS sv_7, 0.0011475759991601464 AS sv_8, -0.03835665973397607 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -0.1 AS dual_coeff, 0.005383060374248237 AS sv_0, -0.044641636506989144 AS sv_1, -0.048240625017158284 AS sv_2, -0.012556124244455912 AS sv_3, 0.001182945896190995 AS sv_4, -0.0066374012766408095 AS sv_5, 0.06336665066649638 AS sv_6, -0.03949338287409329 AS sv_7, -0.05140387304727299 AS sv_8, -0.05906719430814835 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, -0.0018820165277906047 AS sv_0, -0.044641636506989144 AS sv_1, 0.0681630789619681 AS sv_2, -0.00567042229275739 AS sv_3, 0.11951489170148738 AS sv_4, 0.13020847652538595 AS sv_5, -0.024992656631590206 AS sv_6, 0.08670845052151895 AS sv_7, 0.04613307487932449 AS sv_8, -0.0010776975004659671 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -0.1 AS dual_coeff, 0.04170844488444244 AS sv_0, -0.044641636506989144 AS sv_1, -0.04500718879551588 AS sv_2, 0.03450764859540349 AS sv_3, 0.04383748450042574 AS sv_4, -0.015718706668537318 AS sv_5, 0.0375951860378878 AS sv_6, -0.014400620678474476 AS sv_7, 0.0898970830097539 AS sv_8, 0.007206516329202944 AS sv_9 UNION ALL SELECT 23 AS sv_idx, 0.1 AS dual_coeff, -0.04183993948900423 AS sv_0, 0.05068011873981862 AS sv_1, 0.004572166603000912 AS sv_2, -0.05387033595464705 AS sv_3, -0.04422349842444599 AS sv_4, -0.02730519975475012 AS sv_5, -0.08021722369289432 AS sv_6, 0.07120997975363674 AS sv_7, 0.03664373256235367 AS sv_8, 0.019632837073706312 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, 0.005383060374248237 AS sv_0, -0.044641636506989144 AS sv_1, -0.002972517914164677 AS sv_2, 0.049415193320830796 AS sv_3, 0.0741084473808504 AS sv_4, 0.0707102687853743 AS sv_5, 0.04495846164606168 AS sv_6, -0.002592261998183278 AS sv_7, -0.0014959487577289358 AS sv_8, -0.009361911330134878 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 0.1 AS dual_coeff, -0.06363517019512076 AS sv_0, 0.05068011873981862 AS sv_1, 0.09618619288286882 AS sv_2, 0.10450080893441897 AS sv_3, -0.0029449126784123676 AS sv_4, -0.0047585105059035964 AS sv_5, -0.006584467611155497 AS sv_6, -0.002592261998183278 AS sv_7, 0.022687744966501246 AS sv_8, 0.07348022696655424 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 0.1 AS dual_coeff, 0.11072667545381144 AS sv_0, 0.05068011873981862 AS sv_1, 0.006727790750762504 AS sv_2, 0.028758087465735226 AS sv_3, -0.027712064126032544 AS sv_4, -0.007263698200219888 AS sv_5, -0.04708248345611185 AS sv_6, 0.03430885887772673 AS sv_7, 0.0020044426444966374 AS sv_8, 0.07762233388138869 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 0.1 AS dual_coeff, 0.0707687524925978 AS sv_0, 0.05068011873981862 AS sv_1, 0.012116851120166501 AS sv_2, 0.056300895272529315 AS sv_3, 0.0342058144930179 AS sv_4, 0.04941617338368593 AS sv_5, -0.03971920784793797 AS sv_6, 0.03430885887772673 AS sv_7, 0.02736404910541198 AS sv_8, -0.0010776975004659671 AS sv_9 UNION ALL SELECT 28 AS sv_idx, -0.1 AS dual_coeff, 0.06713621404157838 AS sv_0, 0.05068011873981862 AS sv_1, -0.014828450726853487 AS sv_2, 0.05860760542634833 AS sv_3, -0.05935897986465832 AS sv_4, -0.034507614375909414 AS sv_5, -0.06180903467245962 AS sv_6, 0.012906208769698923 AS sv_7, -0.005142189801713891 AS sv_8, 0.0486275854775475 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 0.1 AS dual_coeff, 0.027178291080364757 AS sv_0, -0.044641636506989144 AS sv_1, 0.04984027370599448 AS sv_2, -0.0550064767766773 AS sv_3, -0.0029449126784123676 AS sv_4, 0.04064801645357896 AS sv_5, -0.05812739686837268 AS sv_6, 0.05275941931568174 AS sv_7, -0.05296264109357657 AS sv_8, -0.005219804415300423 AS sv_9 UNION ALL SELECT 30 AS sv_idx, -0.1 AS dual_coeff, 0.038075906433423026 AS sv_0, 0.05068011873981862 AS sv_1, 0.008883414898524095 AS sv_2, 0.04252949136913227 AS sv_3, -0.04284754556624487 AS sv_4, -0.02104223051895942 AS sv_5, -0.03971920784793797 AS sv_6, -0.002592261998183278 AS sv_7, -0.018113692315690322 AS sv_8, 0.007206516329202944 AS sv_9 UNION ALL SELECT 31 AS sv_idx, -0.1 AS dual_coeff, -0.04910501639104307 AS sv_0, -0.044641636506989144 AS sv_1, -0.05686312160820465 AS sv_2, -0.04354178302709927 AS sv_3, -0.04559945128264711 AS sv_4, -0.043275771306016404 AS sv_5, 0.0007788079970183853 AS sv_6, -0.03949338287409329 AS sv_7, -0.011896851335695978 AS sv_8, 0.015490730158871856 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 0.1 AS dual_coeff, -0.04183993948900423 AS sv_0, -0.044641636506989144 AS sv_1, 0.04768464955823289 AS sv_2, 0.059743746248378575 AS sv_3, 0.1277706088506941 AS sv_4, 0.1280164372928592 AS sv_5, -0.024992656631590206 AS sv_6, 0.10811110062954676 AS sv_7, 0.0638902687635312 AS sv_8, 0.040343371647878594 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 0.1 AS dual_coeff, 0.012648137276287077 AS sv_0, -0.044641636506989144 AS sv_1, 0.006727790750762504 AS sv_2, -0.05617704610846606 AS sv_3, -0.07587041416307178 AS sv_4, -0.06644875747844198 AS sv_5, -0.02131101882750326 AS sv_6, -0.03764832683029779 AS sv_7, -0.018113692315690322 AS sv_8, -0.092204049626824 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 0.1 AS dual_coeff, 0.03081082953138418 AS sv_0, 0.05068011873981862 AS sv_1, 0.04660683748435208 AS sv_2, -0.015998975220305175 AS sv_3, 0.020446285911006685 AS sv_4, 0.05066876723084409 AS sv_5, -0.05812739686837268 AS sv_6, 0.07120997975363674 AS sv_7, 0.006206735447689297 AS sv_8, 0.007206516329202944 AS sv_9 UNION ALL SELECT 35 AS sv_idx, -0.1 AS dual_coeff, -0.016412170331868287 AS sv_0, -0.044641636506989144 AS sv_1, -0.010517202431330305 AS sv_2, 0.0012152796589411327 AS sv_3, -0.037343734133440394 AS sv_4, -0.035760208223067566 AS sv_5, 0.01182372140927921 AS sv_6, -0.03949338287409329 AS sv_7, -0.021395309255276825 AS sv_8, -0.03421455281914162 AS sv_9 UNION ALL SELECT 36 AS sv_idx, -0.1 AS dual_coeff, 0.016280675727306498 AS sv_0, 0.05068011873981862 AS sv_1, 0.0724743272574913 AS sv_2, 0.07695800112762488 AS sv_3, -0.008448724111216851 AS sv_4, 0.0055753887331510465 AS sv_5, -0.006584467611155497 AS sv_6, -0.002592261998183278 AS sv_7, -0.02364686309993755 AS sv_8, 0.06105390622205087 AS sv_9 UNION ALL SELECT 37 AS sv_idx, -0.1 AS dual_coeff, -0.056370093293081916 AS sv_0, -0.044641636506989144 AS sv_1, -0.07410811479029747 AS sv_2, -0.05042748497879779 AS sv_3, -0.0249601584096303 AS sv_4, -0.047033552847490806 AS sv_5, 0.09281975309919192 AS sv_6, -0.0763945037500033 AS sv_7, -0.061175799045152635 AS sv_8, -0.04664087356364498 AS sv_9 UNION ALL SELECT 38 AS sv_idx, -0.1 AS dual_coeff, 0.04897352178648128 AS sv_0, 0.05068011873981862 AS sv_1, 0.0034943545291200974 AS sv_2, 0.07007229917592636 AS sv_3, -0.008448724111216851 AS sv_4, 0.013404100277889418 AS sv_5, -0.05444575906428573 AS sv_6, 0.03430885887772673 AS sv_7, 0.013316905483459898 AS sv_8, 0.036201264733044136 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 0.1 AS dual_coeff, -0.009147093429829445 AS sv_0, -0.044641636506989144 AS sv_1, 0.011039039046285686 AS sv_2, -0.057313186930496314 AS sv_3, -0.0249601584096303 AS sv_4, -0.04296262284422686 AS sv_5, 0.030231910429713918 AS sv_6, -0.03949338287409329 AS sv_7, 0.017036071348324546 AS sv_8, -0.005219804415300423 AS sv_9 UNION ALL SELECT 40 AS sv_idx, -0.1 AS dual_coeff, 0.01991321417832592 AS sv_0, -0.044641636506989144 AS sv_1, 0.004572166603000912 AS sv_2, -0.02632752814785296 AS sv_3, 0.02319819162740893 AS sv_4, 0.01027261565999407 AS sv_5, 0.06704828847058333 AS sv_6, -0.03949338287409329 AS sv_7, -0.02364686309993755 AS sv_8, -0.04664087356364498 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -0.1 AS dual_coeff, 0.012648137276287077 AS sv_0, 0.05068011873981862 AS sv_1, -0.020217511096257485 AS sv_2, -0.002227571316908129 AS sv_3, 0.03833367306762126 AS sv_4, 0.05317395492516036 AS sv_5, -0.006584467611155497 AS sv_6, 0.03430885887772673 AS sv_7, -0.005142189801713891 AS sv_8, -0.009361911330134878 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 0.1 AS dual_coeff, -0.027309785684926546 AS sv_0, -0.044641636506989144 AS sv_1, 0.08864150836570328 AS sv_2, -0.02519138732582271 AS sv_3, 0.02182223876920781 AS sv_4, 0.04252690722431616 AS sv_5, -0.03235593223976409 AS sv_6, 0.03430885887772673 AS sv_7, 0.002861309289833047 AS sv_8, 0.07762233388138869 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 0.1 AS dual_coeff, -0.012779631880848867 AS sv_0, -0.044641636506989144 AS sv_1, 0.06061839444480248 AS sv_2, 0.052858044296680055 AS sv_3, 0.04796534307502911 AS sv_4, 0.02937467182915568 AS sv_5, -0.01762938102341632 AS sv_6, 0.03430885887772673 AS sv_7, 0.07020738137223513 AS sv_8, 0.007206516329202944 AS sv_9 UNION ALL SELECT 44 AS sv_idx, -0.1 AS dual_coeff, 0.04170844488444244 AS sv_0, -0.044641636506989144 AS sv_1, -0.0320734439089463 AS sv_2, -0.06189217872837582 AS sv_3, 0.07961225881365488 AS sv_4, 0.05098191569263361 AS sv_5, 0.05600337505832251 AS sv_6, -0.009972486173365287 AS sv_7, 0.04506654937395887 AS sv_8, -0.05906719430814835 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 0.1 AS dual_coeff, 0.11072667545381144 AS sv_0, 0.05068011873981862 AS sv_1, -0.033151255982827074 AS sv_2, -0.0228846771720037 AS sv_3, -0.004320865536613489 AS sv_4, 0.020293366437259194 AS sv_5, -0.06180903467245962 AS sv_6, 0.07120997975363674 AS sv_7, 0.015568459328120622 AS sv_8, 0.044485478562713045 AS sv_9 UNION ALL SELECT 46 AS sv_idx, 0.1 AS dual_coeff, 0.06713621404157838 AS sv_0, 0.05068011873981862 AS sv_1, -0.03099563183506548 AS sv_2, 0.004658130634790395 AS sv_3, 0.024574144485610048 AS sv_4, 0.03563764106494638 AS sv_5, -0.028674294435677143 AS sv_6, 0.03430885887772673 AS sv_7, 0.02337141516224845 AS sv_8, 0.08176444079622315 AS sv_9 UNION ALL SELECT 47 AS sv_idx, -0.1 AS dual_coeff, 0.001750521923228816 AS sv_0, -0.044641636506989144 AS sv_1, -0.04608500086939666 AS sv_2, -0.03321323009955148 AS sv_3, -0.07311850844666953 AS sv_4, -0.08147988364433965 AS sv_5, 0.04495846164606168 AS sv_6, -0.06938329078358041 AS sv_7, -0.061175799045152635 AS sv_8, -0.07977772888232063 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 0.1 AS dual_coeff, 0.04170844488444244 AS sv_0, 0.05068011873981862 AS sv_1, 0.01966153563733209 AS sv_2, 0.059743746248378575 AS sv_3, -0.005696818394814609 AS sv_4, -0.0025664712733768653 AS sv_5, -0.028674294435677143 AS sv_6, -0.002592261998183278 AS sv_7, 0.031192602201596156 AS sv_8, 0.007206516329202944 AS sv_9 UNION ALL SELECT 49 AS sv_idx, 0.1 AS dual_coeff, 0.005383060374248237 AS sv_0, 0.05068011873981862 AS sv_1, -0.0018947058402839008 AS sv_2, 0.008100981610639655 AS sv_3, -0.004320865536613489 AS sv_4, -0.015718706668537318 AS sv_5, -0.002902829807068556 AS sv_6, -0.002592261998183278 AS sv_7, 0.038393928263466416 AS sv_8, -0.013504018244969336 AS sv_9) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 135.26107666552997 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * exp(min(100.0, max(-100.0, -45.02352569389123 * (power(kernel_input."Feature_0" - "SV_data".sv_0, 2) + power(kernel_input."Feature_1" - "SV_data".sv_1, 2) + power(kernel_input."Feature_2" - "SV_data".sv_2, 2) + power(kernel_input."Feature_3" - "SV_data".sv_3, 2) + power(kernel_input."Feature_4" - "SV_data".sv_4, 2) + power(kernel_input."Feature_5" - "SV_data".sv_5, 2) + power(kernel_input."Feature_6" - "SV_data".sv_6, 2) + power(kernel_input."Feature_7" - "SV_data".sv_7, 2) + power(kernel_input."Feature_8" - "SV_data".sv_8, 2) + power(kernel_input."Feature_9" - "SV_data".sv_9, 2))))) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp