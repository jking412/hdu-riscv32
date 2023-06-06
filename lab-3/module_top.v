`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/22 12:40:58
// Design Name: 
// Module Name: module_top
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


module module_top(
    input clk_A,
    input clk_B,
    input clk_F,
    input [31:0]in,
    input rst_n,
    output [3:0] Flags,
    output [31:0] result_F
    );
    wire [31:0] A;
    wire [31:0] B;
    wire [31:0] F;
    //调用寄存器A和寄存器B
    module_register regA(.clk(clk_A),.in(in),.rst_n(rst_n),.out(A));
    module_register regB(.clk(clk_B),.in(in),.rst_n(rst_n),.out(B));
    module_register regF(.clk(clk_F),.in(F),.rst_n(rst_n),.out(result_F));
    //调用多功能ALU模块（包括A与B的运算，和标志位的生成）
    module_alu alu(A,B,in[3:0],F,Flags[0],Flags[1],Flags[2],Flags[3]);
    


endmodule

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

module module_register(
    input[31:0] in,
    input clk,
    input rst_n,
    output [31:0] out
    );
    reg [31:0] temp_reg;
    always@(negedge rst_n or posedge clk)
    begin
        if(!rst_n)
            temp_reg <= 32'b0;
        else
            temp_reg <= in;
    end
    assign out = temp_reg;
endmodule

//module ShowNum(
//	input clk_25M,
//	input [31:0] F,
//	output reg [7:0]seg,
//	output reg [3:0]AN
//	);
//	parameter count=10000;
//	reg [31:0] clk_num;
//	reg [3:0] digit;
//	reg [2:0] which;
	
//	initial
//	begin
//		clk_num=0;
//		which=0;
//		digit=0;
//	end
	
//	always@(posedge clk_25M)
//	begin
//		if(clk_num<count)
//		begin clk_num<=clk_num+1;end
//		else
//		begin 
//			clk_num<=0;
//			which<=which+3'b001;
//			case(which)
//				0: begin digit<=F[3:0];end
//				1: begin digit<=F[7:4];end
//				2: begin digit<=F[11:8];end
//				3: begin digit<=F[15:12];end
//				4: begin digit<=F[19:16];end
//				5: begin digit<=F[23:20];end
//				6: begin digit<=F[27:24];end
//				7: begin digit<=F[31:28];end
//			endcase
//		end
//	end

	
//	always@(digit,which)
//	begin
//		case(which)
//			1: begin AN=4'b1111;end
//			2: begin AN=4'b1110;end
//			3: begin AN=4'b1101;end
//			4: begin AN=4'b1100;end
//			5: begin AN=4'b1011;end
//			6: begin AN=4'b1010;end
//			7: begin AN=4'b1001;end
//			0: begin AN=4'b1000;end
//			default:AN=4'bzzzz;
//		endcase
//		case(digit)
//				0:seg[7:0]=8'b00000011;
//				1:seg[7:0]=8'b10011111;
//				2:seg[7:0]=8'b00100101;
//				3:seg[7:0]=8'b00001101;
//				4:seg[7:0]=8'b10011001;
//				5:seg[7:0]=8'b01001001;
//				6:seg[7:0]=8'b01000001;
//				7:seg[7:0]=8'b00011111;
//				8:seg[7:0]=8'b00000001;
//				9:seg[7:0]=8'b00001001;	
//				10:seg[7:0]=8'b00010001;
//				11:seg[7:0]=8'b11000001;
//				12:seg[7:0]=8'b01100011;
//				13:seg[7:0]=8'b10000101;
//				14:seg[7:0]=8'b01100001;
//				15:seg[7:0]=8'b01110001;
//				default:seg[7:0]=8'b11111111;
//		endcase
//	end
//endmodule