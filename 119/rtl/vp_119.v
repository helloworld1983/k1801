//
// Copyright (c) 2016 by 1801BM1@gmail.com
//______________________________________________________________________________
//
`timescale 1ns / 100ps

module vp_119
(
   input    PIN_CLK,             // primary clock
   input    PIN_RCLK,            // refresh clock
   input    PIN_nDCLO,           // system reset
                                 //
   input    PIN_DCE,             // error correction
   input    PIN_DEF,             // unit control
                                 //
   input    PIN_nA21,            // inverted A21 (DRAM address decoder)
   input    PIN_nA20,            // inverted A20 (DRAM address decoder)
   input    PIN_nA19,            // inverted A19
   input    PIN_nA12,            // inverted A12
   input    PIN_nA11,            // inverted A11
   input    PIN_nA0,             // inverted A0
                                 //
   input    PIN_nSEL,            // special supervisor mode, nSEL VM3
   input    PIN_nHLTM,           // halt mode
                                 //
   input    PIN_nSYNC,           //
   input    PIN_nDIN,            //
   input    PIN_nDOUT,           //
   input    PIN_nWTBT,           //
   input    PIN_nSACK,           //
   input    PIN_nTA,             //
                                 //
   output   PIN_nLA,             //
   output   PIN_nESYNC,          //
   output   PIN_nESYNCO,         // open collector
   output   PIN_nRPLY,           // open collector
   output   PIN_nFRPL,           // open collector
                                 //
   output   PIN_nRAS0,           //
   output   PIN_nRAS1,           //
   output   PIN_nCAS,            //
   output   PIN_nWE,             //
   output   PIN_nWEC,            //
                                 //
   output   PIN_S0,              //
   output   PIN_S1,              //
                                 //
   output   PIN_nRB,             //
   output   PIN_CB0,             //
   output   PIN_CB1,             //
   output   PIN_nSROM,           //
   output   PIN_nCS0,            //
   output   PIN_nCS1,            //
   output   PIN_nIN,             //
   output   PIN_nOUT             //
);
//______________________________________________________________________________
//
// Autogenerated netlist
//
wire nLA;
wire A0, nA0;
wire nA11;
wire nA12;
wire A19, nA19;
wire nA20;
wire nA21;

wire RF_RQ1;
wire nRF_ENA;
wire nRF_RQ1;
wire RF_RQ0;
wire nCLK1;
wire DR_PH4;
wire WTBTF;
wire nDR_CAS;
wire nDR_WIN;
wire nDR_PH2;
wire DR_CAS;
wire nRF_RQ3;
wire nWDONE;
wire nSRAM;
wire DCE;
wire SDONE;
wire nCLK2;
wire nSYNC;
wire CLK2;
wire DR_PH3;
wire WE;
wire IDLEQ;
wire nSACK;
wire nWTBTF;
wire RSACK;
wire DIN;
wire DCLO;
wire DOUT;
wire nWTBT;
wire nSREQ0;
wire nHLTMF;
wire nRF_RQ0;
wire nRF_WIN;
wire nDR_ENA;
wire DONE;
wire DR_PH2;
wire nDR_PH3;
wire nDCLO1;
wire nIDLEQ;
wire DR_RAS;
wire WORDR;
wire nDR_PH4;
wire nRF_REQ;
wire WTBT4;
wire nDR_RAS;
wire WORDW;
wire nWBYTEF;
wire DR_DIS;
wire DR_PW6;
wire nSDONE;
wire SYNC;
wire nRF_RQ2;
wire nDR_PW5;
wire DCLO1;
wire SREQ2;
wire nSDIN;
wire nDOUT;
wire SEL23;
wire nSREQ1;
wire RPLY;
wire WTBT;
wire WBFRES;
wire DCE3F;
wire nDINOUT;
wire nDLA;
wire FREAD;
wire nRF_RQ4;
wire CLK1;
wire NET00000;
wire NET00001;
wire NET00002;
wire NET00008;
wire NET00009;
wire NET00011;
wire NET00012;
wire NET00014;
wire NET00015;
wire NET00018;
wire NET00021;
wire NET00022;
wire NET00023;
wire NET00025;
wire NET00026;
wire NET00027;
wire NET00028;
wire NET00030;
wire NET00031;
wire NET00032;
wire NET00033;
wire NET00038;
wire NET00005;
wire NET00042;
wire NET00043;
wire NET00045;
wire NET00046;
wire NET00048;
wire NET00050;
wire NET00051;
wire NET00052;
wire NET00054;
wire NET00055;
wire NET00056;
wire NET00057;
wire NET00058;
wire NET00059;
wire NET00061;
wire NET00062;
wire NET00063;
wire NET00064;
wire NET00065;
wire NET00068;
wire NET00069;
wire NET00070;
wire NET00071;
wire NET00072;
wire NET00074;
wire NET00075;
wire NET00076;
wire NET00077;
wire NET00079;
wire NET00080;
wire NET00081;
wire NET00082;
wire NET00083;
wire NET00084;
wire NET00288;
wire NET00086;
wire NET00087;
wire NET00090;
wire NET00091;
wire NET00092;
wire NET00093;
wire NET00099;
wire NET00101;
wire NET00102;
wire NET00103;
wire NET00104;
wire NET00105;
wire NET00107;
wire NET00108;
wire NET00109;
wire NET00113;
wire NET00289;
wire NET00115;
wire NET00117;
wire NET00119;
wire NET00120;
wire NET00121;
wire NET00122;
wire NET00123;
wire NET00124;
wire NET00125;
wire NET00127;
wire NET00128;
wire NET00129;
wire NET00130;
wire NET00131;
wire NET00290;
wire NET00136;
wire NET00137;
wire NET00138;
wire NET00139;
wire NET00141;
wire NET00142;
wire NET00143;
wire NET00145;
wire NET00146;
wire NET00147;
wire NET00150;
wire NET00151;
wire NET00153;
wire NET00154;
wire NET00155;
wire NET00156;
wire NET00291;
wire NET00158;
wire NET00159;
wire NET00160;
wire NET00161;
wire NET00165;
wire NET00168;
wire NET00170;
wire NET00172;
wire NET00173;
wire NET00175;
wire NET00176;
wire NET00177;
wire NET00178;
wire NET00179;
wire NET00182;
wire NET00183;
wire NET00184;
wire NET00186;
wire NET00187;
wire NET00190;
wire NET00191;
wire NET00192;
wire NET00194;
wire NET00195;
wire NET00197;
wire NET00198;
wire NET00200;
wire NET00201;
wire NET00004;
wire NET00203;
wire NET00204;
wire NET00205;
wire NET00207;
wire NET00209;
wire NET00215;
wire NET00216;
wire NET00217;
wire NET00218;
wire NET00219;
wire NET00220;
wire NET00221;
wire NET00222;
wire NET00224;
wire NET00225;
wire NET00228;
wire NET00229;
wire NET00230;
wire NET00232;
wire NET00233;
wire NET00234;
wire NET00235;
wire NET00236;
wire NET00237;
wire NET00239;
wire NET00240;
wire NET00241;
wire NET00242;
wire NET00243;
wire NET00244;
wire NET00245;
wire NET00246;
wire NET00248;
wire NET00250;
wire NET00251;
wire NET00252;
wire NET00254;
wire NET00255;
wire NET00256;
wire NET00258;
wire NET00259;
wire NET00261;
wire NET00262;
wire NET00263;
wire NET00264;
wire NET00266;
wire NET00268;
wire NET00269;
wire NET00270;
wire NET00271;
wire NET00273;
wire NET00274;
wire NET00275;
wire NET00276;
wire NET00277;
wire NET00278;
wire NET00279;
wire NET00280;
wire NET00281;
wire NET00282;
wire NET00283;
wire NET00284;
wire NET00285;
wire NET00286;
//______________________________________________________________________________
//
// Autogenerated cell instantiations
//
tINPUT cell_PIN1( .y2(NET00062), .x1(PIN_CLK));
tINPUT cell_PIN2( .y2(NET00154), .x1(PIN_RCLK));
tINPUT cell_PIN12(.y1(DCE),      .x1(PIN_DCE));
tINPUT cell_PIN4( .y2(NET00278), .x1(PIN_DEF));
tINPUT cell_PIN27(.y2(DCLO1),    .x1(PIN_nDCLO));
tINPUT cell_PIN23(.y2(NET00177), .x1(PIN_nSEL));
tINPUT cell_PIN36(.y2(NET00072), .x1(PIN_nA21));
tINPUT cell_PIN35(.y2(NET00071), .x1(PIN_nA20));
tINPUT cell_PIN33(.y2(NET00076), .x1(PIN_nA19));
tINPUT cell_PIN22(.y2(NET00178), .x1(PIN_nA12));
tINPUT cell_PIN20(.y2(NET00176), .x1(PIN_nA11));
tINPUT cell_PIN19(.y2(NET00242), .x1(PIN_nA0));
tINPUT cell_PIN3( .y2(NET00285), .x1(PIN_nHLTM));
tINPUT cell_PIN38(.y2(DIN),      .x1(PIN_nDIN));
tINPUT cell_PIN37(.y2(DOUT),     .x1(PIN_nDOUT));
tINPUT cell_PIN40(.y2(WTBT),     .x1(PIN_nWTBT));
tINPUT cell_PIN41(.y2(SYNC),     .x1(PIN_nSYNC));
tINPUT cell_PIN5( .y2(NET00170), .x1(PIN_nSACK));
tINPUT cell_PIN34(.y2(NET00070), .x1(PIN_nTA));

tOUTPUT_OC cell_PIN8( .x1(NET00046), .y1(PIN_nESYNCO));
tOUTPUT_OC cell_PIN39(.x1(NET00079), .y1(PIN_nRPLY));
tOUTPUT_OC cell_PIN9( .x1(NET00237), .y1(PIN_nFRPL));

tOUTPUT cell_PIN6( .x1(NET00042), .y1(PIN_nLA));
tOUTPUT cell_PIN7( .x1(NET00046), .y1(PIN_nESYNC));
tOUTPUT cell_PIN32(.x1(NET00075), .y1(PIN_nCAS));
tOUTPUT cell_PIN30(.x1(NET00127), .y1(PIN_nRAS0));
tOUTPUT cell_PIN31(.x1(NET00074), .y1(PIN_nRAS1));
tOUTPUT cell_PIN29(.x1(NET00156), .y1(PIN_nWE));
tOUTPUT cell_PIN28(.x1(NET00179), .y1(PIN_nWEC));
tOUTPUT cell_PIN14(.x1(NET00235), .y1(PIN_S1));
tOUTPUT cell_PIN13(.x1(NET00239), .y1(PIN_S0));
tOUTPUT cell_PIN24(.x1(NET00173), .y1(PIN_nSROM));
tOUTPUT cell_PIN25(.x1(NET00172), .y1(PIN_nCS0));
tOUTPUT cell_PIN26(.x1(NET00291), .y1(PIN_nCS1));
tOUTPUT cell_PIN10(.x1(NET00240), .y1(PIN_nIN));
tOUTPUT cell_PIN11(.x1(NET00069), .y1(PIN_nOUT));
tOUTPUT cell_PIN16(.x1(NET00233), .y1(PIN_nRB));
tOUTPUT cell_PIN17(.x1(NET00234), .y1(PIN_CB0));
tOUTPUT cell_PIN18(.x1(NET00241), .y1(PIN_CB1));

t370 cell_O22(.y2(nSYNC), .x5(SYNC));
t387 cell_F4(.x1(NET00069), .y2(NET00240), .x3(WTBTF), .y4(NET00274), .x5(NET00274), .x6(FREAD));
t379 cell_B8(.x1(NET00168), .y2(WTBT4), .x3(IDLEQ), .y4(NET00273), .x5(NET00273), .x6(WTBT4), .x8(NET00064));
t385 cell_H4(.x1(nSACK), .x2(NET00170), .y3(RSACK), .x5(nDCLO1), .y8(nSACK));
t378 cell_B15(.x1(NET00117), .y2(NET00099), .x3(nCLK1), .x5(NET00101));
t374 cell_A15(.x1(NET00156), .x2(DCE), .x3(NET00158), .y4(NET00159), .y8(NET00158));
t374 cell_L15(.x1(nLA), .x2(NET00270), .x3(DCLO), .y4(NET00270), .y8(nDLA));
t387 cell_M15(.x1(nWDONE), .y2(WBFRES), .x3(DR_DIS), .y4(NET00262), .x5(NET00262), .x6(nDLA));
t429 cell_E20(.y3(nRF_WIN), .x5(NET00175));
t428 cell_E22(.x2(DCLO1), .y3(DCLO));
t402 cell_C22(.r1(NET00187), .q3(NET00198), .s6(DR_PH4));
t379 cell_G20(.x1(CLK1), .y2(NET00125), .x3(DCLO), .y4(NET00145), .x5(NET00145), .x6(NET00125), .x8(NET00002));
t393 cell_F27(.x1(DR_RAS), .x3(WORDW), .y4(NET00156), .x5(DR_PW6), .x6(NET00156), .y9(WE));
t378 cell_G25(.x1(NET00129), .y2(NET00128), .x3(nCLK2), .x5(NET00143));
t379 cell_I36(.x1(NET00195), .y2(SREQ2), .x3(nDINOUT), .y4(NET00194), .x5(NET00194), .x6(SREQ2), .x8(NET00197));
t416 cell_H32(.c1(nLA), .q3(nA21), .d5(NET00072));
t379 cell_I18(.x1(NET00082), .y2(DONE), .x3(NET00275), .y4(NET00000), .x5(NET00000), .x6(DONE), .x8(NET00081));
t379 cell_J18(.x1(RPLY), .y2(NET00275), .x3(NET00083), .y4(NET00083), .x5(NET00081), .x6(NET00275), .x8(NET00082));
t378 cell_O18(.x1(NET00243), .y2(NET00290), .x3(RSACK), .x5(SYNC));
t379 cell_O20(.x1(CLK1), .y2(NET00028), .x3(DCLO), .y4(NET00284), .x5(NET00284), .x6(NET00028), .x8(NET00048));
t390 cell_L36(.x1(nWBYTEF), .y4(NET00130), .x5(NET00150), .x6(WTBTF), .y9(NET00150), .x10(DR_PH4));
t387 cell_L34(.x1(SYNC), .y2(nSDIN), .x3(DOUT), .y4(NET00151), .x5(DIN), .x6(DIN));
t387 cell_I4(.x1(DR_PH2), .y2(NET00237), .x3(NET00170), .y4(NET00236), .x5(NET00236), .x6(nSDIN));
t379 cell_C8(.x1(DR_PH4), .y2(NET00064), .x3(IDLEQ), .y4(NET00063), .x5(NET00063), .x6(NET00064), .x8(NET00065));
t378 cell_D8(.x1(NET00065), .y2(NET00168), .x3(DR_PH4), .x5(NET00064));
t379 cell_C15(.x1(nCLK1), .y2(NET00101), .x3(nRF_WIN), .y4(NET00119), .x5(NET00119), .x6(NET00101), .x8(NET00117));
t379 cell_D15(.x1(NET00099), .y2(RF_RQ0), .x3(nRF_WIN), .y4(nRF_RQ0), .x5(nRF_RQ0), .x6(RF_RQ0), .x8(NET00101));
t379 cell_O13(.x1(WE), .y2(NET00244), .x3(nDLA), .y4(NET00248), .x5(NET00248), .x6(NET00244), .x8(NET00245));
t379 cell_F18(.x1(nDR_ENA), .y2(NET00058), .x3(NET00057), .y4(NET00056), .x5(NET00056), .x6(NET00058), .x8(NET00059));
t379 cell_F20(.x1(NET00001), .y2(SDONE), .x3(DCLO), .y4(nSDONE), .x5(nSDONE), .x6(SDONE), .x8(NET00125));
t378 cell_H20(.x1(NET00002), .y2(NET00001), .x3(CLK1), .x5(NET00125));
t378 cell_F22(.x1(NET00084), .y2(NET00108), .x3(nDR_WIN), .x5(NET00056));
t378 cell_H25(.x1(NET00128), .y2(NET00129), .x3(nDR_WIN), .x5(nDR_PH2));
t392 cell_G27(.x1(A19), .x3(RF_RQ1), .y4(NET00074), .x5(DR_RAS));
t378 cell_I34(.x1(NET00184), .y2(NET00289), .x3(nCLK2), .x5(NET00183));
t379 cell_J34(.x1(nCLK2), .y2(NET00183), .x3(nDINOUT), .y4(NET00182), .x5(NET00182), .x6(NET00183), .x8(NET00184));
t429 cell_K18(.y3(nCLK1), .x5(NET00062));
t429 cell_K22(.y3(nDR_WIN), .x5(NET00061));
t384 cell_M22(.x1(nDR_RAS), .y3(NET00025), .x5(nDR_PH4));
t402 cell_M34(.r1(nHLTMF), .q3(NET00131), .s6(DR_PH2));
t402 cell_N36(.r1(nHLTMF), .q3(NET00113), .s6(DR_PH4));
t379 cell_A11(.x1(NET00154), .y2(NET00138), .x3(nRF_ENA), .y4(NET00153), .x5(NET00153), .x6(NET00138), .x8(NET00155));
t379 cell_F15(.x1(NET00050), .y2(NET00051), .x3(nRF_WIN), .y4(nRF_RQ3), .x5(nRF_RQ3), .x6(NET00051), .x8(NET00011));
t378 cell_F13(.x1(NET00033), .y2(NET00030), .x3(nCLK1), .x5(NET00032));
t379 cell_N15(.x1(nDLA), .y2(NET00254), .x3(NET00246), .y4(nWDONE), .x5(nWDONE), .x6(NET00254), .x8(NET00244));
t378 cell_N13(.x1(NET00255), .y2(NET00256), .x3(WBFRES), .x5(nWTBT));
t378 cell_H18(.x1(NET00001), .y2(NET00002), .x3(DCLO), .x5(NET00000));
t379 cell_H22(.x1(CLK1), .y2(NET00086), .x3(nDR_WIN), .y4(NET00124), .x5(NET00124), .x6(NET00086), .x8(NET00108));
t392 cell_H27(.x1(nA19), .x3(RF_RQ1), .y4(NET00127), .x5(DR_RAS));
t379 cell_G29(.x1(nDR_PW5), .y2(NET00147), .x3(NET00123), .y4(NET00123), .x5(NET00122), .x6(NET00147), .x8(nWTBTF));
t429 cell_K34(.y3(nCLK2), .x5(NET00062));
t428 cell_K20(.x2(NET00027), .y3(DR_PH4));
t378 cell_L25(.x1(NET00023), .y2(NET00022), .x3(CLK1), .x5(NET00043));
t384 cell_L32(.x1(nIDLEQ), .y3(nHLTMF), .x5(NET00004));
t370 cell_M32(.y2(RPLY), .x5(NET00079));
t379 cell_B11(.x1(NET00102), .y2(DCE3F), .x3(IDLEQ), .y4(NET00139), .x5(NET00139), .x6(DCE3F), .x8(NET00054));
t379 cell_A13(.x1(NET00154), .y2(NET00136), .x3(NET00155), .y4(NET00155), .x5(NET00138), .x6(NET00136), .x8(nRF_ENA));
t378 cell_G13(.x1(NET00030), .y2(NET00033), .x3(nRF_WIN), .x5(nRF_RQ1));
t379 cell_G15(.x1(NET00030), .y2(NET00031), .x3(nRF_WIN), .y4(nRF_RQ2), .x5(nRF_RQ2), .x6(NET00031), .x8(NET00032));
t379 cell_B18(.x1(nCLK1), .y2(NET00288), .x3(DCLO), .y4(NET00141), .x5(NET00141), .x6(NET00288), .x8(NET00142));
t379 cell_C18(.x1(NET00104), .y2(NET00059), .x3(nDR_ENA), .y4(NET00120), .x5(NET00120), .x6(NET00059), .x8(NET00105));
t378 cell_B22(.x1(NET00209), .y2(NET00201), .x3(nSYNC), .x5(NET00203));
t378 cell_B25(.x1(NET00201), .y2(NET00209), .x3(nDR_ENA), .x5(WTBT));
t373 cell_B29(.x1(nA12), .x3(nA11), .y4(NET00215));
t390 cell_B32(.x1(NET00215), .y4(nSRAM), .x5(SEL23), .x6(nSRAM), .y9(NET00173), .x10(SEL23));
t379 cell_F32(.x1(NET00191), .y2(FREAD), .x3(NET00230), .y4(NET00229), .x5(NET00229), .x6(FREAD), .x8(NET00232));
t428 cell_K25(.x2(NET00062), .y3(CLK1));
t428 cell_K27(.x2(NET00062), .y3(CLK2));
t378 cell_M25(.x1(NET00022), .y2(NET00023), .x3(nDR_WIN), .x5(nDR_CAS));
t378 cell_N25(.x1(NET00282), .y2(NET00018), .x3(nCLK2), .x5(NET00021));
t379 cell_N32(.x1(NET00092), .y2(NET00115), .x3(nLA), .y4(nWTBTF), .x5(nWTBTF), .x6(NET00115), .x8(NET00090));
t379 cell_B13(.x1(nRF_ENA), .y2(NET00137), .x3(NET00136), .y4(nRF_REQ), .x5(nRF_REQ), .x6(NET00137), .x8(NET00138));
t378 cell_C11(.x1(NET00102), .y2(NET00055), .x3(IDLEQ), .x5(DCE));
t379 cell_H15(.x1(CLK2), .y2(NET00011), .x3(nRF_WIN), .y4(NET00009), .x5(NET00009), .x6(NET00011), .x8(NET00012));
t378 cell_B20(.x1(NET00142), .y2(NET00160), .x3(nCLK1), .x5(NET00288));
t379 cell_A20(.x1(NET00160), .y2(NET00222), .x3(DCLO), .y4(nRF_RQ4), .x5(nRF_RQ4), .x6(NET00222), .x8(NET00288));
t399 cell_A25(.r1(NET00187), .x2(NET00224), .q3(NET00224), .s6(DR_PH3), .y7(NET00225));
t416 cell_A27(.c1(nLA), .q3(nA12), .d5(NET00178));
t423 cell_A32(.x1(nA0), .y2(NET00234), .x4(DCE3F), .x5(WTBTF), .x6(WTBT4));
t416 cell_A34(.c1(nLA), .q3(nA0), .q4(A0), .d5(NET00242));
t379 cell_F36(.x1(CLK2), .y2(NET00197), .x3(nDINOUT), .y4(NET00228), .x5(NET00228), .x6(NET00197), .x8(NET00207));
t379 cell_G34(.x1(NET00216), .y2(NET00217), .x3(nDINOUT), .y4(nSREQ0), .x5(nSREQ0), .x6(NET00217), .x8(NET00218));
t428 cell_K29(.x2(NET00042), .y3(nLA));
t428 cell_K32(.x2(NET00115), .y3(WTBTF));
t373 cell_L27(.x1(SYNC), .x3(RPLY), .y4(NET00042));
t378 cell_L29(.x1(NET00015), .y2(NET00014), .x3(nCLK1), .x5(NET00038));
t378 cell_N34(.x1(NET00092), .y2(NET00091), .x3(nLA), .x5(nWTBT));
t378 cell_O34(.x1(NET00091), .y2(NET00092), .x3(DOUT), .x5(NET00090));
t378 cell_C13(.x1(NET00099), .y2(NET00117), .x3(nRF_WIN), .x5(nRF_REQ));
t379 cell_F11(.x1(nDR_PH3), .y2(NET00054), .x3(IDLEQ), .y4(NET00052), .x5(NET00052), .x6(NET00054), .x8(NET00055));
t378 cell_I15(.x1(NET00050), .y2(NET00012), .x3(nRF_WIN), .x5(nRF_RQ2));
t378 cell_J15(.x1(NET00012), .y2(NET00050), .x3(CLK2), .x5(NET00011));
t379 cell_D18(.x1(NET00104), .y2(NET00057), .x3(NET00105), .y4(NET00105), .x5(NET00059), .x6(NET00057), .x8(nDR_ENA));
t384 cell_C20(.x1(nDCLO1), .y3(NET00082), .x5(nSDONE));
t416 cell_B27(.c1(nLA), .q4(SEL23), .d5(NET00177));
t379 cell_C25(.x1(NET00201), .y2(WORDR), .x3(nDR_ENA), .y4(NET00200), .x5(NET00200), .x6(WORDR), .x8(NET00203));
t390 cell_B34(.x1(A0), .y4(NET00266), .x5(WTBT), .x6(nA0), .y9(NET00268), .x10(WTBT));
t390 cell_B36(.x1(NET00266), .y4(NET00172), .x5(NET00250), .x6(NET00268), .y9(NET00291), .x10(NET00250));
t378 cell_G36(.x1(NET00207), .y2(NET00195), .x3(CLK2), .x5(NET00197));
t379 cell_G32(.x1(CLK2), .y2(NET00218), .x3(nDINOUT), .y4(NET00219), .x5(NET00219), .x6(NET00218), .x8(NET00220));
t428 cell_K36(.x2(NET00151), .y3(nDINOUT));
t378 cell_N27(.x1(NET00283), .y2(NET00280), .x3(nLA), .x5(NET00285));
t378 cell_O27(.x1(NET00280), .y2(NET00283), .x3(NET00278), .x5(NET00279));
t379 cell_O36(.x1(DOUT), .y2(NET00090), .x3(nLA), .y4(NET00093), .x5(NET00093), .x6(NET00090), .x8(NET00091));
t379 cell_M11(.x1(nDOUT), .y2(NET00258), .x3(WBFRES), .y4(NET00263), .x5(NET00263), .x6(NET00258), .x8(NET00256));
t378 cell_N11(.x1(NET00256), .y2(NET00255), .x3(nDOUT), .x5(NET00258));
t379 cell_J13(.x1(CLK2), .y2(NET00008), .x3(nRF_WIN), .y4(NET00276), .x5(NET00276), .x6(NET00008), .x8(NET00271));
t378 cell_L13(.x1(NET00271), .y2(NET00005), .x3(CLK2), .x5(NET00008));
t429 cell_E18(.y3(IDLEQ), .x5(nIDLEQ));
t388 cell_D22(.x1(nRF_ENA), .y2(nDCLO1), .x3(NET00025), .y4(NET00175), .y5(nRF_ENA), .x6(nDCLO1), .x7(DCLO1), .x10(nRF_RQ4));
t379 cell_C32(.x1(NET00192), .y2(NET00232), .x3(NET00191), .y4(NET00259), .x5(NET00259), .x6(NET00232), .x8(NET00251));
t378 cell_H36(.x1(NET00195), .y2(NET00207), .x3(nDINOUT), .x5(nSREQ1));
t381 cell_I20(.x1(DCLO), .y2(NET00061), .x3(NET00109), .x4(DR_PH4), .x6(DR_DIS));
t378 cell_M29(.x1(NET00014), .y2(NET00015), .x3(nWTBTF), .x5(nDR_PH4));
t395 cell_G4(.x1(nSACK), .y2(NET00068), .x3(NET00068), .x4(nSDIN), .x5(nSDIN), .x6(nSACK), .y8(NET00069));
t379 cell_D32(.x1(NET00192), .y2(NET00230), .x3(NET00251), .y4(NET00251), .x5(NET00232), .x6(NET00230), .x8(NET00191));
t385 cell_C27(.x1(nDR_PW5), .x2(NET00204), .y3(NET00204), .x5(WTBTF), .y8(NET00205));
t376 cell_B4(.x1(NET00159), .x3(NET00225), .y4(NET00235), .x6(NET00159), .x8(NET00198), .y9(NET00239));
t379 cell_I25(.x1(NET00022), .y2(DR_PH2), .x3(nDR_WIN), .y4(nDR_PH2), .x5(nDR_PH2), .x6(DR_PH2), .x8(NET00043));
t379 cell_J25(.x1(CLK1), .y2(NET00043), .x3(nDR_WIN), .y4(NET00087), .x5(NET00087), .x6(NET00043), .x8(NET00023));
t379 cell_N29(.x1(NET00283), .y2(NET00286), .x3(nLA), .y4(NET00004), .x5(NET00004), .x6(NET00286), .x8(NET00279));
t379 cell_O29(.x1(NET00278), .y2(NET00279), .x3(nLA), .y4(NET00277), .x5(NET00277), .x6(NET00279), .x8(NET00280));
t381 cell_C29(.x1(NET00205), .y2(NET00104), .x3(WORDW), .x4(WORDR), .x6(NET00070));
t379 cell_I29(.x1(NET00014), .y2(NET00107), .x3(nWTBTF), .y4(nDR_PW5), .x5(nDR_PW5), .x6(NET00107), .x8(NET00038));
t384 cell_C34(.x1(WE), .y3(NET00179), .x5(DCE));
t417 cell_C36(.x1(WE), .y4(NET00233), .x5(WTBTF), .x6(DIN), .x10(DCE3F));
t384 cell_I32(.x1(nA21), .y3(DR_DIS), .x5(nA20));
t417 cell_I27(.x1(DR_CAS), .y4(NET00075), .x5(nDR_PH3), .x6(RF_RQ0), .x10(nRF_RQ2));
t373 cell_D36(.x1(nDINOUT), .x3(nSRAM), .y4(NET00250));
t378 cell_D34(.x1(NET00216), .y2(NET00220), .x3(nDINOUT), .x5(nSRAM));
t416 cell_J27(.c1(nLA), .q3(nA19), .q4(A19), .d5(NET00076));
t416 cell_J32(.c1(nLA), .q3(nA20), .d5(NET00071));
t379 cell_F29(.x1(nWTBTF), .y2(DR_PW6), .x3(NET00147), .y4(NET00165), .x5(NET00165), .x6(DR_PW6), .x8(NET00122));
t379 cell_L18(.x1(NET00243), .y2(NET00269), .x3(RSACK), .y4(NET00045), .x5(NET00045), .x6(NET00269), .x8(NET00252));
t379 cell_M18(.x1(nCLK2), .y2(NET00252), .x3(RSACK), .y4(NET00261), .x5(NET00261), .x6(NET00252), .x8(NET00290));
t378 cell_N20(.x1(NET00048), .y2(NET00026), .x3(CLK1), .x5(NET00028));
t378 cell_N18(.x1(NET00290), .y2(NET00243), .x3(nCLK2), .x5(NET00252));
t379 cell_J20(.x1(RPLY), .y2(NET00081), .x3(NET00082), .y4(NET00080), .x5(NET00080), .x6(NET00081), .x8(NET00083));
t378 cell_F8(.x1(NET00168), .y2(NET00065), .x3(IDLEQ), .x5(nWTBTF));
t379 cell_D13(.x1(nCLK1), .y2(NET00032), .x3(nRF_WIN), .y4(NET00103), .x5(NET00103), .x6(NET00032), .x8(NET00033));
t379 cell_H13(.x1(NET00005), .y2(RF_RQ1), .x3(nRF_WIN), .y4(nRF_RQ1), .x5(nRF_RQ1), .x6(RF_RQ1), .x8(NET00008));
t379 cell_M13(.x1(NET00255), .y2(NET00264), .x3(WBFRES), .y4(nWBYTEF), .x5(nWBYTEF), .x6(NET00264), .x8(NET00258));
t379 cell_O15(.x1(WE), .y2(NET00246), .x3(NET00245), .y4(NET00245), .x5(NET00244), .x6(NET00246), .x8(nDLA));
t378 cell_A18(.x1(NET00160), .y2(NET00142), .x3(DCLO), .x5(nRF_RQ3));
t378 cell_G18(.x1(nLA), .y2(nIDLEQ), .x3(DONE), .x5(SDONE));
t379 cell_A22(.x1(nSYNC), .y2(NET00203), .x3(nDR_ENA), .y4(NET00221), .x5(NET00221), .x6(NET00203), .x8(NET00209));
t380 cell_G22(.x1(DCLO), .y2(nDR_ENA), .y3(NET00146), .x4(DR_PH4), .x5(NET00146), .x6(DR_DIS));
t416 cell_A29(.c1(nLA), .q3(nA11), .d5(NET00176));
t379 cell_H29(.x1(nDR_PW5), .y2(NET00122), .x3(nWTBTF), .y4(NET00121), .x5(NET00121), .x6(NET00122), .x8(NET00123));
t378 cell_F34(.x1(NET00220), .y2(NET00216), .x3(CLK2), .x5(NET00218));
t379 cell_J36(.x1(NET00289), .y2(NET00186), .x3(nDINOUT), .y4(nSREQ1), .x5(nSREQ1), .x6(NET00186), .x8(NET00183));
t384 cell_L22(.x1(SYNC), .y3(NET00046), .x5(NET00045));
t378 cell_N22(.x1(NET00018), .y2(NET00282), .x3(nDR_WIN), .x5(nDR_RAS));
t379 cell_O25(.x1(nCLK2), .y2(NET00021), .x3(nDR_WIN), .y4(NET00281), .x5(NET00281), .x6(NET00021), .x8(NET00282));
t421 cell_M36(.x1(DIN), .y2(NET00079), .x3(NET00130), .x4(SREQ2), .x5(NET00113), .x6(NET00131), .x10(WORDW));
t375 cell_O32(.x1(nDOUT), .y2(WORDW), .y3(nWTBT), .x4(WTBT), .x5(WTBT), .x6(DOUT), .y9(nDOUT));
t378 cell_D11(.x1(NET00055), .y2(NET00102), .x3(nDR_PH3), .x5(NET00054));
t378 cell_I13(.x1(NET00005), .y2(NET00271), .x3(nRF_WIN), .x5(nRF_RQ0));
t384 cell_D20(.x1(nRF_RQ0), .y3(NET00109), .x5(nRF_RQ4));
t379 cell_D25(.x1(NET00128), .y2(DR_PH3), .x3(nDR_WIN), .y4(nDR_PH3), .x5(nDR_PH3), .x6(DR_PH3), .x8(NET00143));
t423 cell_A36(.x1(A0), .y2(NET00241), .x4(DCE3F), .x5(WTBTF), .x6(WTBT4));
t378 cell_H34(.x1(NET00289), .y2(NET00184), .x3(nDINOUT), .x5(nSREQ0));
t378 cell_I22(.x1(NET00108), .y2(NET00084), .x3(CLK1), .x5(NET00086));
t379 cell_M27(.x1(NET00018), .y2(DR_CAS), .x3(nDR_WIN), .y4(nDR_CAS), .x5(nDR_CAS), .x6(DR_CAS), .x8(NET00021));
t384 cell_D27(.x1(nIDLEQ), .y3(NET00187), .x5(DCE));
t391 cell_D29(.x1(nSDIN), .x2(nLA), .y3(NET00190), .y4(NET00191), .x5(NET00190), .x6(DR_CAS), .y9(NET00192), .x10(NET00156));
t379 cell_F25(.x1(nCLK2), .y2(NET00143), .x3(nDR_WIN), .y4(NET00161), .x5(NET00161), .x6(NET00143), .x8(NET00129));
t379 cell_J22(.x1(NET00084), .y2(DR_RAS), .x3(nDR_WIN), .y4(nDR_RAS), .x5(nDR_RAS), .x6(DR_RAS), .x8(NET00086));
t379 cell_J29(.x1(nCLK1), .y2(NET00038), .x3(nWTBTF), .y4(NET00077), .x5(NET00077), .x6(NET00038), .x8(NET00015));
t379 cell_M20(.x1(NET00026), .y2(NET00027), .x3(DCLO), .y4(nDR_PH4), .x5(nDR_PH4), .x6(NET00027), .x8(NET00028));
t378 cell_L20(.x1(NET00026), .y2(NET00048), .x3(DCLO), .x5(nDR_PH3));

endmodule