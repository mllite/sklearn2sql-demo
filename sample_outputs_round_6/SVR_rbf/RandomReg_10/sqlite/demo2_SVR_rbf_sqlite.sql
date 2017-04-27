-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, -1.47599762299 AS sv_0, -0.291101102621 AS sv_1, 1.14993550877 AS sv_2, 1.05745289649 AS sv_3, 0.017567995757 AS sv_4, -1.99264038174 AS sv_5, -0.249738538796 AS sv_6, 0.456328893269 AS sv_7, -0.720983944656 AS sv_8, 0.779141169799 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, 0.963501851964 AS sv_0, 0.197464254026 AS sv_1, -0.389832787213 AS sv_2, 0.833310681404 AS sv_3, -0.197303631111 AS sv_4, -0.152739893411 AS sv_5, -0.0085390683332 AS sv_6, 1.09976964156 AS sv_7, -0.580253214283 AS sv_8, 0.247740842191 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, -0.274053439162 AS sv_0, -0.739334697658 AS sv_1, 2.21431753151 AS sv_2, -0.689137006054 AS sv_3, 0.939633675592 AS sv_4, 1.04234578069 AS sv_5, 0.470432257665 AS sv_6, 0.742460510822 AS sv_7, -0.64021800963 AS sv_8, 0.5222983962 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 1.95634969023 AS sv_0, 0.271560624105 AS sv_1, 1.55946728567 AS sv_2, -0.947556925679 AS sv_3, -2.2391478786 AS sv_4, 0.131474398791 AS sv_5, 0.877499292206 AS sv_6, -0.493224853332 AS sv_7, -2.55270405339 AS sv_8, -2.61792402373 AS sv_9 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 0.342428263896 AS sv_0, 0.845625233049 AS sv_1, 0.712350135287 AS sv_2, -0.24347397538 AS sv_3, 0.755959358839 AS sv_4, 0.960531142949 AS sv_5, 0.229334767456 AS sv_6, -0.405826601801 AS sv_7, 0.148297076159 AS sv_8, 0.164271159141 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, 0.533638456579 AS sv_0, -0.852406901111 AS sv_1, 1.48622321502 AS sv_2, -1.19629773336 AS sv_3, -0.0667754421896 AS sv_4, 0.392614128028 AS sv_5, 0.939995753668 AS sv_6, 1.56797648136 AS sv_7, -1.80839255212 AS sv_8, 0.294545762312 AS sv_9 UNION ALL SELECT 6 AS sv_idx, 1.0 AS dual_coeff, -0.485659642285 AS sv_0, 0.4620492456 AS sv_1, 0.0975845152218 AS sv_2, -0.489930906661 AS sv_3, 1.81117944567 AS sv_4, -0.0658100010521 AS sv_5, 1.71385851316 AS sv_6, -0.122701295987 AS sv_7, -0.234288175218 AS sv_8, -0.747227306036 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, -1.66610195165 AS sv_0, -1.33926029343 AS sv_1, -0.621576592842 AS sv_2, 1.13296048745 AS sv_3, 2.20135855232 AS sv_4, -0.244213493701 AS sv_5, 1.22208955051 AS sv_6, -0.483451228134 AS sv_7, -0.583810573711 AS sv_8, 1.18279428949 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, 0.295222466674 AS sv_0, -0.192623910735 AS sv_1, -1.44366888336 AS sv_2, -0.0714435036316 AS sv_3, 0.447723525017 AS sv_4, -0.75892094219 AS sv_5, -0.400372755927 AS sv_6, 0.308473989434 AS sv_7, 0.945221392914 AS sv_8, -2.59295552667 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, -0.102137584926 AS sv_0, 0.13838578867 AS sv_1, 1.55672775951 AS sv_2, -0.222386254482 AS sv_3, -1.5679334821 AS sv_4, -1.5842711163 AS sv_5, -0.922956077096 AS sv_6, -0.543984541407 AS sv_7, 0.520089234924 AS sv_8, 0.319608831976 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 0.859858123807 AS sv_0, -0.455391481974 AS sv_1, -0.290314671261 AS sv_2, 0.617800662521 AS sv_3, 0.692066517299 AS sv_4, 1.06981445469 AS sv_5, 0.917622603077 AS sv_6, 1.98033710616 AS sv_7, -1.0821560461 AS sv_8, -0.63242432193 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, -0.193779150774 AS sv_0, 1.31464152551 AS sv_1, 0.706612826583 AS sv_2, 0.530920441111 AS sv_3, 1.03070712233 AS sv_4, -2.29984135322 AS sv_5, -0.105408542978 AS sv_6, -0.544371037189 AS sv_7, -0.977896055739 AS sv_8, 1.09685956493 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, 0.0882299525375 AS sv_0, -0.581261566152 AS sv_1, 1.80940662854 AS sv_2, -1.49818512828 AS sv_3, -0.421793998627 AS sv_4, 1.88963796685 AS sv_5, -0.517971503958 AS sv_6, 0.406860755268 AS sv_7, 1.60561961465 AS sv_8, 0.969484410762 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, -1.03004957025 AS sv_0, 0.829882662202 AS sv_1, 0.324630583918 AS sv_2, -0.69168111648 AS sv_3, -0.696489317884 AS sv_4, -0.431283310361 AS sv_5, 0.658922664107 AS sv_6, -0.930440273364 AS sv_7, 0.241985852715 AS sv_8, 0.874444081839 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, -0.463408979933 AS sv_0, 0.168595064931 AS sv_1, -0.223867411301 AS sv_2, 0.488713121539 AS sv_3, 0.105343219331 AS sv_4, -0.461671017391 AS sv_5, -0.876133584434 AS sv_6, -1.54299222874 AS sv_7, -0.645270380067 AS sv_8, 1.54865783414 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 1.07693542777 AS sv_0, -0.791378765046 AS sv_1, 0.536299158578 AS sv_2, -0.090225770503 AS sv_3, -0.596988188443 AS sv_4, -1.19423209432 AS sv_5, 0.0432390336396 AS sv_6, 0.700610429303 AS sv_7, -0.286951325917 AS sv_8, 0.0634818234557 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, -1.98530936936 AS sv_0, -0.000455401868099 AS sv_1, 0.173129150484 AS sv_2, -0.21514426764 AS sv_3, 0.181348873135 AS sv_4, -1.25982830996 AS sv_5, 0.04999494973 AS sv_6, 0.986802493709 AS sv_7, 0.570759035823 AS sv_8, 1.3665290804 AS sv_9 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, 0.903716322863 AS sv_0, -1.79242196527 AS sv_1, -1.04823891372 AS sv_2, -1.12655974286 AS sv_3, 1.73848285136 AS sv_4, 0.0782050277946 AS sv_5, 0.691080341017 AS sv_6, 1.4684984431 AS sv_7, -0.44752825804 AS sv_8, 0.904690623063 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, 0.809400749718 AS sv_0, -0.325317690875 AS sv_1, -0.147108711037 AS sv_2, 0.383938485188 AS sv_3, 2.93723067028 AS sv_4, 0.528741984883 AS sv_5, 2.1491814693 AS sv_6, 0.873631208872 AS sv_7, 2.38471618281 AS sv_8, -0.2889005479 AS sv_9 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, 0.672122816665 AS sv_0, -1.40330495224 AS sv_1, 0.493669496388 AS sv_2, 1.94919127827 AS sv_3, 0.389303653983 AS sv_4, -0.462895754878 AS sv_5, 0.202617247658 AS sv_6, 1.00000279615 AS sv_7, 0.410391825363 AS sv_8, -0.246608076472 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, 0.186927358747 AS sv_0, -0.371810739075 AS sv_1, -0.966343173256 AS sv_2, 1.73602252085 AS sv_3, -1.31902925353 AS sv_4, 0.750715721668 AS sv_5, 0.0522939306421 AS sv_6, 0.175512866883 AS sv_7, -0.71951203435 AS sv_8, 1.07554018228 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -1.0 AS dual_coeff, -0.414352997871 AS sv_0, 1.2095651065 AS sv_1, -0.371564766907 AS sv_2, 1.82699956063 AS sv_3, -0.275338925316 AS sv_4, 0.0767222135604 AS sv_5, 0.421168231726 AS sv_6, -0.820259314848 AS sv_7, 0.310301841934 AS sv_8, -2.92145621902 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, -1.91713354793 AS sv_0, -0.875798257201 AS sv_1, 1.04232242012 AS sv_2, 0.869661894272 AS sv_3, -0.0693335536716 AS sv_4, -1.64818986769 AS sv_5, -2.22504393037 AS sv_6, 0.471636242487 AS sv_7, -1.05749316788 AS sv_8, -1.87193533612 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, -0.291430831444 AS sv_0, -1.29919481853 AS sv_1, 0.644628521606 AS sv_2, -0.135985677657 AS sv_3, -0.49436336156 AS sv_4, 0.422410761718 AS sv_5, 2.27633744872 AS sv_6, -0.619480796471 AS sv_7, 0.0173987477769 AS sv_8, -0.774400590535 AS sv_9 UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, -1.67296904442 AS sv_0, 1.05573035277 AS sv_1, 0.376479984305 AS sv_2, 1.75355286201 AS sv_3, -0.220585708626 AS sv_4, -0.00200138721829 AS sv_5, 0.0222406620117 AS sv_6, -1.34149370889 AS sv_7, 0.247339265425 AS sv_8, -0.79721707506 AS sv_9 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 0.162878126069 AS sv_0, 1.50981076918 AS sv_1, 0.0613709832097 AS sv_2, -0.431598206192 AS sv_3, -1.08326165394 AS sv_4, 1.54061844674 AS sv_5, 1.33595019899 AS sv_6, -0.674131255207 AS sv_7, -0.371763744917 AS sv_8, -1.27701380097 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 1.1902211049 AS sv_0, 0.335694495989 AS sv_1, 1.06248599319 AS sv_2, -0.208521975568 AS sv_3, 1.3284084925 AS sv_4, -0.261254229477 AS sv_5, 0.688301212411 AS sv_6, 0.534403982977 AS sv_7, -0.148527484939 AS sv_8, -0.55595258049 AS sv_9 UNION ALL SELECT 27 AS sv_idx, -1.0 AS dual_coeff, 0.334271777969 AS sv_0, -0.58155385712 AS sv_1, -0.34169654133 AS sv_2, -1.36601461579 AS sv_3, -1.54397260129 AS sv_4, 0.0836998446933 AS sv_5, 0.313360281297 AS sv_6, -0.967138318571 AS sv_7, 0.373601557893 AS sv_8, 0.952146055858 AS sv_9 UNION ALL SELECT 28 AS sv_idx, -1.0 AS dual_coeff, -1.34597069486 AS sv_0, -0.697244913121 AS sv_1, -0.405094480782 AS sv_2, -0.886309673295 AS sv_3, 1.57230668001 AS sv_4, -0.647431281665 AS sv_5, 0.115444451872 AS sv_6, -0.602696147976 AS sv_7, -0.336725676843 AS sv_8, 0.544861221769 AS sv_9 UNION ALL SELECT 29 AS sv_idx, -1.0 AS dual_coeff, -0.902672332944 AS sv_0, -1.92109099364 AS sv_1, -1.51340326487 AS sv_2, 0.617542834594 AS sv_3, -0.458723993286 AS sv_4, 0.508510415158 AS sv_5, -0.128920042916 AS sv_6, 0.479091516864 AS sv_7, -0.267729101064 AS sv_8, -0.460275250251 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, -0.295063028 AS sv_0, -0.328648644011 AS sv_1, -0.150021343108 AS sv_2, 1.27922682866 AS sv_3, -0.817845982501 AS sv_4, -0.373849375243 AS sv_5, -0.612113023191 AS sv_6, 1.76382852326 AS sv_7, 0.546314111504 AS sv_8, -1.68450992857 AS sv_9 UNION ALL SELECT 31 AS sv_idx, -1.0 AS dual_coeff, -1.98691703293 AS sv_0, -0.12668724817 AS sv_1, -1.87060681313 AS sv_2, 2.17539064308 AS sv_3, -0.0775896406801 AS sv_4, 0.663256200382 AS sv_5, -0.703579203206 AS sv_6, -1.01593425175 AS sv_7, 0.828055629307 AS sv_8, -1.99728979798 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, 0.110420332921 AS sv_0, 1.10371915208 AS sv_1, -0.445349547152 AS sv_2, -0.289406733622 AS sv_3, -0.298707270435 AS sv_4, 3.31531937166 AS sv_5, -0.333096163269 AS sv_6, -0.542143909745 AS sv_7, 0.225731595928 AS sv_8, 0.24308906338 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, 0.575908293119 AS sv_0, -1.4903018823 AS sv_1, 0.313359143337 AS sv_2, 0.187002829573 AS sv_3, 0.462914838363 AS sv_4, 1.21874032901 AS sv_5, 0.0300242858317 AS sv_6, 0.159975643212 AS sv_7, 1.07486730623 AS sv_8, 1.03520828985 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, 0.283062982445 AS sv_0, -1.98624276284 AS sv_1, -0.330303882548 AS sv_2, 1.25557701965 AS sv_3, 0.859745288187 AS sv_4, 0.699301454662 AS sv_5, -0.036758342662 AS sv_6, -0.450358003089 AS sv_7, -0.85342482875 AS sv_8, -0.551080889354 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, -0.286936233604 AS sv_0, -0.731060315545 AS sv_1, 0.900347742531 AS sv_2, 0.535920990888 AS sv_3, 0.751334659333 AS sv_4, 0.0169777988203 AS sv_5, 1.98345579391 AS sv_6, -1.35363712966 AS sv_7, 1.20712712376 AS sv_8, 0.449926953914 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, -0.441604609109 AS sv_0, -0.322076709885 AS sv_1, 0.490261857796 AS sv_2, 0.544540099791 AS sv_3, -0.091017987689 AS sv_4, 1.25458044379 AS sv_5, 0.625652245945 AS sv_6, -0.351059378047 AS sv_7, -0.030013848506 AS sv_8, -0.536297375676 AS sv_9 UNION ALL SELECT 37 AS sv_idx, -1.0 AS dual_coeff, -0.0217776650311 AS sv_0, -0.287364563609 AS sv_1, -1.06391033739 AS sv_2, -1.19660170082 AS sv_3, -0.362740276781 AS sv_4, -0.547145530728 AS sv_5, -0.285359853119 AS sv_6, -0.514350035802 AS sv_7, -0.161009452845 AS sv_8, -0.353632204607 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, -1.08017937739 AS sv_0, -2.14572666011 AS sv_1, 0.405677151388 AS sv_2, 1.13230147103 AS sv_3, 0.275830899198 AS sv_4, 0.968719776991 AS sv_5, 0.0706553638619 AS sv_6, 1.60492620684 AS sv_7, -1.15325081729 AS sv_8, -1.04943490621 AS sv_9 UNION ALL SELECT 39 AS sv_idx, -1.0 AS dual_coeff, 1.14778734622 AS sv_0, 0.73847490668 AS sv_1, -0.52840903525 AS sv_2, -1.17216988396 AS sv_3, -0.634117765882 AS sv_4, -0.507862095995 AS sv_5, -1.64462996126 AS sv_6, -0.536551252538 AS sv_7, 0.66667074833 AS sv_8, 0.531222364759 AS sv_9 UNION ALL SELECT 40 AS sv_idx, -1.0 AS dual_coeff, -0.531536381255 AS sv_0, -0.324961503412 AS sv_1, 1.20900375164 AS sv_2, -0.72389076174 AS sv_3, -0.324736702967 AS sv_4, -1.16963519823 AS sv_5, 0.346739372262 AS sv_6, -1.63821518105 AS sv_7, 0.0392269248518 AS sv_8, -1.31811678826 AS sv_9 UNION ALL SELECT 41 AS sv_idx, 1.0 AS dual_coeff, 0.401847898142 AS sv_0, 2.28780380175 AS sv_1, 1.15922539557 AS sv_2, 1.32347005109 AS sv_3, -0.86163448836 AS sv_4, 1.30221522544 AS sv_5, 0.551799758867 AS sv_6, 0.713424488036 AS sv_7, -0.74502181966 AS sv_8, 0.867475554129 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 1.0 AS dual_coeff, 0.349653500207 AS sv_0, 0.539003995379 AS sv_1, 1.09000459406 AS sv_2, 0.16166387804 AS sv_3, -1.96751414243 AS sv_4, -0.279524485165 AS sv_5, -0.441954539853 AS sv_6, 0.596809955316 AS sv_7, 1.67592932455 AS sv_8, -0.39132358685 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, 0.52095975376 AS sv_0, -0.202778072181 AS sv_1, -0.00441435071114 AS sv_2, -1.31713802253 AS sv_3, -0.196804982132 AS sv_4, 0.67943131414 AS sv_5, -0.175854308985 AS sv_6, 1.44122401744 AS sv_7, -1.17796328821 AS sv_8, 0.411918956324 AS sv_9 UNION ALL SELECT 44 AS sv_idx, -1.0 AS dual_coeff, -0.810945372794 AS sv_0, -0.0578361635372 AS sv_1, 0.311313445954 AS sv_2, -1.46826088639 AS sv_3, -0.0886775731777 AS sv_4, -0.322921469817 AS sv_5, 0.661044457397 AS sv_6, 0.32460961561 AS sv_7, -0.0153588389286 AS sv_8, -0.56606994447 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, 0.794095570215 AS sv_0, -0.728688822437 AS sv_1, 0.344454912317 AS sv_2, 0.0366298185629 AS sv_3, -0.606939277808 AS sv_4, 1.38261456928 AS sv_5, 0.1676667554 AS sv_6, 0.620983420107 AS sv_7, 0.938098222929 AS sv_8, -0.397398935377 AS sv_9 UNION ALL SELECT 46 AS sv_idx, -1.0 AS dual_coeff, -0.0793084608904 AS sv_0, -0.27527097614 AS sv_1, -0.748039294104 AS sv_2, 1.42592554828 AS sv_3, 0.646649791822 AS sv_4, 0.253562907551 AS sv_5, 0.430616498205 AS sv_6, -0.287751787798 AS sv_7, 0.536303031905 AS sv_8, -1.17253988579 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, -1.74081980444 AS sv_0, 1.67557617278 AS sv_1, -0.878056239725 AS sv_2, 2.70938035877 AS sv_3, 1.27838568975 AS sv_4, 0.985391638512 AS sv_5, 0.517298846329 AS sv_6, 0.976763314262 AS sv_7, 3.54782422479 AS sv_8, 1.8433247389 AS sv_9 UNION ALL SELECT 48 AS sv_idx, -1.0 AS dual_coeff, 0.483010800549 AS sv_0, -1.02496251392 AS sv_1, -2.25944313737 AS sv_2, 0.704928239612 AS sv_3, -0.868790371759 AS sv_4, -0.0826855203605 AS sv_5, -0.227097444416 AS sv_6, 1.22315397996 AS sv_7, -1.21360894714 AS sv_8, 0.436388406856 AS sv_9 UNION ALL SELECT 49 AS sv_idx, -1.0 AS dual_coeff, -0.0280883968901 AS sv_0, 0.660245282265 AS sv_1, -2.04699023042 AS sv_2, -0.473243726184 AS sv_3, -0.773734988141 AS sv_4, -1.19711580934 AS sv_5, -1.63036846454 AS sv_6, -0.0688481415984 AS sv_7, -1.28614321298 AS sv_8, 1.07460215852 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 1.0 AS dual_coeff, 1.50367708877 AS sv_0, -0.623236084876 AS sv_1, 1.28054837435 AS sv_2, -0.59817029856 AS sv_3, 1.55741167215 AS sv_4, -0.257489511383 AS sv_5, 0.8411672761 AS sv_6, 0.0486575715513 AS sv_7, 0.0949514215914 AS sv_8, -1.15848218836 AS sv_9 UNION ALL SELECT 51 AS sv_idx, -1.0 AS dual_coeff, -1.5679801319 AS sv_0, -1.36772478606 AS sv_1, -0.338984590204 AS sv_2, -0.630186874631 AS sv_3, -1.61546715399 AS sv_4, 0.158565730016 AS sv_5, 1.41757894638 AS sv_6, 1.74222738388 AS sv_7, -0.17876503188 AS sv_8, -0.410558651972 AS sv_9 UNION ALL SELECT 52 AS sv_idx, -1.0 AS dual_coeff, -0.440892716502 AS sv_0, 0.372891749008 AS sv_1, -0.498280162776 AS sv_2, 0.885187609385 AS sv_3, -1.09014556263 AS sv_4, 0.0107064900473 AS sv_5, 0.647490322493 AS sv_6, 0.780702272389 AS sv_7, -0.315229399665 AS sv_8, 0.175999929006 AS sv_9 UNION ALL SELECT 53 AS sv_idx, 1.0 AS dual_coeff, 0.0259539582469 AS sv_0, 1.3451788946 AS sv_1, 0.396048415086 AS sv_2, -0.213106396381 AS sv_3, -0.38636712761 AS sv_4, 0.32940821806 AS sv_5, 0.667348024785 AS sv_6, 0.0455085889023 AS sv_7, -0.768221963743 AS sv_8, -0.441146014956 AS sv_9 UNION ALL SELECT 54 AS sv_idx, -1.0 AS dual_coeff, 1.15981920403 AS sv_0, -1.26626895305 AS sv_1, -0.223444396602 AS sv_2, 1.2771281059 AS sv_3, -0.37519347792 AS sv_4, -1.14252338281 AS sv_5, 0.69514919662 AS sv_6, -0.00452835720935 AS sv_7, 0.182215275224 AS sv_8, -1.81991163701 AS sv_9 UNION ALL SELECT 55 AS sv_idx, 1.0 AS dual_coeff, -0.59160102768 AS sv_0, -0.602287379698 AS sv_1, 0.462666282104 AS sv_2, 0.0777396967982 AS sv_3, 0.164367072986 AS sv_4, 0.0133315473148 AS sv_5, -0.950013118807 AS sv_6, 0.0297545717892 AS sv_7, 0.056276754373 AS sv_8, -0.47364362805 AS sv_9 UNION ALL SELECT 56 AS sv_idx, -1.0 AS dual_coeff, -2.53931667739 AS sv_0, -0.341491588738 AS sv_1, 0.88068814732 AS sv_2, -0.87395821974 AS sv_3, 0.594628245436 AS sv_4, -2.32048764803 AS sv_5, -0.32776584351 AS sv_6, 1.43999733365 AS sv_7, -0.645097194025 AS sv_8, 1.35582822912 AS sv_9 UNION ALL SELECT 57 AS sv_idx, -1.0 AS dual_coeff, -0.157719090534 AS sv_0, -0.0480815079347 AS sv_1, -2.33933574812 AS sv_2, 0.251246281522 AS sv_3, -0.123453135006 AS sv_4, -0.56591725246 AS sv_5, 1.51037134884 AS sv_6, 0.983534815874 AS sv_7, 0.871803284512 AS sv_8, 1.31634886403 AS sv_9 UNION ALL SELECT 58 AS sv_idx, -1.0 AS dual_coeff, 1.88447315831 AS sv_0, -0.904588470971 AS sv_1, 0.140241078943 AS sv_2, -0.748328837466 AS sv_3, -1.96005852254 AS sv_4, -1.05321274873 AS sv_5, 0.577322099947 AS sv_6, 0.299182921474 AS sv_7, -1.36828281879 AS sv_8, -0.0879850999795 AS sv_9 UNION ALL SELECT 59 AS sv_idx, 1.0 AS dual_coeff, 1.04179545563 AS sv_0, 0.935903997624 AS sv_1, 0.850903723323 AS sv_2, -1.67737570122 AS sv_3, 0.669205764342 AS sv_4, -0.0579170658841 AS sv_5, -0.553419713505 AS sv_6, -0.17864791412 AS sv_7, 0.588698113738 AS sv_8, -2.1313752102 AS sv_9 UNION ALL SELECT 60 AS sv_idx, -1.0 AS dual_coeff, -0.888029691121 AS sv_0, 0.074437443789 AS sv_1, -0.499648654477 AS sv_2, 0.945972791019 AS sv_3, -0.0171649963008 AS sv_4, -0.308755066436 AS sv_5, 1.25639401191 AS sv_6, -0.981001117248 AS sv_7, -0.618572461948 AS sv_8, -0.200692041435 AS sv_9 UNION ALL SELECT 61 AS sv_idx, 1.0 AS dual_coeff, 1.08245053258 AS sv_0, -0.384592495917 AS sv_1, 0.948266377848 AS sv_2, -1.08661672055 AS sv_3, -0.219066129336 AS sv_4, -0.614697212559 AS sv_5, 0.120550562963 AS sv_6, 1.08543957883 AS sv_7, 0.800996039706 AS sv_8, -1.51643780124 AS sv_9 UNION ALL SELECT 62 AS sv_idx, -1.0 AS dual_coeff, 0.0850173399727 AS sv_0, 0.0964166912734 AS sv_1, 0.294700640116 AS sv_2, 0.842801493517 AS sv_3, -2.58327569548 AS sv_4, 0.0695123703803 AS sv_5, -0.176523995873 AS sv_6, -0.406115760285 AS sv_7, -0.51529949224 AS sv_8, 0.0738375893572 AS sv_9 UNION ALL SELECT 63 AS sv_idx, 1.0 AS dual_coeff, 0.526852219905 AS sv_0, -0.310526138536 AS sv_1, 0.456508375032 AS sv_2, -0.020839579733 AS sv_3, 0.313268685729 AS sv_4, 0.441070376963 AS sv_5, 2.29950241398 AS sv_6, 0.286319052295 AS sv_7, -0.26238152924 AS sv_8, 1.21487504895 AS sv_9 UNION ALL SELECT 64 AS sv_idx, 1.0 AS dual_coeff, 0.11905854297 AS sv_0, 0.684210386735 AS sv_1, 0.293944937681 AS sv_2, 0.259197658727 AS sv_3, -0.0788104526474 AS sv_4, 1.96080247318 AS sv_5, 0.314804041294 AS sv_6, 1.15860793672 AS sv_7, -0.0332208288433 AS sv_8, -0.422374271355 AS sv_9 UNION ALL SELECT 65 AS sv_idx, -1.0 AS dual_coeff, 0.261943920934 AS sv_0, 0.157292475859 AS sv_1, -1.98255701761 AS sv_2, 0.473090611344 AS sv_3, 0.562254284258 AS sv_4, -1.31184920513 AS sv_5, -0.802296329351 AS sv_6, -1.0825921245 AS sv_7, 1.51509629388 AS sv_8, 0.491160217613 AS sv_9) AS "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + -27.2345886375 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * exp(-0.1 * (power("ADS"."Feature_0" - "SV_data".sv_0, 2) + power("ADS"."Feature_1" - "SV_data".sv_1, 2) + power("ADS"."Feature_2" - "SV_data".sv_2, 2) + power("ADS"."Feature_3" - "SV_data".sv_3, 2) + power("ADS"."Feature_4" - "SV_data".sv_4, 2) + power("ADS"."Feature_5" - "SV_data".sv_5, 2) + power("ADS"."Feature_6" - "SV_data".sv_6, 2) + power("ADS"."Feature_7" - "SV_data".sv_7, 2) + power("ADS"."Feature_8" - "SV_data".sv_8, 2) + power("ADS"."Feature_9" - "SV_data".sv_9, 2))) AS dot_prod1 
FROM "RandomReg_10" AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_cte."KEY" AS "KEY", kernel_cte.dot_product AS "Estimator" 
FROM kernel_cte