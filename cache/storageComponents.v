module D_FF(input clk, input reset, input write, input d, output reg q);  
  always @(negedge clk) 
  begin
    if(reset)
      q=0; 
    else if(write)  
      q=d;
  end
endmodule
 
module tagLine(input clk, input reset, input write, input[22:0] tag, output[22:0] tagData);
    D_FF dff0( clk,  reset,  write,  tag[0], tagData[0]); 
    D_FF dff1( clk,  reset,  write,  tag[1], tagData[1]); 
    D_FF dff2( clk,  reset,  write,  tag[2], tagData[2]); 
    D_FF dff3( clk,  reset,  write,  tag[3], tagData[3]); 
    D_FF dff4( clk,  reset,  write,  tag[4], tagData[4]); 
    D_FF dff5( clk,  reset,  write,  tag[5], tagData[5]); 
    D_FF dff6( clk,  reset,  write,  tag[6], tagData[6]); 
    D_FF dff7( clk,  reset,  write,  tag[7], tagData[7]);
     
    D_FF dff8( clk,  reset,  write,  tag[8], tagData[8]);
    D_FF dff9( clk,  reset,  write,  tag[9], tagData[9]);
    D_FF dff10( clk,  reset,  write,  tag[10], tagData[10]);
    D_FF dff11( clk,  reset,  write,  tag[11], tagData[11]);
    D_FF dff12( clk,  reset,  write,  tag[12], tagData[12]);
    D_FF dff13( clk,  reset,  write,  tag[13], tagData[13]);
    D_FF dff14( clk,  reset,  write,  tag[14], tagData[14]);
    D_FF dff15( clk,  reset,  write,  tag[15], tagData[15]);
    
    D_FF dff16( clk,  reset,  write,  tag[16], tagData[16]);
    D_FF dff17( clk,  reset,  write,  tag[17], tagData[17]);
    D_FF dff18( clk,  reset,  write,  tag[18], tagData[18]);
    D_FF dff19( clk,  reset,  write,  tag[19], tagData[19]);
    D_FF dff20( clk,  reset,  write,  tag[20], tagData[20]);
    D_FF dff21( clk,  reset,  write,  tag[21], tagData[21]);
    D_FF dff22( clk,  reset,  write,  tag[22], tagData[22]);
      
endmodule

module dataLine(input clk, input reset, input write, input [63:0] data,output [63:0] dataOut);
    D_FF dff0( clk,  reset,  write,  data[0], dataOut[0]);
    D_FF dff1( clk,  reset,  write,  data[1], dataOut[1]);
    D_FF dff2( clk,  reset,  write,  data[2], dataOut[2]);
    D_FF dff3( clk,  reset,  write,  data[3], dataOut[3]);
    D_FF dff4( clk,  reset,  write,  data[4], dataOut[4]);
    D_FF dff5( clk,  reset,  write,  data[5], dataOut[5]);
    D_FF dff6( clk,  reset,  write,  data[6], dataOut[6]);
    D_FF dff7( clk,  reset,  write,  data[7], dataOut[7]);
    D_FF dff8( clk,  reset,  write,  data[8], dataOut[8]);
    D_FF dff9( clk,  reset,  write,  data[9], dataOut[9]);
    D_FF dff10( clk,  reset,  write,  data[10], dataOut[10]);
    D_FF dff11( clk,  reset,  write,  data[11], dataOut[11]);
    D_FF dff12( clk,  reset,  write,  data[12], dataOut[12]);
    D_FF dff13( clk,  reset,  write,  data[13], dataOut[13]);
    D_FF dff14( clk,  reset,  write,  data[14], dataOut[14]);
    D_FF dff15( clk,  reset,  write,  data[15], dataOut[15]);
    D_FF dff16( clk,  reset,  write,  data[16], dataOut[16]);
    D_FF dff17( clk,  reset,  write,  data[17], dataOut[17]);
    D_FF dff18( clk,  reset,  write,  data[18], dataOut[18]);
    D_FF dff19( clk,  reset,  write,  data[19], dataOut[19]);
    D_FF dff20( clk,  reset,  write,  data[20], dataOut[20]);
    D_FF dff21( clk,  reset,  write,  data[21], dataOut[21]);
    D_FF dff22( clk,  reset,  write,  data[22], dataOut[22]);
    D_FF dff23( clk,  reset,  write,  data[23], dataOut[23]);
    D_FF dff24( clk,  reset,  write,  data[24], dataOut[24]);
    D_FF dff25( clk,  reset,  write,  data[25], dataOut[25]);
    D_FF dff26( clk,  reset,  write,  data[26], dataOut[26]);
    D_FF dff27( clk,  reset,  write,  data[27], dataOut[27]);
    D_FF dff28( clk,  reset,  write,  data[28], dataOut[28]);
    D_FF dff29( clk,  reset,  write,  data[29], dataOut[29]);
    D_FF dff30( clk,  reset,  write,  data[30], dataOut[30]);
    D_FF dff31( clk,  reset,  write,  data[31], dataOut[31]);
    D_FF dff32( clk,  reset,  write,  data[32], dataOut[32]);
    D_FF dff33( clk,  reset,  write,  data[33], dataOut[33]);
    D_FF dff34( clk,  reset,  write,  data[34], dataOut[34]);
    D_FF dff35( clk,  reset,  write,  data[35], dataOut[35]);
    D_FF dff36( clk,  reset,  write,  data[36], dataOut[36]);
    D_FF dff37( clk,  reset,  write,  data[37], dataOut[37]);
    D_FF dff38( clk,  reset,  write,  data[38], dataOut[38]);
    D_FF dff39( clk,  reset,  write,  data[39], dataOut[39]);
    D_FF dff40( clk,  reset,  write,  data[40], dataOut[40]);
    D_FF dff41( clk,  reset,  write,  data[41], dataOut[41]);
    D_FF dff42( clk,  reset,  write,  data[42], dataOut[42]);
    D_FF dff43( clk,  reset,  write,  data[43], dataOut[43]);
    D_FF dff44( clk,  reset,  write,  data[44], dataOut[44]);
    D_FF dff45( clk,  reset,  write,  data[45], dataOut[45]);
    D_FF dff46( clk,  reset,  write,  data[46], dataOut[46]);
    D_FF dff47( clk,  reset,  write,  data[47], dataOut[47]);
    D_FF dff48( clk,  reset,  write,  data[48], dataOut[48]);
    D_FF dff49( clk,  reset,  write,  data[49], dataOut[49]);
    D_FF dff50( clk,  reset,  write,  data[50], dataOut[50]);
    D_FF dff51( clk,  reset,  write,  data[51], dataOut[51]);
    D_FF dff52( clk,  reset,  write,  data[52], dataOut[52]);
    D_FF dff53( clk,  reset,  write,  data[53], dataOut[53]);
    D_FF dff54( clk,  reset,  write,  data[54], dataOut[54]);
    D_FF dff55( clk,  reset,  write,  data[55], dataOut[55]);
    D_FF dff56( clk,  reset,  write,  data[56], dataOut[56]);
    D_FF dff57( clk,  reset,  write,  data[57], dataOut[57]);
    D_FF dff58( clk,  reset,  write,  data[58], dataOut[58]);
    D_FF dff59( clk,  reset,  write,  data[59], dataOut[59]);
    D_FF dff60( clk,  reset,  write,  data[60], dataOut[60]);
    D_FF dff61( clk,  reset,  write,  data[61], dataOut[61]);
    D_FF dff62( clk,  reset,  write,  data[62], dataOut[62]);
    D_FF dff63( clk,  reset,  write,  data[63], dataOut[63]);
