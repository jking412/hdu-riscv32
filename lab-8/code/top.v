`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/12 11:10:50
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input rst_n,
    output [3:0] FR,
    output [31:0] PC,
    output [31:0] inst,
    output [31:0] W_Data,
    output [31:0] A,
    output [31:0] B,
    output [31:0] F,
    output [31:0] debug,
    output [4:0] Next_ST
    );
    
    wire PC_Write;
    wire IR_Write;
    wire [31:0] imm32;
    wire [4:0] rs1;
    wire [4:0] rs2;
    wire [4:0] rd;
    wire [6:0] opcode;
    wire [2:0] funct3;
    wire [6:0] funct7;

    decoder_top decoder_top_1(
        .PC_Write(PC_Write),
        .IR_Write(IR_Write),
        .clk_im(clk),
        .imm32(imm32),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .PC(PC),
        .inst(inst)
    );
    
    wire [3:0] ALU_OP;
    wire IS_R;
    wire IS_IMM;
    wire IS_LUI;

    
    id2 id2_1(
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .IS_R(IS_R),
        .IS_IMM(IS_IMM),
        .IS_LUI(IS_LUI),
        .ALU_OP(ALU_OP)
    );
    
    wire Reg_Write;
    wire [31:0] pre_A;
    wire [31:0] pre_B;
    
    
    register_heap register_heap_1(
        .Reg_Write(Reg_Write),
        .clk_Regs(clk),
        .rst_n(rst_n),
        .R_Addr_A(rs1),
        .R_Addr_B(rs2),
        .W_Addr(rd),
        .W_Data(W_Data),
        .R_Data_A(pre_A),
        .R_Data_B(pre_B)
    );
    
    register_32 register_A(
        .clk(clk),
        .rst_n(rst_n),
        .in(pre_A),
        .out(A)
    );
    
    register_32 register_B(
        .clk(clk),
        .rst_n(rst_n),
        .in(pre_B),
        .out(B)
    );
    
    wire [31:0] calculate_A;
    wire [31:0] calculate_B;
    assign calculate_A = A;
    wire rs2_imm_s;
    assign debug = {29'b0,IS_IMM,rs2_imm_s};
    
    rs2_imm_select rs2_imm_select_1(
         .rs2_imm_s(rs2_imm_s),
        .B(B),
        .imm32(imm32),
        .result(calculate_B)
    );
    
        
    wire [3:0] ALU_OP_o;
    wire [31:0] pre_F;
    
    module_alu module_alu_1(
        .ALU_A(calculate_A),
        .ALU_B(calculate_B),
        .ALU_OP(ALU_OP_o),
        .F(pre_F),
        .ZF(FR[0]),
        .CF(FR[1]),
        .OF(FR[2]),
        .SF(FR[3])
    );
    
    register_32 register_F(
        .clk(clk),
        .rst_n(rst_n),
        .in(pre_F),
        .out(F)
    );
    
    wire w_data_s;
    
    wire [31:0] result_F;
    assign W_Data =  result_F;
    
    w_data_select w_data_select_1(
        .F(F),
        .imm32(imm32),
        .w_data_s(w_data_s),
        .result(result_F)
    );
    
    cu cu_1(
       .clk(clk),
       .rst_n(rst_n),
       .IS_R(IS_R),
       .IS_IMM(IS_IMM),
       .IS_LUI(IS_LUI),
       .ALU_OP(ALU_OP),
       .Reg_Write(Reg_Write),
       .PC_Write(PC_Write),
       .IR_Write(IR_Write),
       .rs2_imm_s(rs2_imm_s),
       .w_data_s(w_data_s),
       .ALU_OP_o(ALU_OP_o),
       .next_st(Next_ST)
        );
        


   


    
    
endmodule

module register_32(
    input clk,
    input rst_n,
    input [31:0] in,
    output [31:0] out
    );
    
    reg [31:0] temp;
    always@(negedge clk or negedge rst_n)begin
        if(!rst_n) temp = 0;
        else  temp = in;
    end
    assign out = temp;
endmodule

module cu(
    input clk,
    input rst_n,
    input IS_R,
    input IS_IMM,
    input IS_LUI,
    input [3:0] ALU_OP,
    output reg Reg_Write,
    output reg PC_Write,
    output reg IR_Write,
    output reg rs2_imm_s,
    output reg w_data_s,
    output reg [3:0] ALU_OP_o,
    output [4:0] next_st
    );
    
    parameter [4:0] Idle = 0;
    parameter [4:0] S1 = 1; 
    parameter [4:0] S2 = 2; 
    parameter [4:0] S3 = 3; 
    parameter [4:0] S4 = 4; 
    parameter [4:0] S5 = 5; 
    parameter [4:0] S6 = 6; 
    
    reg [4:0] ST;
    reg [4:0] Next_ST;
    assign next_st = Next_ST;
    always @(negedge rst_n or posedge clk) begin
        if (!rst_n) ST <= Idle; // 初始状态
        else ST <= Next_ST; // clk的上跳沿，进行状态转移
    end
    
    always@(*)begin
        Next_ST = Idle;
        case(ST)
            Idle: Next_ST = S1;
            S1:begin
                if(IS_LUI) Next_ST = S6;
                else Next_ST = S2;
            end
            S2:begin
                if(IS_R)Next_ST = S3;
                else if(IS_IMM) Next_ST = S5;
            end
            S3:Next_ST = S4;
            S5:Next_ST = S4;
            default:Next_ST = S1;
         endcase   
    end
    
    always@(negedge rst_n or posedge clk)begin
        if(!rst_n)begin
            PC_Write <= 1'b0;
            IR_Write <= 1'b0;
            rs2_imm_s <= 0;
            w_data_s <= 0;
            ALU_OP_o = 0;
            Reg_Write <= 1'b0;
        end
        else begin
            case(Next_ST)
                S1:begin
                    PC_Write <= 1'b1;
                    IR_Write <= 1'b1;
                    Reg_Write <= 1'b0;
                end
                S2:begin
                    PC_Write <= 1'b0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b0;
                end
                S3:begin
                    PC_Write <= 1'b0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b0;
                    ALU_OP_o = ALU_OP;
                    rs2_imm_s = 1'b0;
                end
                S4:begin
                    PC_Write <= 1'b0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b1;
                    w_data_s = 1'b0;
                end
                S5:begin
                    PC_Write <= 1'b0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b0;
                    ALU_OP_o = ALU_OP;
                    rs2_imm_s = 1'b1;
                end
                S6:begin
                    PC_Write <= 1'b0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b1;
                    w_data_s = 1'b1;
                end
             endcase   
        end
    end
    
endmodule

module id2(
    input [6:0] opcode,
    input [2:0] funct3,
    input [6:0] funct7,
    output IS_R,
    output IS_IMM,
    output IS_LUI,
    output [3:0] ALU_OP
    );
    
   reg temp_IS_R;
   reg temp_IS_IMM;
   reg temp_IS_LUI;
   reg [3:0] temp_ALU_OP;
   
   always@(*)begin
      if(opcode == 7'b0110011)begin
        temp_IS_R = 1;
        temp_IS_IMM = 0;
        temp_IS_LUI = 0;
        temp_ALU_OP = {funct7[5],funct3};   
      end 
      else if(opcode == 7'b0010011)begin
        temp_IS_R = 0;
        temp_IS_IMM = 1;
        temp_IS_LUI = 0;
        temp_ALU_OP = (funct3==3'b101) ? {funct7[5],funct3}:{1'b0,funct3};
      end 
      else if(opcode == 7'b0110111) begin
        temp_IS_R = 0;
        temp_IS_IMM = 0;
        temp_IS_LUI = 1;
      end 
      else begin
        temp_IS_R = 0;
        temp_IS_IMM = 0;
        temp_IS_LUI = 0;
      end
   end
    
   assign IS_R = temp_IS_R;
   assign IS_IMM = temp_IS_IMM;
   assign IS_LUI = temp_IS_LUI;
   assign ALU_OP = temp_ALU_OP;
    
 endmodule

 
 module rs2_imm_select(
    input rs2_imm_s,
    input [31:0] B,
    input [31:0] imm32,
    output [31:0] result
    );
    
    reg [31:0] temp_result;
    always@(*)begin
        if(rs2_imm_s)begin
            temp_result <= imm32;
        end else begin
            temp_result <= B;
        end
    end
    assign result = temp_result;
endmodule



module w_data_select(
    input [31:0] F,
    input [31:0] imm32,
    input w_data_s,
    output [31:0] result
    );
    reg [31:0] temp_result;
    always@(*)begin
        if(w_data_s)begin
            temp_result <= imm32;
        end else begin
            temp_result <= F;
        end
    end
    assign result = temp_result;
    
endmodule


