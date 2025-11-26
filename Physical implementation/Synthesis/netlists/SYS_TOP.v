/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Thu Oct  9 06:03:51 2025
/////////////////////////////////////////////////////////////


module RST_SYN_0 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \rst_shift_reg[0] ;

  DFFRQX2M \rst_shift_reg_reg[1]  ( .D(\rst_shift_reg[0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC_RST) );
  DFFRQX2M \rst_shift_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(
        \rst_shift_reg[0] ) );
endmodule


module RST_SYN_1 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \rst_shift_reg[0] ;

  DFFRQX2M \rst_shift_reg_reg[1]  ( .D(\rst_shift_reg[0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC_RST) );
  DFFRQX2M \rst_shift_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(
        \rst_shift_reg[0] ) );
endmodule


module CLK_gating ( CLK, CLK_EN, Gated_CLK );
  input CLK, CLK_EN;
  output Gated_CLK;


  TLATNCAX2M U_LATNCAX2M ( .E(CLK_EN), .CK(CLK), .ECK(Gated_CLK) );
endmodule


module Register_File ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, 
        RdData_valid, REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_valid;
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
         \regfile[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n13, n14,
         n15, n16, n17, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n18, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \regfile_reg[13][7]  ( .D(n161), .CK(CLK), .RN(n213), .Q(
        \regfile[13][7] ) );
  DFFRQX2M \regfile_reg[13][6]  ( .D(n160), .CK(CLK), .RN(n213), .Q(
        \regfile[13][6] ) );
  DFFRQX2M \regfile_reg[13][5]  ( .D(n159), .CK(CLK), .RN(n212), .Q(
        \regfile[13][5] ) );
  DFFRQX2M \regfile_reg[13][4]  ( .D(n158), .CK(CLK), .RN(n212), .Q(
        \regfile[13][4] ) );
  DFFRQX2M \regfile_reg[13][3]  ( .D(n157), .CK(CLK), .RN(n212), .Q(
        \regfile[13][3] ) );
  DFFRQX2M \regfile_reg[13][2]  ( .D(n156), .CK(CLK), .RN(n212), .Q(
        \regfile[13][2] ) );
  DFFRQX2M \regfile_reg[13][1]  ( .D(n155), .CK(CLK), .RN(n212), .Q(
        \regfile[13][1] ) );
  DFFRQX2M \regfile_reg[13][0]  ( .D(n154), .CK(CLK), .RN(n212), .Q(
        \regfile[13][0] ) );
  DFFRQX2M \regfile_reg[9][7]  ( .D(n129), .CK(CLK), .RN(n210), .Q(
        \regfile[9][7] ) );
  DFFRQX2M \regfile_reg[9][6]  ( .D(n128), .CK(CLK), .RN(n210), .Q(
        \regfile[9][6] ) );
  DFFRQX2M \regfile_reg[9][5]  ( .D(n127), .CK(CLK), .RN(n210), .Q(
        \regfile[9][5] ) );
  DFFRQX2M \regfile_reg[9][4]  ( .D(n126), .CK(CLK), .RN(n210), .Q(
        \regfile[9][4] ) );
  DFFRQX2M \regfile_reg[9][3]  ( .D(n125), .CK(CLK), .RN(n210), .Q(
        \regfile[9][3] ) );
  DFFRQX2M \regfile_reg[9][2]  ( .D(n124), .CK(CLK), .RN(n210), .Q(
        \regfile[9][2] ) );
  DFFRQX2M \regfile_reg[9][1]  ( .D(n123), .CK(CLK), .RN(n210), .Q(
        \regfile[9][1] ) );
  DFFRQX2M \regfile_reg[9][0]  ( .D(n122), .CK(CLK), .RN(n210), .Q(
        \regfile[9][0] ) );
  DFFRQX2M \regfile_reg[5][7]  ( .D(n97), .CK(CLK), .RN(n208), .Q(
        \regfile[5][7] ) );
  DFFRQX2M \regfile_reg[5][6]  ( .D(n96), .CK(CLK), .RN(n208), .Q(
        \regfile[5][6] ) );
  DFFRQX2M \regfile_reg[5][5]  ( .D(n95), .CK(CLK), .RN(n208), .Q(
        \regfile[5][5] ) );
  DFFRQX2M \regfile_reg[5][4]  ( .D(n94), .CK(CLK), .RN(n208), .Q(
        \regfile[5][4] ) );
  DFFRQX2M \regfile_reg[5][3]  ( .D(n93), .CK(CLK), .RN(n208), .Q(
        \regfile[5][3] ) );
  DFFRQX2M \regfile_reg[5][2]  ( .D(n92), .CK(CLK), .RN(n208), .Q(
        \regfile[5][2] ) );
  DFFRQX2M \regfile_reg[5][1]  ( .D(n91), .CK(CLK), .RN(n208), .Q(
        \regfile[5][1] ) );
  DFFRQX2M \regfile_reg[5][0]  ( .D(n90), .CK(CLK), .RN(n208), .Q(
        \regfile[5][0] ) );
  DFFRQX2M \regfile_reg[15][7]  ( .D(n177), .CK(CLK), .RN(n205), .Q(
        \regfile[15][7] ) );
  DFFRQX2M \regfile_reg[15][6]  ( .D(n176), .CK(CLK), .RN(n214), .Q(
        \regfile[15][6] ) );
  DFFRQX2M \regfile_reg[15][5]  ( .D(n175), .CK(CLK), .RN(n214), .Q(
        \regfile[15][5] ) );
  DFFRQX2M \regfile_reg[15][4]  ( .D(n174), .CK(CLK), .RN(n213), .Q(
        \regfile[15][4] ) );
  DFFRQX2M \regfile_reg[15][3]  ( .D(n173), .CK(CLK), .RN(n213), .Q(
        \regfile[15][3] ) );
  DFFRQX2M \regfile_reg[15][2]  ( .D(n172), .CK(CLK), .RN(n213), .Q(
        \regfile[15][2] ) );
  DFFRQX2M \regfile_reg[15][1]  ( .D(n171), .CK(CLK), .RN(n213), .Q(
        \regfile[15][1] ) );
  DFFRQX2M \regfile_reg[15][0]  ( .D(n170), .CK(CLK), .RN(n213), .Q(
        \regfile[15][0] ) );
  DFFRQX2M \regfile_reg[11][7]  ( .D(n145), .CK(CLK), .RN(n212), .Q(
        \regfile[11][7] ) );
  DFFRQX2M \regfile_reg[11][6]  ( .D(n144), .CK(CLK), .RN(n211), .Q(
        \regfile[11][6] ) );
  DFFRQX2M \regfile_reg[11][5]  ( .D(n143), .CK(CLK), .RN(n211), .Q(
        \regfile[11][5] ) );
  DFFRQX2M \regfile_reg[11][4]  ( .D(n142), .CK(CLK), .RN(n211), .Q(
        \regfile[11][4] ) );
  DFFRQX2M \regfile_reg[11][3]  ( .D(n141), .CK(CLK), .RN(n211), .Q(
        \regfile[11][3] ) );
  DFFRQX2M \regfile_reg[11][2]  ( .D(n140), .CK(CLK), .RN(n211), .Q(
        \regfile[11][2] ) );
  DFFRQX2M \regfile_reg[11][1]  ( .D(n139), .CK(CLK), .RN(n211), .Q(
        \regfile[11][1] ) );
  DFFRQX2M \regfile_reg[11][0]  ( .D(n138), .CK(CLK), .RN(n211), .Q(
        \regfile[11][0] ) );
  DFFRQX2M \regfile_reg[7][7]  ( .D(n113), .CK(CLK), .RN(n209), .Q(
        \regfile[7][7] ) );
  DFFRQX2M \regfile_reg[7][6]  ( .D(n112), .CK(CLK), .RN(n209), .Q(
        \regfile[7][6] ) );
  DFFRQX2M \regfile_reg[7][5]  ( .D(n111), .CK(CLK), .RN(n209), .Q(
        \regfile[7][5] ) );
  DFFRQX2M \regfile_reg[7][4]  ( .D(n110), .CK(CLK), .RN(n209), .Q(
        \regfile[7][4] ) );
  DFFRQX2M \regfile_reg[7][3]  ( .D(n109), .CK(CLK), .RN(n209), .Q(
        \regfile[7][3] ) );
  DFFRQX2M \regfile_reg[7][2]  ( .D(n108), .CK(CLK), .RN(n209), .Q(
        \regfile[7][2] ) );
  DFFRQX2M \regfile_reg[7][1]  ( .D(n107), .CK(CLK), .RN(n209), .Q(
        \regfile[7][1] ) );
  DFFRQX2M \regfile_reg[7][0]  ( .D(n106), .CK(CLK), .RN(n209), .Q(
        \regfile[7][0] ) );
  DFFRQX2M \regfile_reg[14][7]  ( .D(n169), .CK(CLK), .RN(n213), .Q(
        \regfile[14][7] ) );
  DFFRQX2M \regfile_reg[14][6]  ( .D(n168), .CK(CLK), .RN(n213), .Q(
        \regfile[14][6] ) );
  DFFRQX2M \regfile_reg[14][5]  ( .D(n167), .CK(CLK), .RN(n213), .Q(
        \regfile[14][5] ) );
  DFFRQX2M \regfile_reg[14][4]  ( .D(n166), .CK(CLK), .RN(n213), .Q(
        \regfile[14][4] ) );
  DFFRQX2M \regfile_reg[14][3]  ( .D(n165), .CK(CLK), .RN(n213), .Q(
        \regfile[14][3] ) );
  DFFRQX2M \regfile_reg[14][2]  ( .D(n164), .CK(CLK), .RN(n213), .Q(
        \regfile[14][2] ) );
  DFFRQX2M \regfile_reg[14][1]  ( .D(n163), .CK(CLK), .RN(n213), .Q(
        \regfile[14][1] ) );
  DFFRQX2M \regfile_reg[14][0]  ( .D(n162), .CK(CLK), .RN(n213), .Q(
        \regfile[14][0] ) );
  DFFRQX2M \regfile_reg[10][7]  ( .D(n137), .CK(CLK), .RN(n211), .Q(
        \regfile[10][7] ) );
  DFFRQX2M \regfile_reg[10][6]  ( .D(n136), .CK(CLK), .RN(n211), .Q(
        \regfile[10][6] ) );
  DFFRQX2M \regfile_reg[10][5]  ( .D(n135), .CK(CLK), .RN(n211), .Q(
        \regfile[10][5] ) );
  DFFRQX2M \regfile_reg[10][4]  ( .D(n134), .CK(CLK), .RN(n211), .Q(
        \regfile[10][4] ) );
  DFFRQX2M \regfile_reg[10][3]  ( .D(n133), .CK(CLK), .RN(n211), .Q(
        \regfile[10][3] ) );
  DFFRQX2M \regfile_reg[10][2]  ( .D(n132), .CK(CLK), .RN(n211), .Q(
        \regfile[10][2] ) );
  DFFRQX2M \regfile_reg[10][1]  ( .D(n131), .CK(CLK), .RN(n211), .Q(
        \regfile[10][1] ) );
  DFFRQX2M \regfile_reg[10][0]  ( .D(n130), .CK(CLK), .RN(n211), .Q(
        \regfile[10][0] ) );
  DFFRQX2M \regfile_reg[6][7]  ( .D(n105), .CK(CLK), .RN(n209), .Q(
        \regfile[6][7] ) );
  DFFRQX2M \regfile_reg[6][6]  ( .D(n104), .CK(CLK), .RN(n209), .Q(
        \regfile[6][6] ) );
  DFFRQX2M \regfile_reg[6][5]  ( .D(n103), .CK(CLK), .RN(n209), .Q(
        \regfile[6][5] ) );
  DFFRQX2M \regfile_reg[6][4]  ( .D(n102), .CK(CLK), .RN(n209), .Q(
        \regfile[6][4] ) );
  DFFRQX2M \regfile_reg[6][3]  ( .D(n101), .CK(CLK), .RN(n209), .Q(
        \regfile[6][3] ) );
  DFFRQX2M \regfile_reg[6][2]  ( .D(n100), .CK(CLK), .RN(n208), .Q(
        \regfile[6][2] ) );
  DFFRQX2M \regfile_reg[6][1]  ( .D(n99), .CK(CLK), .RN(n208), .Q(
        \regfile[6][1] ) );
  DFFRQX2M \regfile_reg[6][0]  ( .D(n98), .CK(CLK), .RN(n208), .Q(
        \regfile[6][0] ) );
  DFFRQX2M \regfile_reg[12][7]  ( .D(n153), .CK(CLK), .RN(n212), .Q(
        \regfile[12][7] ) );
  DFFRQX2M \regfile_reg[12][6]  ( .D(n152), .CK(CLK), .RN(n212), .Q(
        \regfile[12][6] ) );
  DFFRQX2M \regfile_reg[12][5]  ( .D(n151), .CK(CLK), .RN(n212), .Q(
        \regfile[12][5] ) );
  DFFRQX2M \regfile_reg[12][4]  ( .D(n150), .CK(CLK), .RN(n212), .Q(
        \regfile[12][4] ) );
  DFFRQX2M \regfile_reg[12][3]  ( .D(n149), .CK(CLK), .RN(n212), .Q(
        \regfile[12][3] ) );
  DFFRQX2M \regfile_reg[12][2]  ( .D(n148), .CK(CLK), .RN(n212), .Q(
        \regfile[12][2] ) );
  DFFRQX2M \regfile_reg[12][1]  ( .D(n147), .CK(CLK), .RN(n212), .Q(
        \regfile[12][1] ) );
  DFFRQX2M \regfile_reg[12][0]  ( .D(n146), .CK(CLK), .RN(n212), .Q(
        \regfile[12][0] ) );
  DFFRQX2M \regfile_reg[8][7]  ( .D(n121), .CK(CLK), .RN(n210), .Q(
        \regfile[8][7] ) );
  DFFRQX2M \regfile_reg[8][6]  ( .D(n120), .CK(CLK), .RN(n210), .Q(
        \regfile[8][6] ) );
  DFFRQX2M \regfile_reg[8][5]  ( .D(n119), .CK(CLK), .RN(n210), .Q(
        \regfile[8][5] ) );
  DFFRQX2M \regfile_reg[8][4]  ( .D(n118), .CK(CLK), .RN(n210), .Q(
        \regfile[8][4] ) );
  DFFRQX2M \regfile_reg[8][3]  ( .D(n117), .CK(CLK), .RN(n210), .Q(
        \regfile[8][3] ) );
  DFFRQX2M \regfile_reg[8][2]  ( .D(n116), .CK(CLK), .RN(n210), .Q(
        \regfile[8][2] ) );
  DFFRQX2M \regfile_reg[8][1]  ( .D(n115), .CK(CLK), .RN(n210), .Q(
        \regfile[8][1] ) );
  DFFRQX2M \regfile_reg[8][0]  ( .D(n114), .CK(CLK), .RN(n209), .Q(
        \regfile[8][0] ) );
  DFFRQX2M \regfile_reg[4][7]  ( .D(n89), .CK(CLK), .RN(n208), .Q(
        \regfile[4][7] ) );
  DFFRQX2M \regfile_reg[4][6]  ( .D(n88), .CK(CLK), .RN(n208), .Q(
        \regfile[4][6] ) );
  DFFRQX2M \regfile_reg[4][5]  ( .D(n87), .CK(CLK), .RN(n208), .Q(
        \regfile[4][5] ) );
  DFFRQX2M \regfile_reg[4][4]  ( .D(n86), .CK(CLK), .RN(n208), .Q(
        \regfile[4][4] ) );
  DFFRQX2M \regfile_reg[4][3]  ( .D(n85), .CK(CLK), .RN(n207), .Q(
        \regfile[4][3] ) );
  DFFRQX2M \regfile_reg[4][2]  ( .D(n84), .CK(CLK), .RN(n207), .Q(
        \regfile[4][2] ) );
  DFFRQX2M \regfile_reg[4][1]  ( .D(n83), .CK(CLK), .RN(n207), .Q(
        \regfile[4][1] ) );
  DFFRQX2M \regfile_reg[4][0]  ( .D(n82), .CK(CLK), .RN(n207), .Q(
        \regfile[4][0] ) );
  DFFRQX2M \RdData_reg[7]  ( .D(n49), .CK(CLK), .RN(n205), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n48), .CK(CLK), .RN(n205), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n47), .CK(CLK), .RN(n205), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n46), .CK(CLK), .RN(n205), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n45), .CK(CLK), .RN(n207), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n44), .CK(CLK), .RN(n205), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n43), .CK(CLK), .RN(n205), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n42), .CK(CLK), .RN(n205), .Q(RdData[0]) );
  DFFRQX2M \regfile_reg[2][1]  ( .D(n67), .CK(CLK), .RN(n206), .Q(REG2[1]) );
  DFFRQX2M \regfile_reg[3][3]  ( .D(n77), .CK(CLK), .RN(n207), .Q(REG3[3]) );
  DFFRQX2M \regfile_reg[3][2]  ( .D(n76), .CK(CLK), .RN(n207), .Q(REG3[2]) );
  DFFRQX2M \regfile_reg[3][0]  ( .D(n74), .CK(CLK), .RN(n207), .Q(REG3[0]) );
  DFFSQX2M \regfile_reg[2][7]  ( .D(n73), .CK(CLK), .SN(n205), .Q(REG2[7]) );
  DFFSQX2M \regfile_reg[3][5]  ( .D(n79), .CK(CLK), .SN(n205), .Q(REG3[5]) );
  DFFSQX2M \regfile_reg[2][0]  ( .D(n66), .CK(CLK), .SN(n205), .Q(REG2[0]) );
  DFFRQX2M \regfile_reg[2][6]  ( .D(n72), .CK(CLK), .RN(n207), .Q(REG2[6]) );
  DFFRQX2M \regfile_reg[3][7]  ( .D(n81), .CK(CLK), .RN(n207), .Q(REG3[7]) );
  DFFRQX2M \regfile_reg[2][5]  ( .D(n71), .CK(CLK), .RN(n207), .Q(REG2[5]) );
  DFFRQX2M \regfile_reg[3][4]  ( .D(n78), .CK(CLK), .RN(n207), .Q(REG3[4]) );
  DFFRQX2M \regfile_reg[3][6]  ( .D(n80), .CK(CLK), .RN(n207), .Q(REG3[6]) );
  DFFRQX2M \regfile_reg[2][4]  ( .D(n70), .CK(CLK), .RN(n207), .Q(REG2[4]) );
  DFFRQX2M \regfile_reg[3][1]  ( .D(n75), .CK(CLK), .RN(n207), .Q(REG3[1]) );
  DFFRQX2M \regfile_reg[2][3]  ( .D(n69), .CK(CLK), .RN(n206), .Q(REG2[3]) );
  DFFRQX2M \regfile_reg[2][2]  ( .D(n68), .CK(CLK), .RN(n206), .Q(REG2[2]) );
  DFFRQX2M RdData_valid_reg ( .D(n41), .CK(CLK), .RN(n209), .Q(RdData_valid)
         );
  DFFRQX2M \regfile_reg[0][2]  ( .D(n52), .CK(CLK), .RN(n206), .Q(REG0[2]) );
  DFFRQX2M \regfile_reg[0][1]  ( .D(n51), .CK(CLK), .RN(n206), .Q(REG0[1]) );
  DFFRQX2M \regfile_reg[0][0]  ( .D(n50), .CK(CLK), .RN(n205), .Q(REG0[0]) );
  DFFRQX2M \regfile_reg[0][3]  ( .D(n53), .CK(CLK), .RN(n206), .Q(REG0[3]) );
  DFFRQX2M \regfile_reg[0][4]  ( .D(n54), .CK(CLK), .RN(n206), .Q(REG0[4]) );
  DFFRQX2M \regfile_reg[0][5]  ( .D(n55), .CK(CLK), .RN(n206), .Q(REG0[5]) );
  DFFRQX2M \regfile_reg[0][7]  ( .D(n57), .CK(CLK), .RN(RST), .Q(REG0[7]) );
  DFFRQX2M \regfile_reg[1][3]  ( .D(n61), .CK(CLK), .RN(n206), .Q(REG1[3]) );
  DFFRHQX2M \regfile_reg[1][1]  ( .D(n59), .CK(CLK), .RN(n206), .Q(REG1[1]) );
  DFFRHQX1M \regfile_reg[1][5]  ( .D(n63), .CK(CLK), .RN(n206), .Q(REG1[5]) );
  DFFRHQX1M \regfile_reg[1][4]  ( .D(n62), .CK(CLK), .RN(n206), .Q(REG1[4]) );
  DFFRHQX2M \regfile_reg[1][6]  ( .D(n64), .CK(CLK), .RN(n205), .Q(REG1[6]) );
  DFFRHQX1M \regfile_reg[0][6]  ( .D(n56), .CK(CLK), .RN(n206), .Q(REG0[6]) );
  DFFRQX4M \regfile_reg[1][2]  ( .D(n60), .CK(CLK), .RN(n206), .Q(REG1[2]) );
  DFFRHQX8M \regfile_reg[1][0]  ( .D(n58), .CK(CLK), .RN(n205), .Q(REG1[0]) );
  DFFRHQX8M \regfile_reg[1][7]  ( .D(n65), .CK(CLK), .RN(n205), .Q(REG1[7]) );
  NOR2X2M U3 ( .A(n222), .B(n221), .Y(n1) );
  MX2XLM U4 ( .A(REG0[5]), .B(WrData[5]), .S0(n220), .Y(n55) );
  MX2XLM U5 ( .A(REG0[6]), .B(WrData[6]), .S0(n220), .Y(n56) );
  NOR2X2M U6 ( .A(n204), .B(N13), .Y(n21) );
  INVX2M U7 ( .A(n200), .Y(n202) );
  INVX2M U8 ( .A(n200), .Y(n201) );
  INVX2M U9 ( .A(n198), .Y(n199) );
  INVX2M U10 ( .A(n15), .Y(n220) );
  INVX2M U11 ( .A(WrData[0]), .Y(n223) );
  BUFX2M U12 ( .A(n203), .Y(n200) );
  BUFX2M U13 ( .A(n204), .Y(n198) );
  NAND2BX2M U14 ( .AN(n222), .B(n17), .Y(n15) );
  INVX2M U15 ( .A(WrEn), .Y(n228) );
  INVX2M U16 ( .A(n19), .Y(n221) );
  INVX2M U17 ( .A(WrData[1]), .Y(n224) );
  INVX2M U18 ( .A(WrData[2]), .Y(n225) );
  INVX2M U19 ( .A(WrData[3]), .Y(n226) );
  INVX2M U20 ( .A(WrData[4]), .Y(n230) );
  INVX2M U21 ( .A(WrData[6]), .Y(n229) );
  INVX2M U22 ( .A(n14), .Y(n227) );
  BUFX2M U23 ( .A(n219), .Y(n205) );
  BUFX2M U24 ( .A(n219), .Y(n206) );
  BUFX2M U25 ( .A(n218), .Y(n207) );
  BUFX2M U26 ( .A(n218), .Y(n208) );
  BUFX2M U27 ( .A(n217), .Y(n209) );
  BUFX2M U28 ( .A(n217), .Y(n210) );
  BUFX2M U29 ( .A(n216), .Y(n211) );
  BUFX2M U30 ( .A(n216), .Y(n212) );
  BUFX2M U31 ( .A(n215), .Y(n213) );
  BUFX2M U32 ( .A(n215), .Y(n214) );
  NAND2X2M U33 ( .A(n33), .B(n16), .Y(n32) );
  NAND2X2M U34 ( .A(n31), .B(n16), .Y(n30) );
  NAND2X2M U35 ( .A(n21), .B(n17), .Y(n20) );
  NAND2X2M U36 ( .A(n21), .B(n19), .Y(n22) );
  NAND2X2M U37 ( .A(n24), .B(n17), .Y(n23) );
  NAND2X2M U38 ( .A(n24), .B(n19), .Y(n25) );
  NAND2X2M U39 ( .A(n27), .B(n17), .Y(n26) );
  NAND2X2M U40 ( .A(n27), .B(n19), .Y(n29) );
  NAND2X2M U41 ( .A(n31), .B(n21), .Y(n34) );
  NAND2X2M U42 ( .A(n33), .B(n21), .Y(n35) );
  NAND2X2M U43 ( .A(n31), .B(n24), .Y(n36) );
  NAND2X2M U44 ( .A(n33), .B(n24), .Y(n37) );
  NAND2X2M U45 ( .A(n31), .B(n27), .Y(n38) );
  NAND2X2M U46 ( .A(n33), .B(n27), .Y(n40) );
  NOR2X2M U47 ( .A(n228), .B(RdEn), .Y(n13) );
  AND2X2M U48 ( .A(n39), .B(n203), .Y(n31) );
  AND2X2M U49 ( .A(n39), .B(n201), .Y(n33) );
  AND2X2M U50 ( .A(n28), .B(n203), .Y(n17) );
  AND2X2M U51 ( .A(n28), .B(n201), .Y(n19) );
  NAND2X2M U52 ( .A(RdEn), .B(n228), .Y(n14) );
  INVX2M U53 ( .A(WrData[7]), .Y(n232) );
  INVX2M U54 ( .A(WrData[5]), .Y(n231) );
  INVX2M U55 ( .A(n16), .Y(n222) );
  BUFX2M U56 ( .A(RST), .Y(n218) );
  BUFX2M U57 ( .A(RST), .Y(n217) );
  BUFX2M U58 ( .A(RST), .Y(n216) );
  BUFX2M U59 ( .A(RST), .Y(n215) );
  BUFX2M U60 ( .A(RST), .Y(n219) );
  OAI2BB2X1M U61 ( .B0(n224), .B1(n20), .A0N(REG2[1]), .A1N(n20), .Y(n67) );
  OAI2BB2X1M U62 ( .B0(n225), .B1(n20), .A0N(REG2[2]), .A1N(n20), .Y(n68) );
  OAI2BB2X1M U63 ( .B0(n226), .B1(n20), .A0N(REG2[3]), .A1N(n20), .Y(n69) );
  OAI2BB2X1M U64 ( .B0(n230), .B1(n20), .A0N(REG2[4]), .A1N(n20), .Y(n70) );
  OAI2BB2X1M U65 ( .B0(n231), .B1(n20), .A0N(REG2[5]), .A1N(n20), .Y(n71) );
  OAI2BB2X1M U66 ( .B0(n229), .B1(n20), .A0N(REG2[6]), .A1N(n20), .Y(n72) );
  OAI2BB2X1M U67 ( .B0(n223), .B1(n22), .A0N(REG3[0]), .A1N(n22), .Y(n74) );
  OAI2BB2X1M U68 ( .B0(n224), .B1(n22), .A0N(REG3[1]), .A1N(n22), .Y(n75) );
  OAI2BB2X1M U69 ( .B0(n225), .B1(n22), .A0N(REG3[2]), .A1N(n22), .Y(n76) );
  OAI2BB2X1M U70 ( .B0(n226), .B1(n22), .A0N(REG3[3]), .A1N(n22), .Y(n77) );
  OAI2BB2X1M U71 ( .B0(n230), .B1(n22), .A0N(REG3[4]), .A1N(n22), .Y(n78) );
  OAI2BB2X1M U72 ( .B0(n229), .B1(n22), .A0N(REG3[6]), .A1N(n22), .Y(n80) );
  OAI2BB2X1M U73 ( .B0(n232), .B1(n22), .A0N(REG3[7]), .A1N(n22), .Y(n81) );
  OAI2BB2X1M U74 ( .B0(n223), .B1(n34), .A0N(\regfile[10][0] ), .A1N(n34), .Y(
        n130) );
  OAI2BB2X1M U75 ( .B0(n224), .B1(n34), .A0N(\regfile[10][1] ), .A1N(n34), .Y(
        n131) );
  OAI2BB2X1M U76 ( .B0(n225), .B1(n34), .A0N(\regfile[10][2] ), .A1N(n34), .Y(
        n132) );
  OAI2BB2X1M U77 ( .B0(n226), .B1(n34), .A0N(\regfile[10][3] ), .A1N(n34), .Y(
        n133) );
  OAI2BB2X1M U78 ( .B0(n230), .B1(n34), .A0N(\regfile[10][4] ), .A1N(n34), .Y(
        n134) );
  OAI2BB2X1M U79 ( .B0(n231), .B1(n34), .A0N(\regfile[10][5] ), .A1N(n34), .Y(
        n135) );
  OAI2BB2X1M U80 ( .B0(n229), .B1(n34), .A0N(\regfile[10][6] ), .A1N(n34), .Y(
        n136) );
  OAI2BB2X1M U81 ( .B0(n232), .B1(n34), .A0N(\regfile[10][7] ), .A1N(n34), .Y(
        n137) );
  OAI2BB2X1M U82 ( .B0(n223), .B1(n35), .A0N(\regfile[11][0] ), .A1N(n35), .Y(
        n138) );
  OAI2BB2X1M U83 ( .B0(n224), .B1(n35), .A0N(\regfile[11][1] ), .A1N(n35), .Y(
        n139) );
  OAI2BB2X1M U84 ( .B0(n225), .B1(n35), .A0N(\regfile[11][2] ), .A1N(n35), .Y(
        n140) );
  OAI2BB2X1M U85 ( .B0(n226), .B1(n35), .A0N(\regfile[11][3] ), .A1N(n35), .Y(
        n141) );
  OAI2BB2X1M U86 ( .B0(n230), .B1(n35), .A0N(\regfile[11][4] ), .A1N(n35), .Y(
        n142) );
  OAI2BB2X1M U87 ( .B0(n231), .B1(n35), .A0N(\regfile[11][5] ), .A1N(n35), .Y(
        n143) );
  OAI2BB2X1M U88 ( .B0(n229), .B1(n35), .A0N(\regfile[11][6] ), .A1N(n35), .Y(
        n144) );
  OAI2BB2X1M U89 ( .B0(n232), .B1(n35), .A0N(\regfile[11][7] ), .A1N(n35), .Y(
        n145) );
  OAI2BB2X1M U90 ( .B0(n223), .B1(n30), .A0N(\regfile[8][0] ), .A1N(n30), .Y(
        n114) );
  OAI2BB2X1M U91 ( .B0(n224), .B1(n30), .A0N(\regfile[8][1] ), .A1N(n30), .Y(
        n115) );
  OAI2BB2X1M U92 ( .B0(n225), .B1(n30), .A0N(\regfile[8][2] ), .A1N(n30), .Y(
        n116) );
  OAI2BB2X1M U93 ( .B0(n226), .B1(n30), .A0N(\regfile[8][3] ), .A1N(n30), .Y(
        n117) );
  OAI2BB2X1M U94 ( .B0(n230), .B1(n30), .A0N(\regfile[8][4] ), .A1N(n30), .Y(
        n118) );
  OAI2BB2X1M U95 ( .B0(n231), .B1(n30), .A0N(\regfile[8][5] ), .A1N(n30), .Y(
        n119) );
  OAI2BB2X1M U96 ( .B0(n229), .B1(n30), .A0N(\regfile[8][6] ), .A1N(n30), .Y(
        n120) );
  OAI2BB2X1M U97 ( .B0(n232), .B1(n30), .A0N(\regfile[8][7] ), .A1N(n30), .Y(
        n121) );
  OAI2BB2X1M U98 ( .B0(n223), .B1(n32), .A0N(\regfile[9][0] ), .A1N(n32), .Y(
        n122) );
  OAI2BB2X1M U99 ( .B0(n224), .B1(n32), .A0N(\regfile[9][1] ), .A1N(n32), .Y(
        n123) );
  OAI2BB2X1M U100 ( .B0(n225), .B1(n32), .A0N(\regfile[9][2] ), .A1N(n32), .Y(
        n124) );
  OAI2BB2X1M U101 ( .B0(n226), .B1(n32), .A0N(\regfile[9][3] ), .A1N(n32), .Y(
        n125) );
  OAI2BB2X1M U102 ( .B0(n230), .B1(n32), .A0N(\regfile[9][4] ), .A1N(n32), .Y(
        n126) );
  OAI2BB2X1M U103 ( .B0(n231), .B1(n32), .A0N(\regfile[9][5] ), .A1N(n32), .Y(
        n127) );
  OAI2BB2X1M U104 ( .B0(n229), .B1(n32), .A0N(\regfile[9][6] ), .A1N(n32), .Y(
        n128) );
  OAI2BB2X1M U105 ( .B0(n232), .B1(n32), .A0N(\regfile[9][7] ), .A1N(n32), .Y(
        n129) );
  OAI2BB2X1M U106 ( .B0(n223), .B1(n36), .A0N(\regfile[12][0] ), .A1N(n36), 
        .Y(n146) );
  OAI2BB2X1M U107 ( .B0(n224), .B1(n36), .A0N(\regfile[12][1] ), .A1N(n36), 
        .Y(n147) );
  OAI2BB2X1M U108 ( .B0(n225), .B1(n36), .A0N(\regfile[12][2] ), .A1N(n36), 
        .Y(n148) );
  OAI2BB2X1M U109 ( .B0(n226), .B1(n36), .A0N(\regfile[12][3] ), .A1N(n36), 
        .Y(n149) );
  OAI2BB2X1M U110 ( .B0(n230), .B1(n36), .A0N(\regfile[12][4] ), .A1N(n36), 
        .Y(n150) );
  OAI2BB2X1M U111 ( .B0(n231), .B1(n36), .A0N(\regfile[12][5] ), .A1N(n36), 
        .Y(n151) );
  OAI2BB2X1M U112 ( .B0(n229), .B1(n36), .A0N(\regfile[12][6] ), .A1N(n36), 
        .Y(n152) );
  OAI2BB2X1M U113 ( .B0(n232), .B1(n36), .A0N(\regfile[12][7] ), .A1N(n36), 
        .Y(n153) );
  OAI2BB2X1M U114 ( .B0(n223), .B1(n37), .A0N(\regfile[13][0] ), .A1N(n37), 
        .Y(n154) );
  OAI2BB2X1M U115 ( .B0(n224), .B1(n37), .A0N(\regfile[13][1] ), .A1N(n37), 
        .Y(n155) );
  OAI2BB2X1M U116 ( .B0(n225), .B1(n37), .A0N(\regfile[13][2] ), .A1N(n37), 
        .Y(n156) );
  OAI2BB2X1M U117 ( .B0(n226), .B1(n37), .A0N(\regfile[13][3] ), .A1N(n37), 
        .Y(n157) );
  OAI2BB2X1M U118 ( .B0(n230), .B1(n37), .A0N(\regfile[13][4] ), .A1N(n37), 
        .Y(n158) );
  OAI2BB2X1M U119 ( .B0(n231), .B1(n37), .A0N(\regfile[13][5] ), .A1N(n37), 
        .Y(n159) );
  OAI2BB2X1M U120 ( .B0(n229), .B1(n37), .A0N(\regfile[13][6] ), .A1N(n37), 
        .Y(n160) );
  OAI2BB2X1M U121 ( .B0(n232), .B1(n37), .A0N(\regfile[13][7] ), .A1N(n37), 
        .Y(n161) );
  OAI2BB2X1M U122 ( .B0(n223), .B1(n38), .A0N(\regfile[14][0] ), .A1N(n38), 
        .Y(n162) );
  OAI2BB2X1M U123 ( .B0(n224), .B1(n38), .A0N(\regfile[14][1] ), .A1N(n38), 
        .Y(n163) );
  OAI2BB2X1M U124 ( .B0(n225), .B1(n38), .A0N(\regfile[14][2] ), .A1N(n38), 
        .Y(n164) );
  OAI2BB2X1M U125 ( .B0(n226), .B1(n38), .A0N(\regfile[14][3] ), .A1N(n38), 
        .Y(n165) );
  OAI2BB2X1M U126 ( .B0(n230), .B1(n38), .A0N(\regfile[14][4] ), .A1N(n38), 
        .Y(n166) );
  OAI2BB2X1M U127 ( .B0(n231), .B1(n38), .A0N(\regfile[14][5] ), .A1N(n38), 
        .Y(n167) );
  OAI2BB2X1M U128 ( .B0(n229), .B1(n38), .A0N(\regfile[14][6] ), .A1N(n38), 
        .Y(n168) );
  OAI2BB2X1M U129 ( .B0(n232), .B1(n38), .A0N(\regfile[14][7] ), .A1N(n38), 
        .Y(n169) );
  OAI2BB2X1M U130 ( .B0(n223), .B1(n40), .A0N(\regfile[15][0] ), .A1N(n40), 
        .Y(n170) );
  OAI2BB2X1M U131 ( .B0(n224), .B1(n40), .A0N(\regfile[15][1] ), .A1N(n40), 
        .Y(n171) );
  OAI2BB2X1M U132 ( .B0(n225), .B1(n40), .A0N(\regfile[15][2] ), .A1N(n40), 
        .Y(n172) );
  OAI2BB2X1M U133 ( .B0(n226), .B1(n40), .A0N(\regfile[15][3] ), .A1N(n40), 
        .Y(n173) );
  OAI2BB2X1M U134 ( .B0(n230), .B1(n40), .A0N(\regfile[15][4] ), .A1N(n40), 
        .Y(n174) );
  OAI2BB2X1M U135 ( .B0(n231), .B1(n40), .A0N(\regfile[15][5] ), .A1N(n40), 
        .Y(n175) );
  OAI2BB2X1M U136 ( .B0(n229), .B1(n40), .A0N(\regfile[15][6] ), .A1N(n40), 
        .Y(n176) );
  OAI2BB2X1M U137 ( .B0(n232), .B1(n40), .A0N(\regfile[15][7] ), .A1N(n40), 
        .Y(n177) );
  OAI2BB2X1M U138 ( .B0(n223), .B1(n23), .A0N(\regfile[4][0] ), .A1N(n23), .Y(
        n82) );
  OAI2BB2X1M U139 ( .B0(n224), .B1(n23), .A0N(\regfile[4][1] ), .A1N(n23), .Y(
        n83) );
  OAI2BB2X1M U140 ( .B0(n225), .B1(n23), .A0N(\regfile[4][2] ), .A1N(n23), .Y(
        n84) );
  OAI2BB2X1M U141 ( .B0(n226), .B1(n23), .A0N(\regfile[4][3] ), .A1N(n23), .Y(
        n85) );
  OAI2BB2X1M U142 ( .B0(n230), .B1(n23), .A0N(\regfile[4][4] ), .A1N(n23), .Y(
        n86) );
  OAI2BB2X1M U143 ( .B0(n231), .B1(n23), .A0N(\regfile[4][5] ), .A1N(n23), .Y(
        n87) );
  OAI2BB2X1M U144 ( .B0(n229), .B1(n23), .A0N(\regfile[4][6] ), .A1N(n23), .Y(
        n88) );
  OAI2BB2X1M U145 ( .B0(n232), .B1(n23), .A0N(\regfile[4][7] ), .A1N(n23), .Y(
        n89) );
  OAI2BB2X1M U146 ( .B0(n223), .B1(n25), .A0N(\regfile[5][0] ), .A1N(n25), .Y(
        n90) );
  OAI2BB2X1M U147 ( .B0(n224), .B1(n25), .A0N(\regfile[5][1] ), .A1N(n25), .Y(
        n91) );
  OAI2BB2X1M U148 ( .B0(n225), .B1(n25), .A0N(\regfile[5][2] ), .A1N(n25), .Y(
        n92) );
  OAI2BB2X1M U149 ( .B0(n226), .B1(n25), .A0N(\regfile[5][3] ), .A1N(n25), .Y(
        n93) );
  OAI2BB2X1M U150 ( .B0(n230), .B1(n25), .A0N(\regfile[5][4] ), .A1N(n25), .Y(
        n94) );
  OAI2BB2X1M U151 ( .B0(n231), .B1(n25), .A0N(\regfile[5][5] ), .A1N(n25), .Y(
        n95) );
  OAI2BB2X1M U152 ( .B0(n229), .B1(n25), .A0N(\regfile[5][6] ), .A1N(n25), .Y(
        n96) );
  OAI2BB2X1M U153 ( .B0(n232), .B1(n25), .A0N(\regfile[5][7] ), .A1N(n25), .Y(
        n97) );
  OAI2BB2X1M U154 ( .B0(n223), .B1(n26), .A0N(\regfile[6][0] ), .A1N(n26), .Y(
        n98) );
  OAI2BB2X1M U155 ( .B0(n224), .B1(n26), .A0N(\regfile[6][1] ), .A1N(n26), .Y(
        n99) );
  OAI2BB2X1M U156 ( .B0(n225), .B1(n26), .A0N(\regfile[6][2] ), .A1N(n26), .Y(
        n100) );
  OAI2BB2X1M U157 ( .B0(n226), .B1(n26), .A0N(\regfile[6][3] ), .A1N(n26), .Y(
        n101) );
  OAI2BB2X1M U158 ( .B0(n230), .B1(n26), .A0N(\regfile[6][4] ), .A1N(n26), .Y(
        n102) );
  OAI2BB2X1M U159 ( .B0(n231), .B1(n26), .A0N(\regfile[6][5] ), .A1N(n26), .Y(
        n103) );
  OAI2BB2X1M U160 ( .B0(n229), .B1(n26), .A0N(\regfile[6][6] ), .A1N(n26), .Y(
        n104) );
  OAI2BB2X1M U161 ( .B0(n232), .B1(n26), .A0N(\regfile[6][7] ), .A1N(n26), .Y(
        n105) );
  OAI2BB2X1M U162 ( .B0(n223), .B1(n29), .A0N(\regfile[7][0] ), .A1N(n29), .Y(
        n106) );
  OAI2BB2X1M U163 ( .B0(n224), .B1(n29), .A0N(\regfile[7][1] ), .A1N(n29), .Y(
        n107) );
  OAI2BB2X1M U164 ( .B0(n225), .B1(n29), .A0N(\regfile[7][2] ), .A1N(n29), .Y(
        n108) );
  OAI2BB2X1M U165 ( .B0(n226), .B1(n29), .A0N(\regfile[7][3] ), .A1N(n29), .Y(
        n109) );
  OAI2BB2X1M U166 ( .B0(n230), .B1(n29), .A0N(\regfile[7][4] ), .A1N(n29), .Y(
        n110) );
  OAI2BB2X1M U167 ( .B0(n231), .B1(n29), .A0N(\regfile[7][5] ), .A1N(n29), .Y(
        n111) );
  OAI2BB2X1M U168 ( .B0(n229), .B1(n29), .A0N(\regfile[7][6] ), .A1N(n29), .Y(
        n112) );
  OAI2BB2X1M U169 ( .B0(n232), .B1(n29), .A0N(\regfile[7][7] ), .A1N(n29), .Y(
        n113) );
  NOR2BX2M U170 ( .AN(n13), .B(N14), .Y(n28) );
  OAI2BB2X1M U171 ( .B0(n223), .B1(n20), .A0N(REG2[0]), .A1N(n20), .Y(n66) );
  OAI2BB2X1M U172 ( .B0(n232), .B1(n20), .A0N(REG2[7]), .A1N(n20), .Y(n73) );
  OAI2BB2X1M U173 ( .B0(n231), .B1(n22), .A0N(REG3[5]), .A1N(n22), .Y(n79) );
  OAI2BB2X1M U174 ( .B0(n15), .B1(n223), .A0N(REG0[0]), .A1N(n15), .Y(n50) );
  OAI2BB2X1M U175 ( .B0(n15), .B1(n224), .A0N(REG0[1]), .A1N(n15), .Y(n51) );
  OAI2BB2X1M U176 ( .B0(n15), .B1(n225), .A0N(REG0[2]), .A1N(n15), .Y(n52) );
  OAI2BB2X1M U177 ( .B0(n15), .B1(n226), .A0N(REG0[3]), .A1N(n15), .Y(n53) );
  OAI2BB2X1M U178 ( .B0(n15), .B1(n230), .A0N(REG0[4]), .A1N(n15), .Y(n54) );
  MX2XLM U179 ( .A(REG1[1]), .B(WrData[1]), .S0(n1), .Y(n59) );
  MX2XLM U180 ( .A(REG1[2]), .B(WrData[2]), .S0(n1), .Y(n60) );
  MX2XLM U181 ( .A(REG1[3]), .B(WrData[3]), .S0(n1), .Y(n61) );
  MX2XLM U182 ( .A(REG1[4]), .B(WrData[4]), .S0(n1), .Y(n62) );
  MX2XLM U183 ( .A(REG1[5]), .B(WrData[5]), .S0(n1), .Y(n63) );
  MX2XLM U184 ( .A(REG1[0]), .B(WrData[0]), .S0(n1), .Y(n58) );
  MX2XLM U185 ( .A(REG1[6]), .B(WrData[6]), .S0(n1), .Y(n64) );
  AND2X2M U186 ( .A(N14), .B(n13), .Y(n39) );
  MX4XLM U187 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n202), 
        .S1(N12), .Y(n9) );
  MX4X1M U188 ( .A(\regfile[4][1] ), .B(\regfile[5][1] ), .C(\regfile[6][1] ), 
        .D(\regfile[7][1] ), .S0(n202), .S1(N12), .Y(n8) );
  MX4X1M U189 ( .A(\regfile[4][2] ), .B(\regfile[5][2] ), .C(\regfile[6][2] ), 
        .D(\regfile[7][2] ), .S0(n202), .S1(n199), .Y(n12) );
  MX4X1M U190 ( .A(\regfile[4][3] ), .B(\regfile[5][3] ), .C(\regfile[6][3] ), 
        .D(\regfile[7][3] ), .S0(n202), .S1(n199), .Y(n180) );
  MX4X1M U191 ( .A(\regfile[4][4] ), .B(\regfile[5][4] ), .C(\regfile[6][4] ), 
        .D(\regfile[7][4] ), .S0(n202), .S1(n199), .Y(n184) );
  MX4X1M U192 ( .A(\regfile[4][5] ), .B(\regfile[5][5] ), .C(\regfile[6][5] ), 
        .D(\regfile[7][5] ), .S0(n201), .S1(N12), .Y(n188) );
  MX4X1M U193 ( .A(\regfile[12][0] ), .B(\regfile[13][0] ), .C(
        \regfile[14][0] ), .D(\regfile[15][0] ), .S0(n201), .S1(n199), .Y(n2)
         );
  MX4X1M U194 ( .A(\regfile[12][2] ), .B(\regfile[13][2] ), .C(
        \regfile[14][2] ), .D(\regfile[15][2] ), .S0(n202), .S1(n199), .Y(n10)
         );
  MX4X1M U195 ( .A(\regfile[12][3] ), .B(\regfile[13][3] ), .C(
        \regfile[14][3] ), .D(\regfile[15][3] ), .S0(n202), .S1(n199), .Y(n178) );
  MX4X1M U196 ( .A(\regfile[12][4] ), .B(\regfile[13][4] ), .C(
        \regfile[14][4] ), .D(\regfile[15][4] ), .S0(n202), .S1(n199), .Y(n182) );
  MX4X1M U197 ( .A(\regfile[12][5] ), .B(\regfile[13][5] ), .C(
        \regfile[14][5] ), .D(\regfile[15][5] ), .S0(n201), .S1(N12), .Y(n186)
         );
  MX4X1M U198 ( .A(\regfile[12][6] ), .B(\regfile[13][6] ), .C(
        \regfile[14][6] ), .D(\regfile[15][6] ), .S0(n201), .S1(N12), .Y(n190)
         );
  MX4X1M U199 ( .A(\regfile[12][7] ), .B(\regfile[13][7] ), .C(
        \regfile[14][7] ), .D(\regfile[15][7] ), .S0(n201), .S1(N12), .Y(n194)
         );
  AO22X1M U200 ( .A0(N43), .A1(n227), .B0(RdData[0]), .B1(n14), .Y(n42) );
  MX4X1M U201 ( .A(n5), .B(n3), .C(n4), .D(n2), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U202 ( .A(\regfile[8][0] ), .B(\regfile[9][0] ), .C(\regfile[10][0] ), 
        .D(\regfile[11][0] ), .S0(n201), .S1(N12), .Y(n3) );
  MX4X1M U203 ( .A(\regfile[4][0] ), .B(\regfile[5][0] ), .C(\regfile[6][0] ), 
        .D(\regfile[7][0] ), .S0(n201), .S1(N12), .Y(n4) );
  AO22X1M U204 ( .A0(N42), .A1(n227), .B0(RdData[1]), .B1(n14), .Y(n43) );
  MX4X1M U205 ( .A(n9), .B(n7), .C(n8), .D(n6), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U206 ( .A(\regfile[8][1] ), .B(\regfile[9][1] ), .C(\regfile[10][1] ), 
        .D(\regfile[11][1] ), .S0(n201), .S1(N12), .Y(n7) );
  MX4X1M U207 ( .A(\regfile[12][1] ), .B(\regfile[13][1] ), .C(
        \regfile[14][1] ), .D(\regfile[15][1] ), .S0(n201), .S1(n199), .Y(n6)
         );
  AO22X1M U208 ( .A0(N41), .A1(n227), .B0(RdData[2]), .B1(n14), .Y(n44) );
  MX4X1M U209 ( .A(n18), .B(n11), .C(n12), .D(n10), .S0(N14), .S1(N13), .Y(N41) );
  MX4XLM U210 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n202), 
        .S1(n199), .Y(n18) );
  MX4X1M U211 ( .A(\regfile[8][2] ), .B(\regfile[9][2] ), .C(\regfile[10][2] ), 
        .D(\regfile[11][2] ), .S0(n202), .S1(n199), .Y(n11) );
  AO22X1M U212 ( .A0(N40), .A1(n227), .B0(RdData[3]), .B1(n14), .Y(n45) );
  MX4X1M U213 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4XLM U214 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n202), 
        .S1(n199), .Y(n181) );
  MX4X1M U215 ( .A(\regfile[8][3] ), .B(\regfile[9][3] ), .C(\regfile[10][3] ), 
        .D(\regfile[11][3] ), .S0(n202), .S1(n199), .Y(n179) );
  AO22X1M U216 ( .A0(N39), .A1(n227), .B0(RdData[4]), .B1(n14), .Y(n46) );
  MX4X1M U217 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4XLM U218 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n201), 
        .S1(n199), .Y(n185) );
  MX4X1M U219 ( .A(\regfile[8][4] ), .B(\regfile[9][4] ), .C(\regfile[10][4] ), 
        .D(\regfile[11][4] ), .S0(n202), .S1(n199), .Y(n183) );
  AO22X1M U220 ( .A0(N38), .A1(n227), .B0(RdData[5]), .B1(n14), .Y(n47) );
  MX4X1M U221 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4XLM U222 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n201), 
        .S1(N12), .Y(n189) );
  MX4X1M U223 ( .A(\regfile[8][5] ), .B(\regfile[9][5] ), .C(\regfile[10][5] ), 
        .D(\regfile[11][5] ), .S0(N11), .S1(N12), .Y(n187) );
  AO22X1M U224 ( .A0(N37), .A1(n227), .B0(RdData[6]), .B1(n14), .Y(n48) );
  MX4X1M U225 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U226 ( .A(\regfile[8][6] ), .B(\regfile[9][6] ), .C(\regfile[10][6] ), 
        .D(\regfile[11][6] ), .S0(N11), .S1(N12), .Y(n191) );
  MX4X1M U227 ( .A(\regfile[4][6] ), .B(\regfile[5][6] ), .C(\regfile[6][6] ), 
        .D(\regfile[7][6] ), .S0(n202), .S1(N12), .Y(n192) );
  AO22X1M U228 ( .A0(N36), .A1(n227), .B0(RdData[7]), .B1(n14), .Y(n49) );
  MX4X1M U229 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U230 ( .A(\regfile[8][7] ), .B(\regfile[9][7] ), .C(\regfile[10][7] ), 
        .D(\regfile[11][7] ), .S0(N11), .S1(N12), .Y(n195) );
  MX4X1M U231 ( .A(\regfile[4][7] ), .B(\regfile[5][7] ), .C(\regfile[6][7] ), 
        .D(\regfile[7][7] ), .S0(N11), .S1(N12), .Y(n196) );
  AO21XLM U232 ( .A0(RdData_valid), .A1(n13), .B0(n227), .Y(n41) );
  INVX2M U233 ( .A(N11), .Y(n203) );
  NOR2X2M U234 ( .A(n199), .B(N13), .Y(n16) );
  AND2X2M U235 ( .A(N13), .B(n204), .Y(n24) );
  AND2X2M U236 ( .A(N13), .B(N12), .Y(n27) );
  INVX2M U237 ( .A(N12), .Y(n204) );
  MX4XLM U238 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n201), 
        .S1(N12), .Y(n197) );
  MX4X1M U239 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(N11), 
        .S1(N12), .Y(n193) );
  MX4XLM U240 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n201), 
        .S1(N12), .Y(n5) );
  MX2XLM U241 ( .A(REG1[7]), .B(WrData[7]), .S0(n1), .Y(n65) );
  MX2XLM U242 ( .A(REG0[7]), .B(WrData[7]), .S0(n220), .Y(n57) );
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

  OAI31X1M U1 ( .A0(n15), .A1(n1), .A2(n16), .B0(n14), .Y(n3) );
  INVX2M U2 ( .A(n14), .Y(n17) );
  OAI2BB2X1M U3 ( .B0(n12), .B1(n17), .A0N(in0[1]), .A1N(n3), .Y(out[1]) );
  AOI222X1M U4 ( .A0(in1[1]), .A1(n1), .B0(in3[1]), .B1(n15), .C0(in2[1]), 
        .C1(n16), .Y(n12) );
  OAI2BB2X1M U5 ( .B0(n8), .B1(n17), .A0N(in0[5]), .A1N(n3), .Y(out[5]) );
  AOI222X1M U6 ( .A0(in1[5]), .A1(n1), .B0(in3[5]), .B1(n15), .C0(in2[5]), 
        .C1(n16), .Y(n8) );
  OAI2BB2X1M U7 ( .B0(n7), .B1(n17), .A0N(in0[6]), .A1N(n3), .Y(out[6]) );
  AOI222X1M U8 ( .A0(in1[6]), .A1(n1), .B0(in3[6]), .B1(n15), .C0(in2[6]), 
        .C1(n16), .Y(n7) );
  OAI2BB2X1M U9 ( .B0(n9), .B1(n17), .A0N(in0[4]), .A1N(n3), .Y(out[4]) );
  AOI222X1M U10 ( .A0(in1[4]), .A1(n1), .B0(in3[4]), .B1(n15), .C0(in2[4]), 
        .C1(n16), .Y(n9) );
  OAI2BB2X1M U11 ( .B0(n2), .B1(n17), .A0N(in0[7]), .A1N(n3), .Y(out[7]) );
  AOI222X1M U12 ( .A0(in1[7]), .A1(n1), .B0(in3[7]), .B1(n15), .C0(in2[7]), 
        .C1(n16), .Y(n2) );
  OAI2BB2X1M U13 ( .B0(n11), .B1(n17), .A0N(in0[2]), .A1N(n3), .Y(out[2]) );
  AOI222X1M U14 ( .A0(in1[2]), .A1(n1), .B0(in3[2]), .B1(n15), .C0(in2[2]), 
        .C1(n16), .Y(n11) );
  OAI2BB2X1M U15 ( .B0(n10), .B1(n17), .A0N(in0[3]), .A1N(n3), .Y(out[3]) );
  AOI222X1M U16 ( .A0(in1[3]), .A1(n1), .B0(in3[3]), .B1(n15), .C0(in2[3]), 
        .C1(n16), .Y(n10) );
  NOR2X2M U17 ( .A(sel[1]), .B(sel[0]), .Y(n14) );
  OAI2BB2X1M U18 ( .B0(n13), .B1(n17), .A0N(in0[0]), .A1N(n3), .Y(out[0]) );
  AOI222X1M U19 ( .A0(in1[0]), .A1(n1), .B0(in3[0]), .B1(n15), .C0(in2[0]), 
        .C1(n16), .Y(n13) );
  BUFX2M U20 ( .A(n4), .Y(n1) );
  NOR4BX1M U21 ( .AN(sel[4]), .B(sel[2]), .C(sel[3]), .D(sel[5]), .Y(n4) );
  BUFX2M U22 ( .A(n6), .Y(n16) );
  NOR4BX1M U23 ( .AN(sel[3]), .B(sel[2]), .C(sel[4]), .D(sel[5]), .Y(n6) );
  BUFX2M U24 ( .A(n5), .Y(n15) );
  NOR4BX1M U25 ( .AN(sel[2]), .B(sel[3]), .C(sel[4]), .D(sel[5]), .Y(n5) );
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

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module clock_divider_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk
 );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   o_div_clk_reg, flag, N9, N12, N16, N17, N18, N19, N20, N21, N22, N36,
         N37, N38, N39, N40, N41, N42, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46;
  wire   [7:0] half_toggle;
  wire   [7:0] half_toggle_p1;
  wire   [6:0] counter;

  clock_divider_0_DW01_inc_0 add_39 ( .A(counter), .SUM({N22, N21, N20, N19, 
        N18, N17, N16}) );
  clock_divider_0_DW01_inc_1 add_18 ( .A(half_toggle), .SUM(half_toggle_p1) );
  DFFRX1M flag_reg ( .D(n25), .CK(i_ref_clk), .RN(i_rst_n), .Q(flag), .QN(n45)
         );
  DFFRX1M \counter_reg[6]  ( .D(N42), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]), .QN(n30) );
  DFFRX1M \counter_reg[5]  ( .D(N41), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]), .QN(n42) );
  DFFRX1M \counter_reg[4]  ( .D(N40), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]), .QN(n29) );
  DFFRX1M \counter_reg[3]  ( .D(N39), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]), .QN(n28) );
  DFFRX1M \counter_reg[2]  ( .D(N38), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]), .QN(n27) );
  DFFRX1M \counter_reg[1]  ( .D(N37), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]), .QN(n26) );
  DFFRX1M \counter_reg[0]  ( .D(N36), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRX1M o_div_clk_reg_reg ( .D(n24), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        o_div_clk_reg), .QN(n46) );
  MX2X2M U3 ( .A(i_ref_clk), .B(o_div_clk_reg), .S0(n44), .Y(o_div_clk) );
  INVX2M U4 ( .A(n18), .Y(n43) );
  AND2X2M U5 ( .A(N17), .B(n43), .Y(N37) );
  AND2X2M U6 ( .A(N18), .B(n43), .Y(N38) );
  AND2X2M U7 ( .A(N19), .B(n43), .Y(N39) );
  AND2X2M U8 ( .A(N20), .B(n43), .Y(N40) );
  AND2X2M U9 ( .A(N21), .B(n43), .Y(N41) );
  NOR2X2M U10 ( .A(n19), .B(n17), .Y(n25) );
  XNOR2X2M U11 ( .A(n20), .B(n45), .Y(n19) );
  INVX2M U12 ( .A(n17), .Y(n44) );
  INVX2M U13 ( .A(half_toggle[4]), .Y(n15) );
  INVX2M U14 ( .A(half_toggle[5]), .Y(n16) );
  INVX2M U15 ( .A(half_toggle_p1[4]), .Y(n40) );
  INVX2M U16 ( .A(half_toggle_p1[5]), .Y(n41) );
  INVX2M U17 ( .A(half_toggle[3]), .Y(n14) );
  INVX2M U18 ( .A(half_toggle[2]), .Y(n13) );
  OAI2B11X2M U19 ( .A1N(N9), .A0(i_div_ratio[0]), .B0(n20), .C0(n44), .Y(n18)
         );
  INVX2M U20 ( .A(half_toggle_p1[3]), .Y(n39) );
  INVX2M U21 ( .A(half_toggle_p1[2]), .Y(n38) );
  OAI32X1M U22 ( .A0(n17), .A1(o_div_clk_reg), .A2(n43), .B0(n18), .B1(n46), 
        .Y(n24) );
  NAND2BX2M U23 ( .AN(n21), .B(i_div_ratio[0]), .Y(n20) );
  AOI22X1M U24 ( .A0(N12), .A1(n45), .B0(flag), .B1(N9), .Y(n21) );
  AND2X2M U25 ( .A(N22), .B(n43), .Y(N42) );
  AND2X2M U26 ( .A(N16), .B(n43), .Y(N36) );
  OAI2BB1X2M U27 ( .A0N(n22), .A1N(n23), .B0(i_clk_en), .Y(n17) );
  NOR3X2M U28 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n22) );
  NOR4X1M U29 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n23) );
  INVX2M U30 ( .A(i_div_ratio[1]), .Y(half_toggle[0]) );
  NAND2BX1M U31 ( .AN(i_div_ratio[2]), .B(half_toggle[0]), .Y(n1) );
  OAI2BB1X1M U32 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        half_toggle[1]) );
  OR2X1M U33 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U34 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(half_toggle[2])
         );
  OR2X1M U35 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U36 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(half_toggle[3])
         );
  OR2X1M U37 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U38 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(half_toggle[4])
         );
  XNOR2X1M U39 ( .A(i_div_ratio[6]), .B(n4), .Y(half_toggle[5]) );
  NOR3X1M U40 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(
        half_toggle[7]) );
  OAI21X1M U41 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U42 ( .AN(half_toggle[7]), .B(n5), .Y(half_toggle[6]) );
  AOI2BB1X1M U43 ( .A0N(half_toggle[1]), .A1N(n26), .B0(counter[0]), .Y(n6) );
  AOI222X1M U44 ( .A0(half_toggle[2]), .A1(n27), .B0(n6), .B1(half_toggle[0]), 
        .C0(half_toggle[1]), .C1(n26), .Y(n7) );
  AOI221XLM U45 ( .A0(counter[3]), .A1(n14), .B0(counter[2]), .B1(n13), .C0(n7), .Y(n8) );
  AOI221XLM U46 ( .A0(half_toggle[4]), .A1(n29), .B0(half_toggle[3]), .B1(n28), 
        .C0(n8), .Y(n9) );
  AOI221XLM U47 ( .A0(counter[5]), .A1(n16), .B0(counter[4]), .B1(n15), .C0(n9), .Y(n10) );
  AOI221XLM U48 ( .A0(half_toggle[6]), .A1(n30), .B0(half_toggle[5]), .B1(n42), 
        .C0(n10), .Y(n11) );
  AOI2BB1X1M U49 ( .A0N(half_toggle[6]), .A1N(n30), .B0(n11), .Y(n12) );
  NOR2X1M U50 ( .A(half_toggle[7]), .B(n12), .Y(N9) );
  AOI2BB1X1M U51 ( .A0N(half_toggle_p1[1]), .A1N(n26), .B0(counter[0]), .Y(n31) );
  AOI222X1M U52 ( .A0(half_toggle_p1[2]), .A1(n27), .B0(n31), .B1(
        half_toggle_p1[0]), .C0(half_toggle_p1[1]), .C1(n26), .Y(n32) );
  AOI221XLM U53 ( .A0(counter[3]), .A1(n39), .B0(counter[2]), .B1(n38), .C0(
        n32), .Y(n33) );
  AOI221XLM U54 ( .A0(half_toggle_p1[4]), .A1(n29), .B0(half_toggle_p1[3]), 
        .B1(n28), .C0(n33), .Y(n34) );
  AOI221XLM U55 ( .A0(counter[5]), .A1(n41), .B0(counter[4]), .B1(n40), .C0(
        n34), .Y(n35) );
  AOI221XLM U56 ( .A0(half_toggle_p1[6]), .A1(n30), .B0(half_toggle_p1[5]), 
        .B1(n42), .C0(n35), .Y(n36) );
  AOI2BB1X1M U57 ( .A0N(half_toggle_p1[6]), .A1N(n30), .B0(n36), .Y(n37) );
  NOR2X1M U58 ( .A(half_toggle_p1[7]), .B(n37), .Y(N12) );
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

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module clock_divider_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk
 );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   o_div_clk_reg, flag, N9, N12, N16, N17, N18, N19, N20, N21, N22, N36,
         N37, N38, N39, N40, N41, N42, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55;
  wire   [7:0] half_toggle;
  wire   [7:0] half_toggle_p1;
  wire   [6:0] counter;

  clock_divider_1_DW01_inc_0 add_39 ( .A(counter), .SUM({N22, N21, N20, N19, 
        N18, N17, N16}) );
  clock_divider_1_DW01_inc_1 add_18 ( .A(half_toggle), .SUM(half_toggle_p1) );
  DFFRQX2M o_div_clk_reg_reg ( .D(n48), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        o_div_clk_reg) );
  DFFRQX2M flag_reg ( .D(n47), .CK(i_ref_clk), .RN(i_rst_n), .Q(flag) );
  DFFRQX2M \counter_reg[0]  ( .D(N36), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[6]  ( .D(N42), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[5]  ( .D(N41), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[3]  ( .D(N39), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[4]  ( .D(N40), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[2]  ( .D(N38), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N37), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  INVX2M U3 ( .A(n54), .Y(n43) );
  MX2X2M U4 ( .A(i_ref_clk), .B(o_div_clk_reg), .S0(n46), .Y(o_div_clk) );
  OAI2B11X2M U5 ( .A1N(N9), .A0(i_div_ratio[0]), .B0(n52), .C0(n46), .Y(n54)
         );
  AND2X2M U6 ( .A(N17), .B(n43), .Y(N37) );
  AND2X2M U7 ( .A(N18), .B(n43), .Y(N38) );
  AND2X2M U8 ( .A(N19), .B(n43), .Y(N39) );
  AND2X2M U9 ( .A(N20), .B(n43), .Y(N40) );
  AND2X2M U10 ( .A(N21), .B(n43), .Y(N41) );
  NOR2X2M U11 ( .A(n53), .B(n55), .Y(n47) );
  XNOR2X2M U12 ( .A(n52), .B(n44), .Y(n53) );
  INVX2M U13 ( .A(i_div_ratio[1]), .Y(half_toggle[0]) );
  INVX2M U14 ( .A(n55), .Y(n46) );
  INVX2M U15 ( .A(half_toggle_p1[4]), .Y(n38) );
  INVX2M U16 ( .A(half_toggle_p1[5]), .Y(n39) );
  INVX2M U17 ( .A(half_toggle[3]), .Y(n15) );
  INVX2M U18 ( .A(half_toggle[2]), .Y(n16) );
  INVX2M U19 ( .A(half_toggle[4]), .Y(n14) );
  INVX2M U20 ( .A(half_toggle[5]), .Y(n13) );
  INVX2M U21 ( .A(half_toggle_p1[3]), .Y(n37) );
  INVX2M U22 ( .A(half_toggle_p1[2]), .Y(n36) );
  OAI32X1M U23 ( .A0(n55), .A1(o_div_clk_reg), .A2(n43), .B0(n54), .B1(n45), 
        .Y(n48) );
  INVX2M U24 ( .A(o_div_clk_reg), .Y(n45) );
  INVX2M U25 ( .A(counter[6]), .Y(n42) );
  NAND2BX2M U26 ( .AN(n51), .B(i_div_ratio[0]), .Y(n52) );
  AOI22X1M U27 ( .A0(N12), .A1(n44), .B0(flag), .B1(N9), .Y(n51) );
  INVX2M U28 ( .A(counter[1]), .Y(n40) );
  AND2X2M U29 ( .A(N22), .B(n43), .Y(N42) );
  AND2X2M U30 ( .A(N16), .B(n43), .Y(N36) );
  INVX2M U31 ( .A(counter[2]), .Y(n26) );
  INVX2M U32 ( .A(counter[4]), .Y(n41) );
  INVX2M U33 ( .A(counter[3]), .Y(n27) );
  INVX2M U34 ( .A(counter[5]), .Y(n28) );
  INVX2M U35 ( .A(flag), .Y(n44) );
  OAI2BB1X2M U36 ( .A0N(n50), .A1N(n49), .B0(i_clk_en), .Y(n55) );
  NOR3X2M U37 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n50) );
  NOR4X1M U38 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n49) );
  NAND2BX1M U39 ( .AN(i_div_ratio[2]), .B(half_toggle[0]), .Y(n1) );
  OAI2BB1X1M U40 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        half_toggle[1]) );
  OR2X1M U41 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U42 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(half_toggle[2])
         );
  OR2X1M U43 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U44 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(half_toggle[3])
         );
  OR2X1M U45 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U46 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(half_toggle[4])
         );
  XNOR2X1M U47 ( .A(i_div_ratio[6]), .B(n4), .Y(half_toggle[5]) );
  NOR3X1M U48 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(
        half_toggle[7]) );
  OAI21X1M U49 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U50 ( .AN(half_toggle[7]), .B(n5), .Y(half_toggle[6]) );
  AOI2BB1X1M U51 ( .A0N(half_toggle[1]), .A1N(n40), .B0(counter[0]), .Y(n6) );
  AOI222X1M U52 ( .A0(half_toggle[2]), .A1(n26), .B0(n6), .B1(half_toggle[0]), 
        .C0(half_toggle[1]), .C1(n40), .Y(n7) );
  AOI221XLM U53 ( .A0(counter[3]), .A1(n15), .B0(counter[2]), .B1(n16), .C0(n7), .Y(n8) );
  AOI221XLM U54 ( .A0(half_toggle[4]), .A1(n41), .B0(half_toggle[3]), .B1(n27), 
        .C0(n8), .Y(n9) );
  AOI221XLM U55 ( .A0(counter[5]), .A1(n13), .B0(counter[4]), .B1(n14), .C0(n9), .Y(n10) );
  AOI221XLM U56 ( .A0(half_toggle[6]), .A1(n42), .B0(half_toggle[5]), .B1(n28), 
        .C0(n10), .Y(n11) );
  AOI2BB1X1M U57 ( .A0N(half_toggle[6]), .A1N(n42), .B0(n11), .Y(n12) );
  NOR2X1M U58 ( .A(half_toggle[7]), .B(n12), .Y(N9) );
  AOI2BB1X1M U59 ( .A0N(half_toggle_p1[1]), .A1N(n40), .B0(counter[0]), .Y(n29) );
  AOI222X1M U60 ( .A0(half_toggle_p1[2]), .A1(n26), .B0(n29), .B1(
        half_toggle_p1[0]), .C0(half_toggle_p1[1]), .C1(n40), .Y(n30) );
  AOI221XLM U61 ( .A0(counter[3]), .A1(n37), .B0(counter[2]), .B1(n36), .C0(
        n30), .Y(n31) );
  AOI221XLM U62 ( .A0(half_toggle_p1[4]), .A1(n41), .B0(half_toggle_p1[3]), 
        .B1(n27), .C0(n31), .Y(n32) );
  AOI221XLM U63 ( .A0(counter[5]), .A1(n39), .B0(counter[4]), .B1(n38), .C0(
        n32), .Y(n33) );
  AOI221XLM U64 ( .A0(half_toggle_p1[6]), .A1(n42), .B0(half_toggle_p1[5]), 
        .B1(n28), .C0(n33), .Y(n34) );
  AOI2BB1X1M U65 ( .A0N(half_toggle_p1[6]), .A1N(n42), .B0(n34), .Y(n35) );
  NOR2X1M U66 ( .A(half_toggle_p1[7]), .B(n35), .Y(N12) );