endmodule

module dataArray(input clk, input reset, input enable, input writeReady, input [63:0] index, input [63:0] data, 
output [63:0] dataOut0, dataOut1, dataOut2, dataOut3, dataOut4, dataOut5, dataOut6, dataOut7, dataOut8, dataOut9,
              dataOut10, dataOut11, dataOut12, dataOut13, dataOut14, dataOut15, dataOut16, dataOut17, dataOut18, dataOut19,
              dataOut20, dataOut21, dataOut22, dataOut23, dataOut24, dataOut25, dataOut26, dataOut27, dataOut28, dataOut29,
              dataOut30, dataOut31, dataOut32, dataOut33, dataOut34, dataOut35, dataOut36, dataOut37, dataOut38, dataOut39,
              dataOut40, dataOut41, dataOut42, dataOut43, dataOut44, dataOut45, dataOut46, dataOut47, dataOut48, dataOut49,
              dataOut50, dataOut51, dataOut52, dataOut53, dataOut54, dataOut55, dataOut56, dataOut57, dataOut58, dataOut59,
              dataOut60, dataOut61, dataOut62, dataOut63);
              
    
    dataLine  set0(clk,  reset,  enable&writeReady&index[0],  data, dataOut0);
    dataLine  set1(clk,  reset,  enable&writeReady&index[1],  data, dataOut1);
    dataLine  set2(clk,  reset,  enable&writeReady&index[2],  data, dataOut2);
    dataLine  set3(clk,  reset,  enable&writeReady&index[3],  data, dataOut3);
    dataLine  set4(clk,  reset,  enable&writeReady&index[4],  data, dataOut4);
    dataLine  set5(clk,  reset,  enable&writeReady&index[5],  data, dataOut5);
    dataLine  set6(clk,  reset,  enable&writeReady&index[6],  data, dataOut6);
    dataLine  set7(clk,  reset,  enable&writeReady&index[7],  data, dataOut7);
    dataLine  set8(clk,  reset,  enable&writeReady&index[8],  data, dataOut8);
    dataLine  set9(clk,  reset,  enable&writeReady&index[9],  data, dataOut9);
    dataLine  set10(clk,  reset,  enable&writeReady&index[10],  data, dataOut10);
    dataLine  set11(clk,  reset,  enable&writeReady&index[11],  data, dataOut11);
    dataLine  set12(clk,  reset,  enable&writeReady&index[12],  data, dataOut12);
    dataLine  set13(clk,  reset,  enable&writeReady&index[13],  data, dataOut13);
    dataLine  set14(clk,  reset,  enable&writeReady&index[14],  data, dataOut14);
    dataLine  set15(clk,  reset,  enable&writeReady&index[15],  data, dataOut15);
    dataLine  set16(clk,  reset,  enable&writeReady&index[16],  data, dataOut16);
    dataLine  set17(clk,  reset,  enable&writeReady&index[17],  data, dataOut17);
    dataLine  set18(clk,  reset,  enable&writeReady&index[18],  data, dataOut18);
    dataLine  set19(clk,  reset,  enable&writeReady&index[19],  data, dataOut19);
    dataLine  set20(clk,  reset,  enable&writeReady&index[20],  data, dataOut20);
    dataLine  set21(clk,  reset,  enable&writeReady&index[21],  data, dataOut21);
    dataLine  set22(clk,  reset,  enable&writeReady&index[22],  data, dataOut22);
    dataLine  set23(clk,  reset,  enable&writeReady&index[23],  data, dataOut23);
    dataLine  set24(clk,  reset,  enable&writeReady&index[24],  data, dataOut24);
    dataLine  set25(clk,  reset,  enable&writeReady&index[25],  data, dataOut25);
    dataLine  set26(clk,  reset,  enable&writeReady&index[26],  data, dataOut26);
    dataLine  set27(clk,  reset,  enable&writeReady&index[27],  data, dataOut27);
    dataLine  set28(clk,  reset,  enable&writeReady&index[28],  data, dataOut28);
    dataLine  set29(clk,  reset,  enable&writeReady&index[29],  data, dataOut29);
    dataLine  set30(clk,  reset,  enable&writeReady&index[30],  data, dataOut30);
    dataLine  set31(clk,  reset,  enable&writeReady&index[31],  data, dataOut31);        
    dataLine  set32(clk,  reset,  enable&writeReady&index[32],  data, dataOut32);
    dataLine  set33(clk,  reset,  enable&writeReady&index[33],  data, dataOut33);
    dataLine  set34(clk,  reset,  enable&writeReady&index[34],  data, dataOut34);
    dataLine  set35(clk,  reset,  enable&writeReady&index[35],  data, dataOut35);
    dataLine  set36(clk,  reset,  enable&writeReady&index[36],  data, dataOut36);
    dataLine  set37(clk,  reset,  enable&writeReady&index[37],  data, dataOut37);
    dataLine  set38(clk,  reset,  enable&writeReady&index[38],  data, dataOut38);
    dataLine  set39(clk,  reset,  enable&writeReady&index[39],  data, dataOut39);
    dataLine  set40(clk,  reset,  enable&writeReady&index[40],  data, dataOut40);
    dataLine  set41(clk,  reset,  enable&writeReady&index[41],  data, dataOut41);
    dataLine  set42(clk,  reset,  enable&writeReady&index[42],  data, dataOut42);
    dataLine  set43(clk,  reset,  enable&writeReady&index[43],  data, dataOut43);
    dataLine  set44(clk,  reset,  enable&writeReady&index[44],  data, dataOut44);
    dataLine  set45(clk,  reset,  enable&writeReady&index[45],  data, dataOut45);
    dataLine  set46(clk,  reset,  enable&writeReady&index[46],  data, dataOut46);
    dataLine  set47(clk,  reset,  enable&writeReady&index[47],  data, dataOut47);
    dataLine  set48(clk,  reset,  enable&writeReady&index[48],  data, dataOut48);
    dataLine  set49(clk,  reset,  enable&writeReady&index[49],  data, dataOut49);
    dataLine  set50(clk,  reset,  enable&writeReady&index[50],  data, dataOut50);
    dataLine  set51(clk,  reset,  enable&writeReady&index[51],  data, dataOut51);
    dataLine  set52(clk,  reset,  enable&writeReady&index[52],  data, dataOut52);
    dataLine  set53(clk,  reset,  enable&writeReady&index[53],  data, dataOut53);
    dataLine  set54(clk,  reset,  enable&writeReady&index[54],  data, dataOut54);
    dataLine  set55(clk,  reset,  enable&writeReady&index[55],  data, dataOut55);
    dataLine  set56(clk,  reset,  enable&writeReady&index[56],  data, dataOut56);
    dataLine  set57(clk,  reset,  enable&writeReady&index[57],  data, dataOut57);
    dataLine  set58(clk,  reset,  enable&writeReady&index[58],  data, dataOut58);
    dataLine  set59(clk,  reset,  enable&writeReady&index[59],  data, dataOut59);
    dataLine  set60(clk,  reset,  enable&writeReady&index[60],  data, dataOut60);
    dataLine  set61(clk,  reset,  enable&writeReady&index[61],  data, dataOut61);
    dataLine  set62(clk,  reset,  enable&writeReady&index[62],  data, dataOut62);
    dataLine  set63(clk,  reset,  enable&writeReady&index[63],  data, dataOut63);

