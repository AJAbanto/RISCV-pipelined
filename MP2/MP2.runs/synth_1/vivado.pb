
x
Command: %s
53*	vivadotcl2G
3synth_design -top processor -part xc7a35ticsg324-1L2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-349h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
297862default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2287.840 ; gain = 0.000 ; free physical = 1566 ; free virtual = 5932
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
	processor2default:default2
 2default:default2L
6/home/aj/Desktop/RISCV-pipelined/src_files/processor.v2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
IF_ID2default:default2
 2default:default2H
2/home/aj/Desktop/RISCV-pipelined/src_files/IF_ID.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IF_ID2default:default2
 2default:default2
12default:default2
12default:default2H
2/home/aj/Desktop/RISCV-pipelined/src_files/IF_ID.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
control2default:default2
 2default:default2J
4/home/aj/Desktop/RISCV-pipelined/src_files/control.v2default:default2
72default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2J
4/home/aj/Desktop/RISCV-pipelined/src_files/control.v2default:default2
812default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2J
4/home/aj/Desktop/RISCV-pipelined/src_files/control.v2default:default2
1852default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
opcode2default:default2J
4/home/aj/Desktop/RISCV-pipelined/src_files/control.v2default:default2
632default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
funct32default:default2J
4/home/aj/Desktop/RISCV-pipelined/src_files/control.v2default:default2
632default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
funct72default:default2J
4/home/aj/Desktop/RISCV-pipelined/src_files/control.v2default:default2
632default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
control2default:default2
 2default:default2
22default:default2
12default:default2J
4/home/aj/Desktop/RISCV-pipelined/src_files/control.v2default:default2
72default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
ld2default:default2
control2default:default2
c02default:default2L
6/home/aj/Desktop/RISCV-pipelined/src_files/processor.v2default:default2
2432default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
c02default:default2
control2default:default2
132default:default2
122default:default2L
6/home/aj/Desktop/RISCV-pipelined/src_files/processor.v2default:default2
2432default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2
regfile2default:default2
 2default:default2J
4/home/aj/Desktop/RISCV-pipelined/src_files/regfile.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
regfile2default:default2
 2default:default2
32default:default2
12default:default2J
4/home/aj/Desktop/RISCV-pipelined/src_files/regfile.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ID_EX2default:default2
 2default:default2H
2/home/aj/Desktop/RISCV-pipelined/src_files/ID_EX.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ID_EX2default:default2
 2default:default2
42default:default2
12default:default2H
2/home/aj/Desktop/RISCV-pipelined/src_files/ID_EX.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2F
0/home/aj/Desktop/RISCV-pipelined/src_files/ALU.v2default:default2
122default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2F
0/home/aj/Desktop/RISCV-pipelined/src_files/ALU.v2default:default2
262default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
52default:default2
12default:default2F
0/home/aj/Desktop/RISCV-pipelined/src_files/ALU.v2default:default2
122default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
EX_MEM2default:default2
 2default:default2I
3/home/aj/Desktop/RISCV-pipelined/src_files/EX_MEM.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
EX_MEM2default:default2
 2default:default2
62default:default2
12default:default2I
3/home/aj/Desktop/RISCV-pipelined/src_files/EX_MEM.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
MEM_WB2default:default2
 2default:default2I
3/home/aj/Desktop/RISCV-pipelined/src_files/MEM_WB.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MEM_WB2default:default2
 2default:default2
72default:default2
12default:default2I
3/home/aj/Desktop/RISCV-pipelined/src_files/MEM_WB.v2default:default2
42default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
22default:default2

memtoreg_o2default:default2
32default:default2
MEM_WB2default:default2L
6/home/aj/Desktop/RISCV-pipelined/src_files/processor.v2default:default2
4842default:default8@Z8-689h px? 
?
-case statement is not full and has no default155*oasys2L
6/home/aj/Desktop/RISCV-pipelined/src_files/processor.v2default:default2
5082default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2L
6/home/aj/Desktop/RISCV-pipelined/src_files/processor.v2default:default2
5032default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	processor2default:default2
 2default:default2
