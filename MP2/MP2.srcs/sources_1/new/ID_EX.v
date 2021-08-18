`timescale 1ns / 1ps


module ID_EX(
    
    input       clk,
    input       nrst,
    
    
    //Control signals
    input [31:0] PC,
    input        ALUsrc,
    input [2:0]  ALUOp,
    input [1:0]  memtoreg,
    input        mem_wr,
    input        bne,
    input        bra,
    input        reg_wr,
    input        reg_dst,
    input        sd,
    input        ld,       
    input [7:0]  wmask,
    input        jump,
    
    //Control bits
    input [6:0] funct7,
    input [2:0] funct3,
    input [6:0] opcode,
    
    //Immediates
    input [31:0] jal_imm,
    input [31:0] jalr_imm,
    input [31:0] bra_imm,
    input [63:0] addi_imm,
    input [63:0] sd_imm,
    
    //Registerfile outputs
    input [63:0] reg_rdata1,
    input [63:0] reg_rdata2,
    
    //Control signals Outputs to EXE
    output  reg [31:0] PC_o,
    output  reg        ALUsrc_o,
    output  reg [2:0]  ALUOp_o,
    output  reg [1:0]  memtoreg_o,
    output  reg        mem_wr_o,
    output  reg        bne_o,
    output  reg        bra_o,
    output  reg        reg_wr_o,
    output  reg        reg_dst_o,
    output  reg        sd_o,
    output  reg        ld_o,
    output  reg [7:0]  wmask_o,
    output  reg        jump_o,
    
    //Control bits Outputs to EXE
    output  reg [6:0] funct7_o,
    output  reg [2:0] funct3_o,
    output  reg [6:0] opcode_o,
    
    //Immediates Outputs to EXE
    output  reg [31:0] jal_imm_o,
    output  reg [31:0] jalr_imm_o,
    output  reg [31:0] bra_imm_o,
    output  reg [63:0] addi_imm_o,
    output  reg [63:0] sd_imm_o,
    
    //Registerfile outputs to EXE
    output  reg [63:0] reg_rdata1_o,
    output  reg [63:0] reg_rdata2_o
    
    );
    
    
    always@(posedge clk)begin
        if(!nrst)begin
            
            //Reset all values
            PC_o        <= 32'b0;
            ALUsrc_o    <= 0;
            ALUOp_o     <= 3'b0;
            memtoreg_o  <= 2'b0;
            mem_wr_o    <= 0;
            bne_o       <= 0;
            bra_o       <= 0;
            reg_wr_o    <= 0;
            reg_dst_o   <= 0;
            sd_o        <= 0;
            ld_o        <= 0;
            wmask_o     <= 8'b0;
            jump_o      <= 0;
            
            funct7_o    <= 7'b0;
            funct3_o    <= 3'b0;
            opcode_o    <= 7'b0;
            
            jal_imm_o   <= 32'b0;
            jalr_imm_o  <= 32'b0;
            bra_imm_o   <= 32'b0;
            addi_imm_o  <= 64'b0;
            sd_imm_o    <= 64'b0;
            
            reg_rdata1_o<= 64'b0;
            reg_rdata2_o<= 64'b0;
           
    
        end else begin
            //Propagate data through pipeline
            PC_o        <= PC;
            ALUsrc_o    <= ALUsrc;
            ALUOp_o     <= ALUOp;
            memtoreg_o  <= memtoreg_o;
            mem_wr_o    <= mem_wr;
            bne_o       <= bne;
            bra_o       <= bra;
            reg_wr_o    <= reg_wr;
            reg_dst_o   <= reg_dst;
            sd_o        <= sd;
            ld_o        <= ld;
            wmask_o     <= wmask;
            jump_o      <= jump;
            
            funct7_o    <= funct7;
            funct3_o    <= funct3;
            opcode_o    <= opcode;
            
            jal_imm_o   <= jal_imm;
            jalr_imm_o  <= jalr_imm;
            bra_imm_o   <= bra_imm;
            addi_imm_o  <= addi_imm;
            sd_imm_o    <= sd_imm;
            
            reg_rdata1_o<= reg_rdata1;
            reg_rdata2_o<= reg_rdata2;
            
        end
    end
    
    
endmodule