endmodule

module tagArray(input clk, input reset, input enable, input writeReady, input[63:0] index, input[22:0] tag, 
  output[22:0] tagOut0, tagOut1, tagOut2, tagOut3, tagOut4, tagOut5, tagOut6, tagOut7, tagOut8, tagOut9,
    tagOut10, tagOut11, tagOut12, tagOut13, tagOut14, tagOut15, tagOut16, tagOut17, tagOut18, tagOut19,
    tagOut20, tagOut21, tagOut22, tagOut23, tagOut24, tagOut25, tagOut26, tagOut27, tagOut28, tagOut29,
    tagOut30, tagOut31, tagOut32, tagOut33, tagOut34, tagOut35, tagOut36, tagOut37, tagOut38, tagOut39,
    tagOut40, tagOut41, tagOut42, tagOut43, tagOut44, tagOut45, tagOut46, tagOut47, tagOut48, tagOut49,
    tagOut50, tagOut51, tagOut52, tagOut53, tagOut54, tagOut55, tagOut56, tagOut57, tagOut58, tagOut59,
    tagOut60, tagOut61, tagOut62, tagOut63);
    
    tagLine  set0(clk,  reset,  enable&writeReady&index[0],  tag, tagOut0);
    tagLine  set1(clk,  reset,  enable&writeReady&index[1],  tag, tagOut1);
    tagLine  set2(clk,  reset,  enable&writeReady&index[2],  tag, tagOut2);
    tagLine  set3(clk,  reset,  enable&writeReady&index[3],  tag, tagOut3);
    tagLine  set4(clk,  reset,  enable&writeReady&index[4],  tag, tagOut4);
    tagLine  set5(clk,  reset,  enable&writeReady&index[5],  tag, tagOut5);
    tagLine  set6(clk,  reset,  enable&writeReady&index[6],  tag, tagOut6);
    tagLine  set7(clk,  reset,  enable&writeReady&index[7],  tag, tagOut7);
    tagLine  set8(clk,  reset,  enable&writeReady&index[8],  tag, tagOut8);
    tagLine  set9(clk,  reset,  enable&writeReady&index[9],  tag, tagOut9);
    tagLine  set10(clk,  reset,  enable&writeReady&index[10],  tag, tagOut10);
    tagLine  set11(clk,  reset,  enable&writeReady&index[11],  tag, tagOut11);
    tagLine  set12(clk,  reset,  enable&writeReady&index[12],  tag, tagOut12);
    tagLine  set13(clk,  reset,  enable&writeReady&index[13],  tag, tagOut13);
    tagLine  set14(clk,  reset,  enable&writeReady&index[14],  tag, tagOut14);
    tagLine  set15(clk,  reset,  enable&writeReady&index[15],  tag, tagOut15);
    tagLine  set16(clk,  reset,  enable&writeReady&index[16],  tag, tagOut16);
    tagLine  set17(clk,  reset,  enable&writeReady&index[17],  tag, tagOut17);
    tagLine  set18(clk,  reset,  enable&writeReady&index[18],  tag, tagOut18);
    tagLine  set19(clk,  reset,  enable&writeReady&index[19],  tag, tagOut19);
    tagLine  set20(clk,  reset,  enable&writeReady&index[20],  tag, tagOut20);
    tagLine  set21(clk,  reset,  enable&writeReady&index[21],  tag, tagOut21);
    tagLine  set22(clk,  reset,  enable&writeReady&index[22],  tag, tagOut22);
    tagLine  set23(clk,  reset,  enable&writeReady&index[23],  tag, tagOut23);
    tagLine  set24(clk,  reset,  enable&writeReady&index[24],  tag, tagOut24);
    tagLine  set25(clk,  reset,  enable&writeReady&index[25],  tag, tagOut25);
    tagLine  set26(clk,  reset,  enable&writeReady&index[26],  tag, tagOut26);
    tagLine  set27(clk,  reset,  enable&writeReady&index[27],  tag, tagOut27);
    tagLine  set28(clk,  reset,  enable&writeReady&index[28],  tag, tagOut28);
    tagLine  set29(clk,  reset,  enable&writeReady&index[29],  tag, tagOut29);
    tagLine  set30(clk,  reset,  enable&writeReady&index[30],  tag, tagOut30);
    tagLine  set31(clk,  reset,  enable&writeReady&index[31],  tag, tagOut31);        
    tagLine  set32(clk,  reset,  enable&writeReady&index[32],  tag, tagOut32);
    tagLine  set33(clk,  reset,  enable&writeReady&index[33],  tag, tagOut33);
    tagLine  set34(clk,  reset,  enable&writeReady&index[34],  tag, tagOut34);
    tagLine  set35(clk,  reset,  enable&writeReady&index[35],  tag, tagOut35);
    tagLine  set36(clk,  reset,  enable&writeReady&index[36],  tag, tagOut36);
    tagLine  set37(clk,  reset,  enable&writeReady&index[37],  tag, tagOut37);
    tagLine  set38(clk,  reset,  enable&writeReady&index[38],  tag, tagOut38);
    tagLine  set39(clk,  reset,  enable&writeReady&index[39],  tag, tagOut39);
    tagLine  set40(clk,  reset,  enable&writeReady&index[40],  tag, tagOut40);
    tagLine  set41(clk,  reset,  enable&writeReady&index[41],  tag, tagOut41);
    tagLine  set42(clk,  reset,  enable&writeReady&index[42],  tag, tagOut42);
    tagLine  set43(clk,  reset,  enable&writeReady&index[43],  tag, tagOut43);
    tagLine  set44(clk,  reset,  enable&writeReady&index[44],  tag, tagOut44);
    tagLine  set45(clk,  reset,  enable&writeReady&index[45],  tag, tagOut45);
    tagLine  set46(clk,  reset,  enable&writeReady&index[46],  tag, tagOut46);
    tagLine  set47(clk,  reset,  enable&writeReady&index[47],  tag, tagOut47);
    tagLine  set48(clk,  reset,  enable&writeReady&index[48],  tag, tagOut48);
    tagLine  set49(clk,  reset,  enable&writeReady&index[49],  tag, tagOut49);
    tagLine  set50(clk,  reset,  enable&writeReady&index[50],  tag, tagOut50);
    tagLine  set51(clk,  reset,  enable&writeReady&index[51],  tag, tagOut51);
    tagLine  set52(clk,  reset,  enable&writeReady&index[52],  tag, tagOut52);
    tagLine  set53(clk,  reset,  enable&writeReady&index[53],  tag, tagOut53);
    tagLine  set54(clk,  reset,  enable&writeReady&index[54],  tag, tagOut54);
    tagLine  set55(clk,  reset,  enable&writeReady&index[55],  tag, tagOut55);
    tagLine  set56(clk,  reset,  enable&writeReady&index[56],  tag, tagOut56);
    tagLine  set57(clk,  reset,  enable&writeReady&index[57],  tag, tagOut57);
    tagLine  set58(clk,  reset,  enable&writeReady&index[58],  tag, tagOut58);
    tagLine  set59(clk,  reset,  enable&writeReady&index[59],  tag, tagOut59);
    tagLine  set60(clk,  reset,  enable&writeReady&index[60],  tag, tagOut60);
    tagLine  set61(clk,  reset,  enable&writeReady&index[61],  tag, tagOut61);
    tagLine  set62(clk,  reset,  enable&writeReady&index[62],  tag, tagOut62);
    tagLine  set63(clk,  reset,  enable&writeReady&index[63],  tag, tagOut63);
  
