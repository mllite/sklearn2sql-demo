-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 0.693923955194 AS sv_0, 0.0741781212105 AS sv_1, 0.935497099023 AS sv_2, 0.464078334156 AS sv_3, 0.415828057698 AS sv_4, 0.189475061882 AS sv_5, 0.0999538611812 AS sv_6, 0.148193459706 AS sv_7, 0.787037775506 AS sv_8, 0.464390173918 AS sv_9 FROM DUAL UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, 0.936528288623 AS sv_0, 0.325902693182 AS sv_1, 0.875960369439 AS sv_2, 0.79533946782 AS sv_3, 0.945646969423 AS sv_4, 0.708668827346 AS sv_5, 0.759155280028 AS sv_6, 0.796448064842 AS sv_7, 0.393810734415 AS sv_8, 0.53013995187 AS sv_9 FROM DUAL UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, 0.36156984578 AS sv_0, 0.592980188389 AS sv_1, 0.356353386496 AS sv_2, 0.267780373233 AS sv_3, 0.170668708675 AS sv_4, 0.0123072679117 AS sv_5, 0.3380256847 AS sv_6, 0.13989914887 AS sv_7, 0.545789961955 AS sv_8, 0.504950761288 AS sv_9 FROM DUAL UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, 0.30069635129 AS sv_0, 0.72041880006 AS sv_1, 0.582904080942 AS sv_2, 0.642649776306 AS sv_3, 0.919051090593 AS sv_4, 0.66453431204 AS sv_5, 0.684311280214 AS sv_6, 0.4055338962 AS sv_7, 0.0199855927775 AS sv_8, 0.12320942082 AS sv_9 FROM DUAL UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 0.855816633918 AS sv_0, 0.86836311986 AS sv_1, 0.323685403315 AS sv_2, 0.942304794254 AS sv_3, 0.0302895849911 AS sv_4, 0.359490081737 AS sv_5, 0.380738410682 AS sv_6, 0.43864670013 AS sv_7, 0.152884816755 AS sv_8, 0.00362202371577 AS sv_9 FROM DUAL UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, 0.711339933026 AS sv_0, 0.827625138081 AS sv_1, 0.696676710988 AS sv_2, 0.571305121783 AS sv_3, 0.652704780205 AS sv_4, 0.417558453537 AS sv_5, 0.463719951125 AS sv_6, 0.903775396988 AS sv_7, 0.914386480132 AS sv_8, 0.864766966704 AS sv_9 FROM DUAL UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.0150213102531 AS sv_0, 0.00060340563571 AS sv_1, 0.340402710487 AS sv_2, 0.881303909642 AS sv_3, 0.490654660084 AS sv_4, 0.729867956321 AS sv_5, 0.751473866077 AS sv_6, 0.13145116809 AS sv_7, 0.00147199830747 AS sv_8, 0.0851119145832 AS sv_9 FROM DUAL UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, 0.650806821765 AS sv_0, 0.824705983407 AS sv_1, 0.143540248452 AS sv_2, 0.980592685001 AS sv_3, 0.00580741797988 AS sv_4, 0.251841519377 AS sv_5, 0.521334227106 AS sv_6, 0.47230085367 AS sv_7, 0.744627414572 AS sv_8, 0.92460134886 AS sv_9 FROM DUAL UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, 0.404423309192 AS sv_0, 0.260406554076 AS sv_1, 0.0386627494746 AS sv_2, 0.357807630246 AS sv_3, 0.197586939305 AS sv_4, 0.0897097030555 AS sv_5, 0.449633512047 AS sv_6, 0.0863929788418 AS sv_7, 0.252828527075 AS sv_8, 0.243840824107 AS sv_9 FROM DUAL UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, 0.648759847742 AS sv_0, 0.281886507842 AS sv_1, 0.629118727349 AS sv_2, 0.202353585797 AS sv_3, 0.0543058302775 AS sv_4, 0.908528164254 AS sv_5, 0.481440313737 AS sv_6, 0.388947980277 AS sv_7, 0.307483000073 AS sv_8, 0.0151070185175 AS sv_9 FROM DUAL UNION ALL SELECT 10 AS sv_idx, 0.296295942054 AS dual_coeff, 0.427318934332 AS sv_0, 0.596840212856 AS sv_1, 0.973809456368 AS sv_2, 0.180652676045 AS sv_3, 0.506202964366 AS sv_4, 0.17547443281 AS sv_5, 0.104477294557 AS sv_6, 0.188538014553 AS sv_7, 0.764945616204 AS sv_8, 0.0576664568024 AS sv_9 FROM DUAL UNION ALL SELECT 11 AS sv_idx, 1.0 AS dual_coeff, 0.440780685612 AS sv_0, 0.828641035002 AS sv_1, 0.00391920879768 AS sv_2, 0.557123632236 AS sv_3, 0.714181290598 AS sv_4, 0.934252008705 AS sv_5, 0.385645107991 AS sv_6, 0.0895653152899 AS sv_7, 0.907150698417 AS sv_8, 0.36276924725 AS sv_9 FROM DUAL UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, 0.76517525816 AS sv_0, 0.571134077604 AS sv_1, 0.687722146462 AS sv_2, 0.639638606755 AS sv_3, 0.180006798726 AS sv_4, 0.888438987571 AS sv_5, 0.874607317579 AS sv_6, 0.326378385984 AS sv_7, 0.30293111693 AS sv_8, 0.276697975959 AS sv_9 FROM DUAL UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 0.0185693947223 AS sv_0, 0.766978308567 AS sv_1, 0.936939248282 AS sv_2, 0.753526971745 AS sv_3, 0.124507483023 AS sv_4, 0.984499658681 AS sv_5, 0.575702010656 AS sv_6, 0.0760038908702 AS sv_7, 0.798573627757 AS sv_8, 0.627300916196 AS sv_9 FROM DUAL UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, 0.697265471202 AS sv_0, 0.944497261345 AS sv_1, 0.00654151121448 AS sv_2, 0.878598941717 AS sv_3, 0.0657377691466 AS sv_4, 0.897515636937 AS sv_5, 0.343137976778 AS sv_6, 0.544223241954 AS sv_7, 0.944296718377 AS sv_8, 0.151166052216 AS sv_9 FROM DUAL UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 0.664374235279 AS sv_0, 0.80313896343 AS sv_1, 0.344045736585 AS sv_2, 0.633664167963 AS sv_3, 0.772477925378 AS sv_4, 0.940063164936 AS sv_5, 0.687545751824 AS sv_6, 0.62231465351 AS sv_7, 0.135164953337 AS sv_8, 0.892792469442 AS sv_9 FROM DUAL UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.825036119738 AS sv_0, 0.238595856284 AS sv_1, 0.533834716928 AS sv_2, 0.378698013309 AS sv_3, 0.971921961636 AS sv_4, 0.758269726775 AS sv_5, 0.791411476454 AS sv_6, 0.640725897348 AS sv_7, 0.780336420374 AS sv_8, 0.555093013296 AS sv_9 FROM DUAL UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 0.779790562301 AS sv_0, 0.00428319453665 AS sv_1, 0.457362385881 AS sv_2, 0.759169813734 AS sv_3, 0.572781185141 AS sv_4, 0.915614540208 AS sv_5, 0.15792906298 AS sv_6, 0.0488569814066 AS sv_7, 0.48396329258 AS sv_8, 0.940362187141 AS sv_9 FROM DUAL UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, 0.480536059185 AS sv_0, 0.726461158616 AS sv_1, 0.95300097201 AS sv_2, 0.288061275108 AS sv_3, 0.837566111494 AS sv_4, 0.235866108514 AS sv_5, 0.869693363576 AS sv_6, 0.69053259182 AS sv_7, 0.604189475699 AS sv_8, 0.484775671679 AS sv_9 FROM DUAL UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, 0.86682524315 AS sv_0, 0.107216896399 AS sv_1, 0.301605979305 AS sv_2, 0.10871860933 AS sv_3, 0.560834555662 AS sv_4, 0.79978348446 AS sv_5, 0.818618730696 AS sv_6, 0.197737402468 AS sv_7, 0.792993302754 AS sv_8, 0.247285907379 AS sv_9 FROM DUAL UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, 0.990510050982 AS sv_0, 0.0326602203249 AS sv_1, 0.392094884587 AS sv_2, 0.808204054962 AS sv_3, 0.396808415476 AS sv_4, 0.905612345367 AS sv_5, 0.881024817049 AS sv_6, 0.428003917589 AS sv_7, 0.151376697578 AS sv_8, 0.35735843137 AS sv_9 FROM DUAL UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, 0.68797826699 AS sv_0, 0.713908387456 AS sv_1, 0.228170769714 AS sv_2, 0.32444789256 AS sv_3, 0.439193714703 AS sv_4, 0.665318562971 AS sv_5, 0.627764200144 AS sv_6, 0.283660885809 AS sv_7, 0.753205157256 AS sv_8, 0.475074534562 AS sv_9 FROM DUAL UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, 0.148988230123 AS sv_0, 0.501644361777 AS sv_1, 0.202344561854 AS sv_2, 0.977405342491 AS sv_3, 0.287194457959 AS sv_4, 0.440728988523 AS sv_5, 0.0728942572862 AS sv_6, 0.336583130278 AS sv_7, 0.855178967771 AS sv_8, 0.0302009988874 AS sv_9 FROM DUAL UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, 0.764293124569 AS sv_0, 0.208588107113 AS sv_1, 0.750115484773 AS sv_2, 0.545925331347 AS sv_3, 0.0555568327919 AS sv_4, 0.701636821662 AS sv_5, 0.265232229103 AS sv_6, 0.119597639819 AS sv_7, 0.375910495268 AS sv_8, 0.644739919105 AS sv_9 FROM DUAL UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, 0.825581542335 AS sv_0, 0.906344888868 AS sv_1, 0.0290264522883 AS sv_2, 0.589009298661 AS sv_3, 0.431231865585 AS sv_4, 0.905872173628 AS sv_5, 0.456094068711 AS sv_6, 0.689687981861 AS sv_7, 0.747034243271 AS sv_8, 0.0631245778781 AS sv_9 FROM DUAL UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, 0.345479709758 AS sv_0, 0.910731455069 AS sv_1, 0.724369816449 AS sv_2, 0.609810834299 AS sv_3, 0.948448631443 AS sv_4, 0.542752868678 AS sv_5, 0.613987885486 AS sv_6, 0.418057247414 AS sv_7, 0.709949209238 AS sv_8, 0.879255725232 AS sv_9 FROM DUAL UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.270486149516 AS sv_0, 0.715557811552 AS sv_1, 0.102528826979 AS sv_2, 0.945603049027 AS sv_3, 0.195081335952 AS sv_4, 0.185121015367 AS sv_5, 0.838754947615 AS sv_6, 0.961570423609 AS sv_7, 0.487974099594 AS sv_8, 0.481773244363 AS sv_9 FROM DUAL UNION ALL SELECT 27 AS sv_idx, -1.0 AS dual_coeff, 0.07500600165 AS sv_0, 0.21797094656 AS sv_1, 0.342470913985 AS sv_2, 0.452561081824 AS sv_3, 0.439422698093 AS sv_4, 0.777588287314 AS sv_5, 0.813848795251 AS sv_6, 0.353007397418 AS sv_7, 0.826619796023 AS sv_8, 0.864682228562 AS sv_9 FROM DUAL UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 0.640148048631 AS sv_0, 0.561033701004 AS sv_1, 0.179943873135 AS sv_2, 0.947325321609 AS sv_3, 0.494302291793 AS sv_4, 0.568185381919 AS sv_5, 0.813715016817 AS sv_6, 0.780963766676 AS sv_7, 0.64814720326 AS sv_8, 0.370797231495 AS sv_9 FROM DUAL UNION ALL SELECT 29 AS sv_idx, -1.0 AS dual_coeff, 0.750339724436 AS sv_0, 0.0322034339796 AS sv_1, 0.339011199472 AS sv_2, 0.528174313517 AS sv_3, 0.964502355546 AS sv_4, 0.181120906172 AS sv_5, 0.389673897304 AS sv_6, 0.634883550303 AS sv_7, 0.0135180455089 AS sv_8, 0.578077577736 AS sv_9 FROM DUAL UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, 0.380168342651 AS sv_0, 0.81756526573 AS sv_1, 0.0950474594637 AS sv_2, 0.075937919928 AS sv_3, 0.795408758239 AS sv_4, 0.828893202469 AS sv_5, 0.0458374811337 AS sv_6, 0.882578179247 AS sv_7, 0.0420092231748 AS sv_8, 0.607730405873 AS sv_9 FROM DUAL UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, 0.591389579269 AS sv_0, 0.667831304606 AS sv_1, 0.873169001714 AS sv_2, 0.77648747802 AS sv_3, 0.940606457272 AS sv_4, 0.978225486103 AS sv_5, 0.54062498394 AS sv_6, 0.870134375116 AS sv_7, 0.713189995846 AS sv_8, 0.420475678082 AS sv_9 FROM DUAL UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, 0.635525458914 AS sv_0, 0.310434530718 AS sv_1, 0.347821166434 AS sv_2, 0.748542020165 AS sv_3, 0.850058171138 AS sv_4, 0.790070296317 AS sv_5, 0.122368386195 AS sv_6, 0.359634097248 AS sv_7, 0.310336786037 AS sv_8, 0.142649381373 AS sv_9 FROM DUAL UNION ALL SELECT 33 AS sv_idx, -1.0 AS dual_coeff, 0.30218992231 AS sv_0, 0.104478847716 AS sv_1, 0.686831061259 AS sv_2, 0.794888951497 AS sv_3, 0.638617173495 AS sv_4, 0.764941145919 AS sv_5, 0.547104730186 AS sv_6, 0.929209314889 AS sv_7, 0.429265225559 AS sv_8, 0.838638895915 AS sv_9 FROM DUAL UNION ALL SELECT 34 AS sv_idx, -1.0 AS dual_coeff, 0.691004456703 AS sv_0, 0.206059400319 AS sv_1, 0.843142927157 AS sv_2, 0.292934729317 AS sv_3, 0.630057584148 AS sv_4, 0.91143319561 AS sv_5, 0.111555766738 AS sv_6, 0.447619670174 AS sv_7, 0.0430941605769 AS sv_8, 0.994089180113 AS sv_9 FROM DUAL UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, 0.835838142005 AS sv_0, 0.603366366595 AS sv_1, 0.961895650383 AS sv_2, 0.0526880819944 AS sv_3, 0.619906784294 AS sv_4, 0.835108344645 AS sv_5, 0.435896043727 AS sv_6, 0.33753092536 AS sv_7, 0.421727064849 AS sv_8, 0.0184642769396 AS sv_9 FROM DUAL UNION ALL SELECT 36 AS sv_idx, -1.0 AS dual_coeff, 0.538410230599 AS sv_0, 0.280377505473 AS sv_1, 0.158601046873 AS sv_2, 0.498951297834 AS sv_3, 0.577056411179 AS sv_4, 0.933849409192 AS sv_5, 0.153267162617 AS sv_6, 0.0335910739067 AS sv_7, 0.710418559165 AS sv_8, 0.861231752152 AS sv_9 FROM DUAL UNION ALL SELECT 37 AS sv_idx, -1.0 AS dual_coeff, 0.325182019676 AS sv_0, 0.557338488126 AS sv_1, 0.0767468893976 AS sv_2, 0.253631736198 AS sv_3, 0.806318350334 AS sv_4, 0.0487471499663 AS sv_5, 0.481593264835 AS sv_6, 0.412315834448 AS sv_7, 0.578403425931 AS sv_8, 0.890607187486 AS sv_9 FROM DUAL UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, 0.804009709038 AS sv_0, 0.449064690728 AS sv_1, 0.066311222565 AS sv_2, 0.82158522945 AS sv_3, 0.146826222756 AS sv_4, 0.683693599491 AS sv_5, 0.0137611081551 AS sv_6, 0.0988520812911 AS sv_7, 0.135200429594 AS sv_8, 0.0495826193765 AS sv_9 FROM DUAL UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, 0.680024085378 AS sv_0, 0.554297219973 AS sv_1, 0.335383912698 AS sv_2, 0.378811237489 AS sv_3, 0.92912782805 AS sv_4, 0.374396690543 AS sv_5, 0.966555115075 AS sv_6, 0.290777360341 AS sv_7, 0.783347963654 AS sv_8, 0.346265599222 AS sv_9 FROM DUAL UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, 0.695835396162 AS sv_0, 0.501777639625 AS sv_1, 0.793718799817 AS sv_2, 0.967870027309 AS sv_3, 0.207780306374 AS sv_4, 0.442685899629 AS sv_5, 0.666001139025 AS sv_6, 0.738461588263 AS sv_7, 0.0629276610751 AS sv_8, 0.657433275707 AS sv_9 FROM DUAL UNION ALL SELECT 41 AS sv_idx, 1.0 AS dual_coeff, 0.795395157893 AS sv_0, 0.690023901347 AS sv_1, 0.0248833971586 AS sv_2, 0.754265555231 AS sv_3, 0.364207646629 AS sv_4, 0.349217663055 AS sv_5, 0.466169077665 AS sv_6, 0.973088393454 AS sv_7, 0.0147182754239 AS sv_8, 0.391510095728 AS sv_9 FROM DUAL UNION ALL SELECT 42 AS sv_idx, -1.0 AS dual_coeff, 0.0902119007428 AS sv_0, 0.226933242393 AS sv_1, 0.423153847384 AS sv_2, 0.754023983751 AS sv_3, 0.119204329833 AS sv_4, 0.92945927746 AS sv_5, 0.0445057147731 AS sv_6, 0.0978858513126 AS sv_7, 0.331520264727 AS sv_8, 0.628553512449 AS sv_9 FROM DUAL UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, 0.434845721226 AS sv_0, 0.951317080312 AS sv_1, 0.71868349365 AS sv_2, 0.564507553137 AS sv_3, 0.224909810391 AS sv_4, 0.65403047576 AS sv_5, 0.337905362584 AS sv_6, 0.588536349586 AS sv_7, 0.217196662194 AS sv_8, 0.832211932236 AS sv_9 FROM DUAL UNION ALL SELECT 44 AS sv_idx, -1.0 AS dual_coeff, 0.487765431766 AS sv_0, 0.328887580872 AS sv_1, 0.24756530669 AS sv_2, 0.502381217464 AS sv_3, 0.409365890524 AS sv_4, 0.444884369156 AS sv_5, 0.498191468099 AS sv_6, 0.501103000342 AS sv_7, 0.526340671452 AS sv_8, 0.669004286322 AS sv_9 FROM DUAL UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, 0.608951216817 AS sv_0, 0.133679485362 AS sv_1, 0.0176023326649 AS sv_2, 0.426843498919 AS sv_3, 0.926070399375 AS sv_4, 0.874865259645 AS sv_5, 0.516505202091 AS sv_6, 0.462139176693 AS sv_7, 0.566603536113 AS sv_8, 0.851000267191 AS sv_9 FROM DUAL UNION ALL SELECT 46 AS sv_idx, 0.703704057946 AS dual_coeff, 0.777615543481 AS sv_0, 0.227990872394 AS sv_1, 0.267714180349 AS sv_2, 0.645180479099 AS sv_3, 0.697089408775 AS sv_4, 0.70549934008 AS sv_5, 0.256437250717 AS sv_6, 0.826121440228 AS sv_7, 0.753073580251 AS sv_8, 0.243450967446 AS sv_9 FROM DUAL UNION ALL SELECT 47 AS sv_idx, -1.0 AS dual_coeff, 0.244442687867 AS sv_0, 0.122327994752 AS sv_1, 0.0868339302867 AS sv_2, 0.49096166785 AS sv_3, 0.244260465857 AS sv_4, 0.128818972163 AS sv_5, 0.368080108856 AS sv_6, 0.648260108663 AS sv_7, 0.164841556494 AS sv_8, 0.212777823844 AS sv_9 FROM DUAL UNION ALL SELECT 48 AS sv_idx, -1.0 AS dual_coeff, 0.303347935382 AS sv_0, 0.442479840339 AS sv_1, 0.242436468241 AS sv_2, 0.283024393177 AS sv_3, 0.9739564502 AS sv_4, 0.701285126879 AS sv_5, 0.13597022162 AS sv_6, 0.369446106545 AS sv_7, 0.0822772174307 AS sv_8, 0.300563980829 AS sv_9 FROM DUAL UNION ALL SELECT 49 AS sv_idx, -1.0 AS dual_coeff, 0.283699207169 AS sv_0, 0.556254381155 AS sv_1, 0.403360660947 AS sv_2, 0.0101906163477 AS sv_3, 0.434730215232 AS sv_4, 0.897533939768 AS sv_5, 0.868057793945 AS sv_6, 0.220294733644 AS sv_7, 0.93638309295 AS sv_8, 0.755629731329 AS sv_9 FROM DUAL UNION ALL SELECT 50 AS sv_idx, -1.0 AS dual_coeff, 0.753839791855 AS sv_0, 0.146224303432 AS sv_1, 0.420503749482 AS sv_2, 0.315233120211 AS sv_3, 0.0614308137131 AS sv_4, 0.309321519894 AS sv_5, 0.218251741153 AS sv_6, 0.462650975513 AS sv_7, 0.91012078823 AS sv_8, 0.558457947047 AS sv_9 FROM DUAL UNION ALL SELECT 51 AS sv_idx, 1.0 AS dual_coeff, 0.813394738621 AS sv_0, 0.952611838827 AS sv_1, 0.864281955071 AS sv_2, 0.77227291809 AS sv_3, 0.405111123567 AS sv_4, 0.350901572915 AS sv_5, 0.199650001293 AS sv_6, 0.0869456904856 AS sv_7, 0.0426083705786 AS sv_8, 0.900473109972 AS sv_9 FROM DUAL UNION ALL SELECT 52 AS sv_idx, -1.0 AS dual_coeff, 0.205628367266 AS sv_0, 0.944071651331 AS sv_1, 0.48956247926 AS sv_2, 0.637173140737 AS sv_3, 0.486943837396 AS sv_4, 0.941824823377 AS sv_5, 0.311448368076 AS sv_6, 0.363262434159 AS sv_7, 0.352041226256 AS sv_8, 0.969590297568 AS sv_9 FROM DUAL UNION ALL SELECT 53 AS sv_idx, -1.0 AS dual_coeff, 0.545234512415 AS sv_0, 0.824656425561 AS sv_1, 0.0605716539054 AS sv_2, 0.146520462117 AS sv_3, 0.099757876797 AS sv_4, 0.681239152529 AS sv_5, 0.327989717964 AS sv_6, 0.663804664749 AS sv_7, 0.846055416521 AS sv_8, 0.362271066523 AS sv_9 FROM DUAL UNION ALL SELECT 54 AS sv_idx, -1.0 AS dual_coeff, 0.885507929966 AS sv_0, 0.15294734059 AS sv_1, 0.456289950739 AS sv_2, 0.316651863759 AS sv_3, 0.542569540079 AS sv_4, 0.122247148777 AS sv_5, 0.884904406732 AS sv_6, 0.7665229961 AS sv_7, 0.346693055346 AS sv_8, 0.710518229481 AS sv_9 FROM DUAL UNION ALL SELECT 55 AS sv_idx, -1.0 AS dual_coeff, 0.257280680602 AS sv_0, 0.0180773238611 AS sv_1, 0.633597305054 AS sv_2, 0.732503707094 AS sv_3, 0.474796529259 AS sv_4, 0.323068228232 AS sv_5, 0.50841283305 AS sv_6, 0.588716109217 AS sv_7, 0.439613846626 AS sv_8, 0.965183739428 AS sv_9 FROM DUAL UNION ALL SELECT 56 AS sv_idx, 1.0 AS dual_coeff, 0.324484169067 AS sv_0, 0.823163293259 AS sv_1, 0.099198927235 AS sv_2, 0.501197315107 AS sv_3, 0.858703278205 AS sv_4, 0.0316808170119 AS sv_5, 0.932092047765 AS sv_6, 0.07485402659 AS sv_7, 0.530361335515 AS sv_8, 0.98509142525 AS sv_9 FROM DUAL UNION ALL SELECT 57 AS sv_idx, -1.0 AS dual_coeff, 0.312627572762 AS sv_0, 0.536080872851 AS sv_1, 0.784949383323 AS sv_2, 0.0372529733987 AS sv_3, 0.622027468998 AS sv_4, 0.215860782097 AS sv_5, 0.149543511914 AS sv_6, 0.802668042307 AS sv_7, 0.824631418579 AS sv_8, 0.659795232936 AS sv_9 FROM DUAL UNION ALL SELECT 58 AS sv_idx, 1.0 AS dual_coeff, 0.819716857551 AS sv_0, 0.459934602952 AS sv_1, 0.022329347863 AS sv_2, 0.200411418446 AS sv_3, 0.48406952321 AS sv_4, 0.92147923852 AS sv_5, 0.127069258993 AS sv_6, 0.326189897695 AS sv_7, 0.429372501037 AS sv_8, 0.918741232792 AS sv_9 FROM DUAL UNION ALL SELECT 59 AS sv_idx, -1.0 AS dual_coeff, 0.283332047703 AS sv_0, 0.357382681409 AS sv_1, 0.749466915382 AS sv_2, 0.0780824636992 AS sv_3, 0.128229581439 AS sv_4, 0.262937501938 AS sv_5, 0.91712321595 AS sv_6, 0.194234941943 AS sv_7, 0.678726462585 AS sv_8, 0.233274355152 AS sv_9 FROM DUAL UNION ALL SELECT 60 AS sv_idx, -1.0 AS dual_coeff, 0.583655635808 AS sv_0, 0.152555822387 AS sv_1, 0.616773007275 AS sv_2, 0.424770976323 AS sv_3, 0.191762352401 AS sv_4, 0.747558070149 AS sv_5, 0.306908524691 AS sv_6, 0.69396181671 AS sv_7, 0.261732730585 AS sv_8, 0.486687827376 AS sv_9 FROM DUAL UNION ALL SELECT 61 AS sv_idx, 1.0 AS dual_coeff, 0.79038869077 AS sv_0, 0.65859072771 AS sv_1, 0.757235615373 AS sv_2, 0.52268648412 AS sv_3, 0.344159530895 AS sv_4, 0.568995846105 AS sv_5, 0.402785671379 AS sv_6, 0.147250507474 AS sv_7, 0.996685324158 AS sv_8, 0.0656986931674 AS sv_9 FROM DUAL UNION ALL SELECT 62 AS sv_idx, -1.0 AS dual_coeff, 0.00118360992162 AS sv_0, 0.265807754298 AS sv_1, 0.995587810765 AS sv_2, 0.737954291312 AS sv_3, 0.349922515668 AS sv_4, 0.340256176162 AS sv_5, 0.613193649595 AS sv_6, 0.998625045751 AS sv_7, 0.338578684927 AS sv_8, 0.562558381045 AS sv_9 FROM DUAL UNION ALL SELECT 63 AS sv_idx, 1.0 AS dual_coeff, 0.659886522021 AS sv_0, 0.0281453035905 AS sv_1, 0.91904691294 AS sv_2, 0.978951060884 AS sv_3, 0.92181134313 AS sv_4, 0.700552736268 AS sv_5, 0.901079570538 AS sv_6, 0.288222945612 AS sv_7, 0.702518266509 AS sv_8, 0.571698734495 AS sv_9 FROM DUAL UNION ALL SELECT 64 AS sv_idx, -1.0 AS dual_coeff, 0.601011123454 AS sv_0, 0.310534829174 AS sv_1, 0.21225847148 AS sv_2, 0.711649323285 AS sv_3, 0.323415451132 AS sv_4, 0.664776157267 AS sv_5, 0.197094496523 AS sv_6, 0.711598809723 AS sv_7, 0.29387625252 AS sv_8, 0.643290497649 AS sv_9 FROM DUAL UNION ALL SELECT 65 AS sv_idx, 1.0 AS dual_coeff, 0.392242037137 AS sv_0, 0.829058007456 AS sv_1, 0.979651504501 AS sv_2, 0.993827839877 AS sv_3, 0.43578536958 AS sv_4, 0.941650711845 AS sv_5, 0.415108115783 AS sv_6, 0.20852135693 AS sv_7, 0.265376491781 AS sv_8, 0.636722556823 AS sv_9 FROM DUAL UNION ALL SELECT 66 AS sv_idx, -1.0 AS dual_coeff, 0.999666236358 AS sv_0, 0.0513021648949 AS sv_1, 0.790207220272 AS sv_2, 0.080229599416 AS sv_3, 0.430960817903 AS sv_4, 0.49407368003 AS sv_5, 0.315033592213 AS sv_6, 0.563729665074 AS sv_7, 0.605886069664 AS sv_8, 0.822818402749 AS sv_9 FROM DUAL UNION ALL SELECT 67 AS sv_idx, -1.0 AS dual_coeff, 0.167903280202 AS sv_0, 0.367128839413 AS sv_1, 0.355817820042 AS sv_2, 0.191256153969 AS sv_3, 0.521731744871 AS sv_4, 0.487361421719 AS sv_5, 0.725339656968 AS sv_6, 0.171321364983 AS sv_7, 0.570966693622 AS sv_8, 0.597386715974 AS sv_9 FROM DUAL UNION ALL SELECT 68 AS sv_idx, -1.0 AS dual_coeff, 0.745644601206 AS sv_0, 0.144703893613 AS sv_1, 0.318272766825 AS sv_2, 0.0245322538632 AS sv_3, 0.212460350655 AS sv_4, 0.453222437427 AS sv_5, 0.393026989286 AS sv_6, 0.575963692337 AS sv_7, 0.239647328944 AS sv_8, 0.832594682834 AS sv_9 FROM DUAL UNION ALL SELECT 69 AS sv_idx, -1.0 AS dual_coeff, 0.804646338538 AS sv_0, 0.691783360732 AS sv_1, 0.140385979532 AS sv_2, 0.0970072115845 AS sv_3, 0.461581173116 AS sv_4, 0.604450409219 AS sv_5, 0.263020943261 AS sv_6, 0.925840437277 AS sv_7, 0.742722839096 AS sv_8, 0.395529853303 AS sv_9 FROM DUAL UNION ALL SELECT 70 AS sv_idx, 1.0 AS dual_coeff, 0.942340510891 AS sv_0, 0.556889884782 AS sv_1, 0.586557827998 AS sv_2, 0.730526622738 AS sv_3, 0.136931779443 AS sv_4, 0.0657699817927 AS sv_5, 0.0493972197134 AS sv_6, 0.838484209108 AS sv_7, 0.399805137049 AS sv_8, 0.93399670724 AS sv_9 FROM DUAL UNION ALL SELECT 71 AS sv_idx, -1.0 AS dual_coeff, 0.183101234382 AS sv_0, 0.0134096666286 AS sv_1, 0.0957321151681 AS sv_2, 0.566554537202 AS sv_3, 0.619711034028 AS sv_4, 0.732229650014 AS sv_5, 0.0984420911116 AS sv_6, 0.928169126516 AS sv_7, 0.707534609624 AS sv_8, 0.49869574965 AS sv_9 FROM DUAL UNION ALL SELECT 72 AS sv_idx, 1.0 AS dual_coeff, 0.472698734739 AS sv_0, 0.798121831977 AS sv_1, 0.849910455253 AS sv_2, 0.475194154583 AS sv_3, 0.210400238268 AS sv_4, 0.633063749198 AS sv_5, 0.757474439692 AS sv_6, 0.559144753543 AS sv_7, 0.323754392937 AS sv_8, 0.861716539172 AS sv_9 FROM DUAL UNION ALL SELECT 73 AS sv_idx, -1.0 AS dual_coeff, 0.434533728246 AS sv_0, 0.389059569409 AS sv_1, 0.836519225467 AS sv_2, 0.0622764187554 AS sv_3, 0.356482640171 AS sv_4, 0.00549606744343 AS sv_5, 0.922742425231 AS sv_6, 0.347764494625 AS sv_7, 0.478642743212 AS sv_8, 0.983257687809 AS sv_9 FROM DUAL UNION ALL SELECT 74 AS sv_idx, 1.0 AS dual_coeff, 0.689387461247 AS sv_0, 0.275820017945 AS sv_1, 0.239951225246 AS sv_2, 0.678687872651 AS sv_3, 0.913604563677 AS sv_4, 0.108637475561 AS sv_5, 0.559302498027 AS sv_6, 0.26652270013 AS sv_7, 0.283320977569 AS sv_8, 0.502711934309 AS sv_9 FROM DUAL UNION ALL SELECT 75 AS sv_idx, 1.0 AS dual_coeff, 0.751701704571 AS sv_0, 0.480602498546 AS sv_1, 0.679838010952 AS sv_2, 0.909789598624 AS sv_3, 0.378396526121 AS sv_4, 0.93650939511 AS sv_5, 0.49516054411 AS sv_6, 0.836845941103 AS sv_7, 0.539856116139 AS sv_8, 0.543654409604 AS sv_9 FROM DUAL UNION ALL SELECT 76 AS sv_idx, 1.0 AS dual_coeff, 0.663518741107 AS sv_0, 0.285365644127 AS sv_1, 0.973455172149 AS sv_2, 0.690007285006 AS sv_3, 0.0664127482175 AS sv_4, 0.513370101215 AS sv_5, 0.637882755344 AS sv_6, 0.034849662609 AS sv_7, 0.160669506721 AS sv_8, 0.891224379662 AS sv_9 FROM DUAL UNION ALL SELECT 77 AS sv_idx, 1.0 AS dual_coeff, 0.962582268187 AS sv_0, 0.48597393169 AS sv_1, 0.323005569469 AS sv_2, 0.517469664859 AS sv_3, 0.440918848939 AS sv_4, 0.638350260392 AS sv_5, 0.739183372517 AS sv_6, 0.0416271520072 AS sv_7, 0.388417426651 AS sv_8, 0.0648900249942 AS sv_9 FROM DUAL UNION ALL SELECT 78 AS sv_idx, 1.0 AS dual_coeff, 0.544238355061 AS sv_0, 0.382347176613 AS sv_1, 0.698521481152 AS sv_2, 0.926442345136 AS sv_3, 0.429675654451 AS sv_4, 0.646414075506 AS sv_5, 0.192240455465 AS sv_6, 0.0245357025279 AS sv_7, 0.815346830083 AS sv_8, 0.603088208551 AS sv_9 FROM DUAL) "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 14.4780357598 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * tanh(0.1 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9) + 0.0) AS dot_prod1 
FROM freidman1 "ADS", "SV_data") full_join_data_sv GROUP BY full_join_data_sv."KEY") t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp