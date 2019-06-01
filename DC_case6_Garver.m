function mpc = case6_Garver
%CASE_Garver  Power flow data for 6 bus, 3 gen case from Garver.
%   Please see CASEFORMAT for details on the case file format.
%
%   This is the 6 bus example from CARVER, L.L.: 
%   'Transmission network estimation using linearprogramming'.
%    IEEE Trom. Power Appm S~I., 1970, 89, (7). pp.1688-1697
 
%   MATPOWER

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
            %	bus_i	type  Pd   Qd	Gs	 Bs	 area	Vm	  Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	               1	 3	  80   0	0	 0	  1	   1.05	   0	230	      1  	1.05	0.95;
	               2	 1   240   0	0	 0	  1	   1       0	230	      1	    1.05	0.95;
	               3	 2	  40	0	0	 0	  1	   1.05    0	230	      1	    1.05	0.95;
	               4	 1	 160   0	0	 0	  1    1       0	230	      1	    1.05	0.95;
	               5	 1	 240   0	0	 0	  1	   1	   0	230       1	    1.05	0.95;
	               6	 2	   0    0	0	 0	  1	   1.05	   0	230	      1	    1.05	0.95;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	 mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	147.72	0	 48	   -10	   1.05	  100	  1	     160	 0     	0	0	0	0	0	0	0	0	0	0	0;
	3	312.90	0	101	   -10	   1.05	  100	  1	     370	 0	    0	0	0	0	0	0	0	0	0	0	0;
	6	299.39	0	183	   -10	   1.05	  100	  1	     610	 0	    0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus  tbus	 r	       x	    b	    rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	 1	   2	0.040    0.400	   0.00	     120	 120    120       0	      0	       1	 -360	  360;
     1	   3	0.038    0.380	   0.00	     120	 120    120       0	      0	       0	 -360	  360;
	 1	   4	0.060	 0.600	   0.00	     100	 100	100	      0       0	       1	 -360	  360;
	 1	   5	0.020	 0.200	   0.00	     120	 120	120	      0	      0	       1	 -360	  360;
     1	   6	0.068    0.680	   0.00	      90	  90     90       0	      0	       0	 -360	  360;
	 2	   3	0.020	 0.200     0.00	     120	 120	120	      0	      0	       1	 -360	  360;
	 2	   4	0.040	 0.400	   0.00	     120	 120	120	      0	      0	       1	 -360	  360;
     2	   5	0.031    0.310	   0.00	     120	 120    120       0	      0	       0	 -360	  360;
     2	   6	0.030    0.300	   0.00	     120	 120    120       0	      0	       0	 -360	  360;
     3	   4	0.059    0.590	   0.00	     120	 120    120       0	      0	       0	 -360	  360;
	 3	   5	0.020    0.200	   0.00	     120	 120	120	      0	      0	       1	 -360	  360;
     3	   6	0.048    0.480	   0.00	     120	 120    120       0	      0	       0     -360     360;
     4	   5	0.063    0.630	   0.00	      95 	  95     95       0	      0	       0	 -360	  360;
     4	   6	0.030    0.300	   0.00	     120	 120    120       0	      0	       0	 -360	  360;
     5	   6	0.061    0.610	   0.00	      98	  98	 98	      0	      0	       0	 -360	  360;
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0.00533	11.669	213.1;
	2	0	0	3	0.00889	10.333	200;
	2	0	0	3	0.00741	10.833	240;
];
