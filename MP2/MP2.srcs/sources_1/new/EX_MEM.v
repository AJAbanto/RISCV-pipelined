`timescale 1ns / 1ps


module EX_MEM(

    input                clk,
    input                nrst,
    
    input        [31:0]  PC,
    input        [2:0]   funct3,
    input                mem_wr,
    input        [1:0]   memtoreg,
    
    input        [7:0]   wmask,
    input        [63:0]  alu_res,
    input        [63:0]  reg_rdata2,
    input                reg_wr,
    input        [4:0]   reg_wr_addr,
    
    output  reg  [31:0]  PC_o,
    output  reg  [2:0]   funct3_o,
    output  reg          mem_wr_o,
    output  reg  [1:0]   memtoreg_o,
    output  reg  [7:0]   wmask_o,
    output  reg  [63:0]  alu_res_o,
    output  reg  [63:0]  reg_rdata2_o,
    output  reg          reg_wr_o,
    output  reg  [4:0]   reg_wr_addr_o
    
    );
    
    always@(posedge clk)begin
        if(!nrst)begin
            
            //Reset output registers
            PC_o        <=  31'b0;
            funct3_o    <=  3'b0;
            mem_wr_o    <=  0;
            memtoreg_o  <=  2'b0;
            wmask_o     <=  8'b0;
            alu_res_o   <=  64'b0;
            reg_rdata2_o <=  64'b0;
            reg_wr_o    <=  0;
            reg_wr_addr_o <= 5'b0;
        end else begin
        
            //Propagate values through to MEM stage
            PC_o        <=  PC;
            funct3_o    <=  funct3;
            mem_wr_o    <=  mem_wr;
            memtoreg_o  <=  memtoreg;
            wmask_o     <=  wmask;
            alu_res_o   <=  alu_res;
            reg_rdata2_o <=  reg_rdata2;
            reg_wr_o    <=  reg_wr;
            reg_wr_addr_o <= reg_wr_addr;
        end
    end
endmodule
