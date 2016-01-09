module cacheTestBench;
  
  reg clk, reset;
  reg [31:0] instruction;
  wire writeReady;
  reg [63:0] dataLine;
  wire [7:0] dataOut;
  
  topModule uut(clk, reset, instruction, dataLine, dataOut, writeReady);
  
  always #5 clk = ~clk;
  initial
  begin
	clk = 0; reset = 1; //instruction = 32'h00000080; dataLine = 64'h0123456789ABCDEF;
    #10 reset = 0; instruction = 32'h00000080; dataLine = 64'h0123456789ABCDEF;
    #40 instruction = 32'h00000080; dataLine = 64'hFEDCBA98765432fe;
    #40 instruction = 32'h00000190; dataLine = 64'hABCDEF0123456789;
    #40 instruction = 32'h00000210; dataLine = 64'h9876543210ABCDEF;
    #40 instruction = 32'h00000102; dataLine = 64'h9876543210ABCDEF;
    #10 instruction = 32'h00000102; dataLine = 64'h9876543210ABCDEF;
    #10 instruction = 32'h00000080; dataLine = 64'h9876543210ABCDEF;
    #20 instruction = 32'h00000180; dataLine = 64'hABCDEF9876543210;
    #30 $finish;
    
  end

endmodule