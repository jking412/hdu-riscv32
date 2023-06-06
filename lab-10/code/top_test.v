`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/05 19:27:24
// Design Name: 
// Module Name: top_test
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


module top_test(

    );
    
    reg clk;
    reg rst_n;
    wire [3:0] FR;
    wire [31:0] PC;
    wire [31:0] inst;
    wire [31:0] W_Data;
    wire [31:0] A;
    wire [31:0] B;
    wire [31:0] F;
    wire [31:0] debug;
    wire [4:0] Next_ST;
//    wire [31:0] pc0;
    
    top uut(
        .clk(clk),
        .rst_n(rst_n),
        .FR(FR),
        .PC(PC),
        .inst(inst),
        .W_Data(W_Data),
        .A(A),
        .B(B),
        .F(F),
        .debug(debug),
        .Next_ST(Next_ST)
//        .pc0(pc0)
    );
    
    always #3 clk = ~clk;
    
    initial begin
        clk = 0;
        rst_n = 1;
        #1
        rst_n = 0;
        #1
        rst_n = 1;
    
    end
    
    
endmodule
