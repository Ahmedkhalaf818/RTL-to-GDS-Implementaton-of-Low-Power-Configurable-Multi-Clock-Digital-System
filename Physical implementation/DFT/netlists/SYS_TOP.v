/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sat Oct  4 07:24:43 2025
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X8M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module RST_SYN_test_0 ( CLK, RST, SYNC_RST, test_si, test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST;
  wire   \rst_shift_reg[0] ;

  SDFFRQX2M \rst_shift_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\rst_shift_reg[0] ) );
  SDFFRQX1M \rst_shift_reg_reg[1]  ( .D(\rst_shift_reg[0] ), .SI(
        \rst_shift_reg[0] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module RST_SYN_test_1 ( CLK, RST, SYNC_RST, test_si, test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST;
  wire   \rst_shift_reg[0] ;

  SDFFRQX2M \rst_shift_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\rst_shift_reg[0] ) );
  SDFFRQX1M \rst_shift_reg_reg[1]  ( .D(\rst_shift_reg[0] ), .SI(
        \rst_shift_reg[0] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module CLK_gating ( CLK, CLK_EN, test, Gated_CLK );
  input CLK, CLK_EN, test;
  output Gated_CLK;
  wire   _2_net_;

  TLATNCAX2M U_LATNCAX2M ( .E(_2_net_), .CK(CLK), .ECK(Gated_CLK) );
  OR2X2M U1 ( .A(CLK_EN), .B(test), .Y(_2_net_) );
endmodule


module Register_File_test_1 ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, 
        RdData_valid, REG0, REG1, REG2, REG3, test_si3, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn, test_si3, test_si2, test_si1, test_se;
  output RdData_valid, test_so2, test_so1;
  wire   N11, N12, N13, N14, \regfile[15][7] , \regfile[15][6] ,
         \regfile[15][5] , \regfile[15][4] , \regfile[15][3] ,
         \regfile[15][2] , \regfile[15][1] , \regfile[15][0] ,
         \regfile[14][7] , \regfile[14][6] , \regfile[14][5] ,
         \regfile[14][4] , \regfile[14][3] , \regfile[14][2] ,
         \regfile[14][1] , \regfile[14][0] , \regfile[13][7] ,
         \regfile[13][6] , \regfile[13][5] , \regfile[13][4] ,
         \regfile[13][3] , \regfile[13][2] , \regfile[13][1] ,
         \regfile[13][0] , \regfile[12][7] , \regfile[12][6] ,
         \regfile[12][5] , \regfile[12][4] , \regfile[12][3] ,
         \regfile[12][2] , \regfile[12][1] , \regfile[12][0] ,
         \regfile[11][7] , \regfile[11][6] , \regfile[11][5] ,
         \regfile[11][4] , \regfile[11][3] , \regfile[11][2] ,
         \regfile[11][1] , \regfile[11][0] , \regfile[10][7] ,
         \regfile[10][6] , \regfile[10][5] , \regfile[10][4] ,
         \regfile[10][3] , \regfile[10][2] , \regfile[10][1] ,
         \regfile[10][0] , \regfile[9][7] , \regfile[9][6] , \regfile[9][5] ,
         \regfile[9][4] , \regfile[9][3] , \regfile[9][2] , \regfile[9][1] ,
         \regfile[9][0] , \regfile[8][7] , \regfile[8][6] , \regfile[8][5] ,
         \regfile[8][4] , \regfile[8][3] , \regfile[8][2] , \regfile[8][1] ,
         \regfile[8][0] , \regfile[7][7] , \regfile[7][6] , \regfile[7][5] ,
         \regfile[7][4] , \regfile[7][3] , \regfile[7][2] , \regfile[7][1] ,
         \regfile[7][0] , \regfile[6][7] , \regfile[6][6] , \regfile[6][5] ,
         \regfile[6][4] , \regfile[6][3] , \regfile[6][2] , \regfile[6][1] ,
         \regfile[6][0] , \regfile[5][7] , \regfile[5][6] , \regfile[5][5] ,
         \regfile[5][4] , \regfile[5][3] , \regfile[5][2] , \regfile[5][1] ,
         \regfile[5][0] , \regfile[4][7] , \regfile[4][6] , \regfile[4][5] ,
         \regfile[4][4] , \regfile[4][3] , \regfile[4][2] , \regfile[4][1] ,
         \regfile[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n371, n372, n373, n374;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so2 = \regfile[15][7] ;
  assign test_so1 = \regfile[12][4] ;

  SDFFRQX2M \regfile_reg[13][7]  ( .D(n298), .SI(\regfile[13][6] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regfile[13][7] ) );
  SDFFRQX2M \regfile_reg[13][6]  ( .D(n297), .SI(\regfile[13][5] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regfile[13][6] ) );
  SDFFRQX2M \regfile_reg[13][5]  ( .D(n296), .SI(\regfile[13][4] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regfile[13][5] ) );
  SDFFRQX2M \regfile_reg[13][4]  ( .D(n295), .SI(\regfile[13][3] ), .SE(n374), 
        .CK(CLK), .RN(n350), .Q(\regfile[13][4] ) );
  SDFFRQX2M \regfile_reg[13][3]  ( .D(n294), .SI(\regfile[13][2] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regfile[13][3] ) );
  SDFFRQX2M \regfile_reg[13][2]  ( .D(n293), .SI(\regfile[13][1] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regfile[13][2] ) );
  SDFFRQX2M \regfile_reg[13][1]  ( .D(n292), .SI(\regfile[13][0] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regfile[13][1] ) );
  SDFFRQX2M \regfile_reg[13][0]  ( .D(n291), .SI(\regfile[12][7] ), .SE(n374), 
        .CK(CLK), .RN(n350), .Q(\regfile[13][0] ) );
  SDFFRQX2M \regfile_reg[9][7]  ( .D(n266), .SI(\regfile[9][6] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\regfile[9][7] ) );
  SDFFRQX2M \regfile_reg[9][6]  ( .D(n265), .SI(\regfile[9][5] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regfile[9][6] ) );
  SDFFRQX2M \regfile_reg[9][5]  ( .D(n264), .SI(\regfile[9][4] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regfile[9][5] ) );
  SDFFRQX2M \regfile_reg[9][4]  ( .D(n263), .SI(\regfile[9][3] ), .SE(n374), 
        .CK(CLK), .RN(n348), .Q(\regfile[9][4] ) );
  SDFFRQX2M \regfile_reg[9][3]  ( .D(n262), .SI(\regfile[9][2] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\regfile[9][3] ) );
  SDFFRQX2M \regfile_reg[9][2]  ( .D(n261), .SI(\regfile[9][1] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regfile[9][2] ) );
  SDFFRQX2M \regfile_reg[9][1]  ( .D(n260), .SI(\regfile[9][0] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regfile[9][1] ) );
  SDFFRQX2M \regfile_reg[9][0]  ( .D(n259), .SI(\regfile[8][7] ), .SE(n374), 
        .CK(CLK), .RN(n347), .Q(\regfile[9][0] ) );
  SDFFRQX2M \regfile_reg[5][7]  ( .D(n234), .SI(\regfile[5][6] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\regfile[5][7] ) );
  SDFFRQX2M \regfile_reg[5][6]  ( .D(n233), .SI(\regfile[5][5] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\regfile[5][6] ) );
  SDFFRQX2M \regfile_reg[5][5]  ( .D(n232), .SI(\regfile[5][4] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\regfile[5][5] ) );
  SDFFRQX2M \regfile_reg[5][4]  ( .D(n231), .SI(\regfile[5][3] ), .SE(n374), 
        .CK(CLK), .RN(n345), .Q(\regfile[5][4] ) );
  SDFFRQX2M \regfile_reg[5][3]  ( .D(n230), .SI(\regfile[5][2] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\regfile[5][3] ) );
  SDFFRQX2M \regfile_reg[5][2]  ( .D(n229), .SI(\regfile[5][1] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\regfile[5][2] ) );
  SDFFRQX2M \regfile_reg[5][1]  ( .D(n228), .SI(\regfile[5][0] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\regfile[5][1] ) );
  SDFFRQX2M \regfile_reg[5][0]  ( .D(n227), .SI(\regfile[4][7] ), .SE(n374), 
        .CK(CLK), .RN(n345), .Q(\regfile[5][0] ) );
  SDFFRQX2M \regfile_reg[15][7]  ( .D(n314), .SI(\regfile[15][6] ), .SE(n373), 
        .CK(CLK), .RN(n342), .Q(\regfile[15][7] ) );
  SDFFRQX2M \regfile_reg[15][6]  ( .D(n313), .SI(\regfile[15][5] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regfile[15][6] ) );
  SDFFRQX2M \regfile_reg[15][5]  ( .D(n312), .SI(\regfile[15][4] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regfile[15][5] ) );
  SDFFRQX2M \regfile_reg[15][4]  ( .D(n311), .SI(\regfile[15][3] ), .SE(n374), 
        .CK(CLK), .RN(n351), .Q(\regfile[15][4] ) );
  SDFFRQX2M \regfile_reg[15][3]  ( .D(n310), .SI(\regfile[15][2] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\regfile[15][3] ) );
  SDFFRQX2M \regfile_reg[15][2]  ( .D(n309), .SI(\regfile[15][1] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regfile[15][2] ) );
  SDFFRQX2M \regfile_reg[15][1]  ( .D(n308), .SI(\regfile[15][0] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regfile[15][1] ) );
  SDFFRQX2M \regfile_reg[15][0]  ( .D(n307), .SI(\regfile[14][7] ), .SE(n374), 
        .CK(CLK), .RN(n351), .Q(\regfile[15][0] ) );
  SDFFRQX2M \regfile_reg[11][7]  ( .D(n282), .SI(\regfile[11][6] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regfile[11][7] ) );
  SDFFRQX2M \regfile_reg[11][6]  ( .D(n281), .SI(\regfile[11][5] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regfile[11][6] ) );
  SDFFRQX2M \regfile_reg[11][5]  ( .D(n280), .SI(\regfile[11][4] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regfile[11][5] ) );
  SDFFRQX2M \regfile_reg[11][4]  ( .D(n279), .SI(\regfile[11][3] ), .SE(n374), 
        .CK(CLK), .RN(n349), .Q(\regfile[11][4] ) );
  SDFFRQX2M \regfile_reg[11][3]  ( .D(n278), .SI(\regfile[11][2] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regfile[11][3] ) );
  SDFFRQX2M \regfile_reg[11][2]  ( .D(n277), .SI(\regfile[11][1] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regfile[11][2] ) );
  SDFFRQX2M \regfile_reg[11][1]  ( .D(n276), .SI(\regfile[11][0] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regfile[11][1] ) );
  SDFFRQX2M \regfile_reg[11][0]  ( .D(n275), .SI(\regfile[10][7] ), .SE(n374), 
        .CK(CLK), .RN(n349), .Q(\regfile[11][0] ) );
  SDFFRQX2M \regfile_reg[7][7]  ( .D(n250), .SI(\regfile[7][6] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regfile[7][7] ) );
  SDFFRQX2M \regfile_reg[7][6]  ( .D(n249), .SI(\regfile[7][5] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regfile[7][6] ) );
  SDFFRQX2M \regfile_reg[7][5]  ( .D(n248), .SI(\regfile[7][4] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\regfile[7][5] ) );
  SDFFRQX2M \regfile_reg[7][4]  ( .D(n247), .SI(\regfile[7][3] ), .SE(n374), 
        .CK(CLK), .RN(n347), .Q(\regfile[7][4] ) );
  SDFFRQX2M \regfile_reg[7][3]  ( .D(n246), .SI(\regfile[7][2] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regfile[7][3] ) );
  SDFFRQX2M \regfile_reg[7][2]  ( .D(n245), .SI(\regfile[7][1] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\regfile[7][2] ) );
  SDFFRQX2M \regfile_reg[7][1]  ( .D(n244), .SI(\regfile[7][0] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\regfile[7][1] ) );
  SDFFRQX2M \regfile_reg[7][0]  ( .D(n243), .SI(\regfile[6][7] ), .SE(n374), 
        .CK(CLK), .RN(n346), .Q(\regfile[7][0] ) );
  SDFFRQX2M \regfile_reg[14][7]  ( .D(n306), .SI(\regfile[14][6] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\regfile[14][7] ) );
  SDFFRQX2M \regfile_reg[14][6]  ( .D(n305), .SI(\regfile[14][5] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regfile[14][6] ) );
  SDFFRQX2M \regfile_reg[14][5]  ( .D(n304), .SI(\regfile[14][4] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regfile[14][5] ) );
  SDFFRQX2M \regfile_reg[14][4]  ( .D(n303), .SI(\regfile[14][3] ), .SE(n374), 
        .CK(CLK), .RN(n351), .Q(\regfile[14][4] ) );
  SDFFRQX2M \regfile_reg[14][3]  ( .D(n302), .SI(\regfile[14][2] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\regfile[14][3] ) );
  SDFFRQX2M \regfile_reg[14][2]  ( .D(n301), .SI(\regfile[14][1] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regfile[14][2] ) );
  SDFFRQX2M \regfile_reg[14][1]  ( .D(n300), .SI(\regfile[14][0] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regfile[14][1] ) );
  SDFFRQX2M \regfile_reg[14][0]  ( .D(n299), .SI(\regfile[13][7] ), .SE(n374), 
        .CK(CLK), .RN(n350), .Q(\regfile[14][0] ) );
  SDFFRQX2M \regfile_reg[10][7]  ( .D(n274), .SI(\regfile[10][6] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regfile[10][7] ) );
  SDFFRQX2M \regfile_reg[10][6]  ( .D(n273), .SI(\regfile[10][5] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regfile[10][6] ) );
  SDFFRQX2M \regfile_reg[10][5]  ( .D(n272), .SI(\regfile[10][4] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regfile[10][5] ) );
  SDFFRQX2M \regfile_reg[10][4]  ( .D(n271), .SI(\regfile[10][3] ), .SE(n374), 
        .CK(CLK), .RN(n348), .Q(\regfile[10][4] ) );
  SDFFRQX2M \regfile_reg[10][3]  ( .D(n270), .SI(\regfile[10][2] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\regfile[10][3] ) );
  SDFFRQX2M \regfile_reg[10][2]  ( .D(n269), .SI(\regfile[10][1] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regfile[10][2] ) );
  SDFFRQX2M \regfile_reg[10][1]  ( .D(n268), .SI(\regfile[10][0] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regfile[10][1] ) );
  SDFFRQX2M \regfile_reg[10][0]  ( .D(n267), .SI(\regfile[9][7] ), .SE(n374), 
        .CK(CLK), .RN(n348), .Q(\regfile[10][0] ) );
  SDFFRQX2M \regfile_reg[6][7]  ( .D(n242), .SI(\regfile[6][6] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\regfile[6][7] ) );
  SDFFRQX2M \regfile_reg[6][6]  ( .D(n241), .SI(\regfile[6][5] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\regfile[6][6] ) );
  SDFFRQX2M \regfile_reg[6][5]  ( .D(n240), .SI(\regfile[6][4] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\regfile[6][5] ) );
  SDFFRQX2M \regfile_reg[6][4]  ( .D(n239), .SI(\regfile[6][3] ), .SE(n374), 
        .CK(CLK), .RN(n346), .Q(\regfile[6][4] ) );
  SDFFRQX2M \regfile_reg[6][3]  ( .D(n238), .SI(\regfile[6][2] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\regfile[6][3] ) );
  SDFFRQX2M \regfile_reg[6][2]  ( .D(n237), .SI(\regfile[6][1] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\regfile[6][2] ) );
  SDFFRQX2M \regfile_reg[6][1]  ( .D(n236), .SI(\regfile[6][0] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\regfile[6][1] ) );
  SDFFRQX2M \regfile_reg[6][0]  ( .D(n235), .SI(\regfile[5][7] ), .SE(n374), 
        .CK(CLK), .RN(n346), .Q(\regfile[6][0] ) );
  SDFFRQX2M \regfile_reg[12][7]  ( .D(n290), .SI(\regfile[12][6] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regfile[12][7] ) );
  SDFFRQX2M \regfile_reg[12][6]  ( .D(n289), .SI(\regfile[12][5] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regfile[12][6] ) );
  SDFFRQX2M \regfile_reg[12][5]  ( .D(n288), .SI(test_si3), .SE(n371), .CK(CLK), .RN(n350), .Q(\regfile[12][5] ) );
  SDFFRQX2M \regfile_reg[12][4]  ( .D(n287), .SI(\regfile[12][3] ), .SE(n374), 
        .CK(CLK), .RN(n349), .Q(\regfile[12][4] ) );
  SDFFRQX2M \regfile_reg[12][3]  ( .D(n286), .SI(\regfile[12][2] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regfile[12][3] ) );
  SDFFRQX2M \regfile_reg[12][2]  ( .D(n285), .SI(\regfile[12][1] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regfile[12][2] ) );
  SDFFRQX2M \regfile_reg[12][1]  ( .D(n284), .SI(\regfile[12][0] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regfile[12][1] ) );
  SDFFRQX2M \regfile_reg[12][0]  ( .D(n283), .SI(\regfile[11][7] ), .SE(n374), 
        .CK(CLK), .RN(n349), .Q(\regfile[12][0] ) );
  SDFFRQX2M \regfile_reg[8][7]  ( .D(n258), .SI(\regfile[8][6] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regfile[8][7] ) );
  SDFFRQX2M \regfile_reg[8][6]  ( .D(n257), .SI(\regfile[8][5] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regfile[8][6] ) );
  SDFFRQX2M \regfile_reg[8][5]  ( .D(n256), .SI(\regfile[8][4] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\regfile[8][5] ) );
  SDFFRQX2M \regfile_reg[8][4]  ( .D(n255), .SI(\regfile[8][3] ), .SE(n374), 
        .CK(CLK), .RN(n347), .Q(\regfile[8][4] ) );
  SDFFRQX2M \regfile_reg[8][3]  ( .D(n254), .SI(\regfile[8][2] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regfile[8][3] ) );
  SDFFRQX2M \regfile_reg[8][2]  ( .D(n253), .SI(\regfile[8][1] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regfile[8][2] ) );
  SDFFRQX2M \regfile_reg[8][1]  ( .D(n252), .SI(\regfile[8][0] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\regfile[8][1] ) );
  SDFFRQX2M \regfile_reg[8][0]  ( .D(n251), .SI(\regfile[7][7] ), .SE(n374), 
        .CK(CLK), .RN(n347), .Q(\regfile[8][0] ) );
  SDFFRQX2M \regfile_reg[4][7]  ( .D(n226), .SI(\regfile[4][6] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\regfile[4][7] ) );
  SDFFRQX2M \regfile_reg[4][6]  ( .D(n225), .SI(\regfile[4][5] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\regfile[4][6] ) );
  SDFFRQX2M \regfile_reg[4][5]  ( .D(n224), .SI(\regfile[4][4] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\regfile[4][5] ) );
  SDFFRQX2M \regfile_reg[4][4]  ( .D(n223), .SI(\regfile[4][3] ), .SE(n374), 
        .CK(CLK), .RN(n345), .Q(\regfile[4][4] ) );
  SDFFRQX2M \regfile_reg[4][3]  ( .D(n222), .SI(\regfile[4][2] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\regfile[4][3] ) );
  SDFFRQX2M \regfile_reg[4][2]  ( .D(n221), .SI(\regfile[4][1] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\regfile[4][2] ) );
  SDFFRQX2M \regfile_reg[4][1]  ( .D(n220), .SI(\regfile[4][0] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\regfile[4][1] ) );
  SDFFRQX2M \regfile_reg[4][0]  ( .D(n219), .SI(REG3[7]), .SE(n374), .CK(CLK), 
        .RN(n345), .Q(\regfile[4][0] ) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n186), .SI(RdData[6]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n185), .SI(RdData[5]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n184), .SI(RdData[4]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n183), .SI(RdData[3]), .SE(n374), .CK(CLK), 
        .RN(n342), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n182), .SI(RdData[2]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n181), .SI(RdData[1]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n180), .SI(RdData[0]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n179), .SI(test_si1), .SE(n374), .CK(CLK), 
        .RN(n342), .Q(RdData[0]) );
  SDFFRQX2M \regfile_reg[1][6]  ( .D(n201), .SI(REG1[5]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG1[6]) );
  SDFFRQX2M \regfile_reg[0][7]  ( .D(n194), .SI(REG0[6]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG0[7]) );
  SDFFRQX2M \regfile_reg[0][6]  ( .D(n193), .SI(REG0[5]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG0[6]) );
  SDFFRQX2M \regfile_reg[0][5]  ( .D(n192), .SI(REG0[4]), .SE(n374), .CK(CLK), 
        .RN(n343), .Q(REG0[5]) );
  SDFFRQX2M \regfile_reg[0][4]  ( .D(n191), .SI(REG0[3]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG0[4]) );
  SDFFRQX2M \regfile_reg[0][3]  ( .D(n190), .SI(REG0[2]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG0[3]) );
  SDFFRQX2M \regfile_reg[0][2]  ( .D(n189), .SI(REG0[1]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG0[2]) );
  SDFFRQX2M \regfile_reg[0][1]  ( .D(n188), .SI(REG0[0]), .SE(n374), .CK(CLK), 
        .RN(n342), .Q(REG0[1]) );
  SDFFRQX2M \regfile_reg[0][0]  ( .D(n187), .SI(RdData_valid), .SE(n373), .CK(
        CLK), .RN(n342), .Q(REG0[0]) );
  SDFFRQX2M \regfile_reg[2][1]  ( .D(n204), .SI(REG2[0]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG2[1]) );
  SDFFRQX2M \regfile_reg[3][0]  ( .D(n211), .SI(REG2[7]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG3[0]) );
  SDFFSQX2M \regfile_reg[2][0]  ( .D(n203), .SI(REG1[7]), .SE(test_se), .CK(
        CLK), .SN(n342), .Q(REG2[0]) );
  SDFFRQX2M \regfile_reg[1][1]  ( .D(n196), .SI(REG1[0]), .SE(n374), .CK(CLK), 
        .RN(n343), .Q(REG1[1]) );
  SDFFRQX2M \regfile_reg[1][5]  ( .D(n200), .SI(REG1[4]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG1[5]) );
  SDFFRQX2M \regfile_reg[1][4]  ( .D(n199), .SI(REG1[3]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG1[4]) );
  SDFFRQX2M \regfile_reg[1][7]  ( .D(n202), .SI(REG1[6]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG1[7]) );
  SDFFRQX2M \regfile_reg[1][3]  ( .D(n198), .SI(REG1[2]), .SE(n374), .CK(CLK), 
        .RN(n343), .Q(REG1[3]) );
  SDFFRQX2M \regfile_reg[1][2]  ( .D(n197), .SI(REG1[1]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG1[2]) );
  SDFFRQX2M \regfile_reg[1][0]  ( .D(n195), .SI(REG0[7]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG1[0]) );
  SDFFRQX2M RdData_valid_reg ( .D(n178), .SI(RdData[7]), .SE(n371), .CK(CLK), 
        .RN(n346), .Q(RdData_valid) );
  SDFFSQX2M \regfile_reg[3][5]  ( .D(n216), .SI(REG3[4]), .SE(n371), .CK(CLK), 
        .SN(n342), .Q(REG3[5]) );
  SDFFRQX2M \regfile_reg[3][7]  ( .D(n218), .SI(REG3[6]), .SE(n374), .CK(CLK), 
        .RN(n344), .Q(REG3[7]) );
  SDFFRQX2M \regfile_reg[3][4]  ( .D(n215), .SI(REG3[3]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG3[4]) );
  SDFFRQX2M \regfile_reg[3][6]  ( .D(n217), .SI(REG3[5]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG3[6]) );
  SDFFRQX2M \regfile_reg[3][3]  ( .D(n214), .SI(REG3[2]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG3[3]) );
  SDFFRQX2M \regfile_reg[3][2]  ( .D(n213), .SI(REG3[1]), .SE(n374), .CK(CLK), 
        .RN(n344), .Q(REG3[2]) );
  SDFFRQX2M \regfile_reg[3][1]  ( .D(n212), .SI(REG3[0]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG3[1]) );
  SDFFRQX2M \regfile_reg[2][2]  ( .D(n205), .SI(REG2[1]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG2[2]) );
  SDFFSQX2M \regfile_reg[2][7]  ( .D(n210), .SI(REG2[6]), .SE(n374), .CK(CLK), 
        .SN(n342), .Q(REG2[7]) );
  SDFFRQX2M \regfile_reg[2][6]  ( .D(n209), .SI(REG2[5]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG2[6]) );
  SDFFRQX2M \regfile_reg[2][5]  ( .D(n208), .SI(REG2[4]), .SE(n374), .CK(CLK), 
        .RN(n344), .Q(REG2[5]) );
  SDFFRQX2M \regfile_reg[2][4]  ( .D(n207), .SI(REG2[3]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG2[4]) );
  SDFFRQX2M \regfile_reg[2][3]  ( .D(n206), .SI(test_si2), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG2[3]) );
  INVX2M U140 ( .A(WrData[5]), .Y(n365) );
  INVX2M U141 ( .A(WrData[7]), .Y(n366) );
  NOR2X2M U142 ( .A(n341), .B(N13), .Y(n158) );
  NOR2X2M U143 ( .A(n336), .B(N13), .Y(n153) );
  INVX2M U144 ( .A(n337), .Y(n338) );
  INVX2M U145 ( .A(n335), .Y(n336) );
  INVX2M U146 ( .A(n337), .Y(n339) );
  BUFX2M U147 ( .A(n340), .Y(n337) );
  BUFX2M U148 ( .A(n341), .Y(n335) );
  INVX2M U149 ( .A(WrEn), .Y(n362) );
  INVX2M U150 ( .A(WrData[0]), .Y(n357) );
  INVX2M U151 ( .A(n151), .Y(n361) );
  BUFX2M U152 ( .A(n356), .Y(n343) );
  BUFX2M U153 ( .A(n355), .Y(n344) );
  BUFX2M U154 ( .A(n355), .Y(n345) );
  BUFX2M U155 ( .A(n354), .Y(n346) );
  BUFX2M U156 ( .A(n354), .Y(n347) );
  BUFX2M U157 ( .A(n353), .Y(n348) );
  BUFX2M U158 ( .A(n353), .Y(n349) );
  BUFX2M U159 ( .A(n352), .Y(n350) );
  BUFX2M U160 ( .A(n356), .Y(n342) );
  BUFX2M U161 ( .A(n352), .Y(n351) );
  NAND2X2M U162 ( .A(n156), .B(n153), .Y(n155) );
  NAND2X2M U163 ( .A(n158), .B(n154), .Y(n157) );
  NAND2X2M U164 ( .A(n158), .B(n156), .Y(n159) );
  NAND2X2M U165 ( .A(n161), .B(n154), .Y(n160) );
  NAND2X2M U166 ( .A(n161), .B(n156), .Y(n162) );
  NAND2X2M U167 ( .A(n164), .B(n154), .Y(n163) );
  NAND2X2M U168 ( .A(n164), .B(n156), .Y(n166) );
  NAND2X2M U169 ( .A(n168), .B(n153), .Y(n167) );
  NAND2X2M U170 ( .A(n170), .B(n153), .Y(n169) );
  NAND2X2M U171 ( .A(n168), .B(n158), .Y(n171) );
  NAND2X2M U172 ( .A(n170), .B(n158), .Y(n172) );
  NAND2X2M U173 ( .A(n168), .B(n161), .Y(n173) );
  NAND2X2M U174 ( .A(n170), .B(n161), .Y(n174) );
  NAND2X2M U175 ( .A(n168), .B(n164), .Y(n175) );
  NAND2X2M U176 ( .A(n170), .B(n164), .Y(n177) );
  NAND2X2M U177 ( .A(n153), .B(n154), .Y(n152) );
  NAND2X2M U178 ( .A(RdEn), .B(n362), .Y(n151) );
  NOR2X2M U179 ( .A(n362), .B(RdEn), .Y(n150) );
  AND2X2M U180 ( .A(n165), .B(n340), .Y(n154) );
  AND2X2M U181 ( .A(n165), .B(N11), .Y(n156) );
  AND2X2M U182 ( .A(n176), .B(n340), .Y(n168) );
  AND2X2M U183 ( .A(n176), .B(N11), .Y(n170) );
  INVX2M U184 ( .A(WrData[1]), .Y(n358) );
  INVX2M U185 ( .A(WrData[2]), .Y(n359) );
  INVX2M U186 ( .A(WrData[3]), .Y(n360) );
  INVX2M U187 ( .A(WrData[4]), .Y(n364) );
  INVX2M U188 ( .A(WrData[6]), .Y(n363) );
  BUFX2M U189 ( .A(RST), .Y(n355) );
  BUFX2M U190 ( .A(RST), .Y(n354) );
  BUFX2M U191 ( .A(RST), .Y(n353) );
  BUFX2M U192 ( .A(RST), .Y(n352) );
  BUFX2M U193 ( .A(RST), .Y(n356) );
  OAI2BB2X1M U194 ( .B0(n152), .B1(n357), .A0N(REG0[0]), .A1N(n152), .Y(n187)
         );
  OAI2BB2X1M U195 ( .B0(n152), .B1(n358), .A0N(REG0[1]), .A1N(n152), .Y(n188)
         );
  OAI2BB2X1M U196 ( .B0(n152), .B1(n359), .A0N(REG0[2]), .A1N(n152), .Y(n189)
         );
  OAI2BB2X1M U197 ( .B0(n152), .B1(n360), .A0N(REG0[3]), .A1N(n152), .Y(n190)
         );
  OAI2BB2X1M U198 ( .B0(n152), .B1(n364), .A0N(REG0[4]), .A1N(n152), .Y(n191)
         );
  OAI2BB2X1M U199 ( .B0(n152), .B1(n365), .A0N(REG0[5]), .A1N(n152), .Y(n192)
         );
  OAI2BB2X1M U200 ( .B0(n152), .B1(n363), .A0N(REG0[6]), .A1N(n152), .Y(n193)
         );
  OAI2BB2X1M U201 ( .B0(n152), .B1(n366), .A0N(REG0[7]), .A1N(n152), .Y(n194)
         );
  OAI2BB2X1M U202 ( .B0(n358), .B1(n157), .A0N(REG2[1]), .A1N(n157), .Y(n204)
         );
  OAI2BB2X1M U203 ( .B0(n359), .B1(n157), .A0N(REG2[2]), .A1N(n157), .Y(n205)
         );
  OAI2BB2X1M U204 ( .B0(n360), .B1(n157), .A0N(REG2[3]), .A1N(n157), .Y(n206)
         );
  OAI2BB2X1M U205 ( .B0(n364), .B1(n157), .A0N(REG2[4]), .A1N(n157), .Y(n207)
         );
  OAI2BB2X1M U206 ( .B0(n365), .B1(n157), .A0N(REG2[5]), .A1N(n157), .Y(n208)
         );
  OAI2BB2X1M U207 ( .B0(n363), .B1(n157), .A0N(REG2[6]), .A1N(n157), .Y(n209)
         );
  OAI2BB2X1M U208 ( .B0(n357), .B1(n159), .A0N(REG3[0]), .A1N(n159), .Y(n211)
         );
  OAI2BB2X1M U209 ( .B0(n358), .B1(n159), .A0N(REG3[1]), .A1N(n159), .Y(n212)
         );
  OAI2BB2X1M U210 ( .B0(n359), .B1(n159), .A0N(REG3[2]), .A1N(n159), .Y(n213)
         );
  OAI2BB2X1M U211 ( .B0(n360), .B1(n159), .A0N(REG3[3]), .A1N(n159), .Y(n214)
         );
  OAI2BB2X1M U212 ( .B0(n364), .B1(n159), .A0N(REG3[4]), .A1N(n159), .Y(n215)
         );
  OAI2BB2X1M U213 ( .B0(n363), .B1(n159), .A0N(REG3[6]), .A1N(n159), .Y(n217)
         );
  OAI2BB2X1M U214 ( .B0(n366), .B1(n159), .A0N(REG3[7]), .A1N(n159), .Y(n218)
         );
  OAI2BB2X1M U215 ( .B0(n357), .B1(n155), .A0N(REG1[0]), .A1N(n155), .Y(n195)
         );
  OAI2BB2X1M U216 ( .B0(n358), .B1(n155), .A0N(REG1[1]), .A1N(n155), .Y(n196)
         );
  OAI2BB2X1M U217 ( .B0(n359), .B1(n155), .A0N(REG1[2]), .A1N(n155), .Y(n197)
         );
  OAI2BB2X1M U218 ( .B0(n360), .B1(n155), .A0N(REG1[3]), .A1N(n155), .Y(n198)
         );
  OAI2BB2X1M U219 ( .B0(n364), .B1(n155), .A0N(REG1[4]), .A1N(n155), .Y(n199)
         );
  OAI2BB2X1M U220 ( .B0(n365), .B1(n155), .A0N(REG1[5]), .A1N(n155), .Y(n200)
         );
  OAI2BB2X1M U221 ( .B0(n363), .B1(n155), .A0N(REG1[6]), .A1N(n155), .Y(n201)
         );
  OAI2BB2X1M U222 ( .B0(n366), .B1(n155), .A0N(REG1[7]), .A1N(n155), .Y(n202)
         );
  OAI2BB2X1M U223 ( .B0(n357), .B1(n167), .A0N(\regfile[8][0] ), .A1N(n167), 
        .Y(n251) );
  OAI2BB2X1M U224 ( .B0(n358), .B1(n167), .A0N(\regfile[8][1] ), .A1N(n167), 
        .Y(n252) );
  OAI2BB2X1M U225 ( .B0(n359), .B1(n167), .A0N(\regfile[8][2] ), .A1N(n167), 
        .Y(n253) );
  OAI2BB2X1M U226 ( .B0(n360), .B1(n167), .A0N(\regfile[8][3] ), .A1N(n167), 
        .Y(n254) );
  OAI2BB2X1M U227 ( .B0(n364), .B1(n167), .A0N(\regfile[8][4] ), .A1N(n167), 
        .Y(n255) );
  OAI2BB2X1M U228 ( .B0(n365), .B1(n167), .A0N(\regfile[8][5] ), .A1N(n167), 
        .Y(n256) );
  OAI2BB2X1M U229 ( .B0(n363), .B1(n167), .A0N(\regfile[8][6] ), .A1N(n167), 
        .Y(n257) );
  OAI2BB2X1M U230 ( .B0(n366), .B1(n167), .A0N(\regfile[8][7] ), .A1N(n167), 
        .Y(n258) );
  OAI2BB2X1M U231 ( .B0(n357), .B1(n169), .A0N(\regfile[9][0] ), .A1N(n169), 
        .Y(n259) );
  OAI2BB2X1M U232 ( .B0(n358), .B1(n169), .A0N(\regfile[9][1] ), .A1N(n169), 
        .Y(n260) );
  OAI2BB2X1M U233 ( .B0(n359), .B1(n169), .A0N(\regfile[9][2] ), .A1N(n169), 
        .Y(n261) );
  OAI2BB2X1M U234 ( .B0(n360), .B1(n169), .A0N(\regfile[9][3] ), .A1N(n169), 
        .Y(n262) );
  OAI2BB2X1M U235 ( .B0(n364), .B1(n169), .A0N(\regfile[9][4] ), .A1N(n169), 
        .Y(n263) );
  OAI2BB2X1M U236 ( .B0(n365), .B1(n169), .A0N(\regfile[9][5] ), .A1N(n169), 
        .Y(n264) );
  OAI2BB2X1M U237 ( .B0(n363), .B1(n169), .A0N(\regfile[9][6] ), .A1N(n169), 
        .Y(n265) );
  OAI2BB2X1M U238 ( .B0(n366), .B1(n169), .A0N(\regfile[9][7] ), .A1N(n169), 
        .Y(n266) );
  OAI2BB2X1M U239 ( .B0(n357), .B1(n171), .A0N(\regfile[10][0] ), .A1N(n171), 
        .Y(n267) );
  OAI2BB2X1M U240 ( .B0(n358), .B1(n171), .A0N(\regfile[10][1] ), .A1N(n171), 
        .Y(n268) );
  OAI2BB2X1M U241 ( .B0(n359), .B1(n171), .A0N(\regfile[10][2] ), .A1N(n171), 
        .Y(n269) );
  OAI2BB2X1M U242 ( .B0(n360), .B1(n171), .A0N(\regfile[10][3] ), .A1N(n171), 
        .Y(n270) );
  OAI2BB2X1M U243 ( .B0(n364), .B1(n171), .A0N(\regfile[10][4] ), .A1N(n171), 
        .Y(n271) );
  OAI2BB2X1M U244 ( .B0(n365), .B1(n171), .A0N(\regfile[10][5] ), .A1N(n171), 
        .Y(n272) );
  OAI2BB2X1M U245 ( .B0(n363), .B1(n171), .A0N(\regfile[10][6] ), .A1N(n171), 
        .Y(n273) );
  OAI2BB2X1M U246 ( .B0(n366), .B1(n171), .A0N(\regfile[10][7] ), .A1N(n171), 
        .Y(n274) );
  OAI2BB2X1M U247 ( .B0(n357), .B1(n172), .A0N(\regfile[11][0] ), .A1N(n172), 
        .Y(n275) );
  OAI2BB2X1M U248 ( .B0(n358), .B1(n172), .A0N(\regfile[11][1] ), .A1N(n172), 
        .Y(n276) );
  OAI2BB2X1M U249 ( .B0(n359), .B1(n172), .A0N(\regfile[11][2] ), .A1N(n172), 
        .Y(n277) );
  OAI2BB2X1M U250 ( .B0(n360), .B1(n172), .A0N(\regfile[11][3] ), .A1N(n172), 
        .Y(n278) );
  OAI2BB2X1M U251 ( .B0(n364), .B1(n172), .A0N(\regfile[11][4] ), .A1N(n172), 
        .Y(n279) );
  OAI2BB2X1M U252 ( .B0(n365), .B1(n172), .A0N(\regfile[11][5] ), .A1N(n172), 
        .Y(n280) );
  OAI2BB2X1M U253 ( .B0(n363), .B1(n172), .A0N(\regfile[11][6] ), .A1N(n172), 
        .Y(n281) );
  OAI2BB2X1M U254 ( .B0(n366), .B1(n172), .A0N(\regfile[11][7] ), .A1N(n172), 
        .Y(n282) );
  OAI2BB2X1M U255 ( .B0(n357), .B1(n157), .A0N(REG2[0]), .A1N(n157), .Y(n203)
         );
  OAI2BB2X1M U256 ( .B0(n366), .B1(n157), .A0N(REG2[7]), .A1N(n157), .Y(n210)
         );
  OAI2BB2X1M U257 ( .B0(n365), .B1(n159), .A0N(REG3[5]), .A1N(n159), .Y(n216)
         );
  OAI2BB2X1M U258 ( .B0(n357), .B1(n160), .A0N(\regfile[4][0] ), .A1N(n160), 
        .Y(n219) );
  OAI2BB2X1M U259 ( .B0(n358), .B1(n160), .A0N(\regfile[4][1] ), .A1N(n160), 
        .Y(n220) );
  OAI2BB2X1M U260 ( .B0(n359), .B1(n160), .A0N(\regfile[4][2] ), .A1N(n160), 
        .Y(n221) );
  OAI2BB2X1M U261 ( .B0(n360), .B1(n160), .A0N(\regfile[4][3] ), .A1N(n160), 
        .Y(n222) );
  OAI2BB2X1M U262 ( .B0(n364), .B1(n160), .A0N(\regfile[4][4] ), .A1N(n160), 
        .Y(n223) );
  OAI2BB2X1M U263 ( .B0(n365), .B1(n160), .A0N(\regfile[4][5] ), .A1N(n160), 
        .Y(n224) );
  OAI2BB2X1M U264 ( .B0(n363), .B1(n160), .A0N(\regfile[4][6] ), .A1N(n160), 
        .Y(n225) );
  OAI2BB2X1M U265 ( .B0(n366), .B1(n160), .A0N(\regfile[4][7] ), .A1N(n160), 
        .Y(n226) );
  OAI2BB2X1M U266 ( .B0(n357), .B1(n162), .A0N(\regfile[5][0] ), .A1N(n162), 
        .Y(n227) );
  OAI2BB2X1M U267 ( .B0(n358), .B1(n162), .A0N(\regfile[5][1] ), .A1N(n162), 
        .Y(n228) );
  OAI2BB2X1M U268 ( .B0(n359), .B1(n162), .A0N(\regfile[5][2] ), .A1N(n162), 
        .Y(n229) );
  OAI2BB2X1M U269 ( .B0(n360), .B1(n162), .A0N(\regfile[5][3] ), .A1N(n162), 
        .Y(n230) );
  OAI2BB2X1M U270 ( .B0(n364), .B1(n162), .A0N(\regfile[5][4] ), .A1N(n162), 
        .Y(n231) );
  OAI2BB2X1M U271 ( .B0(n365), .B1(n162), .A0N(\regfile[5][5] ), .A1N(n162), 
        .Y(n232) );
  OAI2BB2X1M U272 ( .B0(n363), .B1(n162), .A0N(\regfile[5][6] ), .A1N(n162), 
        .Y(n233) );
  OAI2BB2X1M U273 ( .B0(n366), .B1(n162), .A0N(\regfile[5][7] ), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U274 ( .B0(n357), .B1(n163), .A0N(\regfile[6][0] ), .A1N(n163), 
        .Y(n235) );
  OAI2BB2X1M U275 ( .B0(n358), .B1(n163), .A0N(\regfile[6][1] ), .A1N(n163), 
        .Y(n236) );
  OAI2BB2X1M U276 ( .B0(n359), .B1(n163), .A0N(\regfile[6][2] ), .A1N(n163), 
        .Y(n237) );
  OAI2BB2X1M U277 ( .B0(n360), .B1(n163), .A0N(\regfile[6][3] ), .A1N(n163), 
        .Y(n238) );
  OAI2BB2X1M U278 ( .B0(n364), .B1(n163), .A0N(\regfile[6][4] ), .A1N(n163), 
        .Y(n239) );
  OAI2BB2X1M U279 ( .B0(n365), .B1(n163), .A0N(\regfile[6][5] ), .A1N(n163), 
        .Y(n240) );
  OAI2BB2X1M U280 ( .B0(n363), .B1(n163), .A0N(\regfile[6][6] ), .A1N(n163), 
        .Y(n241) );
  OAI2BB2X1M U281 ( .B0(n366), .B1(n163), .A0N(\regfile[6][7] ), .A1N(n163), 
        .Y(n242) );
  OAI2BB2X1M U282 ( .B0(n357), .B1(n166), .A0N(\regfile[7][0] ), .A1N(n166), 
        .Y(n243) );
  OAI2BB2X1M U283 ( .B0(n358), .B1(n166), .A0N(\regfile[7][1] ), .A1N(n166), 
        .Y(n244) );
  OAI2BB2X1M U284 ( .B0(n359), .B1(n166), .A0N(\regfile[7][2] ), .A1N(n166), 
        .Y(n245) );
  OAI2BB2X1M U285 ( .B0(n360), .B1(n166), .A0N(\regfile[7][3] ), .A1N(n166), 
        .Y(n246) );
  OAI2BB2X1M U286 ( .B0(n364), .B1(n166), .A0N(\regfile[7][4] ), .A1N(n166), 
        .Y(n247) );
  OAI2BB2X1M U287 ( .B0(n365), .B1(n166), .A0N(\regfile[7][5] ), .A1N(n166), 
        .Y(n248) );
  OAI2BB2X1M U288 ( .B0(n363), .B1(n166), .A0N(\regfile[7][6] ), .A1N(n166), 
        .Y(n249) );
  OAI2BB2X1M U289 ( .B0(n366), .B1(n166), .A0N(\regfile[7][7] ), .A1N(n166), 
        .Y(n250) );
  OAI2BB2X1M U290 ( .B0(n357), .B1(n173), .A0N(\regfile[12][0] ), .A1N(n173), 
        .Y(n283) );
  OAI2BB2X1M U291 ( .B0(n358), .B1(n173), .A0N(\regfile[12][1] ), .A1N(n173), 
        .Y(n284) );
  OAI2BB2X1M U292 ( .B0(n359), .B1(n173), .A0N(\regfile[12][2] ), .A1N(n173), 
        .Y(n285) );
  OAI2BB2X1M U293 ( .B0(n360), .B1(n173), .A0N(\regfile[12][3] ), .A1N(n173), 
        .Y(n286) );
  OAI2BB2X1M U294 ( .B0(n364), .B1(n173), .A0N(\regfile[12][4] ), .A1N(n173), 
        .Y(n287) );
  OAI2BB2X1M U295 ( .B0(n365), .B1(n173), .A0N(\regfile[12][5] ), .A1N(n173), 
        .Y(n288) );
  OAI2BB2X1M U296 ( .B0(n363), .B1(n173), .A0N(\regfile[12][6] ), .A1N(n173), 
        .Y(n289) );
  OAI2BB2X1M U297 ( .B0(n366), .B1(n173), .A0N(\regfile[12][7] ), .A1N(n173), 
        .Y(n290) );
  OAI2BB2X1M U298 ( .B0(n357), .B1(n174), .A0N(\regfile[13][0] ), .A1N(n174), 
        .Y(n291) );
  OAI2BB2X1M U299 ( .B0(n358), .B1(n174), .A0N(\regfile[13][1] ), .A1N(n174), 
        .Y(n292) );
  OAI2BB2X1M U300 ( .B0(n359), .B1(n174), .A0N(\regfile[13][2] ), .A1N(n174), 
        .Y(n293) );
  OAI2BB2X1M U301 ( .B0(n360), .B1(n174), .A0N(\regfile[13][3] ), .A1N(n174), 
        .Y(n294) );
  OAI2BB2X1M U302 ( .B0(n364), .B1(n174), .A0N(\regfile[13][4] ), .A1N(n174), 
        .Y(n295) );
  OAI2BB2X1M U303 ( .B0(n365), .B1(n174), .A0N(\regfile[13][5] ), .A1N(n174), 
        .Y(n296) );
  OAI2BB2X1M U304 ( .B0(n363), .B1(n174), .A0N(\regfile[13][6] ), .A1N(n174), 
        .Y(n297) );
  OAI2BB2X1M U305 ( .B0(n366), .B1(n174), .A0N(\regfile[13][7] ), .A1N(n174), 
        .Y(n298) );
  OAI2BB2X1M U306 ( .B0(n357), .B1(n175), .A0N(\regfile[14][0] ), .A1N(n175), 
        .Y(n299) );
  OAI2BB2X1M U307 ( .B0(n358), .B1(n175), .A0N(\regfile[14][1] ), .A1N(n175), 
        .Y(n300) );
  OAI2BB2X1M U308 ( .B0(n359), .B1(n175), .A0N(\regfile[14][2] ), .A1N(n175), 
        .Y(n301) );
  OAI2BB2X1M U309 ( .B0(n360), .B1(n175), .A0N(\regfile[14][3] ), .A1N(n175), 
        .Y(n302) );
  OAI2BB2X1M U310 ( .B0(n364), .B1(n175), .A0N(\regfile[14][4] ), .A1N(n175), 
        .Y(n303) );
  OAI2BB2X1M U311 ( .B0(n365), .B1(n175), .A0N(\regfile[14][5] ), .A1N(n175), 
        .Y(n304) );
  OAI2BB2X1M U312 ( .B0(n363), .B1(n175), .A0N(\regfile[14][6] ), .A1N(n175), 
        .Y(n305) );
  OAI2BB2X1M U313 ( .B0(n366), .B1(n175), .A0N(\regfile[14][7] ), .A1N(n175), 
        .Y(n306) );
  OAI2BB2X1M U314 ( .B0(n357), .B1(n177), .A0N(\regfile[15][0] ), .A1N(n177), 
        .Y(n307) );
  OAI2BB2X1M U315 ( .B0(n358), .B1(n177), .A0N(\regfile[15][1] ), .A1N(n177), 
        .Y(n308) );
  OAI2BB2X1M U316 ( .B0(n359), .B1(n177), .A0N(\regfile[15][2] ), .A1N(n177), 
        .Y(n309) );
  OAI2BB2X1M U317 ( .B0(n360), .B1(n177), .A0N(\regfile[15][3] ), .A1N(n177), 
        .Y(n310) );
  OAI2BB2X1M U318 ( .B0(n364), .B1(n177), .A0N(\regfile[15][4] ), .A1N(n177), 
        .Y(n311) );
  OAI2BB2X1M U319 ( .B0(n365), .B1(n177), .A0N(\regfile[15][5] ), .A1N(n177), 
        .Y(n312) );
  OAI2BB2X1M U320 ( .B0(n363), .B1(n177), .A0N(\regfile[15][6] ), .A1N(n177), 
        .Y(n313) );
  OAI2BB2X1M U321 ( .B0(n366), .B1(n177), .A0N(\regfile[15][7] ), .A1N(n177), 
        .Y(n314) );
  NOR2BX2M U322 ( .AN(n150), .B(N14), .Y(n165) );
  AND2X2M U323 ( .A(N14), .B(n150), .Y(n176) );
  AO22X1M U324 ( .A0(N43), .A1(n361), .B0(RdData[0]), .B1(n151), .Y(n179) );
  MX4X1M U325 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U326 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(n336), .Y(n141) );
  MX4X1M U327 ( .A(\regfile[8][0] ), .B(\regfile[9][0] ), .C(\regfile[10][0] ), 
        .D(\regfile[11][0] ), .S0(N11), .S1(n336), .Y(n139) );
  AO22X1M U328 ( .A0(N42), .A1(n361), .B0(RdData[1]), .B1(n151), .Y(n180) );
  MX4X1M U329 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U330 ( .A(\regfile[8][1] ), .B(\regfile[9][1] ), .C(\regfile[10][1] ), 
        .D(\regfile[11][1] ), .S0(N11), .S1(n336), .Y(n143) );
  MX4X1M U331 ( .A(\regfile[12][1] ), .B(\regfile[13][1] ), .C(
        \regfile[14][1] ), .D(\regfile[15][1] ), .S0(n339), .S1(n336), .Y(n142) );
  AO22X1M U332 ( .A0(N41), .A1(n361), .B0(RdData[2]), .B1(n151), .Y(n181) );
  MX4X1M U333 ( .A(n149), .B(n147), .C(n148), .D(n146), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U334 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n338), 
        .S1(N12), .Y(n149) );
  MX4X1M U335 ( .A(\regfile[8][2] ), .B(\regfile[9][2] ), .C(\regfile[10][2] ), 
        .D(\regfile[11][2] ), .S0(n338), .S1(N12), .Y(n147) );
  AO22X1M U336 ( .A0(N40), .A1(n361), .B0(RdData[3]), .B1(n151), .Y(n182) );
  MX4X1M U337 ( .A(n318), .B(n316), .C(n317), .D(n315), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U338 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n338), 
        .S1(N12), .Y(n318) );
  MX4X1M U339 ( .A(\regfile[8][3] ), .B(\regfile[9][3] ), .C(\regfile[10][3] ), 
        .D(\regfile[11][3] ), .S0(n338), .S1(N12), .Y(n316) );
  AO22X1M U340 ( .A0(N39), .A1(n361), .B0(RdData[4]), .B1(n151), .Y(n183) );
  MX4X1M U341 ( .A(n322), .B(n320), .C(n321), .D(n319), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U342 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n339), 
        .S1(N12), .Y(n322) );
  MX4X1M U343 ( .A(\regfile[8][4] ), .B(\regfile[9][4] ), .C(\regfile[10][4] ), 
        .D(\regfile[11][4] ), .S0(n338), .S1(N12), .Y(n320) );
  AO22X1M U344 ( .A0(N38), .A1(n361), .B0(RdData[5]), .B1(n151), .Y(n184) );
  MX4X1M U345 ( .A(n326), .B(n324), .C(n325), .D(n323), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U346 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n339), 
        .S1(N12), .Y(n326) );
  MX4X1M U347 ( .A(\regfile[8][5] ), .B(\regfile[9][5] ), .C(\regfile[10][5] ), 
        .D(\regfile[11][5] ), .S0(n339), .S1(N12), .Y(n324) );
  AO22X1M U348 ( .A0(N37), .A1(n361), .B0(RdData[6]), .B1(n151), .Y(n185) );
  MX4X1M U349 ( .A(n330), .B(n328), .C(n329), .D(n327), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U350 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n339), 
        .S1(N12), .Y(n330) );
  MX4X1M U351 ( .A(\regfile[8][6] ), .B(\regfile[9][6] ), .C(\regfile[10][6] ), 
        .D(\regfile[11][6] ), .S0(n339), .S1(N12), .Y(n328) );
  AO22X1M U352 ( .A0(N36), .A1(n361), .B0(RdData[7]), .B1(n151), .Y(n186) );
  MX4X1M U353 ( .A(n334), .B(n332), .C(n333), .D(n331), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U354 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n339), 
        .S1(N12), .Y(n334) );
  MX4X1M U355 ( .A(\regfile[8][7] ), .B(\regfile[9][7] ), .C(\regfile[10][7] ), 
        .D(\regfile[11][7] ), .S0(n339), .S1(N12), .Y(n332) );
  MX4X1M U356 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n338), 
        .S1(n336), .Y(n145) );
  MX4X1M U357 ( .A(\regfile[4][0] ), .B(\regfile[5][0] ), .C(\regfile[6][0] ), 
        .D(\regfile[7][0] ), .S0(N11), .S1(n336), .Y(n140) );
  MX4X1M U358 ( .A(\regfile[4][1] ), .B(\regfile[5][1] ), .C(\regfile[6][1] ), 
        .D(\regfile[7][1] ), .S0(n338), .S1(n336), .Y(n144) );
  MX4X1M U359 ( .A(\regfile[4][2] ), .B(\regfile[5][2] ), .C(\regfile[6][2] ), 
        .D(\regfile[7][2] ), .S0(n338), .S1(N12), .Y(n148) );
  MX4X1M U360 ( .A(\regfile[4][3] ), .B(\regfile[5][3] ), .C(\regfile[6][3] ), 
        .D(\regfile[7][3] ), .S0(n338), .S1(n336), .Y(n317) );
  MX4X1M U361 ( .A(\regfile[4][4] ), .B(\regfile[5][4] ), .C(\regfile[6][4] ), 
        .D(\regfile[7][4] ), .S0(n338), .S1(N12), .Y(n321) );
  MX4X1M U362 ( .A(\regfile[4][5] ), .B(\regfile[5][5] ), .C(\regfile[6][5] ), 
        .D(\regfile[7][5] ), .S0(n339), .S1(N12), .Y(n325) );
  MX4X1M U363 ( .A(\regfile[4][6] ), .B(\regfile[5][6] ), .C(\regfile[6][6] ), 
        .D(\regfile[7][6] ), .S0(n339), .S1(N12), .Y(n329) );
  MX4X1M U364 ( .A(\regfile[4][7] ), .B(\regfile[5][7] ), .C(\regfile[6][7] ), 
        .D(\regfile[7][7] ), .S0(n339), .S1(N12), .Y(n333) );
  MX4X1M U365 ( .A(\regfile[12][0] ), .B(\regfile[13][0] ), .C(
        \regfile[14][0] ), .D(\regfile[15][0] ), .S0(n338), .S1(n336), .Y(n138) );
  MX4X1M U366 ( .A(\regfile[12][2] ), .B(\regfile[13][2] ), .C(
        \regfile[14][2] ), .D(\regfile[15][2] ), .S0(n338), .S1(n336), .Y(n146) );
  MX4X1M U367 ( .A(\regfile[12][3] ), .B(\regfile[13][3] ), .C(
        \regfile[14][3] ), .D(\regfile[15][3] ), .S0(n338), .S1(n336), .Y(n315) );
  MX4X1M U368 ( .A(\regfile[12][4] ), .B(\regfile[13][4] ), .C(
        \regfile[14][4] ), .D(\regfile[15][4] ), .S0(n338), .S1(n336), .Y(n319) );
  MX4X1M U369 ( .A(\regfile[12][5] ), .B(\regfile[13][5] ), .C(
        \regfile[14][5] ), .D(\regfile[15][5] ), .S0(n339), .S1(n336), .Y(n323) );
  MX4X1M U370 ( .A(\regfile[12][6] ), .B(\regfile[13][6] ), .C(
        \regfile[14][6] ), .D(\regfile[15][6] ), .S0(n339), .S1(N12), .Y(n327)
         );
  MX4X1M U371 ( .A(\regfile[12][7] ), .B(\regfile[13][7] ), .C(
        \regfile[14][7] ), .D(\regfile[15][7] ), .S0(n339), .S1(N12), .Y(n331)
         );
  INVX2M U372 ( .A(N12), .Y(n341) );
  AO21XLM U373 ( .A0(RdData_valid), .A1(n150), .B0(n361), .Y(n178) );
  INVX2M U374 ( .A(N11), .Y(n340) );
  AND2X2M U375 ( .A(N13), .B(n341), .Y(n161) );
  AND2X2M U376 ( .A(N13), .B(n336), .Y(n164) );
  DLY1X1M U377 ( .A(test_se), .Y(n371) );
  DLY1X1M U378 ( .A(test_se), .Y(n372) );
  DLY1X1M U379 ( .A(test_se), .Y(n373) );
  DLY1X1M U380 ( .A(test_se), .Y(n374) );