endmodule

module vaildArray(input clk, input reset, input enable, input writeReady, input [63:0] index, input validBit,
  output validOut0, validOut1, validOut2, validOut3, validOut4, validOut5, validOut6, validOut7, validOut8, validOut9,
      validOut10, validOut11, validOut12, validOut13, validOut14, validOut15, validOut16, validOut17, validOut18, validOut19,
      validOut20, validOut21, validOut22, validOut23, validOut24, validOut25, validOut26, validOut27, validOut28, validOut29,
      validOut30, validOut31, validOut32, validOut33, validOut34, validOut35, validOut36, validOut37, validOut38, validOut39,
      validOut40, validOut41, validOut42, validOut43, validOut44, validOut45, validOut46, validOut47, validOut48, validOut49,
      validOut50, validOut51, validOut52, validOut53, validOut54, validOut55, validOut56, validOut57, validOut58, validOut59,
      validOut60, validOut61, validOut62, validOut63);
   
      D_FF dff0(clk,reset, enable&writeReady&index[0], validBit, validOut0);
      D_FF dff1(clk,reset, enable&writeReady&index[1], validBit, validOut1);
      D_FF dff2(clk,reset, enable&writeReady&index[2], validBit, validOut2);
      D_FF dff3(clk,reset, enable&writeReady&index[3], validBit, validOut3);
      D_FF dff4(clk,reset, enable&writeReady&index[4], validBit, validOut4);
      D_FF dff5(clk,reset, enable&writeReady&index[5], validBit, validOut5);
      D_FF dff6(clk,reset, enable&writeReady&index[6], validBit, validOut6);
      D_FF dff7(clk,reset, enable&writeReady&index[7], validBit, validOut7);
      D_FF dff8(clk,reset, enable&writeReady&index[8], validBit, validOut8);
      D_FF dff9(clk,reset, enable&writeReady&index[9], validBit, validOut9);
      D_FF dff10(clk,reset, enable&writeReady&index[10], validBit, validOut10);
      D_FF dff11(clk,reset, enable&writeReady&index[11], validBit, validOut11);
      D_FF dff12(clk,reset, enable&writeReady&index[12], validBit, validOut12);
      D_FF dff13(clk,reset, enable&writeReady&index[13], validBit, validOut13);
      D_FF dff14(clk,reset, enable&writeReady&index[14], validBit, validOut14);
      D_FF dff15(clk,reset, enable&writeReady&index[15], validBit, validOut15);
      D_FF dff16(clk,reset, enable&writeReady&index[16], validBit, validOut16);
      D_FF dff17(clk,reset, enable&writeReady&index[17], validBit, validOut17);
      D_FF dff18(clk,reset, enable&writeReady&index[18], validBit, validOut18);
      D_FF dff19(clk,reset, enable&writeReady&index[19], validBit, validOut19);
      D_FF dff20(clk,reset, enable&writeReady&index[20], validBit, validOut20);
      D_FF dff21(clk,reset, enable&writeReady&index[21], validBit, validOut21);
      D_FF dff22(clk,reset, enable&writeReady&index[22], validBit, validOut22);
      D_FF dff23(clk,reset, enable&writeReady&index[23], validBit, validOut23);
      D_FF dff24(clk,reset, enable&writeReady&index[24], validBit, validOut24);
      D_FF dff25(clk,reset, enable&writeReady&index[25], validBit, validOut25);
      D_FF dff26(clk,reset, enable&writeReady&index[26], validBit, validOut26);
      D_FF dff27(clk,reset, enable&writeReady&index[27], validBit, validOut27);
      D_FF dff28(clk,reset, enable&writeReady&index[28], validBit, validOut28);
      D_FF dff29(clk,reset, enable&writeReady&index[29], validBit, validOut29);
      D_FF dff30(clk,reset, enable&writeReady&index[30], validBit, validOut30);
      D_FF dff31(clk,reset, enable&writeReady&index[31], validBit, validOut31);
      D_FF dff32(clk,reset, enable&writeReady&index[32], validBit, validOut32);
      D_FF dff33(clk,reset, enable&writeReady&index[33], validBit, validOut33);
      D_FF dff34(clk,reset, enable&writeReady&index[34], validBit, validOut34);
      D_FF dff35(clk,reset, enable&writeReady&index[35], validBit, validOut35);
      D_FF dff36(clk,reset, enable&writeReady&index[36], validBit, validOut36);
      D_FF dff37(clk,reset, enable&writeReady&index[37], validBit, validOut37);
      D_FF dff38(clk,reset, enable&writeReady&index[38], validBit, validOut38);
      D_FF dff39(clk,reset, enable&writeReady&index[39], validBit, validOut39);
      D_FF dff40(clk,reset, enable&writeReady&index[40], validBit, validOut40);
      D_FF dff41(clk,reset, enable&writeReady&index[41], validBit, validOut41);
      D_FF dff42(clk,reset, enable&writeReady&index[42], validBit, validOut42);
      D_FF dff43(clk,reset, enable&writeReady&index[43], validBit, validOut43);
      D_FF dff44(clk,reset, enable&writeReady&index[44], validBit, validOut44);
      D_FF dff45(clk,reset, enable&writeReady&index[45], validBit, validOut45);
      D_FF dff46(clk,reset, enable&writeReady&index[46], validBit, validOut46);
      D_FF dff47(clk,reset, enable&writeReady&index[47], validBit, validOut47);
      D_FF dff48(clk,reset, enable&writeReady&index[48], validBit, validOut48);
      D_FF dff49(clk,reset, enable&writeReady&index[49], validBit, validOut49);
      D_FF dff50(clk,reset, enable&writeReady&index[50], validBit, validOut50);
      D_FF dff51(clk,reset, enable&writeReady&index[51], validBit, validOut51);
      D_FF dff52(clk,reset, enable&writeReady&index[52], validBit, validOut52);
      D_FF dff53(clk,reset, enable&writeReady&index[53], validBit, validOut53);
      D_FF dff54(clk,reset, enable&writeReady&index[54], validBit, validOut54);
      D_FF dff55(clk,reset, enable&writeReady&index[55], validBit, validOut55);
      D_FF dff56(clk,reset, enable&writeReady&index[56], validBit, validOut56);
      D_FF dff57(clk,reset, enable&writeReady&index[57], validBit, validOut57);
      D_FF dff58(clk,reset, enable&writeReady&index[58], validBit, validOut58);
      D_FF dff59(clk,reset, enable&writeReady&index[59], validBit, validOut59);
      D_FF dff60(clk,reset, enable&writeReady&index[60], validBit, validOut60);
      D_FF dff61(clk,reset, enable&writeReady&index[61], validBit, validOut61);
      D_FF dff62(clk,reset, enable&writeReady&index[62], validBit, validOut62);
      D_FF dff63(clk,reset, enable&writeReady&index[63], validBit, validOut63);
 endmodule

