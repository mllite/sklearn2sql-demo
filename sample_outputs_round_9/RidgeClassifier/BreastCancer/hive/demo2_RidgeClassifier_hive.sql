-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `linear_model_cte` AS 
(SELECT `ADS`.`KEY` AS `KEY`, 0.8326264467299787 * `ADS`.`Feature_0` + 0.022696152695191135 * `ADS`.`Feature_1` + -0.09527423347465785 * `ADS`.`Feature_2` + -0.001901380527549941 * `ADS`.`Feature_3` + -0.14830129679648052 * `ADS`.`Feature_4` + -0.13664142457970266 * `ADS`.`Feature_5` + -0.3322726042499595 * `ADS`.`Feature_6` + -0.2824095330740666 * `ADS`.`Feature_7` + -0.18229547755509495 * `ADS`.`Feature_8` + -0.04072523511403785 * `ADS`.`Feature_9` + -0.3696470290949905 * `ADS`.`Feature_10` + 0.0678100488001523 * `ADS`.`Feature_11` + -0.03976148882444894 * `ADS`.`Feature_12` + 0.005023394302757837 * `ADS`.`Feature_13` + -0.034155424979624434 * `ADS`.`Feature_14` + -0.007315512537226847 * `ADS`.`Feature_15` + 0.05555616246831209 * `ADS`.`Feature_16` + -0.02010458039652533 * `ADS`.`Feature_17` + -0.0724731868072433 * `ADS`.`Feature_18` + 0.0001515669998497258 * `ADS`.`Feature_19` + -0.4671857461446528 * `ADS`.`Feature_20` + -0.02994210045302059 * `ADS`.`Feature_21` + 0.02371695998189591 * `ADS`.`Feature_22` + 0.0015035159520028255 * `ADS`.`Feature_23` + -0.2498276297643757 * `ADS`.`Feature_24` + -0.050510588486700696 * `ADS`.`Feature_25` + -0.42123927751304246 * `ADS`.`Feature_26` + -0.3972174411032391 * `ADS`.`Feature_27` + -0.31526060885694407 * `ADS`.`Feature_28` + -0.005934821952060523 * `ADS`.`Feature_29` + 2.92322344291 AS `lincomb` 
FROM `BreastCancer` AS `ADS`)
 SELECT `linear_model_cte`.`KEY` AS `KEY`, -`linear_model_cte`.`lincomb` AS `Score_0`, `linear_model_cte`.`lincomb` AS `Score_1`, CAST(NULL AS FLOAT) AS `Proba_0`, CAST(NULL AS FLOAT) AS `Proba_1`, CAST(NULL AS FLOAT) AS `LogProba_0`, CAST(NULL AS FLOAT) AS `LogProba_1`, CASE WHEN (`linear_model_cte`.`lincomb` > 0.0) THEN 1 ELSE 0 END AS `Decision`, CAST(NULL AS FLOAT) AS `DecisionProba` 
FROM `linear_model_cte`