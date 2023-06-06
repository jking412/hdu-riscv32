`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/14 13:56:35
// Design Name: 
// Module Name: register_heap
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


module register_heap(
        input Reg_Write,
        input clk_Regs,
        input rst_n,
        input [4:0] R_Addr_A,
        input [4:0] R_Addr_B,
        input [4:0] W_Addr,
        input [31:0] W_Data,
        output [31:0] R_Data_A,
        output [31:0] R_Data_B
    );
    integer i;
    reg [31:0] REG_Files[0:31];
    initial begin
        for(i = 0 ; i < 32 ;i = i + 1)REG_Files[i] = 0;
        REG_Files[1] = 2;
    end
    assign R_Data_A = REG_Files[R_Addr_A];
    assign R_Data_B = REG_Files[R_Addr_B];
    always @(posedge clk_Regs or negedge rst_n)begin
        if(!rst_n) begin
         for(i = 0 ; i < 32 ;i = i + 1)REG_Files[i] <= 0;
        end
        else begin
            if(Reg_Write && W_Addr != 0)
                REG_Files[W_Addr] <= W_Data;
        end    
    end
endmodule
