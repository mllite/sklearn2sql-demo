-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_rbf_Pipeline
-- Dataset : diabetes
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20221018185913_LMNSFW8_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185913_LMNSFW8_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 FLOAT, 
	imputer_output_3 FLOAT, 
	imputer_output_4 FLOAT, 
	imputer_output_5 FLOAT, 
	imputer_output_6 FLOAT, 
	imputer_output_7 FLOAT, 
	imputer_output_8 FLOAT, 
	imputer_output_9 FLOAT, 
	imputer_output_10 FLOAT, 
	imputer_output_11 FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185913_LMNSFW8_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20221018185913_LMNSFW8_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5, imputer_output_6, imputer_output_7, imputer_output_8, imputer_output_9, imputer_output_10, imputer_output_11) SELECT "T"."KEY", "T".imputer_output_2, "T".imputer_output_3, "T".imputer_output_4, "T".imputer_output_5, "T".imputer_output_6, "T".imputer_output_7, "T".imputer_output_8, "T".imputer_output_9, "T".imputer_output_10, "T".imputer_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".imputer_output_2 AS imputer_output_2, "ADS_imp_1_OUT".imputer_output_3 AS imputer_output_3, "ADS_imp_1_OUT".imputer_output_4 AS imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 AS imputer_output_5, "ADS_imp_1_OUT".imputer_output_6 AS imputer_output_6, "ADS_imp_1_OUT".imputer_output_7 AS imputer_output_7, "ADS_imp_1_OUT".imputer_output_8 AS imputer_output_8, "ADS_imp_1_OUT".imputer_output_9 AS imputer_output_9, "ADS_imp_1_OUT".imputer_output_10 AS imputer_output_10, "ADS_imp_1_OUT".imputer_output_11 AS imputer_output_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.00429329883894241 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.0007936290934575718 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0002824745489553225 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.002204848500467522 ELSE "ADS"."Feature_3" END AS imputer_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0018434032681275327 ELSE "ADS"."Feature_4" END AS imputer_output_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.004385424578350814 ELSE "ADS"."Feature_5" END AS imputer_output_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.002976462563150294 ELSE "ADS"."Feature_6" END AS imputer_output_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0012897359179624534 ELSE "ADS"."Feature_7" END AS imputer_output_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -8.922896295954593e-05 ELSE "ADS"."Feature_8" END AS imputer_output_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.0023203295749163045 ELSE "ADS"."Feature_9" END AS imputer_output_11 
FROM diabetes AS "ADS") AS "ADS_imp_1_OUT") AS "T"

-- Code For temporary table TMP_20221018185913_LMNSFW8_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185913_LMNSFW8_ADS_imp_1_OUT_KEY" ON "TMP_20221018185913_LMNSFW8_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20221018185913_GQ9EN3O_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20221018185913_GQ9EN3O_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 FLOAT, 
	scaler_output_3 FLOAT, 
	scaler_output_4 FLOAT, 
	scaler_output_5 FLOAT, 
	scaler_output_6 FLOAT, 
	scaler_output_7 FLOAT, 
	scaler_output_8 FLOAT, 
	scaler_output_9 FLOAT, 
	scaler_output_10 FLOAT, 
	scaler_output_11 FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20221018185913_GQ9EN3O_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20221018185913_GQ9EN3O_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5, scaler_output_6, scaler_output_7, scaler_output_8, scaler_output_9, scaler_output_10, scaler_output_11) SELECT "T"."KEY", "T".scaler_output_2, "T".scaler_output_3, "T".scaler_output_4, "T".scaler_output_5, "T".scaler_output_6, "T".scaler_output_7, "T".scaler_output_8, "T".scaler_output_9, "T".scaler_output_10, "T".scaler_output_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "ADS_sca_2_OUT".scaler_output_2 AS scaler_output_2, "ADS_sca_2_OUT".scaler_output_3 AS scaler_output_3, "ADS_sca_2_OUT".scaler_output_4 AS scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 AS scaler_output_5, "ADS_sca_2_OUT".scaler_output_6 AS scaler_output_6, "ADS_sca_2_OUT".scaler_output_7 AS scaler_output_7, "ADS_sca_2_OUT".scaler_output_8 AS scaler_output_8, "ADS_sca_2_OUT".scaler_output_9 AS scaler_output_9, "ADS_sca_2_OUT".scaler_output_10 AS scaler_output_10, "ADS_sca_2_OUT".scaler_output_11 AS scaler_output_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 0.00429329883894241) / 0.05047660201166283 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - -0.0007936290934575718) / 0.047508118007302154 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.0002824745489553225) / 0.04681700532133699 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - -0.002204848500467522) / 0.051537479874891316 AS scaler_output_5, (CAST("ADS_imp_1_OUT".imputer_output_6 AS FLOAT) - 0.0018434032681275327) / 0.049100692182748026 AS scaler_output_6, (CAST("ADS_imp_1_OUT".imputer_output_7 AS FLOAT) - 0.004385424578350814) / 0.04747780965210154 AS scaler_output_7, (CAST("ADS_imp_1_OUT".imputer_output_8 AS FLOAT) - -0.002976462563150294) / 0.04229552934510291 AS scaler_output_8, (CAST("ADS_imp_1_OUT".imputer_output_9 AS FLOAT) - 0.0012897359179624534) / 0.04318277829796083 AS scaler_output_9, (CAST("ADS_imp_1_OUT".imputer_output_10 AS FLOAT) - -8.922896295954593e-05) / 0.044446050216828854 AS scaler_output_10, (CAST("ADS_imp_1_OUT".imputer_output_11 AS FLOAT) - -0.0023203295749163045) / 0.046930272417794835 AS scaler_output_11 
