
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:012

00:00:072	
466.9182	
188.945Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
c
 Loaded user IP repository '%s'.
1135*coregen2
d:/COLab/Lab5/Pipeline_CPUZ19-1700h px� 
�
�If you move the project, the path for repository '%s' may become invalid. A better location for the repostory would be in a path adjacent to the project. (Current project location is '%s'.)1680*coregen2
d:/COLab/Lab5/Pipeline_CPU25
3d:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.runs/impl_1Z19-3656h px� 
o
"Loaded Vivado IP repository '%s'.
1332*coregen2&
$D:/Code/Xilinx/Vivado/2023.2/data/ipZ19-2313h px� 
`
Command: %s
53*	vivadotcl2/
-link_design -top CSSTE -part xc7a100tcsg324-1Z4-113h px� 
U
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_1Z12-437h px� 
X
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_1Z12-434h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2R
Pd:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp2
U12Z1-454h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2J
Hd:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/ROM_D/ROM_D.dcp2
U2Z1-454h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2J
Hd:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/RAM_B/RAM_B.dcp2
U3Z1-454h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2T
Rd:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/Seg7_Dev_0/Seg7_Dev_0.dcp2
U6Z1-454h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1352	
929.4262
0.000Z17-268h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
1283Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
T
Netlist was created with %s %s291*project2
Vivado2
2023.2Z1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt2
U12/inst/clkin1_ibufg2

clk_100mhzZ31-35h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. '%s' is ignored for synthesis but preserved for implementation.
528*constraints2
IBUF_LOW_PWR2
U12/clk_in12
IBUF_LOW_PWR8Z18-550h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2Z
Vd:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2
U12/inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2Z
Vd:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2
U12/inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2T
Pd:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2
U12/inst	8Z20-848h px� 
�
%Done setting XDC timing constraints.
35*timing2T
Pd:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2
548@Z38-35h px� 
�
Deriving generated clocks
2*timing2T
Pd:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2
548@Z38-2h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
get_clocks: 2

00:00:032

00:00:092

1644.7272	
585.625Z17-268h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2T
Pd:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2
U12/inst	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2E
AD:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.srcs/constrs_1/new/A7.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2E
AD:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.srcs/constrs_1/new/A7.xdc8Z20-178h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12
2Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

1644.7272
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 192 instances were transformed.
  LDCP => LDCP (GND, LDCE, LUT3(x2), VCC): 2 instances
  RAM64M => RAM64M (RAMD64E(x4)): 128 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 62 instances
Z1-111h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
162
32
02
0Z4-41h px� 
K
%s completed successfully
29*	vivadotcl2
link_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
link_design: 2

00:00:072

00:00:192

1644.7272

1164.918Z17-268h px� 


End Record