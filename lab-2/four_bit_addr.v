`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/07 11:18:30
// Design Name: 
// Module Name: four_bit_addr
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


module four_bit_addr(
    input   [3:0]       A           ,
    input   [3:0]       B           ,
    input               Cin         ,
    output  [3:0]       F,
    output              Cout
    );
    wire  [3:1] C;
    carry_generator u_carry_generator1(A,B,Cin,C,Cout);
    
    full_addr u_full_addr_1(A[0],B[0],Cin,F[0]);
    full_addr u_full_addr_2(A[1],B[1],C[1],F[1]);
    full_addr u_full_addr_3(A[2],B[2],C[2],F[2]);
    full_addr u_full_addr_4(A[3],B[3],C[3],F[3]);
    
endmodule
