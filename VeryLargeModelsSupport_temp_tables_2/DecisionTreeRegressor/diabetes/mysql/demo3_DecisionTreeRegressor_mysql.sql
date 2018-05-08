-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeRegressor
-- Dataset : diabetes
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` <= 0.0007076415931805968) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.0061888848431408405) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.11267216503620148) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.009431487880647182) THEN CASE WHEN (`ADS`.`Feature_6` <= 0.021027816459536552) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.032143499702215195) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.029126055538654327) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.04870649427175522) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.02867429330945015) THEN 9 ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.0010620108805596828) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.024434737861156464) THEN 12 ELSE 13 END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.03544706106185913) THEN 15 ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.03700406476855278) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.012106924317777157) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.07949717342853546) THEN 21 ELSE CASE WHEN (`ADS`.`Feature_7` <= -0.021042821928858757) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.04177375137805939) THEN 24 ELSE 25 END ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.0504152849316597) THEN 27 ELSE 28 END END END ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.01083491649478674) THEN 30 ELSE 31 END END END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.035845786333084106) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.0025588986463844776) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.048711925745010376) THEN CASE WHEN (`ADS`.`Feature_6` <= 0.002619626931846142) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.047663383185863495) THEN 37 ELSE 38 END ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.031492140144109726) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.0036982856690883636) THEN 41 ELSE 42 END ELSE 43 END END ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.013947743922472) THEN 45 ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.003019241616129875) THEN 47 ELSE 48 END END END ELSE 49 END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.01698407530784607) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.028049271553754807) THEN 52 ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.03422906994819641) THEN 54 ELSE CASE WHEN (`ADS`.`Feature_9` <= -0.05492508411407471) THEN 56 ELSE 57 END END END ELSE CASE WHEN (`ADS`.`Feature_0` <= -0.00733082415536046) THEN 59 ELSE 60 END END END END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.002619626931846142) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.003019241616129875) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.02460639923810959) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.003064409364014864) THEN 65 ELSE 66 END ELSE CASE WHEN (`ADS`.`Feature_9` <= -0.011432964354753494) THEN 68 ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.0286742951720953) THEN 70 ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.04698631912469864) THEN 72 ELSE 73 END END END END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.011595014482736588) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.023077694699168205) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.021788232028484344) THEN 77 ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.021829575300216675) THEN 79 ELSE 80 END END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.028301101177930832) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.011543741449713707) THEN 83 ELSE 84 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.04200391471385956) THEN 86 ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.020832300186157227) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.015906263142824173) THEN 89 ELSE 90 END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.020446285605430603) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.03947501629590988) THEN 93 ELSE 94 END ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.03837788477540016) THEN 96 ELSE 97 END END END END END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.018429484218358994) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.0018947056960314512) THEN 100 ELSE 101 END ELSE 102 END END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.00293656624853611) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.07310865819454193) THEN 105 ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.060734931379556656) THEN 107 ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.013664539903402328) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.02370869740843773) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.03415451571345329) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.003019241616129875) THEN 112 ELSE CASE WHEN (`ADS`.`Feature_7` <= -0.021042821928858757) THEN 114 ELSE 115 END END ELSE 116 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.003019241616129875) THEN 118 ELSE 119 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= -0.043656207621097565) THEN 121 ELSE 122 END END END END ELSE CASE WHEN (`ADS`.`Feature_7` <= -0.005359846167266369) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.01105610840022564) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.02703666128218174) THEN 126 ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.01182372123003006) THEN 128 ELSE 129 END END ELSE 130 END ELSE 131 END END END END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.01644516922533512) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.06171327829360962) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.09996055066585541) THEN 135 ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.0538707971572876) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.011432964354753494) THEN CASE WHEN (`ADS`.`Feature_6` <= 0.056003376841545105) THEN 139 ELSE 140 END ELSE 141 END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.08326952159404755) THEN 143 ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.0572950504720211) THEN 145 ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.07487097382545471) THEN 147 ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.0011829457944259048) THEN CASE WHEN (`ADS`.`Feature_0` <= -6.574729923158884e-05) THEN 150 ELSE 151 END ELSE 152 END END END END END END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.03943600505590439) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.07452802360057831) THEN 155 ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.019632836803793907) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.04353552311658859) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.033690162003040314) THEN 159 ELSE 160 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.027740024030208588) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.056996140629053116) THEN 163 ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.029770705848932266) THEN 165 ELSE CASE WHEN (`ADS`.`Feature_0` <= -0.016412172466516495) THEN 167 ELSE 168 END END END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.030231911689043045) THEN 170 ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.036923598498106) THEN 172 ELSE 173 END END END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.037365272641181946) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.0486275851726532) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.04716281220316887) THEN 177 ELSE 178 END ELSE 179 END ELSE 180 END END END ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.01083491649478674) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.06417481601238251) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.09220404922962189) THEN 184 ELSE 185 END ELSE CASE WHEN (`ADS`.`Feature_9` <= -0.07770667970180511) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.054755061864852905) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.012190569192171097) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.024643437936902046) THEN 190 ELSE 191 END ELSE 192 END ELSE 193 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.03137132525444031) THEN CASE WHEN (`ADS`.`Feature_7` <= -0.05794394388794899) THEN CASE WHEN (`ADS`.`Feature_6` <= 0.09834221005439758) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.03820740059018135) THEN 198 ELSE 199 END ELSE 200 END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.07257074117660522) THEN 202 ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.0374625027179718) THEN 204 ELSE 205 END END END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.036923598498106) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.04698505625128746) THEN 208 ELSE 209 END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.06336665153503418) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.01842842996120453) THEN 212 ELSE 213 END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.1149095818400383) THEN 215 ELSE 216 END END END END END END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.05968501418828964) THEN CASE WHEN (`ADS`.`Feature_7` <= -0.030452609062194824) THEN 219 ELSE 220 END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.005135462619364262) THEN 222 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.0603177435696125) THEN 224 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.08384402841329575) THEN 226 ELSE 227 END END END END END END END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.00943866278976202) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.04910501837730408) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.07816532254219055) THEN 231 ELSE 232 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.06282874941825867) THEN 234 ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.007283766288310289) THEN 236 ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.04330067336559296) THEN 238 ELSE 239 END END END END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.014942474663257599) THEN 241 ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.04477105289697647) THEN 243 ELSE CASE WHEN (`ADS`.`Feature_9` <= -0.005219804123044014) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.03241246938705444) THEN 246 ELSE 247 END ELSE 248 END END END END END END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.08098821341991425) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.0036982859019190073) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.004294326063245535) THEN CASE WHEN (`ADS`.`Feature_6` <= 0.021027816459536552) THEN 253 ELSE 254 END ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.03235593065619469) THEN 256 ELSE 257 END END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.04864009842276573) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.00422451039776206) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.005612778477370739) THEN 261 ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.034196749329566956) THEN 263 ELSE 264 END END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.04339047148823738) THEN 266 ELSE CASE WHEN (`ADS`.`Feature_7` <= -0.021042821928858757) THEN 268 ELSE 269 END END END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.00027798768132925034) THEN 271 ELSE 272 END END END ELSE 273 END END ELSE 274 END ELSE CASE WHEN (`ADS`.`Feature_0` <= -0.08361412584781647) THEN 276 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.02359379082918167) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.047663379460573196) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.017058268189430237) THEN CASE WHEN (`ADS`.`Feature_8` <= -0.07417511194944382) THEN 281 ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.0007788082584738731) THEN 283 ELSE 284 END END ELSE 285 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.03636762499809265) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.04769385606050491) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.032527897506952286) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.012556351721286774) THEN 290 ELSE 291 END ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.04870649427175522) THEN 293 ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.01966153457760811) THEN 295 ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.007392046507447958) THEN 297 ELSE 298 END END END END ELSE 299 END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.010238608345389366) THEN CASE WHEN (`ADS`.`Feature_6` <= 0.01182372123003006) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.0047436486929655075) THEN 303 ELSE 304 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.043564509600400925) THEN 306 ELSE 307 END END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.010126639157533646) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.003019241616129875) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.002409897046163678) THEN 311 ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.06061839312314987) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.001750522293150425) THEN 314 ELSE 315 END ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.02575402334332466) THEN 317 ELSE 318 END END END ELSE 319 END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.009982902556657791) THEN 321 ELSE 322 END END END END END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.027206219732761383) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.009361911565065384) THEN 325 ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.011577945202589035) THEN 327 ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.002902830019593239) THEN 329 ELSE 330 END END END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.0486275851726532) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.03168927878141403) THEN CASE WHEN (`ADS`.`Feature_7` <= -0.043737009167671204) THEN 334 ELSE 335 END ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.02771206572651863) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.021198805421590805) THEN 338 ELSE 339 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.024217871949076653) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.0003598276525735855) THEN 342 ELSE 343 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.035643838346004486) THEN 345 ELSE 346 END END END END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.021702533587813377) THEN 348 ELSE 349 END END END END END END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.05576823651790619) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.037365272641181946) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.023450948297977448) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.0586710050702095) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.04985734075307846) THEN 355 ELSE CASE WHEN (`ADS`.`Feature_9` <= -0.019717179238796234) THEN 357 ELSE 358 END END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.04241442680358887) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.04608500003814697) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.05455382168292999) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.06936372071504593) THEN 363 ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.07464702427387238) THEN 365 ELSE 366 END END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.014309538528323174) THEN 368 ELSE 369 END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.006379436701536179) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.01772065833210945) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.04534098505973816) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.009438661858439445) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.0036982856690883636) THEN 375 ELSE 376 END ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.027645904570817947) THEN 378 ELSE 379 END END ELSE 380 END ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.02867429330945015) THEN 382 ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.042057186365127563) THEN 384 ELSE 385 END END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.02531522512435913) THEN CASE WHEN (`ADS`.`Feature_8` <= 0.052220724523067474) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.016708049923181534) THEN 389 ELSE 390 END ELSE 391 END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.03207344189286232) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.028904948383569717) THEN 394 ELSE 395 END ELSE 396 END END END END ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.027283914387226105) THEN CASE WHEN (`ADS`.`Feature_8` <= 0.01947084255516529) THEN 399 ELSE 400 END ELSE 401 END END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.007199329789727926) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.09626181423664093) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.046640872955322266) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.003019241616129875) THEN 406 ELSE 407 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.02828403189778328) THEN CASE WHEN (`ADS`.`Feature_7` <= -0.021042821928858757) THEN 410 ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.015596140176057816) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.008425286039710045) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.025930337607860565) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.04354219138622284) THEN 415 ELSE 416 END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.026052605360746384) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.023677246645092964) THEN 419 ELSE 420 END ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.015858298167586327) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.0036982859019190073) THEN 423 ELSE 424 END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.00531080411747098) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.018080394715070724) THEN 427 ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.007805602625012398) THEN 429 ELSE 430 END END ELSE 431 END END END END ELSE 432 END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.0693381205201149) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.01375063881278038) THEN 435 ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.07120998203754425) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.029988104477524757) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.03172328695654869) THEN 439 ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.008231636136770248) THEN 441 ELSE 442 END END ELSE 443 END ELSE 444 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= -0.001882016658782959) THEN 446 ELSE 447 END END END END ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.05329699069261551) THEN 449 ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.02288496494293213) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.007290857844054699) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.025930337607860565) THEN 453 ELSE 454 END ELSE 455 END ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.003375363303348422) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.06103689596056938) THEN 458 ELSE 459 END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.07587721943855286) THEN 461 ELSE 462 END END END END END END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.020739348605275154) THEN 464 ELSE 465 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.023545753210783005) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.07521691173315048) THEN 468 ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.027622785419225693) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.003019241616129875) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.02683347649872303) THEN 472 ELSE 473 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.0013387304497882724) THEN 475 ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.05275942012667656) THEN 477 ELSE 478 END END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.010831868276000023) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.015439566224813461) THEN 481 ELSE 482 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.03162715584039688) THEN CASE WHEN (`ADS`.`Feature_8` <= 0.06742452830076218) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.02460639923810959) THEN 486 ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.016280675306916237) THEN 488 ELSE 489 END END ELSE 490 END ELSE 491 END END END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.02899456024169922) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.05254765599966049) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.027917051687836647) THEN 495 ELSE 496 END ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.015858298167586327) THEN 498 ELSE 499 END END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.029988106340169907) THEN CASE WHEN (`ADS`.`Feature_8` <= 0.06038610637187958) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.025845997035503387) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.025930337607860565) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.0040503297932446) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.001568961888551712) THEN 506 ELSE 507 END ELSE 508 END ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.08154229819774628) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.016967006027698517) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.023458775132894516) THEN 512 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.00293656624853611) THEN 514 ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.0013557998463511467) THEN 516 ELSE 517 END END END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.06272497773170471) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.03282986208796501) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.009277569130063057) THEN 521 ELSE 522 END ELSE 523 END ELSE 524 END END ELSE 525 END END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.03420581668615341) THEN 527 ELSE 528 END END ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.07527174055576324) THEN 530 ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.11469905823469162) THEN 532 ELSE 533 END END END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.017944753170013428) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.07440128922462463) THEN 536 ELSE 537 END ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.05354392156004906) THEN 539 ELSE 540 END END END END END END END ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.04397284984588623) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.015350287780165672) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.02702408842742443) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.027618348598480225) THEN 545 ELSE 546 END ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.01293455995619297) THEN 548 ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.03357083350419998) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.007206516340374947) THEN 551 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.0855654627084732) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.05898285284638405) THEN 554 ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.028391091153025627) THEN 556 ELSE 557 END END ELSE 558 END END ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.035758864134550095) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.004572166595607996) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.03989217430353165) THEN 562 ELSE 563 END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.04934129863977432) THEN 565 ELSE 566 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= -0.04910501837730408) THEN 568 ELSE 569 END END END END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.09245119988918304) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.008863447234034538) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.023545751348137856) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.0010776971466839314) THEN 574 ELSE 575 END ELSE 576 END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.002619627397507429) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.05113675445318222) THEN 579 ELSE 580 END ELSE 581 END END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.041756682097911835) THEN 583 ELSE 584 END END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.05285818874835968) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.03413021191954613) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.015490730293095112) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.0047436486929655075) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.007290857844054699) THEN 590 ELSE 591 END ELSE 592 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.003019241616129875) THEN 594 ELSE 595 END END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.04241442680358887) THEN 597 ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.04777776822447777) THEN 599 ELSE 600 END END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.07076875120401382) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.061465367674827576) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.03673366457223892) THEN 604 ELSE 605 END ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.052116815000772476) THEN 607 ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.002619626000523567) THEN 609 ELSE 610 END END END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.05966094136238098) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.02683347463607788) THEN 613 ELSE 614 END ELSE 615 END END END END END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.022485405206680298) THEN CASE WHEN (`ADS`.`Feature_9` <= -0.011432964354753494) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.06492964178323746) THEN 619 ELSE 620 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.1107366532087326) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.03855248540639877) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.01496984250843525) THEN CASE WHEN (`ADS`.`Feature_8` <= 0.004960526712238789) THEN 625 ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.07969339191913605) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.05805486813187599) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.10750322043895721) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.007206516340374947) THEN 630 ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.05260493978857994) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.012648137286305428) THEN 633 ELSE 634 END ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.045241665095090866) THEN 636 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.0855654627084732) THEN 638 ELSE 639 END END END END ELSE 640 END ELSE 641 END ELSE CASE WHEN (`ADS`.`Feature_0` <= -6.574764847755432e-05) THEN 643 ELSE CASE WHEN (`ADS`.`Feature_6` <= -0.013947743922472) THEN 645 ELSE 646 END END END END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.06762416660785675) THEN 648 ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.05442233011126518) THEN 650 ELSE 651 END END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.047157250344753265) THEN 653 ELSE 654 END END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.0011573033407330513) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.030463969334959984) THEN 657 ELSE 658 END ELSE 659 END END END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.05069863796234131) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.023151837289333344) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.003019241616129875) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.056080520153045654) THEN 664 ELSE 665 END ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.051727402955293655) THEN CASE WHEN (`ADS`.`Feature_8` <= 0.02362796850502491) THEN 668 ELSE 669 END ELSE 670 END END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.06600745022296906) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.06654071062803268) THEN 673 ELSE 674 END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.0699273943901062) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.0491030253469944) THEN 677 ELSE 678 END ELSE 679 END END END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.11048012226819992) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.07686035335063934) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.013703975826501846) THEN 683 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.033922404050827026) THEN 685 ELSE 686 END END ELSE 687 END ELSE CASE WHEN (`ADS`.`Feature_0` <= -0.04183993861079216) THEN 689 ELSE 690 END END END END END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, `Values`.`E` AS `E` 
FROM (SELECT 9 AS nid, 104.0 AS `E` UNION ALL SELECT 12 AS nid, 128.0 AS `E` UNION ALL SELECT 13 AS nid, 142.0 AS `E` UNION ALL SELECT 15 AS nid, 150.0 AS `E` UNION ALL SELECT 17 AS nid, 158.0 AS `E` UNION ALL SELECT 18 AS nid, 160.0 AS `E` UNION ALL SELECT 21 AS nid, 101.0 AS `E` UNION ALL SELECT 24 AS nid, 70.0 AS `E` UNION ALL SELECT 25 AS nid, 71.0 AS `E` UNION ALL SELECT 27 AS nid, 55.0 AS `E` UNION ALL SELECT 28 AS nid, 61.0 AS `E` UNION ALL SELECT 30 AS nid, 138.0 AS `E` UNION ALL SELECT 31 AS nid, 101.0 AS `E` UNION ALL SELECT 37 AS nid, 88.0 AS `E` UNION ALL SELECT 38 AS nid, 96.0 AS `E` UNION ALL SELECT 41 AS nid, 63.0 AS `E` UNION ALL SELECT 42 AS nid, 65.0 AS `E` UNION ALL SELECT 43 AS nid, 78.0 AS `E` UNION ALL SELECT 45 AS nid, 74.0 AS `E` UNION ALL SELECT 47 AS nid, 53.0 AS `E` UNION ALL SELECT 48 AS nid, 47.0 AS `E` UNION ALL SELECT 49 AS nid, 135.0 AS `E` UNION ALL SELECT 52 AS nid, 64.0 AS `E` UNION ALL SELECT 54 AS nid, 53.0 AS `E` UNION ALL SELECT 56 AS nid, 54.0 AS `E` UNION ALL SELECT 57 AS nid, 55.0 AS `E` UNION ALL SELECT 59 AS nid, 25.0 AS `E` UNION ALL SELECT 60 AS nid, 31.0 AS `E` UNION ALL SELECT 65 AS nid, 77.0 AS `E` UNION ALL SELECT 66 AS nid, 68.0 AS `E` UNION ALL SELECT 68 AS nid, 200.0 AS `E` UNION ALL SELECT 70 AS nid, 146.0 AS `E` UNION ALL SELECT 72 AS nid, 178.0 AS `E` UNION ALL SELECT 73 AS nid, 168.0 AS `E` UNION ALL SELECT 77 AS nid, 83.0 AS `E` UNION ALL SELECT 79 AS nid, 129.0 AS `E` UNION ALL SELECT 80 AS nid, 160.0 AS `E` UNION ALL SELECT 83 AS nid, 53.0 AS `E` UNION ALL SELECT 84 AS nid, 71.0 AS `E` UNION ALL SELECT 86 AS nid, 132.0 AS `E` UNION ALL SELECT 89 AS nid, 77.0 AS `E` UNION ALL SELECT 90 AS nid, 83.0 AS `E` UNION ALL SELECT 93 AS nid, 97.0 AS `E` UNION ALL SELECT 94 AS nid, 89.0 AS `E` UNION ALL SELECT 96 AS nid, 104.0 AS `E` UNION ALL SELECT 97 AS nid, 107.0 AS `E` UNION ALL SELECT 100 AS nid, 60.0 AS `E` UNION ALL SELECT 101 AS nid, 67.0 AS `E` UNION ALL SELECT 102 AS nid, 44.0 AS `E` UNION ALL SELECT 105 AS nid, 200.0 AS `E` UNION ALL SELECT 107 AS nid, 55.0 AS `E` UNION ALL SELECT 112 AS nid, 113.0 AS `E` UNION ALL SELECT 114 AS nid, 116.0 AS `E` UNION ALL SELECT 115 AS nid, 118.0 AS `E` UNION ALL SELECT 116 AS nid, 127.0 AS `E` UNION ALL SELECT 118 AS nid, 79.0 AS `E` UNION ALL SELECT 119 AS nid, 88.0 AS `E` UNION ALL SELECT 121 AS nid, 144.0 AS `E` UNION ALL SELECT 122 AS nid, 135.0 AS `E` UNION ALL SELECT 126 AS nid, 200.0 AS `E` UNION ALL SELECT 128 AS nid, 219.0 AS `E` UNION ALL SELECT 129 AS nid, 216.0 AS `E` UNION ALL SELECT 130 AS nid, 177.0 AS `E` UNION ALL SELECT 131 AS nid, 104.0 AS `E` UNION ALL SELECT 135 AS nid, 137.0 AS `E` UNION ALL SELECT 139 AS nid, 85.0 AS `E` UNION ALL SELECT 140 AS nid, 96.0 AS `E` UNION ALL SELECT 141 AS nid, 72.0 AS `E` UNION ALL SELECT 143 AS nid, 90.0 AS `E` UNION ALL SELECT 145 AS nid, 37.0 AS `E` UNION ALL SELECT 147 AS nid, 45.0 AS `E` UNION ALL SELECT 150 AS nid, 48.0 AS `E` UNION ALL SELECT 151 AS nid, 49.0 AS `E` UNION ALL SELECT 152 AS nid, 51.0 AS `E` UNION ALL SELECT 155 AS nid, 152.0 AS `E` UNION ALL SELECT 159 AS nid, 125.0 AS `E` UNION ALL SELECT 160 AS nid, 104.0 AS `E` UNION ALL SELECT 163 AS nid, 91.0 AS `E` UNION ALL SELECT 165 AS nid, 72.0 AS `E` UNION ALL SELECT 167 AS nid, 77.0 AS `E` UNION ALL SELECT 168 AS nid, 80.0 AS `E` UNION ALL SELECT 170 AS nid, 71.0 AS `E` UNION ALL SELECT 172 AS nid, 64.0 AS `E` UNION ALL SELECT 173 AS nid, 66.0 AS `E` UNION ALL SELECT 177 AS nid, 39.0 AS `E` UNION ALL SELECT 178 AS nid, 40.0 AS `E` UNION ALL SELECT 179 AS nid, 42.0 AS `E` UNION ALL SELECT 180 AS nid, 65.0 AS `E` UNION ALL SELECT 184 AS nid, 143.0 AS `E` UNION ALL SELECT 185 AS nid, 114.0 AS `E` UNION ALL SELECT 190 AS nid, 65.0 AS `E` UNION ALL SELECT 191 AS nid, 75.0 AS `E` UNION ALL SELECT 192 AS nid, 52.0 AS `E` UNION ALL SELECT 193 AS nid, 90.0 AS `E` UNION ALL SELECT 198 AS nid, 99.0 AS `E` UNION ALL SELECT 199 AS nid, 98.0 AS `E` UNION ALL SELECT 200 AS nid, 92.0 AS `E` UNION ALL SELECT 202 AS nid, 96.0 AS `E` UNION ALL SELECT 204 AS nid, 128.0 AS `E` UNION ALL SELECT 205 AS nid, 118.0 AS `E` UNION ALL SELECT 208 AS nid, 60.0 AS `E` UNION ALL SELECT 209 AS nid, 72.0 AS `E` UNION ALL SELECT 212 AS nid, 94.0 AS `E` UNION ALL SELECT 213 AS nid, 97.0 AS `E` UNION ALL SELECT 215 AS nid, 84.0 AS `E` UNION ALL SELECT 216 AS nid, 87.0 AS `E` UNION ALL SELECT 219 AS nid, 179.0 AS `E` UNION ALL SELECT 220 AS nid, 158.0 AS `E` UNION ALL SELECT 222 AS nid, 87.0 AS `E` UNION ALL SELECT 224 AS nid, 108.0 AS `E` UNION ALL SELECT 226 AS nid, 102.0 AS `E` UNION ALL SELECT 227 AS nid, 103.0 AS `E` UNION ALL SELECT 231 AS nid, 68.0 AS `E` UNION ALL SELECT 232 AS nid, 61.0 AS `E` UNION ALL SELECT 234 AS nid, 39.0 AS `E` UNION ALL SELECT 236 AS nid, 53.0 AS `E` UNION ALL SELECT 238 AS nid, 49.0 AS `E` UNION ALL SELECT 239 AS nid, 51.0 AS `E` UNION ALL SELECT 241 AS nid, 113.0 AS `E` UNION ALL SELECT 243 AS nid, 81.0 AS `E` UNION ALL SELECT 246 AS nid, 60.0 AS `E` UNION ALL SELECT 247 AS nid, 59.0 AS `E` UNION ALL SELECT 248 AS nid, 63.0 AS `E` UNION ALL SELECT 253 AS nid, 190.0 AS `E` UNION ALL SELECT 254 AS nid, 168.0 AS `E` UNION ALL SELECT 256 AS nid, 150.0 AS `E` UNION ALL SELECT 257 AS nid, 140.0 AS `E` UNION ALL SELECT 261 AS nid, 92.0 AS `E` UNION ALL SELECT 263 AS nid, 124.0 AS `E` UNION ALL SELECT 264 AS nid, 111.0 AS `E` UNION ALL SELECT 266 AS nid, 153.0 AS `E` UNION ALL SELECT 268 AS nid, 131.0 AS `E` UNION ALL SELECT 269 AS nid, 141.0 AS `E` UNION ALL SELECT 271 AS nid, 88.0 AS `E` UNION ALL SELECT 272 AS nid, 73.0 AS `E` UNION ALL SELECT 273 AS nid, 230.0 AS `E` UNION ALL SELECT 274 AS nid, 253.0 AS `E` UNION ALL SELECT 276 AS nid, 302.0 AS `E` UNION ALL SELECT 281 AS nid, 201.0 AS `E` UNION ALL SELECT 283 AS nid, 182.0 AS `E` UNION ALL SELECT 284 AS nid, 187.0 AS `E` UNION ALL SELECT 285 AS nid, 210.0 AS `E` UNION ALL SELECT 290 AS nid, 145.0 AS `E` UNION ALL SELECT 291 AS nid, 121.0 AS `E` UNION ALL SELECT 293 AS nid, 172.0 AS `E` UNION ALL SELECT 295 AS nid, 191.0 AS `E` UNION ALL SELECT 297 AS nid, 184.0 AS `E` UNION ALL SELECT 298 AS nid, 182.0 AS `E` UNION ALL SELECT 299 AS nid, 96.0 AS `E` UNION ALL SELECT 303 AS nid, 78.0 AS `E` UNION ALL SELECT 304 AS nid, 70.0 AS `E` UNION ALL SELECT 306 AS nid, 95.0 AS `E` UNION ALL SELECT 307 AS nid, 90.0 AS `E` UNION ALL SELECT 311 AS nid, 167.0 AS `E` UNION ALL SELECT 314 AS nid, 147.0 AS `E` UNION ALL SELECT 315 AS nid, 144.0 AS `E` UNION ALL SELECT 317 AS nid, 140.0 AS `E` UNION ALL SELECT 318 AS nid, 141.0 AS `E` UNION ALL SELECT 319 AS nid, 110.0 AS `E` UNION ALL SELECT 321 AS nid, 91.0 AS `E` UNION ALL SELECT 322 AS nid, 103.0 AS `E` UNION ALL SELECT 325 AS nid, 52.0 AS `E` UNION ALL SELECT 327 AS nid, 127.0 AS `E` UNION ALL SELECT 329 AS nid, 118.0 AS `E` UNION ALL SELECT 330 AS nid, 113.0 AS `E` UNION ALL SELECT 334 AS nid, 170.0 AS `E` UNION ALL SELECT 335 AS nid, 175.0 AS `E` UNION ALL SELECT 338 AS nid, 293.0 AS `E` UNION ALL SELECT 339 AS nid, 288.0 AS `E` UNION ALL SELECT 342 AS nid, 263.0 AS `E` UNION ALL SELECT 343 AS nid, 257.0 AS `E` UNION ALL SELECT 345 AS nid, 237.0 AS `E` UNION ALL SELECT 346 AS nid, 244.0 AS `E` UNION ALL SELECT 348 AS nid, 131.0 AS `E` UNION ALL SELECT 349 AS nid, 155.0 AS `E` UNION ALL SELECT 355 AS nid, 252.0 AS `E` UNION ALL SELECT 357 AS nid, 185.0 AS `E` UNION ALL SELECT 358 AS nid, 178.0 AS `E` UNION ALL SELECT 363 AS nid, 162.0 AS `E` UNION ALL SELECT 365 AS nid, 94.0 AS `E` UNION ALL SELECT 366 AS nid, 86.0 AS `E` UNION ALL SELECT 368 AS nid, 200.0 AS `E` UNION ALL SELECT 369 AS nid, 214.0 AS `E` UNION ALL SELECT 375 AS nid, 93.0 AS `E` UNION ALL SELECT 376 AS nid, 88.0 AS `E` UNION ALL SELECT 378 AS nid, 84.0 AS `E` UNION ALL SELECT 379 AS nid, 78.0 AS `E` UNION ALL SELECT 380 AS nid, 102.0 AS `E` UNION ALL SELECT 382 AS nid, 58.0 AS `E` UNION ALL SELECT 384 AS nid, 74.0 AS `E` UNION ALL SELECT 385 AS nid, 69.0 AS `E` UNION ALL SELECT 389 AS nid, 170.0 AS `E` UNION ALL SELECT 390 AS nid, 154.0 AS `E` UNION ALL SELECT 391 AS nid, 209.0 AS `E` UNION ALL SELECT 394 AS nid, 90.0 AS `E` UNION ALL SELECT 395 AS nid, 91.0 AS `E` UNION ALL SELECT 396 AS nid, 66.0 AS `E` UNION ALL SELECT 399 AS nid, 168.0 AS `E` UNION ALL SELECT 400 AS nid, 172.0 AS `E` UNION ALL SELECT 401 AS nid, 206.0 AS `E` UNION ALL SELECT 406 AS nid, 258.0 AS `E` UNION ALL SELECT 407 AS nid, 221.0 AS `E` UNION ALL SELECT 410 AS nid, 276.0 AS `E` UNION ALL SELECT 415 AS nid, 126.0 AS `E` UNION ALL SELECT 416 AS nid, 202.0 AS `E` UNION ALL SELECT 419 AS nid, 144.0 AS `E` UNION ALL SELECT 420 AS nid, 161.0 AS `E` UNION ALL SELECT 423 AS nid, 94.0 AS `E` UNION ALL SELECT 424 AS nid, 90.0 AS `E` UNION ALL SELECT 427 AS nid, 101.0 AS `E` UNION ALL SELECT 429 AS nid, 107.0 AS `E` UNION ALL SELECT 430 AS nid, 111.0 AS `E` UNION ALL SELECT 431 AS nid, 123.0 AS `E` UNION ALL SELECT 432 AS nid, 185.0 AS `E` UNION ALL SELECT 435 AS nid, 151.0 AS `E` UNION ALL SELECT 439 AS nid, 206.0 AS `E` UNION ALL SELECT 441 AS nid, 200.0 AS `E` UNION ALL SELECT 442 AS nid, 196.0 AS `E` UNION ALL SELECT 443 AS nid, 179.0 AS `E` UNION ALL SELECT 444 AS nid, 229.0 AS `E` UNION ALL SELECT 446 AS nid, 142.0 AS `E` UNION ALL SELECT 447 AS nid, 100.0 AS `E` UNION ALL SELECT 449 AS nid, 192.0 AS `E` UNION ALL SELECT 453 AS nid, 68.0 AS `E` UNION ALL SELECT 454 AS nid, 52.0 AS `E` UNION ALL SELECT 455 AS nid, 85.0 AS `E` UNION ALL SELECT 458 AS nid, 137.0 AS `E` UNION ALL SELECT 459 AS nid, 122.0 AS `E` UNION ALL SELECT 461 AS nid, 99.0 AS `E` UNION ALL SELECT 462 AS nid, 84.0 AS `E` UNION ALL SELECT 464 AS nid, 262.0 AS `E` UNION ALL SELECT 465 AS nid, 317.0 AS `E` UNION ALL SELECT 468 AS nid, 151.0 AS `E` UNION ALL SELECT 472 AS nid, 292.0 AS `E` UNION ALL SELECT 473 AS nid, 281.0 AS `E` UNION ALL SELECT 475 AS nid, 259.0 AS `E` UNION ALL SELECT 477 AS nid, 245.0 AS `E` UNION ALL SELECT 478 AS nid, 235.0 AS `E` UNION ALL SELECT 481 AS nid, 202.0 AS `E` UNION ALL SELECT 482 AS nid, 173.0 AS `E` UNION ALL SELECT 486 AS nid, 242.0 AS `E` UNION ALL SELECT 488 AS nid, 233.0 AS `E` UNION ALL SELECT 489 AS nid, 232.0 AS `E` UNION ALL SELECT 490 AS nid, 220.0 AS `E` UNION ALL SELECT 491 AS nid, 198.0 AS `E` UNION ALL SELECT 495 AS nid, 122.0 AS `E` UNION ALL SELECT 496 AS nid, 164.0 AS `E` UNION ALL SELECT 498 AS nid, 95.0 AS `E` UNION ALL SELECT 499 AS nid, 67.0 AS `E` UNION ALL SELECT 506 AS nid, 156.0 AS `E` UNION ALL SELECT 507 AS nid, 134.0 AS `E` UNION ALL SELECT 508 AS nid, 109.0 AS `E` UNION ALL SELECT 512 AS nid, 198.0 AS `E` UNION ALL SELECT 514 AS nid, 219.0 AS `E` UNION ALL SELECT 516 AS nid, 214.0 AS `E` UNION ALL SELECT 517 AS nid, 212.0 AS `E` UNION ALL SELECT 521 AS nid, 174.0 AS `E` UNION ALL SELECT 522 AS nid, 173.0 AS `E` UNION ALL SELECT 523 AS nid, 180.0 AS `E` UNION ALL SELECT 524 AS nid, 164.0 AS `E` UNION ALL SELECT 525 AS nid, 131.0 AS `E` UNION ALL SELECT 527 AS nid, 131.0 AS `E` UNION ALL SELECT 528 AS nid, 115.0 AS `E` UNION ALL SELECT 530 AS nid, 249.0 AS `E` UNION ALL SELECT 532 AS nid, 202.0 AS `E` UNION ALL SELECT 533 AS nid, 196.0 AS `E` UNION ALL SELECT 536 AS nid, 311.0 AS `E` UNION ALL SELECT 537 AS nid, 277.0 AS `E` UNION ALL SELECT 539 AS nid, 150.0 AS `E` UNION ALL SELECT 540 AS nid, 225.0 AS `E` UNION ALL SELECT 545 AS nid, 252.0 AS `E` UNION ALL SELECT 546 AS nid, 257.0 AS `E` UNION ALL SELECT 548 AS nid, 48.0 AS `E` UNION ALL SELECT 551 AS nid, 143.0 AS `E` UNION ALL SELECT 554 AS nid, 185.0 AS `E` UNION ALL SELECT 556 AS nid, 190.0 AS `E` UNION ALL SELECT 557 AS nid, 191.0 AS `E` UNION ALL SELECT 558 AS nid, 217.0 AS `E` UNION ALL SELECT 562 AS nid, 120.0 AS `E` UNION ALL SELECT 563 AS nid, 129.0 AS `E` UNION ALL SELECT 565 AS nid, 144.0 AS `E` UNION ALL SELECT 566 AS nid, 138.0 AS `E` UNION ALL SELECT 568 AS nid, 171.0 AS `E` UNION ALL SELECT 569 AS nid, 163.0 AS `E` UNION ALL SELECT 574 AS nid, 195.0 AS `E` UNION ALL SELECT 575 AS nid, 202.0 AS `E` UNION ALL SELECT 576 AS nid, 178.0 AS `E` UNION ALL SELECT 579 AS nid, 232.0 AS `E` UNION ALL SELECT 580 AS nid, 222.0 AS `E` UNION ALL SELECT 581 AS nid, 265.0 AS `E` UNION ALL SELECT 583 AS nid, 270.0 AS `E` UNION ALL SELECT 584 AS nid, 280.0 AS `E` UNION ALL SELECT 590 AS nid, 197.0 AS `E` UNION ALL SELECT 591 AS nid, 208.0 AS `E` UNION ALL SELECT 592 AS nid, 235.0 AS `E` UNION ALL SELECT 594 AS nid, 166.0 AS `E` UNION ALL SELECT 595 AS nid, 150.0 AS `E` UNION ALL SELECT 597 AS nid, 241.0 AS `E` UNION ALL SELECT 599 AS nid, 246.0 AS `E` UNION ALL SELECT 600 AS nid, 248.0 AS `E` UNION ALL SELECT 604 AS nid, 273.0 AS `E` UNION ALL SELECT 605 AS nid, 258.0 AS `E` UNION ALL SELECT 607 AS nid, 297.0 AS `E` UNION ALL SELECT 609 AS nid, 281.0 AS `E` UNION ALL SELECT 610 AS nid, 283.0 AS `E` UNION ALL SELECT 613 AS nid, 230.0 AS `E` UNION ALL SELECT 614 AS nid, 236.0 AS `E` UNION ALL SELECT 615 AS nid, 248.0 AS `E` UNION ALL SELECT 619 AS nid, 151.0 AS `E` UNION ALL SELECT 620 AS nid, 259.0 AS `E` UNION ALL SELECT 625 AS nid, 321.0 AS `E` UNION ALL SELECT 630 AS nid, 281.0 AS `E` UNION ALL SELECT 633 AS nid, 272.0 AS `E` UNION ALL SELECT 634 AS nid, 270.0 AS `E` UNION ALL SELECT 636 AS nid, 277.0 AS `E` UNION ALL SELECT 638 AS nid, 275.0 AS `E` UNION ALL SELECT 639 AS nid, 274.0 AS `E` UNION ALL SELECT 640 AS nid, 258.0 AS `E` UNION ALL SELECT 641 AS nid, 303.0 AS `E` UNION ALL SELECT 643 AS nid, 243.0 AS `E` UNION ALL SELECT 645 AS nid, 263.0 AS `E` UNION ALL SELECT 646 AS nid, 261.0 AS `E` UNION ALL SELECT 648 AS nid, 275.0 AS `E` UNION ALL SELECT 650 AS nid, 310.0 AS `E` UNION ALL SELECT 651 AS nid, 332.0 AS `E` UNION ALL SELECT 653 AS nid, 242.0 AS `E` UNION ALL SELECT 654 AS nid, 220.0 AS `E` UNION ALL SELECT 657 AS nid, 336.0 AS `E` UNION ALL SELECT 658 AS nid, 346.0 AS `E` UNION ALL SELECT 659 AS nid, 308.0 AS `E` UNION ALL SELECT 664 AS nid, 128.0 AS `E` UNION ALL SELECT 665 AS nid, 121.0 AS `E` UNION ALL SELECT 668 AS nid, 178.0 AS `E` UNION ALL SELECT 669 AS nid, 180.0 AS `E` UNION ALL SELECT 670 AS nid, 233.0 AS `E` UNION ALL SELECT 673 AS nid, 215.0 AS `E` UNION ALL SELECT 674 AS nid, 186.0 AS `E` UNION ALL SELECT 677 AS nid, 242.0 AS `E` UNION ALL SELECT 678 AS nid, 233.0 AS `E` UNION ALL SELECT 679 AS nid, 252.0 AS `E` UNION ALL SELECT 683 AS nid, 279.0 AS `E` UNION ALL SELECT 685 AS nid, 268.0 AS `E` UNION ALL SELECT 686 AS nid, 264.0 AS `E` UNION ALL SELECT 687 AS nid, 306.0 AS `E` UNION ALL SELECT 689 AS nid, 217.0 AS `E` UNION ALL SELECT 690 AS nid, 220.0 AS `E`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`E` AS `E` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid)
 SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`E` AS `Estimator` 
FROM `DT_Output`