`timescale 1ns / 1ps

module processor(
    input           clk,
    input           nrst,
    input   [31:0]  inst,
    output  [31:0]  pc,
    output  [31:0]  addr,
    output          wr_en,
    output  [63:0]  wdata,
    output  [7:0]   wmask,
    input   [63:0]  rdata,
    
    //Observation ports for testing
    output  [63:0]  ALUop1,
    output  [63:0]  ALUop2,
    output  [63:0]  ALUres,
    output  [63:0]  RFwrdata,
    output          RFwren
    );
    
    ///////////////WIRES AND REGISTERS///////////////
    
    //EXE stage wire placed here since it's used for PC logic
     //Control signals Outputs to EXE
    wire    [31:0]  PC_EXE;
    wire            ALUsrc_EXE;
    wire    [2:0]   ALUOp_EXE;
    wire    [1:0]   memtoreg_EXE;
    wire            mem_wr_EXE;
    wire            bne_EXE;
    wire            bra_EXE;
    wire            reg_wr_EXE;
    wire            reg_dst_EXE;
    wire            sd_EXE;
    wire            ld_EXE;
    wire    [7:0]   wmask_EXE;
    wire            jump_EXE;
    
    //Control bits Outputs to EXE
    wire    [6:0]   funct7_EXE;
    wire    [2:0]   funct3_EXE;
    wire    [6:0]   opcode_EXE;
    
    //Immediates Outputs to EXE
    wire    [31:0]  jal_imm_EXE;
    wire    [31:0]  jalr_imm_EXE;
    wire    [31:0]  bra_imm_EXE;
    wire    [63:0]  addi_imm_EXE;
    wire    [63:0]  sd_imm_EXE;
    
    //Registerfile outputs to EXE
    wire    [63:0]  reg_rdata1_EXE;
    wire    [63:0]  reg_rdata2_EXE;
    
    
    //ALU wires
    wire [63:0] rs1;
    wire [63:0] rs2;
    
    wire [63:0] alu_res;
    wire        zero;
    
    
    
    //Data memory wires and registers
    reg  [31:0] addr_o;
    
    
    ////////////Instruction Fetch (IF) stage ///////////////

    reg     [31:0]  PC;
    assign pc = PC;       //attach PC to output
   
    // PUT PC LOGIC HERE
    
   always@(posedge clk)begin
        if(!nrst) PC <= 32'b0;
        else begin
            if(jump_EXE)begin
                if(opcode_EXE == `JALR) begin
                    //   if Jalr, move PC to effective address obtained by the sum of the 
                    //   decoded immediate and address from readdata1 from regfile
                    
                    //Notes: 
                    //  -we take into consideration the sign of the immediate 
                    //  -we also assume that the register contains a valid 32-bit base address
                    //   thus we can take the first 32-bits of the register as the operand
                    
                    if(jalr_imm_EXE[31] == 1'b1) PC <= reg_rdata1_EXE[31:0] - (~jalr_imm_EXE + 1) ;    
                    else PC <= jalr_imm_EXE + reg_rdata1_EXE[31:0] ;
                    
                end else begin
                    
                    //if Jal, add PC with sign extended offset
                    //Note: we take into consideration the sign 
                    if(jal_imm_EXE[31] == 1'b1) PC <= PC_EXE - (~jal_imm_EXE + 1);                                 
                    else PC <= PC_EXE +jal_imm_EXE;
                end
            end
            else begin
                if(bne_EXE && ~zero) begin
                    //If BNE and not zero, branch to PC + offset
                    //Note: we take into consideration the sign of the immediate
                    if(bra_imm_EXE[31] == 1'b1) PC <= PC - (~bra_imm_EXE + 1);
                    else PC <= PC + bra_imm_EXE;        
                    
                end
                else if(~bne_EXE && bra_EXE && zero) begin
                
                    //else if BEQ (and not BNE) and zero, branch to PC + offset
                    //Note: we take into consideration the sign of the immediate
                    if(bra_imm_EXE[31] == 1'b1) PC <= PC_EXE - (~bra_imm_EXE + 1);
                    else PC <= PC_EXE + bra_imm_EXE;    
                end
                else PC <= PC + 3'd4;         //just increment PC if no branch or jump is taken
            end
        end
    end
    
    ////////////////////////////////////////////////////////
    
    
    ////////////// IF - ID Pipeline register ///////////////
    
     // wires for IF/ID register
    wire [31:0] PC_IFID;
    wire [31:0] inst_IFID;
    
     //Instruction Fetch-Decode register
    IF_ID pr1(
        .clk(clk),
        .nrst(nrst),
        .inst(inst),
        .PC(PC),
        .IF_ID_inst(inst_IFID),
        .IF_ID_PC(PC_IFID)
    );
    
    /////////////////////////////////////////////////////
    
    
    ///////////Instruction decoding (ID) stage ///////////
    
    //-----------------------Immediates decoded at the ID stage--------------------------------
    //Immediate decoding for conditional and unconditional branch
    wire    [31:0]  jal_imm;     //decoded and sign-extended immediate for jal
    wire    [31:0]  jalr_imm;    //decoded and sign-extended immediate for jalr
    wire    [31:0]  bra_imm;     //decoded and sign-extended immediate for branch
    
    //Immediate decoding for Register-immediate instructions
    wire    [63:0]  addi_imm;    //decoded and sign-extended immediate for Register-Immediate arithmetic
    
    //Immediate dedcoding for Store word instructions
    wire    [63:0]  sd_imm;     //decoded and sign-extended immediate for SD instruction (in calculating address)
    
    //32-bit wires for branch instructions
    assign jal_imm  = {{12{inst_IFID[31]}}, {inst_IFID[31],inst_IFID[19:12],inst_IFID[20],inst_IFID[30:21],1'b0}};  // decodes SB-type format instruction encoding 
    assign jalr_imm = {{20{inst_IFID[31]}}, {inst_IFID[31:20]}};                                                    // decodes I-type format instruction encoding
    assign bra_imm  = {{19{inst_IFID[31]}}, {inst_IFID[31],inst[7],inst_IFID[30:25],inst_IFID[11:8],1'b0}};         // decodes B-type format instruction encoding
    
    //64-bit wires for load/store and addi instructions
    assign addi_imm = {{52{inst_IFID[31]}}, {inst_IFID[31:20]}};                                                    // decodes I-type format instruction encoding 
    assign sd_imm   = {{52{inst_IFID[31]}}, {inst_IFID[31:25],inst_IFID[11:7]} };                                   // decodes S-type format instruction encoding
    
    //Instruction control bits
    wire [6:0] funct7;
    wire [2:0] funct3;
    wire [6:0] opcode;
    
    //Abstracting Instruction bits
    assign funct7 = inst_IFID[31:25];
    assign funct3 = inst_IFID[14:12];
    assign opcode = inst_IFID[6:0];
    
   
    
    //----------------Control block-------------------------
    
    //Control signal wires
    wire        ALUsrc;
    wire [2:0]  ALUOp;
    wire [1:0]  memtoreg;
    wire        bne;
    wire        bra;
    wire        reg_wr;
    wire        reg_dst;
    wire        sd;
    wire        jump;
    
    
    //Instantiation 
    control c0(
        .instr(inst_IFID),
        .ALUsrc(ALUsrc),
        .ALUOp(ALUOp),
        .memtoreg(memtoreg),
        .mem_wr(wr_en),
        .bne(bne),
        .bra(bra),
        .reg_wr(reg_wr),
        .reg_dst(reg_dst),
        .sd(sd),
        .wmask(wmask),
        .jump(jump)
    );
    
    //-------------------------REGFILE-----------------------------

    //Regfile wires
    wire [4:0]  reg_rd_addr1;
    wire [4:0]  reg_rd_addr2;
    wire [63:0] reg_rdata1;
    wire [63:0] reg_rdata2;
    
    wire [4:0] reg_wr_addr;
    
    //for connecting to register that actually stores the data
    wire [63:0] reg_wrdata_in;
    reg  [63:0] reg_wrdata;
    
    
    //Register read address
    assign reg_rd_addr1 = inst_IFID[19:15];
    assign reg_rd_addr2 = inst_IFID[24:20];
    
    //valid for I-type and R-type
    assign reg_wr_addr = inst_IFID[11:7];
    
    //Instantiation
    regfile r0(
        .clk(clk),
        .nrst(nrst),
        
        .wr_en(reg_wr),   //Should use reg write from WB pipeline register
        .wr_addr(reg_wr_addr),
        .wrdata(reg_wrdata_in),
        
        .rd_addr1(reg_rd_addr1),
        .rd_addr2(reg_rd_addr2),
        .rdata1(reg_rdata1),
        .rdata2(reg_rdata2)
        
    );
    
    
    assign reg_wrdata_in = reg_wrdata;
    
    
    //Logic for choosing data to write back to register
    always@(*)begin
        case(memtoreg)
            2'b00: reg_wrdata <= alu_res;   //get writeback data from alu
            
            /////////////////Write back data from Data mem///////////////
            2'b01:begin
                case(funct3)
                    `LD:    reg_wrdata <= rdata;                            //get all 64-bits (double word)
                    `LW:    reg_wrdata <= {{32{rdata[31]}},rdata[31:0]};    //get only 32-bits and sign extend the rest
                    `LH:    reg_wrdata <= {{48{rdata[15]}},rdata[15:0]};    //get only 16-bits and sign extend the rest
                    `LWU:   reg_wrdata <= {32'b0,rdata[31:0]};              //get only 32-bits and pad 0 the rest
                    `LHU:   reg_wrdata <= {48'b0,rdata[15:0]};              //get only 16-bits and pad 0 the rest
                endcase
            end
            ////////////////////////////////////////////////////////////
            
            2'b10: reg_wrdata <= PC + 3'd4; //get writeback data from (PC + 4) 
        endcase
    end
    
    ///////////////////////////////////////////////////////////////////
    
    
    
    //////////////////  ID - EXE  Pipeline register  ////////////////////
    
   
    
    
    
    //Instantiate here
    
    ID_EX r1(
         .PC(PC),
         .clk(clk),
         .nrst(nrst),
         .ALUsrc(ALUsrc),
         .ALUOp(ALUOp),
         .memtoreg(memtoreg),
         .mem_wr(mem_wr),
         .bne(bne),
         .bra(bra),
         .reg_wr(reg_wr),
         .reg_dst(reg_dst),
         .sd(sd),
         .ld(ld),
         .wmask(wmask),
         .jump(jump),
    
    //Control bits
         .funct7(funct7),
         .funct3(funct3),
         .opcode(opcode),
    
    //Immediates
         .jal_imm(jal_imm),
         .jalr_imm(jalr_imm),
         .bra_imm(bra_imm),
         .addi_imm(addi_imm),
         .sd_imm(sd_imm),
    
    //Registerfile outputs
         .reg_rdata1(reg_rdata1),
         .reg_rdata2(reg_rdata2),
    
    //Control signals Outputs to EXE
         .PC_o(PC_EXE),
         .ALUsrc_o(ALUsrc_EXE),
         .ALUOp_o(ALUOp_EXE),
         .memtoreg_o(memtoreg_EXE),
         .mem_wr_o(mem_wr_EXE),
         .bne_o(bne_EXE),
         .bra_o(bra_EXE),
         .reg_wr_o(reg_wr_EXE),
         .reg_dst_o(reg_dst_EXE),
         .sd_o(sd_EXE),
         .ld_o(ld_EXE),
         .wmask_o(wmask_EXE),
         .jump_o(jump_EXE),
    
    //Control bits Outputs to EXE
         .funct7_o(funct7_EXE),
         .funct3_o(funct3_EXE),
         .opcode_o(opcode_EXE),
    
    //Immediates Outputs to EXE
         .jal_imm_o(jal_imm_EXE),
         .jalr_imm_o(jalr_imm_EXE),
         .bra_imm_o(bra_imm_EXE),
         .addi_imm_o(addi_imm_EXE),
         .sd_imm_o(sd_imm_EXE),
    
    //Registerfile outputs to EXE
         .reg_rdata1_o(reg_rdata1_EXE),
         .reg_rdata2_o(reg_rdata2_EXE)
    );
    //////////////////////////////////////////////////////////////////
    
    
    
    
    ////////////////////  Execution (EXE) stage  /////////////////////
    
    //-------------------------ALU-----------------------------
    
    
    //Choose source of rs2 (should assert if instruction is Register-Immediate or Load/store operation)
    assign rs2 = (ALUsrc_EXE)? ((sd)? sd_imm_EXE: addi_imm_EXE) : reg_rdata2_EXE;    //Take if 1 Immidiate in I-type/S-type format
                                                                    //else take source from register data
                                                                    
    assign rs1 = reg_rdata1_EXE;                        //Take next operand from register file
    //Instantiation
    ALU a0(
        .Alu_op(ALUOp),
        .rs1(rs1),
        .rs2(rs2),
        .zero(zero),
        .Alu_res(alu_res)
    );
    
    
    /////////////////////////////////////////////////////////////////////
    
   
   ////////////////////  Memory access (MEM) stage  /////////////////////
    
  
    
    //----------------Data memory------------
    
    //Load and store operations (address comes from rs1 + imm) 
    assign addr = alu_res[31:0];

    //connect rs2 as source register for storeword instruction
    assign wdata = reg_rdata2;
    
    
    /////////////////////////////////////////
endmodule
