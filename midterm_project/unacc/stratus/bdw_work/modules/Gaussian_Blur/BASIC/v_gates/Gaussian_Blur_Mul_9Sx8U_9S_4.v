`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: May  6 2021 05:53:10 CST (May  5 2021 21:53:10 UTC)

module Gaussian_Blur_Mul_9Sx8U_9S_4(in2, in1, out1);
  input [8:0] in2;
  input [7:0] in1;
  output [8:0] out1;
  wire [8:0] in2;
  wire [7:0] in1;
  wire [8:0] out1;
  wire mul_22_8_n_0, mul_22_8_n_1, mul_22_8_n_2, mul_22_8_n_3,
       mul_22_8_n_4, mul_22_8_n_5, mul_22_8_n_6, mul_22_8_n_7;
  wire mul_22_8_n_8, mul_22_8_n_9, mul_22_8_n_10, mul_22_8_n_12,
       mul_22_8_n_13, mul_22_8_n_14, mul_22_8_n_15, mul_22_8_n_16;
  wire mul_22_8_n_17, mul_22_8_n_18, mul_22_8_n_19, mul_22_8_n_20,
       mul_22_8_n_21, mul_22_8_n_22, mul_22_8_n_23, mul_22_8_n_24;
  wire mul_22_8_n_25, mul_22_8_n_26, mul_22_8_n_27, mul_22_8_n_28,
       mul_22_8_n_29, mul_22_8_n_30, mul_22_8_n_31, mul_22_8_n_32;
  wire mul_22_8_n_33, mul_22_8_n_34, mul_22_8_n_35, mul_22_8_n_36,
       mul_22_8_n_37, mul_22_8_n_38, mul_22_8_n_39, mul_22_8_n_40;
  wire mul_22_8_n_41, mul_22_8_n_42, mul_22_8_n_43, mul_22_8_n_44,
       mul_22_8_n_45, mul_22_8_n_46, mul_22_8_n_47, mul_22_8_n_48;
  wire mul_22_8_n_49, mul_22_8_n_50, mul_22_8_n_51, mul_22_8_n_52,
       mul_22_8_n_53, mul_22_8_n_54, mul_22_8_n_55, mul_22_8_n_56;
  wire mul_22_8_n_57, mul_22_8_n_58, mul_22_8_n_59, mul_22_8_n_60,
       mul_22_8_n_61, mul_22_8_n_62, mul_22_8_n_63, mul_22_8_n_64;
  wire mul_22_8_n_65, mul_22_8_n_66, mul_22_8_n_67, mul_22_8_n_68,
       mul_22_8_n_69, mul_22_8_n_70, mul_22_8_n_71, mul_22_8_n_72;
  wire mul_22_8_n_73, mul_22_8_n_74, mul_22_8_n_75, mul_22_8_n_76,
       mul_22_8_n_77, mul_22_8_n_78, mul_22_8_n_80, mul_22_8_n_81;
  wire mul_22_8_n_82, mul_22_8_n_83, mul_22_8_n_84, mul_22_8_n_85,
       mul_22_8_n_86, mul_22_8_n_87, mul_22_8_n_88, mul_22_8_n_89;
  wire mul_22_8_n_90, mul_22_8_n_91, mul_22_8_n_92, mul_22_8_n_93,
       mul_22_8_n_95, mul_22_8_n_96, mul_22_8_n_97, mul_22_8_n_98;
  wire mul_22_8_n_99, mul_22_8_n_100, mul_22_8_n_101, mul_22_8_n_102,
       mul_22_8_n_103, mul_22_8_n_104, mul_22_8_n_105, mul_22_8_n_106;
  wire mul_22_8_n_108, mul_22_8_n_109, mul_22_8_n_110, mul_22_8_n_111,
       mul_22_8_n_112, mul_22_8_n_114, mul_22_8_n_115, mul_22_8_n_116;
  wire mul_22_8_n_117, mul_22_8_n_118, mul_22_8_n_119, mul_22_8_n_120,
       mul_22_8_n_121, mul_22_8_n_122, mul_22_8_n_123, mul_22_8_n_125;
  wire mul_22_8_n_126, mul_22_8_n_127, mul_22_8_n_129, mul_22_8_n_130,
       mul_22_8_n_132;
  XNOR2X1 mul_22_8_g1336(.A (mul_22_8_n_125), .B (mul_22_8_n_132), .Y
       (out1[8]));
  AOI221X1 mul_22_8_g1337(.A0 (mul_22_8_n_109), .A1 (mul_22_8_n_127),
       .B0 (mul_22_8_n_114), .B1 (mul_22_8_n_127), .C0
       (mul_22_8_n_130), .Y (mul_22_8_n_132));
  XNOR2X1 mul_22_8_g1338(.A (mul_22_8_n_126), .B (mul_22_8_n_129), .Y
       (out1[7]));
  OAI21X1 mul_22_8_g1339(.A0 (mul_22_8_n_116), .A1 (mul_22_8_n_123),
       .B0 (mul_22_8_n_122), .Y (mul_22_8_n_130));
  OAI21X1 mul_22_8_g1340(.A0 (mul_22_8_n_117), .A1 (mul_22_8_n_121),
       .B0 (mul_22_8_n_116), .Y (mul_22_8_n_129));
  XNOR2X1 mul_22_8_g1341(.A (mul_22_8_n_120), .B (mul_22_8_n_121), .Y
       (out1[6]));
  NOR2X1 mul_22_8_g1342(.A (mul_22_8_n_117), .B (mul_22_8_n_123), .Y
       (mul_22_8_n_127));
  NAND2BX1 mul_22_8_g1343(.AN (mul_22_8_n_123), .B (mul_22_8_n_122), .Y
       (mul_22_8_n_126));
  XNOR2X1 mul_22_8_g1344(.A (mul_22_8_n_118), .B (mul_22_8_n_105), .Y
       (mul_22_8_n_125));
  XNOR2X1 mul_22_8_g1345(.A (mul_22_8_n_106), .B (mul_22_8_n_115), .Y
       (out1[5]));
  NOR2X1 mul_22_8_g1346(.A (mul_22_8_n_111), .B (mul_22_8_n_119), .Y
       (mul_22_8_n_123));
  NAND2X1 mul_22_8_g1347(.A (mul_22_8_n_111), .B (mul_22_8_n_119), .Y
       (mul_22_8_n_122));
  NOR2X1 mul_22_8_g1348(.A (mul_22_8_n_114), .B (mul_22_8_n_109), .Y
       (mul_22_8_n_121));
  NOR2BX1 mul_22_8_g1349(.AN (mul_22_8_n_116), .B (mul_22_8_n_117), .Y
       (mul_22_8_n_120));
  ADDFX1 mul_22_8_g1350(.A (mul_22_8_n_89), .B (mul_22_8_n_90), .CI
       (mul_22_8_n_85), .CO (mul_22_8_n_118), .S (mul_22_8_n_119));
  NOR2X1 mul_22_8_g1351(.A (mul_22_8_n_100), .B (mul_22_8_n_112), .Y
       (mul_22_8_n_117));
  NAND2X1 mul_22_8_g1352(.A (mul_22_8_n_100), .B (mul_22_8_n_112), .Y
       (mul_22_8_n_116));
  NAND2X1 mul_22_8_g1353(.A (mul_22_8_n_99), .B (mul_22_8_n_110), .Y
       (mul_22_8_n_115));
  NOR2X1 mul_22_8_g1354(.A (mul_22_8_n_103), .B (mul_22_8_n_110), .Y
       (mul_22_8_n_114));
  XNOR2X1 mul_22_8_g1355(.A (mul_22_8_n_108), .B (mul_22_8_n_102), .Y
       (out1[4]));
  ADDFX1 mul_22_8_g1356(.A (mul_22_8_n_91), .B (mul_22_8_n_64), .CI
       (mul_22_8_n_86), .CO (mul_22_8_n_111), .S (mul_22_8_n_112));
  NAND2X1 mul_22_8_g1357(.A (mul_22_8_n_98), .B (mul_22_8_n_108), .Y
       (mul_22_8_n_110));
  OAI21X1 mul_22_8_g1358(.A0 (mul_22_8_n_99), .A1 (mul_22_8_n_103), .B0
       (mul_22_8_n_104), .Y (mul_22_8_n_109));
  ADDFX1 mul_22_8_g1359(.A (mul_22_8_n_93), .B (mul_22_8_n_81), .CI
       (mul_22_8_n_63), .CO (mul_22_8_n_108), .S (out1[3]));
  NAND2BX1 mul_22_8_g1360(.AN (mul_22_8_n_103), .B (mul_22_8_n_104), .Y
       (mul_22_8_n_106));
  XNOR2X1 mul_22_8_g1361(.A (mul_22_8_n_92), .B (mul_22_8_n_97), .Y
       (mul_22_8_n_105));
  NAND2X1 mul_22_8_g1362(.A (mul_22_8_n_95), .B (mul_22_8_n_101), .Y
       (mul_22_8_n_104));
  NOR2X1 mul_22_8_g1363(.A (mul_22_8_n_95), .B (mul_22_8_n_101), .Y
       (mul_22_8_n_103));
  NAND2X1 mul_22_8_g1364(.A (mul_22_8_n_99), .B (mul_22_8_n_98), .Y
       (mul_22_8_n_102));
  ADDFX1 mul_22_8_g1365(.A (mul_22_8_n_87), .B (mul_22_8_n_65), .CI
       (mul_22_8_n_56), .CO (mul_22_8_n_100), .S (mul_22_8_n_101));
  NAND2X1 mul_22_8_g1366(.A (mul_22_8_n_82), .B (mul_22_8_n_96), .Y
       (mul_22_8_n_99));
  OR2XL mul_22_8_g1367(.A (mul_22_8_n_82), .B (mul_22_8_n_96), .Y
       (mul_22_8_n_98));
  XNOR2X1 mul_22_8_g1368(.A (mul_22_8_n_88), .B (mul_22_8_n_83), .Y
       (mul_22_8_n_97));
  ADDFX1 mul_22_8_g1369(.A (mul_22_8_n_58), .B (mul_22_8_n_48), .CI
       (mul_22_8_n_55), .CO (mul_22_8_n_95), .S (mul_22_8_n_96));
  ADDFX1 mul_22_8_g1370(.A (mul_22_8_n_77), .B (mul_22_8_n_71), .CI
       (mul_22_8_n_47), .CO (mul_22_8_n_93), .S (out1[2]));
  XNOR2X1 mul_22_8_g1371(.A (mul_22_8_n_84), .B (mul_22_8_n_80), .Y
       (mul_22_8_n_92));
  ADDFX1 mul_22_8_g1372(.A (mul_22_8_n_59), .B (mul_22_8_n_53), .CI
       (mul_22_8_n_67), .CO (mul_22_8_n_90), .S (mul_22_8_n_91));
  ADDFX1 mul_22_8_g1373(.A (mul_22_8_n_68), .B (mul_22_8_n_76), .CI
       (mul_22_8_n_66), .CO (mul_22_8_n_88), .S (mul_22_8_n_89));
  ADDHX1 mul_22_8_g1374(.A (mul_22_8_n_73), .B (mul_22_8_n_61), .CO
       (mul_22_8_n_86), .S (mul_22_8_n_87));
  ADDHX1 mul_22_8_g1375(.A (mul_22_8_n_75), .B (mul_22_8_n_57), .CO
       (mul_22_8_n_84), .S (mul_22_8_n_85));
  XNOR2X1 mul_22_8_g1376(.A (mul_22_8_n_70), .B (mul_22_8_n_78), .Y
       (mul_22_8_n_83));
  ADDHX1 mul_22_8_g1377(.A (mul_22_8_n_52), .B (mul_22_8_n_60), .CO
       (mul_22_8_n_82), .S (mul_22_8_n_81));
  XNOR2X1 mul_22_8_g1378(.A (mul_22_8_n_69), .B (mul_22_8_n_74), .Y
       (mul_22_8_n_80));
  AOI21X1 mul_22_8_g1379(.A0 (mul_22_8_n_36), .A1 (mul_22_8_n_72), .B0
       (mul_22_8_n_77), .Y (out1[1]));
  XNOR2X1 mul_22_8_g1380(.A (mul_22_8_n_12), .B (mul_22_8_n_62), .Y
       (mul_22_8_n_78));
  NOR2X1 mul_22_8_g1381(.A (mul_22_8_n_36), .B (mul_22_8_n_72), .Y
       (mul_22_8_n_77));
  OAI22X1 mul_22_8_g1382(.A0 (mul_22_8_n_14), .A1 (mul_22_8_n_54), .B0
       (mul_22_8_n_27), .B1 (mul_22_8_n_21), .Y (mul_22_8_n_76));
  AOI221X1 mul_22_8_g1383(.A0 (in1[6]), .A1 (in1[5]), .B0 (in2[0]), .B1
       (mul_22_8_n_0), .C0 (mul_22_8_n_7), .Y (mul_22_8_n_75));
  OAI22X1 mul_22_8_g1384(.A0 (mul_22_8_n_27), .A1 (mul_22_8_n_54), .B0
       (mul_22_8_n_16), .B1 (mul_22_8_n_21), .Y (mul_22_8_n_74));
  AOI221X1 mul_22_8_g1385(.A0 (in2[0]), .A1 (in1[3]), .B0 (in1[4]), .B1
       (mul_22_8_n_10), .C0 (mul_22_8_n_4), .Y (mul_22_8_n_73));
  OAI22X1 mul_22_8_g1386(.A0 (mul_22_8_n_22), .A1 (mul_22_8_n_51), .B0
       (mul_22_8_n_6), .B1 (mul_22_8_n_26), .Y (mul_22_8_n_71));
  OAI22XL mul_22_8_g1387(.A0 (mul_22_8_n_40), .A1 (mul_22_8_n_46), .B0
       (mul_22_8_n_32), .B1 (mul_22_8_n_34), .Y (mul_22_8_n_70));
  AOI22X1 mul_22_8_g1388(.A0 (mul_22_8_n_17), .A1 (mul_22_8_n_50), .B0
       (in1[0]), .B1 (mul_22_8_n_23), .Y (mul_22_8_n_72));
  OAI22XL mul_22_8_g1389(.A0 (mul_22_8_n_41), .A1 (mul_22_8_n_49), .B0
       (mul_22_8_n_33), .B1 (mul_22_8_n_35), .Y (mul_22_8_n_69));
  OAI22X1 mul_22_8_g1390(.A0 (mul_22_8_n_25), .A1 (mul_22_8_n_49), .B0
       (mul_22_8_n_41), .B1 (mul_22_8_n_35), .Y (mul_22_8_n_68));
  OAI22X1 mul_22_8_g1391(.A0 (mul_22_8_n_28), .A1 (mul_22_8_n_49), .B0
       (mul_22_8_n_25), .B1 (mul_22_8_n_35), .Y (mul_22_8_n_67));
  OAI22X1 mul_22_8_g1392(.A0 (mul_22_8_n_38), .A1 (mul_22_8_n_46), .B0
       (mul_22_8_n_40), .B1 (mul_22_8_n_34), .Y (mul_22_8_n_66));
  OAI22X1 mul_22_8_g1393(.A0 (mul_22_8_n_24), .A1 (mul_22_8_n_46), .B0
       (mul_22_8_n_37), .B1 (mul_22_8_n_34), .Y (mul_22_8_n_65));
  OAI22X1 mul_22_8_g1394(.A0 (mul_22_8_n_37), .A1 (mul_22_8_n_46), .B0
       (mul_22_8_n_38), .B1 (mul_22_8_n_34), .Y (mul_22_8_n_64));
  OAI22X1 mul_22_8_g1395(.A0 (mul_22_8_n_26), .A1 (mul_22_8_n_51), .B0
       (mul_22_8_n_6), .B1 (mul_22_8_n_44), .Y (mul_22_8_n_63));
  OAI22X1 mul_22_8_g1396(.A0 (mul_22_8_n_39), .A1 (mul_22_8_n_51), .B0
       (mul_22_8_n_6), .B1 (mul_22_8_n_31), .Y (mul_22_8_n_62));
  OAI22X1 mul_22_8_g1397(.A0 (mul_22_8_n_45), .A1 (mul_22_8_n_51), .B0
       (mul_22_8_n_6), .B1 (mul_22_8_n_43), .Y (mul_22_8_n_61));
  OAI22X1 mul_22_8_g1398(.A0 (mul_22_8_n_18), .A1 (mul_22_8_n_46), .B0
       (mul_22_8_n_29), .B1 (mul_22_8_n_34), .Y (mul_22_8_n_60));
  OAI22X1 mul_22_8_g1399(.A0 (mul_22_8_n_43), .A1 (mul_22_8_n_51), .B0
       (mul_22_8_n_6), .B1 (mul_22_8_n_42), .Y (mul_22_8_n_59));
  OAI22X1 mul_22_8_g1400(.A0 (mul_22_8_n_44), .A1 (mul_22_8_n_51), .B0
       (mul_22_8_n_6), .B1 (mul_22_8_n_45), .Y (mul_22_8_n_58));
  OAI22X1 mul_22_8_g1401(.A0 (mul_22_8_n_42), .A1 (mul_22_8_n_51), .B0
       (mul_22_8_n_6), .B1 (mul_22_8_n_39), .Y (mul_22_8_n_57));
  OAI22X1 mul_22_8_g1402(.A0 (mul_22_8_n_20), .A1 (mul_22_8_n_49), .B0
       (mul_22_8_n_28), .B1 (mul_22_8_n_35), .Y (mul_22_8_n_56));
  OAI22X1 mul_22_8_g1403(.A0 (mul_22_8_n_29), .A1 (mul_22_8_n_46), .B0
       (mul_22_8_n_24), .B1 (mul_22_8_n_34), .Y (mul_22_8_n_55));
  NAND2X1 mul_22_8_g1404(.A (mul_22_8_n_15), .B (mul_22_8_n_21), .Y
       (mul_22_8_n_54));
  NOR2X1 mul_22_8_g1405(.A (mul_22_8_n_3), .B (mul_22_8_n_21), .Y
       (mul_22_8_n_53));
  AOI221X1 mul_22_8_g1406(.A0 (in2[0]), .A1 (in1[2]), .B0 (in1[1]), .B1
       (mul_22_8_n_1), .C0 (mul_22_8_n_2), .Y (mul_22_8_n_52));
  INVX1 mul_22_8_g1407(.A (mul_22_8_n_51), .Y (mul_22_8_n_50));
  NAND2X1 mul_22_8_g1408(.A (mul_22_8_n_6), .B (mul_22_8_n_13), .Y
       (mul_22_8_n_51));
  NAND2X1 mul_22_8_g1409(.A (mul_22_8_n_19), .B (mul_22_8_n_35), .Y
       (mul_22_8_n_49));
  NOR2X1 mul_22_8_g1410(.A (mul_22_8_n_3), .B (mul_22_8_n_35), .Y
       (mul_22_8_n_48));
  NOR2X1 mul_22_8_g1411(.A (mul_22_8_n_3), .B (mul_22_8_n_34), .Y
       (mul_22_8_n_47));
  NAND2X1 mul_22_8_g1412(.A (mul_22_8_n_30), .B (mul_22_8_n_34), .Y
       (mul_22_8_n_46));
  MXI2XL mul_22_8_g1413(.A (in1[5]), .B (mul_22_8_n_4), .S0 (in2[4]),
       .Y (mul_22_8_n_33));
  MXI2XL mul_22_8_g1414(.A (in1[3]), .B (mul_22_8_n_2), .S0 (in2[6]),
       .Y (mul_22_8_n_32));
  XNOR2X1 mul_22_8_g1415(.A (in2[8]), .B (in1[1]), .Y (mul_22_8_n_31));
  MXI2XL mul_22_8_g1416(.A (mul_22_8_n_2), .B (in1[3]), .S0 (in1[2]),
       .Y (mul_22_8_n_30));
  XNOR2X1 mul_22_8_g1417(.A (in2[4]), .B (in1[1]), .Y (mul_22_8_n_45));
  XNOR2X1 mul_22_8_g1418(.A (in2[3]), .B (in1[1]), .Y (mul_22_8_n_44));
  XNOR2X1 mul_22_8_g1419(.A (in2[5]), .B (in1[1]), .Y (mul_22_8_n_43));
  XNOR2X1 mul_22_8_g1420(.A (in2[6]), .B (in1[1]), .Y (mul_22_8_n_42));
  MXI2XL mul_22_8_g1421(.A (in1[5]), .B (mul_22_8_n_4), .S0 (in2[3]),
       .Y (mul_22_8_n_41));
  MXI2XL mul_22_8_g1422(.A (in1[3]), .B (mul_22_8_n_2), .S0 (in2[5]),
       .Y (mul_22_8_n_40));
  XNOR2X1 mul_22_8_g1423(.A (in2[7]), .B (in1[1]), .Y (mul_22_8_n_39));
  MXI2XL mul_22_8_g1424(.A (in1[3]), .B (mul_22_8_n_2), .S0 (in2[4]),
       .Y (mul_22_8_n_38));
  MX2XL mul_22_8_g1425(.A (mul_22_8_n_2), .B (in1[3]), .S0 (in2[3]), .Y
       (mul_22_8_n_37));
  NAND2BX1 mul_22_8_g1426(.AN (out1[0]), .B (in1[1]), .Y
       (mul_22_8_n_36));
  MX2X1 mul_22_8_g1427(.A (mul_22_8_n_2), .B (in1[3]), .S0 (in1[4]), .Y
       (mul_22_8_n_35));
  XNOR2X1 mul_22_8_g1428(.A (in1[2]), .B (in1[1]), .Y (mul_22_8_n_34));
  INVX1 mul_22_8_g1429(.A (mul_22_8_n_22), .Y (mul_22_8_n_23));
  AOI22X1 mul_22_8_g1430(.A0 (in2[0]), .A1 (mul_22_8_n_4), .B0
       (in1[5]), .B1 (mul_22_8_n_3), .Y (mul_22_8_n_20));
  MXI2XL mul_22_8_g1431(.A (mul_22_8_n_4), .B (in1[5]), .S0 (in1[4]),
       .Y (mul_22_8_n_19));
  AOI22X1 mul_22_8_g1432(.A0 (in2[0]), .A1 (mul_22_8_n_2), .B0
       (in1[3]), .B1 (mul_22_8_n_3), .Y (mul_22_8_n_18));
  OAI22X1 mul_22_8_g1433(.A0 (mul_22_8_n_3), .A1 (in1[1]), .B0
       (mul_22_8_n_5), .B1 (in2[0]), .Y (mul_22_8_n_17));
  AOI22X1 mul_22_8_g1434(.A0 (in2[2]), .A1 (mul_22_8_n_7), .B0
       (in1[7]), .B1 (mul_22_8_n_9), .Y (mul_22_8_n_16));
  MXI2XL mul_22_8_g1435(.A (mul_22_8_n_7), .B (in1[7]), .S0 (in1[6]),
       .Y (mul_22_8_n_15));
  AOI22X1 mul_22_8_g1436(.A0 (in2[0]), .A1 (mul_22_8_n_7), .B0
       (in1[7]), .B1 (mul_22_8_n_3), .Y (mul_22_8_n_14));
  OAI22X1 mul_22_8_g1437(.A0 (mul_22_8_n_5), .A1 (in1[0]), .B0
       (mul_22_8_n_6), .B1 (in1[1]), .Y (mul_22_8_n_13));
  AOI22X1 mul_22_8_g1438(.A0 (in2[1]), .A1 (mul_22_8_n_2), .B0
       (in1[3]), .B1 (mul_22_8_n_8), .Y (mul_22_8_n_29));
  AOI22X1 mul_22_8_g1439(.A0 (in2[1]), .A1 (mul_22_8_n_4), .B0
       (in1[5]), .B1 (mul_22_8_n_8), .Y (mul_22_8_n_28));
  AOI22X1 mul_22_8_g1440(.A0 (in2[1]), .A1 (mul_22_8_n_7), .B0
       (in1[7]), .B1 (mul_22_8_n_8), .Y (mul_22_8_n_27));
  XNOR2X1 mul_22_8_g1441(.A (in2[2]), .B (in1[1]), .Y (mul_22_8_n_26));
  AOI22X1 mul_22_8_g1442(.A0 (in2[2]), .A1 (mul_22_8_n_4), .B0
       (in1[5]), .B1 (mul_22_8_n_9), .Y (mul_22_8_n_25));
  AOI22X1 mul_22_8_g1443(.A0 (in2[2]), .A1 (mul_22_8_n_2), .B0
       (in1[3]), .B1 (mul_22_8_n_9), .Y (mul_22_8_n_24));
  XNOR2X1 mul_22_8_g1444(.A (in2[1]), .B (in1[1]), .Y (mul_22_8_n_22));
  MX2X1 mul_22_8_g1445(.A (mul_22_8_n_4), .B (in1[5]), .S0 (in1[6]), .Y
       (mul_22_8_n_21));
  NAND2X1 mul_22_8_g1448(.A (in2[0]), .B (in1[7]), .Y (mul_22_8_n_12));
  NOR2X1 mul_22_8_g1449(.A (mul_22_8_n_3), .B (mul_22_8_n_6), .Y
       (out1[0]));
  NAND2X1 mul_22_8_g1450(.A (mul_22_8_n_3), .B (mul_22_8_n_2), .Y
       (mul_22_8_n_10));
  INVX1 mul_22_8_g1452(.A (in2[2]), .Y (mul_22_8_n_9));
  INVX1 mul_22_8_g1453(.A (in2[1]), .Y (mul_22_8_n_8));
  INVX1 mul_22_8_g1454(.A (in1[7]), .Y (mul_22_8_n_7));
  INVX1 mul_22_8_g1455(.A (in1[0]), .Y (mul_22_8_n_6));
  INVX1 mul_22_8_g1456(.A (in1[1]), .Y (mul_22_8_n_5));
  INVX1 mul_22_8_g1458(.A (in1[5]), .Y (mul_22_8_n_4));
  INVX1 mul_22_8_g1459(.A (in2[0]), .Y (mul_22_8_n_3));
  INVX1 mul_22_8_g1460(.A (in1[3]), .Y (mul_22_8_n_2));
  NAND2BX1 mul_22_8_g2(.AN (in1[2]), .B (mul_22_8_n_3), .Y
       (mul_22_8_n_1));
  NAND2BX1 mul_22_8_g1461(.AN (in1[6]), .B (mul_22_8_n_4), .Y
       (mul_22_8_n_0));
endmodule
