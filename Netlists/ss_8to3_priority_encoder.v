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
