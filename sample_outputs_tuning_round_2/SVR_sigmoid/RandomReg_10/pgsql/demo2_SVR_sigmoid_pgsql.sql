-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, -1.78270963186 AS sv_0, 0.55990179054 AS sv_1, 0.133113777705 AS sv_2, 0.177105785424 AS sv_3, -1.43843573805 AS sv_4, 0.558074553747 AS sv_5, 0.330186392376 AS sv_6, 1.00740274838 AS sv_7, -0.735232683579 AS sv_8, 0.530172691223 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, 0.662329887048 AS sv_0, -0.144661843645 AS sv_1, -0.423337833396 AS sv_2, -1.2495795813 AS sv_3, -0.548574995285 AS sv_4, -1.13719156623 AS sv_5, 0.016631584362 AS sv_6, -0.0323406977307 AS sv_7, -0.080428118335 AS sv_8, 0.639202058719 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, 0.869465855356 AS sv_0, 0.322316009179 AS sv_1, -0.437992766776 AS sv_2, -0.147316196319 AS sv_3, -0.403988923631 AS sv_4, 1.8922719906 AS sv_5, 0.0763498734355 AS sv_6, -0.832399852781 AS sv_7, -0.0994863077246 AS sv_8, 0.815531296929 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 0.444389298343 AS sv_0, -0.608737487686 AS sv_1, -1.73689384916 AS sv_2, 1.47046708435 AS sv_3, -1.46979136889 AS sv_4, 0.451722286065 AS sv_5, -0.33760275685 AS sv_6, -0.0893603842356 AS sv_7, -0.248292201611 AS sv_8, 0.613841372048 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.571132244076 AS sv_0, -0.0149809964929 AS sv_1, -1.52325129839 AS sv_2, 1.89360633788 AS sv_3, 0.445975985199 AS sv_4, -1.12140279161 AS sv_5, -0.338919141996 AS sv_6, -0.0759300791026 AS sv_7, -0.150607437429 AS sv_8, 0.917293785672 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, -0.291573587963 AS sv_0, 1.06198456591 AS sv_1, 1.73279837804 AS sv_2, 0.552204344225 AS sv_3, 0.471519880982 AS sv_4, 0.613472813994 AS sv_5, 0.224186959113 AS sv_6, -0.575829080948 AS sv_7, 0.0384667455808 AS sv_8, -0.113522480372 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 2.43423552353 AS sv_0, -0.147525969103 AS sv_1, 0.318994396389 AS sv_2, -3.99128851799 AS sv_3, -2.12779475251 AS sv_4, 2.04669878675 AS sv_5, -1.29393614355 AS sv_6, -2.06329516283 AS sv_7, -1.65330000804 AS sv_8, 0.0155955855361 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, 0.631103548904 AS sv_0, 0.523437827631 AS sv_1, 0.387484906517 AS sv_2, -1.83168946907 AS sv_3, -2.8012908338 AS sv_4, 1.18133819687 AS sv_5, -0.240462666341 AS sv_6, -1.20663667967 AS sv_7, -0.402538096492 AS sv_8, -2.40858967108 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 0.680038944868 AS sv_0, -0.940502922271 AS sv_1, 1.9966011708 AS sv_2, 1.97375742628 AS sv_3, 0.150074267915 AS sv_4, -0.524377780866 AS sv_5, -0.111256838597 AS sv_6, 0.00280956921927 AS sv_7, 0.0210229265268 AS sv_8, 0.335889091136 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, -0.329284294288 AS sv_0, -0.387010233854 AS sv_1, 0.866960973762 AS sv_2, -0.847973753464 AS sv_3, 0.85872940674 AS sv_4, 1.38255247612 AS sv_5, 0.122401886536 AS sv_6, -0.168261988038 AS sv_7, -1.4901396844 AS sv_8, -0.197535430353 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, -1.41131305713 AS sv_0, 0.522538662675 AS sv_1, -0.0327725302032 AS sv_2, -1.27100776692 AS sv_3, 0.999564916 AS sv_4, 0.458287938766 AS sv_5, 0.64300723933 AS sv_6, -0.495714401806 AS sv_7, 0.766843775775 AS sv_8, -0.661422043288 AS sv_9 UNION ALL SELECT 11 AS sv_idx, 1.0 AS dual_coeff, -0.793230945942 AS sv_0, -0.459333737324 AS sv_1, 0.59467719467 AS sv_2, 0.394114258251 AS sv_3, 0.183518646385 AS sv_4, 1.22591268301 AS sv_5, -0.230833012815 AS sv_6, -0.611031904075 AS sv_7, -0.0383031639909 AS sv_8, 0.738366174161 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, 0.998271258153 AS sv_0, 0.235875352347 AS sv_1, 1.66875350111 AS sv_2, 0.140293159221 AS sv_3, -0.349570322454 AS sv_4, 0.434472004966 AS sv_5, -0.118519704321 AS sv_6, 0.0854563955714 AS sv_7, -2.30457946573 AS sv_8, 1.8736810276 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 1.48848590094 AS sv_0, -1.43510763016 AS sv_1, 0.0551102574515 AS sv_2, -0.43381265756 AS sv_3, -1.35727206132 AS sv_4, -1.59169362978 AS sv_5, 0.482540549875 AS sv_6, -0.0942167224901 AS sv_7, -0.00809257563025 AS sv_8, -0.714793671651 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, 0.391610882673 AS sv_0, 0.731626121135 AS sv_1, -0.128750224881 AS sv_2, 0.495571912053 AS sv_3, 1.4684153293 AS sv_4, 0.258880161909 AS sv_5, -0.182171194716 AS sv_6, -0.060347655828 AS sv_7, -0.347433359801 AS sv_8, -1.28174210553 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 2.1582411153 AS sv_0, 0.267650781167 AS sv_1, 0.95190935763 AS sv_2, 1.97045634856 AS sv_3, -0.0180543783647 AS sv_4, -1.24947422199 AS sv_5, 1.25665864296 AS sv_6, 0.609885004871 AS sv_7, -0.168386770204 AS sv_8, 0.604443317788 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, -0.353081763358 AS sv_0, 1.0897810278 AS sv_1, -2.09914766934 AS sv_2, -0.140422073447 AS sv_3, -1.40315836775 AS sv_4, 0.394581376049 AS sv_5, 0.0384581281186 AS sv_6, 0.930973898163 AS sv_7, 1.13021350095 AS sv_8, 1.68037140502 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, -1.9215804095 AS sv_0, -0.655073672559 AS sv_1, 0.117247168828 AS sv_2, -0.45810323508 AS sv_3, 1.00840447631 AS sv_4, -1.04042590641 AS sv_5, -0.401341711198 AS sv_6, 0.296632938854 AS sv_7, -1.24954092088 AS sv_8, 1.18993253899 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, -0.770670713652 AS sv_0, -0.225342647116 AS sv_1, 0.737986975495 AS sv_2, -0.214723485897 AS sv_3, 0.158535232818 AS sv_4, -0.24873961548 AS sv_5, 0.321429771525 AS sv_6, 1.25055214745 AS sv_7, -0.0711711333502 AS sv_8, 0.00819534583763 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, -1.6226254383 AS sv_0, 0.805366893217 AS sv_1, -0.934324170431 AS sv_2, 0.865083633858 AS sv_3, -0.977958419351 AS sv_4, 0.687245526977 AS sv_5, -0.131874231037 AS sv_6, -0.485988492097 AS sv_7, 0.231390795551 AS sv_8, 0.731997715262 AS sv_9 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 1.57578733904 AS sv_0, 0.142134927792 AS sv_1, -0.152970072478 AS sv_2, 0.591674522596 AS sv_3, 0.670716375202 AS sv_4, 0.66259392754 AS sv_5, 0.0862615482121 AS sv_6, 0.81165678392 AS sv_7, -0.0258720829923 AS sv_8, 0.710438044049 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -1.0 AS dual_coeff, -0.181917511801 AS sv_0, -1.83205461253 AS sv_1, -1.55932988679 AS sv_2, -1.01331969796 AS sv_3, -1.13879115348 AS sv_4, -0.750618179944 AS sv_5, -0.72406294563 AS sv_6, -0.566261169936 AS sv_7, 0.252738235908 AS sv_8, 0.308517583153 AS sv_9 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, 0.0508222402528 AS sv_0, 1.34347440214 AS sv_1, 1.18624649138 AS sv_2, -0.662739021203 AS sv_3, -0.387893863234 AS sv_4, 0.11816448422 AS sv_5, 0.40160082937 AS sv_6, -0.179900585292 AS sv_7, -0.699049922531 AS sv_8, 0.232053861011 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, -0.604295155104 AS sv_0, -0.480178113991 AS sv_1, -0.754282569202 AS sv_2, 0.433591560638 AS sv_3, 1.20932143725 AS sv_4, -1.75311962365 AS sv_5, 0.515610598609 AS sv_6, 0.112949399265 AS sv_7, 0.135780203515 AS sv_8, -0.760485454596 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, 0.600811693704 AS sv_0, 0.803767944068 AS sv_1, 1.69988937533 AS sv_2, -0.0867360316949 AS sv_3, -1.09506742724 AS sv_4, 0.501435670223 AS sv_5, -1.72067408839 AS sv_6, -0.814806066456 AS sv_7, 0.493171425182 AS sv_8, 0.368607945532 AS sv_9 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 1.7387411776 AS sv_0, 0.240578123705 AS sv_1, -1.07465397222 AS sv_2, 0.541331548589 AS sv_3, -0.804450905932 AS sv_4, -0.429966669366 AS sv_5, -0.498003513603 AS sv_6, 0.402987733114 AS sv_7, -1.01269671667 AS sv_8, 0.630789186248 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.912248151689 AS sv_0, 0.540747310632 AS sv_1, 1.01632313587 AS sv_2, -0.0819673704161 AS sv_3, 1.81040240277 AS sv_4, -1.42157623915 AS sv_5, -0.977391628507 AS sv_6, 0.838281766139 AS sv_7, 1.75508297598 AS sv_8, 0.636305156382 AS sv_9 UNION ALL SELECT 27 AS sv_idx, -1.0 AS dual_coeff, 0.363416926384 AS sv_0, 3.07062049063 AS sv_1, -0.313472376795 AS sv_2, -0.0160609728799 AS sv_3, 0.615167979408 AS sv_4, -0.626787862007 AS sv_5, -0.221530659442 AS sv_6, 0.331992174864 AS sv_7, -1.18370222252 AS sv_8, -2.00592504718 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 1.04024932502 AS sv_0, -1.42967395611 AS sv_1, 0.793939413505 AS sv_2, 1.39845162228 AS sv_3, 1.49563473183 AS sv_4, -0.36797210288 AS sv_5, 0.401208611313 AS sv_6, 1.9048968112 AS sv_7, 0.0251231243597 AS sv_8, -1.31438707378 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, 1.18814586239 AS sv_0, 0.641579886006 AS sv_1, -0.260498566987 AS sv_2, -0.248179493237 AS sv_3, 0.0835615907154 AS sv_4, 1.58342267689 AS sv_5, 0.761397272856 AS sv_6, 1.01265185034 AS sv_7, 0.664799705649 AS sv_8, 1.27064195136 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, 0.393185643878 AS sv_0, -0.162636782023 AS sv_1, 2.47003388358 AS sv_2, 0.762904245445 AS sv_3, 0.618182835587 AS sv_4, -0.360925194748 AS sv_5, -0.483706842759 AS sv_6, -0.634192993021 AS sv_7, -0.152065143976 AS sv_8, 1.76926394391 AS sv_9 UNION ALL SELECT 31 AS sv_idx, -1.0 AS dual_coeff, -1.33423206286 AS sv_0, -0.510181788727 AS sv_1, -0.42514976902 AS sv_2, 0.81656434722 AS sv_3, -0.847111358535 AS sv_4, -0.950826456558 AS sv_5, 0.440601609308 AS sv_6, 0.183767269288 AS sv_7, 1.37185809903 AS sv_8, -0.229847976803 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, -1.82842776106 AS sv_0, -0.163263561769 AS sv_1, -0.977305561843 AS sv_2, -0.689264077179 AS sv_3, -0.496382122563 AS sv_4, 1.0572822092 AS sv_5, -1.57783253845 AS sv_6, 0.533460616741 AS sv_7, 1.7578932956 AS sv_8, 2.18295136385 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, -0.37302182553 AS sv_0, -0.952562647942 AS sv_1, -0.134430871911 AS sv_2, -0.800363753095 AS sv_3, -0.0311569635022 AS sv_4, 0.797023112186 AS sv_5, 0.824332719244 AS sv_6, -1.07936455516 AS sv_7, 1.31542852304 AS sv_8, -0.164843250578 AS sv_9 UNION ALL SELECT 34 AS sv_idx, -1.0 AS dual_coeff, -0.892904023772 AS sv_0, -0.648140856611 AS sv_1, -0.875180517156 AS sv_2, 1.24001560892 AS sv_3, -1.03954780214 AS sv_4, 1.05019784915 AS sv_5, 2.62576901464 AS sv_6, 0.352773170711 AS sv_7, -0.908520471652 AS sv_8, 0.913876855607 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, 0.279882850982 AS sv_0, 0.677991932236 AS sv_1, 1.46702086993 AS sv_2, -0.155754052967 AS sv_3, -0.846273257502 AS sv_4, -0.63141930137 AS sv_5, 2.30078831728 AS sv_6, -0.740270952938 AS sv_7, 0.970141400173 AS sv_8, 0.61073104966 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, 1.52353572216 AS sv_0, 0.738275982301 AS sv_1, -1.47312680416 AS sv_2, -0.460892931809 AS sv_3, -0.205507583043 AS sv_4, 1.12402613081 AS sv_5, -0.136942213468 AS sv_6, 1.43219523895 AS sv_7, 1.87537250289 AS sv_8, -0.0117857703239 AS sv_9 UNION ALL SELECT 37 AS sv_idx, -1.0 AS dual_coeff, 1.16461521664 AS sv_0, -1.24733745873 AS sv_1, 0.468919970763 AS sv_2, -0.439461700139 AS sv_3, -1.36312216546 AS sv_4, 0.522071829574 AS sv_5, 0.947598012522 AS sv_6, 1.1639267115 AS sv_7, -0.901723878925 AS sv_8, 0.629911630159 AS sv_9 UNION ALL SELECT 38 AS sv_idx, -1.0 AS dual_coeff, 0.934577425472 AS sv_0, -1.90017759866 AS sv_1, 0.179338657105 AS sv_2, 0.187590178323 AS sv_3, -0.538763194408 AS sv_4, 1.28714656735 AS sv_5, -2.56650626575 AS sv_6, 0.623238584932 AS sv_7, -0.248947902249 AS sv_8, -0.144908237926 AS sv_9 UNION ALL SELECT 39 AS sv_idx, -1.0 AS dual_coeff, -1.105084596 AS sv_0, -0.621977585679 AS sv_1, 0.657890511008 AS sv_2, 0.197320899938 AS sv_3, -2.65043480788 AS sv_4, -0.725395787112 AS sv_5, 0.0593469825519 AS sv_6, -0.812210466937 AS sv_7, -0.0110964554525 AS sv_8, -0.790660585309 AS sv_9 UNION ALL SELECT 40 AS sv_idx, -1.0 AS dual_coeff, -0.161277379853 AS sv_0, -1.67641096187 AS sv_1, -0.177319559361 AS sv_2, -0.142038462947 AS sv_3, -1.05687573217 AS sv_4, 0.038443566674 AS sv_5, 0.819272494496 AS sv_6, -1.76213456357 AS sv_7, -0.433903656167 AS sv_8, 1.0294302056 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, -0.00307730906827 AS sv_0, -0.612066500568 AS sv_1, 0.548504911133 AS sv_2, 0.755448892846 AS sv_3, -2.06933020214 AS sv_4, 0.749179211488 AS sv_5, 0.0942146697818 AS sv_6, -0.830021413428 AS sv_7, 1.13490979156 AS sv_8, -1.11848880137 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 1.0 AS dual_coeff, -0.152102665538 AS sv_0, -0.16467186566 AS sv_1, 0.504057816388 AS sv_2, 0.680639781254 AS sv_3, 1.04157887018 AS sv_4, -0.506287793924 AS sv_5, -0.811645161029 AS sv_6, 1.18278974409 AS sv_7, 1.31631507832 AS sv_8, 0.556768733026 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, 1.15213131287 AS sv_0, 1.61943449037 AS sv_1, -0.097003322825 AS sv_2, -0.377293122829 AS sv_3, -0.296925593567 AS sv_4, 0.667162394249 AS sv_5, -1.07741681638 AS sv_6, 0.142823437554 AS sv_7, -1.89724891287 AS sv_8, 0.839976257564 AS sv_9 UNION ALL SELECT 44 AS sv_idx, -1.0 AS dual_coeff, -1.04952243761 AS sv_0, -2.36475740201 AS sv_1, 0.938013690496 AS sv_2, -2.04011380317 AS sv_3, -0.26852046677 AS sv_4, 1.7226040723 AS sv_5, -0.0803256381638 AS sv_6, 0.67119471906 AS sv_7, -0.163720092558 AS sv_8, 0.410710078551 AS sv_9 UNION ALL SELECT 45 AS sv_idx, -1.0 AS dual_coeff, -0.715738707873 AS sv_0, -0.752813500912 AS sv_1, -0.705191332663 AS sv_2, -1.10826753882 AS sv_3, 0.990548763628 AS sv_4, 1.91725603966 AS sv_5, 1.12718715901 AS sv_6, -1.90797760358 AS sv_7, -0.0503168336682 AS sv_8, -0.309549563151 AS sv_9 UNION ALL SELECT 46 AS sv_idx, -1.0 AS dual_coeff, 0.659408824022 AS sv_0, -1.11743481761 AS sv_1, 0.0291008754611 AS sv_2, 0.995938123568 AS sv_3, 1.05037970851 AS sv_4, 0.9939535013 AS sv_5, -2.78442379845 AS sv_6, -0.823444079071 AS sv_7, -2.59469965922 AS sv_8, 1.37943795327 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, 0.67777035123 AS sv_0, -0.0715807913743 AS sv_1, 0.331544756544 AS sv_2, 0.864299185905 AS sv_3, -0.0128151157861 AS sv_4, -0.00603462961396 AS sv_5, 1.54487387358 AS sv_6, 1.76067755403 AS sv_7, 0.380453511415 AS sv_8, -0.557575621734 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 1.0 AS dual_coeff, 0.398000944613 AS sv_0, 0.827120368769 AS sv_1, 0.29504140222 AS sv_2, 1.21748489005 AS sv_3, -0.918191245064 AS sv_4, 0.204480334071 AS sv_5, 1.91165834867 AS sv_6, -2.19974378642 AS sv_7, 0.208561452225 AS sv_8, 0.448009123624 AS sv_9 UNION ALL SELECT 49 AS sv_idx, -1.0 AS dual_coeff, 0.737556975241 AS sv_0, -1.1895706899 AS sv_1, -0.527303437893 AS sv_2, -1.13514338351 AS sv_3, -0.558091893026 AS sv_4, -0.707345853262 AS sv_5, -0.213534076119 AS sv_6, 0.00557270365587 AS sv_7, -1.74134014499 AS sv_8, -0.485001427732 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 1.0 AS dual_coeff, -1.19556018293 AS sv_0, -0.54386338886 AS sv_1, 1.39284894774 AS sv_2, 0.297259081318 AS sv_3, -0.0990408591017 AS sv_4, 1.79819193603 AS sv_5, -0.298285664132 AS sv_6, -0.726011587436 AS sv_7, -0.0879827869701 AS sv_8, 1.47460983187 AS sv_9 UNION ALL SELECT 51 AS sv_idx, -1.0 AS dual_coeff, 0.768512307563 AS sv_0, -1.09535990016 AS sv_1, 0.420748387897 AS sv_2, -1.11843451377 AS sv_3, 0.942138434782 AS sv_4, -1.65651027865 AS sv_5, -1.11521943434 AS sv_6, 1.10029713039 AS sv_7, -1.71738760908 AS sv_8, -0.0959517451552 AS sv_9 UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, 1.92812347239 AS sv_0, -0.524037277622 AS sv_1, 2.09585564888 AS sv_2, 1.40504324806 AS sv_3, 0.53868348079 AS sv_4, 0.912826793785 AS sv_5, -0.785719449274 AS sv_6, -1.12214480738 AS sv_7, 2.98959634704 AS sv_8, -1.73866607044 AS sv_9 UNION ALL SELECT 53 AS sv_idx, 1.0 AS dual_coeff, 1.82075305115 AS sv_0, 0.843682895765 AS sv_1, 0.603033758739 AS sv_2, 1.05817101321 AS sv_3, -0.967578463348 AS sv_4, 0.236772429086 AS sv_5, 1.07008820579 AS sv_6, -1.42858179461 AS sv_7, 1.63597347516 AS sv_8, -0.161044904273 AS sv_9 UNION ALL SELECT 54 AS sv_idx, 1.0 AS dual_coeff, -1.04479987426 AS sv_0, 1.11937501881 AS sv_1, -0.529061883193 AS sv_2, -1.10875801008 AS sv_3, 1.24083468363 AS sv_4, 0.974119426158 AS sv_5, 0.688265984116 AS sv_6, -1.28618767489 AS sv_7, -0.120098900743 AS sv_8, -0.962402613819 AS sv_9 UNION ALL SELECT 55 AS sv_idx, -1.0 AS dual_coeff, -1.22582821946 AS sv_0, -0.395030534552 AS sv_1, -0.755690086657 AS sv_2, 1.90277157129 AS sv_3, 0.271306899599 AS sv_4, 0.606925146687 AS sv_5, -1.12680994773 AS sv_6, -1.3563483158 AS sv_7, -1.35011598017 AS sv_8, 0.786755386179 AS sv_9 UNION ALL SELECT 56 AS sv_idx, -1.0 AS dual_coeff, -0.813018270881 AS sv_0, -0.767307278643 AS sv_1, 0.64939396665 AS sv_2, -0.431508021054 AS sv_3, -0.871237880031 AS sv_4, -0.999365435139 AS sv_5, -0.323839655027 AS sv_6, 1.25318414298 AS sv_7, 0.475010510788 AS sv_8, 0.393610122483 AS sv_9 UNION ALL SELECT 57 AS sv_idx, -1.0 AS dual_coeff, 0.443471740876 AS sv_0, -0.963038774874 AS sv_1, 0.0369869470433 AS sv_2, 1.54542706932 AS sv_3, 1.55475445602 AS sv_4, -0.266226001871 AS sv_5, 0.561651563113 AS sv_6, 0.432931082919 AS sv_7, -1.6702920432 AS sv_8, 0.120620762405 AS sv_9 UNION ALL SELECT 58 AS sv_idx, -1.0 AS dual_coeff, 0.619734798632 AS sv_0, 0.135205820221 AS sv_1, 0.229160369705 AS sv_2, 0.190194546772 AS sv_3, -0.79090579833 AS sv_4, 0.753453599565 AS sv_5, 1.2355805042 AS sv_6, 0.304658572226 AS sv_7, -2.03809977134 AS sv_8, 0.574590187374 AS sv_9 UNION ALL SELECT 59 AS sv_idx, 1.0 AS dual_coeff, 0.349415874784 AS sv_0, -1.1850456652 AS sv_1, 0.392838835583 AS sv_2, 1.13525493873 AS sv_3, -0.478655592406 AS sv_4, 1.09788259838 AS sv_5, 0.562281550361 AS sv_6, 0.663539284577 AS sv_7, -1.75162534339 AS sv_8, 0.956740557364 AS sv_9 UNION ALL SELECT 60 AS sv_idx, 1.0 AS dual_coeff, -0.919723457693 AS sv_0, -0.954151101641 AS sv_1, 0.568629903179 AS sv_2, 1.42187545322 AS sv_3, 0.6575038895 AS sv_4, 0.319513154022 AS sv_5, 1.33108697961 AS sv_6, -0.342192173998 AS sv_7, -0.501211309301 AS sv_8, -0.239296472354 AS sv_9 UNION ALL SELECT 61 AS sv_idx, -1.0 AS dual_coeff, 0.245949906297 AS sv_0, -1.82864072646 AS sv_1, -1.24361469697 AS sv_2, 0.141700185016 AS sv_3, 1.99053157819 AS sv_4, -1.32371466619 AS sv_5, -2.58439291865 AS sv_6, 0.0228870957098 AS sv_7, 0.486896227314 AS sv_8, 1.04834858567 AS sv_9 UNION ALL SELECT 62 AS sv_idx, 1.0 AS dual_coeff, -1.31571153839 AS sv_0, -0.254384200258 AS sv_1, 0.36596290608 AS sv_2, 1.83024332766 AS sv_3, 0.642964286323 AS sv_4, 0.661081448496 AS sv_5, 0.061297026617 AS sv_6, 0.676180406825 AS sv_7, 1.49645665358 AS sv_8, 0.732394206242 AS sv_9 UNION ALL SELECT 63 AS sv_idx, -1.0 AS dual_coeff, 0.362141924693 AS sv_0, -0.408309736748 AS sv_1, 1.02049819281 AS sv_2, -0.419320738817 AS sv_3, 0.547080062802 AS sv_4, 0.502325828919 AS sv_5, -1.27386810897 AS sv_6, 0.837991864578 AS sv_7, -1.92755051513 AS sv_8, 0.371173635711 AS sv_9 UNION ALL SELECT 64 AS sv_idx, 1.0 AS dual_coeff, 2.81077022815 AS sv_0, 0.247959867436 AS sv_1, 0.617244297737 AS sv_2, -0.234873636352 AS sv_3, 1.99614765177 AS sv_4, 0.55280516888 AS sv_5, 0.869311275668 AS sv_6, 2.61481887855 AS sv_7, -0.0650419737088 AS sv_8, 0.50104977481 AS sv_9 UNION ALL SELECT 65 AS sv_idx, 1.0 AS dual_coeff, 0.560360095369 AS sv_0, 1.45637754316 AS sv_1, 1.55691959643 AS sv_2, -1.21956694502 AS sv_3, 1.18769013153 AS sv_4, 0.35764181457 AS sv_5, -0.0841977064807 AS sv_6, -1.27014217227 AS sv_7, -0.130627493152 AS sv_8, 1.42641402119 AS sv_9 UNION ALL SELECT 66 AS sv_idx, -1.0 AS dual_coeff, -0.502667491442 AS sv_0, 0.143574433901 AS sv_1, -0.872761441197 AS sv_2, -0.340137344639 AS sv_3, 0.740963770036 AS sv_4, -0.0190923417267 AS sv_5, -1.10579058363 AS sv_6, -0.242824068812 AS sv_7, -0.597973382692 AS sv_8, -0.38130269865 AS sv_9 UNION ALL SELECT 67 AS sv_idx, -1.0 AS dual_coeff, -0.530321200543 AS sv_0, -0.36538941592 AS sv_1, -0.961566289831 AS sv_2, -1.8130818762 AS sv_3, -0.536216408534 AS sv_4, -0.810038703116 AS sv_5, -0.45952368718 AS sv_6, -0.530327152648 AS sv_7, -1.27799441261 AS sv_8, 1.43629280498 AS sv_9 UNION ALL SELECT 68 AS sv_idx, -1.0 AS dual_coeff, -1.11827783341 AS sv_0, 0.8644006299 AS sv_1, 0.457768612364 AS sv_2, -1.81996240703 AS sv_3, 0.330473704469 AS sv_4, 0.314299332363 AS sv_5, -0.50473144786 AS sv_6, -0.016853103608 AS sv_7, -1.51866749776 AS sv_8, -1.04560882253 AS sv_9 UNION ALL SELECT 69 AS sv_idx, 1.0 AS dual_coeff, 1.02259654047 AS sv_0, 0.110983645335 AS sv_1, 0.188868862471 AS sv_2, 1.01773239693 AS sv_3, -0.757307886485 AS sv_4, 1.25338808351 AS sv_5, 1.93780982136 AS sv_6, 1.4639499794 AS sv_7, 1.90096459652 AS sv_8, -1.36373833867 AS sv_9 UNION ALL SELECT 70 AS sv_idx, 1.0 AS dual_coeff, -0.810083679079 AS sv_0, 2.13493248567 AS sv_1, 1.26775902176 AS sv_2, 0.595753055655 AS sv_3, 0.300120499181 AS sv_4, 0.522312689166 AS sv_5, -2.31212568422 AS sv_6, 0.877453233191 AS sv_7, -0.379258263066 AS sv_8, 0.303836228551 AS sv_9 UNION ALL SELECT 71 AS sv_idx, 1.0 AS dual_coeff, 0.107158511968 AS sv_0, 0.213088288428 AS sv_1, 0.643359212181 AS sv_2, 0.228854816092 AS sv_3, 0.332910563741 AS sv_4, 0.735939446916 AS sv_5, 0.261521257875 AS sv_6, 1.09012956056 AS sv_7, 0.462380601292 AS sv_8, -0.184407790991 AS sv_9 UNION ALL SELECT 72 AS sv_idx, -1.0 AS dual_coeff, 1.1392139435 AS sv_0, 0.295558318498 AS sv_1, 0.213519359782 AS sv_2, 0.216169855464 AS sv_3, 1.26211906562 AS sv_4, -0.46884983781 AS sv_5, -2.89513976699 AS sv_6, -0.993739019175 AS sv_7, -0.309323509111 AS sv_8, -0.0469094839404 AS sv_9 UNION ALL SELECT 73 AS sv_idx, -1.0 AS dual_coeff, -0.513567547036 AS sv_0, -0.800367305347 AS sv_1, 0.193782831336 AS sv_2, 1.0965351527 AS sv_3, -0.320582689182 AS sv_4, 0.216365191728 AS sv_5, 1.46903207689 AS sv_6, -0.200862044148 AS sv_7, -2.01907690794 AS sv_8, -0.608032628453 AS sv_9 UNION ALL SELECT 74 AS sv_idx, -1.0 AS dual_coeff, 0.70246016344 AS sv_0, 1.05977742211 AS sv_1, -0.922595206617 AS sv_2, -1.00801921038 AS sv_3, -0.359929475823 AS sv_4, -1.76544973669 AS sv_5, 1.17390448517 AS sv_6, 0.691603843906 AS sv_7, 0.536387932603 AS sv_8, 0.361303302355 AS sv_9 UNION ALL SELECT 75 AS sv_idx, -1.0 AS dual_coeff, 1.08310798373 AS sv_0, -0.985104768416 AS sv_1, -0.542791895862 AS sv_2, 1.03878247039 AS sv_3, -1.31563323522 AS sv_4, 0.726778110955 AS sv_5, 0.822281203795 AS sv_6, -0.403062240692 AS sv_7, 0.716983075675 AS sv_8, -0.702503680009 AS sv_9 UNION ALL SELECT 76 AS sv_idx, 1.0 AS dual_coeff, -0.277106109959 AS sv_0, -1.33236757997 AS sv_1, 0.841875958761 AS sv_2, -1.41284364633 AS sv_3, 1.93619749896 AS sv_4, 1.20935964311 AS sv_5, 0.0175752773168 AS sv_6, 1.86473375199 AS sv_7, 1.38368218731 AS sv_8, 0.559883772657 AS sv_9 UNION ALL SELECT 77 AS sv_idx, 1.0 AS dual_coeff, 0.404352799125 AS sv_0, -1.64363805812 AS sv_1, 1.57275433695 AS sv_2, -0.968310189983 AS sv_3, -1.70274432564 AS sv_4, 1.04854160594 AS sv_5, 2.31405647108 AS sv_6, 1.13161880428 AS sv_7, -1.24282548876 AS sv_8, -0.281788650408 AS sv_9 UNION ALL SELECT 78 AS sv_idx, -1.0 AS dual_coeff, 0.0384157995422 AS sv_0, -1.92055033046 AS sv_1, 0.663529818927 AS sv_2, -0.239359285809 AS sv_3, -1.30003497564 AS sv_4, -0.533631290843 AS sv_5, 1.58940929432 AS sv_6, 0.744303931209 AS sv_7, -2.08322765266 AS sv_8, 0.364581317585 AS sv_9 UNION ALL SELECT 79 AS sv_idx, -1.0 AS dual_coeff, 0.162362937596 AS sv_0, 0.4102158211 AS sv_1, -0.169639335082 AS sv_2, 1.11079167711 AS sv_3, -0.728207018795 AS sv_4, -0.353520994579 AS sv_5, 1.62107707089 AS sv_6, -0.297913874979 AS sv_7, -1.37467561935 AS sv_8, -9.61714921592e-05 AS sv_9) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 8.11735420163 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * ((exp(0.1 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9) + 0.0) - exp(-(0.1 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9) + 0.0))) / (exp(0.1 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9) + 0.0) + exp(-(0.1 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9) + 0.0)))) AS dot_prod1 
FROM "RandomReg_10" AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp