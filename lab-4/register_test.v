`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/21 14:27:07
// Design Name: 
// Module Name: register_test
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


module register_test();

    reg Reg_Write;
    reg clk_WB;
    reg clk_RR;
    reg clk_F;
    reg rst_n;
    reg [4:0] R_Addr_A;
    reg [4:0] R_Addr_B;
    reg [4:0] W_Addr;
    reg [3:0] ALU_OP;
    wire [31:0] F;
    wire [3:0] FR;
    wire [31:0] debug;

    register_heap_top uut(
        .Reg_Write(Reg_Write),
        .clk_WB(clk_WB),
        .clk_RR(clk_RR),
        .clk_F(clk_F),
        .rst_n(rst_n),
        .R_Addr_A(R_Addr_A),
        .R_Addr_B(R_Addr_B),
        .W_Addr(W_Addr),
        .ALU_OP(ALU_OP),
        .F(F),
        .FR(FR),
        .debug(debug)
        );
        
    initial begin
        rst_n = 1;

        // 1
        #10
        R_Addr_A = 0;
        R_Addr_B = 1;
        clk_RR = 0;
        ALU_OP = 0;
        clk_F = 0;
        W_Addr = 2;
        clk_WB = 0;
        
        #10;
        clk_RR = 1;
        #10;
        clk_F = 1;
        #10;
        Reg_Write = 1;
        #10;
        clk_WB = 1;
        // 2
        #100;
        R_Addr_A = 1;
        R_Addr_B = 2;
        clk_RR = 0;
        ALU_OP = 0;
        clk_F = 0;
        W_Addr = 3;
        clk_WB = 0;
        #10;
        clk_RR = 1;
        #10;
        clk_F = 1;
        #10;
        Reg_Write = 1;
        #10;
        clk_WB = 1;
    end
endmodule