endmodule


module PULSE_GEN ( CLK, RST_n, LVL_SIG, pulse_out );
  input CLK, RST_n, LVL_SIG;
  output pulse_out;
  wire   LVL_SIG_reg;

  DFFRQX2M LVL_SIG_reg_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST_n), .Q(LVL_SIG_reg) );
  NOR2BX2M U3 ( .AN(LVL_SIG), .B(LVL_SIG_reg), .Y(pulse_out) );
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
  ADDFHXLM U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  NAND2XLM U1 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U2 ( .A(carry[8]), .Y(DIFF[8]) );
  INVX2M U3 ( .A(B[6]), .Y(n4) );
  INVXLM U4 ( .A(B[2]), .Y(n8) );
  INVXLM U5 ( .A(B[3]), .Y(n7) );
  INVXLM U6 ( .A(B[4]), .Y(n6) );
  INVXLM U7 ( .A(B[5]), .Y(n5) );
  INVXLM U8 ( .A(B[1]), .Y(n9) );
  INVX2M U9 ( .A(A[0]), .Y(n1) );
  XNOR2X2M U10 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  INVXLM U11 ( .A(B[7]), .Y(n3) );
  INVXLM U12 ( .A(B[0]), .Y(n10) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b0), .CO(carry[1]), .S(SUM[0]) );
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
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n2), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n2) );
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

  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n13, n14, n15, n11, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n4), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n6), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n8), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n3), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  INVXLM U2 ( .A(A[6]), .Y(n33) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n3) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n4) );
  AND2X2M U5 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U6 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n6) );
  AND2X2M U7 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U8 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  AND2X2M U9 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U10 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U12 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U13 ( .A(\ab[0][6] ), .Y(n22) );
  INVX2M U14 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U15 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U23 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U24 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n13) );
  AND2X2M U25 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U26 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  INVX2M U28 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U34 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U35 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  INVX2M U36 ( .A(B[6]), .Y(n25) );
  INVX2M U37 ( .A(A[1]), .Y(n38) );
  XNOR2X2M U38 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U39 ( .A(A[3]), .Y(n36) );
  INVX2M U40 ( .A(A[4]), .Y(n35) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  XNOR2X2M U42 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVXLM U44 ( .A(B[3]), .Y(n28) );
  INVXLM U45 ( .A(B[4]), .Y(n27) );
  INVXLM U46 ( .A(B[5]), .Y(n26) );
  INVX2M U47 ( .A(A[0]), .Y(n39) );
  INVXLM U48 ( .A(B[2]), .Y(n29) );
  INVXLM U49 ( .A(B[1]), .Y(n30) );
  INVXLM U50 ( .A(B[7]), .Y(n24) );
  INVXLM U51 ( .A(A[7]), .Y(n32) );
  INVXLM U52 ( .A(B[0]), .Y(n31) );
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
endmodule


module ALU_DW_div_uns_1 ( a, b, quotient, remainder, divide_by_0 );
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
         \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] ,
         \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] ,
         \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] ,
         \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] ,
         \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] ,
         \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] ,
         \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] ,
         \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] ,
         \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] ,
         \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] ,
         \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] ,
         \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] , \u_div/PartRem[1][1] ,
         \u_div/PartRem[1][2] , \u_div/PartRem[1][3] , \u_div/PartRem[1][4] ,
         \u_div/PartRem[1][5] , \u_div/PartRem[1][6] , \u_div/PartRem[1][7] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[2][5] , \u_div/PartRem[2][6] , \u_div/PartRem[3][1] ,
         \u_div/PartRem[3][2] , \u_div/PartRem[4][1] , \u_div/PartRem[5][1] ,
         \u_div/PartRem[6][1] , n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n27,
         n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79;
  wire   [7:0] \u_div/BInv ;

  ADDFHX4M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_1  ( .A(n10), .B(\u_div/CryTmp[0][1] ), 
        .CI(\u_div/PartRem[1][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_2  ( .A(n24), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), 
        .S(\u_div/SumTmp[1][6] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), 
        .S(\u_div/SumTmp[1][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), 
        .S(\u_div/SumTmp[1][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), 
        .S(\u_div/SumTmp[1][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), 
        .S(\u_div/SumTmp[1][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(
        \u_div/BInv [7]), .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_1  ( .A(n5), .B(n10), .CI(
        \u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_4  ( .A(n25), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_3  ( .A(n19), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n10), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] )
         );
  ADDFHX1M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n10), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/CryTmp[3][1] ), .B(n10), 
        .CI(\u_div/PartRem[4][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n10), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/CryTmp[6][1] ), .B(n10), 
        .CI(n15), .CO(\u_div/CryTmp[6][2] ), .S(\u_div/SumTmp[6][1] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_5_2  ( .A(n29), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_2_4  ( .A(n27), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_4_2  ( .A(n20), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_4_3  ( .A(n28), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), 
        .S(\u_div/SumTmp[2][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_3  ( .A(n23), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_2_5  ( .A(n18), .B(\u_div/BInv [5]), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_0  ( .A(a[5]), .B(n17), .CI(1'b1), .CO(
        \u_div/CryTmp[5][1] ), .S(\u_div/SumTmp[5][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_0  ( .A(a[0]), .B(n17), .CI(1'b1), .CO(
        \u_div/CryTmp[0][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_0  ( .A(a[4]), .B(n17), .CI(1'b1), .CO(
        \u_div/CryTmp[4][1] ), .S(\u_div/SumTmp[4][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_0  ( .A(a[3]), .B(n17), .CI(1'b1), .CO(
        \u_div/CryTmp[3][1] ), .S(\u_div/SumTmp[3][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_0  ( .A(a[2]), .B(n17), .CI(1'b1), .CO(
        \u_div/CryTmp[2][1] ), .S(\u_div/SumTmp[2][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_0  ( .A(a[1]), .B(n17), .CI(1'b1), .CO(
        \u_div/CryTmp[1][1] ), .S(\u_div/SumTmp[1][0] ) );
  CLKNAND2X16M U1 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  XNOR2X8M U2 ( .A(n17), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  CLKINVX16M U3 ( .A(n17), .Y(n1) );
  CLKINVX16M U4 ( .A(a[6]), .Y(n2) );
  INVX10M U5 ( .A(b[7]), .Y(\u_div/BInv [7]) );
  NAND2BX8M U6 ( .AN(b[6]), .B(\u_div/BInv [7]), .Y(n67) );
  NAND2X4M U7 ( .A(b[0]), .B(n33), .Y(\u_div/CryTmp[7][1] ) );
  CLKINVX6M U8 ( .A(a[7]), .Y(n33) );
  CLKINVX4M U9 ( .A(n55), .Y(\u_div/PartRem[3][2] ) );
  MXI2X2M U10 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(n55) );
  MXI2X6M U11 ( .A(n69), .B(n70), .S0(n71), .Y(\u_div/PartRem[1][1] ) );
  NOR2BX8M U12 ( .AN(\u_div/CryTmp[1][7] ), .B(b[7]), .Y(n71) );
  CLKINVX4M U13 ( .A(n13), .Y(\u_div/PartRem[1][2] ) );
  CLKINVX6M U14 ( .A(n72), .Y(quotient[7]) );
  MXI2X4M U15 ( .A(n33), .B(n16), .S0(quotient[7]), .Y(n15) );
  INVXLM U16 ( .A(n15), .Y(n31) );
  INVXLM U17 ( .A(a[6]), .Y(n44) );
  MXI2X1M U18 ( .A(n27), .B(\u_div/SumTmp[2][4] ), .S0(quotient[2]), .Y(n38)
         );
  MXI2X2M U19 ( .A(n23), .B(\u_div/SumTmp[2][3] ), .S0(quotient[2]), .Y(n39)
         );
  MXI2X3M U20 ( .A(n36), .B(\u_div/SumTmp[2][1] ), .S0(quotient[2]), .Y(n41)
         );
  INVX4M U21 ( .A(n78), .Y(quotient[2]) );
  INVX4M U22 ( .A(n62), .Y(\u_div/PartRem[3][1] ) );
  INVXLM U23 ( .A(n62), .Y(n36) );
  MX2XLM U24 ( .A(n28), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(n25) );
  MX2X1M U25 ( .A(n20), .B(\u_div/SumTmp[4][2] ), .S0(quotient[4]), .Y(n19) );
  CLKMX2X6M U26 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(n24) );
  OR2X4M U27 ( .A(n67), .B(n68), .Y(n8) );
  MXI2X6M U28 ( .A(n45), .B(n44), .S0(n46), .Y(\u_div/PartRem[6][1] ) );
  NAND2X4M U29 ( .A(\u_div/CryTmp[6][2] ), .B(n47), .Y(n46) );
  INVX8M U30 ( .A(b[0]), .Y(n17) );
  NOR2X2M U31 ( .A(n60), .B(n59), .Y(n58) );
  CLKINVX4M U32 ( .A(\u_div/CryTmp[4][4] ), .Y(n60) );
  MXI2X4M U33 ( .A(n56), .B(n57), .S0(n58), .Y(\u_div/PartRem[4][1] ) );
  MXI2X2M U34 ( .A(n50), .B(n51), .S0(n52), .Y(\u_div/PartRem[5][1] ) );
  MXI2X1M U35 ( .A(n21), .B(n22), .S0(quotient[5]), .Y(n20) );
  CLKINVX2M U36 ( .A(\u_div/SumTmp[5][1] ), .Y(n22) );
  INVX2M U37 ( .A(n41), .Y(\u_div/PartRem[2][2] ) );
  NAND2X4M U38 ( .A(n75), .B(n76), .Y(n59) );
  NOR2X2M U39 ( .A(b[5]), .B(b[4]), .Y(n75) );
  INVX2M U40 ( .A(\u_div/SumTmp[2][0] ), .Y(n7) );
  INVX2M U41 ( .A(a[2]), .Y(n6) );
  INVX2M U42 ( .A(a[5]), .Y(n50) );
  INVX2M U43 ( .A(\u_div/SumTmp[5][0] ), .Y(n51) );
  NOR2X2M U44 ( .A(n53), .B(n35), .Y(n52) );
  MXI2X1M U45 ( .A(n31), .B(n30), .S0(n14), .Y(n29) );
  INVX4M U46 ( .A(n67), .Y(n76) );
  CLKINVX2M U47 ( .A(\u_div/CryTmp[2][6] ), .Y(n68) );
  INVX2M U48 ( .A(\u_div/CryTmp[5][3] ), .Y(n53) );
  INVX2M U49 ( .A(n74), .Y(quotient[5]) );
  NAND2BX2M U50 ( .AN(n53), .B(n34), .Y(n74) );
  NAND2X2M U51 ( .A(n73), .B(n34), .Y(n72) );
  INVX10M U52 ( .A(b[1]), .Y(n10) );
  AND2X2M U53 ( .A(\u_div/CryTmp[3][5] ), .B(n77), .Y(quotient[3]) );
  INVX4M U54 ( .A(n79), .Y(quotient[1]) );
  MX2X2M U55 ( .A(n7), .B(n6), .S0(n8), .Y(n4) );
  MXI2X1M U56 ( .A(n41), .B(n61), .S0(quotient[1]), .Y(\u_div/PartRem[1][3] )
         );
  CLKNAND2X2M U57 ( .A(n66), .B(quotient[1]), .Y(n12) );
  NAND2BX4M U58 ( .AN(b[7]), .B(\u_div/CryTmp[1][7] ), .Y(n79) );
  MXI2XLM U59 ( .A(n37), .B(n42), .S0(quotient[1]), .Y(\u_div/PartRem[1][7] )
         );
  MXI2XLM U60 ( .A(n38), .B(n43), .S0(quotient[1]), .Y(\u_div/PartRem[1][6] )
         );
  MXI2XLM U61 ( .A(n39), .B(n49), .S0(quotient[1]), .Y(\u_div/PartRem[1][5] )
         );
  MXI2XLM U62 ( .A(n40), .B(n54), .S0(quotient[1]), .Y(\u_div/PartRem[1][4] )
         );
  MXI2X4M U63 ( .A(n7), .B(n6), .S0(n8), .Y(n5) );
  INVX2M U64 ( .A(b[2]), .Y(n9) );
  CLKINVX4M U65 ( .A(b[2]), .Y(\u_div/BInv [2]) );
  NAND2X2M U66 ( .A(n4), .B(n79), .Y(n11) );
  AND3X4M U67 ( .A(\u_div/CryTmp[7][1] ), .B(n9), .C(n10), .Y(n73) );
  NAND2X2M U68 ( .A(n11), .B(n12), .Y(n13) );
  NOR2BX2M U69 ( .AN(\u_div/CryTmp[6][2] ), .B(n48), .Y(n14) );
  XOR2XLM U70 ( .A(n17), .B(a[7]), .Y(n16) );
  INVX2M U71 ( .A(\u_div/SumTmp[6][0] ), .Y(n45) );
  NAND2XLM U72 ( .A(n34), .B(\u_div/BInv [2]), .Y(n48) );
  INVX2M U73 ( .A(n40), .Y(\u_div/PartRem[2][3] ) );
  NOR2BXLM U74 ( .AN(\u_div/CryTmp[6][2] ), .B(n48), .Y(quotient[6]) );
  INVXLM U75 ( .A(\u_div/PartRem[6][1] ), .Y(n21) );
  INVX2M U76 ( .A(\u_div/SumTmp[6][1] ), .Y(n30) );
  MXI2XLM U77 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(n40) );
  INVX2M U78 ( .A(n64), .Y(n77) );
  MXI2X4M U79 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(n63), .Y(n62) );
  NOR2X3M U80 ( .A(n65), .B(n64), .Y(n63) );
  NOR2X12M U81 ( .A(n59), .B(b[3]), .Y(n34) );
  CLKINVX2M U82 ( .A(b[3]), .Y(\u_div/BInv [3]) );
  NAND2BX2M U83 ( .AN(n68), .B(n76), .Y(n78) );
  MXI2XLM U84 ( .A(n18), .B(\u_div/SumTmp[2][5] ), .S0(quotient[2]), .Y(n37)
         );
  MX2XLM U85 ( .A(n25), .B(\u_div/SumTmp[3][4] ), .S0(quotient[3]), .Y(n18) );
  CLKMX2X2M U86 ( .A(n24), .B(\u_div/SumTmp[3][2] ), .S0(quotient[3]), .Y(n23)
         );
  INVX2M U87 ( .A(n37), .Y(\u_div/PartRem[2][6] ) );
  INVX2M U88 ( .A(n48), .Y(n47) );
  MX2X1M U89 ( .A(n19), .B(\u_div/SumTmp[3][3] ), .S0(quotient[3]), .Y(n27) );
  MX2X1M U90 ( .A(n29), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(n28) );
  INVX2M U91 ( .A(\u_div/SumTmp[1][1] ), .Y(n66) );
  INVX2M U92 ( .A(a[4]), .Y(n56) );
  INVX2M U93 ( .A(\u_div/SumTmp[4][0] ), .Y(n57) );
  INVX2M U94 ( .A(\u_div/SumTmp[1][3] ), .Y(n54) );
  INVX2M U95 ( .A(\u_div/SumTmp[1][5] ), .Y(n43) );
  INVX2M U96 ( .A(n39), .Y(\u_div/PartRem[2][4] ) );
  INVX2M U97 ( .A(n38), .Y(\u_div/PartRem[2][5] ) );
  INVX2M U98 ( .A(\u_div/SumTmp[1][4] ), .Y(n49) );
  INVX2M U99 ( .A(\u_div/SumTmp[1][2] ), .Y(n61) );
  NOR2X4M U100 ( .A(n60), .B(n59), .Y(quotient[4]) );
  INVX2M U101 ( .A(\u_div/SumTmp[1][6] ), .Y(n42) );
  CLKINVX4M U102 ( .A(\u_div/CryTmp[3][5] ), .Y(n65) );
  NAND2XLM U103 ( .A(n76), .B(\u_div/BInv [5]), .Y(n64) );
  INVX2M U104 ( .A(b[6]), .Y(\u_div/BInv [6]) );
  INVX2M U105 ( .A(\u_div/SumTmp[1][0] ), .Y(n70) );
  INVX2M U106 ( .A(a[1]), .Y(n69) );
  CLKINVX1M U107 ( .A(b[4]), .Y(\u_div/BInv [4]) );
  CLKINVX1M U108 ( .A(b[5]), .Y(\u_div/BInv [5]) );
  INVXLM U109 ( .A(n34), .Y(n35) );
endmodule


module ALU ( CLK, RST, A, B, ALU_FUN, Enable, valid_data, ALU_OUT );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enable;
  output valid_data;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115,
         N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126,
         N127, N128, N129, N130, N131, N132, N133, N166, N167, N168, N185,
         N186, N187, N188, N189, N190, N191, N192, N193, N194, N195, N196,
         N197, N198, N199, N200, n31, n32, n34, n35, n36, n38, n41, n46, n47,
         n48, n49, n50, n55, n56, n57, n61, n62, n63, n67, n68, n69, n73, n74,
         n75, n79, n80, n81, n84, n85, n86, n87, n88, n89, n90, n91, n101,
         n103, n104, n106, n107, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n33, n37, n39, n40, n42, n43, n44, n45, n51, n52,
         n53, n54, n58, n59, n60, n64, n65, n66, n70, n71, n72, n76, n77, n78,
         n82, n83, n92, n93, n94, n95, n96, n97, n98, n99, n100, n102, n105,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167;

  ALU_DW01_sub_0 sub_27 ( .A({1'b0, n13, n12, n11, n10, n9, n8, n7, A[0]}), 
        .B({1'b0, B[7], n6, B[5:0]}), .CI(1'b0), .DIFF({N109, N108, N107, N106, 
        N105, N104, N103, N102, N101}) );
  ALU_DW01_add_0 add_26 ( .A({1'b0, n13, n12, n11, n10, n9, n8, n7, A[0]}), 
        .B({1'b0, B[7], n6, B[5:0]}), .CI(1'b0), .SUM({N100, N99, N98, N97, 
        N96, N95, N94, N93, N92}) );
  ALU_DW02_mult_0 mult_28 ( .A({n13, n12, n11, n10, n9, n8, n7, A[0]}), .B({
        B[7], n6, B[5:0]}), .TC(1'b0), .PRODUCT({N125, N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110}) );
  ALU_DW_div_uns_1 div_29 ( .a({A[7], n12, n11, n10, n9, n8, n7, A[0]}), .b({
        B[7], n6, B[5:0]}), .quotient({N133, N132, N131, N130, N129, N128, 
        N127, N126}) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(N185), .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(N192), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(N191), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(N190), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(N189), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(N188), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(N187), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(N186), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(N200), .CK(CLK), .RN(RST), .Q(ALU_OUT[15])
         );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(N199), .CK(CLK), .RN(RST), .Q(ALU_OUT[14])
         );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(N198), .CK(CLK), .RN(RST), .Q(ALU_OUT[13])
         );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(N197), .CK(CLK), .RN(RST), .Q(ALU_OUT[12])
         );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(N196), .CK(CLK), .RN(RST), .Q(ALU_OUT[11])
         );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(N195), .CK(CLK), .RN(RST), .Q(ALU_OUT[10])
         );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(N194), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(N193), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  DFFRQX2M valid_data_reg ( .D(Enable), .CK(CLK), .RN(RST), .Q(valid_data) );
  BUFX8M U3 ( .A(B[6]), .Y(n6) );
  INVXLM U4 ( .A(n12), .Y(n162) );
  BUFX10M U7 ( .A(A[6]), .Y(n12) );
  NOR2X3M U8 ( .A(N126), .B(n66), .Y(n112) );
  AND2X2M U9 ( .A(n103), .B(n94), .Y(n3) );
  BUFX2M U10 ( .A(A[5]), .Y(n11) );
  AOI21XLM U11 ( .A0(n123), .A1(n120), .B0(B[1]), .Y(n124) );
  INVX2M U12 ( .A(n82), .Y(n114) );
  INVX2M U13 ( .A(n72), .Y(n116) );
  INVX2M U14 ( .A(n100), .Y(n59) );
  OAI2BB1X2M U15 ( .A0N(n157), .A1N(n119), .B0(n101), .Y(n41) );
  OAI2BB1X2M U16 ( .A0N(n118), .A1N(n115), .B0(n101), .Y(n50) );
  OR2X2M U17 ( .A(n107), .B(n15), .Y(n72) );
  OR2X2M U18 ( .A(n17), .B(n23), .Y(n82) );
  INVX2M U19 ( .A(ALU_FUN[0]), .Y(n122) );
  INVX2M U20 ( .A(n107), .Y(n157) );
  INVX2M U21 ( .A(n49), .Y(n78) );
  INVX2M U22 ( .A(n23), .Y(n115) );
  INVX2M U23 ( .A(n15), .Y(n118) );
  INVX2M U24 ( .A(n17), .Y(n119) );
  NAND3BX2M U25 ( .AN(n121), .B(n119), .C(n18), .Y(n100) );
  INVX2M U26 ( .A(n14), .Y(n117) );
  NAND3BX2M U27 ( .AN(n121), .B(n118), .C(n18), .Y(n14) );
  NOR2X2M U28 ( .A(n16), .B(n17), .Y(n4) );
  NOR2X2M U29 ( .A(n15), .B(n16), .Y(n5) );
  INVX2M U30 ( .A(n70), .Y(n113) );
  INVX2M U31 ( .A(n106), .Y(n16) );
  NOR2X2M U32 ( .A(n109), .B(n108), .Y(n110) );
  NOR2X2M U33 ( .A(n96), .B(n95), .Y(n111) );
  OAI2BB1X2M U34 ( .A0N(N125), .A1N(n31), .B0(n32), .Y(N200) );
  OAI2BB1X2M U35 ( .A0N(N124), .A1N(n31), .B0(n32), .Y(N199) );
  OAI2BB1X2M U36 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(N198) );
  OAI2BB1X2M U37 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(N196) );
  OAI2BB1X2M U38 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(N197) );
  OAI2BB1X2M U39 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(N194) );
  OAI2BB1X2M U40 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(N195) );
  AOI31X2M U41 ( .A0(N167), .A1(ALU_FUN[3]), .A2(n90), .B0(n91), .Y(n89) );
  NOR3X2M U42 ( .A(n122), .B(ALU_FUN[2]), .C(n121), .Y(n90) );
  NOR2X2M U43 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  AND3X2M U44 ( .A(n106), .B(n122), .C(ALU_FUN[3]), .Y(n49) );
  NAND2X2M U45 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  OR2X2M U46 ( .A(ALU_FUN[0]), .B(ALU_FUN[3]), .Y(n15) );
  OR2X2M U47 ( .A(ALU_FUN[3]), .B(n122), .Y(n17) );
  INVX2M U48 ( .A(ALU_FUN[2]), .Y(n18) );
  OR2X2M U49 ( .A(ALU_FUN[1]), .B(n18), .Y(n23) );
  NAND3X2M U50 ( .A(n106), .B(ALU_FUN[0]), .C(ALU_FUN[3]), .Y(n101) );
  AND4X2M U51 ( .A(N168), .B(n115), .C(ALU_FUN[3]), .D(n122), .Y(n91) );
  AO22X1M U52 ( .A0(N98), .A1(n5), .B0(n162), .B1(n116), .Y(n52) );
  NOR3X2M U53 ( .A(n121), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  NAND3BX2M U54 ( .AN(n122), .B(ALU_FUN[3]), .C(n115), .Y(n70) );
  NAND3X2M U55 ( .A(n157), .B(n122), .C(ALU_FUN[3]), .Y(n36) );
  OR2X2M U56 ( .A(n120), .B(n70), .Y(n97) );
  NOR2BX2M U57 ( .AN(n117), .B(n156), .Y(n31) );
  INVX2M U58 ( .A(ALU_FUN[1]), .Y(n121) );
  INVX2M U59 ( .A(n105), .Y(n96) );
  AOI31X2M U60 ( .A0(n22), .A1(n21), .A2(n20), .B0(n156), .Y(N186) );
  AOI22X1M U61 ( .A0(N93), .A1(n5), .B0(N111), .B1(n117), .Y(n22) );
  MX2X2M U62 ( .A(n72), .B(n82), .S0(n7), .Y(n21) );
  AOI21X2M U63 ( .A0(N102), .A1(n4), .B0(n19), .Y(n20) );
  AOI31X2M U64 ( .A0(n27), .A1(n26), .A2(n25), .B0(n156), .Y(N187) );
  AOI22X1M U65 ( .A0(n8), .A1(n114), .B0(N103), .B1(n4), .Y(n26) );
  AOI211X2M U66 ( .A0(N112), .A1(n117), .B0(n24), .C0(n79), .Y(n25) );
  AOI22XLM U67 ( .A0(n9), .A1(n113), .B0(N128), .B1(n59), .Y(n27) );
  AOI31X2M U68 ( .A0(n33), .A1(n30), .A2(n29), .B0(n156), .Y(N188) );
  AOI22X1M U69 ( .A0(n9), .A1(n114), .B0(N104), .B1(n4), .Y(n30) );
  AOI211X2M U70 ( .A0(N113), .A1(n117), .B0(n28), .C0(n73), .Y(n29) );
  AOI22XLM U71 ( .A0(n10), .A1(n113), .B0(N129), .B1(n59), .Y(n33) );
  AOI31X2M U72 ( .A0(n42), .A1(n40), .A2(n39), .B0(n156), .Y(N189) );
  AOI22X1M U73 ( .A0(n10), .A1(n114), .B0(N105), .B1(n4), .Y(n40) );
  AOI211X2M U74 ( .A0(N114), .A1(n117), .B0(n37), .C0(n67), .Y(n39) );
  BUFX2M U75 ( .A(A[7]), .Y(n13) );
  AOI22X1M U76 ( .A0(N108), .A1(n4), .B0(n161), .B1(n116), .Y(n64) );
  AOI221XLM U77 ( .A0(N99), .A1(n5), .B0(N117), .B1(n117), .C0(n46), .Y(n60)
         );
  AOI21X2M U78 ( .A0(n34), .A1(n35), .B0(n156), .Y(N193) );
  AOI21X2M U79 ( .A0(N100), .A1(n5), .B0(n155), .Y(n34) );
  AOI2BB2XLM U80 ( .B0(N118), .B1(n117), .A0N(n161), .A1N(n36), .Y(n35) );
  AOI221XLM U81 ( .A0(n49), .A1(n162), .B0(n12), .B1(n50), .C0(n114), .Y(n56)
         );
  AOI221XLM U82 ( .A0(n12), .A1(n49), .B0(n41), .B1(n162), .C0(n116), .Y(n57)
         );
  AOI221XLM U83 ( .A0(n49), .A1(n120), .B0(n7), .B1(n50), .C0(n114), .Y(n87)
         );
  AOI221XLM U84 ( .A0(n7), .A1(n49), .B0(n41), .B1(n120), .C0(n116), .Y(n88)
         );
  INVX2M U85 ( .A(n134), .Y(n152) );
  AOI31X2M U86 ( .A0(n58), .A1(n54), .A2(n53), .B0(n156), .Y(N191) );
  AOI22X1M U87 ( .A0(n12), .A1(n114), .B0(N107), .B1(n4), .Y(n54) );
  AOI211X2M U88 ( .A0(N116), .A1(n117), .B0(n52), .C0(n55), .Y(n53) );
  AOI31X2M U89 ( .A0(n51), .A1(n45), .A2(n44), .B0(n156), .Y(N190) );
  AOI22X1M U90 ( .A0(n11), .A1(n114), .B0(N106), .B1(n4), .Y(n45) );
  AOI211X2M U91 ( .A0(N115), .A1(n117), .B0(n43), .C0(n61), .Y(n44) );
  NAND2X2M U92 ( .A(Enable), .B(n155), .Y(n32) );
  INVX2M U93 ( .A(n38), .Y(n155) );
  AOI211X2M U94 ( .A0(N109), .A1(n4), .B0(n116), .C0(n41), .Y(n38) );
  INVX2M U95 ( .A(n148), .Y(N167) );
  INVX2M U96 ( .A(n6), .Y(n154) );
  NAND3X2M U97 ( .A(n105), .B(n3), .C(n102), .Y(n108) );
  NAND2X2M U98 ( .A(n97), .B(n3), .Y(n95) );
  INVX2M U99 ( .A(n7), .Y(n120) );
  AO22X1M U100 ( .A0(N97), .A1(n5), .B0(n163), .B1(n116), .Y(n43) );
  NAND2X2M U101 ( .A(N110), .B(n117), .Y(n105) );
  INVX2M U102 ( .A(Enable), .Y(n156) );
  NAND2X2M U103 ( .A(N92), .B(n5), .Y(n102) );
  NAND4X2M U104 ( .A(n100), .B(n99), .C(n98), .D(n97), .Y(n109) );
  NAND3X2M U105 ( .A(n98), .B(n102), .C(n99), .Y(n66) );
  AO22X1M U106 ( .A0(N94), .A1(n5), .B0(n166), .B1(n116), .Y(n24) );
  AO22X1M U107 ( .A0(N95), .A1(n5), .B0(n165), .B1(n116), .Y(n28) );
  AO22X1M U108 ( .A0(N96), .A1(n5), .B0(n164), .B1(n116), .Y(n37) );
  INVX2M U109 ( .A(n9), .Y(n165) );
  INVX2M U110 ( .A(n10), .Y(n164) );
  INVX2M U111 ( .A(n8), .Y(n166) );
  INVX2M U112 ( .A(n11), .Y(n163) );
  BUFX2M U113 ( .A(A[4]), .Y(n10) );
  OAI2BB1XLM U114 ( .A0N(N127), .A1N(n59), .B0(n84), .Y(n19) );
  AOI211X2M U115 ( .A0(n8), .A1(n113), .B0(n85), .C0(n86), .Y(n84) );
  OAI2B2X1M U116 ( .A1N(B[1]), .A0(n87), .B0(n36), .B1(n167), .Y(n86) );
  OAI21XLM U117 ( .A0(B[1]), .A1(n88), .B0(n89), .Y(n85) );
  BUFX2M U118 ( .A(A[3]), .Y(n9) );
  BUFX2M U119 ( .A(A[2]), .Y(n8) );
  BUFX2M U120 ( .A(A[1]), .Y(n7) );
  OAI222XLM U121 ( .A0(n80), .A1(n151), .B0(B[2]), .B1(n81), .C0(n36), .C1(
        n120), .Y(n79) );
  AOI221XLM U122 ( .A0(n8), .A1(n49), .B0(n41), .B1(n166), .C0(n116), .Y(n81)
         );
  AOI221XLM U123 ( .A0(n49), .A1(n166), .B0(n8), .B1(n50), .C0(n114), .Y(n80)
         );
  OAI222XLM U124 ( .A0(n74), .A1(n153), .B0(B[3]), .B1(n75), .C0(n36), .C1(
        n166), .Y(n73) );
  AOI221XLM U125 ( .A0(n9), .A1(n49), .B0(n41), .B1(n165), .C0(n116), .Y(n75)
         );
  AOI221XLM U126 ( .A0(n49), .A1(n165), .B0(n9), .B1(n50), .C0(n114), .Y(n74)
         );
  OAI222XLM U127 ( .A0(n68), .A1(n160), .B0(B[4]), .B1(n69), .C0(n36), .C1(
        n165), .Y(n67) );
  INVXLM U128 ( .A(B[4]), .Y(n160) );
  AOI221XLM U129 ( .A0(n10), .A1(n49), .B0(n41), .B1(n164), .C0(n116), .Y(n69)
         );
  AOI221XLM U130 ( .A0(n49), .A1(n164), .B0(n10), .B1(n50), .C0(n114), .Y(n68)
         );
  OAI222XLM U131 ( .A0(n62), .A1(n159), .B0(B[5]), .B1(n63), .C0(n36), .C1(
        n164), .Y(n61) );
  INVXLM U132 ( .A(B[5]), .Y(n159) );
  AOI221XLM U133 ( .A0(n11), .A1(n49), .B0(n41), .B1(n163), .C0(n116), .Y(n63)
         );
  AOI221XLM U134 ( .A0(n49), .A1(n163), .B0(n11), .B1(n50), .C0(n114), .Y(n62)
         );
  INVX2M U135 ( .A(n123), .Y(n150) );
  MX2X2M U136 ( .A(n93), .B(n92), .S0(A[0]), .Y(n94) );
  AOI31X2M U137 ( .A0(N166), .A1(ALU_FUN[3]), .A2(n104), .B0(n91), .Y(n103) );
  INVXLM U138 ( .A(B[2]), .Y(n151) );
  INVXLM U139 ( .A(B[3]), .Y(n153) );
  AND2X2M U140 ( .A(n76), .B(n72), .Y(n93) );
  MX2XLM U141 ( .A(n71), .B(n78), .S0(B[0]), .Y(n76) );
  INVX2M U142 ( .A(n41), .Y(n71) );
  AND2X2M U143 ( .A(n83), .B(n82), .Y(n92) );
  MX2XLM U144 ( .A(n78), .B(n77), .S0(B[0]), .Y(n83) );
  INVX2M U145 ( .A(n50), .Y(n77) );
  MX2XLM U146 ( .A(n72), .B(n82), .S0(B[0]), .Y(n99) );
  NAND2X2M U147 ( .A(N101), .B(n4), .Y(n98) );
  INVX2M U148 ( .A(A[0]), .Y(n167) );
  INVXLM U149 ( .A(B[7]), .Y(n158) );
  AOI31X2M U150 ( .A0(n65), .A1(n64), .A2(n60), .B0(n156), .Y(N192) );
  AOI22XLM U151 ( .A0(n12), .A1(n113), .B0(N131), .B1(n59), .Y(n51) );
  OAI222XLM U152 ( .A0(n56), .A1(n154), .B0(n6), .B1(n57), .C0(n36), .C1(n163), 
        .Y(n55) );
  AOI32XLM U153 ( .A0(n129), .A1(n139), .A2(n142), .B0(n6), .B1(n162), .Y(n130) );
  XNOR2XLM U154 ( .A(n12), .B(n6), .Y(n142) );
  INVXLM U155 ( .A(n13), .Y(n161) );
  INVXLM U156 ( .A(B[0]), .Y(n149) );
  AOI22XLM U157 ( .A0(n13), .A1(n113), .B0(N132), .B1(n59), .Y(n58) );
  AOI22XLM U158 ( .A0(N133), .A1(n59), .B0(n13), .B1(n114), .Y(n65) );
  AOI221XLM U159 ( .A0(n49), .A1(n161), .B0(n13), .B1(n50), .C0(n114), .Y(n47)
         );
  AOI221XLM U160 ( .A0(n49), .A1(n13), .B0(n41), .B1(n161), .C0(n116), .Y(n48)
         );
  NAND2XLM U161 ( .A(B[7]), .B(n161), .Y(n146) );
  AOI22XLM U162 ( .A0(n11), .A1(n113), .B0(N130), .B1(n59), .Y(n42) );
  OAI222XLM U163 ( .A0(n47), .A1(n158), .B0(B[7]), .B1(n48), .C0(n36), .C1(
        n162), .Y(n46) );
  NOR2XLM U164 ( .A(n161), .B(B[7]), .Y(n145) );
  AOI211X2M U165 ( .A0(n112), .A1(n111), .B0(n110), .C0(n156), .Y(N185) );
  NAND2BX1M U166 ( .AN(B[4]), .B(n10), .Y(n138) );
  NAND2BX1M U167 ( .AN(n10), .B(B[4]), .Y(n127) );
  CLKNAND2X2M U168 ( .A(n138), .B(n127), .Y(n140) );
  NOR2X1M U169 ( .A(n153), .B(n9), .Y(n135) );
  NOR2X1M U170 ( .A(n151), .B(n8), .Y(n126) );
  NOR2X1M U171 ( .A(n149), .B(A[0]), .Y(n123) );
  CLKNAND2X2M U172 ( .A(n8), .B(n151), .Y(n137) );
  NAND2BX1M U173 ( .AN(n126), .B(n137), .Y(n132) );
  AOI211X1M U174 ( .A0(n7), .A1(n150), .B0(n132), .C0(n124), .Y(n125) );
  CLKNAND2X2M U175 ( .A(n9), .B(n153), .Y(n136) );
  OAI31X1M U176 ( .A0(n135), .A1(n126), .A2(n125), .B0(n136), .Y(n128) );
  NAND2BX1M U177 ( .AN(n11), .B(B[5]), .Y(n143) );
  OAI211X1M U178 ( .A0(n140), .A1(n128), .B0(n127), .C0(n143), .Y(n129) );
  NAND2BX1M U179 ( .AN(B[5]), .B(n11), .Y(n139) );
  OAI21X1M U180 ( .A0(n145), .A1(n130), .B0(n146), .Y(N168) );
  CLKNAND2X2M U181 ( .A(A[0]), .B(n149), .Y(n133) );
  OA21X1M U182 ( .A0(n133), .A1(n120), .B0(B[1]), .Y(n131) );
  AOI211X1M U183 ( .A0(n133), .A1(n120), .B0(n132), .C0(n131), .Y(n134) );
  AOI31X1M U184 ( .A0(n152), .A1(n137), .A2(n136), .B0(n135), .Y(n141) );
  OAI2B11X1M U185 ( .A1N(n141), .A0(n140), .B0(n139), .C0(n138), .Y(n144) );
  AOI32X1M U186 ( .A0(n144), .A1(n143), .A2(n142), .B0(n12), .B1(n154), .Y(
        n147) );
  AOI2B1X1M U187 ( .A1N(n147), .A0(n146), .B0(n145), .Y(n148) );
  NOR2X1M U188 ( .A(N168), .B(N167), .Y(N166) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH4 ( i_w_clk, i_rst_n, i_w_inc, 
        i_w_full, i_wr_data, i_wr_addr, i_rd_addr, o_rd_data );
  input [7:0] i_wr_data;
  input [3:0] i_wr_addr;
  input [3:0] i_rd_addr;
  output [7:0] o_rd_data;
  input i_w_clk, i_rst_n, i_w_inc, i_w_full;
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
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220;
  assign N10 = i_rd_addr[0];
  assign N11 = i_rd_addr[1];
  assign N12 = i_rd_addr[2];
  assign N13 = i_rd_addr[3];

  DFFRQX2M \mem_reg[1][7]  ( .D(n158), .CK(i_w_clk), .RN(n195), .Q(\mem[1][7] ) );
  DFFRQX2M \mem_reg[1][6]  ( .D(n157), .CK(i_w_clk), .RN(n195), .Q(\mem[1][6] ) );
  DFFRQX2M \mem_reg[1][5]  ( .D(n156), .CK(i_w_clk), .RN(n195), .Q(\mem[1][5] ) );
  DFFRQX2M \mem_reg[1][4]  ( .D(n155), .CK(i_w_clk), .RN(n195), .Q(\mem[1][4] ) );
  DFFRQX2M \mem_reg[1][3]  ( .D(n154), .CK(i_w_clk), .RN(n195), .Q(\mem[1][3] ) );
  DFFRQX2M \mem_reg[1][2]  ( .D(n153), .CK(i_w_clk), .RN(n196), .Q(\mem[1][2] ) );
  DFFRQX2M \mem_reg[1][1]  ( .D(n152), .CK(i_w_clk), .RN(n196), .Q(\mem[1][1] ) );
  DFFRQX2M \mem_reg[1][0]  ( .D(n151), .CK(i_w_clk), .RN(n196), .Q(\mem[1][0] ) );
  DFFRQX2M \mem_reg[5][7]  ( .D(n126), .CK(i_w_clk), .RN(n198), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n125), .CK(i_w_clk), .RN(n198), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n124), .CK(i_w_clk), .RN(n198), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n123), .CK(i_w_clk), .RN(n198), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n122), .CK(i_w_clk), .RN(n198), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n121), .CK(i_w_clk), .RN(n198), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n120), .CK(i_w_clk), .RN(n198), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n119), .CK(i_w_clk), .RN(n198), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[9][7]  ( .D(n94), .CK(i_w_clk), .RN(n200), .Q(\mem[9][7] )
         );
  DFFRQX2M \mem_reg[9][6]  ( .D(n93), .CK(i_w_clk), .RN(n200), .Q(\mem[9][6] )
         );
  DFFRQX2M \mem_reg[9][5]  ( .D(n92), .CK(i_w_clk), .RN(n200), .Q(\mem[9][5] )
         );
  DFFRQX2M \mem_reg[9][4]  ( .D(n91), .CK(i_w_clk), .RN(n200), .Q(\mem[9][4] )
         );
  DFFRQX2M \mem_reg[9][3]  ( .D(n90), .CK(i_w_clk), .RN(n200), .Q(\mem[9][3] )
         );
  DFFRQX2M \mem_reg[9][2]  ( .D(n89), .CK(i_w_clk), .RN(n200), .Q(\mem[9][2] )
         );
  DFFRQX2M \mem_reg[9][1]  ( .D(n88), .CK(i_w_clk), .RN(n201), .Q(\mem[9][1] )
         );
  DFFRQX2M \mem_reg[9][0]  ( .D(n87), .CK(i_w_clk), .RN(n201), .Q(\mem[9][0] )
         );
  DFFRQX2M \mem_reg[13][7]  ( .D(n62), .CK(i_w_clk), .RN(n203), .Q(
        \mem[13][7] ) );
  DFFRQX2M \mem_reg[13][6]  ( .D(n61), .CK(i_w_clk), .RN(n203), .Q(
        \mem[13][6] ) );
  DFFRQX2M \mem_reg[13][5]  ( .D(n60), .CK(i_w_clk), .RN(n203), .Q(
        \mem[13][5] ) );
  DFFRQX2M \mem_reg[13][4]  ( .D(n59), .CK(i_w_clk), .RN(n203), .Q(
        \mem[13][4] ) );
  DFFRQX2M \mem_reg[13][3]  ( .D(n58), .CK(i_w_clk), .RN(n203), .Q(
        \mem[13][3] ) );
  DFFRQX2M \mem_reg[13][2]  ( .D(n57), .CK(i_w_clk), .RN(n203), .Q(
        \mem[13][2] ) );
  DFFRQX2M \mem_reg[13][1]  ( .D(n56), .CK(i_w_clk), .RN(n203), .Q(
        \mem[13][1] ) );
  DFFRQX2M \mem_reg[13][0]  ( .D(n55), .CK(i_w_clk), .RN(n203), .Q(
        \mem[13][0] ) );
  DFFRQX2M \mem_reg[3][7]  ( .D(n142), .CK(i_w_clk), .RN(n196), .Q(\mem[3][7] ) );
  DFFRQX2M \mem_reg[3][6]  ( .D(n141), .CK(i_w_clk), .RN(n196), .Q(\mem[3][6] ) );
  DFFRQX2M \mem_reg[3][5]  ( .D(n140), .CK(i_w_clk), .RN(n197), .Q(\mem[3][5] ) );
  DFFRQX2M \mem_reg[3][4]  ( .D(n139), .CK(i_w_clk), .RN(n197), .Q(\mem[3][4] ) );
  DFFRQX2M \mem_reg[3][3]  ( .D(n138), .CK(i_w_clk), .RN(n197), .Q(\mem[3][3] ) );
  DFFRQX2M \mem_reg[3][2]  ( .D(n137), .CK(i_w_clk), .RN(n197), .Q(\mem[3][2] ) );
  DFFRQX2M \mem_reg[3][1]  ( .D(n136), .CK(i_w_clk), .RN(n197), .Q(\mem[3][1] ) );
  DFFRQX2M \mem_reg[3][0]  ( .D(n135), .CK(i_w_clk), .RN(n197), .Q(\mem[3][0] ) );
  DFFRQX2M \mem_reg[7][7]  ( .D(n110), .CK(i_w_clk), .RN(n199), .Q(\mem[7][7] ) );
  DFFRQX2M \mem_reg[7][6]  ( .D(n109), .CK(i_w_clk), .RN(n199), .Q(\mem[7][6] ) );
  DFFRQX2M \mem_reg[7][5]  ( .D(n108), .CK(i_w_clk), .RN(n199), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n107), .CK(i_w_clk), .RN(n199), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n106), .CK(i_w_clk), .RN(n199), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n105), .CK(i_w_clk), .RN(n199), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n104), .CK(i_w_clk), .RN(n199), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n103), .CK(i_w_clk), .RN(n199), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[11][7]  ( .D(n78), .CK(i_w_clk), .RN(n201), .Q(
        \mem[11][7] ) );
  DFFRQX2M \mem_reg[11][6]  ( .D(n77), .CK(i_w_clk), .RN(n201), .Q(
        \mem[11][6] ) );
  DFFRQX2M \mem_reg[11][5]  ( .D(n76), .CK(i_w_clk), .RN(n201), .Q(
        \mem[11][5] ) );
  DFFRQX2M \mem_reg[11][4]  ( .D(n75), .CK(i_w_clk), .RN(n202), .Q(
        \mem[11][4] ) );
  DFFRQX2M \mem_reg[11][3]  ( .D(n74), .CK(i_w_clk), .RN(n202), .Q(
        \mem[11][3] ) );
  DFFRQX2M \mem_reg[11][2]  ( .D(n73), .CK(i_w_clk), .RN(n202), .Q(
        \mem[11][2] ) );
  DFFRQX2M \mem_reg[11][1]  ( .D(n72), .CK(i_w_clk), .RN(n202), .Q(
        \mem[11][1] ) );
  DFFRQX2M \mem_reg[11][0]  ( .D(n71), .CK(i_w_clk), .RN(n202), .Q(
        \mem[11][0] ) );
  DFFRQX2M \mem_reg[15][7]  ( .D(n46), .CK(i_w_clk), .RN(n204), .Q(
        \mem[15][7] ) );
  DFFRQX2M \mem_reg[15][6]  ( .D(n45), .CK(i_w_clk), .RN(n204), .Q(
        \mem[15][6] ) );
  DFFRQX2M \mem_reg[15][5]  ( .D(n44), .CK(i_w_clk), .RN(n204), .Q(
        \mem[15][5] ) );
  DFFRQX2M \mem_reg[15][4]  ( .D(n43), .CK(i_w_clk), .RN(n204), .Q(
        \mem[15][4] ) );
  DFFRQX2M \mem_reg[15][3]  ( .D(n42), .CK(i_w_clk), .RN(n204), .Q(
        \mem[15][3] ) );
  DFFRQX2M \mem_reg[15][2]  ( .D(n41), .CK(i_w_clk), .RN(n204), .Q(
        \mem[15][2] ) );
  DFFRQX2M \mem_reg[15][1]  ( .D(n40), .CK(i_w_clk), .RN(n204), .Q(
        \mem[15][1] ) );
  DFFRQX2M \mem_reg[15][0]  ( .D(n39), .CK(i_w_clk), .RN(n204), .Q(
        \mem[15][0] ) );
  DFFRQX2M \mem_reg[2][7]  ( .D(n150), .CK(i_w_clk), .RN(n196), .Q(\mem[2][7] ) );
  DFFRQX2M \mem_reg[2][6]  ( .D(n149), .CK(i_w_clk), .RN(n196), .Q(\mem[2][6] ) );
  DFFRQX2M \mem_reg[2][5]  ( .D(n148), .CK(i_w_clk), .RN(n196), .Q(\mem[2][5] ) );
  DFFRQX2M \mem_reg[2][4]  ( .D(n147), .CK(i_w_clk), .RN(n196), .Q(\mem[2][4] ) );
  DFFRQX2M \mem_reg[2][3]  ( .D(n146), .CK(i_w_clk), .RN(n196), .Q(\mem[2][3] ) );
  DFFRQX2M \mem_reg[2][2]  ( .D(n145), .CK(i_w_clk), .RN(n196), .Q(\mem[2][2] ) );
  DFFRQX2M \mem_reg[2][1]  ( .D(n144), .CK(i_w_clk), .RN(n196), .Q(\mem[2][1] ) );
  DFFRQX2M \mem_reg[2][0]  ( .D(n143), .CK(i_w_clk), .RN(n196), .Q(\mem[2][0] ) );
  DFFRQX2M \mem_reg[6][7]  ( .D(n118), .CK(i_w_clk), .RN(n198), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n117), .CK(i_w_clk), .RN(n198), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n116), .CK(i_w_clk), .RN(n198), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n115), .CK(i_w_clk), .RN(n198), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n114), .CK(i_w_clk), .RN(n199), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n113), .CK(i_w_clk), .RN(n199), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n112), .CK(i_w_clk), .RN(n199), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n111), .CK(i_w_clk), .RN(n199), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[10][7]  ( .D(n86), .CK(i_w_clk), .RN(n201), .Q(
        \mem[10][7] ) );
  DFFRQX2M \mem_reg[10][6]  ( .D(n85), .CK(i_w_clk), .RN(n201), .Q(
        \mem[10][6] ) );
  DFFRQX2M \mem_reg[10][5]  ( .D(n84), .CK(i_w_clk), .RN(n201), .Q(
        \mem[10][5] ) );
  DFFRQX2M \mem_reg[10][4]  ( .D(n83), .CK(i_w_clk), .RN(n201), .Q(
        \mem[10][4] ) );
  DFFRQX2M \mem_reg[10][3]  ( .D(n82), .CK(i_w_clk), .RN(n201), .Q(
        \mem[10][3] ) );
  DFFRQX2M \mem_reg[10][2]  ( .D(n81), .CK(i_w_clk), .RN(n201), .Q(
        \mem[10][2] ) );
  DFFRQX2M \mem_reg[10][1]  ( .D(n80), .CK(i_w_clk), .RN(n201), .Q(
        \mem[10][1] ) );
  DFFRQX2M \mem_reg[10][0]  ( .D(n79), .CK(i_w_clk), .RN(n201), .Q(
        \mem[10][0] ) );
  DFFRQX2M \mem_reg[14][7]  ( .D(n54), .CK(i_w_clk), .RN(n203), .Q(
        \mem[14][7] ) );
  DFFRQX2M \mem_reg[14][6]  ( .D(n53), .CK(i_w_clk), .RN(n203), .Q(
        \mem[14][6] ) );
  DFFRQX2M \mem_reg[14][5]  ( .D(n52), .CK(i_w_clk), .RN(n203), .Q(
        \mem[14][5] ) );
  DFFRQX2M \mem_reg[14][4]  ( .D(n51), .CK(i_w_clk), .RN(n203), .Q(
        \mem[14][4] ) );
  DFFRQX2M \mem_reg[14][3]  ( .D(n50), .CK(i_w_clk), .RN(n203), .Q(
        \mem[14][3] ) );
  DFFRQX2M \mem_reg[14][2]  ( .D(n49), .CK(i_w_clk), .RN(n204), .Q(
        \mem[14][2] ) );
  DFFRQX2M \mem_reg[14][1]  ( .D(n48), .CK(i_w_clk), .RN(n204), .Q(
        \mem[14][1] ) );
  DFFRQX2M \mem_reg[14][0]  ( .D(n47), .CK(i_w_clk), .RN(n204), .Q(
        \mem[14][0] ) );
  DFFRQX2M \mem_reg[0][7]  ( .D(n166), .CK(i_w_clk), .RN(n195), .Q(\mem[0][7] ) );
  DFFRQX2M \mem_reg[0][6]  ( .D(n165), .CK(i_w_clk), .RN(n195), .Q(\mem[0][6] ) );
  DFFRQX2M \mem_reg[0][5]  ( .D(n164), .CK(i_w_clk), .RN(n195), .Q(\mem[0][5] ) );
  DFFRQX2M \mem_reg[0][4]  ( .D(n163), .CK(i_w_clk), .RN(n195), .Q(\mem[0][4] ) );
  DFFRQX2M \mem_reg[0][3]  ( .D(n162), .CK(i_w_clk), .RN(n195), .Q(\mem[0][3] ) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n161), .CK(i_w_clk), .RN(n195), .Q(\mem[0][2] ) );
  DFFRQX2M \mem_reg[0][1]  ( .D(n160), .CK(i_w_clk), .RN(n195), .Q(\mem[0][1] ) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n159), .CK(i_w_clk), .RN(n195), .Q(\mem[0][0] ) );
  DFFRQX2M \mem_reg[4][7]  ( .D(n134), .CK(i_w_clk), .RN(n197), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n133), .CK(i_w_clk), .RN(n197), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n132), .CK(i_w_clk), .RN(n197), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n131), .CK(i_w_clk), .RN(n197), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n130), .CK(i_w_clk), .RN(n197), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n129), .CK(i_w_clk), .RN(n197), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n128), .CK(i_w_clk), .RN(n197), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n127), .CK(i_w_clk), .RN(n198), .Q(\mem[4][0] ) );
  DFFRQX2M \mem_reg[8][7]  ( .D(n102), .CK(i_w_clk), .RN(n199), .Q(\mem[8][7] ) );
  DFFRQX2M \mem_reg[8][6]  ( .D(n101), .CK(i_w_clk), .RN(n200), .Q(\mem[8][6] ) );
  DFFRQX2M \mem_reg[8][5]  ( .D(n100), .CK(i_w_clk), .RN(n200), .Q(\mem[8][5] ) );
  DFFRQX2M \mem_reg[8][4]  ( .D(n99), .CK(i_w_clk), .RN(n200), .Q(\mem[8][4] )
         );
  DFFRQX2M \mem_reg[8][3]  ( .D(n98), .CK(i_w_clk), .RN(n200), .Q(\mem[8][3] )
         );
  DFFRQX2M \mem_reg[8][2]  ( .D(n97), .CK(i_w_clk), .RN(n200), .Q(\mem[8][2] )
         );
  DFFRQX2M \mem_reg[8][1]  ( .D(n96), .CK(i_w_clk), .RN(n200), .Q(\mem[8][1] )
         );
  DFFRQX2M \mem_reg[8][0]  ( .D(n95), .CK(i_w_clk), .RN(n200), .Q(\mem[8][0] )
         );
  DFFRQX2M \mem_reg[12][7]  ( .D(n70), .CK(i_w_clk), .RN(n202), .Q(
        \mem[12][7] ) );
  DFFRQX2M \mem_reg[12][6]  ( .D(n69), .CK(i_w_clk), .RN(n202), .Q(
        \mem[12][6] ) );
  DFFRQX2M \mem_reg[12][5]  ( .D(n68), .CK(i_w_clk), .RN(n202), .Q(
        \mem[12][5] ) );
  DFFRQX2M \mem_reg[12][4]  ( .D(n67), .CK(i_w_clk), .RN(n202), .Q(
        \mem[12][4] ) );
  DFFRQX2M \mem_reg[12][3]  ( .D(n66), .CK(i_w_clk), .RN(n202), .Q(
        \mem[12][3] ) );
  DFFRQX2M \mem_reg[12][2]  ( .D(n65), .CK(i_w_clk), .RN(n202), .Q(
        \mem[12][2] ) );
  DFFRQX2M \mem_reg[12][1]  ( .D(n64), .CK(i_w_clk), .RN(n202), .Q(
        \mem[12][1] ) );
  DFFRQX2M \mem_reg[12][0]  ( .D(n63), .CK(i_w_clk), .RN(n202), .Q(
        \mem[12][0] ) );
  NOR2X2M U2 ( .A(n219), .B(i_wr_addr[2]), .Y(n21) );
  NOR2X2M U3 ( .A(i_wr_addr[1]), .B(i_wr_addr[2]), .Y(n24) );
  NOR2X2M U4 ( .A(n220), .B(i_wr_addr[1]), .Y(n18) );
  INVX2M U5 ( .A(n192), .Y(n193) );
  INVX2M U6 ( .A(n191), .Y(n194) );
  BUFX2M U7 ( .A(n191), .Y(n192) );
  BUFX2M U8 ( .A(n205), .Y(n203) );
  BUFX2M U9 ( .A(n206), .Y(n202) );
  BUFX2M U10 ( .A(n206), .Y(n201) );
  BUFX2M U11 ( .A(n207), .Y(n200) );
  BUFX2M U12 ( .A(n207), .Y(n199) );
  BUFX2M U13 ( .A(n208), .Y(n198) );
  BUFX2M U14 ( .A(n208), .Y(n197) );
  BUFX2M U15 ( .A(n209), .Y(n196) );
  BUFX2M U16 ( .A(n209), .Y(n195) );
  BUFX2M U17 ( .A(n205), .Y(n204) );
  NAND2X2M U18 ( .A(n31), .B(n13), .Y(n30) );
  NAND2X2M U19 ( .A(n16), .B(n13), .Y(n15) );
  INVX2M U20 ( .A(n189), .Y(n190) );
  INVX2M U21 ( .A(N10), .Y(n191) );
  BUFX2M U22 ( .A(i_rst_n), .Y(n205) );
  BUFX2M U23 ( .A(i_rst_n), .Y(n206) );
  BUFX2M U24 ( .A(i_rst_n), .Y(n207) );
  BUFX2M U25 ( .A(i_rst_n), .Y(n208) );
  BUFX2M U26 ( .A(i_rst_n), .Y(n209) );
  NAND2X2M U27 ( .A(n18), .B(n14), .Y(n17) );
  NAND2X2M U28 ( .A(n21), .B(n14), .Y(n20) );
  NAND2X2M U29 ( .A(n24), .B(n14), .Y(n23) );
  NAND2X2M U30 ( .A(n29), .B(n18), .Y(n32) );
  NAND2X2M U31 ( .A(n31), .B(n18), .Y(n33) );
  NAND2X2M U32 ( .A(n29), .B(n21), .Y(n34) );
  NAND2X2M U33 ( .A(n31), .B(n21), .Y(n35) );
  NAND2X2M U34 ( .A(n29), .B(n24), .Y(n36) );
  NAND2X2M U35 ( .A(n31), .B(n24), .Y(n38) );
  NAND2X2M U36 ( .A(n29), .B(n13), .Y(n28) );
  NOR2BX2M U37 ( .AN(i_w_inc), .B(i_w_full), .Y(n27) );
  AND2X2M U38 ( .A(n37), .B(n218), .Y(n31) );
  NOR2X2M U39 ( .A(n220), .B(n219), .Y(n13) );
  NAND2X2M U40 ( .A(n18), .B(n16), .Y(n19) );
  NAND2X2M U41 ( .A(n21), .B(n16), .Y(n22) );
  NAND2X2M U42 ( .A(n24), .B(n16), .Y(n26) );
  NAND2X2M U43 ( .A(n13), .B(n14), .Y(n12) );
  AND2X2M U44 ( .A(n25), .B(n218), .Y(n16) );
  BUFX2M U45 ( .A(n188), .Y(n189) );
  OAI2BB2X1M U46 ( .B0(n210), .B1(n20), .A0N(\mem[11][0] ), .A1N(n20), .Y(n71)
         );
  OAI2BB2X1M U47 ( .B0(n211), .B1(n20), .A0N(\mem[11][1] ), .A1N(n20), .Y(n72)
         );
  OAI2BB2X1M U48 ( .B0(n212), .B1(n20), .A0N(\mem[11][2] ), .A1N(n20), .Y(n73)
         );
  OAI2BB2X1M U49 ( .B0(n213), .B1(n20), .A0N(\mem[11][3] ), .A1N(n20), .Y(n74)
         );
  OAI2BB2X1M U50 ( .B0(n214), .B1(n20), .A0N(\mem[11][4] ), .A1N(n20), .Y(n75)
         );
  OAI2BB2X1M U51 ( .B0(n215), .B1(n20), .A0N(\mem[11][5] ), .A1N(n20), .Y(n76)
         );
  OAI2BB2X1M U52 ( .B0(n216), .B1(n20), .A0N(\mem[11][6] ), .A1N(n20), .Y(n77)
         );
  OAI2BB2X1M U53 ( .B0(n217), .B1(n20), .A0N(\mem[11][7] ), .A1N(n20), .Y(n78)
         );
  OAI2BB2X1M U54 ( .B0(n210), .B1(n23), .A0N(\mem[9][0] ), .A1N(n23), .Y(n87)
         );
  OAI2BB2X1M U55 ( .B0(n211), .B1(n23), .A0N(\mem[9][1] ), .A1N(n23), .Y(n88)
         );
  OAI2BB2X1M U56 ( .B0(n212), .B1(n23), .A0N(\mem[9][2] ), .A1N(n23), .Y(n89)
         );
  OAI2BB2X1M U57 ( .B0(n213), .B1(n23), .A0N(\mem[9][3] ), .A1N(n23), .Y(n90)
         );
  OAI2BB2X1M U58 ( .B0(n214), .B1(n23), .A0N(\mem[9][4] ), .A1N(n23), .Y(n91)
         );
  OAI2BB2X1M U59 ( .B0(n215), .B1(n23), .A0N(\mem[9][5] ), .A1N(n23), .Y(n92)
         );
  OAI2BB2X1M U60 ( .B0(n216), .B1(n23), .A0N(\mem[9][6] ), .A1N(n23), .Y(n93)
         );
  OAI2BB2X1M U61 ( .B0(n217), .B1(n23), .A0N(\mem[9][7] ), .A1N(n23), .Y(n94)
         );
  OAI2BB2X1M U62 ( .B0(n210), .B1(n17), .A0N(\mem[13][0] ), .A1N(n17), .Y(n55)
         );
  OAI2BB2X1M U63 ( .B0(n211), .B1(n17), .A0N(\mem[13][1] ), .A1N(n17), .Y(n56)
         );
  OAI2BB2X1M U64 ( .B0(n212), .B1(n17), .A0N(\mem[13][2] ), .A1N(n17), .Y(n57)
         );
  OAI2BB2X1M U65 ( .B0(n213), .B1(n17), .A0N(\mem[13][3] ), .A1N(n17), .Y(n58)
         );
  OAI2BB2X1M U66 ( .B0(n214), .B1(n17), .A0N(\mem[13][4] ), .A1N(n17), .Y(n59)
         );
  OAI2BB2X1M U67 ( .B0(n215), .B1(n17), .A0N(\mem[13][5] ), .A1N(n17), .Y(n60)
         );
  OAI2BB2X1M U68 ( .B0(n216), .B1(n17), .A0N(\mem[13][6] ), .A1N(n17), .Y(n61)
         );
  OAI2BB2X1M U69 ( .B0(n217), .B1(n17), .A0N(\mem[13][7] ), .A1N(n17), .Y(n62)
         );
  OAI2BB2X1M U70 ( .B0(n210), .B1(n34), .A0N(\mem[3][0] ), .A1N(n34), .Y(n135)
         );
  OAI2BB2X1M U71 ( .B0(n211), .B1(n34), .A0N(\mem[3][1] ), .A1N(n34), .Y(n136)
         );
  OAI2BB2X1M U72 ( .B0(n212), .B1(n34), .A0N(\mem[3][2] ), .A1N(n34), .Y(n137)
         );
  OAI2BB2X1M U73 ( .B0(n213), .B1(n34), .A0N(\mem[3][3] ), .A1N(n34), .Y(n138)
         );
  OAI2BB2X1M U74 ( .B0(n214), .B1(n34), .A0N(\mem[3][4] ), .A1N(n34), .Y(n139)
         );
  OAI2BB2X1M U75 ( .B0(n215), .B1(n34), .A0N(\mem[3][5] ), .A1N(n34), .Y(n140)
         );
  OAI2BB2X1M U76 ( .B0(n216), .B1(n34), .A0N(\mem[3][6] ), .A1N(n34), .Y(n141)
         );
  OAI2BB2X1M U77 ( .B0(n217), .B1(n34), .A0N(\mem[3][7] ), .A1N(n34), .Y(n142)
         );
  OAI2BB2X1M U78 ( .B0(n210), .B1(n35), .A0N(\mem[2][0] ), .A1N(n35), .Y(n143)
         );
  OAI2BB2X1M U79 ( .B0(n211), .B1(n35), .A0N(\mem[2][1] ), .A1N(n35), .Y(n144)
         );
  OAI2BB2X1M U80 ( .B0(n212), .B1(n35), .A0N(\mem[2][2] ), .A1N(n35), .Y(n145)
         );
  OAI2BB2X1M U81 ( .B0(n213), .B1(n35), .A0N(\mem[2][3] ), .A1N(n35), .Y(n146)
         );
  OAI2BB2X1M U82 ( .B0(n214), .B1(n35), .A0N(\mem[2][4] ), .A1N(n35), .Y(n147)
         );
  OAI2BB2X1M U83 ( .B0(n215), .B1(n35), .A0N(\mem[2][5] ), .A1N(n35), .Y(n148)
         );
  OAI2BB2X1M U84 ( .B0(n216), .B1(n35), .A0N(\mem[2][6] ), .A1N(n35), .Y(n149)
         );
  OAI2BB2X1M U85 ( .B0(n217), .B1(n35), .A0N(\mem[2][7] ), .A1N(n35), .Y(n150)
         );
  OAI2BB2X1M U86 ( .B0(n210), .B1(n36), .A0N(\mem[1][0] ), .A1N(n36), .Y(n151)
         );
  OAI2BB2X1M U87 ( .B0(n211), .B1(n36), .A0N(\mem[1][1] ), .A1N(n36), .Y(n152)
         );
  OAI2BB2X1M U88 ( .B0(n212), .B1(n36), .A0N(\mem[1][2] ), .A1N(n36), .Y(n153)
         );
  OAI2BB2X1M U89 ( .B0(n213), .B1(n36), .A0N(\mem[1][3] ), .A1N(n36), .Y(n154)
         );
  OAI2BB2X1M U90 ( .B0(n214), .B1(n36), .A0N(\mem[1][4] ), .A1N(n36), .Y(n155)
         );
  OAI2BB2X1M U91 ( .B0(n215), .B1(n36), .A0N(\mem[1][5] ), .A1N(n36), .Y(n156)
         );
  OAI2BB2X1M U92 ( .B0(n216), .B1(n36), .A0N(\mem[1][6] ), .A1N(n36), .Y(n157)
         );
  OAI2BB2X1M U93 ( .B0(n217), .B1(n36), .A0N(\mem[1][7] ), .A1N(n36), .Y(n158)
         );
  OAI2BB2X1M U94 ( .B0(n210), .B1(n38), .A0N(\mem[0][0] ), .A1N(n38), .Y(n159)
         );
  OAI2BB2X1M U95 ( .B0(n211), .B1(n38), .A0N(\mem[0][1] ), .A1N(n38), .Y(n160)
         );
  OAI2BB2X1M U96 ( .B0(n212), .B1(n38), .A0N(\mem[0][2] ), .A1N(n38), .Y(n161)
         );
  OAI2BB2X1M U97 ( .B0(n213), .B1(n38), .A0N(\mem[0][3] ), .A1N(n38), .Y(n162)
         );
  OAI2BB2X1M U98 ( .B0(n214), .B1(n38), .A0N(\mem[0][4] ), .A1N(n38), .Y(n163)
         );
  OAI2BB2X1M U99 ( .B0(n215), .B1(n38), .A0N(\mem[0][5] ), .A1N(n38), .Y(n164)
         );
  OAI2BB2X1M U100 ( .B0(n216), .B1(n38), .A0N(\mem[0][6] ), .A1N(n38), .Y(n165) );
  OAI2BB2X1M U101 ( .B0(n217), .B1(n38), .A0N(\mem[0][7] ), .A1N(n38), .Y(n166) );
  OAI2BB2X1M U102 ( .B0(n210), .B1(n28), .A0N(\mem[7][0] ), .A1N(n28), .Y(n103) );
  OAI2BB2X1M U103 ( .B0(n211), .B1(n28), .A0N(\mem[7][1] ), .A1N(n28), .Y(n104) );
  OAI2BB2X1M U104 ( .B0(n212), .B1(n28), .A0N(\mem[7][2] ), .A1N(n28), .Y(n105) );
  OAI2BB2X1M U105 ( .B0(n213), .B1(n28), .A0N(\mem[7][3] ), .A1N(n28), .Y(n106) );
  OAI2BB2X1M U106 ( .B0(n214), .B1(n28), .A0N(\mem[7][4] ), .A1N(n28), .Y(n107) );
  OAI2BB2X1M U107 ( .B0(n215), .B1(n28), .A0N(\mem[7][5] ), .A1N(n28), .Y(n108) );
  OAI2BB2X1M U108 ( .B0(n216), .B1(n28), .A0N(\mem[7][6] ), .A1N(n28), .Y(n109) );
  OAI2BB2X1M U109 ( .B0(n217), .B1(n28), .A0N(\mem[7][7] ), .A1N(n28), .Y(n110) );
  OAI2BB2X1M U110 ( .B0(n210), .B1(n30), .A0N(\mem[6][0] ), .A1N(n30), .Y(n111) );
  OAI2BB2X1M U111 ( .B0(n211), .B1(n30), .A0N(\mem[6][1] ), .A1N(n30), .Y(n112) );
  OAI2BB2X1M U112 ( .B0(n212), .B1(n30), .A0N(\mem[6][2] ), .A1N(n30), .Y(n113) );
  OAI2BB2X1M U113 ( .B0(n213), .B1(n30), .A0N(\mem[6][3] ), .A1N(n30), .Y(n114) );
  OAI2BB2X1M U114 ( .B0(n214), .B1(n30), .A0N(\mem[6][4] ), .A1N(n30), .Y(n115) );
  OAI2BB2X1M U115 ( .B0(n215), .B1(n30), .A0N(\mem[6][5] ), .A1N(n30), .Y(n116) );
  OAI2BB2X1M U116 ( .B0(n216), .B1(n30), .A0N(\mem[6][6] ), .A1N(n30), .Y(n117) );
  OAI2BB2X1M U117 ( .B0(n217), .B1(n30), .A0N(\mem[6][7] ), .A1N(n30), .Y(n118) );
  OAI2BB2X1M U118 ( .B0(n210), .B1(n32), .A0N(\mem[5][0] ), .A1N(n32), .Y(n119) );
  OAI2BB2X1M U119 ( .B0(n211), .B1(n32), .A0N(\mem[5][1] ), .A1N(n32), .Y(n120) );
  OAI2BB2X1M U120 ( .B0(n212), .B1(n32), .A0N(\mem[5][2] ), .A1N(n32), .Y(n121) );
  OAI2BB2X1M U121 ( .B0(n213), .B1(n32), .A0N(\mem[5][3] ), .A1N(n32), .Y(n122) );
  OAI2BB2X1M U122 ( .B0(n214), .B1(n32), .A0N(\mem[5][4] ), .A1N(n32), .Y(n123) );
  OAI2BB2X1M U123 ( .B0(n215), .B1(n32), .A0N(\mem[5][5] ), .A1N(n32), .Y(n124) );
  OAI2BB2X1M U124 ( .B0(n216), .B1(n32), .A0N(\mem[5][6] ), .A1N(n32), .Y(n125) );
  OAI2BB2X1M U125 ( .B0(n217), .B1(n32), .A0N(\mem[5][7] ), .A1N(n32), .Y(n126) );
  OAI2BB2X1M U126 ( .B0(n210), .B1(n33), .A0N(\mem[4][0] ), .A1N(n33), .Y(n127) );
  OAI2BB2X1M U127 ( .B0(n211), .B1(n33), .A0N(\mem[4][1] ), .A1N(n33), .Y(n128) );
  OAI2BB2X1M U128 ( .B0(n212), .B1(n33), .A0N(\mem[4][2] ), .A1N(n33), .Y(n129) );
  OAI2BB2X1M U129 ( .B0(n213), .B1(n33), .A0N(\mem[4][3] ), .A1N(n33), .Y(n130) );
  OAI2BB2X1M U130 ( .B0(n214), .B1(n33), .A0N(\mem[4][4] ), .A1N(n33), .Y(n131) );
  OAI2BB2X1M U131 ( .B0(n215), .B1(n33), .A0N(\mem[4][5] ), .A1N(n33), .Y(n132) );
  OAI2BB2X1M U132 ( .B0(n216), .B1(n33), .A0N(\mem[4][6] ), .A1N(n33), .Y(n133) );
  OAI2BB2X1M U133 ( .B0(n217), .B1(n33), .A0N(\mem[4][7] ), .A1N(n33), .Y(n134) );
  AND2X2M U134 ( .A(n25), .B(i_wr_addr[0]), .Y(n14) );
  NOR2BX2M U135 ( .AN(n27), .B(i_wr_addr[3]), .Y(n37) );
  AND2X2M U136 ( .A(n37), .B(i_wr_addr[0]), .Y(n29) );
  AND2X2M U137 ( .A(i_wr_addr[3]), .B(n27), .Y(n25) );
  INVX2M U138 ( .A(i_wr_data[0]), .Y(n210) );
  INVX2M U139 ( .A(i_wr_data[1]), .Y(n211) );
  INVX2M U140 ( .A(i_wr_data[2]), .Y(n212) );
  INVX2M U141 ( .A(i_wr_data[3]), .Y(n213) );
  INVX2M U142 ( .A(i_wr_data[4]), .Y(n214) );
  INVX2M U143 ( .A(i_wr_data[5]), .Y(n215) );
  INVX2M U144 ( .A(i_wr_data[6]), .Y(n216) );
  INVX2M U145 ( .A(i_wr_data[7]), .Y(n217) );
  OAI2BB2X1M U146 ( .B0(n12), .B1(n210), .A0N(\mem[15][0] ), .A1N(n12), .Y(n39) );
  OAI2BB2X1M U147 ( .B0(n12), .B1(n211), .A0N(\mem[15][1] ), .A1N(n12), .Y(n40) );
  OAI2BB2X1M U148 ( .B0(n12), .B1(n212), .A0N(\mem[15][2] ), .A1N(n12), .Y(n41) );
  OAI2BB2X1M U149 ( .B0(n12), .B1(n213), .A0N(\mem[15][3] ), .A1N(n12), .Y(n42) );
  OAI2BB2X1M U150 ( .B0(n12), .B1(n214), .A0N(\mem[15][4] ), .A1N(n12), .Y(n43) );
  OAI2BB2X1M U151 ( .B0(n12), .B1(n215), .A0N(\mem[15][5] ), .A1N(n12), .Y(n44) );
  OAI2BB2X1M U152 ( .B0(n12), .B1(n216), .A0N(\mem[15][6] ), .A1N(n12), .Y(n45) );
  OAI2BB2X1M U153 ( .B0(n12), .B1(n217), .A0N(\mem[15][7] ), .A1N(n12), .Y(n46) );
  OAI2BB2X1M U154 ( .B0(n210), .B1(n22), .A0N(\mem[10][0] ), .A1N(n22), .Y(n79) );
  OAI2BB2X1M U155 ( .B0(n211), .B1(n22), .A0N(\mem[10][1] ), .A1N(n22), .Y(n80) );
  OAI2BB2X1M U156 ( .B0(n212), .B1(n22), .A0N(\mem[10][2] ), .A1N(n22), .Y(n81) );
  OAI2BB2X1M U157 ( .B0(n213), .B1(n22), .A0N(\mem[10][3] ), .A1N(n22), .Y(n82) );
  OAI2BB2X1M U158 ( .B0(n214), .B1(n22), .A0N(\mem[10][4] ), .A1N(n22), .Y(n83) );
  OAI2BB2X1M U159 ( .B0(n215), .B1(n22), .A0N(\mem[10][5] ), .A1N(n22), .Y(n84) );
  OAI2BB2X1M U160 ( .B0(n216), .B1(n22), .A0N(\mem[10][6] ), .A1N(n22), .Y(n85) );
  OAI2BB2X1M U161 ( .B0(n217), .B1(n22), .A0N(\mem[10][7] ), .A1N(n22), .Y(n86) );
  OAI2BB2X1M U162 ( .B0(n210), .B1(n26), .A0N(\mem[8][0] ), .A1N(n26), .Y(n95)
         );
  OAI2BB2X1M U163 ( .B0(n211), .B1(n26), .A0N(\mem[8][1] ), .A1N(n26), .Y(n96)
         );
  OAI2BB2X1M U164 ( .B0(n212), .B1(n26), .A0N(\mem[8][2] ), .A1N(n26), .Y(n97)
         );
  OAI2BB2X1M U165 ( .B0(n213), .B1(n26), .A0N(\mem[8][3] ), .A1N(n26), .Y(n98)
         );
  OAI2BB2X1M U166 ( .B0(n214), .B1(n26), .A0N(\mem[8][4] ), .A1N(n26), .Y(n99)
         );
  OAI2BB2X1M U167 ( .B0(n215), .B1(n26), .A0N(\mem[8][5] ), .A1N(n26), .Y(n100) );
  OAI2BB2X1M U168 ( .B0(n216), .B1(n26), .A0N(\mem[8][6] ), .A1N(n26), .Y(n101) );
  OAI2BB2X1M U169 ( .B0(n217), .B1(n26), .A0N(\mem[8][7] ), .A1N(n26), .Y(n102) );
  OAI2BB2X1M U170 ( .B0(n210), .B1(n19), .A0N(\mem[12][0] ), .A1N(n19), .Y(n63) );
  OAI2BB2X1M U171 ( .B0(n211), .B1(n19), .A0N(\mem[12][1] ), .A1N(n19), .Y(n64) );
  OAI2BB2X1M U172 ( .B0(n212), .B1(n19), .A0N(\mem[12][2] ), .A1N(n19), .Y(n65) );
  OAI2BB2X1M U173 ( .B0(n213), .B1(n19), .A0N(\mem[12][3] ), .A1N(n19), .Y(n66) );
  OAI2BB2X1M U174 ( .B0(n214), .B1(n19), .A0N(\mem[12][4] ), .A1N(n19), .Y(n67) );
  OAI2BB2X1M U175 ( .B0(n215), .B1(n19), .A0N(\mem[12][5] ), .A1N(n19), .Y(n68) );
  OAI2BB2X1M U176 ( .B0(n216), .B1(n19), .A0N(\mem[12][6] ), .A1N(n19), .Y(n69) );
  OAI2BB2X1M U177 ( .B0(n217), .B1(n19), .A0N(\mem[12][7] ), .A1N(n19), .Y(n70) );
  OAI2BB2X1M U178 ( .B0(n210), .B1(n15), .A0N(\mem[14][0] ), .A1N(n15), .Y(n47) );
  OAI2BB2X1M U179 ( .B0(n211), .B1(n15), .A0N(\mem[14][1] ), .A1N(n15), .Y(n48) );
  OAI2BB2X1M U180 ( .B0(n212), .B1(n15), .A0N(\mem[14][2] ), .A1N(n15), .Y(n49) );
  OAI2BB2X1M U181 ( .B0(n213), .B1(n15), .A0N(\mem[14][3] ), .A1N(n15), .Y(n50) );
  OAI2BB2X1M U182 ( .B0(n214), .B1(n15), .A0N(\mem[14][4] ), .A1N(n15), .Y(n51) );
  OAI2BB2X1M U183 ( .B0(n215), .B1(n15), .A0N(\mem[14][5] ), .A1N(n15), .Y(n52) );
  OAI2BB2X1M U184 ( .B0(n216), .B1(n15), .A0N(\mem[14][6] ), .A1N(n15), .Y(n53) );
  OAI2BB2X1M U185 ( .B0(n217), .B1(n15), .A0N(\mem[14][7] ), .A1N(n15), .Y(n54) );
  INVX2M U186 ( .A(i_wr_addr[2]), .Y(n220) );
  INVX2M U187 ( .A(i_wr_addr[1]), .Y(n219) );
  INVX2M U188 ( .A(i_wr_addr[0]), .Y(n218) );
  MX4X1M U189 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N13), .S1(N12), .Y(
        o_rd_data[0]) );
  MX4X1M U190 ( .A(\mem[8][0] ), .B(\mem[9][0] ), .C(\mem[10][0] ), .D(
        \mem[11][0] ), .S0(N10), .S1(N11), .Y(n2) );
  MX4X1M U191 ( .A(\mem[12][0] ), .B(\mem[13][0] ), .C(\mem[14][0] ), .D(
        \mem[15][0] ), .S0(n193), .S1(n190), .Y(n1) );
  MX4X1M U192 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(N10), .S1(N11), .Y(n3) );
  MX4X1M U193 ( .A(n167), .B(n10), .C(n11), .D(n9), .S0(N13), .S1(N12), .Y(
        o_rd_data[2]) );
  MX4X1M U194 ( .A(\mem[8][2] ), .B(\mem[9][2] ), .C(\mem[10][2] ), .D(
        \mem[11][2] ), .S0(n193), .S1(n190), .Y(n10) );
  MX4X1M U195 ( .A(\mem[12][2] ), .B(\mem[13][2] ), .C(\mem[14][2] ), .D(
        \mem[15][2] ), .S0(n193), .S1(n190), .Y(n9) );
  MX4X1M U196 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n193), .S1(n190), .Y(n11) );
  MX4X1M U197 ( .A(n171), .B(n169), .C(n170), .D(n168), .S0(N13), .S1(N12), 
        .Y(o_rd_data[3]) );
  MX4X1M U198 ( .A(\mem[8][3] ), .B(\mem[9][3] ), .C(\mem[10][3] ), .D(
        \mem[11][3] ), .S0(n193), .S1(n190), .Y(n169) );
  MX4X1M U199 ( .A(\mem[12][3] ), .B(\mem[13][3] ), .C(\mem[14][3] ), .D(
        \mem[15][3] ), .S0(n193), .S1(n190), .Y(n168) );
  MX4X1M U200 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n193), .S1(n190), .Y(n170) );
  MX4X1M U201 ( .A(n175), .B(n173), .C(n174), .D(n172), .S0(N13), .S1(N12), 
        .Y(o_rd_data[4]) );
  MX4X1M U202 ( .A(\mem[8][4] ), .B(\mem[9][4] ), .C(\mem[10][4] ), .D(
        \mem[11][4] ), .S0(n193), .S1(n190), .Y(n173) );
  MX4X1M U203 ( .A(\mem[12][4] ), .B(\mem[13][4] ), .C(\mem[14][4] ), .D(
        \mem[15][4] ), .S0(n193), .S1(n190), .Y(n172) );
  MX4X1M U204 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n193), .S1(n190), .Y(n174) );
  MX4X1M U205 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(N10), .S1(N11), .Y(n4) );
  MX4X1M U206 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n193), .S1(N11), .Y(n8) );
  MX4X1M U207 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n193), .S1(n190), .Y(n167) );
  MX4X1M U208 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n193), .S1(n190), .Y(n171) );
  MX4X1M U209 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n194), .S1(n190), .Y(n175) );
  MX4X1M U210 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n194), .S1(N11), .Y(n179) );
  MX4X1M U211 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n194), .S1(N11), .Y(n183) );
  MX4X1M U212 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n194), .S1(N11), .Y(n187) );
  MX4X1M U213 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N13), .S1(N12), .Y(
        o_rd_data[1]) );
  MX4X1M U214 ( .A(\mem[8][1] ), .B(\mem[9][1] ), .C(\mem[10][1] ), .D(
        \mem[11][1] ), .S0(N10), .S1(N11), .Y(n6) );
  MX4X1M U215 ( .A(\mem[12][1] ), .B(\mem[13][1] ), .C(\mem[14][1] ), .D(
        \mem[15][1] ), .S0(N10), .S1(n190), .Y(n5) );
  MX4X1M U216 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n193), .S1(N11), .Y(n7) );
  MX4X1M U217 ( .A(n179), .B(n177), .C(n178), .D(n176), .S0(N13), .S1(N12), 
        .Y(o_rd_data[5]) );
  MX4X1M U218 ( .A(\mem[8][5] ), .B(\mem[9][5] ), .C(\mem[10][5] ), .D(
        \mem[11][5] ), .S0(n194), .S1(N11), .Y(n177) );
  MX4X1M U219 ( .A(\mem[12][5] ), .B(\mem[13][5] ), .C(\mem[14][5] ), .D(
        \mem[15][5] ), .S0(n194), .S1(N11), .Y(n176) );
  MX4X1M U220 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n194), .S1(N11), .Y(n178) );
  MX4X1M U221 ( .A(n183), .B(n181), .C(n182), .D(n180), .S0(N13), .S1(N12), 
        .Y(o_rd_data[6]) );
  MX4X1M U222 ( .A(\mem[8][6] ), .B(\mem[9][6] ), .C(\mem[10][6] ), .D(
        \mem[11][6] ), .S0(n194), .S1(n190), .Y(n181) );
  MX4X1M U223 ( .A(\mem[12][6] ), .B(\mem[13][6] ), .C(\mem[14][6] ), .D(
        \mem[15][6] ), .S0(n194), .S1(n190), .Y(n180) );
  MX4X1M U224 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n194), .S1(n190), .Y(n182) );
  MX4X1M U225 ( .A(n187), .B(n185), .C(n186), .D(n184), .S0(N13), .S1(N12), 
        .Y(o_rd_data[7]) );
  MX4X1M U226 ( .A(\mem[8][7] ), .B(\mem[9][7] ), .C(\mem[10][7] ), .D(
        \mem[11][7] ), .S0(n194), .S1(N11), .Y(n185) );
  MX4X1M U227 ( .A(\mem[12][7] ), .B(\mem[13][7] ), .C(\mem[14][7] ), .D(
        \mem[15][7] ), .S0(n194), .S1(N11), .Y(n184) );
  MX4X1M U228 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n194), .S1(N11), .Y(n186) );
  INVX2M U229 ( .A(N11), .Y(n188) );