endmodule


module MUX_prescale ( sel, in0, in1, in2, in3, out );
  input [5:0] sel;
  input [7:0] in0;
  input [7:0] in1;
  input [7:0] in2;
  input [7:0] in3;
  output [7:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n1, n15, n16,
         n17;

  INVX2M U1 ( .A(n14), .Y(n17) );
  OAI31X1M U2 ( .A0(n15), .A1(n1), .A2(n16), .B0(n14), .Y(n3) );
  OAI2BB2X1M U3 ( .B0(n12), .B1(n17), .A0N(in0[1]), .A1N(n3), .Y(out[1]) );
  AOI222X1M U4 ( .A0(in1[1]), .A1(n1), .B0(in3[1]), .B1(n15), .C0(in2[1]), 
        .C1(n16), .Y(n12) );
  OAI2BB2X1M U5 ( .B0(n11), .B1(n17), .A0N(in0[2]), .A1N(n3), .Y(out[2]) );
  AOI222X1M U6 ( .A0(in1[2]), .A1(n1), .B0(in3[2]), .B1(n15), .C0(in2[2]), 
        .C1(n16), .Y(n11) );
  OAI2BB2X1M U7 ( .B0(n10), .B1(n17), .A0N(in0[3]), .A1N(n3), .Y(out[3]) );
  AOI222X1M U8 ( .A0(in1[3]), .A1(n1), .B0(in3[3]), .B1(n15), .C0(in2[3]), 
        .C1(n16), .Y(n10) );
  BUFX2M U9 ( .A(n4), .Y(n1) );
  NOR4BX1M U10 ( .AN(sel[4]), .B(sel[2]), .C(sel[3]), .D(sel[5]), .Y(n4) );
  BUFX2M U11 ( .A(n6), .Y(n16) );
  NOR4BX1M U12 ( .AN(sel[3]), .B(sel[2]), .C(sel[4]), .D(sel[5]), .Y(n6) );
  BUFX2M U13 ( .A(n5), .Y(n15) );
  NOR4BX1M U14 ( .AN(sel[2]), .B(sel[3]), .C(sel[4]), .D(sel[5]), .Y(n5) );
  NOR2X2M U15 ( .A(sel[1]), .B(sel[0]), .Y(n14) );
  OAI2BB2X1M U16 ( .B0(n13), .B1(n17), .A0N(in0[0]), .A1N(n3), .Y(out[0]) );
  AOI222X1M U17 ( .A0(in1[0]), .A1(n1), .B0(in3[0]), .B1(n15), .C0(in2[0]), 
        .C1(n16), .Y(n13) );
  OAI2BB2X1M U18 ( .B0(n8), .B1(n17), .A0N(in0[5]), .A1N(n3), .Y(out[5]) );
  AOI222X1M U19 ( .A0(in1[5]), .A1(n1), .B0(in3[5]), .B1(n15), .C0(in2[5]), 
        .C1(n16), .Y(n8) );
  OAI2BB2X1M U20 ( .B0(n7), .B1(n17), .A0N(in0[6]), .A1N(n3), .Y(out[6]) );
  AOI222X1M U21 ( .A0(in1[6]), .A1(n1), .B0(in3[6]), .B1(n15), .C0(in2[6]), 
        .C1(n16), .Y(n7) );
  OAI2BB2X1M U22 ( .B0(n9), .B1(n17), .A0N(in0[4]), .A1N(n3), .Y(out[4]) );
  AOI222X1M U23 ( .A0(in1[4]), .A1(n1), .B0(in3[4]), .B1(n15), .C0(in2[4]), 
        .C1(n16), .Y(n9) );
  OAI2BB2X1M U24 ( .B0(n2), .B1(n17), .A0N(in0[7]), .A1N(n3), .Y(out[7]) );
  AOI222X1M U25 ( .A0(in1[7]), .A1(n1), .B0(in3[7]), .B1(n15), .C0(in2[7]), 
        .C1(n16), .Y(n2) );
endmodule


module clock_divider_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module clock_divider_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module clock_divider_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   o_div_clk_reg, flag, N9, N12, N16, N17, N18, N19, N20, N21, N22, N36,
         N37, N38, N39, N40, N41, N42, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n22, n23, n24,
         n25, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55;
  wire   [7:0] half_toggle;
  wire   [7:0] half_toggle_p1;
  wire   [6:0] counter;
  assign test_so = n55;

  SDFFRQX2M flag_reg ( .D(n34), .SI(counter[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(flag) );
  SDFFRQX2M o_div_clk_reg_reg ( .D(n33), .SI(flag), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(o_div_clk_reg) );
  SDFFRQX2M \counter_reg[6]  ( .D(N42), .SI(n37), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N41), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N40), .SI(n36), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N36), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N37), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N39), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N38), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  INVX2M U5 ( .A(n27), .Y(n52) );
  NOR2X2M U6 ( .A(n28), .B(n26), .Y(n34) );
  XNOR2X2M U7 ( .A(n29), .B(n54), .Y(n28) );
  AND2X2M U8 ( .A(N17), .B(n52), .Y(N37) );
  AND2X2M U9 ( .A(N18), .B(n52), .Y(N38) );
  AND2X2M U17 ( .A(N19), .B(n52), .Y(N39) );
  AND2X2M U18 ( .A(N20), .B(n52), .Y(N40) );
  AND2X2M U19 ( .A(N21), .B(n52), .Y(N41) );
  INVX2M U20 ( .A(n26), .Y(n53) );
  INVX2M U21 ( .A(counter[6]), .Y(n51) );
  INVX2M U22 ( .A(half_toggle_p1[2]), .Y(n45) );
  INVX2M U23 ( .A(half_toggle_p1[3]), .Y(n46) );
  INVX2M U24 ( .A(half_toggle_p1[4]), .Y(n47) );
  INVX2M U25 ( .A(half_toggle_p1[5]), .Y(n48) );
  INVX2M U26 ( .A(half_toggle[2]), .Y(n22) );
  INVX2M U27 ( .A(half_toggle[3]), .Y(n23) );
  INVX2M U28 ( .A(half_toggle[4]), .Y(n24) );
  INVX2M U29 ( .A(half_toggle[5]), .Y(n25) );
  OAI2B11X2M U30 ( .A1N(N9), .A0(i_div_ratio[0]), .B0(n29), .C0(n53), .Y(n27)
         );
  OAI32X1M U31 ( .A0(n26), .A1(o_div_clk_reg), .A2(n52), .B0(n27), .B1(n55), 
        .Y(n33) );
  INVX2M U32 ( .A(o_div_clk_reg), .Y(n55) );
  INVX2M U33 ( .A(i_div_ratio[1]), .Y(half_toggle[0]) );
  NAND2BX2M U34 ( .AN(n30), .B(i_div_ratio[0]), .Y(n29) );
  AOI22X1M U35 ( .A0(N12), .A1(n54), .B0(flag), .B1(N9), .Y(n30) );
  AND2X2M U36 ( .A(N22), .B(n52), .Y(N42) );
  AND2X2M U37 ( .A(N16), .B(n52), .Y(N36) );
  INVX2M U38 ( .A(counter[1]), .Y(n49) );
  INVX2M U39 ( .A(counter[2]), .Y(n35) );
  INVX2M U40 ( .A(counter[3]), .Y(n36) );
  OAI2BB1X2M U41 ( .A0N(n31), .A1N(n32), .B0(i_clk_en), .Y(n26) );
  NOR3X2M U42 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n31) );
  NOR4X1M U43 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n32) );
  INVX2M U44 ( .A(counter[4]), .Y(n50) );
  INVX2M U45 ( .A(counter[5]), .Y(n37) );
  INVX2M U46 ( .A(flag), .Y(n54) );
  MX2X2M U47 ( .A(i_ref_clk), .B(o_div_clk_reg), .S0(n53), .Y(o_div_clk) );
  NAND2BX1M U48 ( .AN(i_div_ratio[2]), .B(half_toggle[0]), .Y(n1) );
  OAI2BB1X1M U49 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        half_toggle[1]) );
  OR2X1M U50 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U51 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(half_toggle[2])
         );
  OR2X1M U52 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U53 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(half_toggle[3])
         );
  OR2X1M U54 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U55 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(half_toggle[4])
         );
  XNOR2X1M U56 ( .A(i_div_ratio[6]), .B(n4), .Y(half_toggle[5]) );
  NOR3X1M U57 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(
        half_toggle[7]) );
  OAI21X1M U58 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U59 ( .AN(half_toggle[7]), .B(n5), .Y(half_toggle[6]) );
  AOI2BB1X1M U60 ( .A0N(half_toggle[1]), .A1N(n49), .B0(counter[0]), .Y(n6) );
  AOI222X1M U61 ( .A0(half_toggle[2]), .A1(n35), .B0(n6), .B1(half_toggle[0]), 
        .C0(half_toggle[1]), .C1(n49), .Y(n7) );
  AOI221XLM U62 ( .A0(counter[3]), .A1(n23), .B0(counter[2]), .B1(n22), .C0(n7), .Y(n8) );
  AOI221XLM U63 ( .A0(half_toggle[4]), .A1(n50), .B0(half_toggle[3]), .B1(n36), 
        .C0(n8), .Y(n9) );
  AOI221XLM U64 ( .A0(counter[5]), .A1(n25), .B0(counter[4]), .B1(n24), .C0(n9), .Y(n10) );
  AOI221XLM U65 ( .A0(half_toggle[6]), .A1(n51), .B0(half_toggle[5]), .B1(n37), 
        .C0(n10), .Y(n11) );
  AOI2BB1X1M U66 ( .A0N(half_toggle[6]), .A1N(n51), .B0(n11), .Y(n12) );
  NOR2X1M U67 ( .A(half_toggle[7]), .B(n12), .Y(N9) );
  AOI2BB1X1M U68 ( .A0N(half_toggle_p1[1]), .A1N(n49), .B0(counter[0]), .Y(n38) );
  AOI222X1M U69 ( .A0(half_toggle_p1[2]), .A1(n35), .B0(n38), .B1(
        half_toggle_p1[0]), .C0(half_toggle_p1[1]), .C1(n49), .Y(n39) );
  AOI221XLM U70 ( .A0(counter[3]), .A1(n46), .B0(counter[2]), .B1(n45), .C0(
        n39), .Y(n40) );
  AOI221XLM U71 ( .A0(half_toggle_p1[4]), .A1(n50), .B0(half_toggle_p1[3]), 
        .B1(n36), .C0(n40), .Y(n41) );
  AOI221XLM U72 ( .A0(counter[5]), .A1(n48), .B0(counter[4]), .B1(n47), .C0(
        n41), .Y(n42) );
  AOI221XLM U73 ( .A0(half_toggle_p1[6]), .A1(n51), .B0(half_toggle_p1[5]), 
        .B1(n37), .C0(n42), .Y(n43) );
  AOI2BB1X1M U74 ( .A0N(half_toggle_p1[6]), .A1N(n51), .B0(n43), .Y(n44) );
  NOR2X1M U75 ( .A(half_toggle_p1[7]), .B(n44), .Y(N12) );
  clock_divider_0_DW01_inc_0 add_39 ( .A(counter), .SUM({N22, N21, N20, N19, 
        N18, N17, N16}) );
  clock_divider_0_DW01_inc_1 add_18 ( .A(half_toggle), .SUM(half_toggle_p1) );
endmodule


module clock_divider_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module clock_divider_1_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module clock_divider_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   o_div_clk_reg, flag, N9, N12, N16, N17, N18, N19, N20, N21, N22, N36,
         N37, N38, N39, N40, N41, N42, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n22, n23, n24, n25, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64;
  wire   [7:0] half_toggle;
  wire   [7:0] half_toggle_p1;
  wire   [6:0] counter;
  assign test_so = n54;

  SDFFRQX2M flag_reg ( .D(n56), .SI(counter[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(flag) );
  SDFFRQX2M o_div_clk_reg_reg ( .D(n57), .SI(flag), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(o_div_clk_reg) );
  SDFFRQX2M \counter_reg[6]  ( .D(N42), .SI(n37), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N41), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N40), .SI(n36), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N36), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N37), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N39), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N38), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  INVX2M U5 ( .A(n63), .Y(n52) );
  OAI2B11X2M U6 ( .A1N(N9), .A0(i_div_ratio[0]), .B0(n61), .C0(n55), .Y(n63)
         );
  INVX2M U7 ( .A(i_div_ratio[1]), .Y(half_toggle[0]) );
  AND2X2M U8 ( .A(N17), .B(n52), .Y(N37) );
  AND2X2M U9 ( .A(N18), .B(n52), .Y(N38) );
  AND2X2M U17 ( .A(N19), .B(n52), .Y(N39) );
  AND2X2M U18 ( .A(N20), .B(n52), .Y(N40) );
  AND2X2M U19 ( .A(N21), .B(n52), .Y(N41) );
  NOR2X2M U20 ( .A(n62), .B(n64), .Y(n56) );
  XNOR2X2M U21 ( .A(n61), .B(n53), .Y(n62) );
  INVX2M U22 ( .A(n64), .Y(n55) );
  INVX2M U23 ( .A(counter[6]), .Y(n51) );
  INVX2M U24 ( .A(half_toggle_p1[2]), .Y(n45) );
  INVX2M U25 ( .A(half_toggle_p1[3]), .Y(n46) );
  INVX2M U26 ( .A(half_toggle_p1[4]), .Y(n47) );
  INVX2M U27 ( .A(half_toggle_p1[5]), .Y(n48) );
  INVX2M U28 ( .A(half_toggle[2]), .Y(n25) );
  INVX2M U29 ( .A(half_toggle[3]), .Y(n24) );
  INVX2M U30 ( .A(half_toggle[4]), .Y(n23) );
  INVX2M U31 ( .A(half_toggle[5]), .Y(n22) );
  OAI32X1M U32 ( .A0(n64), .A1(o_div_clk_reg), .A2(n52), .B0(n63), .B1(n54), 
        .Y(n57) );
  INVX2M U33 ( .A(o_div_clk_reg), .Y(n54) );
  NAND2BX2M U34 ( .AN(n60), .B(i_div_ratio[0]), .Y(n61) );
  AOI22X1M U35 ( .A0(N12), .A1(n53), .B0(flag), .B1(N9), .Y(n60) );
  AND2X2M U36 ( .A(N22), .B(n52), .Y(N42) );
  AND2X2M U37 ( .A(N16), .B(n52), .Y(N36) );
  INVX2M U38 ( .A(counter[1]), .Y(n49) );
  INVX2M U39 ( .A(counter[2]), .Y(n35) );
  INVX2M U40 ( .A(counter[3]), .Y(n36) );
  OAI2BB1X2M U41 ( .A0N(n59), .A1N(n58), .B0(i_clk_en), .Y(n64) );
  NOR4X1M U42 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n58) );
  NOR3X2M U43 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n59) );
  INVX2M U44 ( .A(counter[4]), .Y(n50) );
  INVX2M U45 ( .A(counter[5]), .Y(n37) );
  INVX2M U46 ( .A(flag), .Y(n53) );
  MX2X2M U47 ( .A(i_ref_clk), .B(o_div_clk_reg), .S0(n55), .Y(o_div_clk) );
  NAND2BX1M U48 ( .AN(i_div_ratio[2]), .B(half_toggle[0]), .Y(n1) );
  OAI2BB1X1M U49 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        half_toggle[1]) );
  OR2X1M U50 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U51 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(half_toggle[2])
         );
  OR2X1M U52 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U53 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(half_toggle[3])
         );
  OR2X1M U54 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U55 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(half_toggle[4])
         );
  XNOR2X1M U56 ( .A(i_div_ratio[6]), .B(n4), .Y(half_toggle[5]) );
  NOR3X1M U57 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(
        half_toggle[7]) );
  OAI21X1M U58 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U59 ( .AN(half_toggle[7]), .B(n5), .Y(half_toggle[6]) );
  AOI2BB1X1M U60 ( .A0N(half_toggle[1]), .A1N(n49), .B0(counter[0]), .Y(n6) );
  AOI222X1M U61 ( .A0(half_toggle[2]), .A1(n35), .B0(n6), .B1(half_toggle[0]), 
        .C0(half_toggle[1]), .C1(n49), .Y(n7) );
  AOI221XLM U62 ( .A0(counter[3]), .A1(n24), .B0(counter[2]), .B1(n25), .C0(n7), .Y(n8) );
  AOI221XLM U63 ( .A0(half_toggle[4]), .A1(n50), .B0(half_toggle[3]), .B1(n36), 
        .C0(n8), .Y(n9) );
  AOI221XLM U64 ( .A0(counter[5]), .A1(n22), .B0(counter[4]), .B1(n23), .C0(n9), .Y(n10) );
  AOI221XLM U65 ( .A0(half_toggle[6]), .A1(n51), .B0(half_toggle[5]), .B1(n37), 
        .C0(n10), .Y(n11) );
  AOI2BB1X1M U66 ( .A0N(half_toggle[6]), .A1N(n51), .B0(n11), .Y(n12) );
  NOR2X1M U67 ( .A(half_toggle[7]), .B(n12), .Y(N9) );
  AOI2BB1X1M U68 ( .A0N(half_toggle_p1[1]), .A1N(n49), .B0(counter[0]), .Y(n38) );
  AOI222X1M U69 ( .A0(half_toggle_p1[2]), .A1(n35), .B0(n38), .B1(
        half_toggle_p1[0]), .C0(half_toggle_p1[1]), .C1(n49), .Y(n39) );
  AOI221XLM U70 ( .A0(counter[3]), .A1(n46), .B0(counter[2]), .B1(n45), .C0(
        n39), .Y(n40) );
  AOI221XLM U71 ( .A0(half_toggle_p1[4]), .A1(n50), .B0(half_toggle_p1[3]), 
        .B1(n36), .C0(n40), .Y(n41) );
  AOI221XLM U72 ( .A0(counter[5]), .A1(n48), .B0(counter[4]), .B1(n47), .C0(
        n41), .Y(n42) );
  AOI221XLM U73 ( .A0(half_toggle_p1[6]), .A1(n51), .B0(half_toggle_p1[5]), 
        .B1(n37), .C0(n42), .Y(n43) );
  AOI2BB1X1M U74 ( .A0N(half_toggle_p1[6]), .A1N(n51), .B0(n43), .Y(n44) );
  NOR2X1M U75 ( .A(half_toggle_p1[7]), .B(n44), .Y(N12) );
  clock_divider_1_DW01_inc_0 add_39 ( .A(counter), .SUM({N22, N21, N20, N19, 
        N18, N17, N16}) );
  clock_divider_1_DW01_inc_1 add_18 ( .A(half_toggle), .SUM(half_toggle_p1) );
endmodule


module PULSE_GEN_test_1 ( CLK, RST_n, LVL_SIG, pulse_out, test_si, test_so, 
        test_se );
  input CLK, RST_n, LVL_SIG, test_si, test_se;
  output pulse_out, test_so;
  wire   LVL_SIG_reg;
  assign test_so = LVL_SIG_reg;

  SDFFRQX2M LVL_SIG_reg_reg ( .D(LVL_SIG), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST_n), .Q(LVL_SIG_reg) );
  NOR2BX2M U4 ( .AN(LVL_SIG), .B(LVL_SIG_reg), .Y(pulse_out) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [9:0] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n3), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(carry[8]), .Y(DIFF[8]) );
  INVX2M U3 ( .A(B[6]), .Y(n4) );
  INVX2M U4 ( .A(B[0]), .Y(n10) );
  INVX2M U5 ( .A(B[7]), .Y(n3) );
  INVX2M U6 ( .A(B[2]), .Y(n8) );
  INVX2M U7 ( .A(B[3]), .Y(n7) );
  INVX2M U8 ( .A(B[4]), .Y(n6) );
  INVX2M U9 ( .A(B[5]), .Y(n5) );
  NAND2X2M U10 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U11 ( .A(B[1]), .Y(n9) );
  INVX2M U12 ( .A(A[0]), .Y(n1) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20
;
  assign SUM[6] = A[6];
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AOI21BX2M U2 ( .A0(n11), .A1(A[12]), .B0N(n12), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n8) );
  XNOR2X2M U4 ( .A(A[7]), .B(n2), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n2) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X1M U7 ( .A(n3), .B(n4), .Y(SUM[9]) );
  NOR2X1M U8 ( .A(n5), .B(n6), .Y(n4) );
  CLKXOR2X2M U9 ( .A(n7), .B(n8), .Y(SUM[8]) );
  NAND2BX1M U10 ( .AN(n9), .B(n10), .Y(n7) );
  OAI21X1M U11 ( .A0(A[12]), .A1(n11), .B0(B[12]), .Y(n12) );
  XOR3XLM U12 ( .A(B[12]), .B(A[12]), .C(n11), .Y(SUM[12]) );
  OAI21BX1M U13 ( .A0(n13), .A1(n14), .B0N(n15), .Y(n11) );
  XNOR2X1M U14 ( .A(n14), .B(n16), .Y(SUM[11]) );
  NOR2X1M U15 ( .A(n15), .B(n13), .Y(n16) );
  NOR2X1M U16 ( .A(B[11]), .B(A[11]), .Y(n13) );
  AND2X1M U17 ( .A(B[11]), .B(A[11]), .Y(n15) );
  OA21X1M U18 ( .A0(n17), .A1(n18), .B0(n19), .Y(n14) );
  CLKXOR2X2M U19 ( .A(n20), .B(n18), .Y(SUM[10]) );
  AOI2BB1X1M U20 ( .A0N(n3), .A1N(n6), .B0(n5), .Y(n18) );
  AND2X1M U21 ( .A(B[9]), .B(A[9]), .Y(n5) );
  NOR2X1M U22 ( .A(B[9]), .B(A[9]), .Y(n6) );
  OA21X1M U23 ( .A0(n8), .A1(n9), .B0(n10), .Y(n3) );
  CLKNAND2X2M U24 ( .A(B[8]), .B(A[8]), .Y(n10) );
  NOR2X1M U25 ( .A(B[8]), .B(A[8]), .Y(n9) );
  NAND2BX1M U26 ( .AN(n17), .B(n19), .Y(n20) );
  CLKNAND2X2M U27 ( .A(B[10]), .B(A[10]), .Y(n19) );
  NOR2X1M U28 ( .A(B[10]), .B(A[10]), .Y(n17) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U23 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U26 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U27 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U28 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U29 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U30 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n32) );
  INVX2M U38 ( .A(A[6]), .Y(n33) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[2]), .Y(n37) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVX2M U44 ( .A(A[4]), .Y(n35) );
  INVX2M U45 ( .A(B[6]), .Y(n25) );
  INVX2M U46 ( .A(B[0]), .Y(n31) );
  INVX2M U47 ( .A(B[2]), .Y(n29) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[7]), .Y(n24) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[5]), .Y(n26) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( CLK, RST, A, B, ALU_FUN, Enable, valid_data, ALU_OUT, 
        test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enable, test_si, test_se;
  output valid_data;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115,
         N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126,
         N127, N128, N129, N130, N131, N132, N133, N166, N167, N168, N185,
         N186, N187, N188, N189, N190, N191, N192, N193, N194, N195, N196,
         N197, N198, N199, N200, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n4, n5, n6, n7, n8, n9, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158;

  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(N192), .SI(ALU_OUT[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(N191), .SI(ALU_OUT[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(N190), .SI(ALU_OUT[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(N189), .SI(ALU_OUT[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(N188), .SI(ALU_OUT[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(N187), .SI(ALU_OUT[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(N186), .SI(ALU_OUT[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(N185), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(N200), .SI(ALU_OUT[14]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(N199), .SI(ALU_OUT[13]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(N198), .SI(ALU_OUT[12]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(N197), .SI(ALU_OUT[11]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(N196), .SI(ALU_OUT[10]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(N195), .SI(ALU_OUT[9]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(N194), .SI(ALU_OUT[8]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(N193), .SI(ALU_OUT[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX1M valid_data_reg ( .D(Enable), .SI(ALU_OUT[15]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(valid_data) );
  BUFX2M U23 ( .A(A[6]), .Y(n29) );
  OAI2BB1X2M U24 ( .A0N(n147), .A1N(n122), .B0(n118), .Y(n58) );
  OAI2BB1X2M U25 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n67) );
  NOR2BX2M U26 ( .AN(n123), .B(n144), .Y(n54) );
  INVX2M U27 ( .A(ALU_FUN[0]), .Y(n143) );
  AND2X2M U28 ( .A(n116), .B(n122), .Y(n62) );
  AND2X2M U29 ( .A(n123), .B(n122), .Y(n56) );
  BUFX2M U30 ( .A(n57), .Y(n31) );
  NOR2X2M U31 ( .A(n124), .B(n144), .Y(n57) );
  INVX2M U32 ( .A(n117), .Y(n144) );
  INVX2M U33 ( .A(n109), .Y(n145) );
  INVX2M U34 ( .A(n124), .Y(n147) );
  NOR2BX2M U35 ( .AN(n50), .B(n142), .Y(n48) );
  OAI2BB1X2M U36 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(N194) );
  OAI2BB1X2M U37 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(N195) );
  OAI2BB1X2M U38 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(N196) );
  OAI2BB1X2M U39 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(N197) );
  OAI2BB1X2M U40 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(N198) );
  OAI2BB1X2M U41 ( .A0N(N124), .A1N(n48), .B0(n49), .Y(N199) );
  OAI2BB1X2M U42 ( .A0N(N125), .A1N(n48), .B0(n49), .Y(N200) );
  NOR3BX2M U43 ( .AN(n122), .B(n146), .C(ALU_FUN[2]), .Y(n68) );
  NOR3X2M U44 ( .A(n144), .B(ALU_FUN[2]), .C(n146), .Y(n50) );
  NOR2X2M U45 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  AND3X2M U46 ( .A(n123), .B(n143), .C(n4), .Y(n66) );
  NAND3X2M U47 ( .A(n147), .B(n143), .C(n4), .Y(n53) );
  NAND2X2M U48 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  NOR2X2M U49 ( .A(n143), .B(n4), .Y(n122) );
  NOR2X2M U50 ( .A(n4), .B(ALU_FUN[0]), .Y(n117) );
  NAND3X2M U51 ( .A(n4), .B(ALU_FUN[0]), .C(n116), .Y(n109) );
  INVX2M U52 ( .A(ALU_FUN[1]), .Y(n146) );
  NAND3X2M U53 ( .A(n123), .B(ALU_FUN[0]), .C(n4), .Y(n118) );
  AND2X2M U54 ( .A(ALU_FUN[2]), .B(n146), .Y(n116) );
  AND4X2M U55 ( .A(N168), .B(n116), .C(n4), .D(n143), .Y(n108) );
  NAND2X2M U56 ( .A(Enable), .B(n141), .Y(n49) );
  AOI31X2M U57 ( .A0(n93), .A1(n94), .A2(n95), .B0(n142), .Y(N187) );
  AOI22X1M U58 ( .A0(N103), .A1(n56), .B0(N94), .B1(n54), .Y(n93) );
  AOI221XLM U59 ( .A0(n9), .A1(n145), .B0(n31), .B1(n156), .C0(n96), .Y(n95)
         );
  AOI222X1M U60 ( .A0(N112), .A1(n50), .B0(n8), .B1(n62), .C0(N128), .C1(n68), 
        .Y(n94) );
  AOI31X2M U61 ( .A0(n87), .A1(n88), .A2(n89), .B0(n142), .Y(N188) );
  AOI22X1M U62 ( .A0(N104), .A1(n56), .B0(N95), .B1(n54), .Y(n87) );
  AOI221XLM U63 ( .A0(n27), .A1(n145), .B0(n31), .B1(n155), .C0(n90), .Y(n89)
         );
  AOI222X1M U64 ( .A0(N113), .A1(n50), .B0(n9), .B1(n62), .C0(N129), .C1(n68), 
        .Y(n88) );
  AOI31X2M U65 ( .A0(n81), .A1(n82), .A2(n83), .B0(n142), .Y(N189) );
  AOI22X1M U66 ( .A0(N105), .A1(n56), .B0(N96), .B1(n54), .Y(n81) );
  AOI221XLM U67 ( .A0(n145), .A1(n28), .B0(n31), .B1(n154), .C0(n84), .Y(n83)
         );
  AOI222X1M U68 ( .A0(N114), .A1(n50), .B0(n27), .B1(n62), .C0(N130), .C1(n68), 
        .Y(n82) );
  AOI31X2M U69 ( .A0(n75), .A1(n76), .A2(n77), .B0(n142), .Y(N190) );
  AOI22X1M U70 ( .A0(N106), .A1(n56), .B0(N97), .B1(n54), .Y(n75) );
  AOI221XLM U71 ( .A0(n145), .A1(n29), .B0(n31), .B1(n153), .C0(n78), .Y(n77)
         );
  AOI222X1M U72 ( .A0(N115), .A1(n50), .B0(n28), .B1(n62), .C0(N131), .C1(n68), 
        .Y(n76) );
  AOI31X2M U73 ( .A0(n69), .A1(n70), .A2(n71), .B0(n142), .Y(N191) );
  AOI22X1M U74 ( .A0(N107), .A1(n56), .B0(N98), .B1(n54), .Y(n69) );
  AOI221XLM U75 ( .A0(n145), .A1(n30), .B0(n31), .B1(n152), .C0(n72), .Y(n71)
         );
  AOI222X1M U76 ( .A0(N116), .A1(n50), .B0(n62), .B1(n29), .C0(N132), .C1(n68), 
        .Y(n70) );
  AOI31X2M U77 ( .A0(n59), .A1(n60), .A2(n61), .B0(n142), .Y(N192) );
  AOI22X1M U78 ( .A0(N133), .A1(n68), .B0(N117), .B1(n50), .Y(n60) );
  AOI22X1M U79 ( .A0(N108), .A1(n56), .B0(N99), .B1(n54), .Y(n59) );
  AOI221XLM U80 ( .A0(n31), .A1(n151), .B0(n62), .B1(n30), .C0(n63), .Y(n61)
         );
  AOI31X2M U81 ( .A0(n110), .A1(n111), .A2(n112), .B0(n142), .Y(N185) );
  AOI22X1M U82 ( .A0(N101), .A1(n56), .B0(N92), .B1(n54), .Y(n110) );
  AOI211X2M U83 ( .A0(n31), .A1(n158), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U84 ( .A0(N110), .A1(n50), .B0(n6), .B1(n62), .C0(N126), .C1(n68), 
        .Y(n111) );
  AOI31X2M U85 ( .A0(n99), .A1(n100), .A2(n101), .B0(n142), .Y(N186) );
  AOI211X2M U86 ( .A0(n8), .A1(n145), .B0(n102), .C0(n103), .Y(n101) );
  AOI222X1M U87 ( .A0(N127), .A1(n68), .B0(n31), .B1(n157), .C0(n7), .C1(n62), 
        .Y(n100) );
  AOI222X1M U88 ( .A0(N93), .A1(n54), .B0(N111), .B1(n50), .C0(N102), .C1(n56), 
        .Y(n99) );
  INVX2M U89 ( .A(Enable), .Y(n142) );
  AOI21X2M U90 ( .A0(n51), .A1(n52), .B0(n142), .Y(N193) );
  AOI21X2M U91 ( .A0(N100), .A1(n54), .B0(n141), .Y(n51) );
  AOI2BB2XLM U92 ( .B0(N118), .B1(n50), .A0N(n151), .A1N(n53), .Y(n52) );
  OAI222X1M U93 ( .A0(n73), .A1(n140), .B0(n5), .B1(n74), .C0(n53), .C1(n153), 
        .Y(n72) );
  AOI221XLM U94 ( .A0(n29), .A1(n66), .B0(n58), .B1(n152), .C0(n31), .Y(n74)
         );
  AOI221XLM U95 ( .A0(n66), .A1(n152), .B0(n29), .B1(n67), .C0(n62), .Y(n73)
         );
  INVX2M U96 ( .A(n43), .Y(n138) );
  INVX2M U97 ( .A(n55), .Y(n141) );
  AOI211X2M U98 ( .A0(N109), .A1(n56), .B0(n31), .C0(n58), .Y(n55) );
  INVX2M U99 ( .A(n134), .Y(N167) );
  INVX2M U100 ( .A(n5), .Y(n140) );
  BUFX2M U101 ( .A(ALU_FUN[3]), .Y(n4) );
  INVX2M U102 ( .A(n7), .Y(n157) );
  INVX2M U103 ( .A(n6), .Y(n158) );
  INVX2M U104 ( .A(n29), .Y(n152) );
  INVX2M U105 ( .A(n30), .Y(n151) );
  INVX2M U106 ( .A(n9), .Y(n155) );
  INVX2M U107 ( .A(n8), .Y(n156) );
  INVX2M U108 ( .A(n28), .Y(n153) );
  INVX2M U109 ( .A(n27), .Y(n154) );
  OAI222X1M U110 ( .A0(n97), .A1(n137), .B0(B[2]), .B1(n98), .C0(n53), .C1(
        n157), .Y(n96) );
  AOI221XLM U111 ( .A0(n8), .A1(n66), .B0(n58), .B1(n156), .C0(n31), .Y(n98)
         );
  AOI221XLM U112 ( .A0(n66), .A1(n156), .B0(n8), .B1(n67), .C0(n62), .Y(n97)
         );
  OAI222X1M U113 ( .A0(n91), .A1(n139), .B0(B[3]), .B1(n92), .C0(n53), .C1(
        n156), .Y(n90) );
  AOI221XLM U114 ( .A0(n9), .A1(n66), .B0(n58), .B1(n155), .C0(n31), .Y(n92)
         );
  AOI221XLM U115 ( .A0(n66), .A1(n155), .B0(n9), .B1(n67), .C0(n62), .Y(n91)
         );
  OAI222X1M U116 ( .A0(n85), .A1(n150), .B0(B[4]), .B1(n86), .C0(n53), .C1(
        n155), .Y(n84) );
  INVX2M U117 ( .A(B[4]), .Y(n150) );
  AOI221XLM U118 ( .A0(n27), .A1(n66), .B0(n58), .B1(n154), .C0(n31), .Y(n86)
         );
  AOI221XLM U119 ( .A0(n66), .A1(n154), .B0(n27), .B1(n67), .C0(n62), .Y(n85)
         );
  OAI222X1M U120 ( .A0(n79), .A1(n149), .B0(B[5]), .B1(n80), .C0(n53), .C1(
        n154), .Y(n78) );
  INVX2M U121 ( .A(B[5]), .Y(n149) );
  AOI221XLM U122 ( .A0(n28), .A1(n66), .B0(n58), .B1(n153), .C0(n31), .Y(n80)
         );
  AOI221XLM U123 ( .A0(n66), .A1(n153), .B0(n28), .B1(n67), .C0(n62), .Y(n79)
         );
  OAI222X1M U124 ( .A0(n64), .A1(n148), .B0(B[7]), .B1(n65), .C0(n53), .C1(
        n152), .Y(n63) );
  INVX2M U125 ( .A(B[7]), .Y(n148) );
  AOI221XLM U126 ( .A0(n66), .A1(n30), .B0(n58), .B1(n151), .C0(n31), .Y(n65)
         );
  AOI221XLM U127 ( .A0(n66), .A1(n151), .B0(n30), .B1(n67), .C0(n62), .Y(n64)
         );
  INVX2M U128 ( .A(n32), .Y(n136) );
  OAI2B2X1M U129 ( .A1N(B[0]), .A0(n115), .B0(n109), .B1(n157), .Y(n114) );
  AOI221XLM U130 ( .A0(n66), .A1(n158), .B0(n6), .B1(n67), .C0(n62), .Y(n115)
         );
  OAI2B2X1M U131 ( .A1N(B[1]), .A0(n104), .B0(n53), .B1(n158), .Y(n103) );
  AOI221XLM U132 ( .A0(n66), .A1(n157), .B0(n7), .B1(n67), .C0(n62), .Y(n104)
         );
  OAI21X2M U133 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI31X2M U134 ( .A0(N166), .A1(n4), .A2(n121), .B0(n108), .Y(n120) );
  AOI221XLM U135 ( .A0(n6), .A1(n66), .B0(n58), .B1(n158), .C0(n31), .Y(n119)
         );
  NOR3X2M U136 ( .A(n146), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U137 ( .A0(B[1]), .A1(n105), .B0(n106), .Y(n102) );
  AOI31X2M U138 ( .A0(N167), .A1(n4), .A2(n107), .B0(n108), .Y(n106) );
  AOI221XLM U139 ( .A0(n7), .A1(n66), .B0(n58), .B1(n157), .C0(n31), .Y(n105)
         );
  NOR3X2M U140 ( .A(n143), .B(ALU_FUN[2]), .C(n146), .Y(n107) );
  BUFX2M U141 ( .A(A[7]), .Y(n30) );
  BUFX2M U142 ( .A(A[1]), .Y(n7) );
  BUFX2M U143 ( .A(A[0]), .Y(n6) );
  BUFX2M U144 ( .A(A[3]), .Y(n9) );
  BUFX2M U145 ( .A(A[2]), .Y(n8) );
  BUFX2M U146 ( .A(A[5]), .Y(n28) );
  BUFX2M U147 ( .A(A[4]), .Y(n27) );
  BUFX2M U148 ( .A(B[6]), .Y(n5) );
  INVX2M U149 ( .A(B[0]), .Y(n135) );
  INVX2M U150 ( .A(B[2]), .Y(n137) );
  INVX2M U151 ( .A(B[3]), .Y(n139) );
  NOR2X1M U152 ( .A(n151), .B(B[7]), .Y(n131) );
  NAND2BX1M U153 ( .AN(B[4]), .B(n27), .Y(n47) );
  NAND2BX1M U154 ( .AN(n27), .B(B[4]), .Y(n36) );
  CLKNAND2X2M U155 ( .A(n47), .B(n36), .Y(n126) );
  NOR2X1M U156 ( .A(n139), .B(n9), .Y(n44) );
  NOR2X1M U157 ( .A(n137), .B(n8), .Y(n35) );
  NOR2X1M U158 ( .A(n135), .B(n6), .Y(n32) );
  CLKNAND2X2M U159 ( .A(n8), .B(n137), .Y(n46) );
  NAND2BX1M U160 ( .AN(n35), .B(n46), .Y(n41) );
  AOI21X1M U161 ( .A0(n32), .A1(n157), .B0(B[1]), .Y(n33) );
  AOI211X1M U162 ( .A0(n7), .A1(n136), .B0(n41), .C0(n33), .Y(n34) );
  CLKNAND2X2M U163 ( .A(n9), .B(n139), .Y(n45) );
  OAI31X1M U164 ( .A0(n44), .A1(n35), .A2(n34), .B0(n45), .Y(n37) );
  NAND2BX1M U165 ( .AN(n28), .B(B[5]), .Y(n129) );
  OAI211X1M U166 ( .A0(n126), .A1(n37), .B0(n36), .C0(n129), .Y(n38) );
  NAND2BX1M U167 ( .AN(B[5]), .B(n28), .Y(n125) );
  XNOR2X1M U168 ( .A(n29), .B(n5), .Y(n128) );
  AOI32X1M U169 ( .A0(n38), .A1(n125), .A2(n128), .B0(n5), .B1(n152), .Y(n39)
         );
  CLKNAND2X2M U170 ( .A(B[7]), .B(n151), .Y(n132) );
  OAI21X1M U171 ( .A0(n131), .A1(n39), .B0(n132), .Y(N168) );
  CLKNAND2X2M U172 ( .A(n6), .B(n135), .Y(n42) );
  OA21X1M U173 ( .A0(n42), .A1(n157), .B0(B[1]), .Y(n40) );
  AOI211X1M U174 ( .A0(n42), .A1(n157), .B0(n41), .C0(n40), .Y(n43) );
  AOI31X1M U175 ( .A0(n138), .A1(n46), .A2(n45), .B0(n44), .Y(n127) );
  OAI2B11X1M U176 ( .A1N(n127), .A0(n126), .B0(n125), .C0(n47), .Y(n130) );
  AOI32X1M U177 ( .A0(n130), .A1(n129), .A2(n128), .B0(n29), .B1(n140), .Y(
        n133) );
  AOI2B1X1M U178 ( .A1N(n133), .A0(n132), .B0(n131), .Y(n134) );
  NOR2X1M U179 ( .A(N168), .B(N167), .Y(N166) );
  ALU_DW_div_uns_0 div_29 ( .a({n30, n29, n28, n27, n9, n8, n7, n6}), .b({B[7], 
        n5, B[5:0]}), .quotient({N133, N132, N131, N130, N129, N128, N127, 
        N126}) );
  ALU_DW01_sub_0 sub_27 ( .A({1'b0, n30, n29, n28, n27, n9, n8, n7, n6}), .B({
        1'b0, B[7], n5, B[5:0]}), .CI(1'b0), .DIFF({N109, N108, N107, N106, 
        N105, N104, N103, N102, N101}) );
  ALU_DW01_add_0 add_26 ( .A({1'b0, n30, n29, n28, n27, n9, n8, n7, n6}), .B({
        1'b0, B[7], n5, B[5:0]}), .CI(1'b0), .SUM({N100, N99, N98, N97, N96, 
        N95, N94, N93, N92}) );
  ALU_DW02_mult_0 mult_28 ( .A({n30, n29, n28, n27, n9, n8, n7, n6}), .B({B[7], 
        n5, B[5:0]}), .TC(1'b0), .PRODUCT({N125, N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110}) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH4_test_1 ( i_w_clk, i_rst_n, 
        i_w_inc, i_w_full, i_wr_data, i_wr_addr, i_rd_addr, o_rd_data, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] i_wr_data;
  input [3:0] i_wr_addr;
  input [3:0] i_rd_addr;
  output [7:0] o_rd_data;
  input i_w_clk, i_rst_n, i_w_inc, i_w_full, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, N13, \mem[0][7] , \mem[0][6] , \mem[0][5] ,
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] ,
         \mem[1][7] , \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] ,
         \mem[1][2] , \mem[1][1] , \mem[1][0] , \mem[2][7] , \mem[2][6] ,
         \mem[2][5] , \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] ,
         \mem[2][0] , \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] ,
         \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] , \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] ,
         \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] ,
         \mem[6][7] , \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] ,
         \mem[6][2] , \mem[6][1] , \mem[6][0] , \mem[7][7] , \mem[7][6] ,
         \mem[7][5] , \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] ,
         \mem[7][0] , \mem[8][7] , \mem[8][6] , \mem[8][5] , \mem[8][4] ,
         \mem[8][3] , \mem[8][2] , \mem[8][1] , \mem[8][0] , \mem[9][7] ,
         \mem[9][6] , \mem[9][5] , \mem[9][4] , \mem[9][3] , \mem[9][2] ,
         \mem[9][1] , \mem[9][0] , \mem[10][7] , \mem[10][6] , \mem[10][5] ,
         \mem[10][4] , \mem[10][3] , \mem[10][2] , \mem[10][1] , \mem[10][0] ,
         \mem[11][7] , \mem[11][6] , \mem[11][5] , \mem[11][4] , \mem[11][3] ,
         \mem[11][2] , \mem[11][1] , \mem[11][0] , \mem[12][7] , \mem[12][6] ,
         \mem[12][5] , \mem[12][4] , \mem[12][3] , \mem[12][2] , \mem[12][1] ,
         \mem[12][0] , \mem[13][7] , \mem[13][6] , \mem[13][5] , \mem[13][4] ,
         \mem[13][3] , \mem[13][2] , \mem[13][1] , \mem[13][0] , \mem[14][7] ,
         \mem[14][6] , \mem[14][5] , \mem[14][4] , \mem[14][3] , \mem[14][2] ,
         \mem[14][1] , \mem[14][0] , \mem[15][7] , \mem[15][6] , \mem[15][5] ,
         \mem[15][4] , \mem[15][3] , \mem[15][2] , \mem[15][1] , \mem[15][0] ,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n354, n355, n356, n357;
  assign N10 = i_rd_addr[0];
  assign N11 = i_rd_addr[1];
  assign N12 = i_rd_addr[2];
  assign N13 = i_rd_addr[3];
  assign test_so1 = \mem[5][5] ;
  assign test_so2 = \mem[15][7] ;

  SDFFRQX2M \mem_reg[1][7]  ( .D(n286), .SI(\mem[1][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n325), .Q(\mem[1][7] ) );
  SDFFRQX2M \mem_reg[1][6]  ( .D(n285), .SI(\mem[1][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n325), .Q(\mem[1][6] ) );
  SDFFRQX2M \mem_reg[1][5]  ( .D(n284), .SI(\mem[1][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n325), .Q(\mem[1][5] ) );
  SDFFRQX2M \mem_reg[1][4]  ( .D(n283), .SI(\mem[1][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n325), .Q(\mem[1][4] ) );
  SDFFRQX2M \mem_reg[1][3]  ( .D(n282), .SI(\mem[1][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n326), .Q(\mem[1][3] ) );
  SDFFRQX2M \mem_reg[1][2]  ( .D(n281), .SI(\mem[1][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n326), .Q(\mem[1][2] ) );
  SDFFRQX2M \mem_reg[1][1]  ( .D(n280), .SI(\mem[1][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n326), .Q(\mem[1][1] ) );
  SDFFRQX2M \mem_reg[1][0]  ( .D(n279), .SI(\mem[0][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n326), .Q(\mem[1][0] ) );
  SDFFRQX2M \mem_reg[5][7]  ( .D(n254), .SI(\mem[5][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n328), .Q(\mem[5][7] ) );
  SDFFRQX2M \mem_reg[5][6]  ( .D(n253), .SI(test_si2), .SE(n357), .CK(i_w_clk), 
        .RN(n328), .Q(\mem[5][6] ) );
  SDFFRQX2M \mem_reg[5][5]  ( .D(n252), .SI(\mem[5][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n328), .Q(\mem[5][5] ) );
  SDFFRQX2M \mem_reg[5][4]  ( .D(n251), .SI(\mem[5][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n328), .Q(\mem[5][4] ) );
  SDFFRQX2M \mem_reg[5][3]  ( .D(n250), .SI(\mem[5][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n328), .Q(\mem[5][3] ) );
  SDFFRQX2M \mem_reg[5][2]  ( .D(n249), .SI(\mem[5][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n328), .Q(\mem[5][2] ) );
  SDFFRQX2M \mem_reg[5][1]  ( .D(n248), .SI(\mem[5][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n328), .Q(\mem[5][1] ) );
  SDFFRQX2M \mem_reg[5][0]  ( .D(n247), .SI(\mem[4][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n328), .Q(\mem[5][0] ) );
  SDFFRQX2M \mem_reg[9][7]  ( .D(n222), .SI(\mem[9][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n331), .Q(\mem[9][7] ) );
  SDFFRQX2M \mem_reg[9][6]  ( .D(n221), .SI(\mem[9][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n331), .Q(\mem[9][6] ) );
  SDFFRQX2M \mem_reg[9][5]  ( .D(n220), .SI(\mem[9][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n331), .Q(\mem[9][5] ) );
  SDFFRQX2M \mem_reg[9][4]  ( .D(n219), .SI(\mem[9][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n331), .Q(\mem[9][4] ) );
  SDFFRQX2M \mem_reg[9][3]  ( .D(n218), .SI(\mem[9][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n331), .Q(\mem[9][3] ) );
  SDFFRQX2M \mem_reg[9][2]  ( .D(n217), .SI(\mem[9][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n331), .Q(\mem[9][2] ) );
  SDFFRQX2M \mem_reg[9][1]  ( .D(n216), .SI(\mem[9][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n331), .Q(\mem[9][1] ) );
  SDFFRQX2M \mem_reg[9][0]  ( .D(n215), .SI(\mem[8][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n331), .Q(\mem[9][0] ) );
  SDFFRQX2M \mem_reg[13][7]  ( .D(n190), .SI(\mem[13][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n333), .Q(\mem[13][7] ) );
  SDFFRQX2M \mem_reg[13][6]  ( .D(n189), .SI(\mem[13][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n333), .Q(\mem[13][6] ) );
  SDFFRQX2M \mem_reg[13][5]  ( .D(n188), .SI(\mem[13][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n333), .Q(\mem[13][5] ) );
  SDFFRQX2M \mem_reg[13][4]  ( .D(n187), .SI(\mem[13][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n333), .Q(\mem[13][4] ) );
  SDFFRQX2M \mem_reg[13][3]  ( .D(n186), .SI(\mem[13][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n334), .Q(\mem[13][3] ) );
  SDFFRQX2M \mem_reg[13][2]  ( .D(n185), .SI(\mem[13][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n334), .Q(\mem[13][2] ) );
  SDFFRQX2M \mem_reg[13][1]  ( .D(n184), .SI(\mem[13][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n334), .Q(\mem[13][1] ) );
  SDFFRQX2M \mem_reg[13][0]  ( .D(n183), .SI(\mem[12][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n334), .Q(\mem[13][0] ) );
  SDFFRQX2M \mem_reg[3][7]  ( .D(n270), .SI(\mem[3][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n327), .Q(\mem[3][7] ) );
  SDFFRQX2M \mem_reg[3][6]  ( .D(n269), .SI(\mem[3][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n327), .Q(\mem[3][6] ) );
  SDFFRQX2M \mem_reg[3][5]  ( .D(n268), .SI(\mem[3][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n327), .Q(\mem[3][5] ) );
  SDFFRQX2M \mem_reg[3][4]  ( .D(n267), .SI(\mem[3][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n327), .Q(\mem[3][4] ) );
  SDFFRQX2M \mem_reg[3][3]  ( .D(n266), .SI(\mem[3][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n327), .Q(\mem[3][3] ) );
  SDFFRQX2M \mem_reg[3][2]  ( .D(n265), .SI(\mem[3][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n327), .Q(\mem[3][2] ) );
  SDFFRQX2M \mem_reg[3][1]  ( .D(n264), .SI(\mem[3][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n327), .Q(\mem[3][1] ) );
  SDFFRQX2M \mem_reg[3][0]  ( .D(n263), .SI(\mem[2][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n327), .Q(\mem[3][0] ) );
  SDFFRQX2M \mem_reg[7][7]  ( .D(n238), .SI(\mem[7][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n329), .Q(\mem[7][7] ) );
  SDFFRQX2M \mem_reg[7][6]  ( .D(n237), .SI(\mem[7][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n329), .Q(\mem[7][6] ) );
  SDFFRQX2M \mem_reg[7][5]  ( .D(n236), .SI(\mem[7][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n329), .Q(\mem[7][5] ) );
  SDFFRQX2M \mem_reg[7][4]  ( .D(n235), .SI(\mem[7][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n329), .Q(\mem[7][4] ) );
  SDFFRQX2M \mem_reg[7][3]  ( .D(n234), .SI(\mem[7][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n330), .Q(\mem[7][3] ) );
  SDFFRQX2M \mem_reg[7][2]  ( .D(n233), .SI(\mem[7][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n330), .Q(\mem[7][2] ) );
  SDFFRQX2M \mem_reg[7][1]  ( .D(n232), .SI(\mem[7][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n330), .Q(\mem[7][1] ) );
  SDFFRQX2M \mem_reg[7][0]  ( .D(n231), .SI(\mem[6][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n330), .Q(\mem[7][0] ) );
  SDFFRQX2M \mem_reg[11][7]  ( .D(n206), .SI(\mem[11][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n332), .Q(\mem[11][7] ) );
  SDFFRQX2M \mem_reg[11][6]  ( .D(n205), .SI(\mem[11][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n332), .Q(\mem[11][6] ) );
  SDFFRQX2M \mem_reg[11][5]  ( .D(n204), .SI(\mem[11][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n332), .Q(\mem[11][5] ) );
  SDFFRQX2M \mem_reg[11][4]  ( .D(n203), .SI(\mem[11][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n332), .Q(\mem[11][4] ) );
  SDFFRQX2M \mem_reg[11][3]  ( .D(n202), .SI(\mem[11][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n332), .Q(\mem[11][3] ) );
  SDFFRQX2M \mem_reg[11][2]  ( .D(n201), .SI(\mem[11][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n332), .Q(\mem[11][2] ) );
  SDFFRQX2M \mem_reg[11][1]  ( .D(n200), .SI(\mem[11][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n332), .Q(\mem[11][1] ) );
  SDFFRQX2M \mem_reg[11][0]  ( .D(n199), .SI(\mem[10][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n332), .Q(\mem[11][0] ) );
  SDFFRQX2M \mem_reg[15][7]  ( .D(n174), .SI(\mem[15][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n335), .Q(\mem[15][7] ) );
  SDFFRQX2M \mem_reg[15][6]  ( .D(n173), .SI(\mem[15][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n335), .Q(\mem[15][6] ) );
  SDFFRQX2M \mem_reg[15][5]  ( .D(n172), .SI(\mem[15][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n335), .Q(\mem[15][5] ) );
  SDFFRQX2M \mem_reg[15][4]  ( .D(n171), .SI(\mem[15][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n335), .Q(\mem[15][4] ) );
  SDFFRQX2M \mem_reg[15][3]  ( .D(n170), .SI(\mem[15][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n335), .Q(\mem[15][3] ) );
  SDFFRQX2M \mem_reg[15][2]  ( .D(n169), .SI(\mem[15][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n335), .Q(\mem[15][2] ) );
  SDFFRQX2M \mem_reg[15][1]  ( .D(n168), .SI(\mem[15][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n335), .Q(\mem[15][1] ) );
  SDFFRQX2M \mem_reg[15][0]  ( .D(n167), .SI(\mem[14][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n335), .Q(\mem[15][0] ) );
  SDFFRQX2M \mem_reg[2][7]  ( .D(n278), .SI(\mem[2][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n326), .Q(\mem[2][7] ) );
  SDFFRQX2M \mem_reg[2][6]  ( .D(n277), .SI(\mem[2][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n326), .Q(\mem[2][6] ) );
  SDFFRQX2M \mem_reg[2][5]  ( .D(n276), .SI(\mem[2][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n326), .Q(\mem[2][5] ) );
  SDFFRQX2M \mem_reg[2][4]  ( .D(n275), .SI(\mem[2][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n326), .Q(\mem[2][4] ) );
  SDFFRQX2M \mem_reg[2][3]  ( .D(n274), .SI(\mem[2][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n326), .Q(\mem[2][3] ) );
  SDFFRQX2M \mem_reg[2][2]  ( .D(n273), .SI(\mem[2][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n326), .Q(\mem[2][2] ) );
  SDFFRQX2M \mem_reg[2][1]  ( .D(n272), .SI(\mem[2][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n326), .Q(\mem[2][1] ) );
  SDFFRQX2M \mem_reg[2][0]  ( .D(n271), .SI(\mem[1][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n326), .Q(\mem[2][0] ) );
  SDFFRQX2M \mem_reg[6][7]  ( .D(n246), .SI(\mem[6][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n329), .Q(\mem[6][7] ) );
  SDFFRQX2M \mem_reg[6][6]  ( .D(n245), .SI(\mem[6][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n329), .Q(\mem[6][6] ) );
  SDFFRQX2M \mem_reg[6][5]  ( .D(n244), .SI(\mem[6][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n329), .Q(\mem[6][5] ) );
  SDFFRQX2M \mem_reg[6][4]  ( .D(n243), .SI(\mem[6][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n329), .Q(\mem[6][4] ) );
  SDFFRQX2M \mem_reg[6][3]  ( .D(n242), .SI(\mem[6][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n329), .Q(\mem[6][3] ) );
  SDFFRQX2M \mem_reg[6][2]  ( .D(n241), .SI(\mem[6][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n329), .Q(\mem[6][2] ) );
  SDFFRQX2M \mem_reg[6][1]  ( .D(n240), .SI(\mem[6][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n329), .Q(\mem[6][1] ) );
  SDFFRQX2M \mem_reg[6][0]  ( .D(n239), .SI(\mem[5][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n329), .Q(\mem[6][0] ) );
  SDFFRQX2M \mem_reg[10][7]  ( .D(n214), .SI(\mem[10][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n331), .Q(\mem[10][7] ) );
  SDFFRQX2M \mem_reg[10][6]  ( .D(n213), .SI(\mem[10][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n331), .Q(\mem[10][6] ) );
  SDFFRQX2M \mem_reg[10][5]  ( .D(n212), .SI(\mem[10][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n331), .Q(\mem[10][5] ) );
  SDFFRQX2M \mem_reg[10][4]  ( .D(n211), .SI(\mem[10][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n331), .Q(\mem[10][4] ) );
  SDFFRQX2M \mem_reg[10][3]  ( .D(n210), .SI(\mem[10][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n332), .Q(\mem[10][3] ) );
  SDFFRQX2M \mem_reg[10][2]  ( .D(n209), .SI(\mem[10][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n332), .Q(\mem[10][2] ) );
  SDFFRQX2M \mem_reg[10][1]  ( .D(n208), .SI(\mem[10][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n332), .Q(\mem[10][1] ) );
  SDFFRQX2M \mem_reg[10][0]  ( .D(n207), .SI(\mem[9][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n332), .Q(\mem[10][0] ) );
  SDFFRQX2M \mem_reg[14][7]  ( .D(n182), .SI(\mem[14][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n334), .Q(\mem[14][7] ) );
  SDFFRQX2M \mem_reg[14][6]  ( .D(n181), .SI(\mem[14][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n334), .Q(\mem[14][6] ) );
  SDFFRQX2M \mem_reg[14][5]  ( .D(n180), .SI(\mem[14][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n334), .Q(\mem[14][5] ) );
  SDFFRQX2M \mem_reg[14][4]  ( .D(n179), .SI(\mem[14][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n334), .Q(\mem[14][4] ) );
  SDFFRQX2M \mem_reg[14][3]  ( .D(n178), .SI(\mem[14][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n334), .Q(\mem[14][3] ) );
  SDFFRQX2M \mem_reg[14][2]  ( .D(n177), .SI(\mem[14][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n334), .Q(\mem[14][2] ) );
  SDFFRQX2M \mem_reg[14][1]  ( .D(n176), .SI(\mem[14][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n334), .Q(\mem[14][1] ) );
  SDFFRQX2M \mem_reg[14][0]  ( .D(n175), .SI(\mem[13][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n334), .Q(\mem[14][0] ) );
  SDFFRQX2M \mem_reg[0][7]  ( .D(n294), .SI(\mem[0][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n325), .Q(\mem[0][7] ) );
  SDFFRQX2M \mem_reg[0][6]  ( .D(n293), .SI(\mem[0][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n325), .Q(\mem[0][6] ) );
  SDFFRQX2M \mem_reg[0][5]  ( .D(n292), .SI(\mem[0][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n325), .Q(\mem[0][5] ) );
  SDFFRQX2M \mem_reg[0][4]  ( .D(n291), .SI(\mem[0][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n325), .Q(\mem[0][4] ) );
  SDFFRQX2M \mem_reg[0][3]  ( .D(n290), .SI(\mem[0][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n325), .Q(\mem[0][3] ) );
  SDFFRQX2M \mem_reg[0][2]  ( .D(n289), .SI(\mem[0][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n325), .Q(\mem[0][2] ) );
  SDFFRQX2M \mem_reg[0][1]  ( .D(n288), .SI(\mem[0][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n325), .Q(\mem[0][1] ) );
  SDFFRQX2M \mem_reg[0][0]  ( .D(n287), .SI(test_si1), .SE(n355), .CK(i_w_clk), 
        .RN(n325), .Q(\mem[0][0] ) );
  SDFFRQX2M \mem_reg[4][7]  ( .D(n262), .SI(\mem[4][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n327), .Q(\mem[4][7] ) );
  SDFFRQX2M \mem_reg[4][6]  ( .D(n261), .SI(\mem[4][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n327), .Q(\mem[4][6] ) );
  SDFFRQX2M \mem_reg[4][5]  ( .D(n260), .SI(\mem[4][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n327), .Q(\mem[4][5] ) );
  SDFFRQX2M \mem_reg[4][4]  ( .D(n259), .SI(\mem[4][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n327), .Q(\mem[4][4] ) );
  SDFFRQX2M \mem_reg[4][3]  ( .D(n258), .SI(\mem[4][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n328), .Q(\mem[4][3] ) );
  SDFFRQX2M \mem_reg[4][2]  ( .D(n257), .SI(\mem[4][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n328), .Q(\mem[4][2] ) );
  SDFFRQX2M \mem_reg[4][1]  ( .D(n256), .SI(\mem[4][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n328), .Q(\mem[4][1] ) );
  SDFFRQX2M \mem_reg[4][0]  ( .D(n255), .SI(\mem[3][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n328), .Q(\mem[4][0] ) );
  SDFFRQX2M \mem_reg[8][7]  ( .D(n230), .SI(\mem[8][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n330), .Q(\mem[8][7] ) );
  SDFFRQX2M \mem_reg[8][6]  ( .D(n229), .SI(\mem[8][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n330), .Q(\mem[8][6] ) );
  SDFFRQX2M \mem_reg[8][5]  ( .D(n228), .SI(\mem[8][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n330), .Q(\mem[8][5] ) );
  SDFFRQX2M \mem_reg[8][4]  ( .D(n227), .SI(\mem[8][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n330), .Q(\mem[8][4] ) );
  SDFFRQX2M \mem_reg[8][3]  ( .D(n226), .SI(\mem[8][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n330), .Q(\mem[8][3] ) );
  SDFFRQX2M \mem_reg[8][2]  ( .D(n225), .SI(\mem[8][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n330), .Q(\mem[8][2] ) );
  SDFFRQX2M \mem_reg[8][1]  ( .D(n224), .SI(\mem[8][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n330), .Q(\mem[8][1] ) );
  SDFFRQX2M \mem_reg[8][0]  ( .D(n223), .SI(\mem[7][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n330), .Q(\mem[8][0] ) );
  SDFFRQX2M \mem_reg[12][7]  ( .D(n198), .SI(\mem[12][6] ), .SE(n354), .CK(
        i_w_clk), .RN(n333), .Q(\mem[12][7] ) );
  SDFFRQX2M \mem_reg[12][6]  ( .D(n197), .SI(\mem[12][5] ), .SE(n357), .CK(
        i_w_clk), .RN(n333), .Q(\mem[12][6] ) );
  SDFFRQX2M \mem_reg[12][5]  ( .D(n196), .SI(\mem[12][4] ), .SE(n356), .CK(
        i_w_clk), .RN(n333), .Q(\mem[12][5] ) );
  SDFFRQX2M \mem_reg[12][4]  ( .D(n195), .SI(\mem[12][3] ), .SE(n355), .CK(
        i_w_clk), .RN(n333), .Q(\mem[12][4] ) );
  SDFFRQX2M \mem_reg[12][3]  ( .D(n194), .SI(\mem[12][2] ), .SE(n354), .CK(
        i_w_clk), .RN(n333), .Q(\mem[12][3] ) );
  SDFFRQX2M \mem_reg[12][2]  ( .D(n193), .SI(\mem[12][1] ), .SE(n357), .CK(
        i_w_clk), .RN(n333), .Q(\mem[12][2] ) );
  SDFFRQX2M \mem_reg[12][1]  ( .D(n192), .SI(\mem[12][0] ), .SE(n356), .CK(
        i_w_clk), .RN(n333), .Q(\mem[12][1] ) );
  SDFFRQX2M \mem_reg[12][0]  ( .D(n191), .SI(\mem[11][7] ), .SE(n355), .CK(
        i_w_clk), .RN(n333), .Q(\mem[12][0] ) );
  NOR2X2M U130 ( .A(n350), .B(n349), .Y(n141) );
  INVX2M U131 ( .A(i_wr_data[0]), .Y(n340) );
  INVX2M U132 ( .A(i_wr_data[1]), .Y(n341) );
  INVX2M U133 ( .A(i_wr_data[2]), .Y(n342) );
  INVX2M U134 ( .A(i_wr_data[3]), .Y(n343) );
  INVX2M U135 ( .A(i_wr_data[4]), .Y(n344) );
  INVX2M U136 ( .A(i_wr_data[5]), .Y(n345) );
  INVX2M U137 ( .A(i_wr_data[6]), .Y(n346) );
  INVX2M U138 ( .A(i_wr_data[7]), .Y(n347) );
  NOR2X2M U139 ( .A(n349), .B(i_wr_addr[2]), .Y(n149) );
  NOR2X2M U140 ( .A(i_wr_addr[1]), .B(i_wr_addr[2]), .Y(n152) );
  NOR2X2M U141 ( .A(n350), .B(i_wr_addr[1]), .Y(n146) );
  INVX2M U142 ( .A(n320), .Y(n321) );
  BUFX2M U143 ( .A(n336), .Y(n334) );
  BUFX2M U144 ( .A(n336), .Y(n333) );
  BUFX2M U145 ( .A(n337), .Y(n332) );
  BUFX2M U146 ( .A(n337), .Y(n331) );
  BUFX2M U147 ( .A(n337), .Y(n330) );
  BUFX2M U148 ( .A(n338), .Y(n329) );
  BUFX2M U149 ( .A(n338), .Y(n328) );
  BUFX2M U150 ( .A(n338), .Y(n327) );
  BUFX2M U151 ( .A(n339), .Y(n326) );
  BUFX2M U152 ( .A(n339), .Y(n325) );
  BUFX2M U153 ( .A(n336), .Y(n335) );
  INVX2M U154 ( .A(n320), .Y(n322) );
  BUFX2M U155 ( .A(n319), .Y(n320) );
  BUFX2M U156 ( .A(n323), .Y(n336) );
  BUFX2M U157 ( .A(n323), .Y(n337) );
  BUFX2M U158 ( .A(n324), .Y(n338) );
  BUFX2M U159 ( .A(n324), .Y(n339) );
  NAND2X2M U160 ( .A(n144), .B(n141), .Y(n143) );
  NAND2X2M U161 ( .A(n159), .B(n141), .Y(n158) );
  INVX2M U162 ( .A(n317), .Y(n318) );
  INVX2M U163 ( .A(N10), .Y(n319) );
  BUFX2M U164 ( .A(i_rst_n), .Y(n323) );
  BUFX2M U165 ( .A(i_rst_n), .Y(n324) );
  NAND2X2M U166 ( .A(n146), .B(n142), .Y(n145) );
  NAND2X2M U167 ( .A(n146), .B(n144), .Y(n147) );
  NAND2X2M U168 ( .A(n149), .B(n142), .Y(n148) );
  NAND2X2M U169 ( .A(n149), .B(n144), .Y(n150) );
  NAND2X2M U170 ( .A(n152), .B(n142), .Y(n151) );
  NAND2X2M U171 ( .A(n152), .B(n144), .Y(n154) );
  NAND2X2M U172 ( .A(n157), .B(n146), .Y(n160) );
  NAND2X2M U173 ( .A(n159), .B(n146), .Y(n161) );
  NAND2X2M U174 ( .A(n157), .B(n149), .Y(n162) );
  NAND2X2M U175 ( .A(n159), .B(n149), .Y(n163) );
  NAND2X2M U176 ( .A(n157), .B(n152), .Y(n164) );
  NAND2X2M U177 ( .A(n159), .B(n152), .Y(n166) );
  NAND2X2M U178 ( .A(n157), .B(n141), .Y(n156) );
  NAND2X2M U179 ( .A(n141), .B(n142), .Y(n140) );
  NOR2BX2M U180 ( .AN(i_w_inc), .B(i_w_full), .Y(n155) );
  AND2X2M U181 ( .A(n153), .B(n348), .Y(n144) );
  AND2X2M U182 ( .A(n165), .B(n348), .Y(n159) );
  BUFX2M U183 ( .A(n316), .Y(n317) );
  OAI2BB2X1M U184 ( .B0(n140), .B1(n340), .A0N(\mem[15][0] ), .A1N(n140), .Y(
        n167) );
  OAI2BB2X1M U185 ( .B0(n140), .B1(n341), .A0N(\mem[15][1] ), .A1N(n140), .Y(
        n168) );
  OAI2BB2X1M U186 ( .B0(n140), .B1(n342), .A0N(\mem[15][2] ), .A1N(n140), .Y(
        n169) );
  OAI2BB2X1M U187 ( .B0(n140), .B1(n343), .A0N(\mem[15][3] ), .A1N(n140), .Y(
        n170) );
  OAI2BB2X1M U188 ( .B0(n140), .B1(n344), .A0N(\mem[15][4] ), .A1N(n140), .Y(
        n171) );
  OAI2BB2X1M U189 ( .B0(n140), .B1(n345), .A0N(\mem[15][5] ), .A1N(n140), .Y(
        n172) );
  OAI2BB2X1M U190 ( .B0(n140), .B1(n346), .A0N(\mem[15][6] ), .A1N(n140), .Y(
        n173) );
  OAI2BB2X1M U191 ( .B0(n140), .B1(n347), .A0N(\mem[15][7] ), .A1N(n140), .Y(
        n174) );
  OAI2BB2X1M U192 ( .B0(n340), .B1(n148), .A0N(\mem[11][0] ), .A1N(n148), .Y(
        n199) );
  OAI2BB2X1M U193 ( .B0(n341), .B1(n148), .A0N(\mem[11][1] ), .A1N(n148), .Y(
        n200) );
  OAI2BB2X1M U194 ( .B0(n342), .B1(n148), .A0N(\mem[11][2] ), .A1N(n148), .Y(
        n201) );
  OAI2BB2X1M U195 ( .B0(n343), .B1(n148), .A0N(\mem[11][3] ), .A1N(n148), .Y(
        n202) );
  OAI2BB2X1M U196 ( .B0(n344), .B1(n148), .A0N(\mem[11][4] ), .A1N(n148), .Y(
        n203) );
  OAI2BB2X1M U197 ( .B0(n345), .B1(n148), .A0N(\mem[11][5] ), .A1N(n148), .Y(
        n204) );
  OAI2BB2X1M U198 ( .B0(n346), .B1(n148), .A0N(\mem[11][6] ), .A1N(n148), .Y(
        n205) );
  OAI2BB2X1M U199 ( .B0(n347), .B1(n148), .A0N(\mem[11][7] ), .A1N(n148), .Y(
        n206) );
  OAI2BB2X1M U200 ( .B0(n340), .B1(n150), .A0N(\mem[10][0] ), .A1N(n150), .Y(
        n207) );
  OAI2BB2X1M U201 ( .B0(n341), .B1(n150), .A0N(\mem[10][1] ), .A1N(n150), .Y(
        n208) );
  OAI2BB2X1M U202 ( .B0(n342), .B1(n150), .A0N(\mem[10][2] ), .A1N(n150), .Y(
        n209) );
  OAI2BB2X1M U203 ( .B0(n343), .B1(n150), .A0N(\mem[10][3] ), .A1N(n150), .Y(
        n210) );
  OAI2BB2X1M U204 ( .B0(n344), .B1(n150), .A0N(\mem[10][4] ), .A1N(n150), .Y(
        n211) );
  OAI2BB2X1M U205 ( .B0(n345), .B1(n150), .A0N(\mem[10][5] ), .A1N(n150), .Y(
        n212) );
  OAI2BB2X1M U206 ( .B0(n346), .B1(n150), .A0N(\mem[10][6] ), .A1N(n150), .Y(
        n213) );
  OAI2BB2X1M U207 ( .B0(n347), .B1(n150), .A0N(\mem[10][7] ), .A1N(n150), .Y(
        n214) );
  OAI2BB2X1M U208 ( .B0(n340), .B1(n151), .A0N(\mem[9][0] ), .A1N(n151), .Y(
        n215) );
  OAI2BB2X1M U209 ( .B0(n341), .B1(n151), .A0N(\mem[9][1] ), .A1N(n151), .Y(
        n216) );
  OAI2BB2X1M U210 ( .B0(n342), .B1(n151), .A0N(\mem[9][2] ), .A1N(n151), .Y(
        n217) );
  OAI2BB2X1M U211 ( .B0(n343), .B1(n151), .A0N(\mem[9][3] ), .A1N(n151), .Y(
        n218) );
  OAI2BB2X1M U212 ( .B0(n344), .B1(n151), .A0N(\mem[9][4] ), .A1N(n151), .Y(
        n219) );
  OAI2BB2X1M U213 ( .B0(n345), .B1(n151), .A0N(\mem[9][5] ), .A1N(n151), .Y(
        n220) );
  OAI2BB2X1M U214 ( .B0(n346), .B1(n151), .A0N(\mem[9][6] ), .A1N(n151), .Y(
        n221) );
  OAI2BB2X1M U215 ( .B0(n347), .B1(n151), .A0N(\mem[9][7] ), .A1N(n151), .Y(
        n222) );
  OAI2BB2X1M U216 ( .B0(n340), .B1(n154), .A0N(\mem[8][0] ), .A1N(n154), .Y(
        n223) );
  OAI2BB2X1M U217 ( .B0(n341), .B1(n154), .A0N(\mem[8][1] ), .A1N(n154), .Y(
        n224) );
  OAI2BB2X1M U218 ( .B0(n342), .B1(n154), .A0N(\mem[8][2] ), .A1N(n154), .Y(
        n225) );
  OAI2BB2X1M U219 ( .B0(n343), .B1(n154), .A0N(\mem[8][3] ), .A1N(n154), .Y(
        n226) );
  OAI2BB2X1M U220 ( .B0(n344), .B1(n154), .A0N(\mem[8][4] ), .A1N(n154), .Y(
        n227) );
  OAI2BB2X1M U221 ( .B0(n345), .B1(n154), .A0N(\mem[8][5] ), .A1N(n154), .Y(
        n228) );
  OAI2BB2X1M U222 ( .B0(n346), .B1(n154), .A0N(\mem[8][6] ), .A1N(n154), .Y(
        n229) );
  OAI2BB2X1M U223 ( .B0(n347), .B1(n154), .A0N(\mem[8][7] ), .A1N(n154), .Y(
        n230) );
  OAI2BB2X1M U224 ( .B0(n340), .B1(n145), .A0N(\mem[13][0] ), .A1N(n145), .Y(
        n183) );
  OAI2BB2X1M U225 ( .B0(n341), .B1(n145), .A0N(\mem[13][1] ), .A1N(n145), .Y(
        n184) );
  OAI2BB2X1M U226 ( .B0(n342), .B1(n145), .A0N(\mem[13][2] ), .A1N(n145), .Y(
        n185) );
  OAI2BB2X1M U227 ( .B0(n343), .B1(n145), .A0N(\mem[13][3] ), .A1N(n145), .Y(
        n186) );
  OAI2BB2X1M U228 ( .B0(n344), .B1(n145), .A0N(\mem[13][4] ), .A1N(n145), .Y(
        n187) );
  OAI2BB2X1M U229 ( .B0(n345), .B1(n145), .A0N(\mem[13][5] ), .A1N(n145), .Y(
        n188) );
  OAI2BB2X1M U230 ( .B0(n346), .B1(n145), .A0N(\mem[13][6] ), .A1N(n145), .Y(
        n189) );
  OAI2BB2X1M U231 ( .B0(n347), .B1(n145), .A0N(\mem[13][7] ), .A1N(n145), .Y(
        n190) );
  OAI2BB2X1M U232 ( .B0(n340), .B1(n147), .A0N(\mem[12][0] ), .A1N(n147), .Y(
        n191) );
  OAI2BB2X1M U233 ( .B0(n341), .B1(n147), .A0N(\mem[12][1] ), .A1N(n147), .Y(
        n192) );
  OAI2BB2X1M U234 ( .B0(n342), .B1(n147), .A0N(\mem[12][2] ), .A1N(n147), .Y(
        n193) );
  OAI2BB2X1M U235 ( .B0(n343), .B1(n147), .A0N(\mem[12][3] ), .A1N(n147), .Y(
        n194) );
  OAI2BB2X1M U236 ( .B0(n344), .B1(n147), .A0N(\mem[12][4] ), .A1N(n147), .Y(
        n195) );
  OAI2BB2X1M U237 ( .B0(n345), .B1(n147), .A0N(\mem[12][5] ), .A1N(n147), .Y(
        n196) );
  OAI2BB2X1M U238 ( .B0(n346), .B1(n147), .A0N(\mem[12][6] ), .A1N(n147), .Y(
        n197) );
  OAI2BB2X1M U239 ( .B0(n347), .B1(n147), .A0N(\mem[12][7] ), .A1N(n147), .Y(
        n198) );
  OAI2BB2X1M U240 ( .B0(n340), .B1(n162), .A0N(\mem[3][0] ), .A1N(n162), .Y(
        n263) );
  OAI2BB2X1M U241 ( .B0(n341), .B1(n162), .A0N(\mem[3][1] ), .A1N(n162), .Y(
        n264) );
  OAI2BB2X1M U242 ( .B0(n342), .B1(n162), .A0N(\mem[3][2] ), .A1N(n162), .Y(
        n265) );
  OAI2BB2X1M U243 ( .B0(n343), .B1(n162), .A0N(\mem[3][3] ), .A1N(n162), .Y(
        n266) );
  OAI2BB2X1M U244 ( .B0(n344), .B1(n162), .A0N(\mem[3][4] ), .A1N(n162), .Y(
        n267) );
  OAI2BB2X1M U245 ( .B0(n345), .B1(n162), .A0N(\mem[3][5] ), .A1N(n162), .Y(
        n268) );
  OAI2BB2X1M U246 ( .B0(n346), .B1(n162), .A0N(\mem[3][6] ), .A1N(n162), .Y(
        n269) );
  OAI2BB2X1M U247 ( .B0(n347), .B1(n162), .A0N(\mem[3][7] ), .A1N(n162), .Y(
        n270) );
  OAI2BB2X1M U248 ( .B0(n340), .B1(n163), .A0N(\mem[2][0] ), .A1N(n163), .Y(
        n271) );
  OAI2BB2X1M U249 ( .B0(n341), .B1(n163), .A0N(\mem[2][1] ), .A1N(n163), .Y(
        n272) );
  OAI2BB2X1M U250 ( .B0(n342), .B1(n163), .A0N(\mem[2][2] ), .A1N(n163), .Y(
        n273) );
  OAI2BB2X1M U251 ( .B0(n343), .B1(n163), .A0N(\mem[2][3] ), .A1N(n163), .Y(
        n274) );
  OAI2BB2X1M U252 ( .B0(n344), .B1(n163), .A0N(\mem[2][4] ), .A1N(n163), .Y(
        n275) );
  OAI2BB2X1M U253 ( .B0(n345), .B1(n163), .A0N(\mem[2][5] ), .A1N(n163), .Y(
        n276) );
  OAI2BB2X1M U254 ( .B0(n346), .B1(n163), .A0N(\mem[2][6] ), .A1N(n163), .Y(
        n277) );
  OAI2BB2X1M U255 ( .B0(n347), .B1(n163), .A0N(\mem[2][7] ), .A1N(n163), .Y(
        n278) );
  OAI2BB2X1M U256 ( .B0(n340), .B1(n164), .A0N(\mem[1][0] ), .A1N(n164), .Y(
        n279) );
  OAI2BB2X1M U257 ( .B0(n341), .B1(n164), .A0N(\mem[1][1] ), .A1N(n164), .Y(
        n280) );
  OAI2BB2X1M U258 ( .B0(n342), .B1(n164), .A0N(\mem[1][2] ), .A1N(n164), .Y(
        n281) );
  OAI2BB2X1M U259 ( .B0(n343), .B1(n164), .A0N(\mem[1][3] ), .A1N(n164), .Y(
        n282) );
  OAI2BB2X1M U260 ( .B0(n344), .B1(n164), .A0N(\mem[1][4] ), .A1N(n164), .Y(
        n283) );
  OAI2BB2X1M U261 ( .B0(n345), .B1(n164), .A0N(\mem[1][5] ), .A1N(n164), .Y(
        n284) );
  OAI2BB2X1M U262 ( .B0(n346), .B1(n164), .A0N(\mem[1][6] ), .A1N(n164), .Y(
        n285) );
  OAI2BB2X1M U263 ( .B0(n347), .B1(n164), .A0N(\mem[1][7] ), .A1N(n164), .Y(
        n286) );
  OAI2BB2X1M U264 ( .B0(n340), .B1(n166), .A0N(\mem[0][0] ), .A1N(n166), .Y(
        n287) );
  OAI2BB2X1M U265 ( .B0(n341), .B1(n166), .A0N(\mem[0][1] ), .A1N(n166), .Y(
        n288) );
  OAI2BB2X1M U266 ( .B0(n342), .B1(n166), .A0N(\mem[0][2] ), .A1N(n166), .Y(
        n289) );
  OAI2BB2X1M U267 ( .B0(n343), .B1(n166), .A0N(\mem[0][3] ), .A1N(n166), .Y(
        n290) );
  OAI2BB2X1M U268 ( .B0(n344), .B1(n166), .A0N(\mem[0][4] ), .A1N(n166), .Y(
        n291) );
  OAI2BB2X1M U269 ( .B0(n345), .B1(n166), .A0N(\mem[0][5] ), .A1N(n166), .Y(
        n292) );
  OAI2BB2X1M U270 ( .B0(n346), .B1(n166), .A0N(\mem[0][6] ), .A1N(n166), .Y(
        n293) );
  OAI2BB2X1M U271 ( .B0(n347), .B1(n166), .A0N(\mem[0][7] ), .A1N(n166), .Y(
        n294) );
  OAI2BB2X1M U272 ( .B0(n340), .B1(n143), .A0N(\mem[14][0] ), .A1N(n143), .Y(
        n175) );
  OAI2BB2X1M U273 ( .B0(n341), .B1(n143), .A0N(\mem[14][1] ), .A1N(n143), .Y(
        n176) );
  OAI2BB2X1M U274 ( .B0(n342), .B1(n143), .A0N(\mem[14][2] ), .A1N(n143), .Y(
        n177) );
  OAI2BB2X1M U275 ( .B0(n343), .B1(n143), .A0N(\mem[14][3] ), .A1N(n143), .Y(
        n178) );
  OAI2BB2X1M U276 ( .B0(n344), .B1(n143), .A0N(\mem[14][4] ), .A1N(n143), .Y(
        n179) );
  OAI2BB2X1M U277 ( .B0(n345), .B1(n143), .A0N(\mem[14][5] ), .A1N(n143), .Y(
        n180) );
  OAI2BB2X1M U278 ( .B0(n346), .B1(n143), .A0N(\mem[14][6] ), .A1N(n143), .Y(
        n181) );
  OAI2BB2X1M U279 ( .B0(n347), .B1(n143), .A0N(\mem[14][7] ), .A1N(n143), .Y(
        n182) );
  OAI2BB2X1M U280 ( .B0(n340), .B1(n156), .A0N(\mem[7][0] ), .A1N(n156), .Y(
        n231) );
  OAI2BB2X1M U281 ( .B0(n341), .B1(n156), .A0N(\mem[7][1] ), .A1N(n156), .Y(
        n232) );
  OAI2BB2X1M U282 ( .B0(n342), .B1(n156), .A0N(\mem[7][2] ), .A1N(n156), .Y(
        n233) );
  OAI2BB2X1M U283 ( .B0(n343), .B1(n156), .A0N(\mem[7][3] ), .A1N(n156), .Y(
        n234) );
  OAI2BB2X1M U284 ( .B0(n344), .B1(n156), .A0N(\mem[7][4] ), .A1N(n156), .Y(
        n235) );
  OAI2BB2X1M U285 ( .B0(n345), .B1(n156), .A0N(\mem[7][5] ), .A1N(n156), .Y(
        n236) );
  OAI2BB2X1M U286 ( .B0(n346), .B1(n156), .A0N(\mem[7][6] ), .A1N(n156), .Y(
        n237) );
  OAI2BB2X1M U287 ( .B0(n347), .B1(n156), .A0N(\mem[7][7] ), .A1N(n156), .Y(
        n238) );
  OAI2BB2X1M U288 ( .B0(n340), .B1(n158), .A0N(\mem[6][0] ), .A1N(n158), .Y(
        n239) );
  OAI2BB2X1M U289 ( .B0(n341), .B1(n158), .A0N(\mem[6][1] ), .A1N(n158), .Y(
        n240) );
  OAI2BB2X1M U290 ( .B0(n342), .B1(n158), .A0N(\mem[6][2] ), .A1N(n158), .Y(
        n241) );
  OAI2BB2X1M U291 ( .B0(n343), .B1(n158), .A0N(\mem[6][3] ), .A1N(n158), .Y(
        n242) );
  OAI2BB2X1M U292 ( .B0(n344), .B1(n158), .A0N(\mem[6][4] ), .A1N(n158), .Y(
        n243) );
  OAI2BB2X1M U293 ( .B0(n345), .B1(n158), .A0N(\mem[6][5] ), .A1N(n158), .Y(
        n244) );
  OAI2BB2X1M U294 ( .B0(n346), .B1(n158), .A0N(\mem[6][6] ), .A1N(n158), .Y(
        n245) );
  OAI2BB2X1M U295 ( .B0(n347), .B1(n158), .A0N(\mem[6][7] ), .A1N(n158), .Y(
        n246) );
  OAI2BB2X1M U296 ( .B0(n340), .B1(n160), .A0N(\mem[5][0] ), .A1N(n160), .Y(
        n247) );
  OAI2BB2X1M U297 ( .B0(n341), .B1(n160), .A0N(\mem[5][1] ), .A1N(n160), .Y(
        n248) );
  OAI2BB2X1M U298 ( .B0(n342), .B1(n160), .A0N(\mem[5][2] ), .A1N(n160), .Y(
        n249) );
  OAI2BB2X1M U299 ( .B0(n343), .B1(n160), .A0N(\mem[5][3] ), .A1N(n160), .Y(
        n250) );
  OAI2BB2X1M U300 ( .B0(n344), .B1(n160), .A0N(\mem[5][4] ), .A1N(n160), .Y(
        n251) );
  OAI2BB2X1M U301 ( .B0(n345), .B1(n160), .A0N(\mem[5][5] ), .A1N(n160), .Y(
        n252) );
  OAI2BB2X1M U302 ( .B0(n346), .B1(n160), .A0N(\mem[5][6] ), .A1N(n160), .Y(
        n253) );
  OAI2BB2X1M U303 ( .B0(n347), .B1(n160), .A0N(\mem[5][7] ), .A1N(n160), .Y(
        n254) );
  OAI2BB2X1M U304 ( .B0(n340), .B1(n161), .A0N(\mem[4][0] ), .A1N(n161), .Y(
        n255) );
  OAI2BB2X1M U305 ( .B0(n341), .B1(n161), .A0N(\mem[4][1] ), .A1N(n161), .Y(
        n256) );
  OAI2BB2X1M U306 ( .B0(n342), .B1(n161), .A0N(\mem[4][2] ), .A1N(n161), .Y(
        n257) );
  OAI2BB2X1M U307 ( .B0(n343), .B1(n161), .A0N(\mem[4][3] ), .A1N(n161), .Y(
        n258) );
  OAI2BB2X1M U308 ( .B0(n344), .B1(n161), .A0N(\mem[4][4] ), .A1N(n161), .Y(
        n259) );
  OAI2BB2X1M U309 ( .B0(n345), .B1(n161), .A0N(\mem[4][5] ), .A1N(n161), .Y(
        n260) );
  OAI2BB2X1M U310 ( .B0(n346), .B1(n161), .A0N(\mem[4][6] ), .A1N(n161), .Y(
        n261) );
  OAI2BB2X1M U311 ( .B0(n347), .B1(n161), .A0N(\mem[4][7] ), .A1N(n161), .Y(
        n262) );
  AND2X2M U312 ( .A(n153), .B(i_wr_addr[0]), .Y(n142) );
  NOR2BX2M U313 ( .AN(n155), .B(i_wr_addr[3]), .Y(n165) );
  AND2X2M U314 ( .A(n165), .B(i_wr_addr[0]), .Y(n157) );
  AND2X2M U315 ( .A(i_wr_addr[3]), .B(n155), .Y(n153) );
  MX4X1M U316 ( .A(n132), .B(n130), .C(n131), .D(n129), .S0(N13), .S1(N12), 
        .Y(o_rd_data[0]) );
  MX4X1M U317 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(N10), .S1(N11), .Y(n132) );
  MX4X1M U318 ( .A(\mem[8][0] ), .B(\mem[9][0] ), .C(\mem[10][0] ), .D(
        \mem[11][0] ), .S0(N10), .S1(n318), .Y(n130) );
  MX4X1M U319 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(N10), .S1(n318), .Y(n131) );
  MX4X1M U320 ( .A(n136), .B(n134), .C(n135), .D(n133), .S0(N13), .S1(N12), 
        .Y(o_rd_data[1]) );
  MX4X1M U321 ( .A(\mem[8][1] ), .B(\mem[9][1] ), .C(\mem[10][1] ), .D(
        \mem[11][1] ), .S0(N10), .S1(N11), .Y(n134) );
  MX4X1M U322 ( .A(\mem[12][1] ), .B(\mem[13][1] ), .C(\mem[14][1] ), .D(
        \mem[15][1] ), .S0(n321), .S1(n318), .Y(n133) );
  MX4X1M U323 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n321), .S1(N11), .Y(n136) );
  MX4X1M U324 ( .A(n295), .B(n138), .C(n139), .D(n137), .S0(N13), .S1(N12), 
        .Y(o_rd_data[2]) );
  MX4X1M U325 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n321), .S1(n318), .Y(n295) );
  MX4X1M U326 ( .A(\mem[8][2] ), .B(\mem[9][2] ), .C(\mem[10][2] ), .D(
        \mem[11][2] ), .S0(n321), .S1(n318), .Y(n138) );
  MX4X1M U327 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n321), .S1(n318), .Y(n139) );
  MX4X1M U328 ( .A(n299), .B(n297), .C(n298), .D(n296), .S0(N13), .S1(N12), 
        .Y(o_rd_data[3]) );
  MX4X1M U329 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n321), .S1(n318), .Y(n299) );
  MX4X1M U330 ( .A(\mem[8][3] ), .B(\mem[9][3] ), .C(\mem[10][3] ), .D(
        \mem[11][3] ), .S0(n321), .S1(n318), .Y(n297) );
  MX4X1M U331 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n321), .S1(n318), .Y(n298) );
  MX4X1M U332 ( .A(n303), .B(n301), .C(n302), .D(n300), .S0(N13), .S1(N12), 
        .Y(o_rd_data[4]) );
  MX4X1M U333 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n322), .S1(n318), .Y(n303) );
  MX4X1M U334 ( .A(\mem[8][4] ), .B(\mem[9][4] ), .C(\mem[10][4] ), .D(
        \mem[11][4] ), .S0(n321), .S1(n318), .Y(n301) );
  MX4X1M U335 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n321), .S1(n318), .Y(n302) );
  MX4X1M U336 ( .A(n307), .B(n305), .C(n306), .D(n304), .S0(N13), .S1(N12), 
        .Y(o_rd_data[5]) );
  MX4X1M U337 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n322), .S1(N11), .Y(n307) );
  MX4X1M U338 ( .A(\mem[8][5] ), .B(\mem[9][5] ), .C(\mem[10][5] ), .D(
        \mem[11][5] ), .S0(n322), .S1(N11), .Y(n305) );
  MX4X1M U339 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n322), .S1(N11), .Y(n306) );
  MX4X1M U340 ( .A(n311), .B(n309), .C(n310), .D(n308), .S0(N13), .S1(N12), 
        .Y(o_rd_data[6]) );
  MX4X1M U341 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n322), .S1(N11), .Y(n311) );
  MX4X1M U342 ( .A(\mem[8][6] ), .B(\mem[9][6] ), .C(\mem[10][6] ), .D(
        \mem[11][6] ), .S0(n322), .S1(N11), .Y(n309) );
  MX4X1M U343 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n322), .S1(N11), .Y(n310) );
  MX4X1M U344 ( .A(n315), .B(n313), .C(n314), .D(n312), .S0(N13), .S1(N12), 
        .Y(o_rd_data[7]) );
  MX4X1M U345 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n322), .S1(N11), .Y(n315) );
  MX4X1M U346 ( .A(\mem[8][7] ), .B(\mem[9][7] ), .C(\mem[10][7] ), .D(
        \mem[11][7] ), .S0(n322), .S1(N11), .Y(n313) );
  MX4X1M U347 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n322), .S1(N11), .Y(n314) );
  MX4X1M U348 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n321), .S1(n318), .Y(n135) );
  MX4X1M U349 ( .A(\mem[12][0] ), .B(\mem[13][0] ), .C(\mem[14][0] ), .D(
        \mem[15][0] ), .S0(n322), .S1(n318), .Y(n129) );
  MX4X1M U350 ( .A(\mem[12][2] ), .B(\mem[13][2] ), .C(\mem[14][2] ), .D(
        \mem[15][2] ), .S0(n321), .S1(n318), .Y(n137) );
  MX4X1M U351 ( .A(\mem[12][3] ), .B(\mem[13][3] ), .C(\mem[14][3] ), .D(
        \mem[15][3] ), .S0(n321), .S1(n318), .Y(n296) );
  MX4X1M U352 ( .A(\mem[12][4] ), .B(\mem[13][4] ), .C(\mem[14][4] ), .D(
        \mem[15][4] ), .S0(n321), .S1(n318), .Y(n300) );
  MX4X1M U353 ( .A(\mem[12][5] ), .B(\mem[13][5] ), .C(\mem[14][5] ), .D(
        \mem[15][5] ), .S0(n322), .S1(N11), .Y(n304) );
  MX4X1M U354 ( .A(\mem[12][6] ), .B(\mem[13][6] ), .C(\mem[14][6] ), .D(
        \mem[15][6] ), .S0(n322), .S1(N11), .Y(n308) );
  MX4X1M U355 ( .A(\mem[12][7] ), .B(\mem[13][7] ), .C(\mem[14][7] ), .D(
        \mem[15][7] ), .S0(n322), .S1(N11), .Y(n312) );
  INVX2M U356 ( .A(N11), .Y(n316) );
  INVX2M U357 ( .A(i_wr_addr[2]), .Y(n350) );
  INVX2M U358 ( .A(i_wr_addr[1]), .Y(n349) );
  INVX2M U359 ( .A(i_wr_addr[0]), .Y(n348) );
  DLY1X1M U360 ( .A(test_se), .Y(n354) );
  DLY1X1M U361 ( .A(test_se), .Y(n355) );
  DLY1X1M U362 ( .A(test_se), .Y(n356) );
  DLY1X1M U363 ( .A(test_se), .Y(n357) );
endmodule


module DF_SYNC_ADDR_WIDTH4_test_1 ( i_clk, i_rst_n, i_r_d_ptr, wq2_r_d_ptr, 
        test_si, test_se );
  input [4:0] i_r_d_ptr;
  output [4:0] wq2_r_d_ptr;
  input i_clk, i_rst_n, test_si, test_se;

  wire   [4:0] R1;

  SDFFRQX2M \R2_reg[2]  ( .D(R1[2]), .SI(wq2_r_d_ptr[1]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(wq2_r_d_ptr[2]) );
  SDFFRQX2M \R2_reg[0]  ( .D(R1[0]), .SI(R1[4]), .SE(test_se), .CK(i_clk), 
        .RN(i_rst_n), .Q(wq2_r_d_ptr[0]) );
  SDFFRQX2M \R2_reg[1]  ( .D(R1[1]), .SI(wq2_r_d_ptr[0]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(wq2_r_d_ptr[1]) );
  SDFFRQX2M \R2_reg[4]  ( .D(R1[4]), .SI(wq2_r_d_ptr[3]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(wq2_r_d_ptr[4]) );
  SDFFRQX2M \R2_reg[3]  ( .D(R1[3]), .SI(wq2_r_d_ptr[2]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(wq2_r_d_ptr[3]) );
  SDFFRQX2M \R1_reg[4]  ( .D(i_r_d_ptr[4]), .SI(R1[3]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(R1[4]) );
  SDFFRQX2M \R1_reg[3]  ( .D(i_r_d_ptr[3]), .SI(R1[2]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(R1[3]) );
  SDFFRQX2M \R1_reg[2]  ( .D(i_r_d_ptr[2]), .SI(R1[1]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(R1[2]) );
  SDFFRQX2M \R1_reg[1]  ( .D(i_r_d_ptr[1]), .SI(R1[0]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(R1[1]) );
  SDFFRQX2M \R1_reg[0]  ( .D(i_r_d_ptr[0]), .SI(test_si), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(R1[0]) );
endmodule


module DF_SYNC_ADDR_WIDTH4_test_0 ( i_clk, i_rst_n, i_r_d_ptr, wq2_r_d_ptr, 
        test_si, test_se );
  input [4:0] i_r_d_ptr;
  output [4:0] wq2_r_d_ptr;
  input i_clk, i_rst_n, test_si, test_se;

  wire   [4:0] R1;

  SDFFRQX2M \R2_reg[4]  ( .D(R1[4]), .SI(wq2_r_d_ptr[3]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(wq2_r_d_ptr[4]) );
  SDFFRQX2M \R2_reg[3]  ( .D(R1[3]), .SI(wq2_r_d_ptr[2]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(wq2_r_d_ptr[3]) );
  SDFFRQX2M \R2_reg[2]  ( .D(R1[2]), .SI(wq2_r_d_ptr[1]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(wq2_r_d_ptr[2]) );
  SDFFRQX2M \R2_reg[1]  ( .D(R1[1]), .SI(wq2_r_d_ptr[0]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(wq2_r_d_ptr[1]) );
  SDFFRQX2M \R2_reg[0]  ( .D(R1[0]), .SI(R1[4]), .SE(test_se), .CK(i_clk), 
        .RN(i_rst_n), .Q(wq2_r_d_ptr[0]) );
  SDFFRQX2M \R1_reg[4]  ( .D(i_r_d_ptr[4]), .SI(R1[3]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(R1[4]) );
  SDFFRQX2M \R1_reg[3]  ( .D(i_r_d_ptr[3]), .SI(R1[2]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(R1[3]) );
  SDFFRQX2M \R1_reg[2]  ( .D(i_r_d_ptr[2]), .SI(R1[1]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(R1[2]) );
  SDFFRQX2M \R1_reg[1]  ( .D(i_r_d_ptr[1]), .SI(R1[0]), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(R1[1]) );
  SDFFRQX2M \R1_reg[0]  ( .D(i_r_d_ptr[0]), .SI(test_si), .SE(test_se), .CK(
        i_clk), .RN(i_rst_n), .Q(R1[0]) );
endmodule


module FIFO_RD_DATA_WIDTH8_ADDR_WIDTH4_test_1 ( i_r_clk, i_rst_n, i_r_inc, 
        rq2_wptr, o_r_empty, o_rd_addr, o_rptr, test_si2, test_si1, test_se );
  input [4:0] rq2_wptr;
  output [3:0] o_rd_addr;
  output [4:0] o_rptr;
  input i_r_clk, i_rst_n, i_r_inc, test_si2, test_si1, test_se;
  output o_r_empty;
  wire   N4, N5, N6, N7, n1, n3, n5, n7, n9, n11, \add_23/carry[4] ,
         \add_23/carry[3] , \add_23/carry[2] , n12, n13, n14, n15, n16, n17,
         n18, n19, n20;

  SDFFRQX2M \o_rptr_reg_reg[4]  ( .D(n9), .SI(o_rd_addr[3]), .SE(test_se), 
        .CK(i_r_clk), .RN(i_rst_n), .Q(o_rptr[4]) );
  SDFFRQX2M \o_rptr_reg_reg[0]  ( .D(n11), .SI(test_si1), .SE(test_se), .CK(
        i_r_clk), .RN(i_rst_n), .Q(o_rd_addr[0]) );
  SDFFRQX2M \o_rptr_reg_reg[1]  ( .D(n7), .SI(test_si2), .SE(test_se), .CK(
        i_r_clk), .RN(i_rst_n), .Q(o_rd_addr[1]) );
  SDFFRQX2M \o_rptr_reg_reg[2]  ( .D(n5), .SI(o_rd_addr[1]), .SE(test_se), 
        .CK(i_r_clk), .RN(i_rst_n), .Q(o_rd_addr[2]) );
  SDFFRQX2M \o_rptr_reg_reg[3]  ( .D(n3), .SI(o_rd_addr[2]), .SE(test_se), 
        .CK(i_r_clk), .RN(i_rst_n), .Q(o_rd_addr[3]) );
  AO2B2X2M U3 ( .B0(n12), .B1(n1), .A0(o_rd_addr[0]), .A1N(n1), .Y(n11) );
  NOR2BX2M U4 ( .AN(i_r_inc), .B(o_r_empty), .Y(n1) );
  AO2B2X2M U5 ( .B0(N6), .B1(n1), .A0(o_rd_addr[3]), .A1N(n1), .Y(n3) );
  AO2B2X2M U6 ( .B0(N5), .B1(n1), .A0(o_rd_addr[2]), .A1N(n1), .Y(n5) );
  AO2B2X2M U7 ( .B0(N4), .B1(n1), .A0(o_rd_addr[1]), .A1N(n1), .Y(n7) );
  AO2B2X2M U8 ( .B0(N7), .B1(n1), .A0(o_rptr[4]), .A1N(n1), .Y(n9) );
  INVX2M U9 ( .A(o_rd_addr[0]), .Y(n12) );
  CLKXOR2X2M U10 ( .A(o_rd_addr[3]), .B(o_rd_addr[2]), .Y(o_rptr[2]) );
  CLKXOR2X2M U11 ( .A(o_rd_addr[2]), .B(o_rd_addr[1]), .Y(o_rptr[1]) );
  CLKXOR2X2M U12 ( .A(o_rd_addr[1]), .B(o_rd_addr[0]), .Y(o_rptr[0]) );
  CLKXOR2X2M U18 ( .A(o_rptr[4]), .B(o_rd_addr[3]), .Y(o_rptr[3]) );
  ADDHX1M U19 ( .A(o_rd_addr[2]), .B(\add_23/carry[2] ), .CO(\add_23/carry[3] ), .S(N5) );
  ADDHX1M U20 ( .A(o_rd_addr[1]), .B(o_rd_addr[0]), .CO(\add_23/carry[2] ), 
        .S(N4) );
  ADDHX1M U21 ( .A(o_rd_addr[3]), .B(\add_23/carry[3] ), .CO(\add_23/carry[4] ), .S(N6) );
  CLKXOR2X2M U22 ( .A(\add_23/carry[4] ), .B(o_rptr[4]), .Y(N7) );
  CLKXOR2X2M U23 ( .A(rq2_wptr[2]), .B(o_rptr[2]), .Y(n20) );
  NOR2BX1M U24 ( .AN(rq2_wptr[0]), .B(o_rptr[0]), .Y(n13) );
  OAI2B2X1M U25 ( .A1N(o_rptr[1]), .A0(n13), .B0(rq2_wptr[1]), .B1(n13), .Y(
        n16) );
  NOR2BX1M U26 ( .AN(o_rptr[0]), .B(rq2_wptr[0]), .Y(n14) );
  OAI2B2X1M U27 ( .A1N(rq2_wptr[1]), .A0(n14), .B0(o_rptr[1]), .B1(n14), .Y(
        n15) );
  CLKNAND2X2M U28 ( .A(n16), .B(n15), .Y(n19) );
  CLKXOR2X2M U29 ( .A(rq2_wptr[3]), .B(o_rptr[3]), .Y(n18) );
  CLKXOR2X2M U30 ( .A(rq2_wptr[4]), .B(o_rptr[4]), .Y(n17) );
  NOR4X1M U31 ( .A(n20), .B(n19), .C(n18), .D(n17), .Y(o_r_empty) );
endmodule


module FIFO_WR_DATA_WIDTH8_ADDR_WIDTH4_test_1 ( i_w_clk, i_rst_n, i_w_inc, 
        wq2_rptr, o_w_full, o_wr_addr, o_wptr, test_si, test_se );
  input [4:0] wq2_rptr;
  output [3:0] o_wr_addr;
  output [4:0] o_wptr;
  input i_w_clk, i_rst_n, i_w_inc, test_si, test_se;
  output o_w_full;
  wire   N3, N4, N5, N6, N7, n7, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, \add_22/carry[4] , \add_22/carry[3] ,
         \add_22/carry[2] , n8, n21;

  SDFFRQX2M \o_wptr_reg_reg[4]  ( .D(n19), .SI(o_wr_addr[3]), .SE(test_se), 
        .CK(i_w_clk), .RN(i_rst_n), .Q(o_wptr[4]) );
  SDFFRQX2M \o_wptr_reg_reg[0]  ( .D(n20), .SI(test_si), .SE(test_se), .CK(
        i_w_clk), .RN(i_rst_n), .Q(o_wr_addr[0]) );
  SDFFRQX2M \o_wptr_reg_reg[3]  ( .D(n16), .SI(o_wr_addr[2]), .SE(test_se), 
        .CK(i_w_clk), .RN(i_rst_n), .Q(o_wr_addr[3]) );
  SDFFRQX2M \o_wptr_reg_reg[1]  ( .D(n18), .SI(N3), .SE(test_se), .CK(i_w_clk), 
        .RN(i_rst_n), .Q(o_wr_addr[1]) );
  SDFFRX1M \o_wptr_reg_reg[2]  ( .D(n17), .SI(o_wr_addr[1]), .SE(test_se), 
        .CK(i_w_clk), .RN(i_rst_n), .Q(o_wr_addr[2]), .QN(n7) );
  NOR2BX2M U9 ( .AN(i_w_inc), .B(o_w_full), .Y(n9) );
  OAI2BB2X1M U10 ( .B0(n9), .B1(n21), .A0N(N6), .A1N(n9), .Y(n16) );
  OAI2BB2X1M U11 ( .B0(n9), .B1(n8), .A0N(N4), .A1N(n9), .Y(n18) );
  AND4X2M U12 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(o_w_full) );
  XNOR2X2M U13 ( .A(o_wptr[1]), .B(wq2_rptr[1]), .Y(n11) );
  XNOR2X2M U14 ( .A(o_wptr[0]), .B(wq2_rptr[0]), .Y(n10) );
  XNOR2X2M U15 ( .A(o_wptr[2]), .B(wq2_rptr[2]), .Y(n13) );
  INVX2M U16 ( .A(o_wr_addr[1]), .Y(n8) );
  INVX2M U17 ( .A(o_wr_addr[3]), .Y(n21) );
  NOR2X2M U18 ( .A(n14), .B(n15), .Y(n12) );
  XNOR2X2M U19 ( .A(o_wptr[4]), .B(wq2_rptr[4]), .Y(n15) );
  XNOR2X2M U20 ( .A(o_wptr[3]), .B(wq2_rptr[3]), .Y(n14) );
  CLKXOR2X2M U21 ( .A(o_wr_addr[0]), .B(o_wr_addr[1]), .Y(o_wptr[0]) );
  CLKXOR2X2M U22 ( .A(n8), .B(n7), .Y(o_wptr[1]) );
  CLKXOR2X2M U23 ( .A(o_wptr[4]), .B(o_wr_addr[3]), .Y(o_wptr[3]) );
  CLKXOR2X2M U24 ( .A(n7), .B(n21), .Y(o_wptr[2]) );
  OAI2BB2X1M U25 ( .B0(n9), .B1(n7), .A0N(N5), .A1N(n9), .Y(n17) );
  AO2B2X2M U26 ( .B0(N7), .B1(n9), .A0(o_wptr[4]), .A1N(n9), .Y(n19) );
  AO2B2X2M U27 ( .B0(N3), .B1(n9), .A0(o_wr_addr[0]), .A1N(n9), .Y(n20) );
  INVX2M U28 ( .A(o_wr_addr[0]), .Y(N3) );
  ADDHX1M U29 ( .A(o_wr_addr[2]), .B(\add_22/carry[2] ), .CO(\add_22/carry[3] ), .S(N5) );
  ADDHX1M U30 ( .A(o_wr_addr[1]), .B(o_wr_addr[0]), .CO(\add_22/carry[2] ), 
        .S(N4) );
  ADDHX1M U31 ( .A(o_wr_addr[3]), .B(\add_22/carry[3] ), .CO(\add_22/carry[4] ), .S(N6) );
  CLKXOR2X2M U32 ( .A(\add_22/carry[4] ), .B(o_wptr[4]), .Y(N7) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH4_NUM_STAGES2_test_1 ( wclk, rclk, 
        wrst_n, rrst_n, W_INC, R_INC, wr_data, FULL, EMPTY, rd_data, test_si3, 
        test_si2, test_si1, test_so3, test_so2, test_so1, test_se );
  input [7:0] wr_data;
  output [7:0] rd_data;
  input wclk, rclk, wrst_n, rrst_n, W_INC, R_INC, test_si3, test_si2, test_si1,
         test_se;
  output FULL, EMPTY, test_so3, test_so2, test_so1;
  wire   n1;
  wire   [3:0] waddr;
  wire   [3:0] raddr;
  wire   [4:0] wptr_async;
  wire   [4:0] rq2_wptr_sync;
  wire   [4:0] rptr_async;
  wire   [4:0] wq2_rptr_sync;
  assign test_so2 = raddr[0];
  assign test_so3 = wptr_async[4];

  FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH4_test_1 fifo_mem_cntrl ( .i_w_clk(wclk), .i_rst_n(wrst_n), .i_w_inc(W_INC), .i_w_full(FULL), .i_wr_data(wr_data), 
        .i_wr_addr(waddr), .i_rd_addr(raddr), .o_rd_data(rd_data), .test_si2(
        test_si2), .test_si1(rq2_wptr_sync[4]), .test_so2(n1), .test_so1(
        test_so1), .test_se(test_se) );
  DF_SYNC_ADDR_WIDTH4_test_1 bit_sync_waddr ( .i_clk(rclk), .i_rst_n(rrst_n), 
        .i_r_d_ptr(wptr_async), .wq2_r_d_ptr(rq2_wptr_sync), .test_si(
        wq2_rptr_sync[4]), .test_se(test_se) );
  DF_SYNC_ADDR_WIDTH4_test_0 bit_sync_raddr ( .i_clk(wclk), .i_rst_n(wrst_n), 
        .i_r_d_ptr(rptr_async), .wq2_r_d_ptr(wq2_rptr_sync), .test_si(test_si1), .test_se(test_se) );
  FIFO_RD_DATA_WIDTH8_ADDR_WIDTH4_test_1 fifo_rd ( .i_r_clk(rclk), .i_rst_n(
        rrst_n), .i_r_inc(R_INC), .rq2_wptr(rq2_wptr_sync), .o_r_empty(EMPTY), 
        .o_rd_addr(raddr), .o_rptr(rptr_async), .test_si2(test_si3), 
        .test_si1(n1), .test_se(test_se) );
  FIFO_WR_DATA_WIDTH8_ADDR_WIDTH4_test_1 fifo_wr ( .i_w_clk(wclk), .i_rst_n(
        wrst_n), .i_w_inc(W_INC), .wq2_rptr(wq2_rptr_sync), .o_w_full(FULL), 
        .o_wr_addr(waddr), .o_wptr(wptr_async), .test_si(rptr_async[4]), 
        .test_se(test_se) );
endmodule


module DATA_SYNC_test_1 ( clk, rst_n, unsync_bus, bus_enable, sync_bus, 
        enable_pulse, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input clk, rst_n, bus_enable, test_si, test_se;
  output enable_pulse, test_so;
  wire   enable_pulse_gen_reg, n1, n3, n5, n7, n9, n11, n13, n15, n17, n22;
  wire   [1:0] sync_reg;
  assign test_so = sync_reg[1];

  SDFFRQX2M enable_pulse_gen_reg_reg ( .D(sync_reg[1]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(enable_pulse_gen_reg) );
  SDFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .SI(sync_reg[0]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_reg[1]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n3), .SI(enable_pulse), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n9), .SI(sync_bus[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[1]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(enable_pulse_gen_reg), .SE(test_se), .CK(clk), .RN(rst_n), .Q(enable_pulse) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .SI(sync_bus[7]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(enable_pulse_gen_reg), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n3)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n5)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n7)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n9)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n11) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n13) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n15) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
endmodule


module strt_check_RX_test_1 ( CLK_start, RST_start, strt_chk_en, 
        sample_bit_par_chk, strt_glitch_chk, test_si, test_se );
  input CLK_start, RST_start, strt_chk_en, sample_bit_par_chk, test_si,
         test_se;
  output strt_glitch_chk;
  wire   strt_glitch_chk_reg;

  SDFFRQX2M strt_glitch_chk_reg_inst ( .D(strt_glitch_chk_reg), .SI(test_si), 
        .SE(test_se), .CK(CLK_start), .RN(RST_start), .Q(strt_glitch_chk) );
  AND2X2M U4 ( .A(strt_chk_en), .B(sample_bit_par_chk), .Y(strt_glitch_chk_reg) );
endmodule


module parity_check_RX_test_1 ( CLK_par, RST_par, P_DATA_par_chk, 
        PAR_TYP_par_chk, par_chk_en, sample_bit_par_chk, par_err, test_si, 
        test_se );
  input [7:0] P_DATA_par_chk;
  input CLK_par, RST_par, PAR_TYP_par_chk, par_chk_en, sample_bit_par_chk,
         test_si, test_se;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n9, n2;

  SDFFRQX2M par_err_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(CLK_par), 
        .RN(RST_par), .Q(par_err) );
  OAI2BB2X1M U2 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n9) );
  XOR3XLM U3 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U4 ( .A(par_chk_en), .Y(n2) );
  XNOR2X2M U5 ( .A(sample_bit_par_chk), .B(PAR_TYP_par_chk), .Y(n5) );
  XOR3XLM U6 ( .A(P_DATA_par_chk[5]), .B(P_DATA_par_chk[4]), .C(n6), .Y(n4) );
  XNOR2X2M U7 ( .A(P_DATA_par_chk[7]), .B(P_DATA_par_chk[6]), .Y(n6) );
  XOR3XLM U8 ( .A(P_DATA_par_chk[1]), .B(P_DATA_par_chk[0]), .C(n7), .Y(n3) );
  XNOR2X2M U9 ( .A(P_DATA_par_chk[3]), .B(P_DATA_par_chk[2]), .Y(n7) );
endmodule


module stop_check_RX_test_1 ( CLK_stop, RST_stop, stp_chk_en, 
        sample_bit_par_chk, Stop_Error, test_si, test_se );
  input CLK_stop, RST_stop, stp_chk_en, sample_bit_par_chk, test_si, test_se;
  output Stop_Error;
  wire   stp_err_chk;

  SDFFRQX2M Stop_Error_reg ( .D(stp_err_chk), .SI(test_si), .SE(test_se), .CK(
        CLK_stop), .RN(RST_stop), .Q(Stop_Error) );
  NOR2BX2M U4 ( .AN(stp_chk_en), .B(sample_bit_par_chk), .Y(stp_err_chk) );
endmodule


module deserializer_RX_test_1 ( CLK_des, RST_des, sample_bit_deser, deser_en, 
        edge_cnt, prescale_FSM, P_DATA_des, test_so, test_se );
  input [5:0] edge_cnt;
  input [5:0] prescale_FSM;
  output [7:0] P_DATA_des;
  input CLK_des, RST_des, sample_bit_deser, deser_en, test_se;
  output test_so;
  wire   n10, n12, n14, n16, n18, n20, n22, n24, n1, n2, n3, n4, n5, n6, n7,
         n8, n25;
  assign test_so = n3;

  SDFFRQX2M \P_DATA_des_reg[0]  ( .D(n10), .SI(sample_bit_deser), .SE(test_se), 
        .CK(CLK_des), .RN(RST_des), .Q(P_DATA_des[0]) );
  SDFFRQX2M \P_DATA_des_reg[5]  ( .D(n20), .SI(n6), .SE(test_se), .CK(CLK_des), 
        .RN(RST_des), .Q(P_DATA_des[5]) );
  SDFFRQX2M \P_DATA_des_reg[1]  ( .D(n12), .SI(P_DATA_des[0]), .SE(test_se), 
        .CK(CLK_des), .RN(RST_des), .Q(P_DATA_des[1]) );
  SDFFRQX2M \P_DATA_des_reg[4]  ( .D(n18), .SI(n7), .SE(test_se), .CK(CLK_des), 
        .RN(RST_des), .Q(P_DATA_des[4]) );
  SDFFRQX2M \P_DATA_des_reg[7]  ( .D(n24), .SI(n4), .SE(test_se), .CK(CLK_des), 
        .RN(RST_des), .Q(P_DATA_des[7]) );
  SDFFRQX2M \P_DATA_des_reg[3]  ( .D(n16), .SI(n8), .SE(test_se), .CK(CLK_des), 
        .RN(RST_des), .Q(P_DATA_des[3]) );
  SDFFRQX2M \P_DATA_des_reg[6]  ( .D(n22), .SI(n5), .SE(test_se), .CK(CLK_des), 
        .RN(RST_des), .Q(P_DATA_des[6]) );
  SDFFRQX2M \P_DATA_des_reg[2]  ( .D(n14), .SI(n25), .SE(test_se), .CK(CLK_des), .RN(RST_des), .Q(P_DATA_des[2]) );
  INVX2M U2 ( .A(n1), .Y(n2) );
  BUFX2M U3 ( .A(deser_en), .Y(n1) );
  OAI22X1M U4 ( .A0(n2), .A1(n8), .B0(n1), .B1(n25), .Y(n12) );
  OAI22X1M U5 ( .A0(n2), .A1(n7), .B0(n1), .B1(n8), .Y(n14) );
  OAI22X1M U6 ( .A0(n2), .A1(n6), .B0(n1), .B1(n7), .Y(n16) );
  OAI22X1M U7 ( .A0(n2), .A1(n5), .B0(n1), .B1(n6), .Y(n18) );
  OAI22X1M U8 ( .A0(n2), .A1(n4), .B0(n1), .B1(n5), .Y(n20) );
  OAI22X1M U9 ( .A0(n2), .A1(n3), .B0(n1), .B1(n4), .Y(n22) );
  OAI2BB2X1M U10 ( .B0(n25), .B1(n2), .A0N(P_DATA_des[0]), .A1N(n2), .Y(n10)
         );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n3), .A0N(sample_bit_deser), .A1N(n1), .Y(n24)
         );
  INVX2M U12 ( .A(P_DATA_des[2]), .Y(n8) );
  INVX2M U13 ( .A(P_DATA_des[6]), .Y(n4) );
  INVX2M U14 ( .A(P_DATA_des[7]), .Y(n3) );
  INVX2M U15 ( .A(P_DATA_des[3]), .Y(n7) );
  INVX2M U16 ( .A(P_DATA_des[1]), .Y(n25) );
  INVX2M U17 ( .A(P_DATA_des[4]), .Y(n6) );
  INVX2M U26 ( .A(P_DATA_des[5]), .Y(n5) );
endmodule


module data_sampling_RX_test_1 ( CLK_SAM, RST_SAM, RX_IN, data_samp_en, 
        edge_cnt, prescale, sample_bit_samp, test_si, test_se );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input CLK_SAM, RST_SAM, RX_IN, data_samp_en, test_si, test_se;
  output sample_bit_samp;
  wire   \RX_IN_reg[0] , N11, N12, N13, N14, N15, N16, N18, N25, n27, n28, n29,
         \sub_29/carry[5] , \sub_29/carry[4] , \sub_29/carry[3] , n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n16, n17, n18, n19, n20, n21, n22,
         n23, n24;
  assign N11 = prescale[0];

  SDFFRQX2M \RX_IN_reg_reg[1]  ( .D(n28), .SI(\RX_IN_reg[0] ), .SE(test_se), 
        .CK(CLK_SAM), .RN(RST_SAM), .Q(N25) );
  SDFFRQX2M \RX_IN_reg_reg[0]  ( .D(n29), .SI(test_si), .SE(test_se), .CK(
        CLK_SAM), .RN(RST_SAM), .Q(\RX_IN_reg[0] ) );
  SDFFSQX1M sample_bit_samp_reg ( .D(n27), .SI(N25), .SE(test_se), .CK(CLK_SAM), .SN(RST_SAM), .Q(sample_bit_samp) );
  NOR2X2M U7 ( .A(prescale[5]), .B(\sub_29/carry[5] ), .Y(n2) );
  INVX2M U8 ( .A(prescale[1]), .Y(N12) );
  XNOR2X1M U9 ( .A(\sub_29/carry[5] ), .B(prescale[5]), .Y(N16) );
  OR2X1M U10 ( .A(prescale[4]), .B(\sub_29/carry[4] ), .Y(\sub_29/carry[5] )
         );
  XNOR2X1M U11 ( .A(\sub_29/carry[4] ), .B(prescale[4]), .Y(N15) );
  OR2X1M U12 ( .A(prescale[3]), .B(\sub_29/carry[3] ), .Y(\sub_29/carry[4] )
         );
  XNOR2X1M U13 ( .A(\sub_29/carry[3] ), .B(prescale[3]), .Y(N14) );
  OR2X1M U14 ( .A(prescale[2]), .B(prescale[1]), .Y(\sub_29/carry[3] ) );
  XNOR2X1M U15 ( .A(prescale[1]), .B(prescale[2]), .Y(N13) );
  NOR2BX1M U16 ( .AN(N11), .B(edge_cnt[0]), .Y(n3) );
  OAI2B2X1M U17 ( .A1N(edge_cnt[1]), .A0(n3), .B0(N12), .B1(n3), .Y(n7) );
  XNOR2X1M U18 ( .A(N16), .B(edge_cnt[5]), .Y(n6) );
  NOR2BX1M U19 ( .AN(edge_cnt[0]), .B(N11), .Y(n4) );
  OAI2B2X1M U20 ( .A1N(N12), .A0(n4), .B0(edge_cnt[1]), .B1(n4), .Y(n5) );
  NAND4BX1M U21 ( .AN(n2), .B(n7), .C(n6), .D(n5), .Y(n11) );
  CLKXOR2X2M U22 ( .A(N15), .B(edge_cnt[4]), .Y(n10) );
  CLKXOR2X2M U23 ( .A(N13), .B(edge_cnt[2]), .Y(n9) );
  CLKXOR2X2M U24 ( .A(N14), .B(edge_cnt[3]), .Y(n8) );
  NOR4X1M U25 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N18) );
  MXI2X1M U26 ( .A(n12), .B(n16), .S0(\RX_IN_reg[0] ), .Y(n29) );
  CLKNAND2X2M U27 ( .A(n17), .B(n16), .Y(n12) );
  MXI2X1M U28 ( .A(n18), .B(n19), .S0(N25), .Y(n28) );
  AOI2B1X1M U29 ( .A1N(\RX_IN_reg[0] ), .A0(n17), .B0(n20), .Y(n19) );
  NAND3X1M U30 ( .A(\RX_IN_reg[0] ), .B(n16), .C(n17), .Y(n18) );
  CLKINVX1M U31 ( .A(n20), .Y(n16) );
  AOI21X1M U32 ( .A0(RX_IN), .A1(n21), .B0(n22), .Y(n20) );
  CLKMX2X2M U33 ( .A(sample_bit_samp), .B(n23), .S0(n22), .Y(n27) );
  AOI2B1X1M U34 ( .A1N(N18), .A0(data_samp_en), .B0(n17), .Y(n22) );
  AND2X1M U35 ( .A(data_samp_en), .B(n21), .Y(n17) );
  NOR3X1M U36 ( .A(edge_cnt[2]), .B(edge_cnt[1]), .C(n24), .Y(n21) );
  OR3X1M U37 ( .A(edge_cnt[5]), .B(edge_cnt[4]), .C(edge_cnt[3]), .Y(n24) );
  NAND2BX1M U38 ( .AN(N25), .B(data_samp_en), .Y(n23) );
endmodule


module edge_bit_counter_RX_test_1 ( CLK_EDGE, RST_EDGE, enable_edge, 
        prescale_edge, bit_cnt_edge, edge_cnt_edge, test_si, test_se );
  input [5:0] prescale_edge;
  output [5:0] bit_cnt_edge;
  output [5:0] edge_cnt_edge;
  input CLK_EDGE, RST_EDGE, enable_edge, test_si, test_se;
  wire   N7, N8, N9, N10, N11, N12, N13, N15, N16, N17, N18, N19, N20, N28,
         N31, N32, N33, N34, N35, N42, N43, N44, N45, N46, N47, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, \add_32/carry[5] , \add_32/carry[4] ,
         \add_32/carry[3] , \add_32/carry[2] , \add_16/carry[5] ,
         \add_16/carry[4] , \add_16/carry[3] , \add_16/carry[2] , n1, n2, n3,
         n4, n5, n27, n28, n29, n30, n31, n32, n33, n34, n35;

  SDFFRQX2M \bit_cnt_edge_reg[5]  ( .D(n26), .SI(bit_cnt_edge[4]), .SE(test_se), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(bit_cnt_edge[5]) );
  SDFFRQX2M \bit_cnt_edge_reg[0]  ( .D(n25), .SI(test_si), .SE(test_se), .CK(
        CLK_EDGE), .RN(RST_EDGE), .Q(bit_cnt_edge[0]) );
  SDFFRQX2M \bit_cnt_edge_reg[3]  ( .D(n22), .SI(bit_cnt_edge[2]), .SE(test_se), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(bit_cnt_edge[3]) );
  SDFFRQX2M \bit_cnt_edge_reg[4]  ( .D(n21), .SI(bit_cnt_edge[3]), .SE(test_se), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(bit_cnt_edge[4]) );
  SDFFRQX2M \bit_cnt_edge_reg[1]  ( .D(n24), .SI(N15), .SE(test_se), .CK(
        CLK_EDGE), .RN(RST_EDGE), .Q(bit_cnt_edge[1]) );
  SDFFRQX2M \bit_cnt_edge_reg[2]  ( .D(n23), .SI(bit_cnt_edge[1]), .SE(test_se), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(bit_cnt_edge[2]) );
  SDFFRQX2M \edge_cnt_edge_reg[5]  ( .D(N47), .SI(edge_cnt_edge[4]), .SE(
        test_se), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(edge_cnt_edge[5]) );
  SDFFRQX2M \edge_cnt_edge_reg[4]  ( .D(N46), .SI(edge_cnt_edge[3]), .SE(
        test_se), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(edge_cnt_edge[4]) );
  SDFFRQX2M \edge_cnt_edge_reg[3]  ( .D(N45), .SI(edge_cnt_edge[2]), .SE(
        test_se), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(edge_cnt_edge[3]) );
  SDFFRQX2M \edge_cnt_edge_reg[2]  ( .D(N44), .SI(n35), .SE(test_se), .CK(
        CLK_EDGE), .RN(RST_EDGE), .Q(edge_cnt_edge[2]) );
  SDFFRQX2M \edge_cnt_edge_reg[1]  ( .D(N43), .SI(edge_cnt_edge[0]), .SE(
        test_se), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(edge_cnt_edge[1]) );
  SDFFRQX2M \edge_cnt_edge_reg[0]  ( .D(N42), .SI(bit_cnt_edge[5]), .SE(
        test_se), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(edge_cnt_edge[0]) );
  NAND2X2M U7 ( .A(N28), .B(enable_edge), .Y(n20) );
  AND2X2M U8 ( .A(enable_edge), .B(N28), .Y(n18) );
  NOR2BX2M U17 ( .AN(enable_edge), .B(n18), .Y(n19) );
  NOR2BX2M U18 ( .AN(N31), .B(n20), .Y(N43) );
  NOR2BX2M U19 ( .AN(N32), .B(n20), .Y(N44) );
  NOR2BX2M U20 ( .AN(N33), .B(n20), .Y(N45) );
  NOR2BX2M U21 ( .AN(N34), .B(n20), .Y(N46) );
  NOR2X2M U22 ( .A(edge_cnt_edge[0]), .B(n20), .Y(N42) );
  AND3X2M U23 ( .A(N35), .B(enable_edge), .C(N28), .Y(N47) );
  AO22X1M U24 ( .A0(bit_cnt_edge[4]), .A1(n18), .B0(N19), .B1(n19), .Y(n21) );
  AO22X1M U25 ( .A0(bit_cnt_edge[3]), .A1(n18), .B0(N18), .B1(n19), .Y(n22) );
  AO22X1M U26 ( .A0(bit_cnt_edge[2]), .A1(n18), .B0(N17), .B1(n19), .Y(n23) );
  AO22X1M U27 ( .A0(bit_cnt_edge[1]), .A1(n18), .B0(N16), .B1(n19), .Y(n24) );
  AO22X1M U28 ( .A0(bit_cnt_edge[0]), .A1(n18), .B0(N15), .B1(n19), .Y(n25) );
  INVX2M U29 ( .A(bit_cnt_edge[0]), .Y(N15) );
  AO22X1M U30 ( .A0(bit_cnt_edge[5]), .A1(n18), .B0(N20), .B1(n19), .Y(n26) );
  INVX2M U31 ( .A(prescale_edge[0]), .Y(N7) );
  INVX2M U32 ( .A(edge_cnt_edge[1]), .Y(n35) );
  ADDHX1M U33 ( .A(bit_cnt_edge[2]), .B(\add_16/carry[2] ), .CO(
        \add_16/carry[3] ), .S(N17) );
  ADDHX1M U34 ( .A(bit_cnt_edge[1]), .B(bit_cnt_edge[0]), .CO(
        \add_16/carry[2] ), .S(N16) );
  ADDHX1M U35 ( .A(edge_cnt_edge[1]), .B(edge_cnt_edge[0]), .CO(
        \add_32/carry[2] ), .S(N31) );
  ADDHX1M U36 ( .A(bit_cnt_edge[3]), .B(\add_16/carry[3] ), .CO(
        \add_16/carry[4] ), .S(N18) );
  ADDHX1M U37 ( .A(edge_cnt_edge[2]), .B(\add_32/carry[2] ), .CO(
        \add_32/carry[3] ), .S(N32) );
  ADDHX1M U38 ( .A(edge_cnt_edge[3]), .B(\add_32/carry[3] ), .CO(
        \add_32/carry[4] ), .S(N33) );
  ADDHX1M U39 ( .A(bit_cnt_edge[4]), .B(\add_16/carry[4] ), .CO(
        \add_16/carry[5] ), .S(N19) );
  ADDHX1M U40 ( .A(edge_cnt_edge[4]), .B(\add_32/carry[4] ), .CO(
        \add_32/carry[5] ), .S(N34) );
  NAND2BX1M U41 ( .AN(prescale_edge[1]), .B(N7), .Y(n1) );
  OAI2BB1X1M U42 ( .A0N(prescale_edge[0]), .A1N(prescale_edge[1]), .B0(n1), 
        .Y(N8) );
  OR2X1M U43 ( .A(n1), .B(prescale_edge[2]), .Y(n2) );
  OAI2BB1X1M U44 ( .A0N(n1), .A1N(prescale_edge[2]), .B0(n2), .Y(N9) );
  OR2X1M U45 ( .A(n2), .B(prescale_edge[3]), .Y(n3) );
  OAI2BB1X1M U46 ( .A0N(n2), .A1N(prescale_edge[3]), .B0(n3), .Y(N10) );
  OR2X1M U47 ( .A(n3), .B(prescale_edge[4]), .Y(n4) );
  OAI2BB1X1M U48 ( .A0N(n3), .A1N(prescale_edge[4]), .B0(n4), .Y(N11) );
  NOR2X1M U49 ( .A(n4), .B(prescale_edge[5]), .Y(N13) );
  AO21XLM U50 ( .A0(n4), .A1(prescale_edge[5]), .B0(N13), .Y(N12) );
  CLKXOR2X2M U51 ( .A(\add_16/carry[5] ), .B(bit_cnt_edge[5]), .Y(N20) );
  CLKXOR2X2M U52 ( .A(\add_32/carry[5] ), .B(edge_cnt_edge[5]), .Y(N35) );
  XNOR2X1M U53 ( .A(N10), .B(edge_cnt_edge[3]), .Y(n34) );
  XNOR2X1M U54 ( .A(N9), .B(edge_cnt_edge[2]), .Y(n33) );
  XNOR2X1M U55 ( .A(N11), .B(edge_cnt_edge[4]), .Y(n32) );
  NOR2X1M U56 ( .A(prescale_edge[0]), .B(edge_cnt_edge[0]), .Y(n5) );
  OAI22X1M U57 ( .A0(n5), .A1(n35), .B0(N8), .B1(n5), .Y(n30) );
  CLKNAND2X2M U58 ( .A(edge_cnt_edge[0]), .B(prescale_edge[0]), .Y(n27) );
  AOI22X1M U59 ( .A0(n27), .A1(n35), .B0(n27), .B1(N8), .Y(n29) );
  CLKXOR2X2M U60 ( .A(N12), .B(edge_cnt_edge[5]), .Y(n28) );
  NOR4BX1M U61 ( .AN(n30), .B(n29), .C(n28), .D(N13), .Y(n31) );
  NAND4X1M U62 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(N28) );
endmodule


module FSM_RX_test_1 ( CLK_FSM, RST_FSM, RX_IN, bit_cnt_FSM, edge_cnt_FSM, 
        PAR_EN_FSM, par_err_FSM, strt_glitch_FSM, stp_err_FSM, prescale_FSM, 
        par_chk_en_FSM, strt_chk_en_FSM, stp_chk_en_FSM, enable_FSM, 
        data_samp_en_FSM, data_valid_FSM, deser_en_FSM, test_si, test_so, 
        test_se );
  input [5:0] bit_cnt_FSM;
  input [5:0] edge_cnt_FSM;
  input [5:0] prescale_FSM;
  input CLK_FSM, RST_FSM, RX_IN, PAR_EN_FSM, par_err_FSM, strt_glitch_FSM,
         stp_err_FSM, test_si, test_se;
  output par_chk_en_FSM, strt_chk_en_FSM, stp_chk_en_FSM, enable_FSM,
         data_samp_en_FSM, data_valid_FSM, deser_en_FSM, test_so;
  wire   par_err_reg, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, \r107/EQ , \r107/B[0] ,
         \r107/B[1] , \r107/B[2] , \r107/B[3] , \r107/B[4] , \r107/B[5] ,
         \r107/B[9] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n18, n19, n20;
  wire   [2:0] cs;
  wire   [2:0] ns;
  assign test_so = par_err_reg;

  SDFFRQX2M data_valid_FSM_reg ( .D(n60), .SI(n19), .SE(test_se), .CK(CLK_FSM), 
        .RN(RST_FSM), .Q(data_valid_FSM) );
  SDFFRQX2M par_err_reg_reg ( .D(n61), .SI(data_valid_FSM), .SE(test_se), .CK(
        CLK_FSM), .RN(RST_FSM), .Q(par_err_reg) );
  SDFFRQX2M \cs_reg[2]  ( .D(ns[2]), .SI(n18), .SE(test_se), .CK(CLK_FSM), 
        .RN(RST_FSM), .Q(cs[2]) );
  SDFFRQX2M \cs_reg[0]  ( .D(ns[0]), .SI(test_si), .SE(test_se), .CK(CLK_FSM), 
        .RN(RST_FSM), .Q(cs[0]) );
  SDFFRQX2M \cs_reg[1]  ( .D(ns[1]), .SI(cs[0]), .SE(test_se), .CK(CLK_FSM), 
        .RN(RST_FSM), .Q(cs[1]) );
  INVX2M U8 ( .A(n49), .Y(n16) );
  INVX2M U9 ( .A(\r107/EQ ), .Y(n20) );
  NOR2BX2M U10 ( .AN(n48), .B(n44), .Y(par_chk_en_FSM) );
  NOR2X2M U11 ( .A(n20), .B(n54), .Y(deser_en_FSM) );
  NOR3X2M U12 ( .A(n44), .B(n20), .C(n19), .Y(stp_chk_en_FSM) );
  NOR2X2M U13 ( .A(n54), .B(n55), .Y(n49) );
  OAI2BB1X2M U14 ( .A0N(n19), .A1N(n59), .B0(n44), .Y(data_samp_en_FSM) );
  NAND2X2M U15 ( .A(RX_IN), .B(n15), .Y(n59) );
  NOR2X2M U16 ( .A(n20), .B(cs[2]), .Y(n48) );
  AOI21X2M U17 ( .A0(\r107/EQ ), .A1(cs[2]), .B0(n44), .Y(n50) );
  OAI22X1M U18 ( .A0(\r107/EQ ), .A1(n44), .B0(cs[2]), .B1(n58), .Y(enable_FSM) );
  NOR2X2M U19 ( .A(cs[1]), .B(n59), .Y(n58) );
  NAND4BXLM U20 ( .AN(bit_cnt_FSM[0]), .B(\r107/EQ ), .C(bit_cnt_FSM[3]), .D(
        n53), .Y(n46) );
  NOR4X1M U21 ( .A(bit_cnt_FSM[5]), .B(bit_cnt_FSM[4]), .C(bit_cnt_FSM[2]), 
        .D(bit_cnt_FSM[1]), .Y(n53) );
  OAI31XLM U22 ( .A0(n19), .A1(\r107/EQ ), .A2(n44), .B0(n45), .Y(ns[2]) );
  AOI2B1X1M U23 ( .A1N(n46), .A0(n47), .B0(par_chk_en_FSM), .Y(n45) );
  NOR2X2M U24 ( .A(PAR_EN_FSM), .B(n16), .Y(n47) );
  OAI211X2M U25 ( .A0(strt_glitch_FSM), .A1(n43), .B0(n14), .C0(n16), .Y(ns[1]) );
  INVX2M U26 ( .A(n50), .Y(n14) );
  AND2X1M U27 ( .A(strt_glitch_FSM), .B(\r107/EQ ), .Y(n55) );
  OAI2BB2X1M U28 ( .B0(n57), .B1(n44), .A0N(n57), .A1N(par_err_reg), .Y(n61)
         );
  AOI21X2M U29 ( .A0(par_err_FSM), .A1(n48), .B0(n44), .Y(n57) );
  OAI2B1X2M U30 ( .A1N(stp_chk_en_FSM), .A0(RX_IN), .B0(n51), .Y(ns[0]) );
  AOI32X1M U31 ( .A0(n18), .A1(n19), .A2(n52), .B0(n49), .B1(n46), .Y(n51) );
  OAI22X1M U32 ( .A0(cs[0]), .A1(RX_IN), .B0(n55), .B1(n15), .Y(n52) );
  NAND3X2M U33 ( .A(n48), .B(n18), .C(cs[0]), .Y(n43) );
  INVX2M U34 ( .A(prescale_FSM[0]), .Y(\r107/B[0] ) );
  AO21XLM U35 ( .A0(data_valid_FSM), .A1(n50), .B0(n56), .Y(n60) );
  NOR4X1M U36 ( .A(stp_err_FSM), .B(par_err_reg), .C(n50), .D(n44), .Y(n56) );
  INVX2M U37 ( .A(n43), .Y(strt_chk_en_FSM) );
  NAND2X2M U38 ( .A(cs[1]), .B(n15), .Y(n44) );
  INVX2M U39 ( .A(cs[0]), .Y(n15) );
  INVX2M U40 ( .A(cs[2]), .Y(n19) );
  NAND3X2M U41 ( .A(cs[0]), .B(n19), .C(cs[1]), .Y(n54) );
  INVX2M U42 ( .A(cs[1]), .Y(n18) );
  NAND2BX1M U43 ( .AN(prescale_FSM[1]), .B(\r107/B[0] ), .Y(n1) );
  OAI2BB1X1M U44 ( .A0N(prescale_FSM[0]), .A1N(prescale_FSM[1]), .B0(n1), .Y(
        \r107/B[1] ) );
  OR2X1M U45 ( .A(n1), .B(prescale_FSM[2]), .Y(n2) );
  OAI2BB1X1M U46 ( .A0N(n1), .A1N(prescale_FSM[2]), .B0(n2), .Y(\r107/B[2] )
         );
  OR2X1M U47 ( .A(n2), .B(prescale_FSM[3]), .Y(n3) );
  OAI2BB1X1M U48 ( .A0N(n2), .A1N(prescale_FSM[3]), .B0(n3), .Y(\r107/B[3] )
         );
  OR2X1M U49 ( .A(n3), .B(prescale_FSM[4]), .Y(n4) );
  OAI2BB1X1M U50 ( .A0N(n3), .A1N(prescale_FSM[4]), .B0(n4), .Y(\r107/B[4] )
         );
  NOR2X1M U51 ( .A(n4), .B(prescale_FSM[5]), .Y(\r107/B[9] ) );
  AO21XLM U52 ( .A0(n4), .A1(prescale_FSM[5]), .B0(\r107/B[9] ), .Y(
        \r107/B[5] ) );
  NOR2BX1M U53 ( .AN(\r107/B[0] ), .B(edge_cnt_FSM[0]), .Y(n5) );
  OAI2B2X1M U54 ( .A1N(edge_cnt_FSM[1]), .A0(n5), .B0(\r107/B[1] ), .B1(n5), 
        .Y(n9) );
  XNOR2X1M U55 ( .A(\r107/B[5] ), .B(edge_cnt_FSM[5]), .Y(n8) );
  NOR2BX1M U56 ( .AN(edge_cnt_FSM[0]), .B(\r107/B[0] ), .Y(n6) );
  OAI2B2X1M U57 ( .A1N(\r107/B[1] ), .A0(n6), .B0(edge_cnt_FSM[1]), .B1(n6), 
        .Y(n7) );
  NAND4BX1M U58 ( .AN(\r107/B[9] ), .B(n9), .C(n8), .D(n7), .Y(n13) );
  CLKXOR2X2M U59 ( .A(\r107/B[4] ), .B(edge_cnt_FSM[4]), .Y(n12) );
  CLKXOR2X2M U60 ( .A(\r107/B[2] ), .B(edge_cnt_FSM[2]), .Y(n11) );
  CLKXOR2X2M U61 ( .A(\r107/B[3] ), .B(edge_cnt_FSM[3]), .Y(n10) );
  NOR4X1M U62 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(\r107/EQ ) );
endmodule


module RX_TOP_test_1 ( CLK_RX, RST_RX, RX_IN_RX, PAR_EN_RX, PAR_TYP_RX, 
        prescale_RX, P_DATA_RX, data_valid_RX, parity_error_RX, stop_error_RX, 
        test_si1, test_so1, test_se );
  input [5:0] prescale_RX;
  output [7:0] P_DATA_RX;
  input CLK_RX, RST_RX, RX_IN_RX, PAR_EN_RX, PAR_TYP_RX, test_si1, test_se;
  output data_valid_RX, parity_error_RX, stop_error_RX, test_so1;
  wire   strt_chk_en_wire, sample_bit_wire, strt_glitch_wire, par_chk_en_wire,
         stp_chk_en_wire, deser_en_wire, data_samp_en_wire, enable_wire, n1,
         n2, n3, n4, n7, n8;
  wire   [5:0] edge_cnt_wires;
  wire   [5:0] bit_cnt_wires;
  assign test_so1 = strt_glitch_wire;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST_RX), .Y(n2) );
  INVXLM U3 ( .A(stop_error_RX), .Y(n7) );
  INVXLM U4 ( .A(n7), .Y(n8) );
  strt_check_RX_test_1 strt_check_RX1 ( .CLK_start(CLK_RX), .RST_start(n1), 
        .strt_chk_en(strt_chk_en_wire), .sample_bit_par_chk(sample_bit_wire), 
        .strt_glitch_chk(strt_glitch_wire), .test_si(parity_error_RX), 
        .test_se(test_se) );
  parity_check_RX_test_1 parity_check_RX1 ( .CLK_par(CLK_RX), .RST_par(n1), 
        .P_DATA_par_chk(P_DATA_RX), .PAR_TYP_par_chk(PAR_TYP_RX), .par_chk_en(
        par_chk_en_wire), .sample_bit_par_chk(sample_bit_wire), .par_err(
        parity_error_RX), .test_si(edge_cnt_wires[5]), .test_se(test_se) );
  stop_check_RX_test_1 stop_check_RX1 ( .CLK_stop(CLK_RX), .RST_stop(n1), 
        .stp_chk_en(stp_chk_en_wire), .sample_bit_par_chk(sample_bit_wire), 
        .Stop_Error(stop_error_RX), .test_si(prescale_RX[0]), .test_se(test_se) );
  deserializer_RX_test_1 deserializer_RX1 ( .CLK_des(CLK_RX), .RST_des(n1), 
        .sample_bit_deser(sample_bit_wire), .deser_en(deser_en_wire), 
        .edge_cnt(edge_cnt_wires), .prescale_FSM(prescale_RX), .P_DATA_des(
        P_DATA_RX), .test_so(n3), .test_se(test_se) );
  data_sampling_RX_test_1 data_sampling_RX1 ( .CLK_SAM(CLK_RX), .RST_SAM(n1), 
        .RX_IN(RX_IN_RX), .data_samp_en(data_samp_en_wire), .edge_cnt(
        edge_cnt_wires), .prescale(prescale_RX), .sample_bit_samp(
        sample_bit_wire), .test_si(n4), .test_se(test_se) );
  edge_bit_counter_RX_test_1 edge_bit_counter_RX1 ( .CLK_EDGE(CLK_RX), 
        .RST_EDGE(n1), .enable_edge(enable_wire), .prescale_edge(prescale_RX), 
        .bit_cnt_edge(bit_cnt_wires), .edge_cnt_edge(edge_cnt_wires), 
        .test_si(n3), .test_se(test_se) );
  FSM_RX_test_1 FSM_RX1 ( .CLK_FSM(CLK_RX), .RST_FSM(n1), .RX_IN(RX_IN_RX), 
        .bit_cnt_FSM(bit_cnt_wires), .edge_cnt_FSM(edge_cnt_wires), 
        .PAR_EN_FSM(PAR_EN_RX), .par_err_FSM(parity_error_RX), 
        .strt_glitch_FSM(strt_glitch_wire), .stp_err_FSM(n8), .prescale_FSM(
        prescale_RX), .par_chk_en_FSM(par_chk_en_wire), .strt_chk_en_FSM(
        strt_chk_en_wire), .stp_chk_en_FSM(stp_chk_en_wire), .enable_FSM(
        enable_wire), .data_samp_en_FSM(data_samp_en_wire), .data_valid_FSM(
        data_valid_RX), .deser_en_FSM(deser_en_wire), .test_si(test_si1), 
        .test_so(n4), .test_se(test_se) );
endmodule


module MUX4x1_test_1 ( CLK_mux, RST_mux, start_bit_mux, stop_bit_mux, 
        ser_data_mux, parity_bit_mux, mux_sel_mux, TX_OUT_mux, test_si, 
        test_se );
  input [1:0] mux_sel_mux;
  input CLK_mux, RST_mux, start_bit_mux, stop_bit_mux, ser_data_mux,
         parity_bit_mux, test_si, test_se;
  output TX_OUT_mux;
  wire   TX_OUT_mux_c, n3, n4, n2;

  SDFFRQX2M TX_OUT_mux_reg ( .D(TX_OUT_mux_c), .SI(test_si), .SE(test_se), 
        .CK(CLK_mux), .RN(RST_mux), .Q(TX_OUT_mux) );
  INVX2M U4 ( .A(mux_sel_mux[0]), .Y(n2) );
  OAI2B2X1M U5 ( .A1N(mux_sel_mux[1]), .A0(n3), .B0(mux_sel_mux[1]), .B1(n4), 
        .Y(TX_OUT_mux_c) );
  AOI22X1M U6 ( .A0(start_bit_mux), .A1(n2), .B0(stop_bit_mux), .B1(
        mux_sel_mux[0]), .Y(n4) );
  AOI22X1M U7 ( .A0(ser_data_mux), .A1(n2), .B0(parity_bit_mux), .B1(
        mux_sel_mux[0]), .Y(n3) );
endmodule


module parity_calc_DATA_LENGTH8_test_1 ( CLK, RST, P_DATA, PAR_TYP, Data_Valid, 
        PAR_EN, busy, par_bit, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input CLK, RST, PAR_TYP, Data_Valid, PAR_EN, busy, test_si, test_se;
  output par_bit, test_so;
  wire   n1, n3, n4, n5, n6, n7, n9, n11, n13, n15, n17, n19, n21, n23, n25,
         n2;
  wire   [7:0] par_data;
  assign test_so = par_data[7];

  SDFFRQX2M \par_data_reg[5]  ( .D(n21), .SI(par_data[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(par_data[5]) );
  SDFFRQX2M \par_data_reg[1]  ( .D(n13), .SI(par_data[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(par_data[1]) );
  SDFFRQX2M \par_data_reg[4]  ( .D(n19), .SI(par_data[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(par_data[4]) );
  SDFFRQX2M \par_data_reg[0]  ( .D(n11), .SI(par_bit), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(par_data[0]) );
  SDFFRQX2M \par_data_reg[2]  ( .D(n15), .SI(par_data[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(par_data[2]) );
  SDFFRQX2M par_bit_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(par_bit) );
  SDFFRQX2M \par_data_reg[3]  ( .D(n17), .SI(par_data[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(par_data[3]) );
  SDFFRQX2M \par_data_reg[6]  ( .D(n23), .SI(par_data[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(par_data[6]) );
  SDFFRQX2M \par_data_reg[7]  ( .D(n25), .SI(par_data[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(par_data[7]) );
  NOR2BX2M U2 ( .AN(Data_Valid), .B(busy), .Y(n7) );
  AO2B2X2M U3 ( .B0(P_DATA[0]), .B1(n7), .A0(par_data[0]), .A1N(n7), .Y(n11)
         );
  AO2B2X2M U4 ( .B0(P_DATA[1]), .B1(n7), .A0(par_data[1]), .A1N(n7), .Y(n13)
         );
  AO2B2X2M U5 ( .B0(P_DATA[2]), .B1(n7), .A0(par_data[2]), .A1N(n7), .Y(n15)
         );
  AO2B2X2M U6 ( .B0(P_DATA[3]), .B1(n7), .A0(par_data[3]), .A1N(n7), .Y(n17)
         );
  AO2B2X2M U7 ( .B0(P_DATA[4]), .B1(n7), .A0(par_data[4]), .A1N(n7), .Y(n19)
         );
  AO2B2X2M U8 ( .B0(P_DATA[5]), .B1(n7), .A0(par_data[5]), .A1N(n7), .Y(n21)
         );
  AO2B2X2M U9 ( .B0(P_DATA[6]), .B1(n7), .A0(par_data[6]), .A1N(n7), .Y(n23)
         );
  AO2B2X2M U10 ( .B0(P_DATA[7]), .B1(n7), .A0(par_data[7]), .A1N(n7), .Y(n25)
         );
  XNOR2X2M U11 ( .A(par_data[2]), .B(par_data[3]), .Y(n5) );
  XOR3XLM U12 ( .A(par_data[5]), .B(par_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U13 ( .A(par_data[7]), .B(par_data[6]), .Y(n6) );
  OAI2BB2X1M U14 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n9) );
  INVX2M U15 ( .A(PAR_EN), .Y(n2) );
  XOR3XLM U16 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U17 ( .A(par_data[1]), .B(par_data[0]), .C(n5), .Y(n4) );
endmodule


module SERIALIZER_DATA_LENGTH8_test_1 ( P_DATA, ser_en, CLK, RST, Data_Valid, 
        busy, ser_done, ser_data, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input ser_en, CLK, RST, Data_Valid, busy, test_si, test_se;
  output ser_done, ser_data, test_so;
  wire   N24, N25, N26, N27, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n13, n14,
         n15;
  wire   [7:1] data;
  wire   [3:0] counter;
  assign test_so = data[7];

  SDFFSQX2M \data_reg[6]  ( .D(n32), .SI(data[5]), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(data[6]) );
  SDFFSQX2M \data_reg[5]  ( .D(n33), .SI(data[4]), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(data[5]) );
  SDFFSQX2M \data_reg[4]  ( .D(n34), .SI(data[3]), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(data[4]) );
  SDFFSQX2M \data_reg[3]  ( .D(n35), .SI(data[2]), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(data[3]) );
  SDFFSQX2M \data_reg[2]  ( .D(n36), .SI(data[1]), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(data[2]) );
  SDFFSQX2M \data_reg[1]  ( .D(n37), .SI(ser_data), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(data[1]) );
  SDFFSQX2M \data_reg[0]  ( .D(n30), .SI(counter[3]), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(ser_data) );
  SDFFSQX2M \data_reg[7]  ( .D(n31), .SI(data[6]), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(data[7]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N27), .SI(n14), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N25), .SI(counter[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N26), .SI(counter[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N24), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(counter[0]) );
  NOR2X2M U15 ( .A(n13), .B(n19), .Y(n18) );
  NOR2X2M U16 ( .A(n19), .B(n18), .Y(n16) );
  INVX2M U17 ( .A(ser_en), .Y(n13) );
  NOR2BX2M U18 ( .AN(Data_Valid), .B(busy), .Y(n19) );
  OAI2BB1X2M U19 ( .A0N(ser_data), .A1N(n16), .B0(n17), .Y(n30) );
  AOI22X1M U20 ( .A0(data[1]), .A1(n18), .B0(P_DATA[0]), .B1(n19), .Y(n17) );
  OAI2BB1X2M U21 ( .A0N(data[1]), .A1N(n16), .B0(n25), .Y(n37) );
  AOI22X1M U22 ( .A0(data[2]), .A1(n18), .B0(P_DATA[1]), .B1(n19), .Y(n25) );
  OAI2BB1X2M U23 ( .A0N(n16), .A1N(data[2]), .B0(n24), .Y(n36) );
  AOI22X1M U24 ( .A0(data[3]), .A1(n18), .B0(P_DATA[2]), .B1(n19), .Y(n24) );
  OAI2BB1X2M U25 ( .A0N(n16), .A1N(data[3]), .B0(n23), .Y(n35) );
  AOI22X1M U26 ( .A0(data[4]), .A1(n18), .B0(P_DATA[3]), .B1(n19), .Y(n23) );
  OAI2BB1X2M U27 ( .A0N(n16), .A1N(data[4]), .B0(n22), .Y(n34) );
  AOI22X1M U28 ( .A0(data[5]), .A1(n18), .B0(P_DATA[4]), .B1(n19), .Y(n22) );
  OAI2BB1X2M U29 ( .A0N(n16), .A1N(data[5]), .B0(n21), .Y(n33) );
  AOI22X1M U30 ( .A0(data[6]), .A1(n18), .B0(P_DATA[5]), .B1(n19), .Y(n21) );
  OAI2BB1X2M U31 ( .A0N(n16), .A1N(data[6]), .B0(n20), .Y(n32) );
  AOI22X1M U32 ( .A0(data[7]), .A1(n18), .B0(P_DATA[6]), .B1(n19), .Y(n20) );
  AO22X1M U33 ( .A0(n16), .A1(data[7]), .B0(P_DATA[7]), .B1(n19), .Y(n31) );
  OAI32X1M U34 ( .A0(n14), .A1(counter[3]), .A2(n26), .B0(n27), .B1(n15), .Y(
        N27) );
  OA21X2M U35 ( .A0(n13), .A1(counter[2]), .B0(n28), .Y(n27) );
  NOR4X1M U36 ( .A(counter[2]), .B(counter[1]), .C(counter[0]), .D(n15), .Y(
        ser_done) );
  AOI2B1X1M U37 ( .A1N(counter[1]), .A0(ser_en), .B0(N24), .Y(n28) );
  NAND3X2M U38 ( .A(counter[0]), .B(ser_en), .C(counter[1]), .Y(n26) );
  OAI22X1M U39 ( .A0(n28), .A1(n14), .B0(counter[2]), .B1(n26), .Y(N26) );
  NOR2X2M U40 ( .A(n13), .B(counter[0]), .Y(N24) );
  NOR2X2M U41 ( .A(n29), .B(n13), .Y(N25) );
  XNOR2X2M U42 ( .A(counter[0]), .B(counter[1]), .Y(n29) );
  INVX2M U43 ( .A(counter[3]), .Y(n15) );
  INVX2M U44 ( .A(counter[2]), .Y(n14) );
endmodule


module FSM_TX_test_1 ( DATA_VALID_FSM, RST_FSM, CLK_FSM, SER_DONE_FSM, 
        PAR_EN_FSM, SER_EN_FSM, BUSY_FSM, MUX_SEL_FSM, test_si, test_so, 
        test_se );
  output [1:0] MUX_SEL_FSM;
  input DATA_VALID_FSM, RST_FSM, CLK_FSM, SER_DONE_FSM, PAR_EN_FSM, test_si,
         test_se;
  output SER_EN_FSM, BUSY_FSM, test_so;
  wire   BUSY_FSM_c, n11, n12, n13, n5, n6, n7, n8, n9, n10;
  wire   [2:0] cs;
  wire   [2:0] ns;
  assign test_so = n8;

  SDFFRQX2M BUSY_FSM_reg ( .D(BUSY_FSM_c), .SI(test_si), .SE(test_se), .CK(
        CLK_FSM), .RN(RST_FSM), .Q(BUSY_FSM) );
  SDFFRQX2M \cs_reg[0]  ( .D(ns[0]), .SI(BUSY_FSM), .SE(test_se), .CK(CLK_FSM), 
        .RN(RST_FSM), .Q(cs[0]) );
  SDFFRQX2M \cs_reg[2]  ( .D(ns[2]), .SI(cs[1]), .SE(test_se), .CK(CLK_FSM), 
        .RN(RST_FSM), .Q(cs[2]) );
  SDFFRQX2M \cs_reg[1]  ( .D(ns[1]), .SI(n6), .SE(test_se), .CK(CLK_FSM), .RN(
        RST_FSM), .Q(cs[1]) );
  OAI32X1M U7 ( .A0(n6), .A1(cs[2]), .A2(cs[1]), .B0(SER_DONE_FSM), .B1(n11), 
        .Y(SER_EN_FSM) );
  INVX2M U8 ( .A(DATA_VALID_FSM), .Y(n10) );
  NAND3X2M U9 ( .A(n12), .B(n8), .C(n13), .Y(MUX_SEL_FSM[0]) );
  AOI22X1M U10 ( .A0(SER_DONE_FSM), .A1(n7), .B0(n10), .B1(n6), .Y(n13) );
  AO21XLM U11 ( .A0(n8), .A1(DATA_VALID_FSM), .B0(ns[1]), .Y(BUSY_FSM_c) );
  INVX2M U12 ( .A(SER_EN_FSM), .Y(n5) );
  INVX2M U13 ( .A(n11), .Y(n7) );
  OAI31X1M U14 ( .A0(n10), .A1(cs[2]), .A2(cs[1]), .B0(n5), .Y(ns[0]) );
  OAI2BB1X2M U15 ( .A0N(n7), .A1N(PAR_EN_FSM), .B0(n5), .Y(MUX_SEL_FSM[1]) );
  NAND3X2M U16 ( .A(cs[0]), .B(n8), .C(cs[1]), .Y(n11) );
  INVX2M U17 ( .A(cs[2]), .Y(n8) );
  INVX2M U18 ( .A(cs[0]), .Y(n6) );
  OAI32X1M U19 ( .A0(n9), .A1(PAR_EN_FSM), .A2(n11), .B0(cs[2]), .B1(n12), .Y(
        ns[2]) );
  INVX2M U20 ( .A(SER_DONE_FSM), .Y(n9) );
  AOI21X2M U21 ( .A0(n6), .A1(n12), .B0(cs[2]), .Y(ns[1]) );
  NAND2X2M U22 ( .A(cs[1]), .B(n6), .Y(n12) );
endmodule


module TOP_TX_DATA_LENGTH8_test_1 ( RST, CLK, P_DATA, PAR_TYP, PAR_EN, 
        DATA_VALID, TX_OUT, BUSY, test_si2, test_si1, test_so1, test_se );
  input [7:0] P_DATA;
  input RST, CLK, PAR_TYP, PAR_EN, DATA_VALID, test_si2, test_si1, test_se;
  output TX_OUT, BUSY, test_so1;
  wire   ser_data, par_bit, ser_en, ser_done, n2, n3;
  wire   [1:0] mux_sel;

  MUX4x1_test_1 mux ( .CLK_mux(CLK), .RST_mux(RST), .start_bit_mux(1'b0), 
        .stop_bit_mux(1'b1), .ser_data_mux(ser_data), .parity_bit_mux(par_bit), 
        .mux_sel_mux(mux_sel), .TX_OUT_mux(TX_OUT), .test_si(test_si2), 
        .test_se(test_se) );
  parity_calc_DATA_LENGTH8_test_1 PAR ( .CLK(CLK), .RST(RST), .P_DATA(P_DATA), 
        .PAR_TYP(PAR_TYP), .Data_Valid(DATA_VALID), .PAR_EN(PAR_EN), .busy(
        BUSY), .par_bit(par_bit), .test_si(n3), .test_so(n2), .test_se(test_se) );
  SERIALIZER_DATA_LENGTH8_test_1 SER ( .P_DATA(P_DATA), .ser_en(ser_en), .CLK(
        CLK), .RST(RST), .Data_Valid(DATA_VALID), .busy(BUSY), .ser_done(
        ser_done), .ser_data(ser_data), .test_si(n2), .test_so(test_so1), 
        .test_se(test_se) );
  FSM_TX_test_1 FSM1 ( .DATA_VALID_FSM(DATA_VALID), .RST_FSM(RST), .CLK_FSM(
        CLK), .SER_DONE_FSM(ser_done), .PAR_EN_FSM(PAR_EN), .SER_EN_FSM(ser_en), .BUSY_FSM(BUSY), .MUX_SEL_FSM(mux_sel), .test_si(test_si1), .test_so(n3), 
        .test_se(test_se) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, ALU_OUT, OUT_Valid, CTRL_FULL_IN, RdData, 
        RdData_Valid, RX_P_DATA, RX_D_VLD, ALU_FUN, ALU_EN, CLK_EN, Address, 
        WrEn, RdEn, WrData, TX_P_DATA, TX_D_VLD, clk_div_en, test_si, test_so, 
        test_se );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_Valid, CTRL_FULL_IN, RdData_Valid, RX_D_VLD, test_si,
         test_se;
  output ALU_EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en, test_so;
  wire   second_frame, second_frame_reg, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n82;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  assign clk_div_en = 1'b1;
  assign test_so = second_frame;

  SDFFRQX2M \Address_reg[2]  ( .D(n80), .SI(Address[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Address[2]) );
  SDFFRQX2M \Address_reg[3]  ( .D(n81), .SI(Address[2]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Address[3]) );
  SDFFRQX2M \Address_reg[0]  ( .D(n78), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Address[0]) );
  SDFFRQX2M \Address_reg[1]  ( .D(n79), .SI(Address[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Address[1]) );
  SDFFRQX2M second_frame_reg_inst ( .D(second_frame_reg), .SI(n19), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(second_frame) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n22), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n16), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(Address[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .SI(n20), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[3]) );
  NOR2X2M U12 ( .A(n54), .B(n62), .Y(ALU_FUN[2]) );
  OAI22X1M U13 ( .A0(n24), .A1(n54), .B0(OUT_Valid), .B1(n55), .Y(ALU_EN) );
  NOR2X2M U14 ( .A(n64), .B(n23), .Y(WrData[0]) );
  INVX2M U15 ( .A(WrEn), .Y(n14) );
  INVX2M U16 ( .A(n46), .Y(n21) );
  NOR2X2M U17 ( .A(n15), .B(n31), .Y(n59) );
  INVX2M U18 ( .A(n40), .Y(n23) );
  INVX2M U19 ( .A(n61), .Y(n15) );
  INVX2M U20 ( .A(n55), .Y(n12) );
  NOR2X2M U21 ( .A(n23), .B(n54), .Y(ALU_FUN[0]) );
  AOI211X2M U22 ( .A0(n57), .A1(n46), .B0(n18), .C0(n31), .Y(n64) );
  INVX2M U23 ( .A(n66), .Y(n18) );
  NOR3X2M U24 ( .A(n17), .B(n10), .C(n19), .Y(n31) );
  NOR2X2M U25 ( .A(n24), .B(n64), .Y(WrEn) );
  NOR2X2M U26 ( .A(n50), .B(n56), .Y(n68) );
  NOR2X2M U27 ( .A(n22), .B(n10), .Y(n46) );
  INVX2M U28 ( .A(n65), .Y(n17) );
  INVX2M U29 ( .A(CTRL_FULL_IN), .Y(n11) );
  OR3X2M U30 ( .A(n69), .B(second_frame_reg), .C(n68), .Y(TX_D_VLD) );
  NOR2X2M U31 ( .A(n64), .B(n58), .Y(WrData[1]) );
  NOR2X2M U32 ( .A(n64), .B(n62), .Y(WrData[2]) );
  NOR2XLM U33 ( .A(n64), .B(n63), .Y(WrData[3]) );
  NOR2X2M U34 ( .A(n26), .B(n14), .Y(WrData[4]) );
  NOR2X2M U35 ( .A(n25), .B(n14), .Y(WrData[6]) );
  AOI21X2M U36 ( .A0(n50), .A1(n13), .B0(n12), .Y(n39) );
  NAND4X2M U37 ( .A(n51), .B(n43), .C(n52), .D(n53), .Y(next_state[0]) );
  NAND3X2M U38 ( .A(n24), .B(n20), .C(n57), .Y(n52) );
  NAND4BX1M U39 ( .AN(n58), .B(n49), .C(n82), .D(n26), .Y(n51) );
  OA21X2M U40 ( .A0(n54), .A1(n24), .B0(n39), .Y(n53) );
  NOR2BX2M U41 ( .AN(n43), .B(n34), .Y(n61) );
  NAND3X2M U42 ( .A(n10), .B(n19), .C(n65), .Y(n54) );
  NOR2X2M U43 ( .A(n82), .B(n24), .Y(n40) );
  NAND3X2M U44 ( .A(n57), .B(n22), .C(n10), .Y(n55) );
  NAND3X2M U45 ( .A(n22), .B(n20), .C(n57), .Y(n43) );
  INVX2M U46 ( .A(n10), .Y(n20) );
  INVX2M U47 ( .A(n56), .Y(n13) );
  NOR2X2M U48 ( .A(n58), .B(n54), .Y(ALU_FUN[1]) );
  NOR2X2M U49 ( .A(n54), .B(n63), .Y(ALU_FUN[3]) );
  NOR2X2M U50 ( .A(n16), .B(current_state[3]), .Y(n57) );
  NOR2X2M U51 ( .A(current_state[1]), .B(current_state[0]), .Y(n65) );
  AND3X2M U52 ( .A(n77), .B(n11), .C(RdData_Valid), .Y(n69) );
  INVX2M U53 ( .A(current_state[3]), .Y(n19) );
  BUFX2M U54 ( .A(current_state[2]), .Y(n10) );
  NAND3X2M U55 ( .A(n65), .B(n10), .C(current_state[3]), .Y(n66) );
  NAND2X2M U56 ( .A(second_frame), .B(n11), .Y(n50) );
  INVX2M U57 ( .A(current_state[1]), .Y(n22) );
  INVX2M U58 ( .A(current_state[0]), .Y(n16) );
  NOR3X2M U59 ( .A(CTRL_FULL_IN), .B(second_frame), .C(n56), .Y(
        second_frame_reg) );
  NOR3X2M U60 ( .A(n19), .B(current_state[0]), .C(n21), .Y(n77) );
  NOR3X2M U61 ( .A(n10), .B(current_state[3]), .C(n17), .Y(n36) );
  NOR2BX2M U62 ( .AN(n77), .B(RdData_Valid), .Y(RdEn) );
  OAI2BB1X2M U63 ( .A0N(ALU_OUT[0]), .A1N(second_frame_reg), .B0(n76), .Y(
        TX_P_DATA[0]) );
  AOI22X1M U64 ( .A0(ALU_OUT[8]), .A1(n68), .B0(RdData[0]), .B1(n69), .Y(n76)
         );
  OAI2BB1X2M U65 ( .A0N(ALU_OUT[1]), .A1N(second_frame_reg), .B0(n75), .Y(
        TX_P_DATA[1]) );
  AOI22X1M U66 ( .A0(ALU_OUT[9]), .A1(n68), .B0(RdData[1]), .B1(n69), .Y(n75)
         );
  OAI2BB1X2M U67 ( .A0N(ALU_OUT[2]), .A1N(second_frame_reg), .B0(n74), .Y(
        TX_P_DATA[2]) );
  AOI22X1M U68 ( .A0(ALU_OUT[10]), .A1(n68), .B0(RdData[2]), .B1(n69), .Y(n74)
         );
  OAI2BB1X2M U69 ( .A0N(ALU_OUT[3]), .A1N(second_frame_reg), .B0(n73), .Y(
        TX_P_DATA[3]) );
  AOI22X1M U70 ( .A0(ALU_OUT[11]), .A1(n68), .B0(RdData[3]), .B1(n69), .Y(n73)
         );
  OAI2BB1X2M U71 ( .A0N(ALU_OUT[4]), .A1N(second_frame_reg), .B0(n72), .Y(
        TX_P_DATA[4]) );
  AOI22X1M U72 ( .A0(ALU_OUT[12]), .A1(n68), .B0(RdData[4]), .B1(n69), .Y(n72)
         );
  OAI2BB1X2M U73 ( .A0N(ALU_OUT[5]), .A1N(second_frame_reg), .B0(n71), .Y(
        TX_P_DATA[5]) );
  AOI22X1M U74 ( .A0(ALU_OUT[13]), .A1(n68), .B0(RdData[5]), .B1(n69), .Y(n71)
         );
  OAI2BB1X2M U75 ( .A0N(ALU_OUT[6]), .A1N(second_frame_reg), .B0(n70), .Y(
        TX_P_DATA[6]) );
  AOI22X1M U76 ( .A0(ALU_OUT[14]), .A1(n68), .B0(RdData[6]), .B1(n69), .Y(n70)
         );
  OAI2BB1X2M U77 ( .A0N(ALU_OUT[7]), .A1N(second_frame_reg), .B0(n67), .Y(
        TX_P_DATA[7]) );
  AOI22X1M U78 ( .A0(ALU_OUT[15]), .A1(n68), .B0(RdData[7]), .B1(n69), .Y(n67)
         );
  INVX2M U79 ( .A(RX_D_VLD), .Y(n24) );
  OAI211X2M U80 ( .A0(n37), .A1(n17), .B0(n38), .C0(n39), .Y(next_state[2]) );
  AOI21X2M U81 ( .A0(RX_D_VLD), .A1(current_state[3]), .B0(n10), .Y(n37) );
  NAND4X2M U82 ( .A(n40), .B(n41), .C(RX_P_DATA[4]), .D(n42), .Y(n38) );
  NOR4X1M U83 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n27), .D(n25), .Y(n42)
         );
  OAI211X2M U84 ( .A0(n24), .A1(n43), .B0(n44), .C0(n45), .Y(next_state[1]) );
  AOI211X2M U85 ( .A0(n46), .A1(n47), .B0(n34), .C0(n48), .Y(n45) );
  AOI22X1M U86 ( .A0(OUT_Valid), .A1(n12), .B0(n13), .B1(n50), .Y(n44) );
  OAI22X1M U87 ( .A0(current_state[0]), .A1(RdData_Valid), .B0(
        current_state[3]), .B1(RX_D_VLD), .Y(n47) );
  NAND3X2M U88 ( .A(current_state[1]), .B(n57), .C(n10), .Y(n56) );
  AND2X2M U89 ( .A(RX_P_DATA[5]), .B(WrEn), .Y(WrData[5]) );
  AND2X2M U90 ( .A(RX_P_DATA[7]), .B(WrEn), .Y(WrData[7]) );
  AND3X2M U91 ( .A(RX_P_DATA[7]), .B(RX_P_DATA[3]), .C(n36), .Y(n41) );
  AND4X2M U92 ( .A(RX_P_DATA[5]), .B(n41), .C(n27), .D(n25), .Y(n49) );
  AND4X2M U93 ( .A(n40), .B(RX_P_DATA[4]), .C(n49), .D(RX_P_DATA[1]), .Y(n48)
         );
  NOR3X2M U94 ( .A(current_state[0]), .B(current_state[3]), .C(n21), .Y(n34)
         );
  NOR4X1M U95 ( .A(n35), .B(RX_P_DATA[1]), .C(RX_P_DATA[5]), .D(RX_P_DATA[4]), 
        .Y(n33) );
  NAND2X2M U96 ( .A(RX_P_DATA[2]), .B(n82), .Y(n35) );
  NAND2X2M U97 ( .A(RX_D_VLD), .B(RX_P_DATA[3]), .Y(n63) );
  NAND2X2M U98 ( .A(RX_D_VLD), .B(RX_P_DATA[2]), .Y(n62) );
  NAND2X2M U99 ( .A(RX_P_DATA[1]), .B(RX_D_VLD), .Y(n58) );
  OAI2BB2X1M U100 ( .B0(n61), .B1(n58), .A0N(Address[1]), .A1N(n59), .Y(n79)
         );
  OAI2BB2X1M U101 ( .B0(n61), .B1(n62), .A0N(Address[2]), .A1N(n59), .Y(n80)
         );
  OAI2BB2X1M U102 ( .B0(n61), .B1(n63), .A0N(Address[3]), .A1N(n59), .Y(n81)
         );
  OAI21X2M U103 ( .A0(n28), .A1(n24), .B0(n29), .Y(next_state[3]) );
  AOI31X2M U104 ( .A0(n30), .A1(n16), .A2(current_state[3]), .B0(n31), .Y(n29)
         );
  AOI21X2M U105 ( .A0(n32), .A1(n33), .B0(n34), .Y(n28) );
  OAI22X1M U106 ( .A0(n10), .A1(RdData_Valid), .B0(current_state[1]), .B1(
        RX_D_VLD), .Y(n30) );
  INVX2M U107 ( .A(RX_P_DATA[2]), .Y(n27) );
  INVX2M U108 ( .A(RX_P_DATA[6]), .Y(n25) );
  INVX2M U109 ( .A(RX_P_DATA[4]), .Y(n26) );
  AND4X2M U110 ( .A(RX_P_DATA[3]), .B(RX_P_DATA[6]), .C(RX_P_DATA[7]), .D(n36), 
        .Y(n32) );
  INVX2M U111 ( .A(RX_P_DATA[0]), .Y(n82) );
  OAI2BB1X2M U112 ( .A0N(Address[0]), .A1N(n59), .B0(n60), .Y(n78) );
  AOI22X1M U113 ( .A0(n31), .A1(RX_D_VLD), .B0(n40), .B1(n15), .Y(n60) );
  OAI221X1M U114 ( .A0(OUT_Valid), .A1(n55), .B0(n24), .B1(n66), .C0(n54), .Y(
        CLK_EN) );
endmodule


module SYS_TOP ( scan_clk, scan_rst, test_mode, SE, SI, SO, RST_N, UART_CLK, 
        REF_CLK, UART_RX_IN, UART_TX_O, parity_error, framing_error );
  input [4:0] SI;
  output [4:0] SO;
  input scan_clk, scan_rst, test_mode, SE, RST_N, UART_CLK, REF_CLK,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   CLK_R_M, CLK_UART_M, RST_M, TX_CLK, TX_CLK_M, RX_CLK, RX_CLK_M,
         RST_SYNC_1, RST_SYNC_1_mux, RST_SYNC_2, RST_SYNC_2_mux, Gated_EN,
         ALU_CLK, WrEn_RF, RdEn_RF, RdData_valid_RF, PULSE_PG, BUSY_PG,
         ALU_ENABLE_in, ALU_DATA_VALID_out, FIFO_WR_INC, FIFO_FULL, FIFO_EMPTY,
         SYNC_data_valid_RX, SYNC_EN_OUT, n3, n4, n5, n6, n7, n8, n9, n11, n12,
         n13, n14, n15, n19, n20, n21, n22, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44;
  wire   [3:0] Address_RF;
  wire   [7:0] WrData_RF;
  wire   [7:0] RdData_RF;
  wire   [7:0] REG0_OP_A;
  wire   [7:0] REG1_OP_B;
  wire   [7:0] REG2_UART_config;
  wire   [7:0] REG3_DIV_ratio;
  wire   [7:0] div_ratio_prescale;
  wire   [3:0] ALU_FUN_in;
  wire   [15:0] CTRL_ALU_OUT;
  wire   [7:0] FIFO_WR_DATA;
  wire   [7:0] FIFO_RD_DATA;
  wire   [7:0] SYNC_P_DATA_RX;
  wire   [7:0] CTRL_SYNC_DATA;

  INVX2M U5 ( .A(FIFO_EMPTY), .Y(n9) );
  INVX2M U6 ( .A(BUSY_PG), .Y(n8) );
  INVX4M U7 ( .A(n7), .Y(n6) );
  INVX2M U8 ( .A(RST_SYNC_1_mux), .Y(n7) );
  INVX4M U9 ( .A(n5), .Y(n4) );
  INVX2M U10 ( .A(RST_SYNC_2_mux), .Y(n5) );
  BUFX2M U11 ( .A(test_mode), .Y(n3) );
  DLY1X1M U15 ( .A(n33), .Y(n30) );
  DLY1X1M U16 ( .A(n42), .Y(n31) );
  INVXLM U17 ( .A(n39), .Y(n32) );
  INVXLM U18 ( .A(n32), .Y(n33) );
  INVXLM U19 ( .A(n32), .Y(n34) );
  INVXLM U20 ( .A(n44), .Y(n35) );
  INVXLM U21 ( .A(n35), .Y(n36) );
  INVXLM U22 ( .A(n35), .Y(n37) );
  INVXLM U23 ( .A(n43), .Y(n38) );
  INVXLM U24 ( .A(n38), .Y(n39) );
  INVXLM U25 ( .A(n38), .Y(n40) );
  INVXLM U26 ( .A(SE), .Y(n41) );
  INVXLM U27 ( .A(n41), .Y(n42) );
  INVXLM U28 ( .A(n41), .Y(n43) );
  INVXLM U29 ( .A(n41), .Y(n44) );
  mux2X1_1 U0_mux2X1 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n3), .OUT(CLK_R_M) );
  mux2X1_5 U1_mux2X1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n3), .OUT(
        CLK_UART_M) );
  mux2X1_4 U2_mux2X1 ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(n3), .OUT(RST_M) );
  mux2X1_3 U3_mux2X1 ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(n3), .OUT(TX_CLK_M) );
  mux2X1_2 U4_mux2X1 ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(n3), .OUT(RX_CLK_M) );
  mux2X1_0 U5_mux2X1 ( .IN_0(RST_SYNC_1), .IN_1(scan_rst), .SEL(n3), .OUT(
        RST_SYNC_1_mux) );
  mux2X1_6 U6_mux2X1 ( .IN_0(RST_SYNC_2), .IN_1(scan_rst), .SEL(n3), .OUT(
        RST_SYNC_2_mux) );
  RST_SYN_test_0 U0_RST_SYN ( .CLK(CLK_R_M), .RST(RST_M), .SYNC_RST(RST_SYNC_1), .test_si(n20), .test_se(n36) );
  RST_SYN_test_1 U1_RST_SYN ( .CLK(CLK_UART_M), .RST(RST_M), .SYNC_RST(
        RST_SYNC_2), .test_si(n12), .test_se(n40) );
  CLK_gating U0_CLK_gating ( .CLK(CLK_R_M), .CLK_EN(Gated_EN), .test(n3), 
        .Gated_CLK(ALU_CLK) );
  Register_File_test_1 U0_Register_File ( .CLK(CLK_R_M), .RST(n6), .WrEn(
        WrEn_RF), .RdEn(RdEn_RF), .Address(Address_RF), .WrData(WrData_RF), 
        .RdData(RdData_RF), .RdData_valid(RdData_valid_RF), .REG0(REG0_OP_A), 
        .REG1(REG1_OP_B), .REG2(REG2_UART_config), .REG3(REG3_DIV_ratio), 
        .test_si3(SI[0]), .test_si2(SI[1]), .test_si1(n19), .test_so2(n15), 
        .test_so1(SO[1]), .test_se(SE) );
  MUX_prescale U0_MUX_prescale ( .sel(REG2_UART_config[7:2]), .in0({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1, 1'b0}), .in2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 
        1'b0, 1'b0}), .in3({1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0}), 
        .out(div_ratio_prescale) );
  clock_divider_test_0 U0_clock_divider ( .i_ref_clk(CLK_UART_M), .i_rst_n(n4), 
        .i_clk_en(1'b1), .i_div_ratio(REG3_DIV_ratio), .o_div_clk(TX_CLK), 
        .test_si(n13), .test_so(n12), .test_se(n37) );
  clock_divider_test_1 U1_clock_divider ( .i_ref_clk(CLK_UART_M), .i_rst_n(n4), 
        .i_clk_en(1'b1), .i_div_ratio(div_ratio_prescale), .o_div_clk(RX_CLK), 
        .test_si(RST_SYNC_2), .test_so(n11), .test_se(n36) );
  PULSE_GEN_test_1 U0_PULSE_GEN ( .CLK(TX_CLK_M), .RST_n(n4), .LVL_SIG(n8), 
        .pulse_out(PULSE_PG), .test_si(n21), .test_so(n20), .test_se(n34) );
  ALU_test_1 U0_ALU ( .CLK(ALU_CLK), .RST(n6), .A(REG0_OP_A), .B(REG1_OP_B), 
        .ALU_FUN(ALU_FUN_in), .Enable(ALU_ENABLE_in), .valid_data(
        ALU_DATA_VALID_out), .ALU_OUT(CTRL_ALU_OUT), .test_si(SI[4]), 
        .test_se(n43) );
  ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH4_NUM_STAGES2_test_1 U0_ASYNC_FIFO ( .wclk(
        CLK_R_M), .rclk(TX_CLK_M), .wrst_n(n6), .rrst_n(n4), .W_INC(
        FIFO_WR_INC), .R_INC(PULSE_PG), .wr_data(FIFO_WR_DATA), .FULL(
        FIFO_FULL), .EMPTY(FIFO_EMPTY), .rd_data(FIFO_RD_DATA), .test_si3(
        SI[2]), .test_si2(SI[3]), .test_si1(ALU_DATA_VALID_out), .test_so3(n22), .test_so2(SO[3]), .test_so1(SO[4]), .test_se(SE) );
  DATA_SYNC_test_1 U0_DATA_SYNC ( .clk(CLK_R_M), .rst_n(n6), .unsync_bus(
        SYNC_P_DATA_RX), .bus_enable(SYNC_data_valid_RX), .sync_bus(
        CTRL_SYNC_DATA), .enable_pulse(SYNC_EN_OUT), .test_si(n22), .test_so(
        n21), .test_se(n40) );
  RX_TOP_test_1 U0_RX_TOP ( .CLK_RX(RX_CLK_M), .RST_RX(n4), .RX_IN_RX(
        UART_RX_IN), .PAR_EN_RX(REG2_UART_config[0]), .PAR_TYP_RX(
        REG2_UART_config[1]), .prescale_RX(REG2_UART_config[7:2]), .P_DATA_RX(
        SYNC_P_DATA_RX), .data_valid_RX(SYNC_data_valid_RX), .parity_error_RX(
        parity_error), .stop_error_RX(SO[2]), .test_si1(RST_SYNC_1), 
        .test_so1(n19), .test_se(n31) );
  TOP_TX_DATA_LENGTH8_test_1 U0_TOP_TX ( .RST(n4), .CLK(TX_CLK_M), .P_DATA(
        FIFO_RD_DATA), .PAR_TYP(REG2_UART_config[1]), .PAR_EN(
        REG2_UART_config[0]), .DATA_VALID(n9), .TX_OUT(SO[0]), .BUSY(BUSY_PG), 
        .test_si2(n11), .test_si1(n14), .test_so1(n13), .test_se(n30) );
  SYS_CTRL_test_1 U0_SYS_CTRL ( .CLK(CLK_R_M), .RST(n6), .ALU_OUT(CTRL_ALU_OUT), .OUT_Valid(ALU_DATA_VALID_out), .CTRL_FULL_IN(FIFO_FULL), .RdData(RdData_RF), 
        .RdData_Valid(RdData_valid_RF), .RX_P_DATA(CTRL_SYNC_DATA), .RX_D_VLD(
        SYNC_EN_OUT), .ALU_FUN(ALU_FUN_in), .ALU_EN(ALU_ENABLE_in), .CLK_EN(
        Gated_EN), .Address(Address_RF), .WrEn(WrEn_RF), .RdEn(RdEn_RF), 
        .WrData(WrData_RF), .TX_P_DATA(FIFO_WR_DATA), .TX_D_VLD(FIFO_WR_INC), 
        .test_si(n15), .test_so(n14), .test_se(n34) );
  BUFX2M U13 ( .A(SO[2]), .Y(framing_error) );
  BUFX2M U14 ( .A(SO[0]), .Y(UART_TX_O) );
endmodule

