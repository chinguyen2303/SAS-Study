data rand; 
call streaminit(12345);
do i = 1 to 30;
	x = rand("Normal");
	output;
end;
run;

proc sgplot data=rand;
title "Random Valuse from N(0,1)";
histogram x;
run; 

proc freq data=rand;
run;