endmodule


module DF_SYNC_ADDR_WIDTH4_0 ( i_clk, i_rst_n, i_r_d_ptr, wq2_r_d_ptr );
  input [4:0] i_r_d_ptr;
  output [4:0] wq2_r_d_ptr;
  input i_clk, i_rst_n;

  wire   [4:0] R1;

  DFFRQX2M \R2_reg[0]  ( .D(R1[0]), .CK(i_clk), .RN(i_rst_n), .Q(
        wq2_r_d_ptr[0]) );
  DFFRQX2M \R2_reg[1]  ( .D(R1[1]), .CK(i_clk), .RN(i_rst_n), .Q(
        wq2_r_d_ptr[1]) );
  DFFRQX2M \R2_reg[4]  ( .D(R1[4]), .CK(i_clk), .RN(i_rst_n), .Q(
        wq2_r_d_ptr[4]) );
  DFFRQX2M \R2_reg[3]  ( .D(R1[3]), .CK(i_clk), .RN(i_rst_n), .Q(
        wq2_r_d_ptr[3]) );
  DFFRQX2M \R2_reg[2]  ( .D(R1[2]), .CK(i_clk), .RN(i_rst_n), .Q(
        wq2_r_d_ptr[2]) );
  DFFRQX2M \R1_reg[4]  ( .D(i_r_d_ptr[4]), .CK(i_clk), .RN(i_rst_n), .Q(R1[4])
         );
  DFFRQX2M \R1_reg[3]  ( .D(i_r_d_ptr[3]), .CK(i_clk), .RN(i_rst_n), .Q(R1[3])
         );
  DFFRQX2M \R1_reg[2]  ( .D(i_r_d_ptr[2]), .CK(i_clk), .RN(i_rst_n), .Q(R1[2])
         );
  DFFRQX2M \R1_reg[1]  ( .D(i_r_d_ptr[1]), .CK(i_clk), .RN(i_rst_n), .Q(R1[1])
         );
  DFFRQX2M \R1_reg[0]  ( .D(i_r_d_ptr[0]), .CK(i_clk), .RN(i_rst_n), .Q(R1[0])
         );
