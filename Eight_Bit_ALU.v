`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2026 19:58:13
// Design Name: 
// Module Name: Eight_Bit_ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Eight_Bit_ALU(
    input [7:0] a,b,
    input Cin,
    input [3:0] sel,
    output reg [7:0] y
    );
    
    reg [7:0] arith;
    reg [7:0] logic;
    
    always @(*) begin
      // Arithmetic Operations
      case(sel[2:0])
          3'b000 : arith = a;
          3'b001 : arith = a+1;
          3'b010 : arith = a-1;
          3'b011 : arith = b;
          3'b100 : arith = b+1;
          3'b101 : arith = b-1;
          3'b110 : arith = a+b;
          3'b111 : arith = a+b+Cin;
           default : arith = 8'bz;
       endcase
       
       // Logic Operations
       case(sel[2:0])
          3'b000 : logic = ~a;
          3'b001 : logic = ~b;
          3'b010 : logic = a & b;
          3'b011 : logic = a | b;
          3'b100 : logic = ~(a & b);
          3'b101 : logic = ~(a | b);
          3'b110 : logic = a ^ b;
          3'b111 : logic = ~(a ^ b);
           default : logic = 8'bz;
       endcase
       
        // Select Arithmetic or Logic
        case(sel[3]) 
          1'b0 : y = arith;
          1'b1 : y = logic;
           default : y = 8'bz;
        endcase
        
     end      
endmodule
