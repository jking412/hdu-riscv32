`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/12 11:18:03
// Design Name: 
// Module Name: memory
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


module memory(
    input Mem_Write,
    input clk_dm,
    input [7:2] DM_Addr,
    input [1:0] MW_Data_s,
    output reg [31:0] M_R_Data
    );
    
    parameter [7:0] data1 = 8'h12;
    reg [31:0] M_W_Data;
    wire [31:0] temp_R_Data;
    RAM_B ram (
      .clka(clk_dm),    // input wire clka
      .wea(Mem_Write),      // input wire [0 : 0] wea
      .addra(DM_Addr[7:2]),  // input wire [5 : 0] addra
      .dina(M_W_Data),    // input wire [31 : 0] dina
      .douta(temp_R_Data)  // output wire [31 : 0] douta
    );
    always@(*)begin
        if(Mem_Write)begin
            case(MW_Data_s)
                2'b00: M_W_Data = {24'b0,data1};
                2'b01: M_W_Data = {16'b0,data1,8'b0};
                2'b10: M_W_Data = {8'b0,data1,16'b0};
                3'b11: M_W_Data = {data1,24'b0};                
            endcase
        end
        else begin
           M_R_Data = temp_R_Data;
        end
    end
    
endmodule
