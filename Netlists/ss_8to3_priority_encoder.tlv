\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/  /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/    

//Your Verilog/System Verilog Code Starts Here:
//Top Module for 8-bit to 3-bit priority encoder

module ss_8to3_priority_encoder(In,Out);
 input[7:0]In;
 output reg[2:0]Out;

//always block begins here  
 always@(*)
    begin
     case(In)
            8'b00000000 : Out = 3'b000;
            8'b00000010 : Out = 3'b001;
            8'b00000110 : Out = 3'b010;
            8'b00001110 : Out = 3'b011;
            8'b00011110 : Out = 3'b100;
            8'b00111110 : Out = 3'b101;
            8'b01111110 : Out = 3'b110;
            8'b11111110 : Out = 3'b111;
            default  : Out = 3'b000; 
     endcase
    end

endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  [7:0] In;//input
		logic  [2:0] Out;//output
//The $random() can be replaced if user wants to assign values
		assign In = $random();
		ss_8to3_priority_encoder ss_8to3_priority_encoder(.In(In), .Out(Out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

