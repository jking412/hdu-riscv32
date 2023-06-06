`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/12 11:28:12
// Design Name: 
// Module Name: alu
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


module module_alu(
    input [31:0]ALU_A,
    input [31:0]ALU_B,
    input [3:0]ALU_OP,
    output [31:0]F,
    output ZF,
    output SF,
    output CF,
    output OF
    );
    integer i;
    reg [31:0]sum;
    reg is_add;
    reg C32;
    reg [31:0] ALU_F;
    reg Flags[3:0];
    // 0000:A+B
    // 0001:A<<B
    // 0010:有符号数比较(A<B) ?1 :0
    // 0011:无符号数比较(A<B) ? 1 : 0
    // 0100:A^B
    // 0101:逻辑右移:A<<<B，高位补0
    // 0110:按位或:A | B
    // 0111: A & B
    // 1000:A-B
    // 1101:算数右移A>>B
    always@(*)begin
    sum = 32'b0;
    case(ALU_OP)
        4'b0000:begin {C32,ALU_F} = ALU_A + ALU_B;end
        4'b0001:begin {C32,ALU_F} = ALU_A << ALU_B;end
        4'b0010:begin {C32,ALU_F} = $signed(ALU_A) < $signed(ALU_B) ? 1 : 0;end
        4'b0011:begin {C32,ALU_F} = ALU_A < ALU_B ? 1 : 0;end
        4'b0100:begin {C32,ALU_F} = ALU_A ^ ALU_B;end
        4'b0101:begin {C32,ALU_F} = ALU_A >> ALU_B;end
        4'b0110:begin {C32,ALU_F} = ALU_A | ALU_B;end
        4'b0111:begin {C32,ALU_F} = ALU_A & ALU_B;end
        4'b1000:begin {C32,ALU_F} = ALU_A - ALU_B;end
        4'b1101:begin {C32,ALU_F} = ALU_A >>> ALU_B;end
    endcase
    
    for(i=0;i<=31;i=i+1)begin
        sum = sum | ALU_F[i];
    end
    
    if(sum == 0) begin Flags[0] = 1; 
    end else Flags[0] = 0;
    
    is_add = (ALU_OP == 4'b0000)?1:0;
    Flags[1] = (~is_add & C32) + (is_add & C32);
    
    Flags[2] = ALU_A[31]^ALU_B[31]^C32^ALU_F[31];
    
    Flags[3] = ALU_F[31];
    end
    
    assign ZF = Flags[0];
    assign CF = Flags[1];
    assign OF = Flags[2];
    assign SF = Flags[3];
    assign F = ALU_F;

endmodule