endmodule


module DF_SYNC_ADDR_WIDTH4_1 ( i_clk, i_rst_n, i_r_d_ptr, wq2_r_d_ptr );
  input [4:0] i_r_d_ptr;
  output [4:0] wq2_r_d_ptr;
  input i_clk, i_rst_n;

  wire   [4:0] R1;

  DFFRQX2M \R2_reg[4]  ( .D(R1[4]), .CK(i_clk), .RN(i_rst_n), .Q(
        wq2_r_d_ptr[4]) );
  DFFRQX2M \R2_reg[3]  ( .D(R1[3]), .CK(i_clk), .RN(i_rst_n), .Q(
        wq2_r_d_ptr[3]) );
  DFFRQX2M \R2_reg[2]  ( .D(R1[2]), .CK(i_clk), .RN(i_rst_n), .Q(
        wq2_r_d_ptr[2]) );
  DFFRQX2M \R2_reg[1]  ( .D(R1[1]), .CK(i_clk), .RN(i_rst_n), .Q(
        wq2_r_d_ptr[1]) );
  DFFRQX2M \R2_reg[0]  ( .D(R1[0]), .CK(i_clk), .RN(i_rst_n), .Q(
        wq2_r_d_ptr[0]) );
  DFFRQX2M \R1_reg[3]  ( .D(i_r_d_ptr[3]), .CK(i_clk), .RN(i_rst_n), .Q(R1[3])
         );
  DFFRQX2M \R1_reg[2]  ( .D(i_r_d_ptr[2]), .CK(i_clk), .RN(i_rst_n), .Q(R1[2])
         );
  DFFRQX2M \R1_reg[1]  ( .D(i_r_d_ptr[1]), .CK(i_clk), .RN(i_rst_n), .Q(R1[1])
         );
  DFFRQX2M \R1_reg[0]  ( .D(i_r_d_ptr[0]), .CK(i_clk), .RN(i_rst_n), .Q(R1[0])
         );
  DFFRQX2M \R1_reg[4]  ( .D(i_r_d_ptr[4]), .CK(i_clk), .RN(i_rst_n), .Q(R1[4])
         );
