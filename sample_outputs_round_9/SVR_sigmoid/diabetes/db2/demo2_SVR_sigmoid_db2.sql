-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, 1.0 AS dual_coeff, -0.0563700932931 AS sv_0, -0.044641636507 AS sv_1, -0.0115950145052 AS sv_2, -0.0332135761048 AS sv_3, -0.0469754041408 AS sv_4, -0.0476598497711 AS sv_5, 0.00446044580111 AS sv_6, -0.0394933828741 AS sv_7, -0.00797939755454 AS sv_8, -0.088061942712 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.107225631607 AS sv_0, -0.044641636507 AS sv_1, -0.0773415510119 AS sv_2, -0.0263278347174 AS sv_3, -0.0896299427451 AS sv_4, -0.0961978613484 AS sv_5, 0.0265502726256 AS sv_6, -0.07639450375 AS sv_7, -0.0425721049228 AS sv_8, -0.0052198044153 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, -0.0164121703319 AS sv_0, -0.044641636507 AS sv_1, 0.0541515220015 AS sv_2, 0.0700725447073 AS sv_3, -0.0332158755588 AS sv_4, -0.0279314966783 AS sv_5, 0.00814208360519 AS sv_6, -0.0394933828741 AS sv_7, -0.0271286455543 AS sv_8, -0.00936191133014 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, -0.049105016391 AS sv_0, -0.044641636507 AS sv_1, 0.160854917316 AS sv_2, -0.0469850588798 AS sv_3, -0.0290880169842 AS sv_4, -0.0197896366718 AS sv_5, -0.0470824834561 AS sv_6, 0.0343088588777 AS sv_7, 0.0280165065233 AS sv_8, 0.011348623244 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, -0.00551455497881 AS sv_0, -0.044641636507 AS sv_1, 0.0239727839329 AS sv_2, 0.00810087222001 AS sv_3, -0.034591828417 AS sv_4, -0.038891692841 AS sv_5, 0.0228686348215 AS sv_6, -0.0394933828741 AS sv_7, -0.0159982677581 AS sv_8, -0.013504018245 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 0.0417084448844 AS sv_0, -0.044641636507 AS sv_1, -0.00836157828357 AS sv_2, -0.057313670961 AS sv_3, 0.0080627101872 AS sv_4, -0.031376129758 AS sv_5, 0.151725957965 AS sv_6, -0.07639450375 AS sv_7, -0.0802365402489 AS sv_8, -0.0176461251598 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS sv_idx, 1.0 AS dual_coeff, 0.0308108295314 AS sv_0, -0.044641636507 AS sv_1, 0.0401399650411 AS sv_2, 0.0769582860947 AS sv_3, 0.0176943801946 AS sv_4, 0.0378296802975 AS sv_5, -0.0286742944357 AS sv_6, 0.0343088588777 AS sv_7, -0.00149858682029 AS sv_8, 0.11904340303 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, 0.0453409833355 AS sv_0, 0.0506801187398 AS sv_1, -0.0353068801306 AS sv_2, 0.0631868033198 AS sv_3, -0.00432086553661 AS sv_4, -0.00162702588801 AS sv_5, -0.0102661054152 AS sv_6, -0.00259226199818 AS sv_7, 0.0155668445407 AS sv_8, 0.0569117993072 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 0.0344433679824 AS sv_0, 0.0506801187398 AS sv_1, -0.00943939035745 AS sv_2, 0.0597439326261 AS sv_3, -0.0359677812752 AS sv_4, -0.00757684666201 AS sv_5, -0.0765355858888 AS sv_6, 0.0712099797536 AS sv_7, 0.0110081010459 AS sv_8, -0.0217882320746 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, -0.00914709342983 AS sv_0, -0.044641636507 AS sv_1, 0.0379843408933 AS sv_2, -0.0400993174923 AS sv_3, -0.0249601584096 AS sv_4, -0.00381906512053 AS sv_5, -0.043400845652 AS sv_6, 0.0158582984398 AS sv_7, -0.00514530798026 AS sv_8, 0.0279170509034 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 0.0380759064334 AS sv_0, 0.0506801187398 AS sv_1, 0.0616962065187 AS sv_2, 0.021872354995 AS sv_3, -0.0442234984244 AS sv_4, -0.0348207628377 AS sv_5, -0.043400845652 AS sv_6, -0.00259226199818 AS sv_7, 0.0199084208763 AS sv_8, -0.0176461251598 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.0417084448844 AS sv_0, -0.044641636507 AS sv_1, -0.00836157828357 AS sv_2, -0.0263278347174 AS sv_3, 0.0245741444856 AS sv_4, 0.016222436434 AS sv_5, 0.0707299262747 AS sv_6, -0.0394933828741 AS sv_7, -0.0483617248029 AS sv_8, -0.0300724459043 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, 0.0344433679824 AS sv_0, -0.044641636507 AS sv_1, 0.0185837235635 AS sv_2, 0.0563010619323 AS sv_3, 0.0121905687618 AS sv_4, -0.0545491159304 AS sv_5, -0.0691723102806 AS sv_6, 0.0712099797536 AS sv_7, 0.130080609522 AS sv_8, 0.0072065163292 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, 0.0453409833355 AS sv_0, -0.044641636507 AS sv_1, 0.0519958978538 AS sv_2, -0.0538708002672 AS sv_3, 0.0631008245152 AS sv_4, 0.0647604480114 AS sv_5, -0.0102661054152 AS sv_6, 0.0343088588777 AS sv_7, 0.037232011209 AS sv_8, 0.0196328370737 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 0.0707687524926 AS sv_0, 0.0506801187398 AS sv_1, -0.0169840748746 AS sv_2, 0.021872354995 AS sv_3, 0.0438374845004 AS sv_4, 0.0563054395431 AS sv_5, 0.0375951860379 AS sv_6, -0.00259226199818 AS sv_7, -0.0702093127287 AS sv_8, -0.0176461251598 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, -0.0781653239992 AS sv_0, -0.044641636507 AS sv_1, -0.0406959405 AS sv_2, -0.0814137658171 AS sv_3, -0.100637565611 AS sv_4, -0.112794729823 AS sv_5, 0.0228686348215 AS sv_6, -0.07639450375 AS sv_7, -0.0202887477516 AS sv_8, -0.0507829804785 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, -0.0273097856849 AS sv_0, -0.044641636507 AS sv_1, -0.0180618869485 AS sv_2, -0.0400993174923 AS sv_3, -0.00294491267841 AS sv_4, -0.0113346282035 AS sv_5, 0.0375951860379 AS sv_6, -0.0394933828741 AS sv_7, -0.0089440189578 AS sv_8, -0.0549250873933 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, 0.0308108295314 AS sv_0, 0.0506801187398 AS sv_1, -0.00836157828357 AS sv_2, 0.00465800152627 AS sv_3, 0.0149424744782 AS sv_4, 0.0274957810584 AS sv_5, 0.00814208360519 AS sv_6, -0.00812743012957 AS sv_7, -0.0295276227418 AS sv_8, 0.0569117993072 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, -0.0527375548421 AS sv_0, -0.044641636507 AS sv_1, -0.0126728265791 AS sv_2, -0.0607565416547 AS sv_3, -0.00019300696201 AS sv_4, 0.00808057642747 AS sv_5, 0.0118237214093 AS sv_6, -0.00259226199818 AS sv_7, -0.0271286455543 AS sv_8, -0.0507829804785 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, -0.0709002470972 AS sv_0, -0.044641636507 AS sv_1, -0.00405032998805 AS sv_2, -0.0400993174923 AS sv_3, -0.0662387441557 AS sv_4, -0.0786615474882 AS sv_5, 0.0523217372542 AS sv_6, -0.07639450375 AS sv_7, -0.0514005352606 AS sv_8, -0.0342145528191 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 0.0961965216497 AS sv_0, -0.044641636507 AS sv_1, 0.0519958978538 AS sv_2, 0.0792535333387 AS sv_3, 0.054845107366 AS sv_4, 0.0365770864503 AS sv_5, -0.0765355858888 AS sv_6, 0.141322109418 AS sv_7, 0.0986463743049 AS sv_8, 0.0610539062221 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, 0.00175052192323 AS sv_0, -0.044641636507 AS sv_1, -0.0654856181993 AS sv_2, -0.00567061055493 AS sv_3, -0.00707277125302 AS sv_4, -0.01947648821 AS sv_5, 0.041276823842 AS sv_6, -0.0394933828741 AS sv_7, -0.00330371257868 AS sv_8, 0.0072065163292 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, 0.0199132141783 AS sv_0, -0.044641636507 AS sv_1, 0.004572166603 AS sv_2, 0.0459724498511 AS sv_3, -0.0180803941186 AS sv_4, -0.0545491159304 AS sv_5, 0.0633666506665 AS sv_6, -0.0394933828741 AS sv_7, 0.0286607203138 AS sv_8, 0.0610539062221 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, 0.0162806757273 AS sv_0, -0.044641636507 AS sv_1, -0.0245287593918 AS sv_2, 0.0356438377699 AS sv_3, -0.00707277125302 AS sv_4, -0.00319276819696 AS sv_5, -0.0139477432193 AS sv_6, -0.00259226199818 AS sv_7, 0.0155668445407 AS sv_8, 0.0154907301589 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, 0.0417084448844 AS sv_0, 0.0506801187398 AS sv_1, 0.0616962065187 AS sv_2, -0.0400993174923 AS sv_3, -0.013952535544 AS sv_4, 0.00620168565673 AS sv_5, -0.0286742944357 AS sv_6, -0.00259226199818 AS sv_7, -0.0149564750249 AS sv_8, 0.011348623244 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 0.0671362140416 AS sv_0, -0.044641636507 AS sv_1, -0.0385403163522 AS sv_2, -0.0263278347174 AS sv_3, -0.0318399227006 AS sv_4, -0.0263657543694 AS sv_5, 0.00814208360519 AS sv_6, -0.0394933828741 AS sv_7, -0.0271286455543 AS sv_8, 0.00306440941437 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS sv_idx, -1.0 AS dual_coeff, 0.00901559882527 AS sv_0, -0.044641636507 AS sv_1, -0.0202175110963 AS sv_2, -0.0538708002672 AS sv_3, 0.0314539087766 AS sv_4, 0.020606514899 AS sv_5, 0.0560033750583 AS sv_6, -0.0394933828741 AS sv_7, -0.0109044358474 AS sv_8, -0.00107769750047 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, -0.0745327855482 AS sv_0, -0.044641636507 AS sv_1, -0.0105172024313 AS sv_2, -0.00567061055493 AS sv_3, -0.0662387441557 AS sv_4, -0.0570543036248 AS sv_5, -0.00290282980707 AS sv_6, -0.0394933828741 AS sv_7, -0.0425721049228 AS sv_8, -0.00107769750047 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 28 AS sv_idx, -1.0 AS dual_coeff, 0.0344433679824 AS sv_0, 0.0506801187398 AS sv_1, -0.0299178197612 AS sv_2, 0.00465800152627 AS sv_3, 0.0933717873957 AS sv_4, 0.0869939887984 AS sv_5, 0.0339135482338 AS sv_6, -0.00259226199818 AS sv_7, 0.0240525832269 AS sv_8, -0.038356659734 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 29 AS sv_idx, -1.0 AS dual_coeff, -0.0200447087829 AS sv_0, -0.044641636507 AS sv_1, -0.0848862355291 AS sv_2, -0.0263278347174 AS sv_3, -0.0359677812752 AS sv_4, -0.0341944659141 AS sv_5, 0.041276823842 AS sv_6, -0.0516707527631 AS sv_7, -0.0823814832581 AS sv_8, -0.0466408735636 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 30 AS sv_idx, -1.0 AS dual_coeff, -0.0527375548421 AS sv_0, -0.044641636507 AS sv_1, -0.00943939035745 AS sv_2, -0.00567061055493 AS sv_3, 0.0397096259258 AS sv_4, 0.0447189464568 AS sv_5, 0.0265502726256 AS sv_6, -0.00259226199818 AS sv_7, -0.0181182673079 AS sv_8, -0.013504018245 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 31 AS sv_idx, -1.0 AS dual_coeff, -0.0309423241359 AS sv_0, -0.044641636507 AS sv_1, 0.00564997867688 AS sv_2, -0.00911348124867 AS sv_3, 0.0190703330528 AS sv_4, 0.00682798258031 AS sv_5, 0.0744115640788 AS sv_6, -0.0394933828741 AS sv_7, -0.041180385188 AS sv_8, -0.0424987666488 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 32 AS sv_idx, -1.0 AS dual_coeff, 0.0235457526293 AS sv_0, 0.0506801187398 AS sv_1, -0.0309956318351 AS sv_2, -0.00567061055493 AS sv_3, -0.0167044412604 AS sv_4, 0.0177881787429 AS sv_5, -0.0323559322398 AS sv_6, -0.00259226199818 AS sv_7, -0.0740888714915 AS sv_8, -0.0342145528191 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 33 AS sv_idx, -1.0 AS dual_coeff, -0.0563700932931 AS sv_0, 0.0506801187398 AS sv_1, -0.0600965578299 AS sv_2, -0.0366564467986 AS sv_3, -0.0882539898869 AS sv_4, -0.0708328359435 AS sv_5, -0.0139477432193 AS sv_6, -0.0394933828741 AS sv_7, -0.0781409106691 AS sv_8, -0.104630370371 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, 0.0380759064334 AS sv_0, 0.0506801187398 AS sv_1, 0.00564997867688 AS sv_2, 0.0322009670762 AS sv_3, 0.006686757329 AS sv_4, 0.0174750302812 AS sv_5, -0.0249926566316 AS sv_6, 0.0343088588777 AS sv_7, 0.0148227108413 AS sv_8, 0.0610539062221 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 35 AS sv_idx, -1.0 AS dual_coeff, -0.00551455497881 AS sv_0, 0.0506801187398 AS sv_1, 0.00133873038136 AS sv_2, -0.0848566365109 AS sv_3, -0.0112006298276 AS sv_4, -0.0166581520539 AS sv_5, 0.0486400994501 AS sv_6, -0.0394933828741 AS sv_7, -0.041180385188 AS sv_8, -0.088061942712 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 36 AS sv_idx, -1.0 AS dual_coeff, 0.0562385986885 AS sv_0, -0.044641636507 AS sv_1, -0.0687190544209 AS sv_2, -0.0687899065953 AS sv_3, -0.00019300696201 AS sv_4, -0.00100072896443 AS sv_5, 0.0449584616461 AS sv_6, -0.0376483268303 AS sv_7, -0.0483617248029 AS sv_8, -0.00107769750047 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, -0.0600026317441 AS sv_0, 0.0506801187398 AS sv_1, 0.049840273706 AS sv_2, 0.0184294843012 AS sv_3, -0.0167044412604 AS sv_4, -0.0301235359109 AS sv_5, -0.0176293810234 AS sv_6, -0.00259226199818 AS sv_7, 0.0497686599207 AS sv_8, -0.0590671943082 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, 0.0162806757273 AS sv_0, 0.0506801187398 AS sv_1, 0.0142724752679 AS sv_2, 0.00121513083254 AS sv_3, 0.00118294589619 AS sv_4, -0.0213553789807 AS sv_5, -0.0323559322398 AS sv_6, 0.0343088588777 AS sv_7, 0.0749683360277 AS sv_8, 0.0403433716479 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, 0.0380759064334 AS sv_0, 0.0506801187398 AS sv_1, 0.0164280994157 AS sv_2, 0.021872354995 AS sv_3, 0.0397096259258 AS sv_4, 0.0450320949186 AS sv_5, -0.043400845652 AS sv_6, 0.0712099797536 AS sv_7, 0.0497686599207 AS sv_8, 0.0154907301589 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 40 AS sv_idx, -1.0 AS dual_coeff, -0.049105016391 AS sv_0, 0.0506801187398 AS sv_1, -0.0245287593918 AS sv_2, 6.75072794357e-05 AS sv_3, -0.0469754041408 AS sv_4, -0.0282446451401 AS sv_5, -0.0654906724765 AS sv_6, 0.0284046795376 AS sv_7, 0.0191990330786 AS sv_8, 0.011348623244 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, -0.0600026317441 AS sv_0, 0.0506801187398 AS sv_1, 0.0153502873418 AS sv_2, -0.0194420933299 AS sv_3, 0.0369577202094 AS sv_4, 0.0481635795365 AS sv_5, 0.0191869970175 AS sv_6, -0.00259226199818 AS sv_7, -0.0307512098646 AS sv_8, -0.00107769750047 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 42 AS sv_idx, 1.0 AS dual_coeff, 0.0308108295314 AS sv_0, -0.044641636507 AS sv_1, 0.00564997867688 AS sv_2, 0.0115437429137 AS sv_3, 0.0782363059555 AS sv_4, 0.0779126834065 AS sv_5, -0.043400845652 AS sv_6, 0.10811110063 AS sv_7, 0.0660482061631 AS sv_8, 0.0196328370737 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 43 AS sv_idx, -1.0 AS dual_coeff, -0.0273097856849 AS sv_0, -0.044641636507 AS sv_1, -0.0665634302731 AS sv_2, -0.112399602061 AS sv_3, -0.0497273098573 AS sv_4, -0.0413968805353 AS sv_5, 0.000778807997018 AS sv_6, -0.0394933828741 AS sv_7, -0.0358167281015 AS sv_8, -0.00936191133014 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 44 AS sv_idx, 1.0 AS dual_coeff, 0.0961965216497 AS sv_0, -0.044641636507 AS sv_1, 0.0401399650411 AS sv_2, -0.057313670961 AS sv_3, 0.0452134373586 AS sv_4, 0.0606895180081 AS sv_5, -0.0213110188275 AS sv_6, 0.0361539149215 AS sv_7, 0.0125531528134 AS sv_8, 0.0237749439885 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 45 AS sv_idx, -1.0 AS dual_coeff, -0.0236772472339 AS sv_0, -0.044641636507 AS sv_1, -0.0460850008694 AS sv_2, -0.0332135761048 AS sv_3, 0.0328298616348 AS sv_4, 0.0362639379885 AS sv_5, 0.0375951860379 AS sv_6, -0.00259226199818 AS sv_7, -0.0332487872476 AS sv_8, 0.011348623244 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 46 AS sv_idx, 1.0 AS dual_coeff, 0.0707687524926 AS sv_0, -0.044641636507 AS sv_1, 0.0692408910359 AS sv_2, 0.0379390850138 AS sv_3, 0.0218222387692 AS sv_4, 0.00150445872989 AS sv_5, -0.0360375700439 AS sv_6, 0.0391060045916 AS sv_7, 0.0776327891956 AS sv_8, 0.106617082285 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, 0.0562385986885 AS sv_0, -0.044641636507 AS sv_1, -0.0579409336821 AS sv_2, -0.00796585769557 AS sv_3, 0.0520932016496 AS sv_4, 0.0491030249219 AS sv_5, 0.0560033750583 AS sv_6, -0.0214118336449 AS sv_7, -0.028320242548 AS sv_8, 0.0444854785627 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 48 AS sv_idx, -1.0 AS dual_coeff, -0.00914709342983 AS sv_0, -0.044641636507 AS sv_1, -0.0622521819776 AS sv_2, -0.0745280244297 AS sv_3, -0.0235842055514 AS sv_4, -0.0132135189742 AS sv_5, 0.00446044580111 AS sv_6, -0.0394933828741 AS sv_7, -0.0358167281015 AS sv_8, -0.0466408735636 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 49 AS sv_idx, -1.0 AS dual_coeff, 0.0453409833355 AS sv_0, -0.044641636507 AS sv_1, 0.0713965151836 AS sv_2, 0.00121513083254 AS sv_3, -0.00982467696942 AS sv_4, -0.00100072896443 AS sv_5, 0.0155053592134 AS sv_6, -0.0394933828741 AS sv_7, -0.041180385188 AS sv_8, -0.0714935150527 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 50 AS sv_idx, 1.0 AS dual_coeff, 0.0598711371395 AS sv_0, 0.0506801187398 AS sv_1, 0.022894971859 AS sv_2, 0.0494153205448 AS sv_3, 0.0163184273364 AS sv_4, 0.0118383579689 AS sv_5, -0.0139477432193 AS sv_6, -0.00259226199818 AS sv_7, 0.039539878072 AS sv_8, 0.0196328370737 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 51 AS sv_idx, -1.0 AS dual_coeff, -0.0127796318808 AS sv_0, -0.044641636507 AS sv_1, -0.0234509473179 AS sv_2, -0.0400993174923 AS sv_3, -0.0167044412604 AS sv_4, 0.00463594334778 AS sv_5, -0.0176293810234 AS sv_6, -0.00259226199818 AS sv_7, -0.0384591123014 AS sv_8, -0.038356659734 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, 0.0744012909436 AS sv_0, -0.044641636507 AS sv_1, 0.0854080721441 AS sv_2, 0.0631868033198 AS sv_3, 0.0149424744782 AS sv_4, 0.0130909518161 AS sv_5, 0.0155053592134 AS sv_6, -0.00259226199818 AS sv_7, 0.00620931561651 AS sv_8, 0.0859065477111 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 53 AS sv_idx, 1.0 AS dual_coeff, 0.0162806757273 AS sv_0, 0.0506801187398 AS sv_1, 0.00996122697241 AS sv_2, -0.043542188186 AS sv_3, -0.0965097070361 AS sv_4, -0.0946321190395 AS sv_5, -0.0397192078479 AS sv_6, -0.0394933828741 AS sv_7, 0.0170371324148 AS sv_8, 0.0072065163292 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 54 AS sv_idx, -1.0 AS dual_coeff, -0.038207401038 AS sv_0, -0.044641636507 AS sv_1, 0.0670852668881 AS sv_2, -0.0607565416547 AS sv_3, -0.0290880169842 AS sv_4, -0.0232342697515 AS sv_5, -0.0102661054152 AS sv_6, -0.00259226199818 AS sv_7, -0.00149858682029 AS sv_8, 0.0196328370737 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 55 AS sv_idx, 1.0 AS dual_coeff, 0.00901559882527 AS sv_0, -0.044641636507 AS sv_1, 0.0552293340754 AS sv_2, -0.00567061055493 AS sv_3, 0.0575970130824 AS sv_4, 0.0447189464568 AS sv_5, -0.00290282980707 AS sv_6, 0.023238522615 AS sv_7, 0.0556835477027 AS sv_8, 0.106617082285 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 56 AS sv_idx, 1.0 AS dual_coeff, 0.0126481372763 AS sv_0, 0.0506801187398 AS sv_1, 0.000260918307477 AS sv_2, -0.0114087283893 AS sv_3, 0.0397096259258 AS sv_4, 0.0572448849284 AS sv_5, -0.0397192078479 AS sv_6, 0.0560805201945 AS sv_7, 0.0240525832269 AS sv_8, 0.0320591578182 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 57 AS sv_idx, -1.0 AS dual_coeff, -0.0127796318808 AS sv_0, 0.0506801187398 AS sv_1, -0.0557853095343 AS sv_2, -0.0022277398612 AS sv_3, -0.027712064126 AS sv_4, -0.0291840905255 AS sv_5, 0.0191869970175 AS sv_6, -0.0394933828741 AS sv_7, -0.0170521046047 AS sv_8, 0.0444854785627 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 58 AS sv_idx, 1.0 AS dual_coeff, 0.0344433679824 AS sv_0, -0.044641636507 AS sv_1, -0.0385403163522 AS sv_2, -0.0125563519424 AS sv_3, 0.0094386630454 AS sv_4, 0.00526224027136 AS sv_5, -0.00658446761116 AS sv_6, -0.00259226199818 AS sv_7, 0.0311929907028 AS sv_8, 0.0983328684556 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 59 AS sv_idx, 1.0 AS dual_coeff, -0.00188201652779 AS sv_0, 0.0506801187398 AS sv_1, 0.0713965151836 AS sv_2, 0.0976155102572 AS sv_3, 0.0878679759629 AS sv_4, 0.0754074957122 AS sv_5, -0.0213110188275 AS sv_6, 0.0712099797536 AS sv_7, 0.0714240327806 AS sv_8, 0.0237749439885 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 60 AS sv_idx, 1.0 AS dual_coeff, 0.0126481372763 AS sv_0, -0.044641636507 AS sv_1, 0.0336730925978 AS sv_2, 0.033348590526 AS sv_3, 0.0300779559184 AS sv_4, 0.0271826325966 AS sv_5, -0.00290282980707 AS sv_6, 0.00884708547335 AS sv_7, 0.0311929907028 AS sv_8, 0.0279170509034 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 61 AS sv_idx, -1.0 AS dual_coeff, 0.0271782910804 AS sv_0, -0.044641636507 AS sv_1, 0.0929527566612 AS sv_2, -0.0527231767141 AS sv_3, 0.0080627101872 AS sv_4, 0.0397085710682 AS sv_5, -0.0286742944357 AS sv_6, 0.0210244553624 AS sv_7, -0.0483617248029 AS sv_8, 0.0196328370737 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 62 AS sv_idx, -1.0 AS dual_coeff, 0.0453409833355 AS sv_0, 0.0506801187398 AS sv_1, -0.00836157828357 AS sv_2, -0.0332135761048 AS sv_3, -0.00707277125302 AS sv_4, 0.0011913102681 AS sv_5, -0.0397192078479 AS sv_6, 0.0343088588777 AS sv_7, 0.0299356483965 AS sv_8, 0.0279170509034 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 63 AS sv_idx, 1.0 AS dual_coeff, 0.0671362140416 AS sv_0, 0.0506801187398 AS sv_1, -0.00620595413581 AS sv_2, 0.0631868033198 AS sv_3, -0.0428475455662 AS sv_4, -0.0958847128867 AS sv_5, 0.0523217372542 AS sv_6, -0.07639450375 AS sv_7, 0.0594238004448 AS sv_8, 0.0527696923924 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 64 AS sv_idx, 1.0 AS dual_coeff, 0.0308108295314 AS sv_0, 0.0506801187398 AS sv_1, 0.0595405823709 AS sv_2, 0.0563010619323 AS sv_3, -0.0222082526932 AS sv_4, 0.0011913102681 AS sv_5, -0.0323559322398 AS sv_6, -0.00259226199818 AS sv_7, -0.0247911874325 AS sv_8, -0.0176461251598 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 65 AS sv_idx, 1.0 AS dual_coeff, 0.0162806757273 AS sv_0, -0.044641636507 AS sv_1, 0.0735521393314 AS sv_2, -0.0412469410454 AS sv_3, -0.00432086553661 AS sv_4, -0.013526667436 AS sv_5, -0.0139477432193 AS sv_6, -0.00111621716315 AS sv_7, 0.0428956878925 AS sv_8, 0.0444854785627 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 66 AS sv_idx, -1.0 AS dual_coeff, -0.0709002470972 AS sv_0, 0.0506801187398 AS sv_1, -0.0751859268642 AS sv_2, -0.0400993174923 AS sv_3, -0.0511032627155 AS sv_4, -0.015092409745 AS sv_5, -0.0397192078479 AS sv_6, -0.00259226199818 AS sv_7, -0.0964332228918 AS sv_8, -0.0342145528191 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 67 AS sv_idx, 1.0 AS dual_coeff, 0.0635036755906 AS sv_0, 0.0506801187398 AS sv_1, -0.00405032998805 AS sv_2, -0.0125563519424 AS sv_3, 0.103003457403 AS sv_4, 0.0487898764601 AS sv_5, 0.0560033750583 AS sv_6, -0.00259226199818 AS sv_7, 0.0844952822124 AS sv_8, -0.0176461251598 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 68 AS sv_idx, -1.0 AS dual_coeff, -0.0890629393523 AS sv_0, -0.044641636507 AS sv_1, -0.0611743699037 AS sv_2, -0.0263278347174 AS sv_3, -0.0552311212901 AS sv_4, -0.0545491159304 AS sv_5, 0.041276823842 AS sv_6, -0.07639450375 AS sv_7, -0.0939356455087 AS sv_8, -0.0549250873933 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 69 AS sv_idx, -1.0 AS dual_coeff, -0.0600026317441 AS sv_0, 0.0506801187398 AS sv_1, -0.0105172024313 AS sv_2, -0.014851599083 AS sv_3, -0.0497273098573 AS sv_4, -0.0235474182133 AS sv_5, -0.0581273968684 AS sv_6, 0.0158582984398 AS sv_7, -0.00991895736315 AS sv_8, -0.0342145528191 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 70 AS sv_idx, -1.0 AS dual_coeff, 0.00538306037425 AS sv_0, 0.0506801187398 AS sv_1, -0.0288400076873 AS sv_2, -0.00911348124867 AS sv_3, -0.0318399227006 AS sv_4, -0.0288709420637 AS sv_5, 0.00814208360519 AS sv_6, -0.0394933828741 AS sv_7, -0.0181182673079 AS sv_8, 0.0072065163292 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 71 AS sv_idx, -1.0 AS dual_coeff, -0.0817978624502 AS sv_0, -0.044641636507 AS sv_1, -0.0816527993075 AS sv_2, -0.0400993174923 AS sv_3, 0.00255889875439 AS sv_4, -0.0185370428246 AS sv_5, 0.0707299262747 AS sv_6, -0.0394933828741 AS sv_7, -0.0109044358474 AS sv_8, -0.0922040496268 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 72 AS sv_idx, -1.0 AS dual_coeff, -0.034574862587 AS sv_0, -0.044641636507 AS sv_1, -0.0374625042784 AS sv_2, -0.0607565416547 AS sv_3, 0.020446285911 AS sv_4, 0.0434663526097 AS sv_5, -0.0139477432193 AS sv_6, -0.00259226199818 AS sv_7, -0.0307512098646 AS sv_8, -0.0714935150527 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 73 AS sv_idx, -1.0 AS dual_coeff, -0.00188201652779 AS sv_0, 0.0506801187398 AS sv_1, -0.0245287593918 AS sv_2, 0.0528581912386 AS sv_3, 0.027326050202 AS sv_4, 0.0300009687527 AS sv_5, 0.0302319104297 AS sv_6, -0.00259226199818 AS sv_7, -0.0213936809404 AS sv_8, 0.036201264733 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 74 AS sv_idx, -1.0 AS dual_coeff, 0.00175052192323 AS sv_0, -0.044641636507 AS sv_1, -0.0396181284261 AS sv_2, -0.100923366426 AS sv_3, -0.0290880169842 AS sv_4, -0.0301235359109 AS sv_5, 0.0449584616461 AS sv_6, -0.0501947079281 AS sv_7, -0.0683297436244 AS sv_8, -0.12948301186 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 75 AS sv_idx, -1.0 AS dual_coeff, -0.0999605547053 AS sv_0, -0.044641636507 AS sv_1, -0.067641242347 AS sv_2, -0.108956731367 AS sv_3, -0.0744944613049 AS sv_4, -0.0727117267142 AS sv_5, 0.0155053592134 AS sv_6, -0.0394933828741 AS sv_7, -0.0498684677352 AS sv_8, -0.00936191133014 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 76 AS sv_idx, 1.0 AS dual_coeff, -0.0963280162543 AS sv_0, -0.044641636507 AS sv_1, -0.0363846922045 AS sv_2, -0.0745280244297 AS sv_3, -0.0387196869916 AS sv_4, -0.0276183482165 AS sv_5, 0.0155053592134 AS sv_6, -0.0394933828741 AS sv_7, -0.0740888714915 AS sv_8, -0.00107769750047 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 77 AS sv_idx, -1.0 AS dual_coeff, -0.04547247794 AS sv_0, -0.044641636507 AS sv_1, -0.0385403163522 AS sv_2, -0.0263278347174 AS sv_3, -0.0153284884022 AS sv_4, 0.000878161806308 AS sv_5, -0.0323559322398 AS sv_6, -0.00259226199818 AS sv_7, 0.00114379737951 AS sv_8, -0.038356659734 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 78 AS sv_idx, -1.0 AS dual_coeff, 0.00538306037425 AS sv_0, -0.044641636507 AS sv_1, -0.0482406250172 AS sv_2, -0.0125563519424 AS sv_3, 0.00118294589619 AS sv_4, -0.00663740127664 AS sv_5, 0.0633666506665 AS sv_6, -0.0394933828741 AS sv_7, -0.0514005352606 AS sv_8, -0.0590671943082 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 79 AS sv_idx, -1.0 AS dual_coeff, -0.00188201652779 AS sv_0, -0.044641636507 AS sv_1, 0.068163078962 AS sv_2, -0.00567061055493 AS sv_3, 0.119514891701 AS sv_4, 0.130208476525 AS sv_5, -0.0249926566316 AS sv_6, 0.0867084505215 AS sv_7, 0.0461323310394 AS sv_8, -0.00107769750047 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 80 AS sv_idx, -1.0 AS dual_coeff, 0.0417084448844 AS sv_0, -0.044641636507 AS sv_1, -0.0450071887955 AS sv_2, 0.0344962143201 AS sv_3, 0.0438374845004 AS sv_4, -0.0157187066685 AS sv_5, 0.0375951860379 AS sv_6, -0.0144006206785 AS sv_7, 0.0898986932777 AS sv_8, 0.0072065163292 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 81 AS sv_idx, 1.0 AS dual_coeff, -0.041839939489 AS sv_0, 0.0506801187398 AS sv_1, 0.004572166603 AS sv_2, -0.0538708002672 AS sv_3, -0.0442234984244 AS sv_4, -0.0273051997547 AS sv_5, -0.0802172236929 AS sv_6, 0.0712099797536 AS sv_7, 0.0366457977934 AS sv_8, 0.0196328370737 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 82 AS sv_idx, -1.0 AS dual_coeff, 0.00538306037425 AS sv_0, -0.044641636507 AS sv_1, -0.00297251791417 AS sv_2, 0.0494153205448 AS sv_3, 0.0741084473809 AS sv_4, 0.0707102687854 AS sv_5, 0.0449584616461 AS sv_6, -0.00259226199818 AS sv_7, -0.00149858682029 AS sv_8, -0.00936191133014 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 83 AS sv_idx, 1.0 AS dual_coeff, -0.0636351701951 AS sv_0, 0.0506801187398 AS sv_1, 0.0961861928829 AS sv_2, 0.104501251645 AS sv_3, -0.00294491267841 AS sv_4, -0.0047585105059 AS sv_5, -0.00658446761116 AS sv_6, -0.00259226199818 AS sv_7, 0.0226920225667 AS sv_8, 0.0734802269666 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 84 AS sv_idx, 1.0 AS dual_coeff, 0.110726675454 AS sv_0, 0.0506801187398 AS sv_1, 0.00672779075076 AS sv_2, 0.0287580963824 AS sv_3, -0.027712064126 AS sv_4, -0.00726369820022 AS sv_5, -0.0470824834561 AS sv_6, 0.0343088588777 AS sv_7, 0.00200784054982 AS sv_8, 0.0776223338814 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 85 AS sv_idx, 1.0 AS dual_coeff, 0.0707687524926 AS sv_0, 0.0506801187398 AS sv_1, 0.0121168511202 AS sv_2, 0.0563010619323 AS sv_3, 0.034205814493 AS sv_4, 0.0494161733837 AS sv_5, -0.0397192078479 AS sv_6, 0.0343088588777 AS sv_7, 0.0273677075426 AS sv_8, -0.00107769750047 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 86 AS sv_idx, -1.0 AS dual_coeff, 0.0671362140416 AS sv_0, 0.0506801187398 AS sv_1, -0.0148284507269 AS sv_2, 0.0585963091762 AS sv_3, -0.0593589798647 AS sv_4, -0.0345076143759 AS sv_5, -0.0618090346725 AS sv_6, 0.0129062087697 AS sv_7, -0.00514530798026 AS sv_8, 0.0486275854776 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 87 AS sv_idx, 1.0 AS dual_coeff, 0.0271782910804 AS sv_0, -0.044641636507 AS sv_1, 0.049840273706 AS sv_2, -0.0550184238203 AS sv_3, -0.00294491267841 AS sv_4, 0.0406480164536 AS sv_5, -0.0581273968684 AS sv_6, 0.0527594193157 AS sv_7, -0.0529587932392 AS sv_8, -0.0052198044153 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 88 AS sv_idx, -1.0 AS dual_coeff, 0.0380759064334 AS sv_0, 0.0506801187398 AS sv_1, 0.00888341489852 AS sv_2, 0.0425295791574 AS sv_3, -0.0428475455662 AS sv_4, -0.021042230519 AS sv_5, -0.0397192078479 AS sv_6, -0.00259226199818 AS sv_7, -0.0181182673079 AS sv_8, 0.0072065163292 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 89 AS sv_idx, -1.0 AS dual_coeff, -0.049105016391 AS sv_0, -0.044641636507 AS sv_1, -0.0568631216082 AS sv_2, -0.043542188186 AS sv_3, -0.0455994512826 AS sv_4, -0.043275771306 AS sv_5, 0.000778807997018 AS sv_6, -0.0394933828741 AS sv_7, -0.0119006848015 AS sv_8, 0.0154907301589 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 90 AS sv_idx, 1.0 AS dual_coeff, -0.041839939489 AS sv_0, -0.044641636507 AS sv_1, 0.0476846495582 AS sv_2, 0.0597439326261 AS sv_3, 0.127770608851 AS sv_4, 0.128016437293 AS sv_5, -0.0249926566316 AS sv_6, 0.10811110063 AS sv_7, 0.0638931206368 AS sv_8, 0.0403433716479 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 91 AS sv_idx, 1.0 AS dual_coeff, 0.0126481372763 AS sv_0, -0.044641636507 AS sv_1, 0.00672779075076 AS sv_2, -0.0561660474079 AS sv_3, -0.0758704141631 AS sv_4, -0.0664487574784 AS sv_5, -0.0213110188275 AS sv_6, -0.0376483268303 AS sv_7, -0.0181182673079 AS sv_8, -0.0922040496268 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 92 AS sv_idx, 1.0 AS dual_coeff, 0.0308108295314 AS sv_0, 0.0506801187398 AS sv_1, 0.0466068374844 AS sv_2, -0.0159992226361 AS sv_3, 0.020446285911 AS sv_4, 0.0506687672308 AS sv_5, -0.0581273968684 AS sv_6, 0.0712099797536 AS sv_7, 0.00620931561651 AS sv_8, 0.0072065163292 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 93 AS sv_idx, -1.0 AS dual_coeff, -0.0164121703319 AS sv_0, -0.044641636507 AS sv_1, -0.0105172024313 AS sv_2, 0.00121513083254 AS sv_3, -0.0373437341334 AS sv_4, -0.0357602082231 AS sv_5, 0.0118237214093 AS sv_6, -0.0394933828741 AS sv_7, -0.0213936809404 AS sv_8, -0.0342145528191 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 94 AS sv_idx, -1.0 AS dual_coeff, 0.0162806757273 AS sv_0, 0.0506801187398 AS sv_1, 0.0724743272575 AS sv_2, 0.0769582860947 AS sv_3, -0.00844872411122 AS sv_4, 0.00557538873315 AS sv_5, -0.00658446761116 AS sv_6, -0.00259226199818 AS sv_7, -0.0236445575721 AS sv_8, 0.0610539062221 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 95 AS sv_idx, -1.0 AS dual_coeff, -0.0563700932931 AS sv_0, -0.044641636507 AS sv_1, -0.0741081147903 AS sv_2, -0.0504279295735 AS sv_3, -0.0249601584096 AS sv_4, -0.0470335528475 AS sv_5, 0.0928197530992 AS sv_6, -0.07639450375 AS sv_7, -0.0611765950943 AS sv_8, -0.0466408735636 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 96 AS sv_idx, -1.0 AS dual_coeff, 0.0489735217865 AS sv_0, 0.0506801187398 AS sv_1, 0.00349435452912 AS sv_2, 0.0700725447073 AS sv_3, -0.00844872411122 AS sv_4, 0.0134041002779 AS sv_5, -0.0544457590643 AS sv_6, 0.0343088588777 AS sv_7, 0.0133159679089 AS sv_8, 0.036201264733 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 97 AS sv_idx, 1.0 AS dual_coeff, -0.00914709342983 AS sv_0, -0.044641636507 AS sv_1, 0.0110390390463 AS sv_2, -0.057313670961 AS sv_3, -0.0249601584096 AS sv_4, -0.0429626228442 AS sv_5, 0.0302319104297 AS sv_6, -0.0394933828741 AS sv_7, 0.0170371324148 AS sv_8, -0.0052198044153 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 98 AS sv_idx, -1.0 AS dual_coeff, 0.0199132141783 AS sv_0, -0.044641636507 AS sv_1, 0.004572166603 AS sv_2, -0.0263278347174 AS sv_3, 0.0231981916274 AS sv_4, 0.01027261566 AS sv_5, 0.0670482884706 AS sv_6, -0.0394933828741 AS sv_7, -0.0236445575721 AS sv_8, -0.0466408735636 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 99 AS sv_idx, -1.0 AS dual_coeff, 0.0126481372763 AS sv_0, 0.0506801187398 AS sv_1, -0.0202175110963 AS sv_2, -0.0022277398612 AS sv_3, 0.0383336730676 AS sv_4, 0.0531739549252 AS sv_5, -0.00658446761116 AS sv_6, 0.0343088588777 AS sv_7, -0.00514530798026 AS sv_8, -0.00936191133014 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 100 AS sv_idx, 1.0 AS dual_coeff, -0.0273097856849 AS sv_0, -0.044641636507 AS sv_1, 0.0886415083657 AS sv_2, -0.0251802111642 AS sv_3, 0.0218222387692 AS sv_4, 0.0425269072243 AS sv_5, -0.0323559322398 AS sv_6, 0.0343088588777 AS sv_7, 0.00286377051894 AS sv_8, 0.0776223338814 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 101 AS sv_idx, 1.0 AS dual_coeff, -0.0127796318808 AS sv_0, -0.044641636507 AS sv_1, 0.0606183944448 AS sv_2, 0.0528581912386 AS sv_3, 0.047965343075 AS sv_4, 0.0293746718292 AS sv_5, -0.0176293810234 AS sv_6, 0.0343088588777 AS sv_7, 0.0702112981933 AS sv_8, 0.0072065163292 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 102 AS sv_idx, -1.0 AS dual_coeff, 0.0417084448844 AS sv_0, -0.044641636507 AS sv_1, -0.0320734439089 AS sv_2, -0.0619041652078 AS sv_3, 0.0796122588137 AS sv_4, 0.0509819156926 AS sv_5, 0.0560033750583 AS sv_6, -0.00997248617336 AS sv_7, 0.0450661683363 AS sv_8, -0.0590671943082 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 103 AS sv_idx, 1.0 AS dual_coeff, 0.110726675454 AS sv_0, 0.0506801187398 AS sv_1, -0.0331512559828 AS sv_2, -0.0228849640236 AS sv_3, -0.00432086553661 AS sv_4, 0.0202933664373 AS sv_5, -0.0618090346725 AS sv_6, 0.0712099797536 AS sv_7, 0.0155668445407 AS sv_8, 0.0444854785627 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 104 AS sv_idx, 1.0 AS dual_coeff, 0.0671362140416 AS sv_0, 0.0506801187398 AS sv_1, -0.0309956318351 AS sv_2, 0.00465800152627 AS sv_3, 0.0245741444856 AS sv_4, 0.0356376410649 AS sv_5, -0.0286742944357 AS sv_6, 0.0343088588777 AS sv_7, 0.0233748412798 AS sv_8, 0.0817644407962 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 105 AS sv_idx, -1.0 AS dual_coeff, 0.00175052192323 AS sv_0, -0.044641636507 AS sv_1, -0.0460850008694 AS sv_2, -0.0332135761048 AS sv_3, -0.0731185084467 AS sv_4, -0.0814798836443 AS sv_5, 0.0449584616461 AS sv_6, -0.0693832907836 AS sv_7, -0.0611765950943 AS sv_8, -0.0797777288823 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 106 AS sv_idx, 1.0 AS dual_coeff, 0.0417084448844 AS sv_0, 0.0506801187398 AS sv_1, 0.0196615356373 AS sv_2, 0.0597439326261 AS sv_3, -0.00569681839481 AS sv_4, -0.00256647127338 AS sv_5, -0.0286742944357 AS sv_6, -0.00259226199818 AS sv_7, 0.0311929907028 AS sv_8, 0.0072065163292 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 107 AS sv_idx, 1.0 AS dual_coeff, 0.00538306037425 AS sv_0, 0.0506801187398 AS sv_1, -0.00189470584028 AS sv_2, 0.00810087222001 AS sv_3, -0.00432086553661 AS sv_4, -0.0157187066685 AS sv_5, -0.00290282980707 AS sv_6, -0.00259226199818 AS sv_7, 0.0383932482117 AS sv_8, -0.013504018245 AS sv_9 FROM SYSIBM.SYSDUMMY1) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 143.042780633 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * tanh(0.1 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9) + 0.0) AS dot_prod1 
FROM diabetes AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp