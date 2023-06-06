`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/21 15:02:48
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
    reg clk_A;
    reg clk_B;
    reg clk_F;
    reg [31:0]in;
    reg rst_n;
    wire [31:0]F;
    wire [3:0]Flags;
    
    module_top top(clk_A,clk_B,clk_F,in,rst_n,Flags,F);
    
    initial begin
        clk_A = 0;
        clk_B = 0;
        clk_F = 0;
        in = 32'b0;
        rst_n = 1;
        //1
        #5
        rst_n = 0;
        #5
        rst_n = 1;
        #5
        in = 1;
        #5
        clk_A = 1;
        #5
        clk_A = 0;
        #5
        in = 2;
        #5
        clk_B = 1;
        #5
        clk_B = 0;
        #5
        in = 0;
        #5
        clk_F = 1;
        #5
        clk_F = 0;   
        //2
        #5
        rst_n = 0;
        #5
        rst_n = 1;
        #5
        in = 2;
        #5
        clk_A = 1;
        #5
        clk_A = 0;
        #5
        in = 2;
        #5
        clk_B = 1;
        #5
        clk_B = 0;
        #5
        in = 1;
        #5
        clk_F = 1;
        #5
        clk_F = 0;  
        //3
        #5
        rst_n = 0;
        #5
        rst_n = 1;
        #5
        in = 4;
        #5
        clk_A = 1;
        #5
        clk_A = 0;
        #5
        in = 3;
        #5
        clk_B = 1;
        #5
        clk_B = 0;
        #5
        in = 2;
        #5
        clk_F = 1;
        #5
        clk_F = 0;  
        //4
        #5
        rst_n = 0;
        #5
        rst_n = 1;
        #5
        in = 2;
        #5
        clk_A = 1;
        #5
        clk_A = 0;
        #5
        in = 3;
        #5
        clk_B = 1;
        #5
        clk_B = 0;
        #5
        in = 3;
        #5
        clk_F = 1;
        #5
        clk_F = 0;  
        //5
        #5
        rst_n = 0;
        #5
        rst_n = 1;
        #5
        in = 5;
        #5
        clk_A = 1;
        #5
        clk_A = 0;
        #5
        in = 9;
        #5
        clk_B = 1;
        #5
        clk_B = 0;
        #5
        in = 4;
        #5
        clk_F = 1;
        #5
        clk_F = 0;  
        //6
        #5
        rst_n = 0;
        #5
        rst_n = 1;
        #5
        in = 32'hffff_ffff;
        #5
        clk_A = 1;
        #5
        clk_A = 0;
        #5
        in = 32'h0000_0001;
        #5
        clk_B = 1;
        #5
        clk_B = 0;
        #5
        in = 2;
        #5
        clk_F = 1;
        #5
        clk_F = 0;  
        
        //7
        #5
        rst_n = 0;
        #5
        rst_n = 1;
        #5
        in = 32'hffff_ffff;
        #5
        clk_A = 1;
        #5
        clk_A = 0;
        #5
        in = 32'h0000_0001;
        #5
        clk_B = 1;
        #5
        clk_B = 0;
        #5
        in = 3;
        #5
        clk_F = 1;
        #5
        clk_F = 0;  
        
        // 8
        #5
        rst_n = 0;
        #5
        rst_n = 1;
        #5
        in = 32'hffff_ffff;
        #5
        clk_A = 1;
        #5
        clk_A = 0;
        #5
        in = 32'h0000_0001;
        #5
        clk_B = 1;
        #5
        clk_B = 0;
        #5
        in = 0;
        #5
        clk_F = 1;
        #5
        clk_F = 0;  
        
        
    end
endmodule