endmodule


module FIFO_RD_DATA_WIDTH8_ADDR_WIDTH4 ( i_r_clk, i_rst_n, i_r_inc, rq2_wptr, 
        o_r_empty, o_rd_addr, o_rptr );
  input [4:0] rq2_wptr;
  output [3:0] o_rd_addr;
  output [4:0] o_rptr;
  input i_r_clk, i_rst_n, i_r_inc;
  output o_r_empty;
  wire   N4, N5, N6, N7, n1, n2, n3, n4, n5, n6, \add_23/carry[4] ,
         \add_23/carry[3] , \add_23/carry[2] , n7, n8, n9, n10, n11, n12, n13,
         n14, n15;

  DFFRQX2M \o_rptr_reg_reg[4]  ( .D(n5), .CK(i_r_clk), .RN(i_rst_n), .Q(
        o_rptr[4]) );
  DFFRQX2M \o_rptr_reg_reg[2]  ( .D(n3), .CK(i_r_clk), .RN(i_rst_n), .Q(
        o_rd_addr[2]) );
  DFFRQX2M \o_rptr_reg_reg[0]  ( .D(n6), .CK(i_r_clk), .RN(i_rst_n), .Q(
        o_rd_addr[0]) );
  DFFRQX2M \o_rptr_reg_reg[1]  ( .D(n4), .CK(i_r_clk), .RN(i_rst_n), .Q(
        o_rd_addr[1]) );
  DFFRQX2M \o_rptr_reg_reg[3]  ( .D(n2), .CK(i_r_clk), .RN(i_rst_n), .Q(
        o_rd_addr[3]) );
  AO2B2X2M U3 ( .B0(n7), .B1(n1), .A0(o_rd_addr[0]), .A1N(n1), .Y(n6) );
  INVX2M U4 ( .A(o_rd_addr[0]), .Y(n7) );
  CLKXOR2X2M U5 ( .A(o_rd_addr[1]), .B(o_rd_addr[0]), .Y(o_rptr[0]) );
  CLKXOR2X2M U6 ( .A(o_rptr[4]), .B(o_rd_addr[3]), .Y(o_rptr[3]) );
  NOR2BX2M U7 ( .AN(i_r_inc), .B(o_r_empty), .Y(n1) );
  AO2B2X2M U8 ( .B0(N6), .B1(n1), .A0(o_rd_addr[3]), .A1N(n1), .Y(n2) );
  AO2B2X2M U9 ( .B0(N5), .B1(n1), .A0(o_rd_addr[2]), .A1N(n1), .Y(n3) );
  AO2B2X2M U10 ( .B0(N4), .B1(n1), .A0(o_rd_addr[1]), .A1N(n1), .Y(n4) );
  AO2B2X2M U11 ( .B0(N7), .B1(n1), .A0(o_rptr[4]), .A1N(n1), .Y(n5) );
  CLKXOR2X2M U12 ( .A(o_rd_addr[3]), .B(o_rd_addr[2]), .Y(o_rptr[2]) );
  CLKXOR2X2M U13 ( .A(o_rd_addr[2]), .B(o_rd_addr[1]), .Y(o_rptr[1]) );
  ADDHX1M U14 ( .A(o_rd_addr[2]), .B(\add_23/carry[2] ), .CO(\add_23/carry[3] ), .S(N5) );
  ADDHX1M U15 ( .A(o_rd_addr[1]), .B(o_rd_addr[0]), .CO(\add_23/carry[2] ), 
        .S(N4) );
  ADDHX1M U16 ( .A(o_rd_addr[3]), .B(\add_23/carry[3] ), .CO(\add_23/carry[4] ), .S(N6) );
  CLKXOR2X2M U17 ( .A(\add_23/carry[4] ), .B(o_rptr[4]), .Y(N7) );
  CLKXOR2X2M U18 ( .A(rq2_wptr[2]), .B(o_rptr[2]), .Y(n15) );
  NOR2BX1M U19 ( .AN(rq2_wptr[0]), .B(o_rptr[0]), .Y(n8) );
  OAI2B2X1M U20 ( .A1N(o_rptr[1]), .A0(n8), .B0(rq2_wptr[1]), .B1(n8), .Y(n11)
         );
  NOR2BX1M U21 ( .AN(o_rptr[0]), .B(rq2_wptr[0]), .Y(n9) );
  OAI2B2X1M U22 ( .A1N(rq2_wptr[1]), .A0(n9), .B0(o_rptr[1]), .B1(n9), .Y(n10)
         );
  CLKNAND2X2M U23 ( .A(n11), .B(n10), .Y(n14) );
  CLKXOR2X2M U24 ( .A(rq2_wptr[3]), .B(o_rptr[3]), .Y(n13) );
  CLKXOR2X2M U25 ( .A(rq2_wptr[4]), .B(o_rptr[4]), .Y(n12) );
  NOR4X1M U26 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(o_r_empty) );
