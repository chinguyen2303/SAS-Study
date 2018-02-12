data trimlecture; 
	input firstname$ lastname$ age tscore;
	length name$20;
	name = trim(lastname)|| ',' || firstname;
	datalines; 
Alex Benson 27 45
; 
run;

proc contents data= trimlecture;
run;

proc print data= trimlecture;
run;