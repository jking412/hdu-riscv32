`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/12 11:16:10
// Design Name: 
// Module Name: decoder_top
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


module decoder_top(
    input PC_Write,
    input IR_Write,
    input clk_im,
    input [1:0] PC_s,
    input PC0_Write,
    input [31:0] F,
    output [31:0] imm32,
    output [4:0] rs1,
    output [4:0] rs2,
    output [4:0] rd,
    output [6:0] opcode,
    output [2:0] funct3,
    output [6:0] funct7,
    output [31:0] PC,
    output [31:0] inst,
    output [31:0] pc0
//    output [31:0] debug
    );
    
    wire [31:0] inst_Code;
    wire [31:0] instr;
    wire [31:0] pc;
    wire [31:0] new_pc;
    wire [5:0] addr;
    assign PC = pc;
    assign inst = instr;
    
//    assign debug  = inst_Code;

    wire [31:0]origin_pc;
    wire [31:0] jal_pc;
    wire [31:0] jalr_pc;
    wire [31:0] PC0_out;
    assign pc0 = PC0_out;

    adder addr_module(
        .pc(pc),
        .new_pc(origin_pc)
    );
    
    PC0 PC0_module(
        .clk(clk_im),
        .PC0_Write(PC0_Write),
        .pc(pc),
        .PC0_out(PC0_out)
    );
    
    assign jal_pc = PC0_out + imm32;
    assign jalr_pc = F;
    
    PC_select PC_select_module(
        .PC_s(PC_s),
        .origin_pc(origin_pc),
        .jal_pc(jal_pc),
        .jalr_pc(jalr_pc),
        .new_pc(new_pc)
        );
    
    pc_reg pc_module(
        .PC_Write(PC_Write),
        .clk_im(clk_im),
        .now_pc(pc),
        .new_pc(new_pc),
        .addr(addr)
    );
    
   RAM_B memory (
      .clka(clk_im),    // input wire clka
      .wea(0),      // input wire [0 : 0] wea
      .addra(addr),  // input wire [5 : 0] addra
      .dina(0),    // input wire [31 : 0] dina
      .douta(inst_Code)  // output wire [31 : 0] douta
    );
    
    IR ir(
        .IR_Write(IR_Write),
        .clk_im(clk_im),
        .Inst_Code(inst_Code),
        .instr(instr)
    );
    
    ID1 id1(
        .instr(instr),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .imm(imm32)
    );
    
endmodule

module IR(
    input IR_Write,
    input clk_im,
    input [31:0] Inst_Code,
    output [31:0] instr
    );
    
    reg [31:0] ir;
    always@(negedge clk_im)begin
        if(IR_Write)ir = Inst_Code;
    end
    assign instr = ir;
endmodule

module adder(
    input [31:0] pc,
    output [31:0] new_pc
    );
    reg [31:0] A = 0;
    always@(*)begin
        A = pc + 4;
    end
    assign new_pc = A;
    
endmodule

module PC0(
    input clk,
    input PC0_Write,
    input [31:0] pc,
    output [31:0]PC0_out
    );
    
    reg [31:0] temp;
    always@(negedge clk)begin
        if(PC0_Write)temp = pc;
    end
    assign PC0_out = temp;
endmodule

module PC_select(
    input [1:0] PC_s,
    input [31:0] origin_pc,
    input [31:0] jal_pc,
    input [31:0] jalr_pc,
    output [31:0] new_pc
    );
    
    reg [31:0] temp;
    always@(*)begin
        if(PC_s == 2'b00)temp = origin_pc;
        else if(PC_s == 2'b01)temp = jal_pc;
        else if(PC_s == 2'b10)temp = jalr_pc;    
    end
    assign new_pc = temp;
endmodule

module pc_reg(
    input PC_Write,
    input clk_im,
    input [31:0] new_pc,
    output [31:0]now_pc,
    output [5:0] addr
    );
    
    reg [31:0] pc = 0;
    
   always@(negedge clk_im)begin
        if(PC_Write)pc = new_pc;
   end
   assign now_pc = pc;
   assign addr = pc[7:2];
endmodule

module ID1 (
  input  [31:0] instr,      
  output  [4:0] rs1,   
  output  [4:0] rs2,   
  output  [4:0] rd,   
  output  [6:0] opcode,
  output  [2:0] funct3,      
  output  [6:0] funct7,      
  output reg [31:0] imm
);

    assign rs1 = instr[19:15]; 
    assign rs2 = instr[24:20];
    assign rd = instr[11:7]; 
    assign funct7 = instr[31:25]; 
    assign funct3 = instr[14:12]; 
    assign opcode = instr[6:0];
    
    
    wire [31:0] I1imm = {27'b0,instr[24:20]};
    wire [31:0] I2imm = {{21{instr[31]}}, instr[30:20]};
    wire [31:0] Simm = {{21{instr[31]}}, instr[30:25], instr[11:7]};
    wire [31:0] Bimm = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0};
    wire [31:0] Uimm = {instr[31:12], 12'b0};
    wire [31:0] Jimm = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};   
    reg flag;
    initial flag = 0;
    always @(*)begin
        case(opcode)
            7'b1101111: imm = Jimm;
            7'b0110011: imm = 0;
            7'b0010011: flag = 1;
            7'b0000011: imm = I2imm;
            7'b1100111: imm = I2imm;
            7'b0100011: imm = Simm;
            7'b1100011: imm = Bimm;
            7'b0110111: imm = Uimm;
            7'b0010111: imm = Uimm;
        endcase
        if(flag)begin
            case(funct3)
                3'b001: imm = I1imm;
                3'b101: imm = I1imm;
                default: imm = I2imm;
            endcase
            flag = 0;
        end
    end
   
endmodule