endmodule


module FIFO_WR_DATA_WIDTH8_ADDR_WIDTH4 ( i_w_clk, i_rst_n, i_w_inc, wq2_rptr, 
        o_w_full, o_wr_addr, o_wptr );
  input [4:0] wq2_rptr;
  output [3:0] o_wr_addr;
  output [4:0] o_wptr;
  input i_w_clk, i_rst_n, i_w_inc;
  output o_w_full;
  wire   N3, N4, N5, N6, N7, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, \add_22/carry[4] , \add_22/carry[3] , \add_22/carry[2] , n1,
         n3;

  DFFRQX2M \o_wptr_reg_reg[4]  ( .D(n14), .CK(i_w_clk), .RN(i_rst_n), .Q(
        o_wptr[4]) );
  DFFRQX2M \o_wptr_reg_reg[0]  ( .D(n15), .CK(i_w_clk), .RN(i_rst_n), .Q(
        o_wr_addr[0]) );
  DFFRQX2M \o_wptr_reg_reg[1]  ( .D(n13), .CK(i_w_clk), .RN(i_rst_n), .Q(
        o_wr_addr[1]) );
  DFFRQX2M \o_wptr_reg_reg[3]  ( .D(n11), .CK(i_w_clk), .RN(i_rst_n), .Q(
        o_wr_addr[3]) );
  DFFRX1M \o_wptr_reg_reg[2]  ( .D(n12), .CK(i_w_clk), .RN(i_rst_n), .Q(
        o_wr_addr[2]), .QN(n2) );
  NOR2BX2M U3 ( .AN(i_w_inc), .B(o_w_full), .Y(n4) );
  OAI2BB2X1M U4 ( .B0(n4), .B1(n3), .A0N(N6), .A1N(n4), .Y(n11) );
  OAI2BB2X1M U5 ( .B0(n4), .B1(n1), .A0N(N4), .A1N(n4), .Y(n13) );
  AND4X2M U6 ( .A(n5), .B(n6), .C(n7), .D(n8), .Y(o_w_full) );
  XNOR2X2M U7 ( .A(o_wptr[0]), .B(wq2_rptr[0]), .Y(n5) );
  XNOR2X2M U8 ( .A(o_wptr[1]), .B(wq2_rptr[1]), .Y(n6) );
  XNOR2X2M U9 ( .A(o_wptr[2]), .B(wq2_rptr[2]), .Y(n8) );
  NOR2X2M U10 ( .A(n9), .B(n10), .Y(n7) );
  XNOR2X2M U11 ( .A(o_wptr[4]), .B(wq2_rptr[4]), .Y(n10) );
  XNOR2X2M U12 ( .A(o_wptr[3]), .B(wq2_rptr[3]), .Y(n9) );
  CLKXOR2X2M U13 ( .A(o_wptr[4]), .B(o_wr_addr[3]), .Y(o_wptr[3]) );
  OAI2BB2X1M U14 ( .B0(n4), .B1(n2), .A0N(N5), .A1N(n4), .Y(n12) );
  INVX2M U15 ( .A(o_wr_addr[1]), .Y(n1) );
  INVX2M U16 ( .A(o_wr_addr[3]), .Y(n3) );
  AO2B2X2M U17 ( .B0(N7), .B1(n4), .A0(o_wptr[4]), .A1N(n4), .Y(n14) );
  AO2B2X2M U18 ( .B0(N3), .B1(n4), .A0(o_wr_addr[0]), .A1N(n4), .Y(n15) );
  INVX2M U19 ( .A(o_wr_addr[0]), .Y(N3) );
  CLKXOR2X2M U20 ( .A(o_wr_addr[0]), .B(o_wr_addr[1]), .Y(o_wptr[0]) );
  CLKXOR2X2M U21 ( .A(n1), .B(n2), .Y(o_wptr[1]) );
  CLKXOR2X2M U22 ( .A(n2), .B(n3), .Y(o_wptr[2]) );
  ADDHX1M U23 ( .A(o_wr_addr[2]), .B(\add_22/carry[2] ), .CO(\add_22/carry[3] ), .S(N5) );
  ADDHX1M U24 ( .A(o_wr_addr[1]), .B(o_wr_addr[0]), .CO(\add_22/carry[2] ), 
        .S(N4) );
  ADDHX1M U25 ( .A(o_wr_addr[3]), .B(\add_22/carry[3] ), .CO(\add_22/carry[4] ), .S(N6) );
  CLKXOR2X2M U26 ( .A(\add_22/carry[4] ), .B(o_wptr[4]), .Y(N7) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH4_NUM_STAGES2 ( wclk, rclk, wrst_n, 
        rrst_n, W_INC, R_INC, wr_data, FULL, EMPTY, rd_data );
  input [7:0] wr_data;
  output [7:0] rd_data;
  input wclk, rclk, wrst_n, rrst_n, W_INC, R_INC;
  output FULL, EMPTY;

  wire   [3:0] waddr;
  wire   [3:0] raddr;
  wire   [4:0] wptr_async;
  wire   [4:0] rq2_wptr_sync;
  wire   [4:0] rptr_async;
  wire   [4:0] wq2_rptr_sync;

  FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH4 fifo_mem_cntrl ( .i_w_clk(wclk), 
        .i_rst_n(wrst_n), .i_w_inc(W_INC), .i_w_full(FULL), .i_wr_data(wr_data), .i_wr_addr(waddr), .i_rd_addr(raddr), .o_rd_data(rd_data) );
  DF_SYNC_ADDR_WIDTH4_0 bit_sync_waddr ( .i_clk(rclk), .i_rst_n(rrst_n), 
        .i_r_d_ptr(wptr_async), .wq2_r_d_ptr(rq2_wptr_sync) );
  DF_SYNC_ADDR_WIDTH4_1 bit_sync_raddr ( .i_clk(wclk), .i_rst_n(wrst_n), 
        .i_r_d_ptr(rptr_async), .wq2_r_d_ptr(wq2_rptr_sync) );
  FIFO_RD_DATA_WIDTH8_ADDR_WIDTH4 fifo_rd ( .i_r_clk(rclk), .i_rst_n(rrst_n), 
        .i_r_inc(R_INC), .rq2_wptr(rq2_wptr_sync), .o_r_empty(EMPTY), 
        .o_rd_addr(raddr), .o_rptr(rptr_async) );
  FIFO_WR_DATA_WIDTH8_ADDR_WIDTH4 fifo_wr ( .i_w_clk(wclk), .i_rst_n(wrst_n), 
        .i_w_inc(W_INC), .wq2_rptr(wq2_rptr_sync), .o_w_full(FULL), 
        .o_wr_addr(waddr), .o_wptr(wptr_async) );
endmodule


module DATA_SYNC ( clk, rst_n, unsync_bus, bus_enable, sync_bus, enable_pulse
 );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input clk, rst_n, bus_enable;
  output enable_pulse;
  wire   enable_pulse_gen_reg, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] sync_reg;

  DFFRQX2M enable_pulse_gen_reg_reg ( .D(sync_reg[1]), .CK(clk), .RN(rst_n), 
        .Q(enable_pulse_gen_reg) );
  DFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(clk), .RN(rst_n), .Q(sync_bus[7])
         );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(clk), .RN(rst_n), .Q(sync_bus[6])
         );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(clk), .RN(rst_n), .Q(sync_bus[4])
         );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(clk), .RN(rst_n), .Q(sync_bus[5])
         );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(clk), .RN(rst_n), .Q(sync_bus[3])
         );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(clk), .RN(rst_n), .Q(sync_bus[1])
         );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(clk), .RN(rst_n), .Q(sync_bus[0])
         );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(clk), .RN(rst_n), .Q(sync_bus[2])
         );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(clk), .RN(rst_n), .Q(enable_pulse)
         );
  DFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .CK(clk), .RN(rst_n), .Q(
        sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(enable_pulse_gen_reg), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module strt_check_RX ( CLK_start, RST_start, strt_chk_en, sample_bit_par_chk, 
        strt_glitch_chk );
  input CLK_start, RST_start, strt_chk_en, sample_bit_par_chk;
  output strt_glitch_chk;
  wire   strt_glitch_chk_reg;

  DFFRQX2M strt_glitch_chk_reg_inst ( .D(strt_glitch_chk_reg), .CK(CLK_start), 
        .RN(RST_start), .Q(strt_glitch_chk) );
  AND2X2M U3 ( .A(strt_chk_en), .B(sample_bit_par_chk), .Y(strt_glitch_chk_reg) );
endmodule


module parity_check_RX ( CLK_par, RST_par, P_DATA_par_chk, PAR_TYP_par_chk, 
        par_chk_en, sample_bit_par_chk, par_err );
  input [7:0] P_DATA_par_chk;
  input CLK_par, RST_par, PAR_TYP_par_chk, par_chk_en, sample_bit_par_chk;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n8, n2;

  DFFRQX2M par_err_reg ( .D(n8), .CK(CLK_par), .RN(RST_par), .Q(par_err) );
  OAI2BB2X1M U2 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n8) );
  XOR3XLM U3 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U4 ( .A(par_chk_en), .Y(n2) );
  XNOR2X2M U5 ( .A(sample_bit_par_chk), .B(PAR_TYP_par_chk), .Y(n5) );
  XOR3XLM U6 ( .A(P_DATA_par_chk[5]), .B(P_DATA_par_chk[4]), .C(n6), .Y(n4) );
  XNOR2X2M U7 ( .A(P_DATA_par_chk[7]), .B(P_DATA_par_chk[6]), .Y(n6) );
  XOR3XLM U8 ( .A(P_DATA_par_chk[1]), .B(P_DATA_par_chk[0]), .C(n7), .Y(n3) );
  XNOR2X2M U9 ( .A(P_DATA_par_chk[3]), .B(P_DATA_par_chk[2]), .Y(n7) );
endmodule


module stop_check_RX ( CLK_stop, RST_stop, stp_chk_en, sample_bit_par_chk, 
        Stop_Error );
  input CLK_stop, RST_stop, stp_chk_en, sample_bit_par_chk;
  output Stop_Error;
  wire   stp_err_chk;

  DFFRQX2M Stop_Error_reg ( .D(stp_err_chk), .CK(CLK_stop), .RN(RST_stop), .Q(
        Stop_Error) );
  NOR2BX2M U3 ( .AN(stp_chk_en), .B(sample_bit_par_chk), .Y(stp_err_chk) );
endmodule


module deserializer_RX ( CLK_des, RST_des, sample_bit_deser, deser_en, 
        edge_cnt, prescale_FSM, P_DATA_des );
  input [5:0] edge_cnt;
  input [5:0] prescale_FSM;
  output [7:0] P_DATA_des;
  input CLK_des, RST_des, sample_bit_deser, deser_en;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3, n4, n5, n6, n7, n8,
         n17;

  DFFRQX2M \P_DATA_des_reg[0]  ( .D(n9), .CK(CLK_des), .RN(RST_des), .Q(
        P_DATA_des[0]) );
  DFFRQX2M \P_DATA_des_reg[5]  ( .D(n14), .CK(CLK_des), .RN(RST_des), .Q(
        P_DATA_des[5]) );
  DFFRQX2M \P_DATA_des_reg[1]  ( .D(n10), .CK(CLK_des), .RN(RST_des), .Q(
        P_DATA_des[1]) );
  DFFRQX2M \P_DATA_des_reg[4]  ( .D(n13), .CK(CLK_des), .RN(RST_des), .Q(
        P_DATA_des[4]) );
  DFFRQX2M \P_DATA_des_reg[7]  ( .D(n16), .CK(CLK_des), .RN(RST_des), .Q(
        P_DATA_des[7]) );
  DFFRQX2M \P_DATA_des_reg[3]  ( .D(n12), .CK(CLK_des), .RN(RST_des), .Q(
        P_DATA_des[3]) );
  DFFRQX2M \P_DATA_des_reg[6]  ( .D(n15), .CK(CLK_des), .RN(RST_des), .Q(
        P_DATA_des[6]) );
  DFFRQX2M \P_DATA_des_reg[2]  ( .D(n11), .CK(CLK_des), .RN(RST_des), .Q(
        P_DATA_des[2]) );
  INVX2M U2 ( .A(n1), .Y(n2) );
  OAI22X1M U3 ( .A0(n2), .A1(n8), .B0(n1), .B1(n17), .Y(n10) );
  OAI22X1M U4 ( .A0(n2), .A1(n7), .B0(n1), .B1(n8), .Y(n11) );
  OAI22X1M U5 ( .A0(n2), .A1(n6), .B0(n1), .B1(n7), .Y(n12) );
  OAI22X1M U6 ( .A0(n2), .A1(n5), .B0(n1), .B1(n6), .Y(n13) );
  OAI22X1M U7 ( .A0(n2), .A1(n4), .B0(n1), .B1(n5), .Y(n14) );
  OAI22X1M U8 ( .A0(n2), .A1(n3), .B0(n1), .B1(n4), .Y(n15) );
  BUFX2M U9 ( .A(deser_en), .Y(n1) );
  OAI2BB2X1M U10 ( .B0(n1), .B1(n3), .A0N(sample_bit_deser), .A1N(n1), .Y(n16)
         );
  OAI2BB2X1M U11 ( .B0(n17), .B1(n2), .A0N(P_DATA_des[0]), .A1N(n2), .Y(n9) );
  INVX2M U12 ( .A(P_DATA_des[2]), .Y(n8) );
  INVX2M U13 ( .A(P_DATA_des[6]), .Y(n4) );
  INVX2M U14 ( .A(P_DATA_des[7]), .Y(n3) );
  INVX2M U15 ( .A(P_DATA_des[3]), .Y(n7) );
  INVX2M U16 ( .A(P_DATA_des[1]), .Y(n17) );
  INVX2M U17 ( .A(P_DATA_des[4]), .Y(n6) );
  INVX2M U18 ( .A(P_DATA_des[5]), .Y(n5) );