FROM "TMP_20221018185913_LMNSFW8_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "T"

-- Code For temporary table TMP_20221018185913_GQ9EN3O_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20221018185913_GQ9EN3O_ADS_sca_2_OUT_KEY" ON "TMP_20221018185913_GQ9EN3O_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS FLOAT) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS FLOAT) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS FLOAT) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS FLOAT) AS scaler_output_5, CAST("ADS_sca_2_OUT".scaler_output_6 AS FLOAT) AS scaler_output_6, CAST("ADS_sca_2_OUT".scaler_output_7 AS FLOAT) AS scaler_output_7, CAST("ADS_sca_2_OUT".scaler_output_8 AS FLOAT) AS scaler_output_8, CAST("ADS_sca_2_OUT".scaler_output_9 AS FLOAT) AS scaler_output_9, CAST("ADS_sca_2_OUT".scaler_output_10 AS FLOAT) AS scaler_output_10, CAST("ADS_sca_2_OUT".scaler_output_11 AS FLOAT) AS scaler_output_11 
FROM "TMP_20221018185913_GQ9EN3O_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, 0.1 AS dual_coeff, 1.3169557974266166 AS sv_0, -0.9229582069908976 AS sv_1, 0.25277944392179286 AS sv_2, 0.8679962617146524 AS sv_3, 1.4157262414468508 AS sv_4, 1.0342026973947742 AS sv_5, 1.3074242283667845 AS sv_6, -0.08989690031891825 AS sv_7, 0.5733762118409873 AS sv_8, -0.061782612608161785 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 0.1 AS dual_coeff, -0.12234015604509556 AS sv_0, 1.0834726777719232 AS sv_1, 1.5189788442586423 AS sv_2, 1.9368419978140905 AS sv_3, 1.7520032584175993 AS sv_4, 1.4959003301602987 AS sv_5, -0.4334868613359911 AS sv_6, 1.6191696456681217 AS sv_7, 1.6090991378543316 AS sv_8, 0.5560435134734563 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 0.1 AS dual_coeff, 0.16551903464924692 AS sv_0, -0.9229582069908976 AS sv_1, 0.7132155894988289 AS sv_2, 0.6896326295030585 AS sv_3, 0.5750336990199797 AS sv_4, 0.4801655380761456 AS sv_5, 0.001740911089702749 AS sv_6, 0.1750084143090726 AS sv_7, 0.7038157724240542 AS sv_8, 0.6443043886279731 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 0.1 AS dual_coeff, 0.45337822534358935 AS sv_0, -0.9229582069908976 AS sv_1, 1.979414989835678 AS sv_2, -0.9804388331523133 AS sv_3, 0.1266643430589819 AS sv_4, 0.7439927567993024 AS sv_5, -0.6075779703062687 AS sv_6, 0.45700439439693424 AS sv_7, -1.086036499916234 AS sv_8, 0.46778263831893935 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -0.1 AS dual_coeff, 0.8132022137115175 AS sv_0, 1.0834726777719232 AS sv_1, -0.18463489437639116 AS sv_2, -0.6016666254220749 AS sv_3, -0.18158958916420412 AS sv_4, -0.06727594077440488 AS sv_5, -0.8687146337616849 AS sv_6, 0.7646363726746016 AS sv_7, 0.6755128489013138 AS sv_8, 0.6443043886279731 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 0.1 AS dual_coeff, 1.2449909997530308 AS sv_0, 1.0834726777719232 AS sv_1, -0.1385912798186877 AS sv_2, 1.2688134127519415 AS sv_3, -0.9101897926008257 AS sv_4, -2.1119368858788694 AS sv_5, 1.3074242283667845 AS sv_6, -1.7989634463059583 AS sv_7, 1.3389908024960009 AS sv_8, 1.173869639555074 AS sv_9 UNION ALL SELECT 6 AS sv_idx, 0.1 AS dual_coeff, 0.5253430230171751 AS sv_0, 1.0834726777719232 AS sv_1, 1.265738964191272 AS sv_2, 1.1352076957395119 AS sv_3, -0.48984352138739007 AS sv_4, -0.06727594077440488 AS sv_5, -0.6946235247914075 AS sv_6, -0.08989690031891825 AS sv_7, -0.5558694179866316 AS sv_8, -0.32656523807171234 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 0.1 AS dual_coeff, 0.23748383232283254 AS sv_0, -0.9229582069908976 AS sv_1, 1.5650224588163464 AS sv_2, -0.7573172857415554 AS sv_3, -0.1255434196690794 AS sv_4, -0.37727292277411417 AS sv_5, -0.2593957523657136 AS sv_6, -0.05571556939917744 AS sv_7, 0.9671560173747742 AS sv_8, 0.9973478892460405 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.1 AS dual_coeff, -1.4896713118432223 AS sv_0, 1.0834726777719232 AS sv_1, -1.6119869456652034 AS sv_2, -0.7352723424345046 AS sv_3, -1.0783283010862 AS sv_4, -0.4102513251145088 AS sv_5, -0.8687146337616849 AS sv_6, -0.08989690031891825 AS sv_7, -2.1677004032418536 AS sv_8, -0.6796087386897799 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 0.1 AS dual_coeff, 1.1730262020794457 AS sv_0, 1.0834726777719232 AS sv_1, -0.09254766526098426 AS sv_2, -0.20084947438478568 AS sv_3, 2.0602571906407854 AS sv_4, 0.9352674903735905 AS sv_5, 1.3944697828519232 AS sv_6, -0.08989690031891825 AS sv_7, 1.9029983364636627 AS sv_8, -0.32656523807171234 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -0.1 AS dual_coeff, -1.8494953002111507 AS sv_0, -0.9229582069908976 AS sv_1, -1.31270345104013 AS sv_2, -0.4680609084096452 AS sv_3, -1.162397555328887 AS sv_4, -1.2413070640924526 AS sv_5, 1.046287564911368 AS sv_6, -1.7989634463059583 AS sv_7, -2.1115047434938026 AS sv_8, -1.120913114462364 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -0.1 AS dual_coeff, -1.2737769188224657 AS sv_0, 1.0834726777719232 AS sv_1, -0.23067850893409542 AS sv_2, -0.2456073895839498 AS sv_3, -1.0503052163386375 AS sv_4, -0.5883346977526394 AS sv_5, -1.3039424061873788 AS sv_6, 0.3373697361778418 AS sv_7, -0.22115658328291182 AS sv_8, -0.6796087386897799 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -0.1 AS dual_coeff, 0.02158943930207569 AS sv_0, 1.0834726777719232 AS sv_1, -0.6220492326745759 AS sv_2, -0.1340466158785708 AS sv_3, -0.6860051146203267 AS sv_4, -0.7004612657099811 AS sv_5, 0.26287757454511906 AS sv_6, -0.9444301733124384 AS sv_7, -0.4055357734781588 AS sv_8, 0.20300001285538877 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.1 AS dual_coeff, -1.7055657048639792 AS sv_0, -0.9229582069908976 AS sv_1, -1.750117789338314 AS sv_2, -0.7352723424345046 AS sv_3, 0.01457200406873243 AS sv_4, -0.48280381026337704 AS sv_5, 1.7426520007924782 AS sv_6, -0.9444301733124384 AS sv_7, -0.2433066973441885 AS sv_8, -1.915260990853016 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -0.1 AS dual_coeff, -0.7700233351073661 AS sv_0, -0.9229582069908976 AS sv_1, -0.8062236909053905 AS sv_2, -1.136089493471794 AS sv_3, 0.37887210578704317 AS sv_4, 0.8231409224162486 AS sv_5, -0.2593957523657136 AS sv_6, -0.08989690031891825 AS sv_7, -0.6897955705978615 AS sv_8, -1.4739566150804313 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -0.1 AS dual_coeff, -0.12234015604509556 AS sv_0, 1.0834726777719232 AS sv_1, -0.5299620035591683 AS sv_2, 1.068404837233297 AS sv_3, 0.518987529524855 AS sv_4, 0.5395266622888554 AS sv_5, 0.7851509014559519 AS sv_6, -0.08989690031891825 AS sv_7, -0.4793694870157448 AS sv_8, 0.8208261389370068 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -0.1 AS dual_coeff, -0.050375358371509936 AS sv_0, -0.9229582069908976 AS sv_1, -0.852267305463094 AS sv_2, -1.9156788522393216 AS sv_3, -0.6299589451252019 AS sv_4, -0.7268439875822967 AS sv_5, 1.1333331193965068 AS sv_6, -1.192244822480559 AS sv_7, -1.5353966842519247 AS sv_8, -2.7096088672436673 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -0.1 AS dual_coeff, -2.065389693231907 AS sv_0, -0.9229582069908976 AS sv_1, -1.4508342947132402 AS sv_2, -2.071329512558802 AS sv_3, -1.55472074179476 AS sv_4, -1.6238565312410296 AS sv_5, 0.43696868351539664 AS sv_6, -0.9444301733124384 AS sv_7, -1.12008204560301 AS sv_8, -0.15004348776267862 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 0.1 AS dual_coeff, -1.9934248955583218 AS sv_0, -0.9229582069908976 AS sv_1, -0.7832018836265384 AS sv_2, -1.4033009274966535 AS sv_3, -0.8261205383581387 AS sv_4, -0.6740785438376656 AS sv_5, 0.43696868351539664 AS sv_6, -0.9444301733124384 AS sv_7, -1.6650158702401299 AS sv_8, 0.02647826254635507 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, -0.9859177281281228 AS sv_0, -0.9229582069908976 AS sv_1, -0.8292454981842419 AS sv_2, -0.4680609084096452 AS sv_3, -0.34972809764957824 AS sv_4, -0.07387162124248389 AS sv_5, -0.6946235247914075 AS sv_6, -0.08989690031891825 AS sv_7, 0.027827106257720825 AS sv_8, -0.7678696138442966 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -0.1 AS dual_coeff, 0.02158943930207569 AS sv_0, -0.9229582069908976 AS sv_1, -1.0364417636939085 AS sv_2, -0.20084947438478568 AS sv_3, -0.013451080678829929 AS sv_4, -0.2321679524763778 AS sv_5, 1.5685608918222005 AS sv_6, -0.9444301733124384 AS sv_7, -1.154537778587216 AS sv_8, -1.209173989616881 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, -0.12234015604509556 AS sv_0, -0.9229582069908976 AS sv_1, 1.4499134224220873 AS sv_2, -0.06724375737235593 AS sv_3, 2.3965342076115332 AS sv_4, 2.6501444120741096 AS sv_5, -0.52053241582113 AS sv_6, 1.9780736203254 AS sv_7, 1.039964262668781 AS sv_8, 0.02647826254635507 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -0.1 AS dual_coeff, 0.7412374160379318 AS sv_0, -0.9229582069908976 AS sv_1, -0.967376341857353 AS sv_2, 0.7123456013951718 AS sv_3, 0.8552645464956032 AS sv_4, -0.4234426860506664 AS sv_5, 0.9592420104262294 AS sv_6, -0.3633475476768446 AS sv_7, 2.0246188701519627 AS sv_8, 0.20300001285538877 AS sv_9 UNION ALL SELECT 23 AS sv_idx, 0.1 AS dual_coeff, -0.9139529304545374 AS sv_0, 1.0834726777719232 AS sv_1, 0.09162679296983034 AS sv_2, -1.0024837764593642 AS sv_3, -0.938212877348388 AS sv_4, -0.6674828633695866 AS sv_5, -1.8262157330982114 AS sv_6, 1.6191696456681217 AS sv_7, 0.8264617743559317 AS sv_8, 0.46778263831893935 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, 0.02158943930207569 AS sv_0, -0.9229582069908976 AS sv_1, -0.06952585798213214 AS sv_2, 1.0016019787270822 AS sv_3, 1.4717724109419754 AS sv_4, 1.396965123139115 AS sv_5, 1.1333331193965068 AS sv_6, -0.08989690031891825 AS sv_7, -0.03165005186977798 AS sv_8, -0.15004348776267862 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 0.1 AS dual_coeff, -1.3457417164960512 AS sv_0, 1.0834726777719232 AS sv_1, 2.048480411672233 AS sv_2, 2.0704477148265203 AS sv_3, -0.09752033492151702 AS sv_4, -0.19259386966790426 AS sv_5, -0.08530464339543602 AS sv_6, -0.08989690031891825 AS sv_7, 0.5124633981724797 AS sv_8, 1.6151740153276584 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 0.1 AS dual_coeff, 2.1085685718360585 AS sv_0, 1.0834726777719232 AS sv_1, 0.13767040752753382 AS sv_2, 0.6007848276897929 AS sv_3, -0.6019358603776396 AS sv_4, -0.24535931341253586 AS sv_5, -1.0428057427319626 AS sv_6, 0.7646363726746016 AS sv_7, 0.047105909236979736 AS sv_8, 1.7034348904821752 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 0.1 AS dual_coeff, 1.3169557974266166 AS sv_0, 1.0834726777719232 AS sv_1, 0.25277944392179286 AS sv_2, 1.1352076957395119 AS sv_3, 0.6591029532626669 AS sv_4, 0.9484588513097484 AS sv_5, -0.8687146337616849 AS sv_6, 0.7646363726746016 AS sv_7, 0.6176764399635389 AS sv_8, 0.02647826254635507 AS sv_9 UNION ALL SELECT 28 AS sv_idx, -0.1 AS dual_coeff, 1.2449909997530308 AS sv_0, 1.0834726777719232 AS sv_1, -0.3227657380495023 AS sv_2, 1.179965610938676 AS sv_3, -1.246466809571574 AS sv_4, -0.8191835141354016 AS sv_5, -1.3909879606725177 AS sv_6, 0.2690070743383601 AS sv_7, -0.11368751135598354 AS sv_8, 1.0856087644005574 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 0.1 AS dual_coeff, 0.45337822534358935 AS sv_0, -0.9229582069908976 AS sv_1, 1.058542698681606 AS sv_2, -1.024528719766415 AS sv_3, -0.09752033492151702 AS sv_4, 0.7637797982035389 AS sv_5, -1.3039424061873788 AS sv_6, 1.1919030091713616 AS sv_7, -1.1896087925175691 AS sv_8, -0.061782612608161785 AS sv_9 UNION ALL SELECT 30 AS sv_idx, -0.1 AS dual_coeff, 0.6692726183643464 AS sv_0, 1.0834726777719232 AS sv_1, 0.18371402208523724 AS sv_2, 0.8679962617146524 AS sv_3, -0.9101897926008257 AS sv_4, -0.5355692540080081 AS sv_5, -0.8687146337616849 AS sv_6, -0.08989690031891825 AS sv_7, -0.4055357734781588 AS sv_8, 0.20300001285538877 AS sv_9 UNION ALL SELECT 31 AS sv_idx, -0.1 AS dual_coeff, -1.0578825258017084 AS sv_0, -0.9229582069908976 AS sv_1, -1.2206162219247223 AS sv_2, -0.8020752009407196 AS sv_3, -0.9662359620959503 AS sv_4, -1.0038625672416117 AS sv_5, 0.08878646557484153 AS sv_6, -0.9444301733124384 AS sv_7, -0.2656619050541784 AS sv_8, 0.37952176316442243 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 0.1 AS dual_coeff, -0.9139529304545374 AS sv_0, -0.9229582069908976 AS sv_1, 1.0124990841239025 AS sv_2, 1.2020105542457267 AS sv_3, 2.5646727160969074 AS sv_4, 2.603974648797557 AS sv_5, -0.52053241582113 AS sv_6, 2.4737029186616417 AS sv_7, 1.4394866903666015 AS sv_8, 0.9090870140915237 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 0.1 AS dual_coeff, 0.16551903464924692 AS sv_0, -0.9229582069908976 AS sv_1, 0.13767040752753382 AS sv_2, -1.047241691658528 AS sv_3, -1.5827438265423224 AS sv_4, -1.4919429218794513 AS sv_5, -0.4334868613359911 AS sv_6, -0.9017035096627624 AS sv_7, -0.4055357734781588 AS sv_8, -1.915260990853016 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 0.1 AS dual_coeff, 0.5253430230171751 AS sv_0, 1.0834726777719232 AS sv_1, 0.9894772768450504 AS sv_2, -0.2676523328910006 AS sv_3, 0.37887210578704317 AS sv_4, 0.9748415731820644 AS sv_5, -1.3039424061873788 AS sv_6, 1.6191696456681217 AS sv_7, 0.14165408129483162 AS sv_8, 0.20300001285538877 AS sv_9 UNION ALL SELECT 35 AS sv_idx, -0.1 AS dual_coeff, -0.410199346739438 AS sv_0, -0.9229582069908976 AS sv_1, -0.23067850893409542 AS sv_2, 0.06636195964007383 AS sv_3, -0.7980974536105763 AS sv_4, -0.8455662360077174 AS sv_5, 0.34992312903025785 AS sv_6, -0.9444301733124384 AS sv_7, -0.4793694870157448 AS sv_8, -0.6796087386897799 AS sv_9 UNION ALL SELECT 36 AS sv_idx, -0.1 AS dual_coeff, 0.23748383232283254 AS sv_0, 1.0834726777719232 AS sv_1, 1.5420006515374944 AS sv_2, 1.5360248467768012 AS sv_3, -0.2096126739117665 AS sv_4, 0.02506358577869989 AS sv_5, -0.08530464339543602 AS sv_6, -0.08989690031891825 AS sv_7, -0.530027618248477 AS sv_8, 1.3503913898641078 AS sv_9 UNION ALL SELECT 37 AS sv_idx, -0.1 AS dual_coeff, -1.20181212114888 AS sv_0, -0.9229582069908976 AS sv_1, -1.5889651383863517 AS sv_2, -0.9356809179531492 AS sv_3, -0.5458896908825148 AS sv_4, -1.083010732858558 AS sv_5, 2.264925327703311 AS sv_6, -1.7989634463059583 AS sv_7, -1.3743981700102463 AS sv_8, -0.9443913641533302 AS sv_9 UNION ALL SELECT 38 AS sv_idx, -0.1 AS dual_coeff, 0.8851670113851031 AS sv_0, 1.0834726777719232 AS sv_1, 0.06860498569097821 AS sv_2, 1.4024191297643713 AS sv_3, -0.2096126739117665 AS sv_4, 0.18995559748067284 AS sv_5, -1.21689685170224 AS sv_6, 0.7646363726746016 AS sv_7, 0.30162712729293106 AS sv_8, 0.8208261389370068 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 0.1 AS dual_coeff, -0.2662697513922668 AS sv_0, -0.9229582069908976 AS sv_1, 0.2297576366429407 AS sv_2, -1.0692866349655792 AS sv_3, -0.5458896908825148 AS sv_4, -0.9972668867735324 AS sv_5, 0.7851509014559519 AS sv_6, -0.9444301733124384 AS sv_7, 0.38530533596886063 AS sv_8, -0.061782612608161785 AS sv_9 UNION ALL SELECT 40 AS sv_idx, -0.1 AS dual_coeff, 0.30944862999641815 AS sv_0, -0.9229582069908976 AS sv_1, 0.09162679296983034 AS sv_2, -0.4680609084096452 AS sv_3, 0.4349182752821679 AS sv_4, 0.12399879279988367 AS sv_5, 1.6556064463073394 AS sv_6, -0.9444301733124384 AS sv_7, -0.530027618248477 AS sv_8, -0.9443913641533302 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -0.1 AS dual_coeff, 0.16551903464924692 AS sv_0, 1.0834726777719232 AS sv_1, -0.4378747744437614 AS sv_2, -0.00044089886614104913 AS sv_3, 0.743172207505354 AS sv_4, 1.0276070169266958 AS sv_5, -0.08530464339543602 AS sv_6, 0.7646363726746016 AS sv_7, -0.11368751135598354 AS sv_8, -0.15004348776267862 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 0.1 AS dual_coeff, -0.6260937397601949 AS sv_0, -0.9229582069908976 AS sv_1, 1.8873277607202714 AS sv_2, -0.44601596510259445 AS sv_3, 0.40689519053460554 AS sv_4, 0.8033538810120121 AS sv_5, -0.6946235247914075 AS sv_6, 0.7646363726746016 AS sv_7, 0.0663847122162368 AS sv_8, 1.7034348904821752 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 0.1 AS dual_coeff, -0.33823454906585243 AS sv_0, -0.9229582069908976 AS sv_1, 1.288760771470124 AS sv_2, 1.068404837233297 AS sv_3, 0.9393338007382905 AS sv_4, 0.5263353013526973 AS sv_5, -0.34644130685085234 AS sv_6, 0.7646363726746016 AS sv_7, 1.5816165889264526 AS sv_8, 0.20300001285538877 AS sv_9 UNION ALL SELECT 44 AS sv_idx, -0.1 AS dual_coeff, 0.7412374160379318 AS sv_0, -0.9229582069908976 AS sv_1, -0.6911146545111316 AS sv_2, -1.1581344367788446 AS sv_3, 1.583864749932225 AS sv_4, 0.9814372536501431 AS sv_5, 1.3944697828519232 AS sv_6, -0.2608035549176224 AS sv_7, 1.0159683057690656 AS sv_8, -1.209173989616881 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 0.1 AS dual_coeff, 2.1085685718360585 AS sv_0, 1.0834726777719232 AS sv_1, -0.7141364617899829 AS sv_2, -0.4012580499034304 AS sv_3, -0.1255434196690794 AS sv_4, 0.3350605677784092 AS sv_5, -1.3909879606725177 AS sv_6, 1.6191696456681217 AS sv_7, 0.3522852585256634 AS sv_8, 0.9973478892460405 AS sv_9 UNION ALL SELECT 46 AS sv_idx, 0.1 AS dual_coeff, 1.2449909997530308 AS sv_0, 1.0834726777719232 AS sv_1, -0.6680928472322794 AS sv_2, 0.13316481814628872 AS sv_3, 0.4629413600297303 AS sv_4, 0.6582489107142758 AS sv_5, -0.6075779703062687 AS sv_6, 0.7646363726746016 AS sv_7, 0.5278454218261438 AS sv_8, 1.7916957656366923 AS sv_9 UNION ALL SELECT 47 AS sv_idx, -0.1 AS dual_coeff, -0.050375358371509936 AS sv_0, -0.9229582069908976 AS sv_1, -0.9903981491362044 AS sv_2, -0.6016666254220749 AS sv_3, -1.5266976570471975 AS sv_4, -1.8085355843472395 AS sv_5, 1.1333331193965068 AS sv_6, -1.6366021244371898 AS sv_7, -1.3743981700102463 AS sv_8, -1.650478365389465 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 0.1 AS dual_coeff, 0.7412374160379318 AS sv_0, 1.0834726777719232 AS sv_1, 0.41393209487375526 AS sv_2, 1.2020105542457267 AS sv_3, -0.15356650441664174 AS sv_4, -0.1464241063913521 AS sv_5, -0.6075779703062687 AS sv_6, -0.08989690031891825 AS sv_7, 0.7038157724240542 AS sv_8, 0.20300001285538877 AS sv_9 UNION ALL SELECT 49 AS sv_idx, 0.1 AS dual_coeff, 0.02158943930207569 AS sv_0, 1.0834726777719232 AS sv_1, -0.04650405070328082 AS sv_2, 0.1999676766525036 AS sv_3, -0.1255434196690794 AS sv_4, -0.4234426860506664 AS sv_5, 0.001740911089702749 AS sv_6, -0.08989690031891825 AS sv_7, 0.8658397549093096 AS sv_8, -0.2383043629171955 AS sv_9) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 135.25722020003016 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * exp(least(100.0, greatest(-100.0, -0.09999999999999998 * (power(kernel_input.scaler_output_2 - "SV_data".sv_0, 2) + power(kernel_input.scaler_output_3 - "SV_data".sv_1, 2) + power(kernel_input.scaler_output_4 - "SV_data".sv_2, 2) + power(kernel_input.scaler_output_5 - "SV_data".sv_3, 2) + power(kernel_input.scaler_output_6 - "SV_data".sv_4, 2) + power(kernel_input.scaler_output_7 - "SV_data".sv_5, 2) + power(kernel_input.scaler_output_8 - "SV_data".sv_6, 2) + power(kernel_input.scaler_output_9 - "SV_data".sv_7, 2) + power(kernel_input.scaler_output_10 - "SV_data".sv_8, 2) + power(kernel_input.scaler_output_11 - "SV_data".sv_9, 2))))) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp