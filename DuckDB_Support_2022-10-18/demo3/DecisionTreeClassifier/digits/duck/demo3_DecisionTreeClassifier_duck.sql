-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier
-- Dataset : digits
-- Database : duck


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_36" <= 0.5) THEN CASE WHEN ("ADS"."Feature_28" <= 2.5) THEN CASE WHEN ("ADS"."Feature_21" <= 0.5) THEN CASE WHEN ("ADS"."Feature_3" <= 6.0) THEN 4 ELSE CASE WHEN ("ADS"."Feature_60" <= 13.5) THEN 6 ELSE CASE WHEN ("ADS"."Feature_43" <= 11.5) THEN CASE WHEN ("ADS"."Feature_10" <= 13.0) THEN 9 ELSE 10 END ELSE 11 END END END ELSE CASE WHEN ("ADS"."Feature_63" <= 1.5) THEN CASE WHEN ("ADS"."Feature_43" <= 14.5) THEN 14 ELSE 15 END ELSE 16 END END ELSE CASE WHEN ("ADS"."Feature_21" <= 9.0) THEN CASE WHEN ("ADS"."Feature_5" <= 1.5) THEN CASE WHEN ("ADS"."Feature_43" <= 0.5) THEN 20 ELSE CASE WHEN ("ADS"."Feature_3" <= 15.5) THEN 22 ELSE 23 END END ELSE CASE WHEN ("ADS"."Feature_58" <= 6.5) THEN 25 ELSE 26 END END ELSE CASE WHEN ("ADS"."Feature_34" <= 7.5) THEN CASE WHEN ("ADS"."Feature_9" <= 10.5) THEN 29 ELSE 30 END ELSE CASE WHEN ("ADS"."Feature_12" <= 13.5) THEN CASE WHEN ("ADS"."Feature_43" <= 5.5) THEN 33 ELSE 34 END ELSE 35 END END END END ELSE CASE WHEN ("ADS"."Feature_21" <= 0.5) THEN CASE WHEN ("ADS"."Feature_42" <= 8.5) THEN CASE WHEN ("ADS"."Feature_5" <= 2.5) THEN CASE WHEN ("ADS"."Feature_9" <= 0.5) THEN CASE WHEN ("ADS"."Feature_38" <= 1.5) THEN CASE WHEN ("ADS"."Feature_27" <= 8.5) THEN 42 ELSE CASE WHEN ("ADS"."Feature_3" <= 3.5) THEN 44 ELSE 45 END END ELSE CASE WHEN ("ADS"."Feature_34" <= 11.0) THEN CASE WHEN ("ADS"."Feature_35" <= 12.0) THEN CASE WHEN ("ADS"."Feature_12" <= 10.5) THEN 49 ELSE 50 END ELSE 51 END ELSE CASE WHEN ("ADS"."Feature_51" <= 14.5) THEN 53 ELSE 54 END END END ELSE CASE WHEN ("ADS"."Feature_37" <= 4.0) THEN CASE WHEN ("ADS"."Feature_13" <= 3.0) THEN CASE WHEN ("ADS"."Feature_18" <= 14.5) THEN 58 ELSE 59 END ELSE 60 END ELSE CASE WHEN ("ADS"."Feature_53" <= 11.5) THEN CASE WHEN ("ADS"."Feature_42" <= 1.5) THEN CASE WHEN ("ADS"."Feature_9" <= 9.5) THEN 64 ELSE 65 END ELSE 66 END ELSE CASE WHEN ("ADS"."Feature_54" <= 10.0) THEN 68 ELSE 69 END END END END ELSE CASE WHEN ("ADS"."Feature_18" <= 4.5) THEN CASE WHEN ("ADS"."Feature_51" <= 1.0) THEN 72 ELSE CASE WHEN ("ADS"."Feature_59" <= 10.5) THEN 74 ELSE 75 END END ELSE CASE WHEN ("ADS"."Feature_24" <= 0.5) THEN 77 ELSE 78 END END END ELSE CASE WHEN ("ADS"."Feature_54" <= 0.5) THEN CASE WHEN ("ADS"."Feature_45" <= 1.5) THEN 81 ELSE CASE WHEN ("ADS"."Feature_37" <= 5.0) THEN CASE WHEN ("ADS"."Feature_12" <= 5.5) THEN 84 ELSE 85 END ELSE CASE WHEN ("ADS"."Feature_44" <= 7.5) THEN 87 ELSE 88 END END END ELSE CASE WHEN ("ADS"."Feature_58" <= 9.0) THEN CASE WHEN ("ADS"."Feature_29" <= 13.5) THEN 91 ELSE 92 END ELSE 93 END END END ELSE CASE WHEN ("ADS"."Feature_33" <= 3.5) THEN CASE WHEN ("ADS"."Feature_43" <= 1.5) THEN CASE WHEN ("ADS"."Feature_29" <= 12.5) THEN CASE WHEN ("ADS"."Feature_34" <= 4.0) THEN CASE WHEN ("ADS"."Feature_26" <= 8.5) THEN CASE WHEN ("ADS"."Feature_28" <= 8.0) THEN 100 ELSE CASE WHEN ("ADS"."Feature_19" <= 14.5) THEN CASE WHEN ("ADS"."Feature_13" <= 3.5) THEN CASE WHEN ("ADS"."Feature_9" <= 3.0) THEN 104 ELSE 105 END ELSE 106 END ELSE 107 END END ELSE CASE WHEN ("ADS"."Feature_38" <= 1.5) THEN CASE WHEN ("ADS"."Feature_2" <= 6.0) THEN 110 ELSE 111 END ELSE 112 END END ELSE CASE WHEN ("ADS"."Feature_42" <= 7.5) THEN CASE WHEN ("ADS"."Feature_25" <= 2.0) THEN CASE WHEN ("ADS"."Feature_27" <= 15.5) THEN CASE WHEN ("ADS"."Feature_7" <= 2.5) THEN 117 ELSE 118 END ELSE 119 END ELSE 120 END ELSE 121 END END ELSE CASE WHEN ("ADS"."Feature_13" <= 15.5) THEN CASE WHEN ("ADS"."Feature_26" <= 1.5) THEN CASE WHEN ("ADS"."Feature_46" <= 5.5) THEN CASE WHEN ("ADS"."Feature_46" <= 3.0) THEN 126 ELSE 127 END ELSE 128 END ELSE CASE WHEN ("ADS"."Feature_21" <= 4.0) THEN 130 ELSE CASE WHEN ("ADS"."Feature_36" <= 15.5) THEN 132 ELSE CASE WHEN ("ADS"."Feature_20" <= 1.5) THEN 134 ELSE CASE WHEN ("ADS"."Feature_53" <= 8.0) THEN 136 ELSE 137 END END END END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.5) THEN 139 ELSE CASE WHEN ("ADS"."Feature_18" <= 10.5) THEN CASE WHEN ("ADS"."Feature_20" <= 2.0) THEN 142 ELSE 143 END ELSE 144 END END END END ELSE CASE WHEN ("ADS"."Feature_60" <= 7.5) THEN CASE WHEN ("ADS"."Feature_38" <= 0.5) THEN CASE WHEN ("ADS"."Feature_30" <= 1.5) THEN CASE WHEN ("ADS"."Feature_50" <= 3.5) THEN CASE WHEN ("ADS"."Feature_17" <= 1.5) THEN 150 ELSE 151 END ELSE CASE WHEN ("ADS"."Feature_19" <= 15.0) THEN CASE WHEN ("ADS"."Feature_53" <= 8.5) THEN CASE WHEN ("ADS"."Feature_52" <= 6.0) THEN CASE WHEN ("ADS"."Feature_4" <= 4.0) THEN 156 ELSE 157 END ELSE CASE WHEN ("ADS"."Feature_21" <= 7.5) THEN CASE WHEN ("ADS"."Feature_4" <= 12.0) THEN 160 ELSE 161 END ELSE 162 END END ELSE 163 END ELSE 164 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 3.0) THEN 166 ELSE 167 END END ELSE CASE WHEN ("ADS"."Feature_26" <= 14.5) THEN CASE WHEN ("ADS"."Feature_61" <= 0.5) THEN 170 ELSE 171 END ELSE CASE WHEN ("ADS"."Feature_25" <= 6.0) THEN 173 ELSE 174 END END END ELSE CASE WHEN ("ADS"."Feature_27" <= 10.5) THEN CASE WHEN ("ADS"."Feature_26" <= 6.5) THEN CASE WHEN ("ADS"."Feature_38" <= 1.5) THEN CASE WHEN ("ADS"."Feature_51" <= 6.5) THEN CASE WHEN ("ADS"."Feature_43" <= 10.5) THEN CASE WHEN ("ADS"."Feature_34" <= 5.0) THEN 181 ELSE 182 END ELSE 183 END ELSE CASE WHEN ("ADS"."Feature_19" <= 13.5) THEN CASE WHEN ("ADS"."Feature_50" <= 0.5) THEN CASE WHEN ("ADS"."Feature_16" <= 0.5) THEN 187 ELSE 188 END ELSE 189 END ELSE CASE WHEN ("ADS"."Feature_59" <= 12.5) THEN 191 ELSE 192 END END END ELSE CASE WHEN ("ADS"."Feature_20" <= 11.0) THEN 194 ELSE 195 END END ELSE CASE WHEN ("ADS"."Feature_44" <= 3.5) THEN 197 ELSE CASE WHEN ("ADS"."Feature_13" <= 10.5) THEN CASE WHEN ("ADS"."Feature_34" <= 1.5) THEN 200 ELSE CASE WHEN ("ADS"."Feature_59" <= 2.5) THEN 202 ELSE CASE WHEN ("ADS"."Feature_53" <= 1.5) THEN 204 ELSE CASE WHEN ("ADS"."Feature_44" <= 11.0) THEN 206 ELSE 207 END END END END ELSE CASE WHEN ("ADS"."Feature_27" <= 0.5) THEN 209 ELSE 210 END END END END ELSE CASE WHEN ("ADS"."Feature_20" <= 14.5) THEN CASE WHEN ("ADS"."Feature_38" <= 3.5) THEN CASE WHEN ("ADS"."Feature_21" <= 4.0) THEN 214 ELSE CASE WHEN ("ADS"."Feature_60" <= 8.5) THEN CASE WHEN ("ADS"."Feature_51" <= 4.0) THEN 217 ELSE 218 END ELSE 219 END END ELSE CASE WHEN ("ADS"."Feature_51" <= 5.5) THEN 221 ELSE CASE WHEN ("ADS"."Feature_54" <= 3.5) THEN 223 ELSE CASE WHEN ("ADS"."Feature_34" <= 2.5) THEN 225 ELSE 226 END END END END ELSE CASE WHEN ("ADS"."Feature_9" <= 0.5) THEN CASE WHEN ("ADS"."Feature_50" <= 11.5) THEN CASE WHEN ("ADS"."Feature_41" <= 7.5) THEN 230 ELSE 231 END ELSE CASE WHEN ("ADS"."Feature_51" <= 14.0) THEN CASE WHEN ("ADS"."Feature_18" <= 1.0) THEN CASE WHEN ("ADS"."Feature_5" <= 12.0) THEN 235 ELSE 236 END ELSE 237 END ELSE CASE WHEN ("ADS"."Feature_10" <= 14.5) THEN 239 ELSE 240 END END END ELSE CASE WHEN ("ADS"."Feature_42" <= 3.5) THEN 242 ELSE CASE WHEN ("ADS"."Feature_27" <= 15.5) THEN 244 ELSE CASE WHEN ("ADS"."Feature_42" <= 9.0) THEN 246 ELSE 247 END END END END END END END END ELSE CASE WHEN ("ADS"."Feature_13" <= 9.5) THEN CASE WHEN ("ADS"."Feature_2" <= 5.0) THEN CASE WHEN ("ADS"."Feature_37" <= 3.5) THEN 251 ELSE CASE WHEN ("ADS"."Feature_58" <= 6.5) THEN CASE WHEN ("ADS"."Feature_5" <= 12.5) THEN CASE WHEN ("ADS"."Feature_26" <= 4.0) THEN 255 ELSE 256 END ELSE 257 END ELSE 258 END END ELSE CASE WHEN ("ADS"."Feature_60" <= 2.0) THEN 260 ELSE CASE WHEN ("ADS"."Feature_28" <= 14.5) THEN 262 ELSE 263 END END END ELSE CASE WHEN ("ADS"."Feature_19" <= 3.5) THEN CASE WHEN ("ADS"."Feature_55" <= 0.5) THEN 266 ELSE 267 END ELSE CASE WHEN ("ADS"."Feature_20" <= 13.5) THEN CASE WHEN ("ADS"."Feature_36" <= 15.5) THEN CASE WHEN ("ADS"."Feature_35" <= 7.0) THEN 271 ELSE CASE WHEN ("ADS"."Feature_42" <= 15.5) THEN 273 ELSE CASE WHEN ("ADS"."Feature_14" <= 6.0) THEN 275 ELSE 276 END END END ELSE 277 END ELSE CASE WHEN ("ADS"."Feature_10" <= 14.5) THEN CASE WHEN ("ADS"."Feature_5" <= 3.5) THEN 280 ELSE 281 END ELSE CASE WHEN ("ADS"."Feature_37" <= 6.0) THEN 283 ELSE 284 END END END END END END END END AS node_id_2 
FROM digits AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9", "Values"."D" AS "D", "Values"."DP" AS "DP" 
FROM (SELECT 4 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 6 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 1.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 5 AS "D", 1.0 AS "DP" UNION ALL SELECT 9 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 10 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 11 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 1.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 6 AS "D", 1.0 AS "DP" UNION ALL SELECT 14 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 15 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 16 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 20 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 22 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 1.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 6 AS "D", 1.0 AS "DP" UNION ALL SELECT 23 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 25 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 26 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 1.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 5 AS "D", 1.0 AS "DP" UNION ALL SELECT 29 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 30 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 33 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 1.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 5 AS "D", 1.0 AS "DP" UNION ALL SELECT 34 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 35 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 42 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 44 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 1.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 6 AS "D", 1.0 AS "DP" UNION ALL SELECT 45 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 49 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 1.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 5 AS "D", 1.0 AS "DP" UNION ALL SELECT 50 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 51 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 1.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 6 AS "D", 1.0 AS "DP" UNION ALL SELECT 53 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 54 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 58 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 59 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 60 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 64 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 65 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 1.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 5 AS "D", 1.0 AS "DP" UNION ALL SELECT 66 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 68 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 69 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 72 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 74 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 75 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 77 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 1.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 5 AS "D", 1.0 AS "DP" UNION ALL SELECT 78 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 81 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 84 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 85 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 1.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 6 AS "D", 1.0 AS "DP" UNION ALL SELECT 87 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 1.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 5 AS "D", 1.0 AS "DP" UNION ALL SELECT 88 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 91 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 1.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 6 AS "D", 1.0 AS "DP" UNION ALL SELECT 92 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 1.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 5 AS "D", 1.0 AS "DP" UNION ALL SELECT 93 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 100 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 104 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 105 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 106 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 107 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 110 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 111 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 1.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 5 AS "D", 1.0 AS "DP" UNION ALL SELECT 112 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 117 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 118 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 119 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 120 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 121 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 126 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 127 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 128 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 130 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 1.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 5 AS "D", 1.0 AS "DP" UNION ALL SELECT 132 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 134 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 136 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 137 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 139 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 142 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 143 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 144 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 150 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 151 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 156 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 157 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 160 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 1.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 5 AS "D", 1.0 AS "DP" UNION ALL SELECT 161 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 162 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 163 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 164 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 166 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 167 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 170 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 171 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 173 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 174 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 181 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 182 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 183 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 187 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 188 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 189 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 191 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 192 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 194 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 195 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 197 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 200 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 202 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 204 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 206 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 207 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 209 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 210 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 214 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 217 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 218 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 219 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 221 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 223 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 225 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 226 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 1.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 6 AS "D", 1.0 AS "DP" UNION ALL SELECT 230 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 231 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 235 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 236 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 237 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 239 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 240 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 242 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 244 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 246 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 247 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 251 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 255 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 256 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 257 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 1.0 AS "P_9", 9 AS "D", 1.0 AS "DP" UNION ALL SELECT 258 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 260 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 262 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 1.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 5 AS "D", 1.0 AS "DP" UNION ALL SELECT 263 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 1.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 6 AS "D", 1.0 AS "DP" UNION ALL SELECT 266 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP" UNION ALL SELECT 267 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 1.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 3 AS "D", 1.0 AS "DP" UNION ALL SELECT 271 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 273 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 275 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 1.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 6 AS "D", 1.0 AS "DP" UNION ALL SELECT 276 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 1.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 2 AS "D", 1.0 AS "DP" UNION ALL SELECT 277 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 280 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 1.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 4 AS "D", 1.0 AS "DP" UNION ALL SELECT 281 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 283 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 0.0 AS "P_7", 1.0 AS "P_8", 0.0 AS "P_9", 8 AS "D", 1.0 AS "DP" UNION ALL SELECT 284 AS nid, 0.0 AS "P_0", 0.0 AS "P_1", 0.0 AS "P_2", 0.0 AS "P_3", 0.0 AS "P_4", 0.0 AS "P_5", 0.0 AS "P_6", 1.0 AS "P_7", 0.0 AS "P_8", 0.0 AS "P_9", 7 AS "D", 1.0 AS "DP") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_0" AS "P_0", "DT_node_data"."P_1" AS "P_1", "DT_node_data"."P_2" AS "P_2", "DT_node_data"."P_3" AS "P_3", "DT_node_data"."P_4" AS "P_4", "DT_node_data"."P_5" AS "P_5", "DT_node_data"."P_6" AS "P_6", "DT_node_data"."P_7" AS "P_7", "DT_node_data"."P_8" AS "P_8", "DT_node_data"."P_9" AS "P_9", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", CAST(NULL AS DOUBLE) AS "Score_2", CAST(NULL AS DOUBLE) AS "Score_3", CAST(NULL AS DOUBLE) AS "Score_4", CAST(NULL AS DOUBLE) AS "Score_5", CAST(NULL AS DOUBLE) AS "Score_6", CAST(NULL AS DOUBLE) AS "Score_7", CAST(NULL AS DOUBLE) AS "Score_8", CAST(NULL AS DOUBLE) AS "Score_9", "DT_Output"."P_0" AS "Proba_0", "DT_Output"."P_1" AS "Proba_1", "DT_Output"."P_2" AS "Proba_2", "DT_Output"."P_3" AS "Proba_3", "DT_Output"."P_4" AS "Proba_4", "DT_Output"."P_5" AS "Proba_5", "DT_Output"."P_6" AS "Proba_6", "DT_Output"."P_7" AS "Proba_7", "DT_Output"."P_8" AS "Proba_8", "DT_Output"."P_9" AS "Proba_9", CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > 0.0) THEN ln("DT_Output"."P_0") ELSE '-Infinity'::float8 END AS "LogProba_0", CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > 0.0) THEN ln("DT_Output"."P_1") ELSE '-Infinity'::float8 END AS "LogProba_1", CASE WHEN ("DT_Output"."P_2" IS NULL OR "DT_Output"."P_2" > 0.0) THEN ln("DT_Output"."P_2") ELSE '-Infinity'::float8 END AS "LogProba_2", CASE WHEN ("DT_Output"."P_3" IS NULL OR "DT_Output"."P_3" > 0.0) THEN ln("DT_Output"."P_3") ELSE '-Infinity'::float8 END AS "LogProba_3", CASE WHEN ("DT_Output"."P_4" IS NULL OR "DT_Output"."P_4" > 0.0) THEN ln("DT_Output"."P_4") ELSE '-Infinity'::float8 END AS "LogProba_4", CASE WHEN ("DT_Output"."P_5" IS NULL OR "DT_Output"."P_5" > 0.0) THEN ln("DT_Output"."P_5") ELSE '-Infinity'::float8 END AS "LogProba_5", CASE WHEN ("DT_Output"."P_6" IS NULL OR "DT_Output"."P_6" > 0.0) THEN ln("DT_Output"."P_6") ELSE '-Infinity'::float8 END AS "LogProba_6", CASE WHEN ("DT_Output"."P_7" IS NULL OR "DT_Output"."P_7" > 0.0) THEN ln("DT_Output"."P_7") ELSE '-Infinity'::float8 END AS "LogProba_7", CASE WHEN ("DT_Output"."P_8" IS NULL OR "DT_Output"."P_8" > 0.0) THEN ln("DT_Output"."P_8") ELSE '-Infinity'::float8 END AS "LogProba_8", CASE WHEN ("DT_Output"."P_9" IS NULL OR "DT_Output"."P_9" > 0.0) THEN ln("DT_Output"."P_9") ELSE '-Infinity'::float8 END AS "LogProba_9", "DT_Output"."D" AS "Decision", "DT_Output"."DP" AS "DecisionProba" 
FROM "DT_Output"