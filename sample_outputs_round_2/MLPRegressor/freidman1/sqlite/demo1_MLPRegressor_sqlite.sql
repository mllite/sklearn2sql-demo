-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", "ADS"."Feature_0" AS "Feature_0", "ADS"."Feature_1" AS "Feature_1", "ADS"."Feature_2" AS "Feature_2", "ADS"."Feature_3" AS "Feature_3", "ADS"."Feature_4" AS "Feature_4", "ADS"."Feature_5" AS "Feature_5", "ADS"."Feature_6" AS "Feature_6", "ADS"."Feature_7" AS "Feature_7", "ADS"."Feature_8" AS "Feature_8", "ADS"."Feature_9" AS "Feature_9" 
FROM "INPUT_DATA" AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", 0.316072601385 * "IL"."Feature_0" + 0.782910872884 * "IL"."Feature_1" + -0.272257791962 * "IL"."Feature_2" + -0.164900203188 * "IL"."Feature_3" + 0.216545547715 * "IL"."Feature_4" + 0.105085872609 * "IL"."Feature_5" + 0.0497112683141 * "IL"."Feature_6" + 0.431245673602 * "IL"."Feature_7" + -0.0769106584517 * "IL"."Feature_8" + 0.803520581887 * "IL"."Feature_9" + 0.0544746011156 AS "NEUR_1_1", 0.205105889112 * "IL"."Feature_0" + -0.175021702617 * "IL"."Feature_1" + 0.339183530013 * "IL"."Feature_2" + 0.115688251288 * "IL"."Feature_3" + 0.0351936202293 * "IL"."Feature_4" + -0.116744272774 * "IL"."Feature_5" + -0.200890203173 * "IL"."Feature_6" + -0.323031376392 * "IL"."Feature_7" + -0.19404934834 * "IL"."Feature_8" + 0.0789338698008 * "IL"."Feature_9" + -0.142732239258 AS "NEUR_1_2", 0.26974372617 * "IL"."Feature_0" + 0.484016420953 * "IL"."Feature_1" + 0.466187033252 * "IL"."Feature_2" + -0.254695531505 * "IL"."Feature_3" + -0.396642586034 * "IL"."Feature_4" + 0.372028557227 * "IL"."Feature_5" + 0.23038692129 * "IL"."Feature_6" + 0.125149001513 * "IL"."Feature_7" + 0.513961878535 * "IL"."Feature_8" + 0.43111630296 * "IL"."Feature_9" + -0.351555548196 AS "NEUR_1_3", 0.269641214015 * "IL"."Feature_0" + 0.250462159458 * "IL"."Feature_1" + 0.623421026112 * "IL"."Feature_2" + 0.72215298776 * "IL"."Feature_3" + 0.353662491774 * "IL"."Feature_4" + -0.28370453065 * "IL"."Feature_5" + 0.148496909106 * "IL"."Feature_6" + -0.0693358014197 * "IL"."Feature_7" + -0.244311545213 * "IL"."Feature_8" + -0.30748724042 * "IL"."Feature_9" + 0.438463208658 AS "NEUR_1_4", -0.200159827588 * "IL"."Feature_0" + -0.0322878285101 * "IL"."Feature_1" + 0.434499472648 * "IL"."Feature_2" + -0.0888708551642 * "IL"."Feature_3" + 0.0141477894126 * "IL"."Feature_4" + 0.0777814112649 * "IL"."Feature_5" + 0.447609380087 * "IL"."Feature_6" + -0.499317776607 * "IL"."Feature_7" + 0.275132459706 * "IL"."Feature_8" + -0.358183984586 * "IL"."Feature_9" + -0.035932847503 AS "NEUR_1_5", 0.12099238269 * "IL"."Feature_0" + 0.443717947665 * "IL"."Feature_1" + 0.287920837771 * "IL"."Feature_2" + -0.125230372571 * "IL"."Feature_3" + 0.0745950754542 * "IL"."Feature_4" + 0.148593255081 * "IL"."Feature_5" + -0.484809678487 * "IL"."Feature_6" + -0.481195548848 * "IL"."Feature_7" + -0.511283168682 * "IL"."Feature_8" + -0.512692409045 * "IL"."Feature_9" + -0.32219527211 AS "NEUR_1_6", 0.156878481475 * "IL"."Feature_0" + -0.253502387893 * "IL"."Feature_1" + 0.195712933827 * "IL"."Feature_2" + -0.0131012864948 * "IL"."Feature_3" + 0.736523250605 * "IL"."Feature_4" + -0.0872598788101 * "IL"."Feature_5" + -0.0991443467854 * "IL"."Feature_6" + 0.415805876813 * "IL"."Feature_7" + 0.778192073622 * "IL"."Feature_8" + -0.00590839684614 * "IL"."Feature_9" + 0.263212346935 AS "NEUR_1_7", 0.287017618831 * "IL"."Feature_0" + -0.309730767084 * "IL"."Feature_1" + 0.170859099962 * "IL"."Feature_2" + 0.164544220902 * "IL"."Feature_3" + 0.0778202930376 * "IL"."Feature_4" + -0.264899198303 * "IL"."Feature_5" + -0.230689040294 * "IL"."Feature_6" + -0.255067749152 * "IL"."Feature_7" + -0.000416531957414 * "IL"."Feature_8" + -0.275774928992 * "IL"."Feature_9" + -0.468877110841 AS "NEUR_1_8" 
FROM "IL"), 
"HL_1" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3", CASE WHEN ("HL_BA_1"."NEUR_1_4" >= 0.0) THEN "HL_BA_1"."NEUR_1_4" ELSE 0.0 END AS "NEUR_1_4", CASE WHEN ("HL_BA_1"."NEUR_1_5" >= 0.0) THEN "HL_BA_1"."NEUR_1_5" ELSE 0.0 END AS "NEUR_1_5", CASE WHEN ("HL_BA_1"."NEUR_1_6" >= 0.0) THEN "HL_BA_1"."NEUR_1_6" ELSE 0.0 END AS "NEUR_1_6", CASE WHEN ("HL_BA_1"."NEUR_1_7" >= 0.0) THEN "HL_BA_1"."NEUR_1_7" ELSE 0.0 END AS "NEUR_1_7", CASE WHEN ("HL_BA_1"."NEUR_1_8" >= 0.0) THEN "HL_BA_1"."NEUR_1_8" ELSE 0.0 END AS "NEUR_1_8" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1"."KEY" AS "KEY", -0.17383742759 * "HL_1"."NEUR_1_1" + 0.137503982212 * "HL_1"."NEUR_1_2" + 0.0362482991999 * "HL_1"."NEUR_1_3" + -0.307009014431 * "HL_1"."NEUR_1_4" + -0.0195880775432 * "HL_1"."NEUR_1_5" + 0.187641845644 * "HL_1"."NEUR_1_6" + -0.0308224084309 * "HL_1"."NEUR_1_7" + -0.174970274883 * "HL_1"."NEUR_1_8" + 0.32805924514 AS "NEUR_2_1", 0.222980604157 * "HL_1"."NEUR_1_1" + -0.303994901228 * "HL_1"."NEUR_1_2" + -0.357389883616 * "HL_1"."NEUR_1_3" + -0.0903395060834 * "HL_1"."NEUR_1_4" + 0.0756065127625 * "HL_1"."NEUR_1_5" + 0.499593450462 * "HL_1"."NEUR_1_6" + -0.261182393323 * "HL_1"."NEUR_1_7" + -0.357444801457 * "HL_1"."NEUR_1_8" + -0.00972465145771 AS "NEUR_2_2", -0.294160719344 * "HL_1"."NEUR_1_1" + 0.229207680929 * "HL_1"."NEUR_1_2" + 0.280602648303 * "HL_1"."NEUR_1_3" + -0.570780180752 * "HL_1"."NEUR_1_4" + 0.113696888352 * "HL_1"."NEUR_1_5" + -0.41634249972 * "HL_1"."NEUR_1_6" + 0.186176817583 * "HL_1"."NEUR_1_7" + 0.168946246844 * "HL_1"."NEUR_1_8" + -0.0188435203533 AS "NEUR_2_3", 0.0446023662511 * "HL_1"."NEUR_1_1" + 0.47568743635 * "HL_1"."NEUR_1_2" + -0.119772319788 * "HL_1"."NEUR_1_3" + -0.287241764779 * "HL_1"."NEUR_1_4" + -0.119870652257 * "HL_1"."NEUR_1_5" + 0.361795981903 * "HL_1"."NEUR_1_6" + 0.317910724557 * "HL_1"."NEUR_1_7" + -0.152293893494 * "HL_1"."NEUR_1_8" + 0.0331319544649 AS "NEUR_2_4", -0.657885497418 * "HL_1"."NEUR_1_1" + -0.333941779953 * "HL_1"."NEUR_1_2" + 0.222306453068 * "HL_1"."NEUR_1_3" + -0.0599324713778 * "HL_1"."NEUR_1_4" + 0.334108812004 * "HL_1"."NEUR_1_5" + -0.416050992304 * "HL_1"."NEUR_1_6" + 0.241593843168 * "HL_1"."NEUR_1_7" + -0.0495862930321 * "HL_1"."NEUR_1_8" + 0.122052105321 AS "NEUR_2_5", 0.395470257705 * "HL_1"."NEUR_1_1" + 0.180276311343 * "HL_1"."NEUR_1_2" + 0.240926805308 * "HL_1"."NEUR_1_3" + 0.0708904373593 * "HL_1"."NEUR_1_4" + 0.135025838359 * "HL_1"."NEUR_1_5" + 0.0248384322221 * "HL_1"."NEUR_1_6" + 0.551016267834 * "HL_1"."NEUR_1_7" + 0.302439123374 * "HL_1"."NEUR_1_8" + 0.0195769869563 AS "NEUR_2_6", -0.3162498335 * "HL_1"."NEUR_1_1" + 0.081767146338 * "HL_1"."NEUR_1_2" + 0.373249953925 * "HL_1"."NEUR_1_3" + 0.0487023218295 * "HL_1"."NEUR_1_4" + -0.118379799202 * "HL_1"."NEUR_1_5" + -0.249836016446 * "HL_1"."NEUR_1_6" + -0.364508641915 * "HL_1"."NEUR_1_7" + 0.0883322021061 * "HL_1"."NEUR_1_8" + -0.16084039283 AS "NEUR_2_7", -0.377442386555 * "HL_1"."NEUR_1_1" + 0.0533329304089 * "HL_1"."NEUR_1_2" + 0.176180920365 * "HL_1"."NEUR_1_3" + -0.133317681 * "HL_1"."NEUR_1_4" + 0.388570483657 * "HL_1"."NEUR_1_5" + 0.356281248657 * "HL_1"."NEUR_1_6" + -0.172479837318 * "HL_1"."NEUR_1_7" + -0.34365737477 * "HL_1"."NEUR_1_8" + -0.356976658557 AS "NEUR_2_8", -0.0279612003054 * "HL_1"."NEUR_1_1" + -0.318386135233 * "HL_1"."NEUR_1_2" + 0.217011269978 * "HL_1"."NEUR_1_3" + -0.422061609152 * "HL_1"."NEUR_1_4" + 0.311037743141 * "HL_1"."NEUR_1_5" + 0.324971454252 * "HL_1"."NEUR_1_6" + 0.202155181041 * "HL_1"."NEUR_1_7" + -0.209235838489 * "HL_1"."NEUR_1_8" + -0.369560862834 AS "NEUR_2_9", -0.677218230183 * "HL_1"."NEUR_1_1" + 0.442093572865 * "HL_1"."NEUR_1_2" + -0.0821581076311 * "HL_1"."NEUR_1_3" + -0.374543956081 * "HL_1"."NEUR_1_4" + 0.134732166519 * "HL_1"."NEUR_1_5" + 0.0280297327237 * "HL_1"."NEUR_1_6" + -0.477898729755 * "HL_1"."NEUR_1_7" + 0.0281581172667 * "HL_1"."NEUR_1_8" + 0.381093212483 AS "NEUR_2_10", 0.698414994087 * "HL_1"."NEUR_1_1" + 0.097706235536 * "HL_1"."NEUR_1_2" + 0.804887706642 * "HL_1"."NEUR_1_3" + 0.397872930477 * "HL_1"."NEUR_1_4" + -0.253663193924 * "HL_1"."NEUR_1_5" + -0.0396427373618 * "HL_1"."NEUR_1_6" + 0.370575670388 * "HL_1"."NEUR_1_7" + 0.00808739372178 * "HL_1"."NEUR_1_8" + 0.505077180765 AS "NEUR_2_11", -0.59644749226 * "HL_1"."NEUR_1_1" + 0.34413052089 * "HL_1"."NEUR_1_2" + 0.124525860161 * "HL_1"."NEUR_1_3" + 0.0385390447884 * "HL_1"."NEUR_1_4" + 0.411887744477 * "HL_1"."NEUR_1_5" + -0.510824730264 * "HL_1"."NEUR_1_6" + -0.521124630994 * "HL_1"."NEUR_1_7" + -0.13930820104 * "HL_1"."NEUR_1_8" + -0.0611799637455 AS "NEUR_2_12" 
FROM "HL_1"), 
"HL_2" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5", CASE WHEN ("HL_BA_2"."NEUR_2_6" >= 0.0) THEN "HL_BA_2"."NEUR_2_6" ELSE 0.0 END AS "NEUR_2_6", CASE WHEN ("HL_BA_2"."NEUR_2_7" >= 0.0) THEN "HL_BA_2"."NEUR_2_7" ELSE 0.0 END AS "NEUR_2_7", CASE WHEN ("HL_BA_2"."NEUR_2_8" >= 0.0) THEN "HL_BA_2"."NEUR_2_8" ELSE 0.0 END AS "NEUR_2_8", CASE WHEN ("HL_BA_2"."NEUR_2_9" >= 0.0) THEN "HL_BA_2"."NEUR_2_9" ELSE 0.0 END AS "NEUR_2_9", CASE WHEN ("HL_BA_2"."NEUR_2_10" >= 0.0) THEN "HL_BA_2"."NEUR_2_10" ELSE 0.0 END AS "NEUR_2_10", CASE WHEN ("HL_BA_2"."NEUR_2_11" >= 0.0) THEN "HL_BA_2"."NEUR_2_11" ELSE 0.0 END AS "NEUR_2_11", CASE WHEN ("HL_BA_2"."NEUR_2_12" >= 0.0) THEN "HL_BA_2"."NEUR_2_12" ELSE 0.0 END AS "NEUR_2_12" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2"."KEY" AS "KEY", -0.255159213806 * "HL_2"."NEUR_2_1" + -0.201186159705 * "HL_2"."NEUR_2_2" + -0.556103029702 * "HL_2"."NEUR_2_3" + 0.0225812291161 * "HL_2"."NEUR_2_4" + -0.144363565866 * "HL_2"."NEUR_2_5" + 0.437474571019 * "HL_2"."NEUR_2_6" + -0.14687169603 * "HL_2"."NEUR_2_7" + -0.401172856711 * "HL_2"."NEUR_2_8" + -0.622796716553 * "HL_2"."NEUR_2_9" + -0.507639310315 * "HL_2"."NEUR_2_10" + 0.56062114872 * "HL_2"."NEUR_2_11" + 0.010625774555 * "HL_2"."NEUR_2_12" + 0.242114014804 AS "NEUR_3_1" 
FROM "HL_2"), 
"OL" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL"."KEY" AS "KEY", "OL"."NEUR_3_1" AS "Estimator" 
FROM "OL"