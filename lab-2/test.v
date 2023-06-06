`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/07 11:41:57
// Design Name: 
// Module Name: test
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


module test();
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] F;
    wire Cout;
    
    four_bit_addr uut(A,B,Cin,F,Cout);
    
    initial begin
        A = 4'b0000;
        B = 4'b0001;
        Cin = 1'b1;
        
        #200
        A = 4'b0110;
        B = 4'b0101;
        Cin = 1'b0;
        
        #200
        A = 4'b1000;
        B = 4'b0001;
        Cin = 1'b1;
        
        #200
        A = 4'b0100;
        B = 4'b0001;
        Cin = 1'b1;
        
        #200
        A = 4'b1110;
        B = 4'b1101;
        Cin = 1'b1;
        
    end
endmodule
