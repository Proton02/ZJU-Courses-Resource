
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:032

00:00:082	
466.3552	
186.793Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
f
 Loaded user IP repository '%s'.
1135*coregen2
d:/COLab/Lab4-4/SCPU/Seg7_DevZ19-1700h px� 
o
"Loaded Vivado IP repository '%s'.
1332*coregen2&
$D:/Code/Xilinx/Vivado/2023.2/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2q
oread_checkpoint -auto_incremental -incremental D:/COLab/Lab4-4/SCPU/SCPU.srcs/utils_1/imports/synth_1/CSSTE.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2B
@D:/COLab/Lab4-4/SCPU/SCPU.srcs/utils_1/imports/synth_1/CSSTE.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
a
Command: %s
53*	vivadotcl20
.synth_design -top CSSTE -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
12620Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:06 . Memory (MB): peak = 1329.062 ; gain = 440.055
h px� 
�
synthesizing module '%s'%s4497*oasys2
CSSTE2
 2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
UART2
 27
3D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/UART.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_display2
 2?
;D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/uart_display.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
string_to_print2
 2B
>D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/string_to_print.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
hex_to_ascii2
 2B
>D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/string_to_print.v2
11918@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hex_to_ascii2
 2
02
12B
>D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/string_to_print.v2
11918@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
string_to_print2
 2
02
12B
>D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/string_to_print.v2
18@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2?
;D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/uart_display.v2
2278@Z8-155h px� 
�
synthesizing module '%s'%s4497*oasys2	
uart_tx2
 2:
6D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/uart_tx.v2
528@Z8-6157h px� 
Q
%s
*synth29
7	Parameter baud_rate bound to: 115200 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter sys_clk_freq bound to: 100000000 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
uart_tx2
 2
02
12:
6D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/uart_tx.v2
528@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_display2
 2
02
12?
;D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/uart_display.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
UART2
 2
02
127
3D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/UART.v2
238@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42	
mem_wen2
12
UART2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
1028@Z8-689h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
rs12
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
rs1_val2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
rs22
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
rs2_val2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
rd2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

reg_i_data2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
reg_wen2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
is_imm2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

is_auipc2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
is_lui2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
imm2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
a_val2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
b_val2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

alu_ctrl2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

cmp_ctrl2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
cmp_res2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	is_branch2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
is_jal2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
is_jalr2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	do_branch2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	pc_branch2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
mem_ren2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
csr_wen2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
csr_ind2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

csr_ctrl2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

csr_r_data2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mie_o2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mip_o2
UART2
	uart_inst2v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	uart_inst2
UART2
752
472v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
968@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
SCPU2
 2^
ZD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/SCPU.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

Controller2
 2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
38@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
1638@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
2188@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
2458@Z8-155h px� 
�
case item %s is unreachable151*oasys2
3'b1102d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
3538@Z8-151h px� 
�
-case statement is not full and has no default155*oasys2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
3538@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Controller2
 2
02
12d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	Data_Path2
 2c
_D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Data_Path.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
PC2
 2\
XD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/PC.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PC2
 2
02
12\
XD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/PC.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Regs2
 2�
�D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/imports/Lab1/Register_File/Register_File.srcs/sources_1/new/Regs.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Regs2
 2
02
12�
�D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/imports/Lab1/Register_File/Register_File.srcs/sources_1/new/Regs.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ImmG2
 2^
ZD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/ImmG.v2
38@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2^
ZD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/ImmG.v2
108@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ImmG2
 2
02
12^
ZD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/ImmG.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
Mux2to12
 2a
]D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Mux2to1.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
Mux2to12
 2
02
12a
]D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Mux2to1.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2
 2�
}D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/imports/Lab1/ALU/ALU.srcs/sources_1/new/ALU.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2
 2
02
12�
}D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/imports/Lab1/ALU/ALU.srcs/sources_1/new/ALU.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
Mux5to12
 2a
]D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Mux5to1.v2
38@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2a
]D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Mux5to1.v2
138@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
Mux5to12
 2
02
12a
]D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Mux5to1.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

Adder_322
 2b
^D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Adder_32.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Adder_322
 2
02
12b
^D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Adder_32.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Branch_control2
 2h
dD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Branch_control.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Branch_control2
 2