endmodule


module data_sampling_RX ( CLK_SAM, RST_SAM, RX_IN, data_samp_en, edge_cnt, 
        prescale, sample_bit_samp );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input CLK_SAM, RST_SAM, RX_IN, data_samp_en;
  output sample_bit_samp;
  wire   \RX_IN_reg[0] , N11, N12, N13, N14, N15, N16, N18, N25, n24, n25, n26,
         \sub_29/carry[6] , \sub_29/carry[5] , \sub_29/carry[4] ,
         \sub_29/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19;
  assign N11 = prescale[0];

  DFFRQX2M \RX_IN_reg_reg[1]  ( .D(n25), .CK(CLK_SAM), .RN(RST_SAM), .Q(N25)
         );
  DFFRQX2M \RX_IN_reg_reg[0]  ( .D(n26), .CK(CLK_SAM), .RN(RST_SAM), .Q(
        \RX_IN_reg[0] ) );
  DFFSQX2M sample_bit_samp_reg ( .D(n24), .CK(CLK_SAM), .SN(RST_SAM), .Q(
        sample_bit_samp) );
  NAND4X2M U3 ( .A(\sub_29/carry[6] ), .B(n5), .C(n4), .D(n3), .Y(n9) );
  INVX2M U4 ( .A(prescale[1]), .Y(N12) );
  OR2X1M U5 ( .A(prescale[5]), .B(\sub_29/carry[5] ), .Y(\sub_29/carry[6] ) );
  XNOR2X1M U6 ( .A(\sub_29/carry[5] ), .B(prescale[5]), .Y(N16) );
  OR2X1M U7 ( .A(prescale[4]), .B(\sub_29/carry[4] ), .Y(\sub_29/carry[5] ) );
  XNOR2X1M U8 ( .A(\sub_29/carry[4] ), .B(prescale[4]), .Y(N15) );
  OR2X1M U9 ( .A(prescale[3]), .B(\sub_29/carry[3] ), .Y(\sub_29/carry[4] ) );
  XNOR2X1M U10 ( .A(\sub_29/carry[3] ), .B(prescale[3]), .Y(N14) );
  OR2X1M U11 ( .A(prescale[2]), .B(prescale[1]), .Y(\sub_29/carry[3] ) );
  XNOR2X1M U12 ( .A(prescale[1]), .B(prescale[2]), .Y(N13) );
  NOR2BX1M U13 ( .AN(N11), .B(edge_cnt[0]), .Y(n1) );
  OAI2B2X1M U14 ( .A1N(edge_cnt[1]), .A0(n1), .B0(N12), .B1(n1), .Y(n5) );
  XNOR2X1M U15 ( .A(N16), .B(edge_cnt[5]), .Y(n4) );
  NOR2BX1M U16 ( .AN(edge_cnt[0]), .B(N11), .Y(n2) );
  OAI2B2X1M U17 ( .A1N(N12), .A0(n2), .B0(edge_cnt[1]), .B1(n2), .Y(n3) );
  CLKXOR2X2M U18 ( .A(N15), .B(edge_cnt[4]), .Y(n8) );
  CLKXOR2X2M U19 ( .A(N13), .B(edge_cnt[2]), .Y(n7) );
  CLKXOR2X2M U20 ( .A(N14), .B(edge_cnt[3]), .Y(n6) );
  NOR4X1M U21 ( .A(n9), .B(n8), .C(n7), .D(n6), .Y(N18) );
  MXI2X1M U22 ( .A(n10), .B(n11), .S0(\RX_IN_reg[0] ), .Y(n26) );
  CLKNAND2X2M U23 ( .A(n12), .B(n11), .Y(n10) );
  MXI2X1M U24 ( .A(n13), .B(n14), .S0(N25), .Y(n25) );
  AOI2B1X1M U25 ( .A1N(\RX_IN_reg[0] ), .A0(n12), .B0(n15), .Y(n14) );
  NAND3X1M U26 ( .A(\RX_IN_reg[0] ), .B(n11), .C(n12), .Y(n13) );
  CLKINVX1M U27 ( .A(n15), .Y(n11) );
  AOI21X1M U28 ( .A0(RX_IN), .A1(n16), .B0(n17), .Y(n15) );
  CLKMX2X2M U29 ( .A(sample_bit_samp), .B(n18), .S0(n17), .Y(n24) );
  AOI2B1X1M U30 ( .A1N(N18), .A0(data_samp_en), .B0(n12), .Y(n17) );
  AND2X1M U31 ( .A(data_samp_en), .B(n16), .Y(n12) );
  NOR3X1M U32 ( .A(edge_cnt[2]), .B(edge_cnt[1]), .C(n19), .Y(n16) );
  OR3X1M U33 ( .A(edge_cnt[5]), .B(edge_cnt[4]), .C(edge_cnt[3]), .Y(n19) );
  NAND2BX1M U34 ( .AN(N25), .B(data_samp_en), .Y(n18) );
endmodule


module edge_bit_counter_RX ( CLK_EDGE, RST_EDGE, enable_edge, prescale_edge, 
        bit_cnt_edge, edge_cnt_edge );
  input [5:0] prescale_edge;
  output [5:0] bit_cnt_edge;
  output [5:0] edge_cnt_edge;
  input CLK_EDGE, RST_EDGE, enable_edge;
  wire   N7, N8, N9, N10, N11, N12, N13, N15, N16, N17, N18, N19, N20, N28,
         N31, N32, N33, N34, N35, N42, N43, N44, N45, N46, N47, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, \add_32/carry[5] , \add_32/carry[4] ,
         \add_32/carry[3] , \add_32/carry[2] , \add_16/carry[5] ,
         \add_16/carry[4] , \add_16/carry[3] , \add_16/carry[2] , n1, n2, n3,
         n4, n5, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  DFFRQX2M \bit_cnt_edge_reg[5]  ( .D(n14), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(
        bit_cnt_edge[5]) );
  DFFRQX2M \bit_cnt_edge_reg[0]  ( .D(n13), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(
        bit_cnt_edge[0]) );
  DFFRQX2M \bit_cnt_edge_reg[3]  ( .D(n10), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(
        bit_cnt_edge[3]) );
  DFFRQX2M \bit_cnt_edge_reg[4]  ( .D(n9), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(
        bit_cnt_edge[4]) );
  DFFRQX2M \bit_cnt_edge_reg[1]  ( .D(n12), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(
        bit_cnt_edge[1]) );
  DFFRQX2M \bit_cnt_edge_reg[2]  ( .D(n11), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(
        bit_cnt_edge[2]) );
  DFFRQX2M \edge_cnt_edge_reg[5]  ( .D(N47), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(
        edge_cnt_edge[5]) );
  DFFRQX2M \edge_cnt_edge_reg[0]  ( .D(N42), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(
        edge_cnt_edge[0]) );
  DFFRQX2M \edge_cnt_edge_reg[4]  ( .D(N46), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(
        edge_cnt_edge[4]) );
  DFFRQX2M \edge_cnt_edge_reg[3]  ( .D(N45), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(
        edge_cnt_edge[3]) );
  DFFRQX2M \edge_cnt_edge_reg[2]  ( .D(N44), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(
        edge_cnt_edge[2]) );
  DFFRQX2M \edge_cnt_edge_reg[1]  ( .D(N43), .CK(CLK_EDGE), .RN(RST_EDGE), .Q(
        edge_cnt_edge[1]) );
  NAND2X2M U3 ( .A(N28), .B(enable_edge), .Y(n8) );
  AND2X2M U4 ( .A(enable_edge), .B(N28), .Y(n6) );
  NOR2BX2M U5 ( .AN(enable_edge), .B(n6), .Y(n7) );
  NOR2BX2M U6 ( .AN(N31), .B(n8), .Y(N43) );
  NOR2BX2M U7 ( .AN(N32), .B(n8), .Y(N44) );
  NOR2BX2M U8 ( .AN(N33), .B(n8), .Y(N45) );
  NOR2BX2M U9 ( .AN(N34), .B(n8), .Y(N46) );
  NOR2X2M U10 ( .A(edge_cnt_edge[0]), .B(n8), .Y(N42) );
  AND3X2M U11 ( .A(N35), .B(enable_edge), .C(N28), .Y(N47) );
  AO22X1M U12 ( .A0(bit_cnt_edge[4]), .A1(n6), .B0(N19), .B1(n7), .Y(n9) );
  AO22X1M U13 ( .A0(bit_cnt_edge[3]), .A1(n6), .B0(N18), .B1(n7), .Y(n10) );
  AO22X1M U14 ( .A0(bit_cnt_edge[2]), .A1(n6), .B0(N17), .B1(n7), .Y(n11) );
  AO22X1M U15 ( .A0(bit_cnt_edge[1]), .A1(n6), .B0(N16), .B1(n7), .Y(n12) );
  AO22X1M U16 ( .A0(bit_cnt_edge[0]), .A1(n6), .B0(N15), .B1(n7), .Y(n13) );
  INVX2M U17 ( .A(bit_cnt_edge[0]), .Y(N15) );
  AO22X1M U18 ( .A0(bit_cnt_edge[5]), .A1(n6), .B0(N20), .B1(n7), .Y(n14) );
  INVX2M U19 ( .A(edge_cnt_edge[1]), .Y(n23) );
  ADDHX1M U20 ( .A(bit_cnt_edge[2]), .B(\add_16/carry[2] ), .CO(
        \add_16/carry[3] ), .S(N17) );
  ADDHX1M U21 ( .A(bit_cnt_edge[1]), .B(bit_cnt_edge[0]), .CO(
        \add_16/carry[2] ), .S(N16) );
  ADDHX1M U22 ( .A(edge_cnt_edge[1]), .B(edge_cnt_edge[0]), .CO(
        \add_32/carry[2] ), .S(N31) );
  ADDHX1M U23 ( .A(bit_cnt_edge[3]), .B(\add_16/carry[3] ), .CO(
        \add_16/carry[4] ), .S(N18) );
  ADDHX1M U24 ( .A(edge_cnt_edge[2]), .B(\add_32/carry[2] ), .CO(
        \add_32/carry[3] ), .S(N32) );
  ADDHX1M U25 ( .A(edge_cnt_edge[3]), .B(\add_32/carry[3] ), .CO(
        \add_32/carry[4] ), .S(N33) );
  ADDHX1M U26 ( .A(bit_cnt_edge[4]), .B(\add_16/carry[4] ), .CO(
        \add_16/carry[5] ), .S(N19) );
  ADDHX1M U27 ( .A(edge_cnt_edge[4]), .B(\add_32/carry[4] ), .CO(
        \add_32/carry[5] ), .S(N34) );
  INVX2M U28 ( .A(prescale_edge[0]), .Y(N7) );
  NAND2BX1M U29 ( .AN(prescale_edge[1]), .B(N7), .Y(n1) );
  OAI2BB1X1M U30 ( .A0N(prescale_edge[0]), .A1N(prescale_edge[1]), .B0(n1), 
        .Y(N8) );
  OR2X1M U31 ( .A(n1), .B(prescale_edge[2]), .Y(n2) );
  OAI2BB1X1M U32 ( .A0N(n1), .A1N(prescale_edge[2]), .B0(n2), .Y(N9) );
  OR2X1M U33 ( .A(n2), .B(prescale_edge[3]), .Y(n3) );
  OAI2BB1X1M U34 ( .A0N(n2), .A1N(prescale_edge[3]), .B0(n3), .Y(N10) );
  OR2X1M U35 ( .A(n3), .B(prescale_edge[4]), .Y(n4) );
  OAI2BB1X1M U36 ( .A0N(n3), .A1N(prescale_edge[4]), .B0(n4), .Y(N11) );
  NOR2X1M U37 ( .A(n4), .B(prescale_edge[5]), .Y(N13) );
  AO21XLM U38 ( .A0(n4), .A1(prescale_edge[5]), .B0(N13), .Y(N12) );
  CLKXOR2X2M U39 ( .A(\add_16/carry[5] ), .B(bit_cnt_edge[5]), .Y(N20) );
  CLKXOR2X2M U40 ( .A(\add_32/carry[5] ), .B(edge_cnt_edge[5]), .Y(N35) );
  XNOR2X1M U41 ( .A(N10), .B(edge_cnt_edge[3]), .Y(n22) );
  XNOR2X1M U42 ( .A(N9), .B(edge_cnt_edge[2]), .Y(n21) );
  XNOR2X1M U43 ( .A(N11), .B(edge_cnt_edge[4]), .Y(n20) );
  NOR2X1M U44 ( .A(prescale_edge[0]), .B(edge_cnt_edge[0]), .Y(n5) );
  OAI22X1M U45 ( .A0(n5), .A1(n23), .B0(N8), .B1(n5), .Y(n18) );
  CLKNAND2X2M U46 ( .A(edge_cnt_edge[0]), .B(prescale_edge[0]), .Y(n15) );
  AOI22X1M U47 ( .A0(n15), .A1(n23), .B0(n15), .B1(N8), .Y(n17) );
  CLKXOR2X2M U48 ( .A(N12), .B(edge_cnt_edge[5]), .Y(n16) );
  NOR4BX1M U49 ( .AN(n18), .B(n17), .C(n16), .D(N13), .Y(n19) );
  NAND4X1M U50 ( .A(n22), .B(n21), .C(n20), .D(n19), .Y(N28) );
endmodule


module FSM_RX ( CLK_FSM, RST_FSM, RX_IN, bit_cnt_FSM, edge_cnt_FSM, PAR_EN_FSM, 
        par_err_FSM, strt_glitch_FSM, stp_err_FSM, prescale_FSM, 
        par_chk_en_FSM, strt_chk_en_FSM, stp_chk_en_FSM, enable_FSM, 
        data_samp_en_FSM, data_valid_FSM, deser_en_FSM );
  input [5:0] bit_cnt_FSM;
  input [5:0] edge_cnt_FSM;
  input [5:0] prescale_FSM;
  input CLK_FSM, RST_FSM, RX_IN, PAR_EN_FSM, par_err_FSM, strt_glitch_FSM,
         stp_err_FSM;
  output par_chk_en_FSM, strt_chk_en_FSM, stp_chk_en_FSM, enable_FSM,
         data_samp_en_FSM, data_valid_FSM, deser_en_FSM;
  wire   par_err_reg, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, \r107/EQ , \r107/B[0] ,
         \r107/B[1] , \r107/B[2] , \r107/B[3] , \r107/B[4] , \r107/B[5] ,
         \r107/B[9] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n18, n19, n20;
  wire   [2:0] cs;
  wire   [2:0] ns;

  DFFRQX2M data_valid_FSM_reg ( .D(n55), .CK(CLK_FSM), .RN(RST_FSM), .Q(
        data_valid_FSM) );
  DFFRQX2M par_err_reg_reg ( .D(n56), .CK(CLK_FSM), .RN(RST_FSM), .Q(
        par_err_reg) );
  DFFRQX2M \cs_reg[2]  ( .D(ns[2]), .CK(CLK_FSM), .RN(RST_FSM), .Q(cs[2]) );
  DFFRQX2M \cs_reg[0]  ( .D(ns[0]), .CK(CLK_FSM), .RN(RST_FSM), .Q(cs[0]) );
  DFFRQX2M \cs_reg[1]  ( .D(ns[1]), .CK(CLK_FSM), .RN(RST_FSM), .Q(cs[1]) );
  INVX2M U3 ( .A(n44), .Y(n16) );
  OAI2BB1X2M U4 ( .A0N(n19), .A1N(n54), .B0(n39), .Y(data_samp_en_FSM) );
  NAND2X2M U5 ( .A(RX_IN), .B(n15), .Y(n54) );
  INVX2M U6 ( .A(\r107/EQ ), .Y(n20) );
  NOR3X2M U7 ( .A(n39), .B(n20), .C(n19), .Y(stp_chk_en_FSM) );
  NOR2BX2M U8 ( .AN(n43), .B(n39), .Y(par_chk_en_FSM) );
  NOR2X2M U9 ( .A(n49), .B(n50), .Y(n44) );
  NOR2X2M U10 ( .A(n20), .B(n49), .Y(deser_en_FSM) );
  OAI2B1X2M U11 ( .A1N(stp_chk_en_FSM), .A0(RX_IN), .B0(n46), .Y(ns[0]) );
  AOI32X1M U12 ( .A0(n18), .A1(n19), .A2(n47), .B0(n44), .B1(n41), .Y(n46) );
  OAI22X1M U13 ( .A0(cs[0]), .A1(RX_IN), .B0(n50), .B1(n15), .Y(n47) );
  OAI22X1M U14 ( .A0(\r107/EQ ), .A1(n39), .B0(cs[2]), .B1(n53), .Y(enable_FSM) );
  NOR2X2M U15 ( .A(cs[1]), .B(n54), .Y(n53) );
  AOI21XLM U16 ( .A0(\r107/EQ ), .A1(cs[2]), .B0(n39), .Y(n45) );
  NAND4BXLM U17 ( .AN(bit_cnt_FSM[0]), .B(\r107/EQ ), .C(bit_cnt_FSM[3]), .D(
        n48), .Y(n41) );
  NOR4X1M U18 ( .A(bit_cnt_FSM[5]), .B(bit_cnt_FSM[4]), .C(bit_cnt_FSM[2]), 
        .D(bit_cnt_FSM[1]), .Y(n48) );
  OAI31XLM U19 ( .A0(n19), .A1(\r107/EQ ), .A2(n39), .B0(n40), .Y(ns[2]) );
  AOI2B1X1M U20 ( .A1N(n41), .A0(n42), .B0(par_chk_en_FSM), .Y(n40) );
  NOR2X2M U21 ( .A(PAR_EN_FSM), .B(n16), .Y(n42) );
  NOR2X2M U22 ( .A(n20), .B(cs[2]), .Y(n43) );
  AO21XLM U23 ( .A0(data_valid_FSM), .A1(n45), .B0(n51), .Y(n55) );
  NOR4X1M U24 ( .A(stp_err_FSM), .B(par_err_reg), .C(n45), .D(n39), .Y(n51) );
  OAI211X2M U25 ( .A0(strt_glitch_FSM), .A1(n38), .B0(n14), .C0(n16), .Y(ns[1]) );
  INVX2M U26 ( .A(n45), .Y(n14) );
  AND2X1M U27 ( .A(strt_glitch_FSM), .B(\r107/EQ ), .Y(n50) );
  OAI2BB2X1M U28 ( .B0(n52), .B1(n39), .A0N(n52), .A1N(par_err_reg), .Y(n56)
         );
  AOI21X2M U29 ( .A0(par_err_FSM), .A1(n43), .B0(n39), .Y(n52) );
  NAND3X2M U30 ( .A(n43), .B(n18), .C(cs[0]), .Y(n38) );
  INVX2M U31 ( .A(n38), .Y(strt_chk_en_FSM) );
  NAND2X2M U32 ( .A(cs[1]), .B(n15), .Y(n39) );
  NAND3X2M U33 ( .A(cs[0]), .B(n19), .C(cs[1]), .Y(n49) );
  INVX2M U34 ( .A(cs[0]), .Y(n15) );
  INVX2M U35 ( .A(cs[2]), .Y(n19) );
  INVX2M U36 ( .A(cs[1]), .Y(n18) );
  INVX2M U37 ( .A(prescale_FSM[0]), .Y(\r107/B[0] ) );
  NAND2BX1M U38 ( .AN(prescale_FSM[1]), .B(\r107/B[0] ), .Y(n1) );
  OAI2BB1X1M U39 ( .A0N(prescale_FSM[0]), .A1N(prescale_FSM[1]), .B0(n1), .Y(
        \r107/B[1] ) );
  OR2X1M U40 ( .A(n1), .B(prescale_FSM[2]), .Y(n2) );
  OAI2BB1X1M U41 ( .A0N(n1), .A1N(prescale_FSM[2]), .B0(n2), .Y(\r107/B[2] )
         );
  OR2X1M U42 ( .A(n2), .B(prescale_FSM[3]), .Y(n3) );
  OAI2BB1X1M U43 ( .A0N(n2), .A1N(prescale_FSM[3]), .B0(n3), .Y(\r107/B[3] )
         );
  OR2X1M U44 ( .A(n3), .B(prescale_FSM[4]), .Y(n4) );
  OAI2BB1X1M U45 ( .A0N(n3), .A1N(prescale_FSM[4]), .B0(n4), .Y(\r107/B[4] )
         );
  NOR2X1M U46 ( .A(n4), .B(prescale_FSM[5]), .Y(\r107/B[9] ) );
  AO21XLM U47 ( .A0(n4), .A1(prescale_FSM[5]), .B0(\r107/B[9] ), .Y(
        \r107/B[5] ) );
  NOR2BX1M U48 ( .AN(\r107/B[0] ), .B(edge_cnt_FSM[0]), .Y(n5) );
  OAI2B2X1M U49 ( .A1N(edge_cnt_FSM[1]), .A0(n5), .B0(\r107/B[1] ), .B1(n5), 
        .Y(n9) );
  XNOR2X1M U50 ( .A(\r107/B[5] ), .B(edge_cnt_FSM[5]), .Y(n8) );
  NOR2BX1M U51 ( .AN(edge_cnt_FSM[0]), .B(\r107/B[0] ), .Y(n6) );
  OAI2B2X1M U52 ( .A1N(\r107/B[1] ), .A0(n6), .B0(edge_cnt_FSM[1]), .B1(n6), 
        .Y(n7) );
  NAND4BX1M U53 ( .AN(\r107/B[9] ), .B(n9), .C(n8), .D(n7), .Y(n13) );
  CLKXOR2X2M U54 ( .A(\r107/B[4] ), .B(edge_cnt_FSM[4]), .Y(n12) );
  CLKXOR2X2M U55 ( .A(\r107/B[2] ), .B(edge_cnt_FSM[2]), .Y(n11) );
  CLKXOR2X2M U56 ( .A(\r107/B[3] ), .B(edge_cnt_FSM[3]), .Y(n10) );
  NOR4X1M U57 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(\r107/EQ ) );
endmodule


module RX_TOP ( CLK_RX, RST_RX, RX_IN_RX, PAR_EN_RX, PAR_TYP_RX, prescale_RX, 
        P_DATA_RX, data_valid_RX, parity_error_RX, stop_error_RX );
  input [5:0] prescale_RX;
  output [7:0] P_DATA_RX;
  input CLK_RX, RST_RX, RX_IN_RX, PAR_EN_RX, PAR_TYP_RX;
  output data_valid_RX, parity_error_RX, stop_error_RX;
  wire   strt_chk_en_wire, sample_bit_wire, strt_glitch_wire, par_chk_en_wire,
         stp_chk_en_wire, deser_en_wire, data_samp_en_wire, enable_wire, n1,
         n2;
  wire   [5:0] edge_cnt_wires;
  wire   [5:0] bit_cnt_wires;

  strt_check_RX strt_check_RX1 ( .CLK_start(CLK_RX), .RST_start(n1), 
        .strt_chk_en(strt_chk_en_wire), .sample_bit_par_chk(sample_bit_wire), 
        .strt_glitch_chk(strt_glitch_wire) );
  parity_check_RX parity_check_RX1 ( .CLK_par(CLK_RX), .RST_par(n1), 
        .P_DATA_par_chk(P_DATA_RX), .PAR_TYP_par_chk(PAR_TYP_RX), .par_chk_en(
        par_chk_en_wire), .sample_bit_par_chk(sample_bit_wire), .par_err(
        parity_error_RX) );
  stop_check_RX stop_check_RX1 ( .CLK_stop(CLK_RX), .RST_stop(n1), 
        .stp_chk_en(stp_chk_en_wire), .sample_bit_par_chk(sample_bit_wire), 
        .Stop_Error(stop_error_RX) );
  deserializer_RX deserializer_RX1 ( .CLK_des(CLK_RX), .RST_des(n1), 
        .sample_bit_deser(sample_bit_wire), .deser_en(deser_en_wire), 
        .edge_cnt(edge_cnt_wires), .prescale_FSM(prescale_RX), .P_DATA_des(
        P_DATA_RX) );
  data_sampling_RX data_sampling_RX1 ( .CLK_SAM(CLK_RX), .RST_SAM(n1), .RX_IN(
        RX_IN_RX), .data_samp_en(data_samp_en_wire), .edge_cnt(edge_cnt_wires), 
        .prescale(prescale_RX), .sample_bit_samp(sample_bit_wire) );
  edge_bit_counter_RX edge_bit_counter_RX1 ( .CLK_EDGE(CLK_RX), .RST_EDGE(n1), 
        .enable_edge(enable_wire), .prescale_edge(prescale_RX), .bit_cnt_edge(
        bit_cnt_wires), .edge_cnt_edge(edge_cnt_wires) );
  FSM_RX FSM_RX1 ( .CLK_FSM(CLK_RX), .RST_FSM(n1), .RX_IN(RX_IN_RX), 
        .bit_cnt_FSM(bit_cnt_wires), .edge_cnt_FSM(edge_cnt_wires), 
        .PAR_EN_FSM(PAR_EN_RX), .par_err_FSM(parity_error_RX), 
        .strt_glitch_FSM(strt_glitch_wire), .stp_err_FSM(stop_error_RX), 
        .prescale_FSM(prescale_RX), .par_chk_en_FSM(par_chk_en_wire), 
        .strt_chk_en_FSM(strt_chk_en_wire), .stp_chk_en_FSM(stp_chk_en_wire), 
        .enable_FSM(enable_wire), .data_samp_en_FSM(data_samp_en_wire), 
        .data_valid_FSM(data_valid_RX), .deser_en_FSM(deser_en_wire) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST_RX), .Y(n2) );
endmodule


module MUX4x1 ( CLK_mux, RST_mux, start_bit_mux, stop_bit_mux, ser_data_mux, 
        parity_bit_mux, mux_sel_mux, TX_OUT_mux );
  input [1:0] mux_sel_mux;
  input CLK_mux, RST_mux, start_bit_mux, stop_bit_mux, ser_data_mux,
         parity_bit_mux;
  output TX_OUT_mux;
  wire   TX_OUT_mux_c, n2, n3, n1;

  DFFRQX2M TX_OUT_mux_reg ( .D(TX_OUT_mux_c), .CK(CLK_mux), .RN(RST_mux), .Q(
        TX_OUT_mux) );
  INVX2M U3 ( .A(mux_sel_mux[0]), .Y(n1) );
  OAI2B2X1M U4 ( .A1N(mux_sel_mux[1]), .A0(n2), .B0(mux_sel_mux[1]), .B1(n3), 
        .Y(TX_OUT_mux_c) );
  AOI22X1M U5 ( .A0(start_bit_mux), .A1(n1), .B0(stop_bit_mux), .B1(
        mux_sel_mux[0]), .Y(n3) );
  AOI22X1M U6 ( .A0(ser_data_mux), .A1(n1), .B0(parity_bit_mux), .B1(
        mux_sel_mux[0]), .Y(n2) );
endmodule


module parity_calc_DATA_LENGTH8 ( CLK, RST, P_DATA, PAR_TYP, Data_Valid, 
        PAR_EN, busy, par_bit );
  input [7:0] P_DATA;
  input CLK, RST, PAR_TYP, Data_Valid, PAR_EN, busy;
  output par_bit;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n2
