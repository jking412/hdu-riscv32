`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/05 18:30:41
// Design Name: 
// Module Name: simu
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


module simu();
    reg PC_Write;
    reg IR_Write;
    reg clk_im;
    wire [31:0] imm32;
    wire [4:0] rs1;
    wire [4:0] rs2;
    wire [4:0] rd;
    wire [6:0] opcode;
    wire [2:0] funct3;
    wire [6:0] funct7;
    wire [31:0] debug;
    
    decoder_top uut(
        PC_Write,
        IR_Write,
        clk_im,
        imm32,
        rs1,
        rs2,
        rd,
        opcode,
        funct3,
        funct7,
        debug
    );
    
    initial begin
        PC_Write = 1;
        IR_Write = 1;
        clk_im = 0;
    end
    
    always #40 begin
        clk_im = ~clk_im;
    end
    
endmodule