02
12h
dD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Branch_control.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
Mux3to12
 2a
]D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Mux3to1.v2
38@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2a
]D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Mux3to1.v2
118@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
Mux3to12
 2
02
12a
]D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Mux3to1.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Store_control2
 2g
cD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Store_control.v2
38@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2g
cD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Store_control.v2
168@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Store_control2
 2
02
12g
cD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Store_control.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Load_control2
 2f
bD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Load_control.v2
38@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2f
bD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Load_control.v2
128@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Load_control2
 2
02
12f
bD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Load_control.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
RV_INT2
 29
5D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/RV_INT.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2	
CSRRegs2
 2:
6D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/CSRRegs.v2
38@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2:
6D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/CSRRegs.v2
288@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2:
6D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/CSRRegs.v2
498@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2:
6D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/CSRRegs.v2
558@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2:
6D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/CSRRegs.v2
618@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2:
6D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/CSRRegs.v2
678@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2:
6D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/CSRRegs.v2
738@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2:
6D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/CSRRegs.v2
478@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
CSRRegs2
 2
02
12:
6D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/CSRRegs.v2
38@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RV_INT2
 2
02
129
5D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/RV_INT.v2
38@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Data_Path2
 2
02
12c
_D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Data_Path.v2
38@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SCPU2
 2
02
12^
ZD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/SCPU.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ROM_D2
 2Y
UD:/COLab/Lab4-4/SCPU/SCPU.runs/synth_1/.Xil/Vivado-21596-BAMBOO/realtime/ROM_D_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ROM_D2
 2
02
12Y
UD:/COLab/Lab4-4/SCPU/SCPU.runs/synth_1/.Xil/Vivado-21596-BAMBOO/realtime/ROM_D_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
RAM_B2
 2Y
UD:/COLab/Lab4-4/SCPU/SCPU.runs/synth_1/.Xil/Vivado-21596-BAMBOO/realtime/RAM_B_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RAM_B2
 2
02
12Y
UD:/COLab/Lab4-4/SCPU/SCPU.runs/synth_1/.Xil/Vivado-21596-BAMBOO/realtime/RAM_B_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
MIO_BUS2
 2Z
VD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/MIO_BUS.v2
158@Z8-6157h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42
mem_w2
12
MIO_BUS_bbox_02v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2168@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
Multi_8CH322
 2^
ZD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/Multi_8CH32.v2
158@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

Seg7_Dev_02
 2L
Hd:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/Seg7_Dev_0/synth/Seg7_Dev_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

Seg7_Dev2
 2D
@d:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/Seg7_Dev_0/Seg7_Dev.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

dispsync2
 2G
Cd:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/Seg7_Dev_0/DisplaySync.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

dispsync2
 2
02
12G
Cd:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/Seg7_Dev_0/DisplaySync.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

MC_144952
 2D
@d:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/Seg7_Dev_0/MC_14495.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
INV2
 2>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2	
781198@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
INV2
 2
02
12>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2	
781198@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AND42
 2>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
10018@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND42
 2
02
12>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
10018@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
OR42
 2>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2	
970288@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OR42
 2
02
12>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2	
970288@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AND32
 2>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
9538@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND32
 2
02
12>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
9538@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
OR32
 2>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2	
969808@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OR32
 2
02
12>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2	
969808@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AND22
 2>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
9058@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND22
 2
02
12>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
9058@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
OR22
 2>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2	
969348@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OR22
 2
02
12>
:D:/Code/Xilinx/Vivado/2023.2/scripts/rt/data/unisim_comp.v2	
969348@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

MC_144952
 2
02
12D
@d:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/Seg7_Dev_0/MC_14495.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Seg7_Dev2
 2
02
12D
@d:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/Seg7_Dev_0/Seg7_Dev.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Seg7_Dev_02
 2
02
12L
Hd:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/Seg7_Dev_0/synth/Seg7_Dev_0.v2
538@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
SPIO2
 2W
SD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/SPIO.v2
158@Z8-6157h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
led_clk2
SPIO2
U72v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

led_sout2
SPIO2
U72v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

led_clrn2
SPIO2
U72v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
LED_PEN2
SPIO2
U72v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
GPIOf02
SPIO2
U72v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2658@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
U72
SPIO2
122
72v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2658@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2	
clk_div2
 2Z
