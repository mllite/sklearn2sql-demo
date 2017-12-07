-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.149034408453 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN -0.0336763649303 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.119333163556 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN -0.173692031302 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN 0.0653435549211 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.243622899376 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN -0.113673579111 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN -0.211764438767 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.115139799146 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.0291119249386 ELSE [ADS].[Feature_9] END AS impter_11, CASE WHEN ([ADS].[Feature_10] IS NULL) THEN 0.110771892686 ELSE [ADS].[Feature_10] END AS impter_12, CASE WHEN ([ADS].[Feature_11] IS NULL) THEN 0.00145803754246 ELSE [ADS].[Feature_11] END AS impter_13, CASE WHEN ([ADS].[Feature_12] IS NULL) THEN -0.0773739291867 ELSE [ADS].[Feature_12] END AS impter_14, CASE WHEN ([ADS].[Feature_13] IS NULL) THEN -0.113957287588 ELSE [ADS].[Feature_13] END AS impter_15, CASE WHEN ([ADS].[Feature_14] IS NULL) THEN -0.12567631285 ELSE [ADS].[Feature_14] END AS impter_16, CASE WHEN ([ADS].[Feature_15] IS NULL) THEN -0.0579959783399 ELSE [ADS].[Feature_15] END AS impter_17, CASE WHEN ([ADS].[Feature_16] IS NULL) THEN -0.141812641745 ELSE [ADS].[Feature_16] END AS impter_18, CASE WHEN ([ADS].[Feature_17] IS NULL) THEN -0.12654542869 ELSE [ADS].[Feature_17] END AS impter_19, CASE WHEN ([ADS].[Feature_18] IS NULL) THEN -0.0781224868352 ELSE [ADS].[Feature_18] END AS impter_20, CASE WHEN ([ADS].[Feature_19] IS NULL) THEN -0.0764873768302 ELSE [ADS].[Feature_19] END AS impter_21, CASE WHEN ([ADS].[Feature_20] IS NULL) THEN 0.0586426242787 ELSE [ADS].[Feature_20] END AS impter_22, CASE WHEN ([ADS].[Feature_21] IS NULL) THEN 0.108440370746 ELSE [ADS].[Feature_21] END AS impter_23, CASE WHEN ([ADS].[Feature_22] IS NULL) THEN 0.0600659693334 ELSE [ADS].[Feature_22] END AS impter_24, CASE WHEN ([ADS].[Feature_23] IS NULL) THEN 0.152557712719 ELSE [ADS].[Feature_23] END AS impter_25, CASE WHEN ([ADS].[Feature_24] IS NULL) THEN -0.047123256878 ELSE [ADS].[Feature_24] END AS impter_26, CASE WHEN ([ADS].[Feature_25] IS NULL) THEN -0.0569629691409 ELSE [ADS].[Feature_25] END AS impter_27, CASE WHEN ([ADS].[Feature_26] IS NULL) THEN 0.0961468409994 ELSE [ADS].[Feature_26] END AS impter_28, CASE WHEN ([ADS].[Feature_27] IS NULL) THEN 0.104338334098 ELSE [ADS].[Feature_27] END AS impter_29, CASE WHEN ([ADS].[Feature_28] IS NULL) THEN 0.0325771619196 ELSE [ADS].[Feature_28] END AS impter_30, CASE WHEN ([ADS].[Feature_29] IS NULL) THEN 0.0614290574937 ELSE [ADS].[Feature_29] END AS impter_31, CASE WHEN ([ADS].[Feature_30] IS NULL) THEN -0.0145404234607 ELSE [ADS].[Feature_30] END AS impter_32, CASE WHEN ([ADS].[Feature_31] IS NULL) THEN -0.112338009994 ELSE [ADS].[Feature_31] END AS impter_33, CASE WHEN ([ADS].[Feature_32] IS NULL) THEN 0.118912844605 ELSE [ADS].[Feature_32] END AS impter_34, CASE WHEN ([ADS].[Feature_33] IS NULL) THEN 0.228686493008 ELSE [ADS].[Feature_33] END AS impter_35, CASE WHEN ([ADS].[Feature_34] IS NULL) THEN 0.235661815499 ELSE [ADS].[Feature_34] END AS impter_36, CASE WHEN ([ADS].[Feature_35] IS NULL) THEN 0.0731697039996 ELSE [ADS].[Feature_35] END AS impter_37, CASE WHEN ([ADS].[Feature_36] IS NULL) THEN -0.0331940982747 ELSE [ADS].[Feature_36] END AS impter_38, CASE WHEN ([ADS].[Feature_37] IS NULL) THEN 0.273493877418 ELSE [ADS].[Feature_37] END AS impter_39, CASE WHEN ([ADS].[Feature_38] IS NULL) THEN -0.0232895677422 ELSE [ADS].[Feature_38] END AS impter_40, CASE WHEN ([ADS].[Feature_39] IS NULL) THEN 0.0302883792606 ELSE [ADS].[Feature_39] END AS impter_41, CASE WHEN ([ADS].[Feature_40] IS NULL) THEN -0.107368262331 ELSE [ADS].[Feature_40] END AS impter_42, CASE WHEN ([ADS].[Feature_41] IS NULL) THEN 0.0264029500979 ELSE [ADS].[Feature_41] END AS impter_43, CASE WHEN ([ADS].[Feature_42] IS NULL) THEN -0.0967714665491 ELSE [ADS].[Feature_42] END AS impter_44, CASE WHEN ([ADS].[Feature_43] IS NULL) THEN 0.00597424834297 ELSE [ADS].[Feature_43] END AS impter_45, CASE WHEN ([ADS].[Feature_44] IS NULL) THEN 0.0369172681271 ELSE [ADS].[Feature_44] END AS impter_46, CASE WHEN ([ADS].[Feature_45] IS NULL) THEN -0.145257173824 ELSE [ADS].[Feature_45] END AS impter_47, CASE WHEN ([ADS].[Feature_46] IS NULL) THEN -0.166752698812 ELSE [ADS].[Feature_46] END AS impter_48, CASE WHEN ([ADS].[Feature_47] IS NULL) THEN 0.250844656957 ELSE [ADS].[Feature_47] END AS impter_49, CASE WHEN ([ADS].[Feature_48] IS NULL) THEN 0.146233983223 ELSE [ADS].[Feature_48] END AS impter_50, CASE WHEN ([ADS].[Feature_49] IS NULL) THEN 0.101854311334 ELSE [ADS].[Feature_49] END AS impter_51, CASE WHEN ([ADS].[Feature_50] IS NULL) THEN -0.132925609451 ELSE [ADS].[Feature_50] END AS impter_52, CASE WHEN ([ADS].[Feature_51] IS NULL) THEN -0.0421917913654 ELSE [ADS].[Feature_51] END AS impter_53, CASE WHEN ([ADS].[Feature_52] IS NULL) THEN 0.152140284047 ELSE [ADS].[Feature_52] END AS impter_54, CASE WHEN ([ADS].[Feature_53] IS NULL) THEN -0.158213723143 ELSE [ADS].[Feature_53] END AS impter_55, CASE WHEN ([ADS].[Feature_54] IS NULL) THEN 0.179262605358 ELSE [ADS].[Feature_54] END AS impter_56, CASE WHEN ([ADS].[Feature_55] IS NULL) THEN 0.0507753321044 ELSE [ADS].[Feature_55] END AS impter_57, CASE WHEN ([ADS].[Feature_56] IS NULL) THEN -0.0118845513623 ELSE [ADS].[Feature_56] END AS impter_58, CASE WHEN ([ADS].[Feature_57] IS NULL) THEN -0.0494874506914 ELSE [ADS].[Feature_57] END AS impter_59, CASE WHEN ([ADS].[Feature_58] IS NULL) THEN -0.132567335525 ELSE [ADS].[Feature_58] END AS impter_60, CASE WHEN ([ADS].[Feature_59] IS NULL) THEN 0.118662382025 ELSE [ADS].[Feature_59] END AS impter_61, CASE WHEN ([ADS].[Feature_60] IS NULL) THEN -0.0659082852023 ELSE [ADS].[Feature_60] END AS impter_62, CASE WHEN ([ADS].[Feature_61] IS NULL) THEN 0.155485733887 ELSE [ADS].[Feature_61] END AS impter_63, CASE WHEN ([ADS].[Feature_62] IS NULL) THEN -0.00660830149098 ELSE [ADS].[Feature_62] END AS impter_64, CASE WHEN ([ADS].[Feature_63] IS NULL) THEN -0.0182758014849 ELSE [ADS].[Feature_63] END AS impter_65, CASE WHEN ([ADS].[Feature_64] IS NULL) THEN -0.0273663174287 ELSE [ADS].[Feature_64] END AS impter_66, CASE WHEN ([ADS].[Feature_65] IS NULL) THEN 0.0143662500367 ELSE [ADS].[Feature_65] END AS impter_67, CASE WHEN ([ADS].[Feature_66] IS NULL) THEN 0.0540753000896 ELSE [ADS].[Feature_66] END AS impter_68, CASE WHEN ([ADS].[Feature_67] IS NULL) THEN -0.230852733839 ELSE [ADS].[Feature_67] END AS impter_69, CASE WHEN ([ADS].[Feature_68] IS NULL) THEN -0.243965288084 ELSE [ADS].[Feature_68] END AS impter_70, CASE WHEN ([ADS].[Feature_69] IS NULL) THEN 0.0654506578766 ELSE [ADS].[Feature_69] END AS impter_71, CASE WHEN ([ADS].[Feature_70] IS NULL) THEN 0.0426651830202 ELSE [ADS].[Feature_70] END AS impter_72, CASE WHEN ([ADS].[Feature_71] IS NULL) THEN -0.154045182035 ELSE [ADS].[Feature_71] END AS impter_73, CASE WHEN ([ADS].[Feature_72] IS NULL) THEN -0.222235256457 ELSE [ADS].[Feature_72] END AS impter_74, CASE WHEN ([ADS].[Feature_73] IS NULL) THEN 0.0685606372973 ELSE [ADS].[Feature_73] END AS impter_75, CASE WHEN ([ADS].[Feature_74] IS NULL) THEN -0.0963959208539 ELSE [ADS].[Feature_74] END AS impter_76, CASE WHEN ([ADS].[Feature_75] IS NULL) THEN 0.207475189275 ELSE [ADS].[Feature_75] END AS impter_77, CASE WHEN ([ADS].[Feature_76] IS NULL) THEN -0.139452563671 ELSE [ADS].[Feature_76] END AS impter_78, CASE WHEN ([ADS].[Feature_77] IS NULL) THEN 0.0219542087737 ELSE [ADS].[Feature_77] END AS impter_79, CASE WHEN ([ADS].[Feature_78] IS NULL) THEN 0.0703351703703 ELSE [ADS].[Feature_78] END AS impter_80, CASE WHEN ([ADS].[Feature_79] IS NULL) THEN 0.120624721907 ELSE [ADS].[Feature_79] END AS impter_81, CASE WHEN ([ADS].[Feature_80] IS NULL) THEN -0.0337659474425 ELSE [ADS].[Feature_80] END AS impter_82, CASE WHEN ([ADS].[Feature_81] IS NULL) THEN -0.110635213133 ELSE [ADS].[Feature_81] END AS impter_83, CASE WHEN ([ADS].[Feature_82] IS NULL) THEN 0.0402642804367 ELSE [ADS].[Feature_82] END AS impter_84, CASE WHEN ([ADS].[Feature_83] IS NULL) THEN 0.0476196986347 ELSE [ADS].[Feature_83] END AS impter_85, CASE WHEN ([ADS].[Feature_84] IS NULL) THEN 0.102945428966 ELSE [ADS].[Feature_84] END AS impter_86, CASE WHEN ([ADS].[Feature_85] IS NULL) THEN 0.0354313908654 ELSE [ADS].[Feature_85] END AS impter_87, CASE WHEN ([ADS].[Feature_86] IS NULL) THEN 0.158126749954 ELSE [ADS].[Feature_86] END AS impter_88, CASE WHEN ([ADS].[Feature_87] IS NULL) THEN -0.093706792025 ELSE [ADS].[Feature_87] END AS impter_89, CASE WHEN ([ADS].[Feature_88] IS NULL) THEN -0.0535217413313 ELSE [ADS].[Feature_88] END AS impter_90, CASE WHEN ([ADS].[Feature_89] IS NULL) THEN -0.0567114213575 ELSE [ADS].[Feature_89] END AS impter_91, CASE WHEN ([ADS].[Feature_90] IS NULL) THEN 0.168350191992 ELSE [ADS].[Feature_90] END AS impter_92, CASE WHEN ([ADS].[Feature_91] IS NULL) THEN -0.0801468778596 ELSE [ADS].[Feature_91] END AS impter_93, CASE WHEN ([ADS].[Feature_92] IS NULL) THEN 0.0673275172113 ELSE [ADS].[Feature_92] END AS impter_94, CASE WHEN ([ADS].[Feature_93] IS NULL) THEN -0.00888651681787 ELSE [ADS].[Feature_93] END AS impter_95, CASE WHEN ([ADS].[Feature_94] IS NULL) THEN 0.0260953855178 ELSE [ADS].[Feature_94] END AS impter_96, CASE WHEN ([ADS].[Feature_95] IS NULL) THEN 0.04435425201 ELSE [ADS].[Feature_95] END AS impter_97, CASE WHEN ([ADS].[Feature_96] IS NULL) THEN 0.0268954080706 ELSE [ADS].[Feature_96] END AS impter_98, CASE WHEN ([ADS].[Feature_97] IS NULL) THEN 0.182329715391 ELSE [ADS].[Feature_97] END AS impter_99, CASE WHEN ([ADS].[Feature_98] IS NULL) THEN -0.12132540363 ELSE [ADS].[Feature_98] END AS impter_100, CASE WHEN ([ADS].[Feature_99] IS NULL) THEN 0.00442013252429 ELSE [ADS].[Feature_99] END AS impter_101 
FROM [BinaryClass_100] AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 0.149034408453) / 0.863660967893 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - -0.0336763649303) / 0.957846118882 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 0.119333163556) / 0.988940710895 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - -0.173692031302) / 0.925555542437 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - 0.0653435549211) / 1.25490665905 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - 0.243622899376) / 1.02899858975 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - -0.113673579111) / 0.892313689578 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - -0.211764438767) / 0.900298899995 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - 0.115139799146) / 1.04079311782 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - 0.0291119249386) / 0.819188267775 AS scaler_11, (CAST([ADS_imp_1_OUT].impter_12 AS FLOAT) - 0.110771892686) / 1.1250344343 AS scaler_12, (CAST([ADS_imp_1_OUT].impter_13 AS FLOAT) - 0.00145803754246) / 1.05817527823 AS scaler_13, (CAST([ADS_imp_1_OUT].impter_14 AS FLOAT) - -0.0773739291867) / 0.941909260462 AS scaler_14, (CAST([ADS_imp_1_OUT].impter_15 AS FLOAT) - -0.113957287588) / 0.984434017257 AS scaler_15, (CAST([ADS_imp_1_OUT].impter_16 AS FLOAT) - -0.12567631285) / 1.06969606599 AS scaler_16, (CAST([ADS_imp_1_OUT].impter_17 AS FLOAT) - -0.0579959783399) / 0.957224686977 AS scaler_17, (CAST([ADS_imp_1_OUT].impter_18 AS FLOAT) - -0.141812641745) / 0.940278231802 AS scaler_18, (CAST([ADS_imp_1_OUT].impter_19 AS FLOAT) - -0.12654542869) / 1.03940757746 AS scaler_19, (CAST([ADS_imp_1_OUT].impter_20 AS FLOAT) - -0.0781224868352) / 1.32237602306 AS scaler_20, (CAST([ADS_imp_1_OUT].impter_21 AS FLOAT) - -0.0764873768302) / 0.948894937925 AS scaler_21, (CAST([ADS_imp_1_OUT].impter_22 AS FLOAT) - 0.0586426242787) / 0.953858142664 AS scaler_22, (CAST([ADS_imp_1_OUT].impter_23 AS FLOAT) - 0.108440370746) / 1.21093008257 AS scaler_23, (CAST([ADS_imp_1_OUT].impter_24 AS FLOAT) - 0.0600659693334) / 0.919150215651 AS scaler_24, (CAST([ADS_imp_1_OUT].impter_25 AS FLOAT) - 0.152557712719) / 0.929957615475 AS scaler_25, (CAST([ADS_imp_1_OUT].impter_26 AS FLOAT) - -0.047123256878) / 0.772185544077 AS scaler_26, (CAST([ADS_imp_1_OUT].impter_27 AS FLOAT) - -0.0569629691409) / 0.865508439351 AS scaler_27, (CAST([ADS_imp_1_OUT].impter_28 AS FLOAT) - 0.0961468409994) / 0.96937898079 AS scaler_28, (CAST([ADS_imp_1_OUT].impter_29 AS FLOAT) - 0.104338334098) / 1.09747315088 AS scaler_29, (CAST([ADS_imp_1_OUT].impter_30 AS FLOAT) - 0.0325771619196) / 0.943506396878 AS scaler_30, (CAST([ADS_imp_1_OUT].impter_31 AS FLOAT) - 0.0614290574937) / 1.11707327333 AS scaler_31, (CAST([ADS_imp_1_OUT].impter_32 AS FLOAT) - -0.0145404234607) / 1.05731681973 AS scaler_32, (CAST([ADS_imp_1_OUT].impter_33 AS FLOAT) - -0.112338009994) / 0.978615165975 AS scaler_33, (CAST([ADS_imp_1_OUT].impter_34 AS FLOAT) - 0.118912844605) / 1.00635634008 AS scaler_34, (CAST([ADS_imp_1_OUT].impter_35 AS FLOAT) - 0.228686493008) / 0.99875178991 AS scaler_35, (CAST([ADS_imp_1_OUT].impter_36 AS FLOAT) - 0.235661815499) / 0.889212557545 AS scaler_36, (CAST([ADS_imp_1_OUT].impter_37 AS FLOAT) - 0.0731697039996) / 0.847859331458 AS scaler_37, (CAST([ADS_imp_1_OUT].impter_38 AS FLOAT) - -0.0331940982747) / 0.941776159176 AS scaler_38, (CAST([ADS_imp_1_OUT].impter_39 AS FLOAT) - 0.273493877418) / 0.88427109411 AS scaler_39, (CAST([ADS_imp_1_OUT].impter_40 AS FLOAT) - -0.0232895677422) / 0.994764574925 AS scaler_40, (CAST([ADS_imp_1_OUT].impter_41 AS FLOAT) - 0.0302883792606) / 1.03853940215 AS scaler_41, (CAST([ADS_imp_1_OUT].impter_42 AS FLOAT) - -0.107368262331) / 0.983011795115 AS scaler_42, (CAST([ADS_imp_1_OUT].impter_43 AS FLOAT) - 0.0264029500979) / 1.03982875397 AS scaler_43, (CAST([ADS_imp_1_OUT].impter_44 AS FLOAT) - -0.0967714665491) / 1.00152255641 AS scaler_44, (CAST([ADS_imp_1_OUT].impter_45 AS FLOAT) - 0.00597424834297) / 0.919224835729 AS scaler_45, (CAST([ADS_imp_1_OUT].impter_46 AS FLOAT) - 0.0369172681271) / 1.06975493897 AS scaler_46, (CAST([ADS_imp_1_OUT].impter_47 AS FLOAT) - -0.145257173824) / 1.0022143023 AS scaler_47, (CAST([ADS_imp_1_OUT].impter_48 AS FLOAT) - -0.166752698812) / 1.02649761736 AS scaler_48, (CAST([ADS_imp_1_OUT].impter_49 AS FLOAT) - 0.250844656957) / 1.01763512955 AS scaler_49, (CAST([ADS_imp_1_OUT].impter_50 AS FLOAT) - 0.146233983223) / 0.949901088245 AS scaler_50, (CAST([ADS_imp_1_OUT].impter_51 AS FLOAT) - 0.101854311334) / 1.08349130232 AS scaler_51, (CAST([ADS_imp_1_OUT].impter_52 AS FLOAT) - -0.132925609451) / 1.20304301294 AS scaler_52, (CAST([ADS_imp_1_OUT].impter_53 AS FLOAT) - -0.0421917913654) / 1.0890718482 AS scaler_53, (CAST([ADS_imp_1_OUT].impter_54 AS FLOAT) - 0.152140284047) / 1.03559281627 AS scaler_54, (CAST([ADS_imp_1_OUT].impter_55 AS FLOAT) - -0.158213723143) / 0.813084857359 AS scaler_55, (CAST([ADS_imp_1_OUT].impter_56 AS FLOAT) - 0.179262605358) / 1.07046714633 AS scaler_56, (CAST([ADS_imp_1_OUT].impter_57 AS FLOAT) - 0.0507753321044) / 1.00525649412 AS scaler_57, (CAST([ADS_imp_1_OUT].impter_58 AS FLOAT) - -0.0118845513623) / 0.969141309787 AS scaler_58, (CAST([ADS_imp_1_OUT].impter_59 AS FLOAT) - -0.0494874506914) / 1.26097682699 AS scaler_59, (CAST([ADS_imp_1_OUT].impter_60 AS FLOAT) - -0.132567335525) / 0.868625102233 AS scaler_60, (CAST([ADS_imp_1_OUT].impter_61 AS FLOAT) - 0.118662382025) / 1.06316548496 AS scaler_61, (CAST([ADS_imp_1_OUT].impter_62 AS FLOAT) - -0.0659082852023) / 1.04187279083 AS scaler_62, (CAST([ADS_imp_1_OUT].impter_63 AS FLOAT) - 0.155485733887) / 0.894651979404 AS scaler_63, (CAST([ADS_imp_1_OUT].impter_64 AS FLOAT) - -0.00660830149098) / 0.916615314172 AS scaler_64, (CAST([ADS_imp_1_OUT].impter_65 AS FLOAT) - -0.0182758014849) / 1.0372814666 AS scaler_65, (CAST([ADS_imp_1_OUT].impter_66 AS FLOAT) - -0.0273663174287) / 0.887668072204 AS scaler_66, (CAST([ADS_imp_1_OUT].impter_67 AS FLOAT) - 0.0143662500367) / 0.918497664595 AS scaler_67, (CAST([ADS_imp_1_OUT].impter_68 AS FLOAT) - 0.0540753000896) / 0.92958848937 AS scaler_68, (CAST([ADS_imp_1_OUT].impter_69 AS FLOAT) - -0.230852733839) / 0.944088767881 AS scaler_69, (CAST([ADS_imp_1_OUT].impter_70 AS FLOAT) - -0.243965288084) / 1.04592379692 AS scaler_70, (CAST([ADS_imp_1_OUT].impter_71 AS FLOAT) - 0.0654506578766) / 0.896770163985 AS scaler_71, (CAST([ADS_imp_1_OUT].impter_72 AS FLOAT) - 0.0426651830202) / 0.883539188169 AS scaler_72, (CAST([ADS_imp_1_OUT].impter_73 AS FLOAT) - -0.154045182035) / 0.986979156102 AS scaler_73, (CAST([ADS_imp_1_OUT].impter_74 AS FLOAT) - -0.222235256457) / 0.953792741196 AS scaler_74, (CAST([ADS_imp_1_OUT].impter_75 AS FLOAT) - 0.0685606372973) / 0.953717717146 AS scaler_75, (CAST([ADS_imp_1_OUT].impter_76 AS FLOAT) - -0.0963959208539) / 1.03587753203 AS scaler_76, (CAST([ADS_imp_1_OUT].impter_77 AS FLOAT) - 0.207475189275) / 1.06110762223 AS scaler_77, (CAST([ADS_imp_1_OUT].impter_78 AS FLOAT) - -0.139452563671) / 1.02237005332 AS scaler_78, (CAST([ADS_imp_1_OUT].impter_79 AS FLOAT) - 0.0219542087737) / 0.48752447533 AS scaler_79, (CAST([ADS_imp_1_OUT].impter_80 AS FLOAT) - 0.0703351703703) / 0.998427876189 AS scaler_80, (CAST([ADS_imp_1_OUT].impter_81 AS FLOAT) - 0.120624721907) / 1.04829143705 AS scaler_81, (CAST([ADS_imp_1_OUT].impter_82 AS FLOAT) - -0.0337659474425) / 1.01203950398 AS scaler_82, (CAST([ADS_imp_1_OUT].impter_83 AS FLOAT) - -0.110635213133) / 0.848796528198 AS scaler_83, (CAST([ADS_imp_1_OUT].impter_84 AS FLOAT) - 0.0402642804367) / 0.927886551998 AS scaler_84, (CAST([ADS_imp_1_OUT].impter_85 AS FLOAT) - 0.0476196986347) / 1.01736816768 AS scaler_85, (CAST([ADS_imp_1_OUT].impter_86 AS FLOAT) - 0.102945428966) / 0.936375113827 AS scaler_86, (CAST([ADS_imp_1_OUT].impter_87 AS FLOAT) - 0.0354313908654) / 0.976657395204 AS scaler_87, (CAST([ADS_imp_1_OUT].impter_88 AS FLOAT) - 0.158126749954) / 1.00656799984 AS scaler_88, (CAST([ADS_imp_1_OUT].impter_89 AS FLOAT) - -0.093706792025) / 0.952144160924 AS scaler_89, (CAST([ADS_imp_1_OUT].impter_90 AS FLOAT) - -0.0535217413313) / 1.03366798768 AS scaler_90, (CAST([ADS_imp_1_OUT].impter_91 AS FLOAT) - -0.0567114213575) / 1.08511078116 AS scaler_91, (CAST([ADS_imp_1_OUT].impter_92 AS FLOAT) - 0.168350191992) / 0.828654443272 AS scaler_92, (CAST([ADS_imp_1_OUT].impter_93 AS FLOAT) - -0.0801468778596) / 1.07042043255 AS scaler_93, (CAST([ADS_imp_1_OUT].impter_94 AS FLOAT) - 0.0673275172113) / 1.17497921998 AS scaler_94, (CAST([ADS_imp_1_OUT].impter_95 AS FLOAT) - -0.00888651681787) / 1.07500733772 AS scaler_95, (CAST([ADS_imp_1_OUT].impter_96 AS FLOAT) - 0.0260953855178) / 1.10781838782 AS scaler_96, (CAST([ADS_imp_1_OUT].impter_97 AS FLOAT) - 0.04435425201) / 0.88613754112 AS scaler_97, (CAST([ADS_imp_1_OUT].impter_98 AS FLOAT) - 0.0268954080706) / 1.00952888239 AS scaler_98, (CAST([ADS_imp_1_OUT].impter_99 AS FLOAT) - 0.182329715391) / 0.955138205624 AS scaler_99, (CAST([ADS_imp_1_OUT].impter_100 AS FLOAT) - -0.12132540363) / 0.925885755687 AS scaler_100, (CAST([ADS_imp_1_OUT].impter_101 AS FLOAT) - 0.00442013252429) / 0.937196598221 AS scaler_101 
FROM [ADS_imp_1_OUT]), 
linear_model_cte AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], 0.16069713167353405 * [ADS_sca_2_OUT].scaler_2 + -0.03557578160278277 * [ADS_sca_2_OUT].scaler_3 + 0.016531329138785807 * [ADS_sca_2_OUT].scaler_4 + -0.030340656360874758 * [ADS_sca_2_OUT].scaler_5 + -0.17291937254856563 * [ADS_sca_2_OUT].scaler_6 + 0.2636767125041597 * [ADS_sca_2_OUT].scaler_7 + -0.146280134498951 * [ADS_sca_2_OUT].scaler_8 + 0.01598133792936937 * [ADS_sca_2_OUT].scaler_9 + 0.052005002703020095 * [ADS_sca_2_OUT].scaler_10 + 0.09556439464174385 * [ADS_sca_2_OUT].scaler_11 + -0.12345224553601913 * [ADS_sca_2_OUT].scaler_12 + -0.1396268446439449 * [ADS_sca_2_OUT].scaler_13 + 0.16116629542708602 * [ADS_sca_2_OUT].scaler_14 + 0.00848442630836957 * [ADS_sca_2_OUT].scaler_15 + -0.030106105854180797 * [ADS_sca_2_OUT].scaler_16 + -0.12825120945033458 * [ADS_sca_2_OUT].scaler_17 + 0.06741890910244286 * [ADS_sca_2_OUT].scaler_18 + 0.07327597054000526 * [ADS_sca_2_OUT].scaler_19 + -0.06237731885492265 * [ADS_sca_2_OUT].scaler_20 + -0.0758419004524275 * [ADS_sca_2_OUT].scaler_21 + 0.0611476059735738 * [ADS_sca_2_OUT].scaler_22 + -0.0038770547519171514 * [ADS_sca_2_OUT].scaler_23 + -0.047332834046033806 * [ADS_sca_2_OUT].scaler_24 + -0.027691309933358027 * [ADS_sca_2_OUT].scaler_25 + 0.014472916663551392 * [ADS_sca_2_OUT].scaler_26 + -0.13990922594096672 * [ADS_sca_2_OUT].scaler_27 + -0.07975804792614508 * [ADS_sca_2_OUT].scaler_28 + 0.1152867187087554 * [ADS_sca_2_OUT].scaler_29 + -0.15886691206323952 * [ADS_sca_2_OUT].scaler_30 + 0.0679414132355163 * [ADS_sca_2_OUT].scaler_31 + -0.015328224301209795 * [ADS_sca_2_OUT].scaler_32 + -0.09609336134341062 * [ADS_sca_2_OUT].scaler_33 + 0.09036411987779006 * [ADS_sca_2_OUT].scaler_34 + -0.22527609996585726 * [ADS_sca_2_OUT].scaler_35 + -0.20074991231686906 * [ADS_sca_2_OUT].scaler_36 + 0.0034575854931077205 * [ADS_sca_2_OUT].scaler_37 + -0.08906243315414436 * [ADS_sca_2_OUT].scaler_38 + 0.013781655223090702 * [ADS_sca_2_OUT].scaler_39 + 0.02890617498874931 * [ADS_sca_2_OUT].scaler_40 + -0.04573959701162064 * [ADS_sca_2_OUT].scaler_41 + -0.04259378436245167 * [ADS_sca_2_OUT].scaler_42 + -0.07517818984496459 * [ADS_sca_2_OUT].scaler_43 + 0.010420576397583127 * [ADS_sca_2_OUT].scaler_44 + -0.06365581211421403 * [ADS_sca_2_OUT].scaler_45 + -0.11745492008530205 * [ADS_sca_2_OUT].scaler_46 + -0.05099577671188288 * [ADS_sca_2_OUT].scaler_47 + 0.03035966131471285 * [ADS_sca_2_OUT].scaler_48 + -0.019358218300143726 * [ADS_sca_2_OUT].scaler_49 + -0.16802219245367128 * [ADS_sca_2_OUT].scaler_50 + -0.030242902401858424 * [ADS_sca_2_OUT].scaler_51 + 0.005510273820073741 * [ADS_sca_2_OUT].scaler_52 + -0.05337125104872577 * [ADS_sca_2_OUT].scaler_53 + -0.10830490360287592 * [ADS_sca_2_OUT].scaler_54 + 0.20364173163882282 * [ADS_sca_2_OUT].scaler_55 + -0.013969180793220765 * [ADS_sca_2_OUT].scaler_56 + 0.25932589575798815 * [ADS_sca_2_OUT].scaler_57 + -0.03186208692366939 * [ADS_sca_2_OUT].scaler_58 + 0.19242988910220976 * [ADS_sca_2_OUT].scaler_59 + -0.027903487098627368 * [ADS_sca_2_OUT].scaler_60 + -0.017528417649586486 * [ADS_sca_2_OUT].scaler_61 + -0.23071904628047252 * [ADS_sca_2_OUT].scaler_62 + -0.09170943308873548 * [ADS_sca_2_OUT].scaler_63 + 0.024348960248176177 * [ADS_sca_2_OUT].scaler_64 + -0.02441760240257601 * [ADS_sca_2_OUT].scaler_65 + 0.005198818292650578 * [ADS_sca_2_OUT].scaler_66 + -0.03126396715492259 * [ADS_sca_2_OUT].scaler_67 + -0.1449033831093891 * [ADS_sca_2_OUT].scaler_68 + 0.3255103546184652 * [ADS_sca_2_OUT].scaler_69 + -0.06783546432039765 * [ADS_sca_2_OUT].scaler_70 + 0.06921222572366924 * [ADS_sca_2_OUT].scaler_71 + 0.09658010459357454 * [ADS_sca_2_OUT].scaler_72 + -0.16785763025915804 * [ADS_sca_2_OUT].scaler_73 + -0.10108949379660279 * [ADS_sca_2_OUT].scaler_74 + -0.1775731483257182 * [ADS_sca_2_OUT].scaler_75 + 0.14357196825403332 * [ADS_sca_2_OUT].scaler_76 + 0.03328843736616933 * [ADS_sca_2_OUT].scaler_77 + -0.01942384277209014 * [ADS_sca_2_OUT].scaler_78 + -0.18535791316366734 * [ADS_sca_2_OUT].scaler_79 + 0.05239962973936996 * [ADS_sca_2_OUT].scaler_80 + -0.07034998031895497 * [ADS_sca_2_OUT].scaler_81 + -0.07725847869151997 * [ADS_sca_2_OUT].scaler_82 + 0.019497100510606744 * [ADS_sca_2_OUT].scaler_83 + 0.1300955630520758 * [ADS_sca_2_OUT].scaler_84 + 0.11363752559832678 * [ADS_sca_2_OUT].scaler_85 + 0.04458679692097499 * [ADS_sca_2_OUT].scaler_86 + -0.14592074464892074 * [ADS_sca_2_OUT].scaler_87 + -0.06662136384231224 * [ADS_sca_2_OUT].scaler_88 + 0.056305879002387024 * [ADS_sca_2_OUT].scaler_89 + 0.15003946551861183 * [ADS_sca_2_OUT].scaler_90 + 0.01161117224095437 * [ADS_sca_2_OUT].scaler_91 + -0.17391394149445544 * [ADS_sca_2_OUT].scaler_92 + -0.09490429683310722 * [ADS_sca_2_OUT].scaler_93 + 0.15717452816437327 * [ADS_sca_2_OUT].scaler_94 + -0.004185581264063723 * [ADS_sca_2_OUT].scaler_95 + -0.08684627856601412 * [ADS_sca_2_OUT].scaler_96 + -0.10365892607424876 * [ADS_sca_2_OUT].scaler_97 + -0.11742699153743302 * [ADS_sca_2_OUT].scaler_98 + 0.1270741553583094 * [ADS_sca_2_OUT].scaler_99 + -0.13972301096603973 * [ADS_sca_2_OUT].scaler_100 + 0.023482548416393106 * [ADS_sca_2_OUT].scaler_101 + -0.05 AS lincomb 
FROM [ADS_sca_2_OUT])
 SELECT linear_model_cte.[KEY] AS [KEY], -linear_model_cte.lincomb AS [Score_0], linear_model_cte.lincomb AS [Score_1], CAST(NULL AS FLOAT) AS [Proba_0], CAST(NULL AS FLOAT) AS [Proba_1], CAST(NULL AS FLOAT) AS [LogProba_0], CAST(NULL AS FLOAT) AS [LogProba_1], CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba] 
FROM linear_model_cte