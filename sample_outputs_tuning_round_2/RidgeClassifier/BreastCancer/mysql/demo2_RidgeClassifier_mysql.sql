-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, 0.34812896480168404 * `ADS`.`Feature_0` + -0.000190493121357827 * `ADS`.`Feature_1` + -0.01182956323819389 * `ADS`.`Feature_2` + -0.0019817875031782894 * `ADS`.`Feature_3` + -0.2614953027129089 * `ADS`.`Feature_4` + 0.004912774423552829 * `ADS`.`Feature_5` + -0.40747276019049306 * `ADS`.`Feature_6` + -0.6126947604989581 * `ADS`.`Feature_7` + -0.36060101260983823 * `ADS`.`Feature_8` + -0.022773501596777334 * `ADS`.`Feature_9` + -0.5333078368054971 * `ADS`.`Feature_10` + -0.01476402711727098 * `ADS`.`Feature_11` + -0.045089451710797084 * `ADS`.`Feature_12` + 0.0036301935174879243 * `ADS`.`Feature_13` + -0.0742558560885894 * `ADS`.`Feature_14` + 0.2344108550432329 * `ADS`.`Feature_15` + 0.5936443937672784 * `ADS`.`Feature_16` + -0.03345766831870063 * `ADS`.`Feature_17` + -0.06203021433367614 * `ADS`.`Feature_18` + 0.027702348323480102 * `ADS`.`Feature_19` + -0.536617624340637 * `ADS`.`Feature_20` + -0.01618045236991358 * `ADS`.`Feature_21` + 0.019894175953299054 * `ADS`.`Feature_22` + 0.002150517809002723 * `ADS`.`Feature_23` + -0.607853426449634 * `ADS`.`Feature_24` + -0.27442738020889257 * `ADS`.`Feature_25` + -0.4952847467113028 * `ADS`.`Feature_26` + -1.0108561471719124 * `ADS`.`Feature_27` + -0.7961251536940401 * `ADS`.`Feature_28` + -0.14106930314359595 * `ADS`.`Feature_29` + 3.85982025207 AS lincomb 
FROM `BreastCancer` AS `ADS`)
 SELECT linear_model_cte.`KEY` AS `KEY`, -linear_model_cte.lincomb AS `Score_0`, linear_model_cte.lincomb AS `Score_1`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS `Decision`, NULL AS `DecisionProba` 
FROM linear_model_cte