VD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/clk_div.v2
158@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
SAnti_jitter2
 2_
[D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/SAnti_jitter.v2
158@Z8-6157h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
readn2
SAnti_jitter2
U92v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2868@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
Key_x2
SAnti_jitter2
U92v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2868@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
Key_out2
SAnti_jitter2
U92v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2868@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	Key_ready2
SAnti_jitter2
U92v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2868@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	pulse_out2
SAnti_jitter2
U92v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2868@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CR2
SAnti_jitter2
U92v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2868@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
U92
SAnti_jitter2
132
72v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
2868@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
	Counter_x2
 2\
XD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/Counter_x.v2
158@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
VGA2
 2V
RD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/VGA.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
VgaController2
 2`
\D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/VgaController.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VgaController2
 2
02
12`
\D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/VgaController.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

VgaDisplay2
 2]
YD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/VgaDisplay.v2
38@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2
vga_debugger.mem2]
YD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/VgaDisplay.v2
178@Z8-3876h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2
font_8x16.mem2]
YD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/VgaDisplay.v2
278@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

VgaDisplay2
 2
02
12]
YD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/VgaDisplay.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
VgaDebugger2
 2^
ZD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/VgaDebugger.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	Hex2Ascii2
 2\
XD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/Hex2Ascii.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Hex2Ascii2
 2
02
12\
XD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/Hex2Ascii.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VgaDebugger2
 2
02
12^
ZD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/VgaDebugger.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VGA2
 2
02
12V
RD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/IP/VGA.v2
38@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
rs12
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
rs1_val2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
rs22
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
rs2_val2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
rd2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

reg_i_data2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
reg_wen2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
is_imm2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

is_auipc2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
is_lui2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
imm2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
a_val2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
b_val2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

alu_ctrl2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

cmp_ctrl2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
cmp_res2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	is_branch2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
is_jal2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
is_jalr2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	do_branch2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	pc_branch2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
mem_ren2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
csr_wen2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
csr_ind2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

csr_ctrl2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

csr_r_data2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mie_o2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mip_o2
VGA2
U112v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
U112
VGA2
802
522v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
3118@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02
 2]
YD:/COLab/Lab4-4/SCPU/SCPU.runs/synth_1/.Xil/Vivado-21596-BAMBOO/realtime/clk_wiz_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02
 2
02
12]
YD:/COLab/Lab4-4/SCPU/SCPU.runs/synth_1/.Xil/Vivado-21596-BAMBOO/realtime/clk_wiz_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CSSTE2
 2
02
12v
rD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/Lab2/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v2
38@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
rst_char_wait_count_reg2?
;D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/uart_display.v2
3928@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
is_transmitting2
uart_display2?
;D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/uart_display.v2
1348@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
rst_is_transmitting2
uart_display2?
;D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/uart_display.v2
1348@Z8-3848h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[31]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[30]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[29]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[28]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[27]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[26]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[25]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[24]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[23]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[22]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[21]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[20]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[19]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[18]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[17]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[16]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[15]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[14]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[13]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[12]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[11]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[10]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[9]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[8]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[7]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[6]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[5]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[4]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[3]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[2]2
Load_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[31]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[30]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[29]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[28]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[27]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[26]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[25]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[24]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[23]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[22]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[21]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[20]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[19]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[18]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[17]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[16]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[15]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[14]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[13]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[12]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[11]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[10]2
Store_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[9]2
Store_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[8]2
Store_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[7]2
Store_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[6]2
Store_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[5]2
Store_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[4]2
Store_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[3]2
Store_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[2]2
Store_controlZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
inst_imm[1]2
ImmGZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
inst_imm[0]2
ImmGZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2	
Reg1[4]2

ControllerZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2	
Reg1[3]2

ControllerZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2	
Reg1[2]2

ControllerZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2	
Reg1[1]2

ControllerZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2	
Reg1[0]2

ControllerZ8-7129h px� 
}
9Port %s in module %s is either unconnected or has no load4866*oasys2
str_idx[11]2
string_to_printZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:09 . Memory (MB): peak = 1480.035 ; gain = 591.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:09 . Memory (MB): peak = 1480.035 ; gain = 591.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:09 . Memory (MB): peak = 1480.035 ; gain = 591.027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1472

