-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_113" <= 3.7400054931640625) THEN CASE WHEN ("ADS"."Feature_87" <= 0.091425821185112) THEN CASE WHEN ("ADS"."Feature_61" <= -0.14601413905620575) THEN CASE WHEN ("ADS"."Feature_326" <= -1.1456449031829834) THEN 4 ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_12" <= 0.8356449604034424) THEN CASE WHEN ("ADS"."Feature_384" <= -0.7016741037368774) THEN 8 ELSE 9 END ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_163" <= 0.21911516785621643) THEN CASE WHEN ("ADS"."Feature_162" <= -0.5751917362213135) THEN CASE WHEN ("ADS"."Feature_4" <= 1.0010533332824707) THEN 14 ELSE 15 END ELSE CASE WHEN ("ADS"."Feature_143" <= 1.7443854808807373) THEN 17 ELSE 18 END END ELSE CASE WHEN ("ADS"."Feature_219" <= 2.009176731109619) THEN 20 ELSE CASE WHEN ("ADS"."Feature_7" <= -1.0067946910858154) THEN 22 ELSE 23 END END END END ELSE CASE WHEN ("ADS"."Feature_105" <= 5.549012184143066) THEN 25 ELSE CASE WHEN ("ADS"."Feature_382" <= 0.11718778312206268) THEN 27 ELSE 28 END END END AS node_id_2 
FROM "FourClass_500" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Proba_2" AS "Proba_2", "Values"."LogProba_2" AS "LogProba_2", "Values"."Proba_3" AS "Proba_3", "Values"."LogProba_3" AS "LogProba_3", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'Feature_113' AS feature, 3.7400054931640625 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.22388059701492538 AS "Proba_0", -1.49664241829 AS "LogProba_0", 0.34328358208955223 AS "Proba_1", -1.06919840346 AS "LogProba_1", 0.208955223880597 AS "Proba_2", -1.56563528978 AS "LogProba_2", 0.22388059701492538 AS "Proba_3", -1.49664241829 AS "LogProba_3", 1 AS "Decision" UNION ALL SELECT 1 AS node_id, 'Feature_87' AS feature, 0.091425821185112 AS threshold, 51 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.29411764705882354 AS "Proba_0", -1.22377543162 AS "LogProba_0", 0.21568627450980393 AS "Proba_1", -1.53393035993 AS "LogProba_1", 0.23529411764705882 AS "Proba_2", -1.44691898294 AS "LogProba_2", 0.2549019607843137 AS "Proba_3", -1.36687627526 AS "LogProba_3", 0 AS "Decision" UNION ALL SELECT 2 AS node_id, 'Feature_61' AS feature, -0.14601413905620575 AS threshold, 29 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3793103448275862 AS "Proba_0", -0.969400557188 AS "LogProba_0", 0.27586206896551724 AS "Proba_1", -1.28785428831 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.3448275862068966 AS "Proba_3", -1.06471073699 AS "LogProba_3", 0 AS "Decision" UNION ALL SELECT 3 AS node_id, 'Feature_326' AS feature, -1.1456449031829834 AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.2 AS "Proba_1", -1.60943791243 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.8 AS "Proba_3", -0.223143551314 AS "LogProba_3", 3 AS "Decision" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.0 AS "Proba_3", -1.79769313486231e+308 AS "LogProba_3", 1 AS "Decision" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 1.0 AS "Proba_3", 0.0 AS "LogProba_3", 3 AS "Decision" UNION ALL SELECT 6 AS node_id, 'Feature_12' AS feature, 0.8356449604034424 AS threshold, 19 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5789473684210527 AS "Proba_0", -0.546543706368 AS "LogProba_0", 0.3157894736842105 AS "Proba_1", -1.15267950994 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.10526315789473684 AS "Proba_3", -2.25129179861 AS "LogProba_3", 0 AS "Decision" UNION ALL SELECT 7 AS node_id, 'Feature_384' AS feature, -0.7016741037368774 AS threshold, 14 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7857142857142857 AS "Proba_0", -0.241162056817 AS "LogProba_0", 0.07142857142857142 AS "Proba_1", -2.63905732962 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.14285714285714285 AS "Proba_3", -1.94591014906 AS "LogProba_3", 0 AS "Decision" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.3333333333333333 AS "Proba_1", -1.09861228867 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.6666666666666666 AS "Proba_3", -0.405465108108 AS "LogProba_3", 3 AS "Decision" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.0 AS "Proba_3", -1.79769313486231e+308 AS "LogProba_3", 0 AS "Decision" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.0 AS "Proba_3", -1.79769313486231e+308 AS "LogProba_3", 1 AS "Decision" UNION ALL SELECT 11 AS node_id, 'Feature_163' AS feature, 0.21911516785621643 AS threshold, 22 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.18181818181818182 AS "Proba_0", -1.70474809224 AS "LogProba_0", 0.13636363636363635 AS "Proba_1", -1.99243016469 AS "LogProba_1", 0.5454545454545454 AS "Proba_2", -0.60613580357 AS "LogProba_2", 0.13636363636363635 AS "Proba_3", -1.99243016469 AS "LogProba_3", 2 AS "Decision" UNION ALL SELECT 12 AS node_id, 'Feature_162' AS feature, -0.5751917362213135 AS threshold, 16 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.125 AS "Proba_1", -2.07944154168 AS "LogProba_1", 0.75 AS "Proba_2", -0.287682072452 AS "LogProba_2", 0.125 AS "Proba_3", -2.07944154168 AS "LogProba_3", 2 AS "Decision" UNION ALL SELECT 13 AS node_id, 'Feature_4' AS feature, 1.0010533332824707 AS threshold, 3 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.6666666666666666 AS "Proba_1", -0.405465108108 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.3333333333333333 AS "Proba_3", -1.09861228867 AS "LogProba_3", 1 AS "Decision" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.0 AS "Proba_3", -1.79769313486231e+308 AS "LogProba_3", 1 AS "Decision" UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 1.0 AS "Proba_3", 0.0 AS "LogProba_3", 3 AS "Decision" UNION ALL SELECT 16 AS node_id, 'Feature_143' AS feature, 1.7443854808807373 AS threshold, 13 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0.9230769230769231 AS "Proba_2", -0.0800427076735 AS "LogProba_2", 0.07692307692307693 AS "Proba_3", -2.56494935746 AS "LogProba_3", 2 AS "Decision" UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 0.0 AS "Proba_3", -1.79769313486231e+308 AS "LogProba_3", 2 AS "Decision" UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 1.0 AS "Proba_3", 0.0 AS "LogProba_3", 3 AS "Decision" UNION ALL SELECT 19 AS node_id, 'Feature_219' AS feature, 2.009176731109619 AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6666666666666666 AS "Proba_0", -0.405465108108 AS "LogProba_0", 0.16666666666666666 AS "Proba_1", -1.79175946923 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.16666666666666666 AS "Proba_3", -1.79175946923 AS "LogProba_3", 0 AS "Decision" UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.0 AS "Proba_3", -1.79769313486231e+308 AS "LogProba_3", 0 AS "Decision" UNION ALL SELECT 21 AS node_id, 'Feature_7' AS feature, -1.0067946910858154 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.5 AS "Proba_1", -0.69314718056 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.5 AS "Proba_3", -0.69314718056 AS "LogProba_3", 1 AS "Decision" UNION ALL SELECT 22 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 1.0 AS "Proba_3", 0.0 AS "LogProba_3", 3 AS "Decision" UNION ALL SELECT 23 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.0 AS "Proba_3", -1.79769313486231e+308 AS "LogProba_3", 1 AS "Decision" UNION ALL SELECT 24 AS node_id, 'Feature_105' AS feature, 5.549012184143066 AS threshold, 16 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.75 AS "Proba_1", -0.287682072452 AS "LogProba_1", 0.125 AS "Proba_2", -2.07944154168 AS "LogProba_2", 0.125 AS "Proba_3", -2.07944154168 AS "LogProba_3", 1 AS "Decision" UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 0.0 AS "Proba_3", -1.79769313486231e+308 AS "LogProba_3", 1 AS "Decision" UNION ALL SELECT 26 AS node_id, 'Feature_382' AS feature, 0.11718778312206268 AS threshold, 4 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0.5 AS "Proba_2", -0.69314718056 AS "LogProba_2", 0.5 AS "Proba_3", -0.69314718056 AS "LogProba_3", 2 AS "Decision" UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 0.0 AS "Proba_2", -1.79769313486231e+308 AS "LogProba_2", 1.0 AS "Proba_3", 0.0 AS "LogProba_3", 3 AS "Decision" UNION ALL SELECT 28 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.0 AS "Proba_1", -1.79769313486231e+308 AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 0.0 AS "Proba_3", -1.79769313486231e+308 AS "LogProba_3", 2 AS "Decision") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Proba_2" AS "Proba_2", "DT_node_data"."LogProba_2" AS "LogProba_2", "DT_node_data"."Proba_3" AS "Proba_3", "DT_node_data"."LogProba_3" AS "LogProba_3", "DT_node_data"."Decision" AS "Decision" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."Proba_2" AS "Proba_2", "DT_Output"."Proba_3" AS "Proba_3", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", "DT_Output"."LogProba_2" AS "LogProba_2", "DT_Output"."LogProba_3" AS "LogProba_3", "DT_Output"."Decision" AS "Decision" 
FROM "DT_Output"