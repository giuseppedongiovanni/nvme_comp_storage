
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0452default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0452default:defaultZ17-349h px� 
�
�The version limit for your license is '%s' and will expire in %s days. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for any updates or new releases.
519*common2
2020.012default:default2
-1142default:defaultZ17-1223h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
Rule violation (%s) %s - %s
20*drc2
PLIO-72default:default2B
.Placement Constraints Check for IO constraints2default:default2�
�An IO Bus FIXED_IO_mio[53:0] with more than one IO standard is found. Components associated with this bus are: HSTL_I_18 (FIXED_IO_mio[27], FIXED_IO_mio[26], FIXED_IO_mio[25], FIXED_IO_mio[24], FIXED_IO_mio[23], FIXED_IO_mio[22], FIXED_IO_mio[21], FIXED_IO_mio[20], FIXED_IO_mio[19], FIXED_IO_mio[18], FIXED_IO_mio[17], FIXED_IO_mio[16]); LVCMOS18 (FIXED_IO_mio[53], FIXED_IO_mio[52], FIXED_IO_mio[51], FIXED_IO_mio[50], FIXED_IO_mio[49], FIXED_IO_mio[48], FIXED_IO_mio[47], FIXED_IO_mio[46], FIXED_IO_mio[45], FIXED_IO_mio[44], FIXED_IO_mio[43], FIXED_IO_mio[42], FIXED_IO_mio[41], FIXED_IO_mio[40], FIXED_IO_mio[39] (the first 15 of 42 listed)); 2default:defaultZ23-20h px� 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
y
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
82default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
B
-Phase 1 Build RT Design | Checksum: 60bcb4c0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:01 ; elapsed = 00:00:46 . Memory (MB): peak = 2455.648 ; gain = 0.000 ; free physical = 7592 ; free virtual = 281542default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
A
,Phase 2.1 Create Timer | Checksum: 60bcb4c0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:01 ; elapsed = 00:00:47 . Memory (MB): peak = 2455.648 ; gain = 0.000 ; free physical = 7590 ; free virtual = 281522default:defaulth px� 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
F
1Phase 2.2 Pre Route Cleanup | Checksum: 60bcb4c0
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:01 ; elapsed = 00:00:47 . Memory (MB): peak = 2455.648 ; gain = 0.000 ; free physical = 7547 ; free virtual = 281092default:defaulth px� 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.3 Update Timing | Checksum: 1bf21c10e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:25 ; elapsed = 00:00:55 . Memory (MB): peak = 2492.414 ; gain = 36.766 ; free physical = 7445 ; free virtual = 280382default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=0.089  | TNS=0.000  | WHS=-0.539 | THS=-1888.893|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 221da05d2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:36 ; elapsed = 00:00:57 . Memory (MB): peak = 2492.414 ; gain = 36.766 ; free physical = 7471 ; free virtual = 280522default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 1ca2273cb
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:24 ; elapsed = 00:01:06 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7305 ; free virtual = 278812default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.1.1 Update Timing | Checksum: 15b58be4d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:18 ; elapsed = 00:01:22 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7270 ; free virtual = 278672default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=-0.057 | TNS=-0.057 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
v

Phase %s%s
101*constraints2
4.1.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101h px� 
t

Phase %s%s
101*constraints2
4.1.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
F
1Phase 4.1.2.1 Update Timing | Checksum: dcb9cb94
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:19 ; elapsed = 00:01:22 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7270 ; free virtual = 278672default:defaulth px� 
u

Phase %s%s
101*constraints2
4.1.2.2 2default:default2"
Fast Budgeting2default:defaultZ18-101h px� 
H
3Phase 4.1.2.2 Fast Budgeting | Checksum: 10f2b28e2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:21 ; elapsed = 00:01:24 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7264 ; free virtual = 278682default:defaulth px� 
I
4Phase 4.1.2 GlobIterForTiming | Checksum: 1b8a2fcc3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:21 ; elapsed = 00:01:24 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7264 ; free virtual = 278672default:defaulth px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1b8a2fcc3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:21 ; elapsed = 00:01:24 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7264 ; free virtual = 278672default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.2.1 Update Timing | Checksum: 14b443712
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:32 ; elapsed = 00:01:27 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7265 ; free virtual = 278682default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.047  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
v

Phase %s%s
101*constraints2
4.2.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101h px� 
t

Phase %s%s
101*constraints2
4.2.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
G
2Phase 4.2.2.1 Update Timing | Checksum: 23c4e101b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:33 ; elapsed = 00:01:28 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7265 ; free virtual = 278682default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2.2.2 2default:default2"
Fast Budgeting2default:defaultZ18-101h px� 
H
3Phase 4.2.2.2 Fast Budgeting | Checksum: 1f61d8380
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:34 ; elapsed = 00:01:29 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7265 ; free virtual = 278682default:defaulth px� 
I
4Phase 4.2.2 GlobIterForTiming | Checksum: 1a5ba4868
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:34 ; elapsed = 00:01:29 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7264 ; free virtual = 278672default:defaulth px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1a5ba4868
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:34 ; elapsed = 00:01:30 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7264 ; free virtual = 278672default:defaulth px� 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.3.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.3.1 Update Timing | Checksum: 1467c7934
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:49 ; elapsed = 00:01:35 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.009  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.3 Global Iteration 2 | Checksum: 14b8ecd0c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:49 ; elapsed = 00:01:35 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 14b8ecd0c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:49 ; elapsed = 00:01:35 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 5.1.1 Update Timing | Checksum: c7aca182
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:53 ; elapsed = 00:01:36 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.136  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
B
-Phase 5.1 Delay CleanUp | Checksum: c7aca182
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:53 ; elapsed = 00:01:36 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
L
7Phase 5.2 Clock Skew Optimization | Checksum: c7aca182
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:53 ; elapsed = 00:01:36 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
N
9Phase 5 Delay and Skew Optimization | Checksum: c7aca182
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:53 ; elapsed = 00:01:36 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
B
-Phase 6.1 Update Timing | Checksum: 7a0ecc27
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:57 ; elapsed = 00:01:38 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=0.136  | TNS=0.000  | WHS=0.038  | THS=0.000  |
2default:defaultZ35-416h px� 
@
+Phase 6 Post Hold Fix | Checksum: 8bba2541
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:58 ; elapsed = 00:01:38 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
A
,Phase 7 Route finalize | Checksum: 723e1105
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:58 ; elapsed = 00:01:38 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
H
3Phase 8 Verifying routed nets | Checksum: 723e1105
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:58 ; elapsed = 00:01:38 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
D
/Phase 9 Depositing Routes | Checksum: 63678d5c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:00 ; elapsed = 00:01:40 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=0.136  | TNS=0.000  | WHS=0.038  | THS=0.000  |
2default:defaultZ35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
F
1Phase 10 Post Router Timing | Checksum: 63678d5c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:00 ; elapsed = 00:01:40 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
=
Router Completed Successfully
16*routeZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:00 ; elapsed = 00:01:40 . Memory (MB): peak = 2631.398 ; gain = 175.750 ; free physical = 7273 ; free virtual = 278702default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
622default:default2
1042default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:04:032default:default2
00:01:422default:default2
2631.3982default:default2
175.7502default:default2
72732default:default2
278702default:defaultZ17-722h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:062default:default2
00:00:022default:default2
2663.4142default:default2
0.0002default:default2
72162default:default2
278692default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:102default:default2
00:00:052default:default2
2663.4182default:default2
32.0202default:default2
72472default:default2
278632default:defaultZ17-722h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
f/home/giuseppezynq/OpenSSD_AXI_128/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.runs/impl_2/OpenSSD2_drc_routed.rptf/home/giuseppezynq/OpenSSD_AXI_128/OpenSSD2_2Ch8Way-1.0.3/OpenSSD2.runs/impl_2/OpenSSD2_drc_routed.rpt2default:default8Z2-168h px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -2, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 


End Record