1480.0352
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
40Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2O
Kd:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/RAM_B/RAM_B/RAM_B_in_context.xdc2
U3	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2O
Kd:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/RAM_B/RAM_B/RAM_B_in_context.xdc2
U3	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2[
Wd:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
U12	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2[
Wd:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
U12	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2O
Kd:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/ROM_D/ROM_D/ROM_D_in_context.xdc2
U2	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2O
Kd:/COLab/Lab4-4/SCPU/SCPU.gen/sources_1/ip/ROM_D/ROM_D/ROM_D_in_context.xdc2
U2	8Z20-847h px� 

Parsing XDC File [%s]
179*designutils2>
:D:/COLab/Lab4-4/SCPU/SCPU.srcs/constrs_1/imports/IP/A7.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2>
:D:/COLab/Lab4-4/SCPU/SCPU.srcs/constrs_1/imports/IP/A7.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2<
:D:/COLab/Lab4-4/SCPU/SCPU.srcs/constrs_1/imports/IP/A7.xdc2
.Xil/CSSTE_propImpl.xdcZ1-236h px� 
z
Parsing XDC File [%s]
179*designutils29
5D:/COLab/Lab4-4/SCPU/SCPU.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils29
5D:/COLab/Lab4-4/SCPU/SCPU.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0042

1545.4652
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 40 instances were transformed.
  AND2 => LUT2: 1 instance 
  AND3 => LUT3: 11 instances
  AND4 => LUT4: 9 instances
  INV => LUT1: 5 instances
  OR2 => LUT2: 7 instances
  OR3 => LUT3: 3 instances
  OR4 => LUT4: 4 instances
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0312

1545.4652
0.000Z17-268h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002
U32
clka2
10.000Z38-316h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:06 ; elapsed = 00:00:21 . Memory (MB): peak = 1555.094 ; gain = 666.086
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:21 . Memory (MB): peak = 1555.094 ; gain = 666.086
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:07 ; elapsed = 00:00:21 . Memory (MB): peak = 1555.094 ; gain = 666.086
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
v
3inferred FSM for state register '%s' in module '%s'802*oasys2
print_state_reg2
uart_displayZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_              PRINT_IDLE |                   00000000000001 |                             0000
h p
x
� 
y
%s
*synth2a
_          PRINT_STR_INIT |                   00000000000010 |                             0001
h p
x
� 
y
%s
*synth2a
_       PRINT_SEND_CHAR_0 |                   00000000000100 |                             0010
h p
x
� 
y
%s
*synth2a
_         PRINT_SEND_CHAR |                   00000000001000 |                             0011
h p
x
� 
y
%s
*synth2a
_        PRINT_WAIT_RDY_0 |                   00000000010000 |                             0100
h p
x
� 
y
%s
*synth2a
_          PRINT_WAIT_RDY |                   00000000100000 |                             0101
h p
x
� 
y
%s
*synth2a
_         PRINT_CHAR_WAIT |                   00000001000000 |                             0110
h p
x
� 
y
%s
*synth2a
_             PRINT_RESET |                   00000010000000 |                             1001
h p
x
� 
y
%s
*synth2a
_ PRINT_RESET_SEND_CHAR_0 |                   00000100000000 |                             1010
h p
x
� 
y
%s
*synth2a
_   PRINT_RESET_SEND_CHAR |                   00001000000000 |                             1011
h p
x
� 
y
%s
*synth2a
_  PRINT_RESET_WAIT_RDY_0 |                   00010000000000 |                             1100
h p
x
� 
y
%s
*synth2a
_    PRINT_RESET_WAIT_RDY |                   00100000000000 |                             1101
h p
x
� 
y
%s
*synth2a
_        PRINT_DELAY_WAIT |                   01000000000000 |                             0111
h p
x
� 
y
%s
*synth2a
_         PRINT_ROUND_END |                   10000000000000 |                             1000
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
print_state_reg2	
one-hot2
uart_displayZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
ALUSrc_B_reg2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
468@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
Store_len_reg2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
2208@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
ALU_Control_reg2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
648@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
MemtoReg_reg2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
478@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
	MemRW_reg2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
488@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
Load_len_reg2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
1658@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

Branch_reg2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
498@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
BranchN_reg2d
`D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Controller.v2
508@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
Imm_out_reg2^
ZD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/ImmG.v2
138@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2	
out_reg2a
]D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Mux5to1.v2
148@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2	
out_reg2a
]D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Mux3to1.v2
128@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
store_control_out_reg2g
cD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Store_control.v2
198@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
store_control_wea_reg2g
cD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Store_control.v2
208@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
load_control_out_reg2f
bD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/COLab/SCPU/SCPU.srcs/sources_1/new/Load_control.v2
168@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
	rdata_reg2:
6D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/CSRRegs.v2
298@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
	raddr_reg29
5D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/RV_INT.v2
478@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
	waddr_reg29
5D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/RV_INT.v2
488@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
in_mret_reg29
5D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/RV_INT.v2
468@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
mstatus_bypass_in_reg29
5D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/RV_INT.v2
548@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
mcause_bypass_in_reg29
5D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/RV_INT.v2
518@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
mtval_bypass_in_reg29
5D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/RV_INT.v2
528@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
mepc_bypass_in_reg29
5D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/new/RV_INT.v2
538@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:52 . Memory (MB): peak = 1555.094 ; gain = 666.086
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit       Adders := 448   
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 1     
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 39    
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 6     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	  33 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 19    
h p
x
� 
F
%s
*synth2.
,	   7 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  11 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   6 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  14 Input   14 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   14 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   5 Input   12 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input   10 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input   10 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   8 Input    4 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   7 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	 449 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    3 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   9 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   5 Input    2 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  17 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 74    
h p
x
� 
F
%s
*synth2.
,	  14 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    1 Bit        Muxes := 13    
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   7 Input    1 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	  18 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  11 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  10 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   9 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	 449 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[31]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[30]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[29]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[28]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[27]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[26]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[25]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[24]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[23]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[22]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[21]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[20]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[19]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[18]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[17]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[16]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[15]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[14]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[13]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[12]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[11]2
Load_controlZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[10]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[9]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[8]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[7]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[6]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[5]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[4]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[3]2
Load_controlZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2

ALU_res[2]2
Load_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[31]2
Store_controlZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
ALU_res[30]2
Store_controlZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
UInfeasible attribute ram_style = "%s" set for RAM %s,trying to implement using LUTRAM4701*oasys2
block2*
("CSSTE/U11/vga_display/display_data_reg"Z8-6849h px� 
�
UInfeasible attribute ram_style = "%s" set for RAM %s,trying to implement using LUTRAM4701*oasys2
block2*
("CSSTE/U11/vga_display/display_data_reg"Z8-6849h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mstatus_bypass_in_reg[7]2
RV_INTZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mcause_bypass_in_reg[31]2
RV_INTZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:03 ; elapsed = 00:02:44 . Memory (MB): peak = 1555.094 ; gain = 666.086
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
W
%s*synth2?
=+------------+------------+---------------+----------------+
h px� 
X
%s*synth2@
>|Module Name | RTL Object | Depth x Width | Implemented As | 
h px� 
W
%s*synth2?
=+------------+------------+---------------+----------------+
h px� 
X
%s*synth2@
>|VgaDisplay  | fonts_data | 4096x8        | LUT            | 
h px� 
X
%s*synth2@
>|CSSTE       | p_0_out    | 4096x8        | LUT            | 
h px� 
X
%s*synth2@
>+------------+------------+---------------+----------------+

h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 

%s*synth2g
e+------------+----------------------------------+-----------+----------------------+---------------+
h px� 
�
%s*synth2h
f|Module Name | RTL Object                       | Inference | Size (Depth x Width) | Primitives    | 
h px� 

%s*synth2g
e+------------+----------------------------------+-----------+----------------------+---------------+
h px� 
�
%s*synth2h
f|CSSTE       | U11/vga_display/display_data_reg | Implied   | 4 K x 7              | RAM64M x 192  | 
h px� 
�
%s*synth2h
f+------------+----------------------------------+-----------+----------------------+---------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:11 ; elapsed = 00:02:57 . Memory (MB): peak = 1555.094 ; gain = 666.086
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:01:14 ; elapsed = 00:03:10 . Memory (MB): peak = 1588.695 ; gain = 699.688
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 

%s
*synth2g
e+------------+----------------------------------+-----------+----------------------+---------------+
h p
x
� 
�
%s
*synth2h
f|Module Name | RTL Object                       | Inference | Size (Depth x Width) | Primitives    | 
h p
x
� 

%s
*synth2g
e+------------+----------------------------------+-----------+----------------------+---------------+
h p
x
� 
�
%s
*synth2h
f|CSSTE       | U11/vga_display/display_data_reg | Implied   | 4 K x 7              | RAM64M x 192  | 
h p
x
� 
�
%s
*synth2h
f+------------+----------------------------------+-----------+----------------------+---------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[31]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[30]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[29]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[28]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[27]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[26]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[25]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[24]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[23]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[22]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[21]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[20]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[19]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[18]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[17]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[16]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[15]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[14]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[13]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[12]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[11]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[10]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[9]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[8]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[7]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[6]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[5]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[4]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[3]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[2]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[1]2
CSSTEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
U1/U2/U11/out_reg[0]2
CSSTEZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:01:15 ; elapsed = 00:03:15 . Memory (MB): peak = 1640.367 ; gain = 751.359
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
[
*BlackBox module %s has unconnected pin %s
3599*oasys2
U92
readnZ8-4442h px� 
\
*BlackBox module %s has unconnected pin %s
3599*oasys2
U122
resetZ8-4442h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:01:18 ; elapsed = 00:03:22 . Memory (MB): peak = 1654.031 ; gain = 765.023
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:18 ; elapsed = 00:03:22 . Memory (MB): peak = 1654.031 ; gain = 765.023
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:18 ; elapsed = 00:03:23 . Memory (MB): peak = 1654.031 ; gain = 765.023
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:18 ; elapsed = 00:03:23 . Memory (MB): peak = 1654.031 ; gain = 765.023
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:18 ; elapsed = 00:03:24 . Memory (MB): peak = 1654.031 ; gain = 765.023
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:18 ; elapsed = 00:03:24 . Memory (MB): peak = 1654.031 ; gain = 765.023
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |ROM_D         |         1|
h p
x
� 
=
%s
*synth2%
#|2     |RAM_B         |         1|
h p
x
� 
=
%s
*synth2%
#|3     |MIO_BUS       |         1|
h p
x
� 
=
%s
*synth2%
#|4     |Multi_8CH32   |         1|
h p
x
� 
=
%s
*synth2%
#|5     |SPIO          |         1|
h p
x
� 
=
%s
*synth2%
#|6     |clk_div       |         1|
h p
x
� 
=
%s
*synth2%
#|7     |SAnti_jitter  |         1|
h p
x
� 
=
%s
*synth2%
#|8     |Counter_x     |         1|
h p
x
� 
=
%s
*synth2%
#|9     |clk_wiz_0     |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
=
%s*synth2%
#+------+------------------+------+
h px� 
=
%s*synth2%
#|      |Cell              |Count |
h px� 
=
%s*synth2%
#+------+------------------+------+
h px� 
=
%s*synth2%
#|1     |Counter_x_bbox    |     1|
h px� 
=
%s*synth2%
#|2     |MIO_BUS_bbox      |     1|
h px� 
=
%s*synth2%
#|3     |Multi_8CH32_bbox  |     1|
h px� 
=
%s*synth2%
#|4     |RAM_B             |     1|
h px� 
=
%s*synth2%
#|5     |ROM_D             |     1|
h px� 
=
%s*synth2%
#|6     |SAnti_jitter_bbox |     1|
h px� 
=
%s*synth2%
#|7     |SPIO_bbox         |     1|
h px� 
=
%s*synth2%
#|8     |clk_div_bbox      |     1|
h px� 
=
%s*synth2%
#|9     |clk_wiz           |     1|
h px� 
=
%s*synth2%
#|10    |AND2              |     1|
h px� 
=
%s*synth2%
#|11    |AND3              |    11|
h px� 
=
%s*synth2%
#|12    |AND4              |     9|
h px� 
=
%s*synth2%
#|13    |BUFG              |     6|
h px� 
=
%s*synth2%
#|14    |CARRY4            |    79|
h px� 
=
%s*synth2%
#|15    |INV               |     5|
h px� 
=
%s*synth2%
#|16    |LUT1              |    24|
h px� 
=
%s*synth2%
#|17    |LUT2              |   292|
h px� 
=
%s*synth2%
#|18    |LUT3              |   594|
h px� 
=
%s*synth2%
#|19    |LUT4              |   782|
h px� 
=
%s*synth2%
#|20    |LUT5              |   816|
h px� 
=
%s*synth2%
#|21    |LUT6              |  3829|
h px� 
=
%s*synth2%
#|22    |MUXF7             |   812|
h px� 
=
%s*synth2%
#|23    |MUXF8             |   101|
h px� 
=
%s*synth2%
#|24    |OR2               |     7|
h px� 
=
%s*synth2%
#|25    |OR3               |     3|
h px� 
=
%s*synth2%
#|26    |OR4               |     4|
h px� 
=
%s*synth2%
#|27    |RAM64M            |   128|
h px� 
=
%s*synth2%
#|28    |RAM64X1D          |    62|
h px� 
=
%s*synth2%
#|29    |FDCE              |  1216|
h px� 
=
%s*synth2%
#|30    |FDRE              |   206|
h px� 
=
%s*synth2%
#|31    |FDSE              |     2|
h px� 
=
%s*synth2%
#|32    |LD                |   221|
h px� 
=
%s*synth2%
#|33    |LDC               |    44|
h px� 
=
%s*synth2%
#|34    |IBUF              |    21|
h px� 
=
%s*synth2%
#|35    |OBUF              |    47|
h px� 
=
%s*synth2%
#+------+------------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:18 ; elapsed = 00:03:24 . Memory (MB): peak = 1654.031 ; gain = 765.023
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
%s
*synth2J
HSynthesis finished with 0 errors, 2 critical warnings and 122 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:01:13 ; elapsed = 00:03:20 . Memory (MB): peak = 1654.031 ; gain = 689.965
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:18 ; elapsed = 00:03:24 . Memory (MB): peak = 1654.031 ; gain = 765.023
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
Parsing EDIF File [%s]
106*designutils2A
?D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/IP/MIO_BUS.edfZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2A
?D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/IP/MIO_BUS.edfZ20-97h px� 
�
Parsing EDIF File [%s]
106*designutils2E
CD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/IP/Multi_8CH32.edfZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2E
CD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/IP/Multi_8CH32.edfZ20-97h px� 
~
Parsing EDIF File [%s]
106*designutils2>
<D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/IP/SPIO.edfZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2>
<D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/IP/SPIO.edfZ20-97h px� 
�
Parsing EDIF File [%s]
106*designutils2A
?D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/IP/clk_div.edfZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2A
?D:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/IP/clk_div.edfZ20-97h px� 
�
Parsing EDIF File [%s]
106*designutils2F
DD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/IP/SAnti_jitter.edfZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2F
DD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/IP/SAnti_jitter.edfZ20-97h px� 
�
Parsing EDIF File [%s]
106*designutils2C
AD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/IP/Counter_x.edfZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2C
AD:/COLab/Lab4-4/SCPU/SCPU.srcs/sources_1/imports/IP/Counter_x.edfZ20-97h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.2592

1671.6882
0.000Z17-268h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
1585Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
T
Netlist was created with %s %s291*project2
Vivado2
2017.4Z1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
U
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
1Z31-140h px� 
R
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
22
36Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0042

1679.3362
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 495 instances were transformed.
  AND2 => LUT2: 1 instance 
  AND3 => LUT3: 11 instances
  AND4 => LUT4: 9 instances
  INV => LUT1: 5 instances
  LD => LDCE: 221 instances
  LDC => LDCE: 44 instances
  OR2 => LUT2: 7 instances
  OR3 => LUT3: 3 instances
  OR4 => LUT4: 4 instances
  RAM64M => RAM64M (RAMD64E(x4)): 128 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 62 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

84d86a46Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1382
2372
22
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:212

00:03:322

1679.3362

1201.375Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0332

1679.3362
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint22
0D:/COLab/Lab4-4/SCPU/SCPU.runs/synth_1/CSSTE.dcpZ17-1381h px� 
~
%s4*runtcl2b
`Executing : report_utilization -file CSSTE_utilization_synth.rpt -pb CSSTE_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed May 22 20:24:00 2024Z17-206h px� 


End Record