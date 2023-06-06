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
    output [4:0] Next_ST,
    output [31:0] pc0
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
    
    wire [1:0]PC_s;
    wire PC0_Write;

    decoder_top decoder_top_1(
        .PC_Write(PC_Write),
        .IR_Write(IR_Write),
        .clk_im(clk),
        .PC_s(PC_s),
        .PC0_Write(PC0_Write),
        .F(F),
        .imm32(imm32),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .PC(PC),
        .inst(inst),
        .pc0(pc0)
    );
    
    wire [3:0] ALU_OP;
    wire IS_R;
    wire IS_IMM;
    wire IS_LUI;
    wire IS_LW;
    wire IS_SW;
    wire IS_BEQ;
    wire IS_JAL;
    wire IS_JALR;

    
    id2 id2_1(
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .IS_R(IS_R),
        .IS_IMM(IS_IMM),
        .IS_LUI(IS_LUI),
        .IS_LW(IS_LW),
        .IS_SW(IS_SW),
        .IS_BEQ(IS_BEQ),
        .IS_JAL(IS_JAL),
        .IS_JALR(IS_JALR),
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
    assign debug = {30'b0,IS_BEQ};
    
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
    
    wire Mem_Write;
    wire [31:0] M_W_Data;
    wire [31:0] M_R_Data;
    assign M_W_Data = B;
    
    RAM_Data RAM_Data_1 (
      .clka(clk),    // input wire clka
      .wea(Mem_Write),      // input wire [0 : 0] wea
      .addra(F[7:2]),  // input wire [5 : 0] addra
      .dina(M_W_Data),    // input wire [31 : 0] dina
      .douta(M_R_Data)  // output wire [31 : 0] douta
    );
    
    wire [31:0] MDR_out;
    
    register_32 register_MDR(
        .clk(clk),
        .rst_n(rst_n),
        .in(M_R_Data),
        .out(MDR_out)
    );
    
    wire [1:0] w_data_s;
    
    wire [31:0] result_F;
    assign W_Data =  result_F;
    
    w_data_select w_data_select_1(
        .F(F),
        .imm32(imm32),
        .MDR(MDR_out),
        .pc(PC),
        .w_data_s(w_data_s),
        .result(result_F)
    );
    
    cu cu_1(
       .clk(clk),
       .rst_n(rst_n),
       .IS_R(IS_R),
       .IS_IMM(IS_IMM),
       .IS_LUI(IS_LUI),
       .IS_LW(IS_LW),
       .IS_SW(IS_SW),
       .IS_BEQ(IS_BEQ),
       .IS_JAL(IS_JAL),
       .IS_JALR(IS_JALR),
       .ZF(FR[0]),
       .ALU_OP(ALU_OP),
       .Reg_Write(Reg_Write),
       .PC_Write(PC_Write),
       .IR_Write(IR_Write),
       .rs2_imm_s(rs2_imm_s),
       .w_data_s(w_data_s),
       .ALU_OP_o(ALU_OP_o),
       .Mem_Write(Mem_Write),
       .PC_s(PC_s),
       .PC0_Write(PC0_Write),
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
    input IS_LW,
    input IS_SW,
    input IS_BEQ,
    input IS_JAL,
    input IS_JALR,
    input ZF,
    input [3:0] ALU_OP,
    output reg Reg_Write,
    output reg PC_Write,
    output reg IR_Write,
    output reg Mem_Write,
    output reg rs2_imm_s,
    output reg [1:0] w_data_s,
    output reg [1:0] PC_s,
    output reg PC0_Write,
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
    parameter [4:0] S7 = 7; 
    parameter [4:0] S8 = 8; 
    parameter [4:0] S9 = 9; 
    parameter [4:0] S10 = 10; 
    parameter [4:0] S11 = 11; 
    parameter [4:0] S12 = 12; 
    parameter [4:0] S13 = 13; 
    parameter [4:0] S14 = 14; 
    
    reg [4:0] ST;
    reg [4:0] Next_ST;
    assign next_st = Next_ST;
    always @(negedge rst_n or posedge clk) begin
        if (!rst_n) ST <= Idle; // 初始状态
        else ST <= Next_ST; // clk的上跳沿，进行状态转移
    end
    
    always@(*)begin
        Next_ST = Next_ST;
        case(ST)
            Idle: Next_ST = S1;
            S1:begin
                if(IS_LUI) Next_ST = S6;
                else if(IS_R|IS_IMM|IS_LW|IS_SW)Next_ST = S2;
                else if(IS_JAL)Next_ST = S11;
            end
            S2:begin
                if(IS_R)Next_ST = S3;
                else if(IS_IMM) Next_ST = S5;
                else if(IS_LW | IS_SW | IS_JALR)Next_ST = S7;
                else if(IS_BEQ)Next_ST = S13;
            end
            S3:Next_ST = S4;
            S5:Next_ST = S4;
            S7:begin
                if(IS_LW)Next_ST = S8;
                else if(IS_SW)Next_ST = S10;
                else if(IS_JALR)Next_ST = S12;
            end
            S8:Next_ST = S9;
            S13:Next_ST = S14;
            default:Next_ST = S1;
         endcase   
    end
    
    always@(negedge rst_n or posedge clk)begin
        if(!rst_n)begin
            PC_Write <= 0;
            IR_Write <= 0;
            rs2_imm_s <= 0;
            w_data_s <= 0;
            ALU_OP_o = 0;
            Reg_Write <= 0;
            Mem_Write <= 0;
            PC_s <= 0;
            PC0_Write <= 0;
        end
        else begin
            case(Next_ST)
                S1:begin
                    PC_Write <= 1'b1;
                    PC0_Write <= 1;
                    IR_Write <= 1'b1;
                    Reg_Write <= 1'b0;
                    Mem_Write <= 0;
                    PC_s = 2'b00;
                end
                S2:begin
                    PC_Write <= 1'b0;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b0;
                    Mem_Write <= 0;
                end
                S3:begin
                    PC_Write <= 1'b0;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b0;
                    Mem_Write <= 0;
                    ALU_OP_o = ALU_OP;
                    rs2_imm_s = 1'b0;
                end
                S4:begin
                    PC_Write <= 1'b0;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b1;
                    Mem_Write <= 0;
                    w_data_s = 2'b00;
                end
                S5:begin
                    PC_Write <= 1'b0;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b0;
                    Mem_Write <= 0;
                    ALU_OP_o = ALU_OP;
                    rs2_imm_s = 1'b1;
                end
                S6:begin
                    PC_Write <= 1'b0;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b1;
                    Mem_Write <= 0;
                    w_data_s = 2'b01;
                end
                S7:begin
                    PC_Write <= 1'b0;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b0;
                    Mem_Write <= 0;
                    ALU_OP_o <= 0;
                    rs2_imm_s = 1'b1;
                end
                S8:begin
                    PC_Write <= 1'b0;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b0;
                    Mem_Write <= 0;
                end
                S9:begin
                    PC_Write <= 1'b0;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b1;
                    Mem_Write <= 0;
                    w_data_s = 2'b10;
                end
                S10:begin
                    PC_Write <= 1'b0;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b0;
                    Mem_Write <= 1;
                end
                S11:begin
                    PC_Write <= 1'b1;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b1;
                    Mem_Write <= 0;
                    w_data_s = 2'b11;
                    PC_s = 2'b01;
                end
                S12:begin
                    PC_Write <= 1'b1;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b1;
                    Mem_Write <= 0;
                    w_data_s = 2'b11;
                    PC_s = 2'b10;
                end
                S13:begin
                    PC_Write <= 1'b0;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b0;
                    Mem_Write <= 0;
                    ALU_OP_o <= 4'b1000;
                    rs2_imm_s <= 0;
                end
                S14:begin
                    PC_Write <= ZF;
                    PC0_Write <= 0;
                    IR_Write <= 1'b0;
                    Reg_Write <= 1'b0;
                    Mem_Write <= 0;
                    PC_s <= 2'b01;
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
    output IS_LW,
    output IS_SW,
    output IS_BEQ,
    output IS_JAL,
    output IS_JALR,
    output [3:0] ALU_OP
    );
    
   reg temp_IS_R;
   reg temp_IS_IMM;
   reg temp_IS_LUI;
   reg temp_IS_LW;
   reg temp_IS_SW;
   reg temp_IS_BEQ;
   reg temp_IS_JAL;
   reg temp_IS_JALR;
   reg [3:0] temp_ALU_OP;
   
   always@(*)begin
      if(opcode == 7'b0110011)begin
        temp_IS_R = 1;
        temp_IS_IMM = 0;
        temp_IS_LUI = 0;
        temp_ALU_OP = {funct7[5],funct3};   
        temp_IS_LW = 0;
        temp_IS_SW = 0;
        temp_IS_BEQ = 0;
        temp_IS_JAL = 0;
        temp_IS_JALR = 0;
      end 
      else if(opcode == 7'b0010011)begin
        temp_IS_R = 0;
        temp_IS_IMM = 1;
        temp_IS_LUI = 0;
        temp_ALU_OP = (funct3==3'b101) ? {funct7[5],funct3}:{1'b0,funct3};
        temp_IS_LW = 0;
        temp_IS_SW = 0;
        temp_IS_BEQ = 0;
        temp_IS_JAL = 0;
        temp_IS_JALR = 0;
      end 
      else if(opcode == 7'b0110111) begin
        temp_IS_R = 0;
        temp_IS_IMM = 0;
        temp_IS_LUI = 1;
        temp_IS_LW = 0;
        temp_IS_SW = 0;
        temp_IS_BEQ = 0;
        temp_IS_JAL = 0;
        temp_IS_JALR = 0;
      end 
      else if(opcode == 7'b0000011)begin
        temp_IS_R = 0;
        temp_IS_IMM = 0;
        temp_IS_LUI = 0;
        temp_IS_LW = 1;
        temp_IS_SW = 0;
        temp_IS_BEQ = 0;
        temp_IS_JAL = 0;
        temp_IS_JALR = 0; 
      end 
      else if(opcode == 7'b0100011)begin
        temp_IS_R = 0;
        temp_IS_IMM = 0;
        temp_IS_LUI = 0;
        temp_IS_LW = 0;
        temp_IS_SW = 1;
        temp_IS_BEQ = 0;
        temp_IS_JAL = 0;
        temp_IS_JALR = 0;
      end
      else if(opcode == 7'b1100011)begin
        temp_IS_R = 0;
        temp_IS_IMM = 0;
        temp_IS_LUI = 0;
        temp_IS_LW = 0;
        temp_IS_SW = 0;
        temp_IS_BEQ = 1;
        temp_IS_JAL = 0;
        temp_IS_JALR = 0;
      end
      else if(opcode == 7'b1101111)begin
        temp_IS_R = 0;
        temp_IS_IMM = 0;
        temp_IS_LUI = 0;
        temp_IS_LW = 0;
        temp_IS_SW = 0;
        temp_IS_BEQ = 0;
        temp_IS_JAL = 1;
        temp_IS_JALR = 0;
      end
      else if(opcode == 7'b1100111)begin
        temp_IS_R = 0;
        temp_IS_IMM = 0;
        temp_IS_LUI = 0;
        temp_IS_LW = 0;
        temp_IS_SW = 0;
        temp_IS_BEQ = 0;
        temp_IS_JAL = 0;
        temp_IS_JALR = 1;
      end
      else begin
        temp_IS_R = 0;
        temp_IS_IMM = 0;
        temp_IS_LUI = 0;
        temp_IS_LW = 0;
        temp_IS_SW = 0;
        temp_IS_BEQ = 0;
        temp_IS_JAL = 0;
        temp_IS_JALR = 0;
      end
   end
    
   assign IS_R = temp_IS_R;
   assign IS_IMM = temp_IS_IMM;
   assign IS_LUI = temp_IS_LUI;
   assign ALU_OP = temp_ALU_OP;
   assign IS_LW = temp_IS_LW;
   assign IS_SW = temp_IS_SW;
   assign IS_BEQ = temp_IS_BEQ;
   assign IS_JAL = temp_IS_JAL;
   assign IS_JALR = temp_IS_JALR;
    
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
    input [31:0] MDR,
    input [31:0] pc,
    input [1:0] w_data_s,
    output [31:0] result
    );
    reg [31:0] temp_result;
    always@(*)begin
        if(w_data_s == 2'b00)begin
            temp_result <= F;
        end else if (w_data_s == 2'b01)begin
            temp_result <= imm32;
        end else if(w_data_s == 2'b10)begin
            temp_result <= MDR;
        end else if(w_data_s == 2'b11)begin
            temp_result <= pc;
        end
    end
    assign result = temp_result;
    
endmodule