82default:default2
12default:default2L
6/home/aj/Desktop/RISCV-pipelined/src_files/processor.v2default:default2
32default:default8@Z8-6155h px? 
?
%s*synth2?
?Finished Synthesize : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 2287.840 ; gain = 0.000 ; free physical = 1599 ; free virtual = 5966
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2287.840 ; gain = 0.000 ; free physical = 1599 ; free virtual = 5966
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Loading part: xc7a35ticsg324-1L
2default:defaulth p
x
? 
X
Loading part %s157*device2%
xc7a35ticsg324-1L2default:defaultZ21-403h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1598 ; free virtual = 5965
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
!inferring latch for variable '%s'327*oasys2
ALUOp_o_reg2default:default2J
4/home/aj/Desktop/RISCV-pipelined/src_files/control.v2default:default2
402default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
wmask_o_reg2default:default2J
4/home/aj/Desktop/RISCV-pipelined/src_files/control.v2default:default2
482default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	res_o_reg2default:default2F
0/home/aj/Desktop/RISCV-pipelined/src_files/ALU.v2default:default2
272default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
reg_wrdata_reg2default:default2L
6/home/aj/Desktop/RISCV-pipelined/src_files/processor.v2default:default2
2732default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1516 ; free virtual = 5884
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   64 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   64 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   33 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 3     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     64 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 40    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 12    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   64 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   64 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 20    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 61    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1332 ; free virtual = 5705
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1333 ; free virtual = 5706
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1337 ; free virtual = 5710
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1358 ; free virtual = 5730
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1358 ; free virtual = 5730
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1358 ; free virtual = 5730
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1358 ; free virtual = 5730
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1358 ; free virtual = 5730
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1358 ; free virtual = 5730
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     3|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |   160|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |   159|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    69|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |   179|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |   286|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |   316|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |  1845|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |   827|
2default:defaulth px? 
D
%s*synth2,
|10    |MUXF8  |   128|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |  2726|
2default:defaulth px? 
D
%s*synth2,
|12    |LD     |   134|
2default:defaulth px? 
D
%s*synth2,
|13    |IBUF   |    98|
2default:defaulth px? 
D
%s*synth2,
|14    |OBUF   |   266|
2default:defaulth px? 
D
%s*synth2,
|15    |OBUFT  |   128|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+---------+--------+------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |Instance |Module  |Cells |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+---------+--------+------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |top      |        |  7324|
2default:defaulth p
x
? 
O
%s
*synth27
#|2     |  r0     |regfile |  4609|
2default:defaulth p
x
? 
O
%s
*synth27
#|3     |  a0     |ALU     |   153|
2default:defaulth p
x
? 
O
%s
*synth27
#|4     |  c0     |control |     6|
2default:defaulth p
x
? 
O
%s
*synth27
#|5     |  pr1    |IF_ID   |   100|
2default:defaulth p
x
? 
O
%s
*synth27
#|6     |  r1     |ID_EX   |  1307|
2default:defaulth p
x
? 
O
%s
*synth27
#|7     |  r2     |EX_MEM  |   175|
2default:defaulth p
x
? 
O
%s
*synth27
#|8     |  r3     |MEM_WB  |   374|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+---------+--------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1358 ; free virtual = 5730
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 10 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 2295.758 ; gain = 7.918 ; free physical = 1359 ; free virtual = 5731
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 2295.766 ; gain = 7.918 ; free physical = 1359 ; free virtual = 5731
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.072default:default2
00:00:00.072default:default2
2295.7662default:default2
0.0002default:default2
14412default:default2
58142default:defaultZ17-722h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
12492default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2319.7702default:default2
0.0002default:default2
13692default:default2
57422default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2]
I  A total of 134 instances were transformed.
  LD => LDCE: 134 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
332default:default2
102default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:492default:default2
00:00:442default:default2
2319.7702default:default2
32.0162default:default2
15152default:default2
58882default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2W
C/home/aj/Desktop/RISCV-pipelined/MP2/MP2.runs/synth_1/processor.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file processor_utilization_synth.rpt -pb processor_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Aug 20 13:44:23 20212default:defaultZ17-206h px? 


End Record