;
  wire   [7:0] par_data;

  DFFRQX2M \par_data_reg[1]  ( .D(n10), .CK(CLK), .RN(RST), .Q(par_data[1]) );
  DFFRQX2M \par_data_reg[0]  ( .D(n9), .CK(CLK), .RN(RST), .Q(par_data[0]) );
  DFFRQX2M \par_data_reg[2]  ( .D(n11), .CK(CLK), .RN(RST), .Q(par_data[2]) );
  DFFRQX2M par_bit_reg ( .D(n8), .CK(CLK), .RN(RST), .Q(par_bit) );
  DFFRQX2M \par_data_reg[3]  ( .D(n12), .CK(CLK), .RN(RST), .Q(par_data[3]) );
  DFFRQX2M \par_data_reg[5]  ( .D(n14), .CK(CLK), .RN(RST), .Q(par_data[5]) );
  DFFRQX2M \par_data_reg[4]  ( .D(n13), .CK(CLK), .RN(RST), .Q(par_data[4]) );
  DFFRQX2M \par_data_reg[6]  ( .D(n15), .CK(CLK), .RN(RST), .Q(par_data[6]) );
  DFFRQX2M \par_data_reg[7]  ( .D(n16), .CK(CLK), .RN(RST), .Q(par_data[7]) );
  NOR2BX2M U2 ( .AN(Data_Valid), .B(busy), .Y(n7) );
  AO2B2X2M U3 ( .B0(P_DATA[0]), .B1(n7), .A0(par_data[0]), .A1N(n7), .Y(n9) );
  AO2B2X2M U4 ( .B0(P_DATA[1]), .B1(n7), .A0(par_data[1]), .A1N(n7), .Y(n10)
         );
  AO2B2X2M U5 ( .B0(P_DATA[2]), .B1(n7), .A0(par_data[2]), .A1N(n7), .Y(n11)
         );
  AO2B2X2M U6 ( .B0(P_DATA[3]), .B1(n7), .A0(par_data[3]), .A1N(n7), .Y(n12)
         );
  AO2B2X2M U7 ( .B0(P_DATA[4]), .B1(n7), .A0(par_data[4]), .A1N(n7), .Y(n13)
         );
  AO2B2X2M U8 ( .B0(P_DATA[5]), .B1(n7), .A0(par_data[5]), .A1N(n7), .Y(n14)
         );
  AO2B2X2M U9 ( .B0(P_DATA[6]), .B1(n7), .A0(par_data[6]), .A1N(n7), .Y(n15)
         );
  AO2B2X2M U10 ( .B0(P_DATA[7]), .B1(n7), .A0(par_data[7]), .A1N(n7), .Y(n16)
         );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  INVX2M U12 ( .A(PAR_EN), .Y(n2) );
  XOR3XLM U13 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U14 ( .A(par_data[1]), .B(par_data[0]), .C(n5), .Y(n4) );
  XOR3XLM U15 ( .A(par_data[5]), .B(par_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U16 ( .A(par_data[7]), .B(par_data[6]), .Y(n6) );
  XNOR2X2M U17 ( .A(par_data[2]), .B(par_data[3]), .Y(n5) );
endmodule


module SERIALIZER_DATA_LENGTH8 ( P_DATA, ser_en, CLK, RST, Data_Valid, busy, 
        ser_done, ser_data );
  input [7:0] P_DATA;
  input ser_en, CLK, RST, Data_Valid, busy;
  output ser_done, ser_data;
  wire   N24, N25, N26, N27, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n1, n2, n3;
  wire   [7:1] data;
  wire   [3:0] counter;

  DFFSQX2M \data_reg[6]  ( .D(n20), .CK(CLK), .SN(RST), .Q(data[6]) );
  DFFSQX2M \data_reg[5]  ( .D(n21), .CK(CLK), .SN(RST), .Q(data[5]) );
  DFFSQX2M \data_reg[4]  ( .D(n22), .CK(CLK), .SN(RST), .Q(data[4]) );
  DFFSQX2M \data_reg[3]  ( .D(n23), .CK(CLK), .SN(RST), .Q(data[3]) );
  DFFSQX2M \data_reg[2]  ( .D(n24), .CK(CLK), .SN(RST), .Q(data[2]) );
  DFFSQX2M \data_reg[1]  ( .D(n25), .CK(CLK), .SN(RST), .Q(data[1]) );
  DFFSQX2M \data_reg[0]  ( .D(n18), .CK(CLK), .SN(RST), .Q(ser_data) );
  DFFSQX2M \data_reg[7]  ( .D(n19), .CK(CLK), .SN(RST), .Q(data[7]) );
  DFFRQX2M \counter_reg[3]  ( .D(N27), .CK(CLK), .RN(RST), .Q(counter[3]) );
  DFFRQX2M \counter_reg[1]  ( .D(N25), .CK(CLK), .RN(RST), .Q(counter[1]) );
  DFFRQX2M \counter_reg[2]  ( .D(N26), .CK(CLK), .RN(RST), .Q(counter[2]) );
  DFFRQX2M \counter_reg[0]  ( .D(N24), .CK(CLK), .RN(RST), .Q(counter[0]) );
  NOR2X2M U3 ( .A(n1), .B(n7), .Y(n6) );
  NOR2X2M U4 ( .A(n7), .B(n6), .Y(n4) );
  INVX2M U5 ( .A(ser_en), .Y(n1) );
  NOR2BX2M U6 ( .AN(Data_Valid), .B(busy), .Y(n7) );
  OAI2BB1X2M U7 ( .A0N(ser_data), .A1N(n4), .B0(n5), .Y(n18) );
  AOI22X1M U8 ( .A0(data[1]), .A1(n6), .B0(P_DATA[0]), .B1(n7), .Y(n5) );
  OAI2BB1X2M U9 ( .A0N(data[1]), .A1N(n4), .B0(n13), .Y(n25) );
  AOI22X1M U10 ( .A0(data[2]), .A1(n6), .B0(P_DATA[1]), .B1(n7), .Y(n13) );
  OAI2BB1X2M U11 ( .A0N(n4), .A1N(data[2]), .B0(n12), .Y(n24) );
  AOI22X1M U12 ( .A0(data[3]), .A1(n6), .B0(P_DATA[2]), .B1(n7), .Y(n12) );
  OAI2BB1X2M U13 ( .A0N(n4), .A1N(data[3]), .B0(n11), .Y(n23) );
  AOI22X1M U14 ( .A0(data[4]), .A1(n6), .B0(P_DATA[3]), .B1(n7), .Y(n11) );
  OAI2BB1X2M U15 ( .A0N(n4), .A1N(data[4]), .B0(n10), .Y(n22) );
  AOI22X1M U16 ( .A0(data[5]), .A1(n6), .B0(P_DATA[4]), .B1(n7), .Y(n10) );
  OAI2BB1X2M U17 ( .A0N(n4), .A1N(data[5]), .B0(n9), .Y(n21) );
  AOI22X1M U18 ( .A0(data[6]), .A1(n6), .B0(P_DATA[5]), .B1(n7), .Y(n9) );
  OAI2BB1X2M U19 ( .A0N(n4), .A1N(data[6]), .B0(n8), .Y(n20) );
  AOI22X1M U20 ( .A0(data[7]), .A1(n6), .B0(P_DATA[6]), .B1(n7), .Y(n8) );
  AO22X1M U21 ( .A0(n4), .A1(data[7]), .B0(P_DATA[7]), .B1(n7), .Y(n19) );
  NOR4X1M U22 ( .A(counter[2]), .B(counter[1]), .C(counter[0]), .D(n3), .Y(
        ser_done) );
  AOI2B1X1M U23 ( .A1N(counter[1]), .A0(ser_en), .B0(N24), .Y(n16) );
  NAND3X2M U24 ( .A(counter[0]), .B(ser_en), .C(counter[1]), .Y(n14) );
  OAI22X1M U25 ( .A0(n16), .A1(n2), .B0(counter[2]), .B1(n14), .Y(N26) );
  NOR2X2M U26 ( .A(n1), .B(counter[0]), .Y(N24) );
  NOR2X2M U27 ( .A(n17), .B(n1), .Y(N25) );
  XNOR2X2M U28 ( .A(counter[0]), .B(counter[1]), .Y(n17) );
  INVX2M U29 ( .A(counter[3]), .Y(n3) );
  OAI32X1M U30 ( .A0(n2), .A1(counter[3]), .A2(n14), .B0(n15), .B1(n3), .Y(N27) );
  OA21X2M U31 ( .A0(n1), .A1(counter[2]), .B0(n16), .Y(n15) );
  INVX2M U32 ( .A(counter[2]), .Y(n2) );
endmodule


module FSM_TX ( DATA_VALID_FSM, RST_FSM, CLK_FSM, SER_DONE_FSM, PAR_EN_FSM, 
        SER_EN_FSM, BUSY_FSM, MUX_SEL_FSM );
  output [1:0] MUX_SEL_FSM;
  input DATA_VALID_FSM, RST_FSM, CLK_FSM, SER_DONE_FSM, PAR_EN_FSM;
  output SER_EN_FSM, BUSY_FSM;
  wire   BUSY_FSM_c, n7, n8, n9, n1, n2, n3, n4, n5, n6;
  wire   [2:0] cs;
  wire   [2:0] ns;

  DFFRQX2M BUSY_FSM_reg ( .D(BUSY_FSM_c), .CK(CLK_FSM), .RN(RST_FSM), .Q(
        BUSY_FSM) );
  DFFRQX2M \cs_reg[0]  ( .D(ns[0]), .CK(CLK_FSM), .RN(RST_FSM), .Q(cs[0]) );
  DFFRQX2M \cs_reg[2]  ( .D(ns[2]), .CK(CLK_FSM), .RN(RST_FSM), .Q(cs[2]) );
  DFFRQX2M \cs_reg[1]  ( .D(ns[1]), .CK(CLK_FSM), .RN(RST_FSM), .Q(cs[1]) );
  OAI32X1M U3 ( .A0(n2), .A1(cs[2]), .A2(cs[1]), .B0(SER_DONE_FSM), .B1(n7), 
        .Y(SER_EN_FSM) );
  INVX2M U4 ( .A(DATA_VALID_FSM), .Y(n6) );
  NAND3X2M U5 ( .A(n8), .B(n4), .C(n9), .Y(MUX_SEL_FSM[0]) );
  AOI22X1M U6 ( .A0(SER_DONE_FSM), .A1(n3), .B0(n6), .B1(n2), .Y(n9) );
  AO21XLM U7 ( .A0(n4), .A1(DATA_VALID_FSM), .B0(ns[1]), .Y(BUSY_FSM_c) );
  INVX2M U8 ( .A(SER_EN_FSM), .Y(n1) );
  INVX2M U9 ( .A(n7), .Y(n3) );
  OAI2BB1X2M U10 ( .A0N(n3), .A1N(PAR_EN_FSM), .B0(n1), .Y(MUX_SEL_FSM[1]) );
  OAI31X1M U11 ( .A0(n6), .A1(cs[2]), .A2(cs[1]), .B0(n1), .Y(ns[0]) );
  NAND3X2M U12 ( .A(cs[0]), .B(n4), .C(cs[1]), .Y(n7) );
  INVX2M U13 ( .A(cs[2]), .Y(n4) );
  INVX2M U14 ( .A(cs[0]), .Y(n2) );
  OAI32X1M U15 ( .A0(n5), .A1(PAR_EN_FSM), .A2(n7), .B0(cs[2]), .B1(n8), .Y(
        ns[2]) );
  INVX2M U16 ( .A(SER_DONE_FSM), .Y(n5) );
  AOI21X2M U17 ( .A0(n2), .A1(n8), .B0(cs[2]), .Y(ns[1]) );
  NAND2X2M U18 ( .A(cs[1]), .B(n2), .Y(n8) );
endmodule


module TOP_TX_DATA_LENGTH8 ( RST, CLK, P_DATA, PAR_TYP, PAR_EN, DATA_VALID, 
        TX_OUT, BUSY );
  input [7:0] P_DATA;
  input RST, CLK, PAR_TYP, PAR_EN, DATA_VALID;
  output TX_OUT, BUSY;
  wire   ser_data, par_bit, ser_en, ser_done;
  wire   [1:0] mux_sel;

  MUX4x1 mux ( .CLK_mux(CLK), .RST_mux(RST), .start_bit_mux(1'b0), 
        .stop_bit_mux(1'b1), .ser_data_mux(ser_data), .parity_bit_mux(par_bit), 
        .mux_sel_mux(mux_sel), .TX_OUT_mux(TX_OUT) );
  parity_calc_DATA_LENGTH8 PAR ( .CLK(CLK), .RST(RST), .P_DATA(P_DATA), 
        .PAR_TYP(PAR_TYP), .Data_Valid(DATA_VALID), .PAR_EN(PAR_EN), .busy(
        BUSY), .par_bit(par_bit) );
  SERIALIZER_DATA_LENGTH8 SER ( .P_DATA(P_DATA), .ser_en(ser_en), .CLK(CLK), 
        .RST(RST), .Data_Valid(DATA_VALID), .busy(BUSY), .ser_done(ser_done), 
        .ser_data(ser_data) );
  FSM_TX FSM1 ( .DATA_VALID_FSM(DATA_VALID), .RST_FSM(RST), .CLK_FSM(CLK), 
        .SER_DONE_FSM(ser_done), .PAR_EN_FSM(PAR_EN), .SER_EN_FSM(ser_en), 
        .BUSY_FSM(BUSY), .MUX_SEL_FSM(mux_sel) );
endmodule


module SYS_CTRL ( CLK, RST, ALU_OUT, OUT_Valid, CTRL_FULL_IN, RdData, 
        RdData_Valid, RX_P_DATA, RX_D_VLD, ALU_FUN, ALU_EN, CLK_EN, Address, 
        WrEn, RdEn, WrData, TX_P_DATA, TX_D_VLD, clk_div_en );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_Valid, CTRL_FULL_IN, RdData_Valid, RX_D_VLD;
  output ALU_EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en;
  wire   second_frame, second_frame_reg, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n73;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  assign clk_div_en = 1'b1;

  DFFRQX2M \Address_reg[1]  ( .D(n70), .CK(CLK), .RN(RST), .Q(Address[1]) );
  DFFRQX2M \Address_reg[2]  ( .D(n71), .CK(CLK), .RN(RST), .Q(Address[2]) );
  DFFRQX2M \Address_reg[3]  ( .D(n72), .CK(CLK), .RN(RST), .Q(Address[3]) );
  DFFRQX2M \Address_reg[0]  ( .D(n69), .CK(CLK), .RN(RST), .Q(Address[0]) );
  DFFRQX2M second_frame_reg_inst ( .D(second_frame_reg), .CK(CLK), .RN(RST), 
        .Q(second_frame) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  NOR2X2M U3 ( .A(n45), .B(n54), .Y(ALU_FUN[3]) );
  NOR2X2M U4 ( .A(n45), .B(n53), .Y(ALU_FUN[2]) );
  OAI22X1M U5 ( .A0(n15), .A1(n45), .B0(OUT_Valid), .B1(n46), .Y(ALU_EN) );
  NOR2X2M U6 ( .A(n14), .B(n45), .Y(ALU_FUN[0]) );
  INVX2M U7 ( .A(n31), .Y(n14) );
  NOR2X2M U8 ( .A(n55), .B(n14), .Y(WrData[0]) );
  INVX2M U9 ( .A(WrEn), .Y(n5) );
  INVX2M U10 ( .A(n37), .Y(n12) );
  NOR2X2M U11 ( .A(n6), .B(n22), .Y(n50) );
  INVX2M U12 ( .A(n52), .Y(n6) );
  INVX2M U13 ( .A(n46), .Y(n3) );
  AOI211X2M U14 ( .A0(n48), .A1(n37), .B0(n9), .C0(n22), .Y(n55) );
  INVX2M U15 ( .A(n57), .Y(n9) );
  NOR3X2M U16 ( .A(n8), .B(n1), .C(n10), .Y(n22) );
  NOR2X2M U17 ( .A(n15), .B(n55), .Y(WrEn) );
  NOR2X2M U18 ( .A(n41), .B(n47), .Y(n59) );
  NOR2X2M U19 ( .A(n49), .B(n45), .Y(ALU_FUN[1]) );
  NAND3X2M U20 ( .A(n1), .B(n10), .C(n56), .Y(n45) );
  NOR2X2M U21 ( .A(n73), .B(n15), .Y(n31) );
  NOR2X2M U22 ( .A(n13), .B(n1), .Y(n37) );
  INVX2M U23 ( .A(n56), .Y(n8) );
  INVX2M U24 ( .A(CTRL_FULL_IN), .Y(n2) );
  OR3X2M U25 ( .A(n60), .B(second_frame_reg), .C(n59), .Y(TX_D_VLD) );
  NOR2X2M U26 ( .A(n55), .B(n49), .Y(WrData[1]) );
  NOR2X2M U27 ( .A(n55), .B(n53), .Y(WrData[2]) );
  NOR2XLM U28 ( .A(n55), .B(n54), .Y(WrData[3]) );
  AOI21X2M U29 ( .A0(n41), .A1(n4), .B0(n3), .Y(n30) );
  NOR2X2M U30 ( .A(n16), .B(n5), .Y(WrData[6]) );
  NOR2X2M U31 ( .A(n17), .B(n5), .Y(WrData[4]) );
  NAND3X2M U32 ( .A(n48), .B(n13), .C(n1), .Y(n46) );
  NAND4X2M U33 ( .A(n42), .B(n34), .C(n43), .D(n44), .Y(next_state[0]) );
  NAND3X2M U34 ( .A(n15), .B(n11), .C(n48), .Y(n43) );
  NAND4BX1M U35 ( .AN(n49), .B(n40), .C(n73), .D(n17), .Y(n42) );
  OA21X2M U36 ( .A0(n45), .A1(n15), .B0(n30), .Y(n44) );
  NOR2BX2M U37 ( .AN(n34), .B(n25), .Y(n52) );
  NAND3X2M U38 ( .A(n13), .B(n11), .C(n48), .Y(n34) );
  INVX2M U39 ( .A(n1), .Y(n11) );
  INVX2M U40 ( .A(n47), .Y(n4) );
  NOR2X2M U41 ( .A(n7), .B(current_state[3]), .Y(n48) );
  NOR2X2M U42 ( .A(current_state[1]), .B(current_state[0]), .Y(n56) );
  INVX2M U43 ( .A(RX_D_VLD), .Y(n15) );
  NAND2X2M U44 ( .A(RX_D_VLD), .B(RX_P_DATA[2]), .Y(n53) );
  NAND2X2M U45 ( .A(RX_D_VLD), .B(RX_P_DATA[3]), .Y(n54) );
  NAND2X2M U46 ( .A(RX_P_DATA[1]), .B(RX_D_VLD), .Y(n49) );
  AND3X2M U47 ( .A(n68), .B(n2), .C(RdData_Valid), .Y(n60) );
  INVX2M U48 ( .A(current_state[3]), .Y(n10) );
  BUFX2M U49 ( .A(current_state[2]), .Y(n1) );
  NAND3X2M U50 ( .A(n56), .B(n1), .C(current_state[3]), .Y(n57) );
  NAND2X2M U51 ( .A(second_frame), .B(n2), .Y(n41) );
  INVX2M U52 ( .A(current_state[1]), .Y(n13) );
  INVX2M U53 ( .A(current_state[0]), .Y(n7) );
  INVX2M U54 ( .A(RX_P_DATA[0]), .Y(n73) );
  NOR3X2M U55 ( .A(CTRL_FULL_IN), .B(second_frame), .C(n47), .Y(
        second_frame_reg) );
  AOI22X1M U56 ( .A0(ALU_OUT[8]), .A1(n59), .B0(RdData[0]), .B1(n60), .Y(n67)
         );
  NOR3X2M U57 ( .A(n10), .B(current_state[0]), .C(n12), .Y(n68) );
  NOR3X2M U58 ( .A(n1), .B(current_state[3]), .C(n8), .Y(n27) );
  NOR2BX2M U59 ( .AN(n68), .B(RdData_Valid), .Y(RdEn) );
  OAI2BB1X2M U60 ( .A0N(ALU_OUT[1]), .A1N(second_frame_reg), .B0(n66), .Y(
        TX_P_DATA[1]) );
  AOI22X1M U61 ( .A0(ALU_OUT[9]), .A1(n59), .B0(RdData[1]), .B1(n60), .Y(n66)
         );
  OAI2BB1X2M U62 ( .A0N(ALU_OUT[2]), .A1N(second_frame_reg), .B0(n65), .Y(
        TX_P_DATA[2]) );
  AOI22X1M U63 ( .A0(ALU_OUT[10]), .A1(n59), .B0(RdData[2]), .B1(n60), .Y(n65)
         );
  OAI2BB1X2M U64 ( .A0N(ALU_OUT[3]), .A1N(second_frame_reg), .B0(n64), .Y(
        TX_P_DATA[3]) );
  AOI22X1M U65 ( .A0(ALU_OUT[11]), .A1(n59), .B0(RdData[3]), .B1(n60), .Y(n64)
         );
  OAI2BB1X2M U66 ( .A0N(ALU_OUT[4]), .A1N(second_frame_reg), .B0(n63), .Y(
        TX_P_DATA[4]) );
  AOI22X1M U67 ( .A0(ALU_OUT[12]), .A1(n59), .B0(RdData[4]), .B1(n60), .Y(n63)
         );
  OAI2BB1X2M U68 ( .A0N(ALU_OUT[5]), .A1N(second_frame_reg), .B0(n62), .Y(
        TX_P_DATA[5]) );
  AOI22X1M U69 ( .A0(ALU_OUT[13]), .A1(n59), .B0(RdData[5]), .B1(n60), .Y(n62)
         );
  OAI2BB1X2M U70 ( .A0N(ALU_OUT[6]), .A1N(second_frame_reg), .B0(n61), .Y(
        TX_P_DATA[6]) );
  AOI22X1M U71 ( .A0(ALU_OUT[14]), .A1(n59), .B0(RdData[6]), .B1(n60), .Y(n61)
         );
  OAI2BB1X2M U72 ( .A0N(ALU_OUT[7]), .A1N(second_frame_reg), .B0(n58), .Y(
        TX_P_DATA[7]) );
  AOI22X1M U73 ( .A0(ALU_OUT[15]), .A1(n59), .B0(RdData[7]), .B1(n60), .Y(n58)
         );
  OAI211X2M U74 ( .A0(n28), .A1(n8), .B0(n29), .C0(n30), .Y(next_state[2]) );
  AOI21X2M U75 ( .A0(RX_D_VLD), .A1(current_state[3]), .B0(n1), .Y(n28) );
  NAND4X2M U76 ( .A(n31), .B(n32), .C(RX_P_DATA[4]), .D(n33), .Y(n29) );
  NOR4X1M U77 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n18), .D(n16), .Y(n33)
         );
  OAI211X2M U78 ( .A0(n15), .A1(n34), .B0(n35), .C0(n36), .Y(next_state[1]) );
  AOI211X2M U79 ( .A0(n37), .A1(n38), .B0(n25), .C0(n39), .Y(n36) );
  AOI22X1M U80 ( .A0(OUT_Valid), .A1(n3), .B0(n4), .B1(n41), .Y(n35) );
  OAI22X1M U81 ( .A0(current_state[0]), .A1(RdData_Valid), .B0(
        current_state[3]), .B1(RX_D_VLD), .Y(n38) );
  NAND3X2M U82 ( .A(current_state[1]), .B(n48), .C(n1), .Y(n47) );
  AND3X2M U83 ( .A(RX_P_DATA[7]), .B(RX_P_DATA[3]), .C(n27), .Y(n32) );
  AND2X2M U84 ( .A(RX_P_DATA[5]), .B(WrEn), .Y(WrData[5]) );
  AND2X2M U85 ( .A(RX_P_DATA[7]), .B(WrEn), .Y(WrData[7]) );
  AND4X2M U86 ( .A(RX_P_DATA[5]), .B(n32), .C(n18), .D(n16), .Y(n40) );
  AND4X2M U87 ( .A(n31), .B(RX_P_DATA[4]), .C(n40), .D(RX_P_DATA[1]), .Y(n39)
         );
  NOR3X2M U88 ( .A(current_state[0]), .B(current_state[3]), .C(n12), .Y(n25)
         );
  OAI221X1M U89 ( .A0(OUT_Valid), .A1(n46), .B0(n15), .B1(n57), .C0(n45), .Y(
        CLK_EN) );
  NOR4X1M U90 ( .A(n26), .B(RX_P_DATA[1]), .C(RX_P_DATA[5]), .D(RX_P_DATA[4]), 
        .Y(n24) );
  NAND2X2M U91 ( .A(RX_P_DATA[2]), .B(n73), .Y(n26) );
  OAI2BB2X1M U92 ( .B0(n52), .B1(n49), .A0N(Address[1]), .A1N(n50), .Y(n70) );
  OAI2BB2X1M U93 ( .B0(n52), .B1(n53), .A0N(Address[2]), .A1N(n50), .Y(n71) );
  OAI2BB2X1M U94 ( .B0(n52), .B1(n54), .A0N(Address[3]), .A1N(n50), .Y(n72) );
  OAI21X2M U95 ( .A0(n19), .A1(n15), .B0(n20), .Y(next_state[3]) );
  AOI31X2M U96 ( .A0(n21), .A1(n7), .A2(current_state[3]), .B0(n22), .Y(n20)
         );
  AOI21X2M U97 ( .A0(n23), .A1(n24), .B0(n25), .Y(n19) );
  OAI22X1M U98 ( .A0(n1), .A1(RdData_Valid), .B0(current_state[1]), .B1(
        RX_D_VLD), .Y(n21) );
  INVX2M U99 ( .A(RX_P_DATA[2]), .Y(n18) );
  INVX2M U100 ( .A(RX_P_DATA[6]), .Y(n16) );
  INVX2M U101 ( .A(RX_P_DATA[4]), .Y(n17) );
  AND4X2M U102 ( .A(RX_P_DATA[3]), .B(RX_P_DATA[6]), .C(RX_P_DATA[7]), .D(n27), 
        .Y(n23) );
  OAI2BB1X2M U103 ( .A0N(Address[0]), .A1N(n50), .B0(n51), .Y(n69) );
  AOI22X1M U104 ( .A0(n22), .A1(RX_D_VLD), .B0(n31), .B1(n6), .Y(n51) );
  OAI2BB1X2M U105 ( .A0N(ALU_OUT[0]), .A1N(second_frame_reg), .B0(n67), .Y(
        TX_P_DATA[0]) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   RST_SYNC_1, RST_SYNC_2, Gated_EN, ALU_CLK, WrEn_RF, RdEn_RF,
         RdData_valid_RF, TX_CLK, RX_CLK, PULSE_PG, BUSY_PG, ALU_ENABLE_in,
         ALU_DATA_VALID_out, FIFO_WR_INC, FIFO_FULL, FIFO_EMPTY,
         SYNC_data_valid_RX, SYNC_EN_OUT, n3, n4, n5, n6, n7, n8;
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

  RST_SYN_0 U0_RST_SYN ( .CLK(REF_CLK), .RST(RST_N), .SYNC_RST(RST_SYNC_1) );
  RST_SYN_1 U1_RST_SYN ( .CLK(UART_CLK), .RST(RST_N), .SYNC_RST(RST_SYNC_2) );
  CLK_gating U0_CLK_gating ( .CLK(REF_CLK), .CLK_EN(Gated_EN), .Gated_CLK(
        ALU_CLK) );
  Register_File U0_Register_File ( .CLK(REF_CLK), .RST(n5), .WrEn(WrEn_RF), 
        .RdEn(RdEn_RF), .Address(Address_RF), .WrData(WrData_RF), .RdData(
        RdData_RF), .RdData_valid(RdData_valid_RF), .REG0(REG0_OP_A), .REG1(
        REG1_OP_B), .REG2(REG2_UART_config), .REG3(REG3_DIV_ratio) );
  MUX_prescale U0_MUX_prescale ( .sel(REG2_UART_config[7:2]), .in0({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1, 1'b0}), .in2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 
        1'b0, 1'b0}), .in3({1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0}), 
        .out(div_ratio_prescale) );
  clock_divider_0 U0_clock_divider ( .i_ref_clk(UART_CLK), .i_rst_n(n3), 
        .i_clk_en(1'b1), .i_div_ratio(REG3_DIV_ratio), .o_div_clk(TX_CLK) );
  clock_divider_1 U1_clock_divider ( .i_ref_clk(UART_CLK), .i_rst_n(n3), 
        .i_clk_en(1'b1), .i_div_ratio(div_ratio_prescale), .o_div_clk(RX_CLK)
         );
  PULSE_GEN U0_PULSE_GEN ( .CLK(TX_CLK), .RST_n(n3), .LVL_SIG(n7), .pulse_out(
        PULSE_PG) );
  ALU U0_ALU ( .CLK(ALU_CLK), .RST(n5), .A(REG0_OP_A), .B(REG1_OP_B), 
        .ALU_FUN(ALU_FUN_in), .Enable(ALU_ENABLE_in), .valid_data(
        ALU_DATA_VALID_out), .ALU_OUT(CTRL_ALU_OUT) );
  ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH4_NUM_STAGES2 U0_ASYNC_FIFO ( .wclk(REF_CLK), .rclk(TX_CLK), .wrst_n(n5), .rrst_n(n3), .W_INC(FIFO_WR_INC), .R_INC(
        PULSE_PG), .wr_data(FIFO_WR_DATA), .FULL(FIFO_FULL), .EMPTY(FIFO_EMPTY), .rd_data(FIFO_RD_DATA) );
  DATA_SYNC U0_DATA_SYNC ( .clk(REF_CLK), .rst_n(n5), .unsync_bus(
        SYNC_P_DATA_RX), .bus_enable(SYNC_data_valid_RX), .sync_bus(
        CTRL_SYNC_DATA), .enable_pulse(SYNC_EN_OUT) );
  RX_TOP RX_TOP ( .CLK_RX(RX_CLK), .RST_RX(n3), .RX_IN_RX(UART_RX_IN), 
        .PAR_EN_RX(REG2_UART_config[0]), .PAR_TYP_RX(REG2_UART_config[1]), 
        .prescale_RX(REG2_UART_config[7:2]), .P_DATA_RX(SYNC_P_DATA_RX), 
        .data_valid_RX(SYNC_data_valid_RX), .parity_error_RX(parity_error), 
        .stop_error_RX(framing_error) );
  TOP_TX_DATA_LENGTH8 TOP_TX ( .RST(n3), .CLK(TX_CLK), .P_DATA(FIFO_RD_DATA), 
        .PAR_TYP(REG2_UART_config[1]), .PAR_EN(REG2_UART_config[0]), 
        .DATA_VALID(n8), .TX_OUT(UART_TX_O), .BUSY(BUSY_PG) );
  SYS_CTRL U0_SYS_CTRL ( .CLK(REF_CLK), .RST(n5), .ALU_OUT(CTRL_ALU_OUT), 
        .OUT_Valid(ALU_DATA_VALID_out), .CTRL_FULL_IN(FIFO_FULL), .RdData(
        RdData_RF), .RdData_Valid(RdData_valid_RF), .RX_P_DATA(CTRL_SYNC_DATA), 
        .RX_D_VLD(SYNC_EN_OUT), .ALU_FUN(ALU_FUN_in), .ALU_EN(ALU_ENABLE_in), 
        .CLK_EN(Gated_EN), .Address(Address_RF), .WrEn(WrEn_RF), .RdEn(RdEn_RF), .WrData(WrData_RF), .TX_P_DATA(FIFO_WR_DATA), .TX_D_VLD(FIFO_WR_INC) );
  INVX2M U5 ( .A(FIFO_EMPTY), .Y(n8) );
  INVX2M U6 ( .A(BUSY_PG), .Y(n7) );
  INVX4M U7 ( .A(n6), .Y(n5) );
  INVX2M U8 ( .A(RST_SYNC_1), .Y(n6) );
  INVX4M U9 ( .A(n4), .Y(n3) );
  INVX2M U10 ( .A(RST_SYNC_2), .Y(n4) );
endmodule

