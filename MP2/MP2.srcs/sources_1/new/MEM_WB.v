`timescale 1ns / 1ps


module MEM_WB(
    input           clk,
    input           nrst,
    input   [31:0]  PC,
    input   [2:0]   funct3,
    input   [2:0]   memtoreg,
    input   [63:0]  reg_rdata2,
    input           reg_wr,
    input   [63:0]  alu_res,
    input   [63:0]  rdata,
    
    output  reg  [31:0]  PC_o,
    output  reg  [2:0]   funct3_o,
    output  reg  [2:0]   memtoreg_o,
    output  reg          reg_wr_o,
    output  reg  [63:0]  alu_res_o,
    output  reg  [63:0]  rdata_o
    );
    
    always@(posedge clk)begin 
        if(!nrst)begin
        
            //Reset output registers
            PC_o        <=  32'b0;
            funct3_o    <=  3'b0;
            reg_wr_o    <=  0;
            alu_res_o   <=  64'b0;
            rdata_o     <=  64'b0;
        end else begin
            
            //Propagate values through to WB stage
            PC_o        <=  PC;
            funct3_o    <=  funct3;
            reg_wr_o    <=  reg_wr;
            alu_res_o   <=  alu_res;
            rdata_o     <=  rdata;
        end
        
    end
endmodule
