`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2026 20:29:04
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;
     reg [7:0] a,b;
     reg Cin;
     reg [3:0] sel;
     wire [7:0] y;
    
    
    // Instantiate the ALU
    
        Eight_Bit_ALU DUT (
        .a(a),
        .b(b),
        .Cin(Cin),
        .sel(sel),
        .y(y)
        );
        
        initial begin
        
        // Initial values
        a   = 8'b00000101;   // 5
        b   = 8'b00000011;   // 3
        Cin = 1'b0;
        
        $monitor("Time=%0t | a=%d | b=%d | Cin=%b | sel=%b | y=%d",
         $time, a, b, Cin, sel, y);
        
        // ARITHMETIC OPERATIONS
        // sel[3] = 0
        
        // a
        sel = 4'b0000;
        #10;

        // a + 1
        sel = 4'b0001;
        #10;

        // a - 1
        sel = 4'b0010;
        #10;

        // b
        sel = 4'b0011;
        #10;

        // b + 1
        sel = 4'b0100;
        #10;

        // b - 1
        sel = 4'b0101;
        #10;

        // a + b
        sel = 4'b0110;
        #10;

        // a + b + Cin
        Cin = 1'b1;
        sel = 4'b0111;
        #10;
        
         // LOGIC OPERATIONS
        // sel[3] = 1
        
        // NOT a
        sel = 4'b1000;
        #10;

        // NOT b
        sel = 4'b1001;
        #10;

        // a AND b
        sel = 4'b1010;
        #10;

        // a OR b
        sel = 4'b1011;
        #10;

        // a NAND b
        sel = 4'b1100;
        #10;

        // a NOR b
        sel = 4'b1101;
        #10;

        // a XOR b
        sel = 4'b1110;
        #10;

        // a XNOR b
        sel = 4'b1111;
        #10;
        
         // End simulation
        $finish;
        
        end
endmodule
