// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Mar 30 21:49:20 2021
// Host        : DESKTOP-FV83DNH running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               K:/viv_ts/16bit_adder/16bit_adder.sim/sim_1/synth/func/xsim/adder16_tb_func_synth.v
// Design      : adder_16b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module adder_16b
   (sid,
    mode,
    Ci,
    A,
    B,
    S,
    Co);
  input [31:0]sid;
  input [1:0]mode;
  input Ci;
  input [15:0]A;
  input [15:0]B;
  output [15:0]S;
  output Co;

  wire [15:0]A;
  wire [15:0]A_IBUF;
  wire [15:0]B;
  wire [15:0]B_IBUF;
  wire Ci;
  wire Ci_IBUF;
  wire Co;
  wire Co_OBUF;
  wire [15:0]S;
  wire [15:0]S_OBUF;
  wire \S_OBUF[10]_inst_i_2_n_0 ;
  wire \S_OBUF[10]_inst_i_3_n_0 ;
  wire \S_OBUF[11]_inst_i_2_n_0 ;
  wire \S_OBUF[11]_inst_i_3_n_0 ;
  wire \S_OBUF[12]_inst_i_2_n_0 ;
  wire \S_OBUF[13]_inst_i_2_n_0 ;
  wire \S_OBUF[13]_inst_i_2_n_1 ;
  wire \S_OBUF[13]_inst_i_2_n_2 ;
  wire \S_OBUF[13]_inst_i_2_n_3 ;
  wire \S_OBUF[13]_inst_i_2_n_4 ;
  wire \S_OBUF[13]_inst_i_2_n_5 ;
  wire \S_OBUF[13]_inst_i_3_n_0 ;
  wire \S_OBUF[13]_inst_i_4_n_0 ;
  wire \S_OBUF[13]_inst_i_5_n_0 ;
  wire \S_OBUF[13]_inst_i_6_n_0 ;
  wire \S_OBUF[13]_inst_i_7_n_0 ;
  wire \S_OBUF[13]_inst_i_8_n_0 ;
  wire \S_OBUF[13]_inst_i_9_n_0 ;
  wire \S_OBUF[14]_inst_i_2_n_0 ;
  wire \S_OBUF[14]_inst_i_3_n_0 ;
  wire \S_OBUF[15]_inst_i_2_n_0 ;
  wire \S_OBUF[15]_inst_i_2_n_1 ;
  wire \S_OBUF[15]_inst_i_2_n_2 ;
  wire \S_OBUF[15]_inst_i_2_n_3 ;
  wire \S_OBUF[15]_inst_i_2_n_4 ;
  wire \S_OBUF[15]_inst_i_2_n_5 ;
  wire \S_OBUF[15]_inst_i_3_n_0 ;
  wire \S_OBUF[15]_inst_i_4_n_0 ;
  wire \S_OBUF[15]_inst_i_5_n_0 ;
  wire \S_OBUF[15]_inst_i_6_n_0 ;
  wire \S_OBUF[15]_inst_i_7_n_0 ;
  wire \S_OBUF[15]_inst_i_8_n_0 ;
  wire \S_OBUF[15]_inst_i_9_n_0 ;
  wire \S_OBUF[1]_inst_i_2_n_0 ;
  wire \S_OBUF[3]_inst_i_2_n_0 ;
  wire \S_OBUF[4]_inst_i_2_n_0 ;
  wire \S_OBUF[4]_inst_i_2_n_1 ;
  wire \S_OBUF[4]_inst_i_2_n_2 ;
  wire \S_OBUF[4]_inst_i_2_n_3 ;
  wire \S_OBUF[4]_inst_i_2_n_4 ;
  wire \S_OBUF[4]_inst_i_2_n_6 ;
  wire \S_OBUF[4]_inst_i_2_n_7 ;
  wire \S_OBUF[4]_inst_i_4_n_0 ;
  wire \S_OBUF[4]_inst_i_5_n_0 ;
  wire \S_OBUF[4]_inst_i_6_n_0 ;
  wire \S_OBUF[4]_inst_i_7_n_0 ;
  wire \S_OBUF[5]_inst_i_2_n_0 ;
  wire \S_OBUF[8]_inst_i_2_n_0 ;
  wire \S_OBUF[8]_inst_i_3_n_0 ;
  wire \S_OBUF[8]_inst_i_4_n_0 ;
  wire \S_OBUF[9]_inst_i_2_n_0 ;
  wire \S_OBUF[9]_inst_i_3_n_0 ;
  wire \S_OBUF[9]_inst_i_3_n_1 ;
  wire \S_OBUF[9]_inst_i_3_n_2 ;
  wire \S_OBUF[9]_inst_i_3_n_3 ;
  wire \S_OBUF[9]_inst_i_3_n_6 ;
  wire \S_OBUF[9]_inst_i_3_n_7 ;
  wire \S_OBUF[9]_inst_i_4_n_0 ;
  wire \S_OBUF[9]_inst_i_5_n_0 ;
  wire \S_OBUF[9]_inst_i_6_n_0 ;
  wire \S_OBUF[9]_inst_i_7_n_0 ;
  wire [1:0]mode;
  wire [1:0]mode_IBUF;
  wire p_0_in;
  wire p_1_in;
  wire [3:3]p_1_in__0;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire [31:0]sid;
  wire [3:0]sid_IBUF;
  wire [3:1]NLW_Co_OBUF_inst_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_Co_OBUF_inst_i_1_O_UNCONNECTED;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[10]_inst 
       (.I(A[10]),
        .O(A_IBUF[10]));
  IBUF \A_IBUF[11]_inst 
       (.I(A[11]),
        .O(A_IBUF[11]));
  IBUF \A_IBUF[12]_inst 
       (.I(A[12]),
        .O(A_IBUF[12]));
  IBUF \A_IBUF[13]_inst 
       (.I(A[13]),
        .O(A_IBUF[13]));
  IBUF \A_IBUF[14]_inst 
       (.I(A[14]),
        .O(A_IBUF[14]));
  IBUF \A_IBUF[15]_inst 
       (.I(A[15]),
        .O(A_IBUF[15]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  IBUF \A_IBUF[8]_inst 
       (.I(A[8]),
        .O(A_IBUF[8]));
  IBUF \A_IBUF[9]_inst 
       (.I(A[9]),
        .O(A_IBUF[9]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[10]_inst 
       (.I(B[10]),
        .O(B_IBUF[10]));
  IBUF \B_IBUF[11]_inst 
       (.I(B[11]),
        .O(B_IBUF[11]));
  IBUF \B_IBUF[12]_inst 
       (.I(B[12]),
        .O(B_IBUF[12]));
  IBUF \B_IBUF[13]_inst 
       (.I(B[13]),
        .O(B_IBUF[13]));
  IBUF \B_IBUF[14]_inst 
       (.I(B[14]),
        .O(B_IBUF[14]));
  IBUF \B_IBUF[15]_inst 
       (.I(B[15]),
        .O(B_IBUF[15]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  IBUF \B_IBUF[8]_inst 
       (.I(B[8]),
        .O(B_IBUF[8]));
  IBUF \B_IBUF[9]_inst 
       (.I(B[9]),
        .O(B_IBUF[9]));
  IBUF Ci_IBUF_inst
       (.I(Ci),
        .O(Ci_IBUF));
  OBUF Co_OBUF_inst
       (.I(Co_OBUF),
        .O(Co));
  CARRY4 Co_OBUF_inst_i_1
       (.CI(\S_OBUF[15]_inst_i_2_n_0 ),
        .CO({NLW_Co_OBUF_inst_i_1_CO_UNCONNECTED[3:1],Co_OBUF}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Co_OBUF_inst_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  OBUF \S_OBUF[0]_inst 
       (.I(S_OBUF[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hBAAA8AAA8AAA8AAA)) 
    \S_OBUF[0]_inst_i_1 
       (.I0(\S_OBUF[4]_inst_i_2_n_7 ),
        .I1(\S_OBUF[13]_inst_i_4_n_0 ),
        .I2(sid_IBUF[2]),
        .I3(sid_IBUF[1]),
        .I4(\S_OBUF[4]_inst_i_2_n_6 ),
        .I5(p_6_in),
        .O(S_OBUF[0]));
  OBUF \S_OBUF[10]_inst 
       (.I(S_OBUF[10]),
        .O(S[10]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFF0FFF0)) 
    \S_OBUF[10]_inst_i_1 
       (.I0(mode_IBUF[0]),
        .I1(sid_IBUF[3]),
        .I2(\S_OBUF[10]_inst_i_2_n_0 ),
        .I3(\S_OBUF[10]_inst_i_3_n_0 ),
        .I4(\S_OBUF[14]_inst_i_2_n_0 ),
        .I5(\S_OBUF[13]_inst_i_2_n_5 ),
        .O(S_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF200DF00)) 
    \S_OBUF[10]_inst_i_2 
       (.I0(sid_IBUF[1]),
        .I1(sid_IBUF[2]),
        .I2(mode_IBUF[1]),
        .I3(\S_OBUF[13]_inst_i_2_n_5 ),
        .I4(sid_IBUF[0]),
        .O(\S_OBUF[10]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00004440)) 
    \S_OBUF[10]_inst_i_3 
       (.I0(sid_IBUF[2]),
        .I1(sid_IBUF[1]),
        .I2(p_3_in),
        .I3(p_4_in),
        .I4(\S_OBUF[9]_inst_i_2_n_0 ),
        .O(\S_OBUF[10]_inst_i_3_n_0 ));
  OBUF \S_OBUF[11]_inst 
       (.I(S_OBUF[11]),
        .O(S[11]));
  LUT5 #(
    .INIT(32'hFFFEF0FE)) 
    \S_OBUF[11]_inst_i_1 
       (.I0(\S_OBUF[13]_inst_i_2_n_5 ),
        .I1(p_4_in),
        .I2(\S_OBUF[11]_inst_i_2_n_0 ),
        .I3(\S_OBUF[11]_inst_i_3_n_0 ),
        .I4(\S_OBUF[13]_inst_i_2_n_4 ),
        .O(S_OBUF[11]));
  LUT6 #(
    .INIT(64'h1000000000100000)) 
    \S_OBUF[11]_inst_i_2 
       (.I0(sid_IBUF[3]),
        .I1(mode_IBUF[1]),
        .I2(sid_IBUF[2]),
        .I3(sid_IBUF[1]),
        .I4(mode_IBUF[0]),
        .I5(sid_IBUF[0]),
        .O(\S_OBUF[11]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \S_OBUF[11]_inst_i_3 
       (.I0(sid_IBUF[2]),
        .I1(sid_IBUF[1]),
        .I2(sid_IBUF[0]),
        .I3(mode_IBUF[1]),
        .I4(sid_IBUF[3]),
        .I5(mode_IBUF[0]),
        .O(\S_OBUF[11]_inst_i_3_n_0 ));
  OBUF \S_OBUF[12]_inst 
       (.I(S_OBUF[12]),
        .O(S[12]));
  LUT6 #(
    .INIT(64'hAABAA8AAAAAAAAAA)) 
    \S_OBUF[12]_inst_i_1 
       (.I0(p_1_in),
        .I1(\S_OBUF[12]_inst_i_2_n_0 ),
        .I2(mode_IBUF[0]),
        .I3(sid_IBUF[0]),
        .I4(sid_IBUF[2]),
        .I5(sid_IBUF[1]),
        .O(S_OBUF[12]));
  LUT2 #(
    .INIT(4'hE)) 
    \S_OBUF[12]_inst_i_2 
       (.I0(sid_IBUF[3]),
        .I1(mode_IBUF[1]),
        .O(\S_OBUF[12]_inst_i_2_n_0 ));
  OBUF \S_OBUF[13]_inst 
       (.I(S_OBUF[13]),
        .O(S[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAC0)) 
    \S_OBUF[13]_inst_i_1 
       (.I0(p_0_in),
        .I1(p_1_in),
        .I2(\S_OBUF[13]_inst_i_2_n_4 ),
        .I3(\S_OBUF[13]_inst_i_3_n_0 ),
        .I4(\S_OBUF[13]_inst_i_4_n_0 ),
        .I5(\S_OBUF[13]_inst_i_5_n_0 ),
        .O(S_OBUF[13]));
  CARRY4 \S_OBUF[13]_inst_i_2 
       (.CI(\S_OBUF[9]_inst_i_3_n_0 ),
        .CO({\S_OBUF[13]_inst_i_2_n_0 ,\S_OBUF[13]_inst_i_2_n_1 ,\S_OBUF[13]_inst_i_2_n_2 ,\S_OBUF[13]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({A_IBUF[11:10],B_IBUF[9],A_IBUF[8]}),
        .O({\S_OBUF[13]_inst_i_2_n_4 ,\S_OBUF[13]_inst_i_2_n_5 ,p_4_in,p_3_in}),
        .S({\S_OBUF[13]_inst_i_6_n_0 ,\S_OBUF[13]_inst_i_7_n_0 ,\S_OBUF[13]_inst_i_8_n_0 ,\S_OBUF[13]_inst_i_9_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \S_OBUF[13]_inst_i_3 
       (.I0(sid_IBUF[2]),
        .I1(sid_IBUF[1]),
        .O(\S_OBUF[13]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \S_OBUF[13]_inst_i_4 
       (.I0(mode_IBUF[0]),
        .I1(sid_IBUF[3]),
        .I2(mode_IBUF[1]),
        .I3(sid_IBUF[0]),
        .O(\S_OBUF[13]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \S_OBUF[13]_inst_i_5 
       (.I0(sid_IBUF[1]),
        .I1(sid_IBUF[2]),
        .I2(sid_IBUF[0]),
        .I3(mode_IBUF[0]),
        .I4(mode_IBUF[1]),
        .I5(sid_IBUF[3]),
        .O(\S_OBUF[13]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S_OBUF[13]_inst_i_6 
       (.I0(A_IBUF[11]),
        .I1(B_IBUF[11]),
        .O(\S_OBUF[13]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S_OBUF[13]_inst_i_7 
       (.I0(A_IBUF[10]),
        .I1(B_IBUF[10]),
        .O(\S_OBUF[13]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h5515AAEA)) 
    \S_OBUF[13]_inst_i_8 
       (.I0(A_IBUF[9]),
        .I1(mode_IBUF[0]),
        .I2(sid_IBUF[0]),
        .I3(\S_OBUF[15]_inst_i_3_n_0 ),
        .I4(B_IBUF[9]),
        .O(\S_OBUF[13]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S_OBUF[13]_inst_i_9 
       (.I0(A_IBUF[8]),
        .I1(B_IBUF[8]),
        .O(\S_OBUF[13]_inst_i_9_n_0 ));
  OBUF \S_OBUF[14]_inst 
       (.I(S_OBUF[14]),
        .O(S[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCC8CCCC)) 
    \S_OBUF[14]_inst_i_1 
       (.I0(sid_IBUF[3]),
        .I1(\S_OBUF[15]_inst_i_2_n_5 ),
        .I2(\S_OBUF[14]_inst_i_2_n_0 ),
        .I3(mode_IBUF[0]),
        .I4(sid_IBUF[0]),
        .I5(\S_OBUF[14]_inst_i_3_n_0 ),
        .O(S_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \S_OBUF[14]_inst_i_2 
       (.I0(sid_IBUF[1]),
        .I1(sid_IBUF[2]),
        .O(\S_OBUF[14]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \S_OBUF[14]_inst_i_3 
       (.I0(sid_IBUF[1]),
        .I1(sid_IBUF[2]),
        .I2(p_1_in),
        .I3(p_0_in),
        .I4(\S_OBUF[13]_inst_i_4_n_0 ),
        .O(\S_OBUF[14]_inst_i_3_n_0 ));
  OBUF \S_OBUF[15]_inst 
       (.I(S_OBUF[15]),
        .O(S[15]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F088F0F0)) 
    \S_OBUF[15]_inst_i_1 
       (.I0(p_0_in),
        .I1(\S_OBUF[15]_inst_i_2_n_5 ),
        .I2(\S_OBUF[15]_inst_i_2_n_4 ),
        .I3(\S_OBUF[15]_inst_i_3_n_0 ),
        .I4(sid_IBUF[0]),
        .I5(mode_IBUF[0]),
        .O(S_OBUF[15]));
  CARRY4 \S_OBUF[15]_inst_i_2 
       (.CI(\S_OBUF[13]_inst_i_2_n_0 ),
        .CO({\S_OBUF[15]_inst_i_2_n_0 ,\S_OBUF[15]_inst_i_2_n_1 ,\S_OBUF[15]_inst_i_2_n_2 ,\S_OBUF[15]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[15:12]),
        .O({\S_OBUF[15]_inst_i_2_n_4 ,\S_OBUF[15]_inst_i_2_n_5 ,p_0_in,p_1_in}),
        .S({\S_OBUF[15]_inst_i_4_n_0 ,\S_OBUF[15]_inst_i_5_n_0 ,\S_OBUF[15]_inst_i_6_n_0 ,\S_OBUF[15]_inst_i_7_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \S_OBUF[15]_inst_i_3 
       (.I0(sid_IBUF[3]),
        .I1(sid_IBUF[1]),
        .I2(sid_IBUF[2]),
        .I3(mode_IBUF[1]),
        .O(\S_OBUF[15]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h66665666)) 
    \S_OBUF[15]_inst_i_4 
       (.I0(A_IBUF[15]),
        .I1(B_IBUF[15]),
        .I2(\S_OBUF[15]_inst_i_8_n_0 ),
        .I3(sid_IBUF[1]),
        .I4(sid_IBUF[2]),
        .O(\S_OBUF[15]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S_OBUF[15]_inst_i_5 
       (.I0(A_IBUF[14]),
        .I1(B_IBUF[14]),
        .O(\S_OBUF[15]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h56666666)) 
    \S_OBUF[15]_inst_i_6 
       (.I0(A_IBUF[13]),
        .I1(B_IBUF[13]),
        .I2(\S_OBUF[15]_inst_i_8_n_0 ),
        .I3(sid_IBUF[2]),
        .I4(sid_IBUF[1]),
        .O(\S_OBUF[15]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h5A5A5A6A)) 
    \S_OBUF[15]_inst_i_7 
       (.I0(A_IBUF[12]),
        .I1(\S_OBUF[15]_inst_i_9_n_0 ),
        .I2(B_IBUF[12]),
        .I3(sid_IBUF[2]),
        .I4(sid_IBUF[1]),
        .O(\S_OBUF[15]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \S_OBUF[15]_inst_i_8 
       (.I0(mode_IBUF[0]),
        .I1(sid_IBUF[0]),
        .I2(mode_IBUF[1]),
        .I3(sid_IBUF[3]),
        .O(\S_OBUF[15]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \S_OBUF[15]_inst_i_9 
       (.I0(mode_IBUF[0]),
        .I1(sid_IBUF[0]),
        .I2(mode_IBUF[1]),
        .I3(sid_IBUF[3]),
        .O(\S_OBUF[15]_inst_i_9_n_0 ));
  OBUF \S_OBUF[1]_inst 
       (.I(S_OBUF[1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABBA)) 
    \S_OBUF[1]_inst_i_1 
       (.I0(\S_OBUF[4]_inst_i_2_n_6 ),
        .I1(\S_OBUF[1]_inst_i_2_n_0 ),
        .I2(sid_IBUF[3]),
        .I3(sid_IBUF[1]),
        .I4(sid_IBUF[2]),
        .I5(mode_IBUF[1]),
        .O(S_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \S_OBUF[1]_inst_i_2 
       (.I0(sid_IBUF[0]),
        .I1(mode_IBUF[0]),
        .O(\S_OBUF[1]_inst_i_2_n_0 ));
  OBUF \S_OBUF[2]_inst 
       (.I(S_OBUF[2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00F600)) 
    \S_OBUF[2]_inst_i_1 
       (.I0(sid_IBUF[1]),
        .I1(sid_IBUF[2]),
        .I2(\S_OBUF[12]_inst_i_2_n_0 ),
        .I3(p_6_in),
        .I4(mode_IBUF[0]),
        .I5(sid_IBUF[0]),
        .O(S_OBUF[2]));
  OBUF \S_OBUF[3]_inst 
       (.I(S_OBUF[3]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hAAFFAAAAAAAAA8A8)) 
    \S_OBUF[3]_inst_i_1 
       (.I0(\S_OBUF[4]_inst_i_2_n_4 ),
        .I1(\S_OBUF[13]_inst_i_3_n_0 ),
        .I2(\S_OBUF[12]_inst_i_2_n_0 ),
        .I3(\S_OBUF[3]_inst_i_2_n_0 ),
        .I4(sid_IBUF[0]),
        .I5(mode_IBUF[0]),
        .O(S_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \S_OBUF[3]_inst_i_2 
       (.I0(sid_IBUF[3]),
        .I1(sid_IBUF[1]),
        .I2(sid_IBUF[2]),
        .I3(mode_IBUF[1]),
        .O(\S_OBUF[3]_inst_i_2_n_0 ));
  OBUF \S_OBUF[4]_inst 
       (.I(S_OBUF[4]),
        .O(S[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAFAAAAAAAC)) 
    \S_OBUF[4]_inst_i_1 
       (.I0(\S_OBUF[9]_inst_i_3_n_7 ),
        .I1(\S_OBUF[4]_inst_i_2_n_4 ),
        .I2(\S_OBUF[9]_inst_i_2_n_0 ),
        .I3(sid_IBUF[2]),
        .I4(sid_IBUF[1]),
        .I5(p_6_in),
        .O(S_OBUF[4]));
  CARRY4 \S_OBUF[4]_inst_i_2 
       (.CI(1'b0),
        .CO({\S_OBUF[4]_inst_i_2_n_0 ,\S_OBUF[4]_inst_i_2_n_1 ,\S_OBUF[4]_inst_i_2_n_2 ,\S_OBUF[4]_inst_i_2_n_3 }),
        .CYINIT(B_IBUF[0]),
        .DI({p_1_in__0,A_IBUF[2:0]}),
        .O({\S_OBUF[4]_inst_i_2_n_4 ,p_6_in,\S_OBUF[4]_inst_i_2_n_6 ,\S_OBUF[4]_inst_i_2_n_7 }),
        .S({\S_OBUF[4]_inst_i_4_n_0 ,\S_OBUF[4]_inst_i_5_n_0 ,\S_OBUF[4]_inst_i_6_n_0 ,\S_OBUF[4]_inst_i_7_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004000)) 
    \S_OBUF[4]_inst_i_3 
       (.I0(\S_OBUF[5]_inst_i_2_n_0 ),
        .I1(mode_IBUF[0]),
        .I2(sid_IBUF[0]),
        .I3(mode_IBUF[1]),
        .I4(sid_IBUF[3]),
        .I5(A_IBUF[3]),
        .O(p_1_in__0));
  LUT6 #(
    .INIT(64'h5AAA55AA55AA11EE)) 
    \S_OBUF[4]_inst_i_4 
       (.I0(A_IBUF[3]),
        .I1(\S_OBUF[15]_inst_i_8_n_0 ),
        .I2(\S_OBUF[15]_inst_i_9_n_0 ),
        .I3(B_IBUF[3]),
        .I4(sid_IBUF[2]),
        .I5(sid_IBUF[1]),
        .O(\S_OBUF[4]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S_OBUF[4]_inst_i_5 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .O(\S_OBUF[4]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S_OBUF[4]_inst_i_6 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .O(\S_OBUF[4]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S_OBUF[4]_inst_i_7 
       (.I0(A_IBUF[0]),
        .I1(Ci_IBUF),
        .O(\S_OBUF[4]_inst_i_7_n_0 ));
  OBUF \S_OBUF[5]_inst 
       (.I(S_OBUF[5]),
        .O(S[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA2ABAA)) 
    \S_OBUF[5]_inst_i_1 
       (.I0(\S_OBUF[9]_inst_i_3_n_6 ),
        .I1(sid_IBUF[3]),
        .I2(mode_IBUF[1]),
        .I3(mode_IBUF[0]),
        .I4(sid_IBUF[0]),
        .I5(\S_OBUF[5]_inst_i_2_n_0 ),
        .O(S_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \S_OBUF[5]_inst_i_2 
       (.I0(sid_IBUF[1]),
        .I1(sid_IBUF[2]),
        .O(\S_OBUF[5]_inst_i_2_n_0 ));
  OBUF \S_OBUF[6]_inst 
       (.I(S_OBUF[6]),
        .O(S[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000040)) 
    \S_OBUF[6]_inst_i_1 
       (.I0(\S_OBUF[12]_inst_i_2_n_0 ),
        .I1(mode_IBUF[0]),
        .I2(sid_IBUF[0]),
        .I3(sid_IBUF[2]),
        .I4(sid_IBUF[1]),
        .I5(p_5_in),
        .O(S_OBUF[6]));
  OBUF \S_OBUF[7]_inst 
       (.I(S_OBUF[7]),
        .O(S[7]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F088)) 
    \S_OBUF[7]_inst_i_1 
       (.I0(\S_OBUF[9]_inst_i_3_n_6 ),
        .I1(p_5_in),
        .I2(p_2_in),
        .I3(\S_OBUF[13]_inst_i_4_n_0 ),
        .I4(sid_IBUF[2]),
        .I5(sid_IBUF[1]),
        .O(S_OBUF[7]));
  OBUF \S_OBUF[8]_inst 
       (.I(S_OBUF[8]),
        .O(S[8]));
  LUT6 #(
    .INIT(64'hEEEFEEEEEEEEEEEE)) 
    \S_OBUF[8]_inst_i_1 
       (.I0(\S_OBUF[8]_inst_i_2_n_0 ),
        .I1(\S_OBUF[8]_inst_i_3_n_0 ),
        .I2(\S_OBUF[12]_inst_i_2_n_0 ),
        .I3(\S_OBUF[13]_inst_i_3_n_0 ),
        .I4(sid_IBUF[0]),
        .I5(mode_IBUF[0]),
        .O(S_OBUF[8]));
  LUT6 #(
    .INIT(64'hFE00FE00FF00EF00)) 
    \S_OBUF[8]_inst_i_2 
       (.I0(\S_OBUF[8]_inst_i_4_n_0 ),
        .I1(sid_IBUF[1]),
        .I2(sid_IBUF[2]),
        .I3(p_3_in),
        .I4(mode_IBUF[1]),
        .I5(sid_IBUF[3]),
        .O(\S_OBUF[8]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00001110)) 
    \S_OBUF[8]_inst_i_3 
       (.I0(sid_IBUF[0]),
        .I1(mode_IBUF[0]),
        .I2(p_5_in),
        .I3(p_2_in),
        .I4(\S_OBUF[15]_inst_i_3_n_0 ),
        .O(\S_OBUF[8]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \S_OBUF[8]_inst_i_4 
       (.I0(sid_IBUF[0]),
        .I1(mode_IBUF[0]),
        .O(\S_OBUF[8]_inst_i_4_n_0 ));
  OBUF \S_OBUF[9]_inst 
       (.I(S_OBUF[9]),
        .O(S[9]));
  LUT6 #(
    .INIT(64'hAAAAAFAAAAAAACAA)) 
    \S_OBUF[9]_inst_i_1 
       (.I0(p_4_in),
        .I1(p_3_in),
        .I2(\S_OBUF[9]_inst_i_2_n_0 ),
        .I3(sid_IBUF[2]),
        .I4(sid_IBUF[1]),
        .I5(p_2_in),
        .O(S_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \S_OBUF[9]_inst_i_2 
       (.I0(mode_IBUF[0]),
        .I1(sid_IBUF[3]),
        .I2(mode_IBUF[1]),
        .I3(sid_IBUF[0]),
        .O(\S_OBUF[9]_inst_i_2_n_0 ));
  CARRY4 \S_OBUF[9]_inst_i_3 
       (.CI(\S_OBUF[4]_inst_i_2_n_0 ),
        .CO({\S_OBUF[9]_inst_i_3_n_0 ,\S_OBUF[9]_inst_i_3_n_1 ,\S_OBUF[9]_inst_i_3_n_2 ,\S_OBUF[9]_inst_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({A_IBUF[7],B_IBUF[6:4]}),
        .O({p_2_in,p_5_in,\S_OBUF[9]_inst_i_3_n_6 ,\S_OBUF[9]_inst_i_3_n_7 }),
        .S({\S_OBUF[9]_inst_i_4_n_0 ,\S_OBUF[9]_inst_i_5_n_0 ,\S_OBUF[9]_inst_i_6_n_0 ,\S_OBUF[9]_inst_i_7_n_0 }));
  LUT5 #(
    .INIT(32'h66665666)) 
    \S_OBUF[9]_inst_i_4 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .I2(\S_OBUF[15]_inst_i_8_n_0 ),
        .I3(sid_IBUF[2]),
        .I4(sid_IBUF[1]),
        .O(\S_OBUF[9]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h3373CC8C)) 
    \S_OBUF[9]_inst_i_5 
       (.I0(\S_OBUF[15]_inst_i_9_n_0 ),
        .I1(A_IBUF[6]),
        .I2(sid_IBUF[1]),
        .I3(sid_IBUF[2]),
        .I4(B_IBUF[6]),
        .O(\S_OBUF[9]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h3373CC8C)) 
    \S_OBUF[9]_inst_i_6 
       (.I0(\S_OBUF[15]_inst_i_3_n_0 ),
        .I1(A_IBUF[5]),
        .I2(mode_IBUF[0]),
        .I3(sid_IBUF[0]),
        .I4(B_IBUF[5]),
        .O(\S_OBUF[9]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h3373CC8C)) 
    \S_OBUF[9]_inst_i_7 
       (.I0(\S_OBUF[15]_inst_i_9_n_0 ),
        .I1(A_IBUF[4]),
        .I2(sid_IBUF[2]),
        .I3(sid_IBUF[1]),
        .I4(B_IBUF[4]),
        .O(\S_OBUF[9]_inst_i_7_n_0 ));
  IBUF \mode_IBUF[0]_inst 
       (.I(mode[0]),
        .O(mode_IBUF[0]));
  IBUF \mode_IBUF[1]_inst 
       (.I(mode[1]),
        .O(mode_IBUF[1]));
  IBUF \sid_IBUF[0]_inst 
       (.I(sid[0]),
        .O(sid_IBUF[0]));
  IBUF \sid_IBUF[1]_inst 
       (.I(sid[1]),
        .O(sid_IBUF[1]));
  IBUF \sid_IBUF[2]_inst 
       (.I(sid[2]),
        .O(sid_IBUF[2]));
  IBUF \sid_IBUF[3]_inst 
       (.I(sid[3]),
        .O(sid_IBUF[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
