 module controlCircuit(input clk, input reset, input[31:0] instruction, input[63:0] dataLine, input[63:0] dataWay1, dataWay2,
  input[22:0] tagWay1, tagWay2, input validWay1, validWay2, wayPredict, input reg fifoWay, 
  output reg writeReady, fifoWayOut, wayPredictOut, validWayOut, 
  output reg[63:0] dataWayOut, output reg[22:0] tagWayOut, output[7:0] dataOut);
    
    reg[1:0] state;
    reg predictionHit, cacheHit, cacheUpdate;
    reg[63:0] dataTemp;
    reg[22:0] tagTemp;
    reg validTemp, wayTemp, fifoTemp;
    reg muxEnable;
    mux8to1_8b dataSelectMux(muxEnable, dataTemp[7:0], dataTemp[15:8], dataTemp[23:16], dataTemp[31:24], dataTemp[39:32], dataTemp[47:40],
      dataTemp[55:48], dataTemp[63:56], instruction[2:0], dataOut);

  always @ (posedge clk) begin
	if(reset == 1'b1) begin
		state = 2'b00;
		muxEnable = 1'b0;
		writeReady = 1'b0;
		fifoTemp = fifoWay;
		wayTemp = wayPredict;
	end
	else begin
		case(state)
			
		2'b00:begin
		  muxEnable = 1'b0;
			writeReady = 1'b0;
			fifoTemp = fifoWay;
			wayTemp = wayPredict;
			if(wayPredict == 1'b0) begin
				if (tagWay1 == instruction[31:9] && validWay1 == 1'b1) begin
					predictionHit = 1;
				end
				else begin
					predictionHit = 0;
				end
				validTemp = validWay1;
				tagTemp = tagWay1;
				dataTemp = dataWay1;
			end
			else begin
				if (tagWay2 == instruction[31:9] && validWay2 == 1'b1) begin
					predictionHit = 1;
				end
				else begin
					predictionHit = 0;
				end
				validTemp = validWay2;
				tagTemp = tagWay2;
				dataTemp = dataWay2;
			end

			if(predictionHit == 1'b0) begin
				state = 2'b01;
			end
			else begin
			  writeReady = 1'b1;
			  muxEnable = 1'b1;
			  writeReady = 1'b1;
			  muxEnable = 1'b1;
			  validWayOut = validTemp;
        wayPredictOut = wayTemp;
			  fifoWayOut = fifoTemp;
			  dataWayOut = dataTemp;
			  tagWayOut = tagTemp;
				state = 2'b11;		
			end
		end
		
		2'b01:begin
		  muxEnable = 1'b0;
			writeReady = 1'b0;
			fifoTemp = fifoWay;
			wayTemp = wayPredict;
			if(wayPredict == 1'b0) begin
				if (tagWay2 == instruction[31:9] && validWay2 == 1'b1) begin cacheHit = 1; end
				else begin cacheHit = 0; end
				validTemp = validWay2;
				tagTemp = tagWay2;
				dataTemp = dataWay2;
			end
			else begin
				if (tagWay1 == instruction[31:9] && validWay2 == 1'b1) begin  cacheHit = 1; end
				else begin cacheHit = 0; end
				validTemp = validWay1;
				tagTemp = tagWay1;
				dataTemp = dataWay1;
			end    
			wayPredictOut = ~wayPredict;  
			if(cacheHit == 1'b0) begin
				state = 2'b10;
			end
			else begin
			  writeReady = 1'b1;
			  muxEnable = 1'b1;
			  validWayOut = validTemp;
        wayPredictOut = wayTemp;
			  fifoWayOut = fifoTemp;
			  dataWayOut = dataTemp;
			  tagWayOut = tagTemp;
				state = 2'b11;
			end
		end
	             //cache miss state: dataTemp = dataLine. dataline is input to this module
		2'b10:begin
		  muxEnable = 1'b1;
			writeReady = 1'b1;
			validWayOut = 1'b1;
			wayPredictOut = fifoWay;
			fifoWayOut = ~fifoWay;
			dataWayOut = dataLine;
			tagWayOut = instruction[31:9];
			state = 2'b11;
		end
	             
	             //write state: make muxEnable 1. dataTemp is written to dataOut.
		2'b11:begin
			writeReady = 1'b0;
			muxEnable = 1'b0;
			state = 2'b00;
		end
		endcase
		end  
	end
 endmodule
 
module topModule(input clk, input reset, input[31:0] instruction, input[63:0] dataLine, output[7:0] dataOut, output writeReady);
  
  wire[87:0] line1_0, line1_1, line1_2, line1_3, line1_4, line1_5, line1_6, line1_7, line1_8, line1_9,
              line1_10, line1_11, line1_12, line1_13, line1_14, line1_15, line1_16, line1_17, line1_18, line1_19,
              line1_20, line1_21, line1_22, line1_23, line1_24, line1_25, line1_26, line1_27, line1_28, line1_29,
              line1_30, line1_31, line1_32, line1_33, line1_34, line1_35, line1_36, line1_37, line1_38, line1_39,
              line1_40, line1_41, line1_42, line1_43, line1_44, line1_45, line1_46, line1_47, line1_48, line1_49,
              line1_50, line1_51, line1_52, line1_53, line1_54, line1_55, line1_56, line1_57, line1_58, line1_59,
              line1_60, line1_61, line1_62, line1_63;
              
  wire[87:0] line2_0, line2_1, line2_2, line2_3, line2_4, line2_5, line2_6, line2_7, line2_8, line2_9,
              line2_10, line2_11, line2_12, line2_13, line2_14, line2_15, line2_16, line2_17, line2_18, line2_19,
              line2_20, line2_21, line2_22, line2_23, line2_24, line2_25, line2_26, line2_27, line2_28, line2_29,
              line2_30, line2_31, line2_32, line2_33, line2_34, line2_35, line2_36, line2_37, line2_38, line2_39,
              line2_40, line2_41, line2_42, line2_43, line2_44, line2_45, line2_46, line2_47, line2_48, line2_49,
              line2_50, line2_51, line2_52, line2_53, line2_54, line2_55, line2_56, line2_57, line2_58, line2_59,
              line2_60, line2_61, line2_62, line2_63;
              
  wire[63:0] wayOut, fifoOut;
  
  //take these values from 6:64 decoder        
  wire[63:0] wayWrite, fifoWrite, way1, way2;
  
  decoder6to64 wayWriteDec(instruction[8:3], wayWrite);
  decoder6to64 fifoWriteDec(instruction[8:3], fifoWrite);
  decoder6to64 way1Dec(instruction[8:3], way1);
  decoder6to64 way2Dec(instruction[8:3], way2);
  
  
  //the write values to arrays. Values set in always@ block after ctrl circuit makes writeReady signal 1.
  reg[63:0] data1, data2;
  reg[22:0] tag1, tag2;
  reg valid1, valid2, wayBit, fifoBit;
              
  wire[63:0] selectDataLine1, selectDataLine2;
  wire[22:0] selectTagLine1, selectTagLine2;
  wire selectValidLine1, selectValidLine2;
  wire selectWayLine, selectFifoLine;
  wire fifoWayOut, wayPredictOut, validWayOut;
  wire[63:0] dataWayOut;
  wire[22:0] tagWayOut;
              
   //===========================================Module Instantiation=========================================================
   //way1, way2, wayOut, fifoOut come from decoder.
  dataArray dataArr1(clk, reset, ~fifoWayOut, writeReady, way1, dataWayOut, 
                line1_0[63:0], line1_1[63:0], line1_2[63:0], line1_3[63:0], line1_4[63:0], line1_5[63:0], line1_6[63:0], line1_7[63:0], line1_8[63:0], line1_9[63:0],
                line1_10[63:0], line1_11[63:0], line1_12[63:0], line1_13[63:0], line1_14[63:0], line1_15[63:0], line1_16[63:0], line1_17[63:0], line1_18[63:0], line1_19[63:0],
                line1_20[63:0], line1_21[63:0], line1_22[63:0], line1_23[63:0], line1_24[63:0], line1_25[63:0], line1_26[63:0], line1_27[63:0], line1_28[63:0], line1_29[63:0],
                line1_30[63:0], line1_31[63:0], line1_32[63:0], line1_33[63:0], line1_34[63:0], line1_35[63:0], line1_36[63:0], line1_37[63:0], line1_38[63:0], line1_39[63:0],
                line1_40[63:0], line1_41[63:0], line1_42[63:0], line1_43[63:0], line1_44[63:0], line1_45[63:0], line1_46[63:0], line1_47[63:0], line1_48[63:0], line1_49[63:0],
                line1_50[63:0], line1_51[63:0], line1_52[63:0], line1_53[63:0], line1_54[63:0], line1_55[63:0], line1_56[63:0], line1_57[63:0], line1_58[63:0], line1_59[63:0],
                line1_60[63:0], line1_61[63:0], line1_62[63:0], line1_63[63:0]);
                
  dataArray dataArr2(clk, reset, fifoWayOut, writeReady, way2, dataWayOut, 
                line2_0[63:0], line2_1[63:0], line2_2[63:0], line2_3[63:0], line2_4[63:0], line2_5[63:0], line2_6[63:0], line2_7[63:0], line2_8[63:0], line2_9[63:0],
                line2_10[63:0], line2_11[63:0], line2_12[63:0], line2_13[63:0], line2_14[63:0], line2_15[63:0], line2_16[63:0], line2_17[63:0], line2_18[63:0], line2_19[63:0],
                line2_20[63:0], line2_21[63:0], line2_22[63:0], line2_23[63:0], line2_24[63:0], line2_25[63:0], line2_26[63:0], line2_27[63:0], line2_28[63:0], line2_29[63:0],
                line2_30[63:0], line2_31[63:0], line2_32[63:0], line2_33[63:0], line2_34[63:0], line2_35[63:0], line2_36[63:0], line2_37[63:0], line2_38[63:0], line2_39[63:0],
                line2_40[63:0], line2_41[63:0], line2_42[63:0], line2_43[63:0], line2_44[63:0], line2_45[63:0], line2_46[63:0], line2_47[63:0], line2_48[63:0], line2_49[63:0],
                line2_50[63:0], line2_51[63:0], line2_52[63:0], line2_53[63:0], line2_54[63:0], line2_55[63:0], line2_56[63:0], line2_57[63:0], line2_58[63:0], line2_59[63:0],
                line2_60[63:0], line2_61[63:0], line2_62[63:0], line2_63[63:0]);
                
  tagArray tagArr1(clk, reset, ~fifoWayOut, writeReady, way1, tagWayOut, 
                line1_0[86:64], line1_1[86:64], line1_2[86:64], line1_3[86:64], line1_4[86:64], line1_5[86:64], line1_6[86:64], line1_7[86:64], line1_8[86:64], line1_9[86:64],
                line1_10[86:64], line1_11[86:64], line1_12[86:64], line1_13[86:64], line1_14[86:64], line1_15[86:64], line1_16[86:64], line1_17[86:64], line1_18[86:64], line1_19[86:64],
                line1_20[86:64], line1_21[86:64], line1_22[86:64], line1_23[86:64], line1_24[86:64], line1_25[86:64], line1_26[86:64], line1_27[86:64], line1_28[86:64], line1_29[86:64],
                line1_30[86:64], line1_31[86:64], line1_32[86:64], line1_33[86:64], line1_34[86:64], line1_35[86:64], line1_36[86:64], line1_37[86:64], line1_38[86:64], line1_39[86:64],
                line1_40[86:64], line1_41[86:64], line1_42[86:64], line1_43[86:64], line1_44[86:64], line1_45[86:64], line1_46[86:64], line1_47[86:64], line1_48[86:64], line1_49[86:64],
                line1_50[86:64], line1_51[86:64], line1_52[86:64], line1_53[86:64], line1_54[86:64], line1_55[86:64], line1_56[86:64], line1_57[86:64], line1_58[86:64], line1_59[86:64],
                line1_60[86:64], line1_61[86:64], line1_62[86:64], line1_63[86:64]);
                
  tagArray tagArr2(clk, reset, fifoWayOut, writeReady, way2, tagWayOut, 
                line2_0[86:64], line2_1[86:64], line2_2[86:64], line2_3[86:64], line2_4[86:64], line2_5[86:64], line2_6[86:64], line2_7[86:64], line2_8[86:64], line2_9[86:64],
                line2_10[86:64], line2_11[86:64], line2_12[86:64], line2_13[86:64], line2_14[86:64], line2_15[86:64], line2_16[86:64], line2_17[86:64], line2_18[86:64], line2_19[86:64],
                line2_20[86:64], line2_21[86:64], line2_22[86:64], line2_23[86:64], line2_24[86:64], line2_25[86:64], line2_26[86:64], line2_27[86:64], line2_28[86:64], line2_29[86:64],
                line2_30[86:64], line2_31[86:64], line2_32[86:64], line2_33[86:64], line2_34[86:64], line2_35[86:64], line2_36[86:64], line2_37[86:64], line2_38[86:64], line2_39[86:64],
                line2_40[86:64], line2_41[86:64], line2_42[86:64], line2_43[86:64], line2_44[86:64], line2_45[86:64], line2_46[86:64], line2_47[86:64], line2_48[86:64], line2_49[86:64],
                line2_50[86:64], line2_51[86:64], line2_52[86:64], line2_53[86:64], line2_54[86:64], line2_55[86:64], line2_56[86:64], line2_57[86:64], line2_58[86:64], line2_59[86:64],
                line2_60[86:64], line2_61[86:64], line2_62[86:64], line2_63[86:64]);
                
  vaildArray validArr1(clk, reset, ~fifoWayOut, writeReady, way1, validWayOut, 
                line1_0[87], line1_1[87], line1_2[87], line1_3[87], line1_4[87], line1_5[87], line1_6[87], line1_7[87], line1_8[87], line1_9[87],
                line1_10[87], line1_11[87], line1_12[87], line1_13[87], line1_14[87], line1_15[87], line1_16[87], line1_17[87], line1_18[87], line1_19[87],
                line1_20[87], line1_21[87], line1_22[87], line1_23[87], line1_24[87], line1_25[87], line1_26[87], line1_27[87], line1_28[87], line1_29[87],
                line1_30[87], line1_31[87], line1_32[87], line1_33[87], line1_34[87], line1_35[87], line1_36[87], line1_37[87], line1_38[87], line1_39[87],
                line1_40[87], line1_41[87], line1_42[87], line1_43[87], line1_44[87], line1_45[87], line1_46[87], line1_47[87], line1_48[87], line1_49[87],
                line1_50[87], line1_51[87], line1_52[87], line1_53[87], line1_54[87], line1_55[87], line1_56[87], line1_57[87], line1_58[87], line1_59[87],
                line1_60[87], line1_61[87], line1_62[87], line1_63[87]);
                
  vaildArray validArr2(clk, reset, fifoWayOut, writeReady, way2, validWayOut, 
                line2_0[87], line2_1[87], line2_2[87], line2_3[87], line2_4[87], line2_5[87], line2_6[87], line2_7[87], line2_8[87], line2_9[87],
                line2_10[87], line2_11[87], line2_12[87], line2_13[87], line2_14[87], line2_15[87], line2_16[87], line2_17[87], line2_18[87], line2_19[87],
                line2_20[87], line2_21[87], line2_22[87], line2_23[87], line2_24[87], line2_25[87], line2_26[87], line2_27[87], line2_28[87], line2_29[87],
                line2_30[87], line2_31[87], line2_32[87], line2_33[87], line2_34[87], line2_35[87], line2_36[87], line2_37[87], line2_38[87], line2_39[87],
                line2_40[87], line2_41[87], line2_42[87], line2_43[87], line2_44[87], line2_45[87], line2_46[87], line2_47[87], line2_48[87], line2_49[87],
                line2_50[87], line2_51[87], line2_52[87], line2_53[87], line2_54[87], line2_55[87], line2_56[87], line2_57[87], line2_58[87], line2_59[87],
                line2_60[87], line2_61[87], line2_62[87], line2_63[87]);
                
  wayArray wayArr(clk, reset, 1'b1, writeReady, wayWrite, wayPredictOut,
      wayOut[0], wayOut[1], wayOut[2], wayOut[3], wayOut[4], wayOut[5], wayOut[6], wayOut[7], wayOut[8], wayOut[9],
      wayOut[10], wayOut[11], wayOut[12], wayOut[13], wayOut[14], wayOut[15], wayOut[16], wayOut[17], wayOut[18], wayOut[19],
      wayOut[20], wayOut[21], wayOut[22], wayOut[23], wayOut[24], wayOut[25], wayOut[26], wayOut[27], wayOut[28], wayOut[29],
      wayOut[30], wayOut[31], wayOut[32], wayOut[33], wayOut[34], wayOut[35], wayOut[36], wayOut[37], wayOut[38], wayOut[39],
      wayOut[40], wayOut[41], wayOut[42], wayOut[43], wayOut[44], wayOut[45], wayOut[46], wayOut[47], wayOut[48], wayOut[49],
      wayOut[50], wayOut[51], wayOut[52], wayOut[53], wayOut[54], wayOut[55], wayOut[56], wayOut[57], wayOut[58], wayOut[59],
      wayOut[60], wayOut[61], wayOut[62], wayOut[63]);
                
  
  fifoArray fifoArr(clk, reset, 1'b1, writeReady, fifoWrite, fifoWayOut,
      fifoOut[0], fifoOut[1], fifoOut[2], fifoOut[3], fifoOut[4], fifoOut[5], fifoOut[6], fifoOut[7], fifoOut[8], fifoOut[9],
      fifoOut[10], fifoOut[11], fifoOut[12], fifoOut[13], fifoOut[14], fifoOut[15], fifoOut[16], fifoOut[17], fifoOut[18], fifoOut[19],
      fifoOut[20], fifoOut[21], fifoOut[22], fifoOut[23], fifoOut[24], fifoOut[25], fifoOut[26], fifoOut[27], fifoOut[28], fifoOut[29],
      fifoOut[30], fifoOut[31], fifoOut[32], fifoOut[33], fifoOut[34], fifoOut[35], fifoOut[36], fifoOut[37], fifoOut[38], fifoOut[39],
      fifoOut[40], fifoOut[41], fifoOut[42], fifoOut[43], fifoOut[44], fifoOut[45], fifoOut[46], fifoOut[47], fifoOut[48], fifoOut[49],
      fifoOut[50], fifoOut[51], fifoOut[52], fifoOut[53], fifoOut[54], fifoOut[55], fifoOut[56], fifoOut[57], fifoOut[58], fifoOut[59],
      fifoOut[60], fifoOut[61], fifoOut[62], fifoOut[63]);             
              
              
  //===========================================Line Selection=========================================================
  mux64to1_64b dataMux1(1'b1, line1_0[63:0], line1_1[63:0], line1_2[63:0], line1_3[63:0], line1_4[63:0], line1_5[63:0], line1_6[63:0], line1_7[63:0], line1_8[63:0], line1_9[63:0],
                line1_10[63:0], line1_11[63:0], line1_12[63:0], line1_13[63:0], line1_14[63:0], line1_15[63:0], line1_16[63:0], line1_17[63:0], line1_18[63:0], line1_19[63:0],
                line1_20[63:0], line1_21[63:0], line1_22[63:0], line1_23[63:0], line1_24[63:0], line1_25[63:0], line1_26[63:0], line1_27[63:0], line1_28[63:0], line1_29[63:0],
                line1_30[63:0], line1_31[63:0], line1_32[63:0], line1_33[63:0], line1_34[63:0], line1_35[63:0], line1_36[63:0], line1_37[63:0], line1_38[63:0], line1_39[63:0],
                line1_40[63:0], line1_41[63:0], line1_42[63:0], line1_43[63:0], line1_44[63:0], line1_45[63:0], line1_46[63:0], line1_47[63:0], line1_48[63:0], line1_49[63:0],
                line1_50[63:0], line1_51[63:0], line1_52[63:0], line1_53[63:0], line1_54[63:0], line1_55[63:0], line1_56[63:0], line1_57[63:0], line1_58[63:0], line1_59[63:0],
                line1_60[63:0], line1_61[63:0], line1_62[63:0], line1_63[63:0],
                instruction[8:3], selectDataLine1);
    
  mux64to1_23b tagMux1(1'b1, line1_0[86:64], line1_1[86:64], line1_2[86:64], line1_3[86:64], line1_4[86:64], line1_5[86:64], line1_6[86:64], line1_7[86:64], line1_8[86:64], line1_9[86:64],
                line1_10[86:64], line1_11[86:64], line1_12[86:64], line1_13[86:64], line1_14[86:64], line1_15[86:64], line1_16[86:64], line1_17[86:64], line1_18[86:64], line1_19[86:64],
                line1_20[86:64], line1_21[86:64], line1_22[86:64], line1_23[86:64], line1_24[86:64], line1_25[86:64], line1_26[86:64], line1_27[86:64], line1_28[86:64], line1_29[86:64],
                line1_30[86:64], line1_31[86:64], line1_32[86:64], line1_33[86:64], line1_34[86:64], line1_35[86:64], line1_36[86:64], line1_37[86:64], line1_38[86:64], line1_39[86:64],
                line1_40[86:64], line1_41[86:64], line1_42[86:64], line1_43[86:64], line1_44[86:64], line1_45[86:64], line1_46[86:64], line1_47[86:64], line1_48[86:64], line1_49[86:64],
                line1_50[86:64], line1_51[86:64], line1_52[86:64], line1_53[86:64], line1_54[86:64], line1_55[86:64], line1_56[86:64], line1_57[86:64], line1_58[86:64], line1_59[86:64],
                line1_60[86:64], line1_61[86:64], line1_62[86:64], line1_63[86:64],
                instruction[8:3], selectTagLine1);
    
  mux64to1_1b validMux1(1'b1, line1_0[86], line1_1[86], line1_2[86], line1_3[86], line1_4[86], line1_5[86], line1_6[86], line1_7[86], line1_8[86], line1_9[86],
                line1_10[86], line1_11[86], line1_12[86], line1_13[86], line1_14[86], line1_15[86], line1_16[86], line1_17[86], line1_18[86], line1_19[86],
                line1_20[86], line1_21[86], line1_22[86], line1_23[86], line1_24[86], line1_25[86], line1_26[86], line1_27[86], line1_28[86], line1_29[86],
                line1_30[86], line1_31[86], line1_32[86], line1_33[86], line1_34[86], line1_35[86], line1_36[86], line1_37[86], line1_38[86], line1_39[86],
                line1_40[86], line1_41[86], line1_42[86], line1_43[86], line1_44[86], line1_45[86], line1_46[86], line1_47[86], line1_48[86], line1_49[86],
                line1_50[86], line1_51[86], line1_52[86], line1_53[86], line1_54[86], line1_55[86], line1_56[86], line1_57[86], line1_58[86], line1_59[86],
                line1_60[86], line1_61[86], line1_62[86], line1_63[86],
                instruction[8:3],selectValidLine1);
                
  mux64to1_64b dataMux2(1'b1, line2_0[63:0], line2_1[63:0], line2_2[63:0], line2_3[63:0], line2_4[63:0], line2_5[63:0], line2_6[63:0], line2_7[63:0], line2_8[63:0], line2_9[63:0],
                line2_10[63:0], line2_11[63:0], line2_12[63:0], line2_13[63:0], line2_14[63:0], line2_15[63:0], line2_16[63:0], line2_17[63:0], line2_18[63:0], line2_19[63:0],
                line2_20[63:0], line2_21[63:0], line2_22[63:0], line2_23[63:0], line2_24[63:0], line2_25[63:0], line2_26[63:0], line2_27[63:0], line2_28[63:0], line2_29[63:0],
                line2_30[63:0], line2_31[63:0], line2_32[63:0], line2_33[63:0], line2_34[63:0], line2_35[63:0], line2_36[63:0], line2_37[63:0], line2_38[63:0], line2_39[63:0],
                line2_40[63:0], line2_41[63:0], line2_42[63:0], line2_43[63:0], line2_44[63:0], line2_45[63:0], line2_46[63:0], line2_47[63:0], line2_48[63:0], line2_49[63:0],
                line2_50[63:0], line2_51[63:0], line2_52[63:0], line2_53[63:0], line2_54[63:0], line2_55[63:0], line2_56[63:0], line2_57[63:0], line2_58[63:0], line2_59[63:0],
                line2_60[63:0], line2_61[63:0], line2_62[63:0], line2_63[63:0],
                instruction[8:3], selectDataLine2);
    
  mux64to1_23b tagMux2(1'b1, line2_0[86:64], line2_1[86:64], line2_2[86:64], line2_3[86:64], line2_4[86:64], line2_5[86:64], line2_6[86:64], line2_7[86:64], line2_8[86:64], line2_9[86:64],
                line2_10[86:64], line2_11[86:64], line2_12[86:64], line2_13[86:64], line2_14[86:64], line2_15[86:64], line2_16[86:64], line2_17[86:64], line2_18[86:64], line2_19[86:64],
                line2_20[86:64], line2_21[86:64], line2_22[86:64], line2_23[86:64], line2_24[86:64], line2_25[86:64], line2_26[86:64], line2_27[86:64], line2_28[86:64], line2_29[86:64],
                line2_30[86:64], line2_31[86:64], line2_32[86:64], line2_33[86:64], line2_34[86:64], line2_35[86:64], line2_36[86:64], line2_37[86:64], line2_38[86:64], line2_39[86:64],
                line2_40[86:64], line2_41[86:64], line2_42[86:64], line2_43[86:64], line2_44[86:64], line2_45[86:64], line2_46[86:64], line2_47[86:64], line2_48[86:64], line2_49[86:64],
                line2_50[86:64], line2_51[86:64], line2_52[86:64], line2_53[86:64], line2_54[86:64], line2_55[86:64], line2_56[86:64], line2_57[86:64], line2_58[86:64], line2_59[86:64],
                line2_60[86:64], line2_61[86:64], line2_62[86:64], line2_63[86:64],
                instruction[8:3], selectTagLine2);
    
  mux64to1_1b validMux2(1'b1, line2_0[86], line2_1[86], line2_2[86], line2_3[86], line2_4[86], line2_5[86], line2_6[86], line2_7[86], line2_8[86], line2_9[86],
                line2_10[86], line2_11[86], line2_12[86], line2_13[86], line2_14[86], line2_15[86], line2_16[86], line2_17[86], line2_18[86], line2_19[86],
                line2_20[86], line2_21[86], line2_22[86], line2_23[86], line2_24[86], line2_25[86], line2_26[86], line2_27[86], line2_28[86], line2_29[86],
                line2_30[86], line2_31[86], line2_32[86], line2_33[86], line2_34[86], line2_35[86], line2_36[86], line2_37[86], line2_38[86], line2_39[86],
                line2_40[86], line2_41[86], line2_42[86], line2_43[86], line2_44[86], line2_45[86], line2_46[86], line2_47[86], line2_48[86], line2_49[86],
                line2_50[86], line2_51[86], line2_52[86], line2_53[86], line2_54[86], line2_55[86], line2_56[86], line2_57[86], line2_58[86], line2_59[86],
                line2_60[86], line2_61[86], line2_62[86], line2_63[86],
                instruction[8:3],selectValidLine2);
          
  mux64to1_1b wayMux(1'b1, wayOut[0], wayOut[1], wayOut[2], wayOut[3], wayOut[4], wayOut[5], wayOut[6], wayOut[7], wayOut[8], wayOut[9],
      wayOut[10], wayOut[11], wayOut[12], wayOut[13], wayOut[14], wayOut[15], wayOut[16], wayOut[17], wayOut[18], wayOut[19],
      wayOut[20], wayOut[21], wayOut[22], wayOut[23], wayOut[24], wayOut[25], wayOut[26], wayOut[27], wayOut[28], wayOut[29],
      wayOut[30], wayOut[31], wayOut[32], wayOut[33], wayOut[34], wayOut[35], wayOut[36], wayOut[37], wayOut[38], wayOut[39],
      wayOut[40], wayOut[41], wayOut[42], wayOut[43], wayOut[44], wayOut[45], wayOut[46], wayOut[47], wayOut[48], wayOut[49],
      wayOut[50], wayOut[51], wayOut[52], wayOut[53], wayOut[54], wayOut[55], wayOut[56], wayOut[57], wayOut[58], wayOut[59],
      wayOut[60], wayOut[61], wayOut[62], wayOut[63],
      instruction[8:3],selectWayLine);
      
  mux64to1_1b fifoMux(1'b1, fifoOut[0], fifoOut[1], fifoOut[2], fifoOut[3], fifoOut[4], fifoOut[5], fifoOut[6], fifoOut[7], fifoOut[8], fifoOut[9],
      fifoOut[10], fifoOut[11], fifoOut[12], fifoOut[13], fifoOut[14], fifoOut[15], fifoOut[16], fifoOut[17], fifoOut[18], fifoOut[19],
      fifoOut[20], fifoOut[21], fifoOut[22], fifoOut[23], fifoOut[24], fifoOut[25], fifoOut[26], fifoOut[27], fifoOut[28], fifoOut[29],
      fifoOut[30], fifoOut[31], fifoOut[32], fifoOut[33], fifoOut[34], fifoOut[35], fifoOut[36], fifoOut[37], fifoOut[38], fifoOut[39],
      fifoOut[40], fifoOut[41], fifoOut[42], fifoOut[43], fifoOut[44], fifoOut[45], fifoOut[46], fifoOut[47], fifoOut[48], fifoOut[49],
      fifoOut[50], fifoOut[51], fifoOut[52], fifoOut[53], fifoOut[54], fifoOut[55], fifoOut[56], fifoOut[57], fifoOut[58], fifoOut[59],
      fifoOut[60], fifoOut[61], fifoOut[62], fifoOut[63],
      instruction[8:3],selectfifoLine);
    
  controlCircuit ctrlCkt(clk, reset, instruction, dataLine, selectDataLine1, selectDataLine2, selectTagLine1,
  selectTagLine2, selectValidLine1, selectValidLine2, selectWayLine, selectfifoLine, 
  writeReady, fifoWayOut, wayPredictOut, validWayOut, 
  dataWayOut, tagWayOut, dataOut);
      //fifo bit was flipped in ctrl ckt. Hence if fifo bit == 1, write to set1 else write to set2.
endmodule