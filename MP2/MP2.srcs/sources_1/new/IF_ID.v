`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2021 23:45:54
// Design Name: 
// Module Name: IF_ID
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


module IF_ID(
    input clk,
    input nrst,
    input [31:0] inst,
    input [31:0] PC,
    output reg  [31:0] IF_ID_inst,
    output reg  [31:0] IF_ID_PC
    );

    always@(posedge clk)begin
        if(!nrst)begin
            IF_ID_inst  <= 32'b0;
            IF_ID_PC    <= 32'b0;
        end else begin
            IF_ID_inst  <= inst;
            IF_ID_PC    <= PC; 
        end
    end
    
endmodule