module fifoArray(input clk, input reset, input enable, input writeReady, input [63:0] index, input fifoBit,
  output fifoOut0, fifoOut1, fifoOut2, fifoOut3, fifoOut4, fifoOut5, fifoOut6, fifoOut7, fifoOut8, fifoOut9,
      fifoOut10, fifoOut11, fifoOut12, fifoOut13, fifoOut14, fifoOut15, fifoOut16, fifoOut17, fifoOut18, fifoOut19,
      fifoOut20, fifoOut21, fifoOut22, fifoOut23, fifoOut24, fifoOut25, fifoOut26, fifoOut27, fifoOut28, fifoOut29,
      fifoOut30, fifoOut31, fifoOut32, fifoOut33, fifoOut34, fifoOut35, fifoOut36, fifoOut37, fifoOut38, fifoOut39,
      fifoOut40, fifoOut41, fifoOut42, fifoOut43, fifoOut44, fifoOut45, fifoOut46, fifoOut47, fifoOut48, fifoOut49,
      fifoOut50, fifoOut51, fifoOut52, fifoOut53, fifoOut54, fifoOut55, fifoOut56, fifoOut57, fifoOut58, fifoOut59,
      fifoOut60, fifoOut61, fifoOut62, fifoOut63);
   
      D_FF dff0(clk,reset, enable&writeReady&index[0], fifoBit, fifoOut0);
      D_FF dff1(clk,reset, enable&writeReady&index[1], fifoBit, fifoOut1);
      D_FF dff2(clk,reset, enable&writeReady&index[2], fifoBit, fifoOut2);
      D_FF dff3(clk,reset, enable&writeReady&index[3], fifoBit, fifoOut3);
      D_FF dff4(clk,reset, enable&writeReady&index[4], fifoBit, fifoOut4);
      D_FF dff5(clk,reset, enable&writeReady&index[5], fifoBit, fifoOut5);
      D_FF dff6(clk,reset, enable&writeReady&index[6], fifoBit, fifoOut6);
      D_FF dff7(clk,reset, enable&writeReady&index[7], fifoBit, fifoOut7);
      D_FF dff8(clk,reset, enable&writeReady&index[8], fifoBit, fifoOut8);
      D_FF dff9(clk,reset, enable&writeReady&index[9], fifoBit, fifoOut9);
      D_FF dff10(clk,reset, enable&writeReady&index[10], fifoBit, fifoOut10);
      D_FF dff11(clk,reset, enable&writeReady&index[11], fifoBit, fifoOut11);
      D_FF dff12(clk,reset, enable&writeReady&index[12], fifoBit, fifoOut12);
      D_FF dff13(clk,reset, enable&writeReady&index[13], fifoBit, fifoOut13);
      D_FF dff14(clk,reset, enable&writeReady&index[14], fifoBit, fifoOut14);
      D_FF dff15(clk,reset, enable&writeReady&index[15], fifoBit, fifoOut15);
      D_FF dff16(clk,reset, enable&writeReady&index[16], fifoBit, fifoOut16);
      D_FF dff17(clk,reset, enable&writeReady&index[17], fifoBit, fifoOut17);
      D_FF dff18(clk,reset, enable&writeReady&index[18], fifoBit, fifoOut18);
      D_FF dff19(clk,reset, enable&writeReady&index[19], fifoBit, fifoOut19);
      D_FF dff20(clk,reset, enable&writeReady&index[20], fifoBit, fifoOut20);
      D_FF dff21(clk,reset, enable&writeReady&index[21], fifoBit, fifoOut21);
      D_FF dff22(clk,reset, enable&writeReady&index[22], fifoBit, fifoOut22);
      D_FF dff23(clk,reset, enable&writeReady&index[23], fifoBit, fifoOut23);
      D_FF dff24(clk,reset, enable&writeReady&index[24], fifoBit, fifoOut24);
      D_FF dff25(clk,reset, enable&writeReady&index[25], fifoBit, fifoOut25);
      D_FF dff26(clk,reset, enable&writeReady&index[26], fifoBit, fifoOut26);
      D_FF dff27(clk,reset, enable&writeReady&index[27], fifoBit, fifoOut27);
      D_FF dff28(clk,reset, enable&writeReady&index[28], fifoBit, fifoOut28);
      D_FF dff29(clk,reset, enable&writeReady&index[29], fifoBit, fifoOut29);
      D_FF dff30(clk,reset, enable&writeReady&index[30], fifoBit, fifoOut30);
      D_FF dff31(clk,reset, enable&writeReady&index[31], fifoBit, fifoOut31);
      D_FF dff32(clk,reset, enable&writeReady&index[32], fifoBit, fifoOut32);
      D_FF dff33(clk,reset, enable&writeReady&index[33], fifoBit, fifoOut33);
      D_FF dff34(clk,reset, enable&writeReady&index[34], fifoBit, fifoOut34);
      D_FF dff35(clk,reset, enable&writeReady&index[35], fifoBit, fifoOut35);
      D_FF dff36(clk,reset, enable&writeReady&index[36], fifoBit, fifoOut36);
      D_FF dff37(clk,reset, enable&writeReady&index[37], fifoBit, fifoOut37);
      D_FF dff38(clk,reset, enable&writeReady&index[38], fifoBit, fifoOut38);
      D_FF dff39(clk,reset, enable&writeReady&index[39], fifoBit, fifoOut39);
      D_FF dff40(clk,reset, enable&writeReady&index[40], fifoBit, fifoOut40);
      D_FF dff41(clk,reset, enable&writeReady&index[41], fifoBit, fifoOut41);
      D_FF dff42(clk,reset, enable&writeReady&index[42], fifoBit, fifoOut42);
      D_FF dff43(clk,reset, enable&writeReady&index[43], fifoBit, fifoOut43);
      D_FF dff44(clk,reset, enable&writeReady&index[44], fifoBit, fifoOut44);
      D_FF dff45(clk,reset, enable&writeReady&index[45], fifoBit, fifoOut45);
      D_FF dff46(clk,reset, enable&writeReady&index[46], fifoBit, fifoOut46);
      D_FF dff47(clk,reset, enable&writeReady&index[47], fifoBit, fifoOut47);
      D_FF dff48(clk,reset, enable&writeReady&index[48], fifoBit, fifoOut48);
      D_FF dff49(clk,reset, enable&writeReady&index[49], fifoBit, fifoOut49);
      D_FF dff50(clk,reset, enable&writeReady&index[50], fifoBit, fifoOut50);
      D_FF dff51(clk,reset, enable&writeReady&index[51], fifoBit, fifoOut51);
      D_FF dff52(clk,reset, enable&writeReady&index[52], fifoBit, fifoOut52);
      D_FF dff53(clk,reset, enable&writeReady&index[53], fifoBit, fifoOut53);
      D_FF dff54(clk,reset, enable&writeReady&index[54], fifoBit, fifoOut54);
      D_FF dff55(clk,reset, enable&writeReady&index[55], fifoBit, fifoOut55);
      D_FF dff56(clk,reset, enable&writeReady&index[56], fifoBit, fifoOut56);
      D_FF dff57(clk,reset, enable&writeReady&index[57], fifoBit, fifoOut57);
      D_FF dff58(clk,reset, enable&writeReady&index[58], fifoBit, fifoOut58);
      D_FF dff59(clk,reset, enable&writeReady&index[59], fifoBit, fifoOut59);
      D_FF dff60(clk,reset, enable&writeReady&index[60], fifoBit, fifoOut60);
      D_FF dff61(clk,reset, enable&writeReady&index[61], fifoBit, fifoOut61);
      D_FF dff62(clk,reset, enable&writeReady&index[62], fifoBit, fifoOut62);
      D_FF dff63(clk,reset, enable&writeReady&index[63], fifoBit, fifoOut63);
 endmodule
 
 module wayArray(input clk, input reset, input enable, input writeReady, input [63:0] index, input wayBit,
  output wayOut0, wayOut1, wayOut2, wayOut3, wayOut4, wayOut5, wayOut6, wayOut7, wayOut8, wayOut9,
      wayOut10, wayOut11, wayOut12, wayOut13, wayOut14, wayOut15, wayOut16, wayOut17, wayOut18, wayOut19,
      wayOut20, wayOut21, wayOut22, wayOut23, wayOut24, wayOut25, wayOut26, wayOut27, wayOut28, wayOut29,
      wayOut30, wayOut31, wayOut32, wayOut33, wayOut34, wayOut35, wayOut36, wayOut37, wayOut38, wayOut39,
      wayOut40, wayOut41, wayOut42, wayOut43, wayOut44, wayOut45, wayOut46, wayOut47, wayOut48, wayOut49,
      wayOut50, wayOut51, wayOut52, wayOut53, wayOut54, wayOut55, wayOut56, wayOut57, wayOut58, wayOut59,
      wayOut60, wayOut61, wayOut62, wayOut63);
   
      D_FF dff0(clk,reset, enable&writeReady&index[0], wayBit, wayOut0);
      D_FF dff1(clk,reset, enable&writeReady&index[1], wayBit, wayOut1);
      D_FF dff2(clk,reset, enable&writeReady&index[2], wayBit, wayOut2);
      D_FF dff3(clk,reset, enable&writeReady&index[3], wayBit, wayOut3);
      D_FF dff4(clk,reset, enable&writeReady&index[4], wayBit, wayOut4);
      D_FF dff5(clk,reset, enable&writeReady&index[5], wayBit, wayOut5);
      D_FF dff6(clk,reset, enable&writeReady&index[6], wayBit, wayOut6);
      D_FF dff7(clk,reset, enable&writeReady&index[7], wayBit, wayOut7);
      D_FF dff8(clk,reset, enable&writeReady&index[8], wayBit, wayOut8);
      D_FF dff9(clk,reset, enable&writeReady&index[9], wayBit, wayOut9);
      D_FF dff10(clk,reset, enable&writeReady&index[10], wayBit, wayOut10);
      D_FF dff11(clk,reset, enable&writeReady&index[11], wayBit, wayOut11);
      D_FF dff12(clk,reset, enable&writeReady&index[12], wayBit, wayOut12);
      D_FF dff13(clk,reset, enable&writeReady&index[13], wayBit, wayOut13);
      D_FF dff14(clk,reset, enable&writeReady&index[14], wayBit, wayOut14);
      D_FF dff15(clk,reset, enable&writeReady&index[15], wayBit, wayOut15);
      D_FF dff16(clk,reset, enable&writeReady&index[16], wayBit, wayOut16);
      D_FF dff17(clk,reset, enable&writeReady&index[17], wayBit, wayOut17);
      D_FF dff18(clk,reset, enable&writeReady&index[18], wayBit, wayOut18);
      D_FF dff19(clk,reset, enable&writeReady&index[19], wayBit, wayOut19);
      D_FF dff20(clk,reset, enable&writeReady&index[20], wayBit, wayOut20);
      D_FF dff21(clk,reset, enable&writeReady&index[21], wayBit, wayOut21);
      D_FF dff22(clk,reset, enable&writeReady&index[22], wayBit, wayOut22);
      D_FF dff23(clk,reset, enable&writeReady&index[23], wayBit, wayOut23);
      D_FF dff24(clk,reset, enable&writeReady&index[24], wayBit, wayOut24);
      D_FF dff25(clk,reset, enable&writeReady&index[25], wayBit, wayOut25);
      D_FF dff26(clk,reset, enable&writeReady&index[26], wayBit, wayOut26);
      D_FF dff27(clk,reset, enable&writeReady&index[27], wayBit, wayOut27);
      D_FF dff28(clk,reset, enable&writeReady&index[28], wayBit, wayOut28);
      D_FF dff29(clk,reset, enable&writeReady&index[29], wayBit, wayOut29);
      D_FF dff30(clk,reset, enable&writeReady&index[30], wayBit, wayOut30);
      D_FF dff31(clk,reset, enable&writeReady&index[31], wayBit, wayOut31);
      D_FF dff32(clk,reset, enable&writeReady&index[32], wayBit, wayOut32);
      D_FF dff33(clk,reset, enable&writeReady&index[33], wayBit, wayOut33);
      D_FF dff34(clk,reset, enable&writeReady&index[34], wayBit, wayOut34);
      D_FF dff35(clk,reset, enable&writeReady&index[35], wayBit, wayOut35);
      D_FF dff36(clk,reset, enable&writeReady&index[36], wayBit, wayOut36);
      D_FF dff37(clk,reset, enable&writeReady&index[37], wayBit, wayOut37);
      D_FF dff38(clk,reset, enable&writeReady&index[38], wayBit, wayOut38);
      D_FF dff39(clk,reset, enable&writeReady&index[39], wayBit, wayOut39);
      D_FF dff40(clk,reset, enable&writeReady&index[40], wayBit, wayOut40);
      D_FF dff41(clk,reset, enable&writeReady&index[41], wayBit, wayOut41);
      D_FF dff42(clk,reset, enable&writeReady&index[42], wayBit, wayOut42);
      D_FF dff43(clk,reset, enable&writeReady&index[43], wayBit, wayOut43);
      D_FF dff44(clk,reset, enable&writeReady&index[44], wayBit, wayOut44);
      D_FF dff45(clk,reset, enable&writeReady&index[45], wayBit, wayOut45);
      D_FF dff46(clk,reset, enable&writeReady&index[46], wayBit, wayOut46);
      D_FF dff47(clk,reset, enable&writeReady&index[47], wayBit, wayOut47);
      D_FF dff48(clk,reset, enable&writeReady&index[48], wayBit, wayOut48);
      D_FF dff49(clk,reset, enable&writeReady&index[49], wayBit, wayOut49);
      D_FF dff50(clk,reset, enable&writeReady&index[50], wayBit, wayOut50);
      D_FF dff51(clk,reset, enable&writeReady&index[51], wayBit, wayOut51);
      D_FF dff52(clk,reset, enable&writeReady&index[52], wayBit, wayOut52);
      D_FF dff53(clk,reset, enable&writeReady&index[53], wayBit, wayOut53);
      D_FF dff54(clk,reset, enable&writeReady&index[54], wayBit, wayOut54);
      D_FF dff55(clk,reset, enable&writeReady&index[55], wayBit, wayOut55);
      D_FF dff56(clk,reset, enable&writeReady&index[56], wayBit, wayOut56);
      D_FF dff57(clk,reset, enable&writeReady&index[57], wayBit, wayOut57);
      D_FF dff58(clk,reset, enable&writeReady&index[58], wayBit, wayOut58);
      D_FF dff59(clk,reset, enable&writeReady&index[59], wayBit, wayOut59);
      D_FF dff60(clk,reset, enable&writeReady&index[60], wayBit, wayOut60);
      D_FF dff61(clk,reset, enable&writeReady&index[61], wayBit, wayOut61);
      D_FF dff62(clk,reset, enable&writeReady&index[62], wayBit, wayOut62);
      D_FF dff63(clk,reset, enable&writeReady&index[63], wayBit, wayOut63);
 endmodule
